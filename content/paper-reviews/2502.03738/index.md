---
title: "Scaling Laws in Patchification: An Image Is Worth 50,176 Tokens And More"
summary: "Smaller image patches improve vision transformer performance, defying conventional wisdom and revealing a new scaling law for enhanced visual understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Classification", "🏢 Johns Hopkins University",]
showSummary: true
date: 2025-02-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.03738 {{< /keyword >}}
{{< keyword icon="writer" >}} Feng Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.03738" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.03738" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.03738/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision Transformers (ViTs) typically use patchification, compressing images into smaller features.  This study investigates information loss from this compression. Existing methods were computationally expensive due to quadratic scaling of self-attention and memory limitations, hindering comprehensive exploration.  

This research conducts extensive experiments across different tasks and architectures by systematically reducing patch size.  It surprisingly discovers a new scaling law: smaller patches consistently lead to improved accuracy until the minimum size (1x1, or pixel level).  This applies broadly across tasks and models.  Furthermore, it shows that smaller patches enable exceptional length sequences (50,176 tokens) achieving competitive results and reduce the dependence on decoder heads in dense prediction. **This work fundamentally revisits visual encoding, suggesting potential for non-compressive models.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Reducing patch size consistently improves vision transformer performance across various tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new scaling law in patchification shows that smaller patches unlock previously unused information leading to better results. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Smaller patches reduce the need for decoder heads in dense prediction tasks like semantic segmentation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper challenges the conventional wisdom in vision transformer design by demonstrating the benefits of reducing patch size.** It offers a novel scaling law, impacting various vision tasks and architectural designs.  This opens up new avenues for research in efficient and high-performance visual models, potentially leading to breakthroughs in non-compressive vision.

------
#### Visual Insights



![](https://arxiv.org/html/2502.03738/x1.png)

> 🔼 This figure shows the test loss results for DeiT-Base model with 64x64 input image size on the ImageNet-1k classification task. The x-axis represents the patch size used for image tokenization, ranging from 16 to 1. The y-axis shows the corresponding test loss. The plot demonstrates a clear trend where the test loss decreases as the patch size decreases, indicating that smaller patch sizes lead to improved performance.
> <details>
> <summary>read the caption</summary>
> (a) DeiT-B, 64×\times×64 Input, CLS
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T1.10.11.1.1" rowspan="2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.11.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.10.11.1.2" rowspan="2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.11.1.2.1" style="font-size:80%;">Input size</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.10.11.1.3" style="padding:0.4pt 5.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="4" id="S4.T1.10.11.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.10.11.1.4.1" style="font-size:80%;">patch tokenization</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.10.11.1.5" style="padding:0.4pt 5.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T1.10.11.1.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.10.11.1.6.1" style="font-size:80%;">pixel tokenization</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5">
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.5.5.6" style="padding:0.4pt 5.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1" style="padding:0.4pt 5.0pt;">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.m1.1.1" mathsize="80%" xref="S4.T1.1.1.1.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">italic_p</annotation></semantics></math><span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:80%;">=16</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2" style="padding:0.4pt 5.0pt;">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mi id="S4.T1.2.2.2.m1.1.1" mathsize="80%" xref="S4.T1.2.2.2.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">italic_p</annotation></semantics></math><span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:80%;">=8</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3" style="padding:0.4pt 5.0pt;">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mi id="S4.T1.3.3.3.m1.1.1" mathsize="80%" xref="S4.T1.3.3.3.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">italic_p</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:80%;">=4</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4" style="padding:0.4pt 5.0pt;">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mi id="S4.T1.4.4.4.m1.1.1" mathsize="80%" xref="S4.T1.4.4.4.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">italic_p</annotation></semantics></math><span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:80%;">=2</span>
</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T1.5.5.7" style="padding:0.4pt 5.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.5.5" style="padding:0.4pt 5.0pt;">
<math alttext="p" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mi id="S4.T1.5.5.5.m1.1.1" mathsize="80%" xref="S4.T1.5.5.5.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">italic_p</annotation></semantics></math><span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:80%;">=1</span>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.5.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.5.5.8.1" style="font-size:80%;">seq. length</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.6.2" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.6.6.2.1" style="font-size:80%;">DeiT-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.6.6.2.2.1" style="font-size:80%;">(</span>Touvron et al.<span class="ltx_text" id="S4.T1.6.6.2.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib52" title="">2021a</a><span class="ltx_text" id="S4.T1.6.6.2.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.6.6.1.1" style="font-size:80%;">64</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.6.6.1.m1.1"><semantics id="S4.T1.6.6.1.m1.1a"><mo id="S4.T1.6.6.1.m1.1.1" mathsize="80%" xref="S4.T1.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.1.m1.1b"><times id="S4.T1.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T1.6.6.1.2" style="font-size:80%;">64</span>
</td>
<td class="ltx_td ltx_border_t" id="S4.T1.6.6.3" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.6.6.4.1" style="font-size:80%;">68.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.6.6.5.1" style="font-size:80%;">76.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.1" style="font-size:80%;">80.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.6.6.7.1" style="font-size:80%;">80.8</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.6.6.8" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.9.1" style="font-size:80%;">81.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.6.6.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.1" style="font-size:80%;">4,096</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7">
<td class="ltx_td ltx_align_left" id="S4.T1.7.7.2" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.7.7.2.1" style="font-size:80%;">DeiT-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.7.7.2.2.1" style="font-size:80%;">(</span>Touvron et al.<span class="ltx_text" id="S4.T1.7.7.2.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib52" title="">2021a</a><span class="ltx_text" id="S4.T1.7.7.2.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.7.7.1.1" style="font-size:80%;">128</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.7.7.1.m1.1"><semantics id="S4.T1.7.7.1.m1.1a"><mo id="S4.T1.7.7.1.m1.1.1" mathsize="80%" xref="S4.T1.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.1.m1.1b"><times id="S4.T1.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T1.7.7.1.2" style="font-size:80%;">128</span>
</td>
<td class="ltx_td" id="S4.T1.7.7.3" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.7.4.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.7.5.1" style="font-size:80%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.7.6.1" style="font-size:80%;">82.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.7.7.1" style="font-size:80%;">82.9</span></td>
<td class="ltx_td" id="S4.T1.7.7.8" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.7.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.7.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.7.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<td class="ltx_td ltx_align_left" id="S4.T1.8.8.2" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.8.8.2.1" style="font-size:80%;">Adventurer-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.8.8.2.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="S4.T1.8.8.2.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a><span class="ltx_text" id="S4.T1.8.8.2.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.8.8.1.1" style="font-size:80%;">64</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.8.8.1.m1.1"><semantics id="S4.T1.8.8.1.m1.1a"><mo id="S4.T1.8.8.1.m1.1.1" mathsize="80%" xref="S4.T1.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.1.m1.1b"><times id="S4.T1.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T1.8.8.1.2" style="font-size:80%;">64</span>
</td>
<td class="ltx_td" id="S4.T1.8.8.3" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.8.4.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.8.5.1" style="font-size:80%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.8.6.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.8.7.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td" id="S4.T1.8.8.8" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.9.1" style="font-size:80%;">80.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.8.8.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.8.10.1" style="font-size:80%;">4,096</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.2" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.9.9.2.1" style="font-size:80%;">Adventurer-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.9.9.2.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="S4.T1.9.9.2.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a><span class="ltx_text" id="S4.T1.9.9.2.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.9.9.1.1" style="font-size:80%;">128</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.9.9.1.m1.1"><semantics id="S4.T1.9.9.1.m1.1a"><mo id="S4.T1.9.9.1.m1.1.1" mathsize="80%" xref="S4.T1.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.1.m1.1b"><times id="S4.T1.9.9.1.m1.1.1.cmml" xref="S4.T1.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T1.9.9.1.2" style="font-size:80%;">128</span>
</td>
<td class="ltx_td" id="S4.T1.9.9.3" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.9.4.1" style="font-size:80%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.9.5.1" style="font-size:80%;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.9.6.1" style="font-size:80%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.9.7.1" style="font-size:80%;">82.2</span></td>
<td class="ltx_td" id="S4.T1.9.9.8" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.9.9.9.1" style="font-size:80%;">82.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.9.10.1" style="font-size:80%;">16,384</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10" style="background-color:#E6FFFF;">
<td class="ltx_td ltx_align_left" id="S4.T1.10.10.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.10.2.1" style="font-size:80%;background-color:#E6FFFF;">Adventurer-Base <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a>)</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.10.1.1" style="font-size:80%;background-color:#E6FFFF;">224<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.10.10.1.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S4.T1.10.10.1.1.m1.1a"><mo id="S4.T1.10.10.1.1.m1.1.1" mathbackground="#E6FFFF" xref="S4.T1.10.10.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.1.1.m1.1b"><times id="S4.T1.10.10.1.1.m1.1.1.cmml" xref="S4.T1.10.10.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.1.1.m1.1d">×</annotation></semantics></math>224</span></td>
<td class="ltx_td" id="S4.T1.10.10.3" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.10.4.1" style="font-size:80%;background-color:#E6FFFF;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.10.5.1" style="font-size:80%;background-color:#E6FFFF;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.10.6.1" style="font-size:80%;background-color:#E6FFFF;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.10.7.1" style="font-size:80%;background-color:#E6FFFF;">84.5</span></td>
<td class="ltx_td" id="S4.T1.10.10.8" style="padding:0.4pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.9.1" style="font-size:80%;background-color:#E6FFFF;">84.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.T1.10.10.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.10.10.10.1" style="font-size:80%;background-color:#E6FFFF;">50,176</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the ImageNet-1k classification accuracy for various models (DeiT-Base and Adventurer-Base) and patch sizes.  The results demonstrate a consistent improvement in accuracy as the patch size decreases, culminating in the best performance with pixel tokenization (1x1 patch). Notably, the study successfully scales the visual sequence length to 50,176 tokens using a base-sized model (Adventurer-Base), achieving a competitive accuracy of 84.6%.  The table showcases the impact of reducing patch size on accuracy for different input image sizes (64x64 and 128x128).
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed ImageNet classification results. As patch size (denoted as p𝑝pitalic_p) decreases, the test accuracy (%) on ImageNet-1k (Deng et al., 2009) consistently improves and reaches the best performance with pixel tokenization. We highlight that we successfully scale up the visual token sequence to an unprecedented length of 50,176, with a competitive 84.6 test accuracy obtained by a base-sized model.
> </details>





### In-depth insights


#### Patch Size Scaling Laws
The concept of "Patch Size Scaling Laws" in the context of Vision Transformers (ViTs) explores how altering the size of image patches before feeding them into the network affects model performance.  The core finding is that **reducing patch size consistently improves accuracy across various vision tasks and model architectures**. This challenges the conventional wisdom of using larger patches (e.g., 16x16) for computational efficiency, demonstrating that the information loss from compression is detrimental.  **Smaller patches unlock more detailed visual information**, leading to better results, even reaching the extreme of 1x1 (pixel-level) tokenization which outperforms patch-based methods.  This suggests that the computational benefits of patchification can be outweighed by its limitations, particularly given the improvements in hardware.  Importantly, smaller patches also diminish the importance of decoder components in dense prediction tasks, highlighting a **potential shift towards encoder-only architectures** for future visual models.

#### Vision Model Scaling
Vision model scaling explores strategies to enhance model performance by manipulating various dimensions.  **Increasing model size (parameter count)** is a common approach, leading to improved accuracy but at the cost of significantly increased computational resources and potential overfitting.  **Data scaling**, increasing the size of the training dataset, is another avenue, but obtaining high-quality, large datasets can be expensive and time-consuming.  **Resolution scaling**, adjusting input image resolution, can impact performance, with higher resolutions providing more detail but also greater computational demands.  A novel approach explored is **patch size scaling**, which systematically reduces the size of image patches fed into the model. This method surprisingly demonstrates consistent performance gains, even down to the level of pixel-level tokenization, unlocking potentially valuable information lost in traditional compressive methods.  **Sequence length scaling**, increasing the number of tokens processed, is another aspect, where the tradeoffs between computational complexity and information density must be carefully considered.  The interplay and relative effectiveness of these scaling dimensions are complex and depend on various factors including model architecture and task type.  **Finding the optimal balance between these dimensions is crucial** for building efficient and high-performing vision models.

#### Decoder Head Impact
The research explores the impact of decoder heads in the context of patchification scaling.  The study reveals that **as patch sizes decrease, the reliance on decoder heads diminishes**. This is attributed to the fact that smaller patches provide finer-grained visual information, reducing the need for a decoder to upsample and refine features.  The results suggest a potential shift towards **decoder-free architectures** for dense prediction tasks, which could significantly simplify model design and improve efficiency. The findings challenge conventional wisdom, highlighting that the information loss due to patchification, while impactful, is not necessarily detrimental when appropriately addressed through scaling. This insight **opens avenues for creating simpler, more computationally efficient vision models** with competitive performance.

#### Long Sequence Encoding
The concept of "Long Sequence Encoding" in vision transformers is crucial for improving performance.  Standard patchification methods, while efficient, inherently compress spatial information, potentially hindering model accuracy.  **Increasing the length of the input sequence, by reducing patch size to the extreme (pixel-level), allows the model to access a significantly richer representation of the input image.**  This approach, however, presents computational challenges.  **Efficient attention mechanisms and linear-complexity architectures are needed to manage the high dimensionality of long sequences.**  The tradeoff between computational cost and performance gains from extended sequences needs careful consideration.  The paper's exploration of scaling laws reveals that consistently improving model performance is achievable through decreasing patch size, until reaching pixel-level tokenization. This suggests **a paradigm shift away from compressed encoding towards non-compressive approaches**, maximizing the information available to the model. This paradigm change should be coupled with advancements in efficient computational methods to fully exploit the benefits of long-sequence encoding.

#### Future Research
Future research directions stemming from this paper on patchification scaling laws in vision transformers are exciting and multifaceted.  **Firstly**, a deeper investigation into the theoretical underpinnings of the observed scaling laws is crucial.  Why does reducing patch size consistently improve performance, even down to pixel-level tokenization?  A more comprehensive theoretical model could unlock further advancements.  **Secondly**, building upon the findings of this study, it's essential to develop fully non-compressive vision models. The study's success in achieving competitive results with exceptionally long token sequences suggests that the traditional patchification paradigm may be unnecessary.  **Thirdly**, exploring the impact of this discovery on various downstream tasks beyond image classification, semantic segmentation, and object detection would yield significant insights. How would this approach affect tasks like video understanding or 3D scene analysis?  **Finally**, investigating alternative, more efficient tokenization strategies in place of patchification warrants attention.  The current focus could be expanded to explore other forms of image encoding that might enable even better scaling and performance. This multifaceted exploration could substantially advance visual representation learning and foundational visual model design.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.03738/x2.png)

> 🔼 The figure shows the test loss for the Adventurer-B model with a 128x128 input image on the ImageNet-1k classification task.  The x-axis represents different patch sizes used for image tokenization, and the y-axis shows the corresponding test loss.  The plot demonstrates how the test loss varies as the patch size is changed, illustrating the effect of patch size on model performance for this specific model and task.
> <details>
> <summary>read the caption</summary>
> (b) Adventurer-B, 128×\times×128 Input, CLS
> </details>



![](https://arxiv.org/html/2502.03738/x3.png)

> 🔼 The figure shows the test loss for image classification on the ImageNet-1k dataset using the Adventurer-B model with a 224x224 input image and the classification head being the [CLS] token.  It displays how the test loss changes as the patch size used in the patchification process is varied.  The x-axis represents the patch size, and the y-axis represents the test loss. The plot demonstrates the relationship between patch size and model performance for this specific model and dataset.
> <details>
> <summary>read the caption</summary>
> (c) Adventurer-B, 224×\times×224 Input, CLS
> </details>



![](https://arxiv.org/html/2502.03738/x4.png)

> 🔼 This figure shows the results of patch size scaling experiments on the ADE20k semantic segmentation dataset.  It demonstrates how test loss changes as the patch size used for image tokenization decreases. The x-axis represents the patch size, and the y-axis represents the test loss.  The graph visually depicts the scaling law observed in patchification, showing a consistent decrease in test loss as patch size decreases, indicating improved performance with smaller patches.
> <details>
> <summary>read the caption</summary>
> (d) ADE20k Semantic Segmentation
> </details>



![](https://arxiv.org/html/2502.03738/x5.png)

> 🔼 This figure shows the test loss (in terms of bounding box) for COCO object detection across different patch sizes.  The x-axis represents the patch size used for image tokenization, and the y-axis shows the corresponding test loss.  The results demonstrate the impact of patch size on the performance of the object detection model. Smaller patch sizes generally lead to lower test loss, indicating improved performance.
> <details>
> <summary>read the caption</summary>
> (e) COCO Object Detection
> </details>



![](https://arxiv.org/html/2502.03738/x6.png)

> 🔼 This figure shows the test loss (mask) for COCO instance segmentation plotted against patch size.  The graph displays the impact of varying patch sizes on the model's performance for this specific task. The results are presented in log scale for both the x and y axes.
> <details>
> <summary>read the caption</summary>
> (f) COCO Instance Segmentation
> </details>



![](https://arxiv.org/html/2502.03738/x7.png)

> 🔼 This figure shows the test loss for different patch sizes when training a DeiT-Base model on the ImageNet-1k classification task. The input image size is 128x128 pixels, and the classification is performed using the CLS token.  The x-axis represents the patch size (on a log scale), and the y-axis represents the test loss (also on a log scale). The figure demonstrates the impact of reducing patch size on model performance.
> <details>
> <summary>read the caption</summary>
> (g) DeiT-B, 128×\times×128 Input, CLS
> </details>



![](https://arxiv.org/html/2502.03738/x8.png)

> 🔼 This figure shows the test loss for the Adventurer-Large model with a 128x128 input image on the ImageNet-1k classification task (CLS).  The x-axis represents the patch size used for image tokenization, and the y-axis represents the test loss. The plot demonstrates how test loss changes as the patch size decreases, illustrating the impact of patch size on model performance.  This plot shows that consistently decreasing the patch size improves the performance, reaching the minimum at 1x1(pixel tokenization).
> <details>
> <summary>read the caption</summary>
> (h) Adventurer-L, 128×\times×128, CLS
> </details>



![](https://arxiv.org/html/2502.03738/x9.png)

> 🔼 This figure displays the results of patch size scaling experiments conducted on the Adventurer-T model with a 224x224 input image for ImageNet-1k classification (CLS). It visually represents how the model's test loss changes as the patch size decreases, demonstrating the impact of patch size on model performance.
> <details>
> <summary>read the caption</summary>
> (i) Adventurer-T, 224×\times×224, CLS
> </details>



![](https://arxiv.org/html/2502.03738/x10.png)

> 🔼 This figure visualizes the impact of patch size on the performance of various vision models across different tasks.  The x-axis represents the patch size (on a logarithmic scale), while the y-axis shows the test loss (also on a logarithmic scale).  The plots demonstrate a consistent trend: as the patch size decreases, the test loss decreases, indicating improved model performance.  This trend is observed across various vision tasks (classification, semantic segmentation, object detection, and instance segmentation), input resolutions, and model architectures (DeiT and Adventurer).  Even when the patch size is reduced to the minimum of 1x1 (pixel-level processing), significant performance gains are maintained.  The ImageNet-1k classification task is specifically highlighted using the abbreviation 'CLS'.
> <details>
> <summary>read the caption</summary>
> Figure 1: Patchification Scaling Laws. We observe a smooth and consistent decrease in test loss across different vision tasks, input resolutions, and model architectures when reducing the patch size. The performance gains remain considerably significant even when scaling down the patch size to 1×\times×1. In all sub-figures, both x𝑥xitalic_x and y𝑦yitalic_y axes are in log scale. CLS denotes ImageNet-1k classification.
> </details>



![](https://arxiv.org/html/2502.03738/x11.png)

> 🔼 This figure compares the performance of semantic segmentation models using two different decoder heads: a complex UperNet with 13 million parameters and a simple linear layer with only 0.2 million parameters.  Both models share the same backbone network. The x-axis represents the patch size used in the model, showing the results as the patch size decreases from 16x16 to 2x2. The y-axis represents the mean Intersection over Union (mIoU), a common metric for evaluating semantic segmentation accuracy. The results demonstrate that as the patch size decreases, the performance difference between the two decoder types diminishes, suggesting that the complex decoder becomes less crucial when using smaller patch sizes and the resulting increased level of detail. This implies that the additional complexity of the UperNet offers diminishing returns as the input's spatial resolution increases.
> <details>
> <summary>read the caption</summary>
> Figure 2: Decoder’s impact on semantic segmentation. We train a semantic segmentation model with the same backbone but different decoder heads: an UperNet with 13M parameters and a simple linear layer with 0.2M parameters. We observe that as patch size decreases, the impact of the decoder head diminishes.
> </details>



![](https://arxiv.org/html/2502.03738/x12.png)

> 🔼 This figure compares the impact of increasing model parameters versus reducing patch size on the performance of the Adventurer model for ImageNet classification.  The x-axis represents FLOPS (floating point operations per second), a measure of computational cost. The y-axis represents ImageNet top-1 accuracy.  Different colored lines represent models with varying parameter counts, showing the impact of simply increasing model size.  The lines with different patch sizes show how reducing the patch size (and therefore increasing the sequence length) impacts accuracy while controlling for model size. The figure demonstrates that reducing patch size consistently improves accuracy more effectively than increasing model size beyond a certain point.
> <details>
> <summary>read the caption</summary>
> (a) Scaling from Adventurer-Base/16, 224×\times×224 input.
> </details>



![](https://arxiv.org/html/2502.03738/x13.png)

> 🔼 This figure compares the impact of increasing model parameters versus decreasing patch size on the performance of a ViT-Base model with a 128x128 input image.  The x-axis represents FLOPs (floating-point operations), a measure of computational cost, and the y-axis represents ImageNet top-1 accuracy.  It shows that increasing model parameters leads to diminishing returns in accuracy after a certain point, while reducing patch size consistently improves accuracy.
> <details>
> <summary>read the caption</summary>
> (b) Scaling form ViT-Base/16, 128×\times×128 input.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T2.10.11.1.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.11.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.10.11.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.11.1.2.1" style="font-size:80%;">Decoder</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.10.11.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.11.1.3.1" style="font-size:80%;">Params</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.10.11.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.11.1.4.1" style="font-size:80%;">Patch size</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T2.10.11.1.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.11.1.5.1" style="font-size:80%;">mIoU</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2" rowspan="5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1" style="font-size:80%;">Adventurer-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.1" style="font-size:80%;color:#808080;">UperNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.4.1" style="font-size:80%;color:#808080;">17M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.1.1" style="font-size:80%;color:#808080;">16<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" mathcolor="#808080" xref="S4.T2.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><times id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">×</annotation></semantics></math>16</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.1.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.5.1" style="font-size:80%;color:#808080;">41.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:80%;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.2.2.3.1" style="font-size:80%;">12M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.2.2.1.1" style="font-size:80%;">16</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mo id="S4.T2.2.2.1.m1.1.1" mathsize="80%" xref="S4.T2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><times id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.2.2.1.2" style="font-size:80%;">16</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.2.2.4.1" style="font-size:80%;">40.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.3.3.2.1" style="font-size:80%;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:80%;">12M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.3.3.1.1" style="font-size:80%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><mo id="S4.T2.3.3.1.m1.1.1" mathsize="80%" xref="S4.T2.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><times id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.3.3.1.2" style="font-size:80%;">8</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.3.3.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.3.3.4.1" style="font-size:80%;">41.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.4.4.2.1" style="font-size:80%;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.4.4.3.1" style="font-size:80%;">13M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.4.4.1.1" style="font-size:80%;">4</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.4.4.1.m1.1"><semantics id="S4.T2.4.4.1.m1.1a"><mo id="S4.T2.4.4.1.m1.1.1" mathsize="80%" xref="S4.T2.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.1.m1.1b"><times id="S4.T2.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.4.4.1.2" style="font-size:80%;">4</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.4.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:80%;">42.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.5.5.2.1" style="font-size:80%;background-color:#E6FFFF;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.5.5.3.1" style="font-size:80%;background-color:#E6FFFF;">13M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.5.5.1.1" style="font-size:80%;background-color:#E6FFFF;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.5.5.1.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S4.T2.5.5.1.1.m1.1a"><mo id="S4.T2.5.5.1.1.m1.1.1" mathbackground="#E6FFFF" xref="S4.T2.5.5.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.1.1.m1.1b"><times id="S4.T2.5.5.1.1.m1.1.1.cmml" xref="S4.T2.5.5.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.1.1.m1.1d">×</annotation></semantics></math>2</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.5.5.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.4.1" style="font-size:80%;background-color:#E6FFFF;">42.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.6.2" rowspan="5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.6.6.2.1" style="font-size:80%;">Adventurer-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.3.1" style="font-size:80%;color:#808080;">UperNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.4.1" style="font-size:80%;color:#808080;">112M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.1.1" style="font-size:80%;color:#808080;">16<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.6.6.1.1.m1.1"><semantics id="S4.T2.6.6.1.1.m1.1a"><mo id="S4.T2.6.6.1.1.m1.1.1" mathcolor="#808080" xref="S4.T2.6.6.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.1.1.m1.1b"><times id="S4.T2.6.6.1.1.m1.1.1.cmml" xref="S4.T2.6.6.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.1.1.m1.1d">×</annotation></semantics></math>16</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.6.6.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.5.1" style="font-size:80%;color:#808080;">45.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7">
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.7.7.2.1" style="font-size:80%;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.7.7.3.1" style="font-size:80%;">99M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.7.7.1.1" style="font-size:80%;">16</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.7.7.1.m1.1"><semantics id="S4.T2.7.7.1.m1.1a"><mo id="S4.T2.7.7.1.m1.1.1" mathsize="80%" xref="S4.T2.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.1.m1.1b"><times id="S4.T2.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.7.7.1.2" style="font-size:80%;">16</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.7.7.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.7.7.4.1" style="font-size:80%;">44.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8">
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.8.8.2.1" style="font-size:80%;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.8.8.3.1" style="font-size:80%;">99M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.8.8.1.1" style="font-size:80%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.8.8.1.m1.1"><semantics id="S4.T2.8.8.1.m1.1a"><mo id="S4.T2.8.8.1.m1.1.1" mathsize="80%" xref="S4.T2.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.1.m1.1b"><times id="S4.T2.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.8.8.1.2" style="font-size:80%;">8</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.8.8.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.8.8.4.1" style="font-size:80%;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9">
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.9.9.2.1" style="font-size:80%;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.9.9.3.1" style="font-size:80%;">100M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.9.9.1.1" style="font-size:80%;">4</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.9.9.1.m1.1"><semantics id="S4.T2.9.9.1.m1.1a"><mo id="S4.T2.9.9.1.m1.1.1" mathsize="80%" xref="S4.T2.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.1.m1.1b"><times id="S4.T2.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T2.9.9.1.2" style="font-size:80%;">4</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.9.9.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.9.9.4.1" style="font-size:80%;">46.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10">
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.10.2.1" style="font-size:80%;background-color:#E6FFFF;">None</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.10.3.1" style="font-size:80%;background-color:#E6FFFF;">100M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.10.10.1.1" style="font-size:80%;background-color:#E6FFFF;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.10.10.1.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S4.T2.10.10.1.1.m1.1a"><mo id="S4.T2.10.10.1.1.m1.1.1" mathbackground="#E6FFFF" xref="S4.T2.10.10.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.1.1.m1.1b"><times id="S4.T2.10.10.1.1.m1.1.1.cmml" xref="S4.T2.10.10.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.1.1.m1.1d">×</annotation></semantics></math>2</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.10.10.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.4.1" style="font-size:80%;background-color:#E6FFFF;">46.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ADE20K semantic segmentation experiments using decoder-free architectures.  It shows how the mean Intersection over Union (mIoU) score changes as the patch size used in the model is reduced.  The experiment focuses on exploring the effect of patch size without a decoder, demonstrating performance gains as the patch size decreases.  Results are presented for different model sizes (parameter counts), highlighting those that reached the computational limits of the hardware used in the experiment. The best results for each model size are shown in bold.  Results that approach the limits of hardware capabilities are shown in blue.
> <details>
> <summary>read the caption</summary>
> Table 2: ADE20k semantic segmentation. We focus on decoder-free structures and observe the mIoU score improves smoothly when patch size shrinks. We highlight the results that reach the limits of hardware capabilities in blue and best results bolded.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.16">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.6.6.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.6.6.7.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.6.6.8" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.6.6.8.1" style="font-size:80%;">Patch</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:80%;">AP</span><math alttext="{}^{\text{b}}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><msup id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.m1.1.1a" xref="S4.T3.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T3.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.T3.1.1.1.m1.1.1.1a.cmml">b</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><ci id="S4.T3.1.1.1.m1.1.1.1a.cmml" xref="S4.T3.1.1.1.m1.1.1.1"><mtext id="S4.T3.1.1.1.m1.1.1.1.cmml" mathsize="56%" xref="S4.T3.1.1.1.m1.1.1.1">b</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">{}^{\text{b}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">start_FLOATSUPERSCRIPT b end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.2.2" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:80%;">AP</span><math alttext="{}^{\text{b}}_{50}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mmultiscripts id="S4.T3.2.2.2.m1.1.1" xref="S4.T3.2.2.2.m1.1.1.cmml"><mi id="S4.T3.2.2.2.m1.1.1.2.2" xref="S4.T3.2.2.2.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T3.2.2.2.m1.1.1a" xref="S4.T3.2.2.2.m1.1.1.cmml"></mprescripts><mn id="S4.T3.2.2.2.m1.1.1.3" mathsize="80%" xref="S4.T3.2.2.2.m1.1.1.3.cmml">50</mn><mrow id="S4.T3.2.2.2.m1.1.1b" xref="S4.T3.2.2.2.m1.1.1.cmml"></mrow><mrow id="S4.T3.2.2.2.m1.1.1c" xref="S4.T3.2.2.2.m1.1.1.cmml"></mrow><mtext id="S4.T3.2.2.2.m1.1.1.2.3" mathsize="80%" xref="S4.T3.2.2.2.m1.1.1.2.3a.cmml">b</mtext></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">subscript</csymbol><apply id="S4.T3.2.2.2.m1.1.1.2.cmml" xref="S4.T3.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.2.2.2.m1.1.1.2.1.cmml" xref="S4.T3.2.2.2.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S4.T3.2.2.2.m1.1.1.2.2.cmml" xref="S4.T3.2.2.2.m1.1.1.2.2">absent</csymbol><ci id="S4.T3.2.2.2.m1.1.1.2.3a.cmml" xref="S4.T3.2.2.2.m1.1.1.2.3"><mtext id="S4.T3.2.2.2.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T3.2.2.2.m1.1.1.2.3">b</mtext></ci></apply><cn id="S4.T3.2.2.2.m1.1.1.3.cmml" type="integer" xref="S4.T3.2.2.2.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">{}^{\text{b}}_{50}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">start_FLOATSUPERSCRIPT b end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T3.3.3.3" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:80%;">AP</span><math alttext="{}^{\text{b}}_{75}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mmultiscripts id="S4.T3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.m1.1.1.cmml"><mi id="S4.T3.3.3.3.m1.1.1.2.2" xref="S4.T3.3.3.3.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T3.3.3.3.m1.1.1a" xref="S4.T3.3.3.3.m1.1.1.cmml"></mprescripts><mn id="S4.T3.3.3.3.m1.1.1.3" mathsize="80%" xref="S4.T3.3.3.3.m1.1.1.3.cmml">75</mn><mrow id="S4.T3.3.3.3.m1.1.1b" xref="S4.T3.3.3.3.m1.1.1.cmml"></mrow><mrow id="S4.T3.3.3.3.m1.1.1c" xref="S4.T3.3.3.3.m1.1.1.cmml"></mrow><mtext id="S4.T3.3.3.3.m1.1.1.2.3" mathsize="80%" xref="S4.T3.3.3.3.m1.1.1.2.3a.cmml">b</mtext></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><apply id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.3.3.m1.1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">subscript</csymbol><apply id="S4.T3.3.3.3.m1.1.1.2.cmml" xref="S4.T3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.3.3.m1.1.1.2.1.cmml" xref="S4.T3.3.3.3.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S4.T3.3.3.3.m1.1.1.2.2.cmml" xref="S4.T3.3.3.3.m1.1.1.2.2">absent</csymbol><ci id="S4.T3.3.3.3.m1.1.1.2.3a.cmml" xref="S4.T3.3.3.3.m1.1.1.2.3"><mtext id="S4.T3.3.3.3.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T3.3.3.3.m1.1.1.2.3">b</mtext></ci></apply><cn id="S4.T3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S4.T3.3.3.3.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">{}^{\text{b}}_{75}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">start_FLOATSUPERSCRIPT b end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.4.4.4" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:80%;">AP</span><math alttext="{}^{\text{m}}" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><msup id="S4.T3.4.4.4.m1.1.1" xref="S4.T3.4.4.4.m1.1.1.cmml"><mi id="S4.T3.4.4.4.m1.1.1a" xref="S4.T3.4.4.4.m1.1.1.cmml"></mi><mtext id="S4.T3.4.4.4.m1.1.1.1" mathsize="80%" xref="S4.T3.4.4.4.m1.1.1.1a.cmml">m</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><apply id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1"><ci id="S4.T3.4.4.4.m1.1.1.1a.cmml" xref="S4.T3.4.4.4.m1.1.1.1"><mtext id="S4.T3.4.4.4.m1.1.1.1.cmml" mathsize="56%" xref="S4.T3.4.4.4.m1.1.1.1">m</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">{}^{\text{m}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">start_FLOATSUPERSCRIPT m end_FLOATSUPERSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.5.5.5" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.5.5.5.1" style="font-size:80%;">AP</span><math alttext="{}^{\text{m}}_{50}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><mmultiscripts id="S4.T3.5.5.5.m1.1.1" xref="S4.T3.5.5.5.m1.1.1.cmml"><mi id="S4.T3.5.5.5.m1.1.1.2.2" xref="S4.T3.5.5.5.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T3.5.5.5.m1.1.1a" xref="S4.T3.5.5.5.m1.1.1.cmml"></mprescripts><mn id="S4.T3.5.5.5.m1.1.1.3" mathsize="80%" xref="S4.T3.5.5.5.m1.1.1.3.cmml">50</mn><mrow id="S4.T3.5.5.5.m1.1.1b" xref="S4.T3.5.5.5.m1.1.1.cmml"></mrow><mrow id="S4.T3.5.5.5.m1.1.1c" xref="S4.T3.5.5.5.m1.1.1.cmml"></mrow><mtext id="S4.T3.5.5.5.m1.1.1.2.3" mathsize="80%" xref="S4.T3.5.5.5.m1.1.1.2.3a.cmml">m</mtext></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><apply id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.5.m1.1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1">subscript</csymbol><apply id="S4.T3.5.5.5.m1.1.1.2.cmml" xref="S4.T3.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.5.m1.1.1.2.1.cmml" xref="S4.T3.5.5.5.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S4.T3.5.5.5.m1.1.1.2.2.cmml" xref="S4.T3.5.5.5.m1.1.1.2.2">absent</csymbol><ci id="S4.T3.5.5.5.m1.1.1.2.3a.cmml" xref="S4.T3.5.5.5.m1.1.1.2.3"><mtext id="S4.T3.5.5.5.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T3.5.5.5.m1.1.1.2.3">m</mtext></ci></apply><cn id="S4.T3.5.5.5.m1.1.1.3.cmml" type="integer" xref="S4.T3.5.5.5.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">{}^{\text{m}}_{50}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">start_FLOATSUPERSCRIPT m end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.6.6.6" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.6.6.6.1" style="font-size:80%;">AP</span><math alttext="{}^{\text{m}}_{75}" class="ltx_Math" display="inline" id="S4.T3.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.m1.1a"><mmultiscripts id="S4.T3.6.6.6.m1.1.1" xref="S4.T3.6.6.6.m1.1.1.cmml"><mi id="S4.T3.6.6.6.m1.1.1.2.2" xref="S4.T3.6.6.6.m1.1.1.2.2.cmml"></mi><mprescripts id="S4.T3.6.6.6.m1.1.1a" xref="S4.T3.6.6.6.m1.1.1.cmml"></mprescripts><mn id="S4.T3.6.6.6.m1.1.1.3" mathsize="80%" xref="S4.T3.6.6.6.m1.1.1.3.cmml">75</mn><mrow id="S4.T3.6.6.6.m1.1.1b" xref="S4.T3.6.6.6.m1.1.1.cmml"></mrow><mrow id="S4.T3.6.6.6.m1.1.1c" xref="S4.T3.6.6.6.m1.1.1.cmml"></mrow><mtext id="S4.T3.6.6.6.m1.1.1.2.3" mathsize="80%" xref="S4.T3.6.6.6.m1.1.1.2.3a.cmml">m</mtext></mmultiscripts><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.m1.1b"><apply id="S4.T3.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.6.6.6.m1.1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1">subscript</csymbol><apply id="S4.T3.6.6.6.m1.1.1.2.cmml" xref="S4.T3.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.6.6.6.m1.1.1.2.1.cmml" xref="S4.T3.6.6.6.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S4.T3.6.6.6.m1.1.1.2.2.cmml" xref="S4.T3.6.6.6.m1.1.1.2.2">absent</csymbol><ci id="S4.T3.6.6.6.m1.1.1.2.3a.cmml" xref="S4.T3.6.6.6.m1.1.1.2.3"><mtext id="S4.T3.6.6.6.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T3.6.6.6.m1.1.1.2.3">m</mtext></ci></apply><cn id="S4.T3.6.6.6.m1.1.1.3.cmml" type="integer" xref="S4.T3.6.6.6.m1.1.1.3">75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.m1.1c">{}^{\text{m}}_{75}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.m1.1d">start_FLOATSUPERSCRIPT m end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.2" rowspan="5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.7.7.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T3.7.7.2.1.1" style="width:5.6pt;height:48pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:48.0pt;transform:translate(-21.24pt,-21.24pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T3.7.7.2.1.1.1">Adventurer-T</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.7.7.1.1" style="font-size:80%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.7.7.1.m1.1"><semantics id="S4.T3.7.7.1.m1.1a"><mo id="S4.T3.7.7.1.m1.1.1" mathsize="80%" xref="S4.T3.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.1.m1.1b"><times id="S4.T3.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.7.7.1.2" style="font-size:80%;">32</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.7.7.3.1" style="font-size:80%;">44.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.7.7.4.1" style="font-size:80%;">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.7.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.7.7.5.1" style="font-size:80%;">48.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.7.7.6.1" style="font-size:80%;">38.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.7.7.7.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.8" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.7.7.8.1" style="font-size:80%;">41.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8">
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.8.8.1.1" style="font-size:80%;">16</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.8.8.1.m1.1"><semantics id="S4.T3.8.8.1.m1.1a"><mo id="S4.T3.8.8.1.m1.1.1" mathsize="80%" xref="S4.T3.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.1.m1.1b"><times id="S4.T3.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.8.8.1.2" style="font-size:80%;">16</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.8.8.2.1" style="font-size:80%;">46.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.8.8.3.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.8.8.4.1" style="font-size:80%;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.8.8.5.1" style="font-size:80%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.8.8.6.1" style="font-size:80%;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.8.8.7.1" style="font-size:80%;">43.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9">
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.9.9.1.1" style="font-size:80%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.9.9.1.m1.1"><semantics id="S4.T3.9.9.1.m1.1a"><mo id="S4.T3.9.9.1.m1.1.1" mathsize="80%" xref="S4.T3.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.1.m1.1b"><times id="S4.T3.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.9.9.1.2" style="font-size:80%;">8</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.2" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.9.9.2.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.9.9.3.1" style="font-size:80%;">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.9.9.4.1" style="font-size:80%;">51.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.9.9.5.1" style="font-size:80%;">41.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.9.9.6.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.9.9.7.1" style="font-size:80%;">45.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10">
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.10.10.1.1" style="font-size:80%;">4</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.10.10.1.m1.1"><semantics id="S4.T3.10.10.1.m1.1a"><mo id="S4.T3.10.10.1.m1.1.1" mathsize="80%" xref="S4.T3.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.1.m1.1b"><times id="S4.T3.10.10.1.m1.1.1.cmml" xref="S4.T3.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.10.10.1.2" style="font-size:80%;">4</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.2" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.10.10.2.1" style="font-size:80%;">48.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.10.10.3.1" style="font-size:80%;">67.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.10.10.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.10.10.4.1" style="font-size:80%;">52.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.10.10.5.1" style="font-size:80%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.10.10.6.1" style="font-size:80%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.10.10.7.1" style="font-size:80%;">45.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11">
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.1" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.11.11.1.1" style="font-size:80%;background-color:#E6FFFF;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.11.11.1.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S4.T3.11.11.1.1.m1.1a"><mo id="S4.T3.11.11.1.1.m1.1.1" mathbackground="#E6FFFF" xref="S4.T3.11.11.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.1.1.m1.1b"><times id="S4.T3.11.11.1.1.m1.1.1.cmml" xref="S4.T3.11.11.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.1.1.m1.1d">×</annotation></semantics></math>2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.2" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.11.11.2.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.2.1.1" style="background-color:#E6FFFF;">48.7</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.3" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.11.11.3.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.3.1.1" style="background-color:#E6FFFF;">67.3</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.11.11.4" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.11.11.4.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.4.1.1" style="background-color:#E6FFFF;">52.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.5" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.11.11.5.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.5.1.1" style="background-color:#E6FFFF;">42.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.6" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.11.11.6.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.6.1.1" style="background-color:#E6FFFF;">64.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.7" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.11.11.7.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.7.1.1" style="background-color:#E6FFFF;">45.7</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.2" rowspan="5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.12.12.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T3.12.12.2.1.1" style="width:5.6pt;height:47.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.9pt;transform:translate(-21.19pt,-21.19pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T3.12.12.2.1.1.1">Adventurer-B</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.12.12.1.1" style="font-size:80%;">64</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.12.12.1.m1.1"><semantics id="S4.T3.12.12.1.m1.1a"><mo id="S4.T3.12.12.1.m1.1.1" mathsize="80%" xref="S4.T3.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.1.m1.1b"><times id="S4.T3.12.12.1.m1.1.1.cmml" xref="S4.T3.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.12.12.1.2" style="font-size:80%;">64</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.12.12.3.1" style="font-size:80%;">44.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.12.12.4.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.12.12.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.12.12.5.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.12.12.6.1" style="font-size:80%;">38.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.12.12.7.1" style="font-size:80%;">60.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.8" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.12.12.8.1" style="font-size:80%;">41.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.13">
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.13.13.1.1" style="font-size:80%;">32</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.13.13.1.m1.1"><semantics id="S4.T3.13.13.1.m1.1a"><mo id="S4.T3.13.13.1.m1.1.1" mathsize="80%" xref="S4.T3.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.1.m1.1b"><times id="S4.T3.13.13.1.m1.1.1.cmml" xref="S4.T3.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.13.13.1.2" style="font-size:80%;">32</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.2" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.13.13.2.1" style="font-size:80%;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.13.13.3.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.13.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.13.13.4.1" style="font-size:80%;">50.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.13.13.5.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.13.13.6.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.13.13.7.1" style="font-size:80%;">43.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14">
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.14.14.1.1" style="font-size:80%;">16</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.14.14.1.m1.1"><semantics id="S4.T3.14.14.1.m1.1a"><mo id="S4.T3.14.14.1.m1.1.1" mathsize="80%" xref="S4.T3.14.14.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.1.m1.1b"><times id="S4.T3.14.14.1.m1.1.1.cmml" xref="S4.T3.14.14.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.14.14.1.2" style="font-size:80%;">16</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.2" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.14.14.2.1" style="font-size:80%;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.14.14.3.1" style="font-size:80%;">67.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.14.14.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.14.14.4.1" style="font-size:80%;">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.14.14.5.1" style="font-size:80%;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.14.14.6.1" style="font-size:80%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.14.14.7.1" style="font-size:80%;">45.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.15.15">
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.1" style="padding:0.4pt 4.5pt;">
<span class="ltx_text" id="S4.T3.15.15.1.1" style="font-size:80%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.15.15.1.m1.1"><semantics id="S4.T3.15.15.1.m1.1a"><mo id="S4.T3.15.15.1.m1.1.1" mathsize="80%" xref="S4.T3.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.1.m1.1b"><times id="S4.T3.15.15.1.m1.1.1.cmml" xref="S4.T3.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T3.15.15.1.2" style="font-size:80%;">8</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.2" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.15.15.2.1" style="font-size:80%;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.3" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.15.15.3.1" style="font-size:80%;">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.15.15.4" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.15.15.4.1" style="font-size:80%;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.5" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.15.15.5.1" style="font-size:80%;">42.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.6" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.15.15.6.1" style="font-size:80%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.7" style="padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.15.15.7.1" style="font-size:80%;">46.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16">
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.1" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.16.16.1.1" style="font-size:80%;background-color:#E6FFFF;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.16.16.1.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S4.T3.16.16.1.1.m1.1a"><mo id="S4.T3.16.16.1.1.m1.1.1" mathbackground="#E6FFFF" xref="S4.T3.16.16.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.1.1.m1.1b"><times id="S4.T3.16.16.1.1.m1.1.1.cmml" xref="S4.T3.16.16.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.1.1.m1.1d">×</annotation></semantics></math>4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.2" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.16.16.2.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.2.1.1" style="background-color:#E6FFFF;">50.3</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.3" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.16.16.3.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.3.1.1" style="background-color:#E6FFFF;">68.5</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.4" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.16.16.4.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.4.1.1" style="background-color:#E6FFFF;">54.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.5" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.16.16.5.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.5.1.1" style="background-color:#E6FFFF;">43.4</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.6" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.16.16.6.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.6.1.1" style="background-color:#E6FFFF;">66.0</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.7" style="background-color:#E6FFFF;padding:0.4pt 4.5pt;"><span class="ltx_text" id="S4.T3.16.16.7.1" style="font-size:80%;background-color:#E6FFFF;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.7.1.1" style="background-color:#E6FFFF;">46.6</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the results of COCO object detection and instance segmentation experiments.  It shows the Average Precision (AP) at different Intersection over Union (IoU) thresholds (AP50, AP75, AP) and average precision across all thresholds (AP) for both Adventurer-B and Adventurer-T models using various patch sizes.  As the patch size decreases, the performance consistently improves across all metrics, demonstrating the effectiveness of reducing the patch size in object detection and instance segmentation tasks. The best performing results (those limited by hardware capabilities) are highlighted in blue, and the overall best results for each model are bolded.
> <details>
> <summary>read the caption</summary>
> Table 3: COCO object detection and instance segmentation. Similar to classification and semantic segmentation results, these two tasks exhibit consistently enhanced performance as patch size decreases. We highlight the results that reach the limits of hardware capabilities in blue and best results bolded.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.7.8.1">
<td class="ltx_td ltx_align_center" id="S4.T4.7.8.1.1" rowspan="2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.8.1.1.1" style="font-size:80%;">Model size</span></td>
<td class="ltx_td ltx_align_center" colspan="5" id="S4.T4.7.8.1.2" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.8.1.2.1" style="font-size:80%;">Patch size</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:80%;">16</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="80%" xref="S4.T4.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><times id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.2" style="font-size:80%;">16</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:80%;">8</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="80%" xref="S4.T4.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><times id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.2.2" style="font-size:80%;">8</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:80%;">4</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="80%" xref="S4.T4.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><times id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T4.3.3.3.2" style="font-size:80%;">4</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_text" id="S4.T4.4.4.4.1" style="font-size:80%;">2</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.m1.1.1" mathsize="80%" xref="S4.T4.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><times id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T4.4.4.4.2" style="font-size:80%;">2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5" style="padding-top:0.8pt;padding-bottom:0.8pt;">
<span class="ltx_text" id="S4.T4.5.5.5.1" style="font-size:80%;">1</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><mo id="S4.T4.5.5.5.m1.1.1" mathsize="80%" xref="S4.T4.5.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><times id="S4.T4.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T4.5.5.5.2" style="font-size:80%;">1</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S4.T4.6.6.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.6.6.1.1" style="font-size:80%;color:#808080;">with 128<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.6.6.1.1.m1.1"><semantics id="S4.T4.6.6.1.1.m1.1a"><mo id="S4.T4.6.6.1.1.m1.1.1" mathcolor="#808080" xref="S4.T4.6.6.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.1.1.m1.1b"><times id="S4.T4.6.6.1.1.m1.1.1.cmml" xref="S4.T4.6.6.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.1.1.m1.1d">×</annotation></semantics></math>128 resolution inputs:</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.9.2">
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.2.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.9.2.1.1" style="font-size:80%;">Tiny</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.2.2" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.9.2.2.1" style="font-size:80%;background-color:#FCFFFF;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.2.3" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.9.2.3.1" style="font-size:80%;background-color:#FCFFFF;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.2.4" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.9.2.4.1" style="font-size:80%;background-color:#FCFFFF;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.2.5" style="background-color:#FDFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.9.2.5.1" style="font-size:80%;background-color:#FDFFFF;">80.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.9.2.6" style="background-color:#FBFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.9.2.6.1" style="font-size:80%;background-color:#FBFFFF;">80.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.10.3">
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.3.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.10.3.1.1" style="font-size:80%;">Small</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.3.2" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.10.3.2.1" style="font-size:80%;background-color:#FCFFFF;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.3.3" style="background-color:#FEFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.10.3.3.1" style="font-size:80%;background-color:#FEFFFF;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.3.4" style="background-color:#F8FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.10.3.4.1" style="font-size:80%;background-color:#F8FFFF;">80.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.3.5" style="background-color:#F1FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.10.3.5.1" style="font-size:80%;background-color:#F1FFFF;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.10.3.6" style="background-color:#EDFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.10.3.6.1" style="font-size:80%;background-color:#EDFFFF;">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.11.4">
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.4.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.11.4.1.1" style="font-size:80%;">Base</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.4.2" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.11.4.2.1" style="font-size:80%;background-color:#FCFFFF;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.4.3" style="background-color:#E8FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.11.4.3.1" style="font-size:80%;background-color:#E8FFFF;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.4.4" style="background-color:#E0FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.11.4.4.1" style="font-size:80%;background-color:#E0FFFF;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.4.5" style="background-color:#D4FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.11.4.5.1" style="font-size:80%;background-color:#D4FFFF;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.11.4.6" style="background-color:#CEFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.11.4.6.1" style="font-size:80%;background-color:#CEFFFF;">82.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.12.5">
<td class="ltx_td ltx_align_center" id="S4.T4.7.12.5.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.12.5.1.1" style="font-size:80%;">Large</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.12.5.2" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.12.5.2.1" style="font-size:80%;background-color:#FCFFFF;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.12.5.3" style="background-color:#D4FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.12.5.3.1" style="font-size:80%;background-color:#D4FFFF;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.12.5.4" style="background-color:#C8FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.12.5.4.1" style="font-size:80%;background-color:#C8FFFF;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.12.5.5" style="background-color:#BEFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.12.5.5.1" style="font-size:80%;background-color:#BEFFFF;">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.12.5.6" style="background-color:#B8FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.12.5.6.1" style="font-size:80%;background-color:#B8FFFF;">83.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S4.T4.7.7.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.7.7.1.1" style="font-size:80%;color:#808080;">with 224<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.7.7.1.1.m1.1"><semantics id="S4.T4.7.7.1.1.m1.1a"><mo id="S4.T4.7.7.1.1.m1.1.1" mathcolor="#808080" xref="S4.T4.7.7.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.1.1.m1.1b"><times id="S4.T4.7.7.1.1.m1.1.1.cmml" xref="S4.T4.7.7.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.1.1.m1.1d">×</annotation></semantics></math>224 resolution input:</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.13.6">
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.6.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.13.6.1.1" style="font-size:80%;">Tiny</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.6.2" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.13.6.2.1" style="font-size:80%;background-color:#FCFFFF;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.6.3" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.13.6.3.1" style="font-size:80%;background-color:#FCFFFF;">80.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.6.4" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.13.6.4.1" style="font-size:80%;background-color:#FCFFFF;">81.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.6.5" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.13.6.5.1" style="font-size:80%;background-color:#FCFFFF;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.13.6.6" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.13.6.6.1" style="font-size:80%;background-color:#FCFFFF;">81.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.14.7">
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.7.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.14.7.1.1" style="font-size:80%;">Small</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.7.2" style="background-color:#FCFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.14.7.2.1" style="font-size:80%;background-color:#FCFFFF;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.7.3" style="background-color:#F3FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.14.7.3.1" style="font-size:80%;background-color:#F3FFFF;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.7.4" style="background-color:#E7FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.14.7.4.1" style="font-size:80%;background-color:#E7FFFF;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.7.5" style="background-color:#E0FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.14.7.5.1" style="font-size:80%;background-color:#E0FFFF;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.14.7.6" style="background-color:#DDFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.14.7.6.1" style="font-size:80%;background-color:#DDFFFF;">83.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.15.8">
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.8.1" style="padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.15.8.1.1" style="font-size:80%;">Base</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.8.2" style="background-color:#EDFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.15.8.2.1" style="font-size:80%;background-color:#EDFFFF;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.8.3" style="background-color:#D4FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.15.8.3.1" style="font-size:80%;background-color:#D4FFFF;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.8.4" style="background-color:#C8FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.15.8.4.1" style="font-size:80%;background-color:#C8FFFF;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.8.5" style="background-color:#C2FFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.15.8.5.1" style="font-size:80%;background-color:#C2FFFF;">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.15.8.6" style="background-color:#BFFFFF;padding-top:0.8pt;padding-bottom:0.8pt;"><span class="ltx_text" id="S4.T4.7.15.8.6.1" style="font-size:80%;background-color:#BFFFFF;">84.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ImageNet-1k classification accuracy results (%) for Adventurer models of various sizes (Tiny, Small, Base, Large) and patch sizes (16x16, 8x8, 4x4, 2x2, 1x1).  It demonstrates that improvements from increasing model size and decreasing patch size are not mutually exclusive; rather, combining both approaches leads to even higher accuracy.  Different shades are used to visually highlight the relationship between model size, patch size, and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: Scaling both patch and model sizes. The gains from patch size scaling and model size scaling are not conflicting; combining both can lead to further performance improvements. The numbers denote ImageNet accuracy (%) with Adventurer models. We associate the results with different shades for clear observation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.2.3.1.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.3.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T5.2.3.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.3.1.2.1" style="font-size:80%;">Length</span></th>
<td class="ltx_td ltx_align_right" id="S4.T5.2.3.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.3.1.3.1" style="font-size:80%;">By extending</span></td>
<td class="ltx_td ltx_align_right" id="S4.T5.2.3.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.3.1.4.1" style="font-size:80%;">By scaling</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.4.2.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.4.2.1.1" style="font-size:80%;">DeiT-Base,</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.4.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.4.2.2.1" style="font-size:80%;">64</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.2.4.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.4.2.3.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.2.4.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.4.2.4.1" style="font-size:80%;">78.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.1.1.1" rowspan="2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:80%;">128<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" xref="S4.T5.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><times id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">×</annotation></semantics></math>128 input</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T5.1.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.1.1.2.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_right" id="S4.T5.1.1.3" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T5.1.1.3.1" style="font-size:80%;">78.2 </span><span class="ltx_text" id="S4.T5.1.1.3.2" style="font-size:80%;color:#228B22;">(+0.1)</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T5.1.1.4" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T5.1.1.4.1" style="font-size:80%;">81.0 </span><span class="ltx_text" id="S4.T5.1.1.4.2" style="font-size:80%;color:#228B22;">(+2.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T5.2.5.3.1" style="background-color:#E6FFFF;padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.5.3.1.1" style="font-size:80%;background-color:#E6FFFF;">1,024</span></th>
<td class="ltx_td ltx_align_right" id="S4.T5.2.5.3.2" style="background-color:#E6FFFF;padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.5.3.2.1" style="font-size:80%;background-color:#E6FFFF;">78.2 <span class="ltx_text" id="S4.T5.2.5.3.2.1.1" style="color:#228B22;background-color:#E6FFFF;">(+0.1)</span></span></td>
<td class="ltx_td ltx_align_right" id="S4.T5.2.5.3.3" style="background-color:#E6FFFF;padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.5.3.3.1" style="font-size:80%;background-color:#E6FFFF;">82.3 <span class="ltx_text" id="S4.T5.2.5.3.3.1.1" style="color:#228B22;background-color:#E6FFFF;">(+4.2)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.6.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.6.4.1" style="padding:0.4pt 5.0pt;"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.6.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.6.4.2.1" style="font-size:80%;">196</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.2.6.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.6.4.3.1" style="font-size:80%;">82.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.2.6.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.6.4.4.1" style="font-size:80%;">82.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.2.7.5.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.7.5.1.1" style="font-size:80%;">Adventurer-Base,</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T5.2.7.5.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.7.5.2.1" style="font-size:80%;">784</span></th>
<td class="ltx_td ltx_align_right" id="S4.T5.2.7.5.3" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T5.2.7.5.3.1" style="font-size:80%;">82.7 </span><span class="ltx_text" id="S4.T5.2.7.5.3.2" style="font-size:80%;color:#228B22;">(+0.1)</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T5.2.7.5.4" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T5.2.7.5.4.1" style="font-size:80%;">83.9 </span><span class="ltx_text" id="S4.T5.2.7.5.4.2" style="font-size:80%;color:#228B22;">(+1.3)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T5.2.2.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T5.2.2.1.1" style="font-size:80%;">224</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.2.2.1.m1.1"><semantics id="S4.T5.2.2.1.m1.1a"><mo id="S4.T5.2.2.1.m1.1.1" mathsize="80%" xref="S4.T5.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.1.m1.1b"><times id="S4.T5.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S4.T5.2.2.1.2" style="font-size:80%;">224 input</span>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T5.2.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.2.2.1" style="font-size:80%;">3,136</span></th>
<td class="ltx_td ltx_align_right" id="S4.T5.2.2.3" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T5.2.2.3.1" style="font-size:80%;">82.8 </span><span class="ltx_text" id="S4.T5.2.2.3.2" style="font-size:80%;color:#228B22;">(+0.2)</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T5.2.2.4" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T5.2.2.4.1" style="font-size:80%;">84.3 </span><span class="ltx_text" id="S4.T5.2.2.4.2" style="font-size:80%;color:#228B22;">(+1.7)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.8.6">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T5.2.8.6.1" style="padding:0.4pt 5.0pt;"></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T5.2.8.6.2" style="background-color:#E6FFFF;padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.8.6.2.1" style="font-size:80%;background-color:#E6FFFF;">12,544</span></th>
<td class="ltx_td ltx_align_right" id="S4.T5.2.8.6.3" style="background-color:#E6FFFF;padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.8.6.3.1" style="font-size:80%;background-color:#E6FFFF;">82.8 <span class="ltx_text" id="S4.T5.2.8.6.3.1.1" style="color:#228B22;background-color:#E6FFFF;">(+0.2)</span></span></td>
<td class="ltx_td ltx_align_right" id="S4.T5.2.8.6.4" style="background-color:#E6FFFF;padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T5.2.8.6.4.1" style="font-size:80%;background-color:#E6FFFF;">84.5 <span class="ltx_text" id="S4.T5.2.8.6.4.1.1" style="color:#228B22;background-color:#E6FFFF;">(+1.9)</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table investigates the impact of sequence length on model performance by comparing two methods: extending the sequence length while keeping the patch size constant and reducing the patch size to lower the information compression rate. The results show that reducing the patch size leads to significant performance gains, while simply extending the sequence length yields minimal improvement.  The primary performance improvements come from the reduced information compression rate rather than the increased sequence length. ImageNet-1k accuracy is used to measure performance, highlighting the best results achieved with longer sequences in blue.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation of sequence length. Extending the sequence length alone does not yield significant improvements (column “by extending”), whereas reducing patch size and lowering information compression rate is the primary source of performance gains (column “by scaling”). Performance is measured by ImageNet-1k accuracy (%), with longest sequences highlighted in blue.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" id="S4.T6.4.1.1.1" rowspan="2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.1.1.1.1" style="font-size:80%;">Patch</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T6.4.1.1.2" rowspan="2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.1.1.2.1" style="font-size:80%;">Length</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T6.4.1.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.1.1.3.1" style="font-size:80%;">Memory</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T6.4.1.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.1.1.4.1" style="font-size:80%;">GPU hours</span></th>
</tr>
<tr class="ltx_tr" id="S4.T6.4.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T6.4.2.2.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.2.2.1.1" style="font-size:80%;">(per image)</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T6.4.2.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.2.2.2.1" style="font-size:80%;">DeiT-Base</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T6.4.2.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.2.2.3.1" style="font-size:80%;">Adv-Base</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.4.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T6.4.3.1.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.3.1.1.1" style="font-size:80%;">16</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.4.3.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.3.1.2.1" style="font-size:80%;">196</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.4.3.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.3.1.3.1" style="font-size:80%;">62MB</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.4.3.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.3.1.4.1" style="font-size:80%;">0.36</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.4.3.1.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.3.1.5.1" style="font-size:80%;">0.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.4.2.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.4.2.1.1" style="font-size:80%;">8</span></th>
<td class="ltx_td ltx_align_right" id="S4.T6.4.4.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.4.2.2.1" style="font-size:80%;">784</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.4.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.4.2.3.1" style="font-size:80%;">252MB</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.4.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.4.2.4.1" style="font-size:80%;">1.86</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.4.2.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.4.2.5.1" style="font-size:80%;">1.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.5.3.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.5.3.1.1" style="font-size:80%;">4</span></th>
<td class="ltx_td ltx_align_right" id="S4.T6.4.5.3.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.5.3.2.1" style="font-size:80%;">3,136</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.5.3.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.5.3.3.1" style="font-size:80%;">1,024MB</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.5.3.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.5.3.4.1" style="font-size:80%;">9.79</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.5.3.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.5.3.5.1" style="font-size:80%;">6.86</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.6.4.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.6.4.1.1" style="font-size:80%;">2</span></th>
<td class="ltx_td ltx_align_right" id="S4.T6.4.6.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.6.4.2.1" style="font-size:80%;">12,544</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.6.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.6.4.3.1" style="font-size:80%;">4,057MB</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.6.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.6.4.4.1" style="font-size:80%;">80.06</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.6.4.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.6.4.5.1" style="font-size:80%;">27.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.7.5" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T6.4.7.5.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.7.5.1.1" style="font-size:80%;background-color:#E6FFFF;">1</span></th>
<td class="ltx_td ltx_align_right" id="S4.T6.4.7.5.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.7.5.2.1" style="font-size:80%;background-color:#E6FFFF;">50,176</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.7.5.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.7.5.3.1" style="font-size:80%;background-color:#E6FFFF;">16,118MB</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.7.5.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.7.5.4.1" style="font-size:80%;background-color:#E6FFFF;">967.99</span></td>
<td class="ltx_td ltx_align_right" id="S4.T6.4.7.5.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T6.4.7.5.5.1" style="font-size:80%;background-color:#E6FFFF;">115.08</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the computational resources required to train DeiT-Base and Adventurer-Base vision transformer models on ImageNet at a 224x224 resolution, using varying patch sizes.  The memory consumption per image is shown, and the GPU hours needed per ImageNet epoch are estimated using a single A100 GPU.  The models were trained with Float16 precision and FlashAttention (Dao et al., 2022) for DeiT.  Further training details are available in the Appendix.
> <details>
> <summary>read the caption</summary>
> Table 6: Computational overhead for training a DeiT-Base and Adventurer-Base at 224×\times×224 resolution inputs and different patch sizes. Memory usage is calculated based on the per-image consumption in ViT. GPU hours (for each ImageNet epoch) are estimated on a single A100 GPU. The models are trained at Float16 precision with FlashAttention (Dao et al., 2022) applied in ViT. The detailed evaluation protocol can be found in Appendix.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax1.T7.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Ax1.T7.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="Ax1.T7.4.1.1.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.1.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Ax1.T7.4.1.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.1.1.2.1" style="font-size:80%;">Embedding dimension</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Ax1.T7.4.1.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.1.1.3.1" style="font-size:80%;">MLP dimension</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Ax1.T7.4.1.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.1.1.4.1" style="font-size:80%;">Blocks</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Ax1.T7.4.1.1.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.1.1.5.1" style="font-size:80%;">Parameters</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax1.T7.4.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="Ax1.T7.4.2.1.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.2.1.1.1" style="font-size:80%;">DeiT-Tiny </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.2.1.1.2.1" style="font-size:80%;">(</span>Touvron et al.<span class="ltx_text" id="Ax1.T7.4.2.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib52" title="">2021a</a><span class="ltx_text" id="Ax1.T7.4.2.1.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.2.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.2.1.2.1" style="font-size:80%;">192</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.2.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.2.1.3.1" style="font-size:80%;">768</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.2.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.2.1.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.2.1.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.2.1.5.1" style="font-size:80%;">5M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.3.2">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.3.2.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.3.2.1.1" style="font-size:80%;">DeiT-Small </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.3.2.1.2.1" style="font-size:80%;">(</span>Touvron et al.<span class="ltx_text" id="Ax1.T7.4.3.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib52" title="">2021a</a><span class="ltx_text" id="Ax1.T7.4.3.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.3.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.3.2.2.1" style="font-size:80%;">384</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.3.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.3.2.3.1" style="font-size:80%;">1,536</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.3.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.3.2.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.3.2.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.3.2.5.1" style="font-size:80%;">22M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.4.3">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.4.3.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.4.3.1.1" style="font-size:80%;">DeiT-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.4.3.1.2.1" style="font-size:80%;">(</span>Touvron et al.<span class="ltx_text" id="Ax1.T7.4.4.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib52" title="">2021a</a><span class="ltx_text" id="Ax1.T7.4.4.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.4.3.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.4.3.2.1" style="font-size:80%;">768</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.4.3.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.4.3.3.1" style="font-size:80%;">3,072</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.4.3.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.4.3.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.4.3.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.4.3.5.1" style="font-size:80%;">86M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.5.4">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.5.4.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.5.4.1.1" style="font-size:80%;">DeiT-Large </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.5.4.1.2.1" style="font-size:80%;">(</span>Touvron et al.<span class="ltx_text" id="Ax1.T7.4.5.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib55" title="">2022b</a><span class="ltx_text" id="Ax1.T7.4.5.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.5.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.5.4.2.1" style="font-size:80%;">1,024</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.5.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.5.4.3.1" style="font-size:80%;">4,096</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.5.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.5.4.4.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.5.4.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.5.4.5.1" style="font-size:80%;">304M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.6.5">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.6.5.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.6.5.1.1" style="font-size:80%;">DeiT-Huge </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.6.5.1.2.1" style="font-size:80%;">(</span>Touvron et al.<span class="ltx_text" id="Ax1.T7.4.6.5.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib55" title="">2022b</a><span class="ltx_text" id="Ax1.T7.4.6.5.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.6.5.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.6.5.2.1" style="font-size:80%;">1,280</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.6.5.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.6.5.3.1" style="font-size:80%;">5,120</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.6.5.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.6.5.4.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.6.5.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.6.5.5.1" style="font-size:80%;">631M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.7.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="Ax1.T7.4.7.6.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.7.6.1.1" style="font-size:80%;">Adventurer-Tiny </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.7.6.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="Ax1.T7.4.7.6.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a><span class="ltx_text" id="Ax1.T7.4.7.6.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.7.6.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.7.6.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.7.6.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.7.6.3.1" style="font-size:80%;">640</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.7.6.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.7.6.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Ax1.T7.4.7.6.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.7.6.5.1" style="font-size:80%;">12M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.8.7">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.8.7.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.8.7.1.1" style="font-size:80%;">Adventurer-Small </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.8.7.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="Ax1.T7.4.8.7.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a><span class="ltx_text" id="Ax1.T7.4.8.7.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.8.7.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.8.7.2.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.8.7.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.8.7.3.1" style="font-size:80%;">1,280</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.8.7.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.8.7.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.8.7.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.8.7.5.1" style="font-size:80%;">44M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.9.8">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.9.8.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.9.8.1.1" style="font-size:80%;">Adventurer-Base </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.9.8.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="Ax1.T7.4.9.8.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a><span class="ltx_text" id="Ax1.T7.4.9.8.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.9.8.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.9.8.2.1" style="font-size:80%;">768</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.9.8.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.9.8.3.1" style="font-size:80%;">1,920</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.9.8.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.9.8.4.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.9.8.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.9.8.5.1" style="font-size:80%;">99M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.10.9">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.10.9.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.10.9.1.1" style="font-size:80%;">Adventurer-Large </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.10.9.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="Ax1.T7.4.10.9.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a><span class="ltx_text" id="Ax1.T7.4.10.9.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.10.9.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.10.9.2.1" style="font-size:80%;">1,024</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.10.9.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.10.9.3.1" style="font-size:80%;">2,560</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.10.9.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.10.9.4.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.10.9.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.10.9.5.1" style="font-size:80%;">346M</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T7.4.11.10">
<td class="ltx_td ltx_align_left" id="Ax1.T7.4.11.10.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="Ax1.T7.4.11.10.1.1" style="font-size:80%;">Adventurer-Huge </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="Ax1.T7.4.11.10.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="Ax1.T7.4.11.10.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.03738v1#bib.bib58" title="">2024b</a><span class="ltx_text" id="Ax1.T7.4.11.10.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.11.10.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.11.10.2.1" style="font-size:80%;">1,280</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.11.10.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.11.10.3.1" style="font-size:80%;">3,200</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.11.10.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.11.10.4.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T7.4.11.10.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="Ax1.T7.4.11.10.5.1" style="font-size:80%;">759M</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the configurations used for different vision transformer models in the experiments.  It shows the embedding dimension, MLP (Multilayer Perceptron) dimension, number of blocks in the architecture, and the total number of parameters for each model variant (Tiny, Small, Base, Large, Huge). Note that all models listed here initially use a 16x16 patch size.
> <details>
> <summary>read the caption</summary>
> Table 7: Model configurations. All models have a 16×\times×16 patch size by default.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax1.T8.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax1.T8.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.1.1.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.1.1.1.1" style="font-size:80%;">Config</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.1.1.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.1.1.2.1" style="font-size:80%;">Tiny/Small/Base</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.1.1.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.1.1.3.1" style="font-size:80%;">Large/Huge</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax1.T8.6.2.2.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.2.2.1.1" style="font-size:80%;">optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="Ax1.T8.6.2.2.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.2.2.2.1" style="font-size:80%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.3.3.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.3.3.1.1" style="font-size:80%;">base learning rate</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.3.3.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.3.3.2.1" style="font-size:80%;">5e-4</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.3.3.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.3.3.3.1" style="font-size:80%;">2e-4</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.4.4.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.4.4.1.1" style="font-size:80%;">weight decay</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.4.4.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.4.4.2.1" style="font-size:80%;">0.05</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.4.4.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.4.4.3.1" style="font-size:80%;">0.3</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.5.5.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.5.5.1.1" style="font-size:80%;">epochs</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.5.5.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.5.5.2.1" style="font-size:80%;">300</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.5.5.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.5.5.3.1" style="font-size:80%;">200</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.6.6.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.6.6.1.1" style="font-size:80%;">optimizer betas</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.6.6.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.6.6.2.1" style="font-size:80%;">0.9, 0.999</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.6.6.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.6.6.3.1" style="font-size:80%;">0.9, 0.95</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.7.7.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.7.7.1.1" style="font-size:80%;">batch size</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.7.7.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.7.7.2.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.7.7.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.7.7.3.1" style="font-size:80%;">4096</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.8.8.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.8.8.1.1" style="font-size:80%;">warmup epochs</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.8.8.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.8.8.2.1" style="font-size:80%;">5</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.8.8.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.8.8.3.1" style="font-size:80%;">20</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.9.9.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.9.9.1.1" style="font-size:80%;">stochastic depth (drop path)</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.9.9.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.9.9.2.1" style="font-size:80%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T8.6.9.9.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.9.9.3.1" style="font-size:80%;">0.2</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.10.10.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.10.10.1.1" style="font-size:80%;">layer-wise lr decay</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T8.6.10.10.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.10.10.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.11.11.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.11.11.1.1" style="font-size:80%;">label smoothing</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T8.6.11.11.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.11.11.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.12.12.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.12.12.1.1" style="font-size:80%;">random erasing</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T8.6.12.12.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.12.12.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.13.13.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.13.13.1.1" style="font-size:80%;">Rand Augmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T8.6.13.13.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.13.13.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.14.14.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.14.14.1.1" style="font-size:80%;">repeated augmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T8.6.14.14.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.14.14.2.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T8.6.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T8.6.15.15.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.15.15.1.1" style="font-size:80%;">ThreeAugmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T8.6.15.15.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T8.6.15.15.2.1" style="font-size:80%;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents the hyperparameters used during the pretraining phase of the vision transformer models.  It details the configuration for both the DeiT and Adventurer model architectures, specifying settings such as the optimizer (AdamW), base learning rate, weight decay, number of epochs, and various data augmentation techniques (random erasing, RandAugment, etc.).  The table highlights the differences in hyperparameters between smaller (Tiny/Small/Base) and larger (Large/Huge) models, reflecting the scaling strategies employed in the experiments.  The table shows that different hyperparameter settings were used to train the models with 64x64 and 128x128 pixel inputs.
> <details>
> <summary>read the caption</summary>
> Table 8: Recipe of the pretraining stage, for 64×\times×64 or 128×\times×128 pixel inputs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax1.T9.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax1.T9.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.1.1.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.1.1.1.1" style="font-size:80%;">Config</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.1.1.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.1.1.2.1" style="font-size:80%;">Small/Base</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.1.1.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.1.1.3.1" style="font-size:80%;">Large</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax1.T9.6.2.2.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.2.2.1.1" style="font-size:80%;">optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="Ax1.T9.6.2.2.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.2.2.2.1" style="font-size:80%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.3.3.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.3.3.1.1" style="font-size:80%;">base learning rate</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.3.3.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.3.3.2.1" style="font-size:80%;">1e-5</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.3.3.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.3.3.3.1" style="font-size:80%;">2e-5</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.4.4.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.4.4.1.1" style="font-size:80%;">weight decay</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.4.4.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.4.4.2.1" style="font-size:80%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.4.4.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.4.4.3.1" style="font-size:80%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.5.5.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.5.5.1.1" style="font-size:80%;">epochs</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.5.5.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.5.5.2.1" style="font-size:80%;">20</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.5.5.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.5.5.3.1" style="font-size:80%;">50</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.6.6.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.6.6.1.1" style="font-size:80%;">optimizer betas</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.6.6.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.6.6.2.1" style="font-size:80%;">0.9, 0.999</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.6.6.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.6.6.3.1" style="font-size:80%;">0.9, 0.95</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.7.7.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.7.7.1.1" style="font-size:80%;">batch size</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.7.7.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.7.7.2.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.7.7.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.7.7.3.1" style="font-size:80%;">512</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.8.8.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.8.8.1.1" style="font-size:80%;">warmup epochs</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.8.8.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.8.8.2.1" style="font-size:80%;">5</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.8.8.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.8.8.3.1" style="font-size:80%;">5</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.9.9.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.9.9.1.1" style="font-size:80%;">stochastic depth (drop path)</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.9.9.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.9.9.2.1" style="font-size:80%;">0.4 (S), 0.6 (B)</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.9.9.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.9.9.3.1" style="font-size:80%;">0.6</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.10.10.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.10.10.1.1" style="font-size:80%;">layer-wise lr decay</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.10.10.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.10.10.2.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T9.6.10.10.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.10.10.3.1" style="font-size:80%;">0.95</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.11.11.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.11.11.1.1" style="font-size:80%;">label smoothing</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T9.6.11.11.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.11.11.2.1" style="font-size:80%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.12.12.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.12.12.1.1" style="font-size:80%;">random erasing</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T9.6.12.12.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.12.12.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.13.13.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.13.13.1.1" style="font-size:80%;">Rand Augmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T9.6.13.13.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.13.13.2.1" style="font-size:80%;">rand-m9-mstd0.5-inc1</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.14.14.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.14.14.1.1" style="font-size:80%;">repeated augmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T9.6.14.14.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.14.14.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T9.6.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T9.6.15.15.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.15.15.1.1" style="font-size:80%;">ThreeAugmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T9.6.15.15.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T9.6.15.15.2.1" style="font-size:80%;">✗</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the finetuning stage of the training process for the Adventurer models.  Finetuning is performed after an initial pretraining stage (see Table 8). The table shows configurations for different model sizes (Small and Base) and input resolutions (128x128 and 224x224 pixels).  Hyperparameters shown include the optimizer, learning rate, weight decay, number of epochs, beta parameters for the optimizer, batch size, warmup epochs, stochastic depth, layer-wise learning rate decay, label smoothing, random erasing, and augmentation techniques used.
> <details>
> <summary>read the caption</summary>
> Table 9: Recipe of the finetuning stage, for 128×\times×128 or 224×\times×224 pixel inputs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Ax1.T10.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Ax1.T10.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.1.1.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.1.1.1.1" style="font-size:80%;">Config</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.1.1.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.1.1.2.1" style="font-size:80%;">Small/Base</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.1.1.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.1.1.3.1" style="font-size:80%;">Large</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="Ax1.T10.4.2.2.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.2.2.1.1" style="font-size:80%;">optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="Ax1.T10.4.2.2.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.2.2.2.1" style="font-size:80%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.3.3.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.3.3.1.1" style="font-size:80%;">base learning rate</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.3.3.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.3.3.2.1" style="font-size:80%;">5e-4</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.3.3.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.3.3.3.1" style="font-size:80%;">8e-4</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.4.4.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.4.4.1.1" style="font-size:80%;">weight decay</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.4.4.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.4.4.2.1" style="font-size:80%;">0.05</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.4.4.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.4.4.3.1" style="font-size:80%;">0.3</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.5.5.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.5.5.1.1" style="font-size:80%;">epochs</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.5.5.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.5.5.2.1" style="font-size:80%;">100</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.5.5.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.5.5.3.1" style="font-size:80%;">50</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.6.6.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.6.6.1.1" style="font-size:80%;">optimizer betas</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.6.6.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.6.6.2.1" style="font-size:80%;">0.9, 0.999</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.6.6.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.6.6.3.1" style="font-size:80%;">0.9, 0.95</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.7.7.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.7.7.1.1" style="font-size:80%;">batch size</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.7.7.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.7.7.2.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.7.7.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.7.7.3.1" style="font-size:80%;">4096</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.8.8.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.8.8.1.1" style="font-size:80%;">warmup epochs</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.8.8.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.8.8.2.1" style="font-size:80%;">5</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.8.8.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.8.8.3.1" style="font-size:80%;">20</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.9.9.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.9.9.1.1" style="font-size:80%;">stochastic depth (drop path)</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.9.9.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.9.9.2.1" style="font-size:80%;">0.2 (S), 0.4 (B)</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.9.9.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.9.9.3.1" style="font-size:80%;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.10.10.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.10.10.1.1" style="font-size:80%;">layer-wise lr decay</span></th>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.10.10.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.10.10.2.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="Ax1.T10.4.10.10.3" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.10.10.3.1" style="font-size:80%;">0.9</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.11.11.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.11.11.1.1" style="font-size:80%;">label smoothing</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T10.4.11.11.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.11.11.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.12.12.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.12.12.1.1" style="font-size:80%;">random erasing</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T10.4.12.12.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.12.12.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.13.13.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.13.13.1.1" style="font-size:80%;">Rand Augmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T10.4.13.13.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.13.13.2.1" style="font-size:80%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.14.14.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.14.14.1.1" style="font-size:80%;">repeated augmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T10.4.14.14.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.14.14.2.1" style="font-size:80%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="Ax1.T10.4.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="Ax1.T10.4.15.15.1" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.15.15.1.1" style="font-size:80%;">ThreeAugmentation</span></th>
<td class="ltx_td ltx_align_center" colspan="2" id="Ax1.T10.4.15.15.2" style="padding:0.4pt 10.0pt;"><span class="ltx_text" id="Ax1.T10.4.15.15.2.1" style="font-size:80%;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 10 details the hyperparameters used in the intermediate training stage for the Adventurer model when using 224x224 pixel inputs.  It shows the optimizer used (AdamW), learning rate, weight decay, number of epochs, beta values for the optimizer, batch size, warm-up epochs, stochastic depth, layer-wise learning rate decay, label smoothing, random erasing, and data augmentation techniques (RandAugmentation, Repeated Augmentation, ThreeAugmentation). The table provides separate configurations for smaller (Small/Base) and larger (Large) versions of the Adventurer model, indicating different hyperparameter settings depending on model size.
> <details>
> <summary>read the caption</summary>
> Table 10: Recipe of the intermediate training stage, for 224×\times×224 pixel inputs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.03738/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03738/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}