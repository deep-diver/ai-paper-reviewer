---
title: "DICEPTION: A Generalist Diffusion Model for Visual Perceptual Tasks"
summary: "DICEPTION: A generalist diffusion model for visual perceptual tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Zhejiang University",]
showSummary: true
date: 2025-02-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.17157 {{< /keyword >}}
{{< keyword icon="writer" >}} Canyu Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.17157" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.17157" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.17157/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Foundation models often need massive datasets and resources. In computer vision, task representations differ greatly, making it hard to create versatile solutions. Fine-tuning models for new tasks remains a challenge. Existing efforts fall short of specialized models, requiring costly training and data.



DICEPTION, is a diffusion model for many vision tasks, tackling challenges with limited resources. It matches state-of-the-art performance using a fraction of the data. By using color encoding for outputs, it allows use of pre-trained text-to-image models.DICEPTION trains efficiently and adapts to new tasks with minimal fine-tuning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DICEPTION achieves state-of-the-art performance on multiple perception tasks with orders of magnitude less training data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study shows the potential of leveraging pre-trained text-to-image diffusion models for visual generalist models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The simple strategy of assigning random colors to different instances is highly effective in both entity and semantic segmentation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **DICEPTION, a promising generalist visual model**, pushing the boundaries of what's achievable with limited data. It paves the way for **more efficient and accessible AI solutions** in various computer vision applications and open to future research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.17157/x1.png)

> 🔼 Figure 1 showcases DiCeption's capabilities in handling various visual perception tasks.  The figure demonstrates that a single DiCeption model can perform multiple tasks (rows 1-3) without needing task-specific components. Point-prompted segmentation is highlighted with red dots as input (rows 1-3).  The model's precision is evident in preserving fine details like hair (row 4).  The versatility of the model extends to human pose estimation and semantic segmentation (rows 5-6). Finally, its adaptability is shown by its ability to learn new tasks with minimal fine-tuning (less than 1% of parameters on just 50 images, row 7).  Additional results are available in the appendix (Figures S1-S14).
> <details>
> <summary>read the caption</summary>
> Figure 1:  With one single model, DiCeption solves multiple tasks without relying on any task-specific modules (rows 1 to 3). The red dots in the figure indicate the input points used for point-prompted segmentation. DiCeption preserves fine details in segmentation, such as hair (row 4). DiCeption supports both human pose estimation and semantic segmentation (row 5, 6). DiCeption can quickly adapt to new tasks by fine-tuning less than 1% of its parameters on as few as 50 images (row 7). For additional visualizations, please refer to Figures S1, S2, S4, S6, S7, S8, S9, S10, S11, S12, S13, S14 in the Appendix.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.32.30">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.32.30.31.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.32.30.31.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.32.30.31.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.32.30.31.1.2">Training</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.32.30.31.1.3">KITTI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib32" title="">32</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.32.30.31.1.4">NYUv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib74" title="">74</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.32.30.31.1.5">ScanNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib23" title="">23</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.32.30.31.1.6">DIODE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib102" title="">102</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.32.30.31.1.7">ETH3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib92" title="">92</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.15.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.17.15.15.16">Samples</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.1.1.1">AbsRel<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.1.1.1.m1.1"><semantics id="S4.T1.3.1.1.1.m1.1a"><mo id="S4.T1.3.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.1.1.1.m1.1b"><ci id="S4.T1.3.1.1.1.m1.1.1.cmml" xref="S4.T1.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.5.3.3.3">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.4.2.2.2.m1.1"><semantics id="S4.T1.4.2.2.2.m1.1a"><msub id="S4.T1.4.2.2.2.m1.1.1" xref="S4.T1.4.2.2.2.m1.1.1.cmml"><mi id="S4.T1.4.2.2.2.m1.1.1.2" xref="S4.T1.4.2.2.2.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.4.2.2.2.m1.1.1.3" xref="S4.T1.4.2.2.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.4.2.2.2.m1.1b"><apply id="S4.T1.4.2.2.2.m1.1.1.cmml" xref="S4.T1.4.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.4.2.2.2.m1.1.1.1.cmml" xref="S4.T1.4.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T1.4.2.2.2.m1.1.1.2.cmml" xref="S4.T1.4.2.2.2.m1.1.1.2">𝛿</ci><cn id="S4.T1.4.2.2.2.m1.1.1.3.cmml" type="integer" xref="S4.T1.4.2.2.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.2.2.2.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.2.2.2.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.3.3.3.m2.1"><semantics id="S4.T1.5.3.3.3.m2.1a"><mo id="S4.T1.5.3.3.3.m2.1.1" stretchy="false" xref="S4.T1.5.3.3.3.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.3.3.3.m2.1b"><ci id="S4.T1.5.3.3.3.m2.1.1.cmml" xref="S4.T1.5.3.3.3.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.3.3.3.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.3.3.3.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.4.4.4">AbsRel<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.4.4.4.m1.1"><semantics id="S4.T1.6.4.4.4.m1.1a"><mo id="S4.T1.6.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.6.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.4.4.4.m1.1b"><ci id="S4.T1.6.4.4.4.m1.1.1.cmml" xref="S4.T1.6.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.8.6.6.6">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.7.5.5.5.m1.1"><semantics id="S4.T1.7.5.5.5.m1.1a"><msub id="S4.T1.7.5.5.5.m1.1.1" xref="S4.T1.7.5.5.5.m1.1.1.cmml"><mi id="S4.T1.7.5.5.5.m1.1.1.2" xref="S4.T1.7.5.5.5.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.7.5.5.5.m1.1.1.3" xref="S4.T1.7.5.5.5.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.7.5.5.5.m1.1b"><apply id="S4.T1.7.5.5.5.m1.1.1.cmml" xref="S4.T1.7.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.7.5.5.5.m1.1.1.1.cmml" xref="S4.T1.7.5.5.5.m1.1.1">subscript</csymbol><ci id="S4.T1.7.5.5.5.m1.1.1.2.cmml" xref="S4.T1.7.5.5.5.m1.1.1.2">𝛿</ci><cn id="S4.T1.7.5.5.5.m1.1.1.3.cmml" type="integer" xref="S4.T1.7.5.5.5.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.5.5.5.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.5.5.5.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.6.6.6.m2.1"><semantics id="S4.T1.8.6.6.6.m2.1a"><mo id="S4.T1.8.6.6.6.m2.1.1" stretchy="false" xref="S4.T1.8.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.6.6.6.m2.1b"><ci id="S4.T1.8.6.6.6.m2.1.1.cmml" xref="S4.T1.8.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.6.6.6.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.9.7.7.7">AbsRel<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.9.7.7.7.m1.1"><semantics id="S4.T1.9.7.7.7.m1.1a"><mo id="S4.T1.9.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.9.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.7.7.7.m1.1b"><ci id="S4.T1.9.7.7.7.m1.1.1.cmml" xref="S4.T1.9.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.11.9.9.9">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.10.8.8.8.m1.1"><semantics id="S4.T1.10.8.8.8.m1.1a"><msub id="S4.T1.10.8.8.8.m1.1.1" xref="S4.T1.10.8.8.8.m1.1.1.cmml"><mi id="S4.T1.10.8.8.8.m1.1.1.2" xref="S4.T1.10.8.8.8.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.10.8.8.8.m1.1.1.3" xref="S4.T1.10.8.8.8.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.10.8.8.8.m1.1b"><apply id="S4.T1.10.8.8.8.m1.1.1.cmml" xref="S4.T1.10.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.10.8.8.8.m1.1.1.1.cmml" xref="S4.T1.10.8.8.8.m1.1.1">subscript</csymbol><ci id="S4.T1.10.8.8.8.m1.1.1.2.cmml" xref="S4.T1.10.8.8.8.m1.1.1.2">𝛿</ci><cn id="S4.T1.10.8.8.8.m1.1.1.3.cmml" type="integer" xref="S4.T1.10.8.8.8.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.8.8.8.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.8.8.8.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.11.9.9.9.m2.1"><semantics id="S4.T1.11.9.9.9.m2.1a"><mo id="S4.T1.11.9.9.9.m2.1.1" stretchy="false" xref="S4.T1.11.9.9.9.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.9.9.9.m2.1b"><ci id="S4.T1.11.9.9.9.m2.1.1.cmml" xref="S4.T1.11.9.9.9.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.9.9.9.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.9.9.9.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.12.10.10.10">AbsRel<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.12.10.10.10.m1.1"><semantics id="S4.T1.12.10.10.10.m1.1a"><mo id="S4.T1.12.10.10.10.m1.1.1" stretchy="false" xref="S4.T1.12.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.10.10.10.m1.1b"><ci id="S4.T1.12.10.10.10.m1.1.1.cmml" xref="S4.T1.12.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.10.10.10.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.14.12.12.12">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.13.11.11.11.m1.1"><semantics id="S4.T1.13.11.11.11.m1.1a"><msub id="S4.T1.13.11.11.11.m1.1.1" xref="S4.T1.13.11.11.11.m1.1.1.cmml"><mi id="S4.T1.13.11.11.11.m1.1.1.2" xref="S4.T1.13.11.11.11.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.13.11.11.11.m1.1.1.3" xref="S4.T1.13.11.11.11.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.13.11.11.11.m1.1b"><apply id="S4.T1.13.11.11.11.m1.1.1.cmml" xref="S4.T1.13.11.11.11.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.13.11.11.11.m1.1.1.1.cmml" xref="S4.T1.13.11.11.11.m1.1.1">subscript</csymbol><ci id="S4.T1.13.11.11.11.m1.1.1.2.cmml" xref="S4.T1.13.11.11.11.m1.1.1.2">𝛿</ci><cn id="S4.T1.13.11.11.11.m1.1.1.3.cmml" type="integer" xref="S4.T1.13.11.11.11.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.11.11.11.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.11.11.11.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.14.12.12.12.m2.1"><semantics id="S4.T1.14.12.12.12.m2.1a"><mo id="S4.T1.14.12.12.12.m2.1.1" stretchy="false" xref="S4.T1.14.12.12.12.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.12.12.12.m2.1b"><ci id="S4.T1.14.12.12.12.m2.1.1.cmml" xref="S4.T1.14.12.12.12.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.12.12.12.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.12.12.12.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.15.13.13.13">AbsRel<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.15.13.13.13.m1.1"><semantics id="S4.T1.15.13.13.13.m1.1a"><mo id="S4.T1.15.13.13.13.m1.1.1" stretchy="false" xref="S4.T1.15.13.13.13.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.13.13.13.m1.1b"><ci id="S4.T1.15.13.13.13.m1.1.1.cmml" xref="S4.T1.15.13.13.13.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.13.13.13.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.13.13.13.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T1.17.15.15.15">
<math alttext="\delta_{1}" class="ltx_Math" display="inline" id="S4.T1.16.14.14.14.m1.1"><semantics id="S4.T1.16.14.14.14.m1.1a"><msub id="S4.T1.16.14.14.14.m1.1.1" xref="S4.T1.16.14.14.14.m1.1.1.cmml"><mi id="S4.T1.16.14.14.14.m1.1.1.2" xref="S4.T1.16.14.14.14.m1.1.1.2.cmml">δ</mi><mn id="S4.T1.16.14.14.14.m1.1.1.3" xref="S4.T1.16.14.14.14.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T1.16.14.14.14.m1.1b"><apply id="S4.T1.16.14.14.14.m1.1.1.cmml" xref="S4.T1.16.14.14.14.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.16.14.14.14.m1.1.1.1.cmml" xref="S4.T1.16.14.14.14.m1.1.1">subscript</csymbol><ci id="S4.T1.16.14.14.14.m1.1.1.2.cmml" xref="S4.T1.16.14.14.14.m1.1.1.2">𝛿</ci><cn id="S4.T1.16.14.14.14.m1.1.1.3.cmml" type="integer" xref="S4.T1.16.14.14.14.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.14.14.14.m1.1c">\delta_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.14.14.14.m1.1d">italic_δ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.17.15.15.15.m2.1"><semantics id="S4.T1.17.15.15.15.m2.1a"><mo id="S4.T1.17.15.15.15.m2.1.1" stretchy="false" xref="S4.T1.17.15.15.15.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.15.15.15.m2.1b"><ci id="S4.T1.17.15.15.15.m2.1.1.cmml" xref="S4.T1.17.15.15.15.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.15.15.15.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.15.15.15.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.32.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.32.30.32.2.1">MiDaS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib86" title="">86</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.32.30.32.2.2">2M</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.32.30.32.2.3">0.236</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.32.30.32.2.4">0.630</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.32.30.32.2.5">0.111</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.32.30.32.2.6">0.885</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.32.30.32.2.7">0.121</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.32.30.32.2.8">0.846</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.32.30.32.2.9">0.332</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.32.30.32.2.10">0.715</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.32.30.32.2.11">0.184</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T1.32.30.32.2.12">0.752</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.33.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.33.3.1">Omnidata <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib27" title="">27</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.33.3.2">12.2M</th>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.33.3.3">0.149</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.33.3.4">0.835</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.33.3.5">0.074</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.33.3.6">0.945</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.33.3.7">0.075</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.33.3.8">0.936</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.33.3.9">0.339</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.33.3.10">0.742</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.33.3.11">0.166</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.32.30.33.3.12">0.778</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.34.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.34.4.1">DPT-large <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib85" title="">85</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.34.4.2">1.4M</th>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.34.4.3">0.100</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.34.4.4">0.901</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.34.4.5">0.098</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.34.4.6">0.903</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.34.4.7">0.082</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.34.4.8">0.934</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.34.4.9">0.182</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.34.4.10">0.758</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.34.4.11">0.078</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.32.30.34.4.12">0.946</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.16.16">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.18.16.16.1">DepthAnything<sup class="ltx_sup" id="S4.T1.18.16.16.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib118" title="">118</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.18.16.16.2">63.5M</th>
<td class="ltx_td ltx_align_left" id="S4.T1.18.16.16.3">0.080</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.18.16.16.4">0.946</td>
<td class="ltx_td ltx_align_left" id="S4.T1.18.16.16.5">0.043</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.18.16.16.6">0.980</td>
<td class="ltx_td ltx_align_left" id="S4.T1.18.16.16.7">0.043</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.18.16.16.8">0.981</td>
<td class="ltx_td ltx_align_left" id="S4.T1.18.16.16.9">0.261</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.18.16.16.10">0.759</td>
<td class="ltx_td ltx_align_left" id="S4.T1.18.16.16.11">0.058</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.18.16.16.12"><span class="ltx_text ltx_font_bold" id="S4.T1.18.16.16.12.1">0.984</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.17.17">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.19.17.17.1">DepthAnything v2<sup class="ltx_sup" id="S4.T1.19.17.17.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib119" title="">119</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.19.17.17.2">62.6M</th>
<td class="ltx_td ltx_align_left" id="S4.T1.19.17.17.3">0.080</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.19.17.17.4">0.943</td>
<td class="ltx_td ltx_align_left" id="S4.T1.19.17.17.5">0.043</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.19.17.17.6">0.979</td>
<td class="ltx_td ltx_align_left" id="S4.T1.19.17.17.7">0.042</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.19.17.17.8">0.979</td>
<td class="ltx_td ltx_align_left" id="S4.T1.19.17.17.9">0.321</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.19.17.17.10">0.758</td>
<td class="ltx_td ltx_align_left" id="S4.T1.19.17.17.11">0.066</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.19.17.17.12">0.983</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.18.18">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.20.18.18.1">Depth Pro<sup class="ltx_sup" id="S4.T1.20.18.18.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib7" title="">7</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.20.18.18.2">-</th>
<td class="ltx_td ltx_align_left" id="S4.T1.20.18.18.3">0.055</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.20.18.18.4">0.974</td>
<td class="ltx_td ltx_align_left" id="S4.T1.20.18.18.5">0.042</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.20.18.18.6">0.977</td>
<td class="ltx_td ltx_align_left" id="S4.T1.20.18.18.7">0.041</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.20.18.18.8">0.978</td>
<td class="ltx_td ltx_align_left" id="S4.T1.20.18.18.9">0.217</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.20.18.18.10">0.764</td>
<td class="ltx_td ltx_align_left" id="S4.T1.20.18.18.11">0.043</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.20.18.18.12">0.974</td>
</tr>
<tr class="ltx_tr" id="S4.T1.21.19.19">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.21.19.19.1">Metric3D v2<sup class="ltx_sup" id="S4.T1.21.19.19.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib43" title="">43</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.21.19.19.2">16M</th>
<td class="ltx_td ltx_align_left" id="S4.T1.21.19.19.3"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.3.1">0.052</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.21.19.19.4"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.4.1">0.979</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.21.19.19.5"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.5.1">0.039</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.21.19.19.6"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.6.1">0.979</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.21.19.19.7"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.7.1">0.023</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.21.19.19.8"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.8.1">0.989</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.21.19.19.9"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.9.1">0.147</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.21.19.19.10"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.10.1">0.892</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.21.19.19.11"><span class="ltx_text ltx_font_bold" id="S4.T1.21.19.19.11.1">0.040</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.21.19.19.12">0.983</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.35.5">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.35.5.1">DiverseDepth <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib125" title="">125</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.35.5.2">320K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.35.5.3">0.190</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.35.5.4">0.704</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.35.5.5">0.117</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.35.5.6">0.875</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.35.5.7">0.109</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.35.5.8">0.882</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.35.5.9">0.376</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.35.5.10">0.631</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.35.5.11">0.228</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.32.30.35.5.12">0.694</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.36.6">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.36.6.1">LeReS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib126" title="">126</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.36.6.2">354K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.36.6.3">0.149</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.36.6.4">0.784</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.36.6.5">0.090</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.36.6.6">0.916</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.36.6.7">0.091</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.36.6.8">0.917</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.36.6.9">0.271</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.36.6.10">0.766</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.36.6.11">0.171</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.32.30.36.6.12">0.777</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.37.7">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.37.7.1">HDN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib128" title="">128</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.37.7.2">300K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.37.7.3">0.115</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.37.7.4">0.867</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.37.7.5">0.069</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.37.7.6">0.948</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.37.7.7">0.080</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.37.7.8">0.939</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.37.7.9">0.246</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.37.7.10">0.780</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.37.7.11">0.121</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.32.30.37.7.12">0.833</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.38.8">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.38.8.1">GeoWizard <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib31" title="">31</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.38.8.2">280K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.38.8.3">0.097</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.38.8.4">0.921</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.38.8.5">0.052</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.38.8.6">0.966</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.38.8.7">0.061</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.38.8.8">0.953</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.38.8.9">0.297</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.38.8.10">0.792</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.38.8.11">0.064</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.32.30.38.8.12">0.961</td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.39.9">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.39.9.1">DepthFM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib33" title="">33</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.32.30.39.9.2">63K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.39.9.3">0.083</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.39.9.4">0.934</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.39.9.5">0.065</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.39.9.6">0.956</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.39.9.7">-</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.39.9.8">-</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.39.9.9">0.225</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.32.30.39.9.10">0.800</td>
<td class="ltx_td ltx_align_left" id="S4.T1.32.30.39.9.11">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.32.30.39.9.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.20.20">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.22.20.20.1">Marigold<sup class="ltx_sup" id="S4.T1.22.20.20.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib47" title="">47</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.22.20.20.2">74K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.22.20.20.3">0.099</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.22.20.20.4">0.916</td>
<td class="ltx_td ltx_align_left" id="S4.T1.22.20.20.5">0.055</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.22.20.20.6">0.964</td>
<td class="ltx_td ltx_align_left" id="S4.T1.22.20.20.7">0.064</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.22.20.20.8">0.951</td>
<td class="ltx_td ltx_align_left" id="S4.T1.22.20.20.9">0.308</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.22.20.20.10">0.773</td>
<td class="ltx_td ltx_align_left" id="S4.T1.22.20.20.11">0.065</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.22.20.20.12">0.960</td>
</tr>
<tr class="ltx_tr" id="S4.T1.23.21.21">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.23.21.21.1">DMP Official<sup class="ltx_sup" id="S4.T1.23.21.21.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib54" title="">54</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.23.21.21.2">-</th>
<td class="ltx_td ltx_align_left" id="S4.T1.23.21.21.3">0.240</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.23.21.21.4">0.622</td>
<td class="ltx_td ltx_align_left" id="S4.T1.23.21.21.5">0.109</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.23.21.21.6">0.891</td>
<td class="ltx_td ltx_align_left" id="S4.T1.23.21.21.7">0.146</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.23.21.21.8">0.814</td>
<td class="ltx_td ltx_align_left" id="S4.T1.23.21.21.9">0.361</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.23.21.21.10">0.706</td>
<td class="ltx_td ltx_align_left" id="S4.T1.23.21.21.11">0.128</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.23.21.21.12">0.857</td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.22.22">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.24.22.22.1">GeoWizard<sup class="ltx_sup" id="S4.T1.24.22.22.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib31" title="">31</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.24.22.22.2">280K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.24.22.22.3">0.129</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.24.22.22.4">0.851</td>
<td class="ltx_td ltx_align_left" id="S4.T1.24.22.22.5">0.059</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.24.22.22.6">0.959</td>
<td class="ltx_td ltx_align_left" id="S4.T1.24.22.22.7">0.066</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.24.22.22.8">0.953</td>
<td class="ltx_td ltx_align_left" id="S4.T1.24.22.22.9">0.328</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.24.22.22.10">0.753</td>
<td class="ltx_td ltx_align_left" id="S4.T1.24.22.22.11">0.077</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.24.22.22.12">0.940</td>
</tr>
<tr class="ltx_tr" id="S4.T1.25.23.23">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.25.23.23.1">DepthFM<sup class="ltx_sup" id="S4.T1.25.23.23.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib33" title="">33</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.25.23.23.2">63K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.25.23.23.3">0.174</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.25.23.23.4">0.718</td>
<td class="ltx_td ltx_align_left" id="S4.T1.25.23.23.5">0.082</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.25.23.23.6">0.932</td>
<td class="ltx_td ltx_align_left" id="S4.T1.25.23.23.7">0.095</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.25.23.23.8">0.903</td>
<td class="ltx_td ltx_align_left" id="S4.T1.25.23.23.9">0.334</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.25.23.23.10">0.729</td>
<td class="ltx_td ltx_align_left" id="S4.T1.25.23.23.11">0.101</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.25.23.23.12">0.902</td>
</tr>
<tr class="ltx_tr" id="S4.T1.26.24.24">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.26.24.24.1">Genpercept<sup class="ltx_sup" id="S4.T1.26.24.24.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib114" title="">114</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.26.24.24.2">90K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.26.24.24.3">0.094</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.26.24.24.4">0.923</td>
<td class="ltx_td ltx_align_left" id="S4.T1.26.24.24.5">0.091</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.26.24.24.6">0.932</td>
<td class="ltx_td ltx_align_left" id="S4.T1.26.24.24.7">0.056</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.26.24.24.8">0.965</td>
<td class="ltx_td ltx_align_left" id="S4.T1.26.24.24.9">0.302</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.26.24.24.10">0.767</td>
<td class="ltx_td ltx_align_left" id="S4.T1.26.24.24.11">0.066</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.26.24.24.12">0.957</td>
</tr>
<tr class="ltx_tr" id="S4.T1.27.25.25">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.27.25.25.1">Painter<sup class="ltx_sup" id="S4.T1.27.25.25.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib109" title="">109</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.27.25.25.2">24K</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.27.25.25.3">0.324</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.27.25.25.4">0.393</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.27.25.25.5"><span class="ltx_text ltx_font_bold" id="S4.T1.27.25.25.5.1">0.046</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.27.25.25.6"><span class="ltx_text ltx_font_bold" id="S4.T1.27.25.25.6.1">0.979</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.27.25.25.7">0.083</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.27.25.25.8">0.927</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.27.25.25.9">0.342</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.27.25.25.10">0.534</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.27.25.25.11">0.203</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T1.27.25.25.12">0.644</td>
</tr>
<tr class="ltx_tr" id="S4.T1.28.26.26">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.28.26.26.1">Unified-IO<sup class="ltx_sup" id="S4.T1.28.26.26.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib69" title="">69</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.28.26.26.2">48K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.28.26.26.3">0.188</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.28.26.26.4">0.699</td>
<td class="ltx_td ltx_align_left" id="S4.T1.28.26.26.5">0.059</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.28.26.26.6">0.970</td>
<td class="ltx_td ltx_align_left" id="S4.T1.28.26.26.7"><span class="ltx_text ltx_font_bold" id="S4.T1.28.26.26.7.1">0.063</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.28.26.26.8"><span class="ltx_text ltx_font_bold" id="S4.T1.28.26.26.8.1">0.965</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.28.26.26.9">0.369</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.28.26.26.10">0.906</td>
<td class="ltx_td ltx_align_left" id="S4.T1.28.26.26.11">0.103</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.28.26.26.12">0.906</td>
</tr>
<tr class="ltx_tr" id="S4.T1.29.27.27">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.29.27.27.1">4M-XL<sup class="ltx_sup" id="S4.T1.29.27.27.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib72" title="">72</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.29.27.27.2">759M</th>
<td class="ltx_td ltx_align_left" id="S4.T1.29.27.27.3">0.105</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.29.27.27.4">0.896</td>
<td class="ltx_td ltx_align_left" id="S4.T1.29.27.27.5">0.068</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.29.27.27.6">0.951</td>
<td class="ltx_td ltx_align_left" id="S4.T1.29.27.27.7">0.065</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.29.27.27.8">0.955</td>
<td class="ltx_td ltx_align_left" id="S4.T1.29.27.27.9">0.331</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.29.27.27.10">0.734</td>
<td class="ltx_td ltx_align_left" id="S4.T1.29.27.27.11">0.070</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.29.27.27.12">0.953</td>
</tr>
<tr class="ltx_tr" id="S4.T1.30.28.28">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S4.T1.30.28.28.1">OneDiffusion<sup class="ltx_sup" id="S4.T1.30.28.28.1.1">†</sup>  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib53" title="">53</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.30.28.28.2">500K</th>
<td class="ltx_td ltx_align_left" id="S4.T1.30.28.28.3">0.101</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.30.28.28.4">0.908</td>
<td class="ltx_td ltx_align_left" id="S4.T1.30.28.28.5">0.087</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.30.28.28.6">0.924</td>
<td class="ltx_td ltx_align_left" id="S4.T1.30.28.28.7">0.094</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.30.28.28.8">0.906</td>
<td class="ltx_td ltx_align_left" id="S4.T1.30.28.28.9">0.399</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.30.28.28.10">0.661</td>
<td class="ltx_td ltx_align_left" id="S4.T1.30.28.28.11">0.072</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S4.T1.30.28.28.12">0.949</td>
</tr>
<tr class="ltx_tr" id="S4.T1.31.29.29">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.31.29.29.1"><span class="ltx_text" id="S4.T1.31.29.29.1.1" style="color:#808080;">Ours-single<sup class="ltx_sup" id="S4.T1.31.29.29.1.1.1"><span class="ltx_text" id="S4.T1.31.29.29.1.1.1.1" style="color:#000000;">†</span></sup></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.31.29.29.2"><span class="ltx_text" id="S4.T1.31.29.29.2.1" style="color:#808080;">500K</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.31.29.29.3"><span class="ltx_text" id="S4.T1.31.29.29.3.1" style="color:#808080;">0.081</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.31.29.29.4"><span class="ltx_text" id="S4.T1.31.29.29.4.1" style="color:#808080;">0.942</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.31.29.29.5"><span class="ltx_text" id="S4.T1.31.29.29.5.1" style="color:#808080;">0.068</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.31.29.29.6"><span class="ltx_text" id="S4.T1.31.29.29.6.1" style="color:#808080;">0.949</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.31.29.29.7"><span class="ltx_text" id="S4.T1.31.29.29.7.1" style="color:#808080;">0.078</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.31.29.29.8"><span class="ltx_text" id="S4.T1.31.29.29.8.1" style="color:#808080;">0.945</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.31.29.29.9"><span class="ltx_text" id="S4.T1.31.29.29.9.1" style="color:#808080;">0.267</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.31.29.29.10"><span class="ltx_text" id="S4.T1.31.29.29.10.1" style="color:#808080;">0.709</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.31.29.29.11"><span class="ltx_text" id="S4.T1.31.29.29.11.1" style="color:#808080;">0.059</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S4.T1.31.29.29.12"><span class="ltx_text" id="S4.T1.31.29.29.12.1" style="color:#808080;">0.969</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.32.30.30">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.32.30.30.1">Ours<sup class="ltx_sup" id="S4.T1.32.30.30.1.1">†</sup>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.32.30.30.2">500K</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.32.30.30.3"><span class="ltx_text ltx_font_bold" id="S4.T1.32.30.30.3.1">0.075</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T1.32.30.30.4"><span class="ltx_text ltx_font_bold" id="S4.T1.32.30.30.4.1">0.945</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.32.30.30.5">0.072</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T1.32.30.30.6">0.939</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.32.30.30.7">0.075</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T1.32.30.30.8">0.938</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.32.30.30.9"><span class="ltx_text ltx_font_bold" id="S4.T1.32.30.30.9.1">0.243</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S4.T1.32.30.30.10"><span class="ltx_text ltx_font_bold" id="S4.T1.32.30.30.10.1">0.741</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.32.30.30.11"><span class="ltx_text ltx_font_bold" id="S4.T1.32.30.30.11.1">0.053</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="S4.T1.32.30.30.12"><span class="ltx_text ltx_font_bold" id="S4.T1.32.30.30.12.1">0.967</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of depth estimation methods, evaluating both specialized models designed for a single task and multi-task models capable of handling multiple tasks simultaneously.  The evaluation is performed on zero-shot datasets, meaning the models are tested on data they haven't seen during training. This assesses the models' generalization capabilities. The table compares various metrics (AbsRel, 81, etc.) across different datasets (KITTI, NYUv2, ScanNet, etc.).  The results demonstrate that the proposed visual generalist model achieves performance comparable to state-of-the-art specialized models, highlighting its effectiveness in depth estimation without task-specific training. The evaluation protocol used is consistent with the Genpercept method.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison of depth estimation with both specialized models and multi-task models on zero-shot datasets. Our visual generalist model can perform on par with state-of-the-art models. We use the same evaluation protocal (††\dagger†) as Genpercept [114].
> </details>





### In-depth insights


#### Diffusion Prior
Diffusion priors, stemming from the success of diffusion models in generative tasks, offer a powerful inductive bias for various computer vision problems. Their ability to generate realistic and diverse samples suggests a strong learned representation of the visual world, which can be leveraged for tasks beyond generation. Instead of training models from scratch, initializing with or incorporating a diffusion prior allows for faster convergence, better generalization, and reduced data requirements. **This is especially beneficial in data-scarce scenarios or when dealing with complex tasks where learning from scratch is challenging.** By utilizing the inherent knowledge encoded in diffusion models, researchers can effectively transfer this knowledge to downstream tasks, achieving state-of-the-art results with significantly less computational resources. **Moreover, diffusion priors enable the exploration of novel architectures and training strategies, opening up new possibilities for solving long-standing problems in computer vision.**

#### RGB Task Unifier
The concept of an 'RGB Task Unifier' is intriguing, suggesting a system where various visual tasks are represented and processed within the RGB color space. This unification could have several benefits. **Firstly**, it could simplify the architecture by providing a common input/output format, potentially reducing the need for task-specific modules. **Secondly**, leveraging the RGB space might allow the model to exploit pre-trained knowledge from image datasets, as most vision models are trained on RGB images. **However**, this approach also presents challenges. Encoding diverse tasks like depth estimation or semantic segmentation into RGB might lead to information loss or require complex encoding schemes. Also, the interpretability of the RGB representation could be an issue, making it difficult to understand the model's reasoning process. Ultimately, the success of an RGB Task Unifier hinges on effectively balancing the simplicity and expressiveness of the RGB representation, ensuring it can capture the nuances of different visual tasks without sacrificing performance.

#### Data-Efficient
In the context of deep learning and computer vision, "Data-Efficient" methods are highly valuable. The ability to achieve high performance with limited data has huge practical implications. **Data scarcity is a common bottleneck** in real-world applications. Data-efficient techniques often rely on strategies like transfer learning, **leveraging pre-trained models on large datasets** and fine-tuning on smaller task-specific sets. Meta-learning, or learning to learn, is another approach, enabling models to quickly adapt to new tasks with few examples. Other methods include data augmentation techniques, synthetic data generation, and self-supervised learning.

#### Few-Shot Adapt
Few-shot adaptation is a crucial capability for generalist models, enabling them to rapidly specialize to new tasks with limited data. **Effective few-shot adaptation hinges on leveraging pre-trained knowledge** and minimizing the risk of overfitting to the scarce training examples. Strategies such as **meta-learning** can pre-train a model to be adaptable, while techniques like **fine-tuning a small subset of parameters or using LoRA layers, injecting task-specific information** can efficiently transfer knowledge. Furthermore, **regularization methods** and data augmentation become vital to prevent overfitting. Success in few-shot adaptation highlights the model's ability to abstract underlying task structures and its robustness to distribution shifts.

#### Mask Refinement
Mask refinement is a critical step in various computer vision tasks, especially segmentation. It focuses on improving the quality and accuracy of initially predicted masks. **Techniques often involve morphological operations to fill holes or remove noise**. Edge refinement methods are applied to improve boundary details. Also, using Conditional Random Fields (CRFs) to model relationships between pixels to enforce smoothness and consistency. **Deep learning approaches use specialized layers for boundary enhancement or iterative refinement networks to progressively refine masks**. The choice of refinement technique depends on the specific task, dataset, and the characteristics of initial masks, with the goal of creating more precise and visually plausible segmentations. In short, **refining masks lead to better segmentation**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.17157/x2.png)

> 🔼 This figure presents a bar chart comparing the mean Intersection over Union (mIoU) scores achieved by the DICEPTION model and the SAM-vit-h model on various datasets.  The key finding is that DICEPTION achieves comparable performance to SAM-vit-h while using significantly less data – a mere 0.06% of the data used by SAM-vit-h (600,000 images versus 1 billion images).  The chart visually represents the difference in mIoU scores for each dataset, highlighting DICEPTION's efficiency in achieving similar results with drastically reduced data requirements.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Comparisons of mIoU with SAM-vit-h. We achieve results on par with SAM using only 0.06% of their data (600K vs.  1B).
> </details>



![](https://arxiv.org/html/2502.17157/x3.png)

> 🔼 This figure compares the mean Intersection over Union (mIoU) scores achieved by a model using one versus five points in a point-prompted segmentation task.  The comparison is performed across all 23 validation datasets used in the study.  The goal is to demonstrate how increasing the number of input points can impact the performance and accuracy of the model in segmenting objects.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Comparisons between 1-point and 5-point segmentation of mIoU on all 23 validation datasets.
> </details>



![](https://arxiv.org/html/2502.17157/x4.png)

> 🔼 This figure shows a variety of examples demonstrating the model's ability to perform multiple visual perception tasks using a single model.  Each row represents a different input image and shows the model's output for depth estimation, surface normal estimation, point-prompted segmentation, pose estimation, entity segmentation, and semantic segmentation. This showcases the versatility of the DICEPTION model in handling diverse visual perception tasks, even with minimal training data per task.
> <details>
> <summary>read the caption</summary>
> Figure S1:  Additional visualizations. Our one single model tackles multiple perception tasks.
> </details>



![](https://arxiv.org/html/2502.17157/x5.png)

> 🔼 This figure showcases the DICEPTION model's performance on images containing furry objects, a challenging scenario for segmentation. The results demonstrate the model's ability to accurately delineate the boundaries of furry animals, such as cats, dogs, and llamas, even in the presence of fine details and variations in fur texture.
> <details>
> <summary>read the caption</summary>
> Figure S2:  Segmentation results on furry objects.
> </details>



![](https://arxiv.org/html/2502.17157/x6.png)

> 🔼 During post-processing of RGB segmentation masks, the algorithm filters out small regions and those with excessive numbers of objects. While this improves the overall quality, it also removes some valid segments (like small birds or people in a crowd), leading to significant drops in metrics such as average precision (AP).  The figure likely shows examples where this filtering negatively impacts the results.
> <details>
> <summary>read the caption</summary>
> Figure S3:  When post-processing RGB masks, small regions and excessive numbers of objects lead to significant metric degradation.
> </details>



![](https://arxiv.org/html/2502.17157/x7.png)

> 🔼 This figure showcases the results of applying DICEPTION to image highlighting after few-shot fine-tuning.  It displays multiple example images where highlighting has been applied to specific regions or objects within the image, demonstrating the model's ability to adapt quickly to new image manipulation tasks with minimal training data.
> <details>
> <summary>read the caption</summary>
> Figure S4:  Additional few-shot fine-tuning results on image highlighting.
> </details>



![](https://arxiv.org/html/2502.17157/x8.png)

> 🔼 The figure showcases a comparison of DICEPTION's segmentation results versus One Diffusion's on various images.  DICEPTION effectively differentiates between semantically similar objects and successfully segments multiple instances of the same category, leading to improved segmentation accuracy and detail.  In contrast, One Diffusion, when tasked with image understanding, produces output images that closely resemble the input, failing to effectively perform the segmentation task, a shortcoming highlighted by the red boxes in the figure.
> <details>
> <summary>read the caption</summary>
> Figure S5:  Our segmentation not only separates semantically identical objects but also distinguishes different instances of the same category, achieving higher segmentation quality. Moreover, One Diffusion tends to generate an image similar to the input when performing image understanding tasks, as red-highlighted in the figure.
> </details>



![](https://arxiv.org/html/2502.17157/x9.png)

> 🔼 This figure displays the results of fine-tuning DICEPTION on lung and tumor segmentation tasks using a small amount of data.  It showcases the model's ability to adapt quickly to new medical imaging tasks and achieve high-quality segmentations, even with limited training samples.  Each image pair likely shows an input medical image and the corresponding segmentation mask produced by DICEPTION after few-shot fine-tuning. The accuracy and detail of the segmentations highlight DICEPTION's effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure S6:  Additional few-shot fine-tuning results on lung segmentation and tumor segmentation.
> </details>



![](https://arxiv.org/html/2502.17157/x10.png)

> 🔼 This figure displays a grid of images, each showing a different scene, along with their corresponding depth estimations generated by the DICEPTION model. The depth maps are presented in a heatmap format, where warmer colors represent closer distances and cooler colors represent further distances. This visualization showcases DICEPTION's capacity for accurate depth estimation across diverse real-world scenes and objects.
> <details>
> <summary>read the caption</summary>
> Figure S7:  Additional depth estimation visualizations.
> </details>



![](https://arxiv.org/html/2502.17157/x11.png)

> 🔼 This figure displays a grid of images showcasing additional examples of surface normal estimations generated by the DICEPTION model.  Surface normals are crucial for representing the 3D shape and orientation of surfaces in images, and this visualization helps demonstrate the model's ability to accurately estimate these normals across a variety of scenes and objects, including people, cars, furniture, and everyday items.
> <details>
> <summary>read the caption</summary>
> Figure S8:  Additional normal visualizations.
> </details>



![](https://arxiv.org/html/2502.17157/x12.png)

> 🔼 This figure displays a grid of images showcasing the results of entity segmentation performed by the DICEPTION model.  Entity segmentation focuses on identifying individual instances within an image without classifying them into specific categories. Each identified instance is assigned a unique random color, facilitating visual distinction between different objects. The images demonstrate the model's ability to accurately segment diverse objects, ranging from everyday items (like bowls of fruit) to more complex scenes, showcasing the model's effectiveness across various object types and levels of visual complexity.
> <details>
> <summary>read the caption</summary>
> Figure S9:  Additional entity segmentation visualizations.
> </details>



![](https://arxiv.org/html/2502.17157/x13.png)

> 🔼 This figure displays several examples of point-prompted image segmentation results.  Point-prompted segmentation uses a small number of points as input to specify the region of interest for segmentation.  The figure showcases the model's ability to accurately segment diverse objects and scenes, even with complex backgrounds or unusual viewpoints. Each image shows the input image alongside the model's predicted segmentation mask highlighting the object or area specified by the input points.
> <details>
> <summary>read the caption</summary>
> Figure S10:  Additional point-prompted segmentation visualizations.
> </details>



![](https://arxiv.org/html/2502.17157/x14.png)

> 🔼 This figure displays a comparison of segmentation results between the DiCeption model and the SAM-vit-h model.  Both models were given a single point as input to guide the segmentation process.  The images show side-by-side comparisons of the input image, DiCeption's output segmentation mask, and SAM-vit-h's output segmentation mask. This allows for a visual assessment of the relative performance of the two models on various image types and segmentation challenges using minimal input information.
> <details>
> <summary>read the caption</summary>
> Figure S11:  Comparison of the segmentation results between DiCeption and SAM-vit-h with 1-point input.
> </details>



![](https://arxiv.org/html/2502.17157/x15.png)

> 🔼 This figure displays a comparison of segmentation results obtained using DiCeption and SAM-vit-h.  Both models were given the same input images and five points to guide their segmentation.  The comparison highlights the differences in segmentation accuracy and detail captured by each model, demonstrating the relative strengths and weaknesses of DiCeption and SAM-vit-h for point-prompted segmentation tasks.
> <details>
> <summary>read the caption</summary>
> Figure S12:  Comparison of the segmentation results between DiCeption and SAM-vit-h with 5-point input.
> </details>



![](https://arxiv.org/html/2502.17157/x16.png)

> 🔼 This figure displays several example images and their corresponding human pose estimations generated by the DICEPTION model.  The images show diverse scenes and poses, demonstrating the model's ability to accurately estimate human poses in various contexts. Each image is paired with a visualization of the detected keypoints and their connections, illustrating the model's performance on different individuals, clothing styles, and activities.
> <details>
> <summary>read the caption</summary>
> Figure S13:  Additional pose estimation visualizations.
> </details>



![](https://arxiv.org/html/2502.17157/x17.png)

> 🔼 This figure shows various examples of semantic segmentation results produced by the DICEPTION model.  It demonstrates the model's ability to accurately segment various objects and scenes into their respective semantic classes, showcasing its performance on a range of complex and diverse visual inputs. The images depict a variety of scenes and objects, including food items, landscapes, and indoor settings.  Each image has its corresponding ground truth segmentation for comparison. The color-coded segmentation masks illustrate the model's classification of different semantic categories within the scene.
> <details>
> <summary>read the caption</summary>
> Figure S14:  Additional semantic segmentation visualizations.
> </details>



![](https://arxiv.org/html/2502.17157/x18.png)

> 🔼 The figure shows examples where using a one-step denoising process in the DICEPTION model, instead of the standard multi-step approach, leads to a significant increase in prediction errors or failures, particularly in more complex visual perception tasks.  The one-step method's inability to properly resolve ambiguity and handle intricate details across multiple tasks simultaneously is highlighted.
> <details>
> <summary>read the caption</summary>
> Figure S15:  The model tends to produce more failure cases in 1-step scenario.
> </details>



![](https://arxiv.org/html/2502.17157/x19.png)

> 🔼 This figure demonstrates the failure of a UNet-based model to effectively handle multiple visual perception tasks simultaneously.  Unlike the DICEPTION model (which uses a Transformer-based architecture), the UNet architecture struggles to maintain comprehensive representations across various tasks, leading to significantly reduced performance and an inability to achieve good results on multiple tasks concurrently. This highlights the limitations of the UNet structure for multi-task learning in comparison to the more capable Transformer-based architecture.
> <details>
> <summary>read the caption</summary>
> Figure S16:  A UNet-based model fails to perform multi-task.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.24.24.24">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.24.24.24.25.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_tt" id="S4.T2.24.24.24.25.1.1" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.25.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.24.24.24.25.1.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.25.1.2.1" style="font-size:80%;">Training</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T2.24.24.24.25.1.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.25.1.3.1" style="font-size:80%;">NYUv2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.25.1.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib74" title="">74</a><span class="ltx_text" id="S4.T2.24.24.24.25.1.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T2.24.24.24.25.1.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.25.1.4.1" style="font-size:80%;">ScanNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.25.1.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib23" title="">23</a><span class="ltx_text" id="S4.T2.24.24.24.25.1.4.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="5" id="S4.T2.24.24.24.25.1.5" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.25.1.5.1" style="font-size:80%;">DIODE-indoor </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.25.1.5.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib102" title="">102</a><span class="ltx_text" id="S4.T2.24.24.24.25.1.5.3.2" style="font-size:80%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.24.25" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.24.25.1" style="font-size:80%;">Samples</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1.1.1" style="font-size:80%;">mean</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.2.2.2.2.2.1" style="font-size:80%;">med</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="11.25^{\circ}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.3.m1.1a"><msup id="S4.T2.3.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.3.m1.1.1.cmml"><mn id="S4.T2.3.3.3.3.3.m1.1.1.2" mathsize="70%" xref="S4.T2.3.3.3.3.3.m1.1.1.2.cmml">11.25</mn><mo id="S4.T2.3.3.3.3.3.m1.1.1.3" mathsize="70%" xref="S4.T2.3.3.3.3.3.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.3.m1.1b"><apply id="S4.T2.3.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.3.3.3.3.3.m1.1.1.1.cmml" xref="S4.T2.3.3.3.3.3.m1.1.1">superscript</csymbol><cn id="S4.T2.3.3.3.3.3.m1.1.1.2.cmml" type="float" xref="S4.T2.3.3.3.3.3.m1.1.1.2">11.25</cn><compose id="S4.T2.3.3.3.3.3.m1.1.1.3.cmml" xref="S4.T2.3.3.3.3.3.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.3.m1.1c">11.25^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.3.m1.1d">11.25 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.4.m2.1"><semantics id="S4.T2.4.4.4.4.4.m2.1a"><mo id="S4.T2.4.4.4.4.4.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.4.4.4.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.4.m2.1b"><ci id="S4.T2.4.4.4.4.4.m2.1.1.cmml" xref="S4.T2.4.4.4.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.4.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.6.6.6.6.6" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="22.5^{\circ}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.5.m1.1a"><msup id="S4.T2.5.5.5.5.5.m1.1.1" xref="S4.T2.5.5.5.5.5.m1.1.1.cmml"><mn id="S4.T2.5.5.5.5.5.m1.1.1.2" mathsize="70%" xref="S4.T2.5.5.5.5.5.m1.1.1.2.cmml">22.5</mn><mo id="S4.T2.5.5.5.5.5.m1.1.1.3" mathsize="70%" xref="S4.T2.5.5.5.5.5.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.5.m1.1b"><apply id="S4.T2.5.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.5.5.5.5.5.m1.1.1.1.cmml" xref="S4.T2.5.5.5.5.5.m1.1.1">superscript</csymbol><cn id="S4.T2.5.5.5.5.5.m1.1.1.2.cmml" type="float" xref="S4.T2.5.5.5.5.5.m1.1.1.2">22.5</cn><compose id="S4.T2.5.5.5.5.5.m1.1.1.3.cmml" xref="S4.T2.5.5.5.5.5.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.5.m1.1c">22.5^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.5.m1.1d">22.5 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.6.m2.1"><semantics id="S4.T2.6.6.6.6.6.m2.1a"><mo id="S4.T2.6.6.6.6.6.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.6.6.6.6.6.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.6.m2.1b"><ci id="S4.T2.6.6.6.6.6.m2.1.1.cmml" xref="S4.T2.6.6.6.6.6.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.6.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.6.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.8.8.8" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="30^{\circ}" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.7.7.m1.1a"><msup id="S4.T2.7.7.7.7.7.m1.1.1" xref="S4.T2.7.7.7.7.7.m1.1.1.cmml"><mn id="S4.T2.7.7.7.7.7.m1.1.1.2" mathsize="70%" xref="S4.T2.7.7.7.7.7.m1.1.1.2.cmml">30</mn><mo id="S4.T2.7.7.7.7.7.m1.1.1.3" mathsize="70%" xref="S4.T2.7.7.7.7.7.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.7.m1.1b"><apply id="S4.T2.7.7.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.7.7.7.7.7.m1.1.1.1.cmml" xref="S4.T2.7.7.7.7.7.m1.1.1">superscript</csymbol><cn id="S4.T2.7.7.7.7.7.m1.1.1.2.cmml" type="integer" xref="S4.T2.7.7.7.7.7.m1.1.1.2">30</cn><compose id="S4.T2.7.7.7.7.7.m1.1.1.3.cmml" xref="S4.T2.7.7.7.7.7.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.7.m1.1c">30^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.7.m1.1d">30 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.8.m2.1"><semantics id="S4.T2.8.8.8.8.8.m2.1a"><mo id="S4.T2.8.8.8.8.8.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.8.8.8.8.8.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.8.m2.1b"><ci id="S4.T2.8.8.8.8.8.m2.1.1.cmml" xref="S4.T2.8.8.8.8.8.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.8.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.8.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.9.9.9.9.9" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.9.9.9.9.9.1" style="font-size:80%;">mean</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.9.9.m1.1"><semantics id="S4.T2.9.9.9.9.9.m1.1a"><mo id="S4.T2.9.9.9.9.9.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.9.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.9.9.m1.1b"><ci id="S4.T2.9.9.9.9.9.m1.1.1.cmml" xref="S4.T2.9.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.10.10.10.10.10" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.10.10.10.10.10.1" style="font-size:80%;">med</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.10.10.10.10.10.m1.1"><semantics id="S4.T2.10.10.10.10.10.m1.1a"><mo id="S4.T2.10.10.10.10.10.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.10.10.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.10.10.m1.1b"><ci id="S4.T2.10.10.10.10.10.m1.1.1.cmml" xref="S4.T2.10.10.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.10.10.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.12.12.12.12.12" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="11.25^{\circ}" class="ltx_Math" display="inline" id="S4.T2.11.11.11.11.11.m1.1"><semantics id="S4.T2.11.11.11.11.11.m1.1a"><msup id="S4.T2.11.11.11.11.11.m1.1.1" xref="S4.T2.11.11.11.11.11.m1.1.1.cmml"><mn id="S4.T2.11.11.11.11.11.m1.1.1.2" mathsize="70%" xref="S4.T2.11.11.11.11.11.m1.1.1.2.cmml">11.25</mn><mo id="S4.T2.11.11.11.11.11.m1.1.1.3" mathsize="70%" xref="S4.T2.11.11.11.11.11.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.11.11.m1.1b"><apply id="S4.T2.11.11.11.11.11.m1.1.1.cmml" xref="S4.T2.11.11.11.11.11.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.11.11.11.11.11.m1.1.1.1.cmml" xref="S4.T2.11.11.11.11.11.m1.1.1">superscript</csymbol><cn id="S4.T2.11.11.11.11.11.m1.1.1.2.cmml" type="float" xref="S4.T2.11.11.11.11.11.m1.1.1.2">11.25</cn><compose id="S4.T2.11.11.11.11.11.m1.1.1.3.cmml" xref="S4.T2.11.11.11.11.11.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.11.11.m1.1c">11.25^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.11.11.m1.1d">11.25 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.12.12.12.12.12.m2.1"><semantics id="S4.T2.12.12.12.12.12.m2.1a"><mo id="S4.T2.12.12.12.12.12.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.12.12.12.12.12.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.12.12.m2.1b"><ci id="S4.T2.12.12.12.12.12.m2.1.1.cmml" xref="S4.T2.12.12.12.12.12.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.12.12.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.12.12.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.14.14.14.14.14" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="22.5^{\circ}" class="ltx_Math" display="inline" id="S4.T2.13.13.13.13.13.m1.1"><semantics id="S4.T2.13.13.13.13.13.m1.1a"><msup id="S4.T2.13.13.13.13.13.m1.1.1" xref="S4.T2.13.13.13.13.13.m1.1.1.cmml"><mn id="S4.T2.13.13.13.13.13.m1.1.1.2" mathsize="70%" xref="S4.T2.13.13.13.13.13.m1.1.1.2.cmml">22.5</mn><mo id="S4.T2.13.13.13.13.13.m1.1.1.3" mathsize="70%" xref="S4.T2.13.13.13.13.13.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.13.13.m1.1b"><apply id="S4.T2.13.13.13.13.13.m1.1.1.cmml" xref="S4.T2.13.13.13.13.13.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.13.13.13.13.13.m1.1.1.1.cmml" xref="S4.T2.13.13.13.13.13.m1.1.1">superscript</csymbol><cn id="S4.T2.13.13.13.13.13.m1.1.1.2.cmml" type="float" xref="S4.T2.13.13.13.13.13.m1.1.1.2">22.5</cn><compose id="S4.T2.13.13.13.13.13.m1.1.1.3.cmml" xref="S4.T2.13.13.13.13.13.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.13.13.m1.1c">22.5^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.13.13.m1.1d">22.5 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.14.14.14.14.14.m2.1"><semantics id="S4.T2.14.14.14.14.14.m2.1a"><mo id="S4.T2.14.14.14.14.14.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.14.14.14.14.14.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.14.14.m2.1b"><ci id="S4.T2.14.14.14.14.14.m2.1.1.cmml" xref="S4.T2.14.14.14.14.14.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.14.14.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.14.14.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.16.16.16.16.16" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="30^{\circ}" class="ltx_Math" display="inline" id="S4.T2.15.15.15.15.15.m1.1"><semantics id="S4.T2.15.15.15.15.15.m1.1a"><msup id="S4.T2.15.15.15.15.15.m1.1.1" xref="S4.T2.15.15.15.15.15.m1.1.1.cmml"><mn id="S4.T2.15.15.15.15.15.m1.1.1.2" mathsize="70%" xref="S4.T2.15.15.15.15.15.m1.1.1.2.cmml">30</mn><mo id="S4.T2.15.15.15.15.15.m1.1.1.3" mathsize="70%" xref="S4.T2.15.15.15.15.15.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.15.15.m1.1b"><apply id="S4.T2.15.15.15.15.15.m1.1.1.cmml" xref="S4.T2.15.15.15.15.15.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.15.15.15.15.15.m1.1.1.1.cmml" xref="S4.T2.15.15.15.15.15.m1.1.1">superscript</csymbol><cn id="S4.T2.15.15.15.15.15.m1.1.1.2.cmml" type="integer" xref="S4.T2.15.15.15.15.15.m1.1.1.2">30</cn><compose id="S4.T2.15.15.15.15.15.m1.1.1.3.cmml" xref="S4.T2.15.15.15.15.15.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.15.15.m1.1c">30^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.15.15.m1.1d">30 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.16.16.16.16.16.m2.1"><semantics id="S4.T2.16.16.16.16.16.m2.1a"><mo id="S4.T2.16.16.16.16.16.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.16.16.16.16.16.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.16.16.m2.1b"><ci id="S4.T2.16.16.16.16.16.m2.1.1.cmml" xref="S4.T2.16.16.16.16.16.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.16.16.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.16.16.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.17.17.17.17.17" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.17.17.17.17.17.1" style="font-size:80%;">mean</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.17.17.17.17.17.m1.1"><semantics id="S4.T2.17.17.17.17.17.m1.1a"><mo id="S4.T2.17.17.17.17.17.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.17.17.17.17.17.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.17.17.17.m1.1b"><ci id="S4.T2.17.17.17.17.17.m1.1.1.cmml" xref="S4.T2.17.17.17.17.17.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.17.17.17.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.17.17.17.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.18.18.18.18.18" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.18.18.18.18.18.1" style="font-size:80%;">med</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.18.18.18.18.18.m1.1"><semantics id="S4.T2.18.18.18.18.18.m1.1a"><mo id="S4.T2.18.18.18.18.18.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.18.18.18.18.18.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.18.18.18.m1.1b"><ci id="S4.T2.18.18.18.18.18.m1.1.1.cmml" xref="S4.T2.18.18.18.18.18.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.18.18.18.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.18.18.18.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.20.20.20.20.20" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="11.25^{\circ}" class="ltx_Math" display="inline" id="S4.T2.19.19.19.19.19.m1.1"><semantics id="S4.T2.19.19.19.19.19.m1.1a"><msup id="S4.T2.19.19.19.19.19.m1.1.1" xref="S4.T2.19.19.19.19.19.m1.1.1.cmml"><mn id="S4.T2.19.19.19.19.19.m1.1.1.2" mathsize="70%" xref="S4.T2.19.19.19.19.19.m1.1.1.2.cmml">11.25</mn><mo id="S4.T2.19.19.19.19.19.m1.1.1.3" mathsize="70%" xref="S4.T2.19.19.19.19.19.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.19.19.19.m1.1b"><apply id="S4.T2.19.19.19.19.19.m1.1.1.cmml" xref="S4.T2.19.19.19.19.19.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.19.19.19.19.19.m1.1.1.1.cmml" xref="S4.T2.19.19.19.19.19.m1.1.1">superscript</csymbol><cn id="S4.T2.19.19.19.19.19.m1.1.1.2.cmml" type="float" xref="S4.T2.19.19.19.19.19.m1.1.1.2">11.25</cn><compose id="S4.T2.19.19.19.19.19.m1.1.1.3.cmml" xref="S4.T2.19.19.19.19.19.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.19.19.19.m1.1c">11.25^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.19.19.19.m1.1d">11.25 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.20.20.20.20.20.m2.1"><semantics id="S4.T2.20.20.20.20.20.m2.1a"><mo id="S4.T2.20.20.20.20.20.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.20.20.20.20.20.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.20.20.20.m2.1b"><ci id="S4.T2.20.20.20.20.20.m2.1.1.cmml" xref="S4.T2.20.20.20.20.20.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.20.20.20.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.20.20.20.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.22.22.22.22.22" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="22.5^{\circ}" class="ltx_Math" display="inline" id="S4.T2.21.21.21.21.21.m1.1"><semantics id="S4.T2.21.21.21.21.21.m1.1a"><msup id="S4.T2.21.21.21.21.21.m1.1.1" xref="S4.T2.21.21.21.21.21.m1.1.1.cmml"><mn id="S4.T2.21.21.21.21.21.m1.1.1.2" mathsize="70%" xref="S4.T2.21.21.21.21.21.m1.1.1.2.cmml">22.5</mn><mo id="S4.T2.21.21.21.21.21.m1.1.1.3" mathsize="70%" xref="S4.T2.21.21.21.21.21.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.21.21.21.m1.1b"><apply id="S4.T2.21.21.21.21.21.m1.1.1.cmml" xref="S4.T2.21.21.21.21.21.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.21.21.21.21.21.m1.1.1.1.cmml" xref="S4.T2.21.21.21.21.21.m1.1.1">superscript</csymbol><cn id="S4.T2.21.21.21.21.21.m1.1.1.2.cmml" type="float" xref="S4.T2.21.21.21.21.21.m1.1.1.2">22.5</cn><compose id="S4.T2.21.21.21.21.21.m1.1.1.3.cmml" xref="S4.T2.21.21.21.21.21.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.21.21.21.m1.1c">22.5^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.21.21.21.m1.1d">22.5 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.22.22.22.22.22.m2.1"><semantics id="S4.T2.22.22.22.22.22.m2.1a"><mo id="S4.T2.22.22.22.22.22.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.22.22.22.22.22.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.22.22.22.m2.1b"><ci id="S4.T2.22.22.22.22.22.m2.1.1.cmml" xref="S4.T2.22.22.22.22.22.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.22.22.22.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.22.22.22.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.24.24" style="padding-left:1.5pt;padding-right:1.5pt;">
<math alttext="30^{\circ}" class="ltx_Math" display="inline" id="S4.T2.23.23.23.23.23.m1.1"><semantics id="S4.T2.23.23.23.23.23.m1.1a"><msup id="S4.T2.23.23.23.23.23.m1.1.1" xref="S4.T2.23.23.23.23.23.m1.1.1.cmml"><mn id="S4.T2.23.23.23.23.23.m1.1.1.2" mathsize="70%" xref="S4.T2.23.23.23.23.23.m1.1.1.2.cmml">30</mn><mo id="S4.T2.23.23.23.23.23.m1.1.1.3" mathsize="70%" xref="S4.T2.23.23.23.23.23.m1.1.1.3.cmml">∘</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.23.23.23.m1.1b"><apply id="S4.T2.23.23.23.23.23.m1.1.1.cmml" xref="S4.T2.23.23.23.23.23.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.23.23.23.23.23.m1.1.1.1.cmml" xref="S4.T2.23.23.23.23.23.m1.1.1">superscript</csymbol><cn id="S4.T2.23.23.23.23.23.m1.1.1.2.cmml" type="integer" xref="S4.T2.23.23.23.23.23.m1.1.1.2">30</cn><compose id="S4.T2.23.23.23.23.23.m1.1.1.3.cmml" xref="S4.T2.23.23.23.23.23.m1.1.1.3"></compose></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.23.23.23.m1.1c">30^{\circ}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.23.23.23.m1.1d">30 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.24.24.24.24.24.m2.1"><semantics id="S4.T2.24.24.24.24.24.m2.1a"><mo id="S4.T2.24.24.24.24.24.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T2.24.24.24.24.24.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.24.24.24.m2.1b"><ci id="S4.T2.24.24.24.24.24.m2.1.1.cmml" xref="S4.T2.24.24.24.24.24.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.24.24.24.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.24.24.24.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.26.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.24.24.24.26.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.26.2.1.1" style="font-size:80%;">DINSE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.26.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib3" title="">3</a><span class="ltx_text" id="S4.T2.24.24.24.26.2.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.26.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.2.1" style="font-size:80%;">160K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.26.2.3.1" style="font-size:80%;">18.572</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.26.2.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.4.1" style="font-size:80%;">10.845</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.26.2.5.1" style="font-size:80%;">54.732</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.6.1" style="font-size:80%;">74.146</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.26.2.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.7.1" style="font-size:80%;">80.256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.8.1" style="font-size:80%;">18.610</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.26.2.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.9.1" style="font-size:80%;">9.885</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.10.1" style="font-size:80%;">56.132</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.11.1" style="font-size:80%;">76.944</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.26.2.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.12.1" style="font-size:80%;">82.606</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.13.1" style="font-size:80%;">18.453</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.26.2.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.14.1" style="font-size:80%;">13.871</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.15.1" style="font-size:80%;">36.274</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.16.1" style="font-size:80%;">77.527</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.26.2.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.26.2.17.1" style="font-size:80%;">86.976</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.27.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T2.24.24.24.27.3.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.27.3.1.1" style="font-size:80%;">Geowizard </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.27.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib31" title="">31</a><span class="ltx_text" id="S4.T2.24.24.24.27.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.27.3.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.2.1" style="font-size:80%;">280K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.3.1" style="font-size:80%;">20.363</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.27.3.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.4.1" style="font-size:80%;">11.898</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.5.1" style="font-size:80%;">46.954</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.6.1" style="font-size:80%;">73.787</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.27.3.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.7.1" style="font-size:80%;">80.804</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.8.1" style="font-size:80%;">19.748</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.27.3.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.9.1" style="font-size:80%;">9.702</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.10.1" style="font-size:80%;">58.427</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.11.1" style="font-size:80%;">77.616</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.27.3.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.12.1" style="font-size:80%;">81.575</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.13.1" style="font-size:80%;">19.371</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.27.3.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.14.1" style="font-size:80%;">15.408</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.15.1" style="font-size:80%;">30.551</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.16.1" style="font-size:80%;">75.426</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.27.3.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.27.3.17.1" style="font-size:80%;">86.357</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.28.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T2.24.24.24.28.4.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.28.4.1.1" style="font-size:80%;">GenPercept </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.28.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib114" title="">114</a><span class="ltx_text" id="S4.T2.24.24.24.28.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.28.4.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.2.1" style="font-size:80%;">90K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.3.1" style="font-size:80%;">20.896</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.28.4.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.4.1" style="font-size:80%;">11.516</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.5.1" style="font-size:80%;">50.712</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.6.1" style="font-size:80%;">73.037</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.28.4.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.7.1" style="font-size:80%;">79.216</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.8.1" style="font-size:80%;">18.600</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.28.4.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.9.1" style="font-size:80%;">8.293</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.10.1" style="font-size:80%;">64.697</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.11.1" style="font-size:80%;">79.329</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.28.4.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.12.1" style="font-size:80%;">82.978</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.13.1" style="font-size:80%;">18.348</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.28.4.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.14.1" style="font-size:80%;">13.367</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.15.1" style="font-size:80%;">39.178</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.16.1" style="font-size:80%;">79.819</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.28.4.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.28.4.17.1" style="font-size:80%;">88.551</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.29.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T2.24.24.24.29.5.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.29.5.1.1" style="font-size:80%;">Marigold </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.29.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib47" title="">47</a><span class="ltx_text" id="S4.T2.24.24.24.29.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.29.5.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.2.1" style="font-size:80%;">90K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.3.1" style="font-size:80%;">20.864</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.29.5.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.4.1" style="font-size:80%;">11.134</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.5.1" style="font-size:80%;">50.457</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.6.1" style="font-size:80%;">73.003</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.29.5.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.7.1" style="font-size:80%;">79.332</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.8.1" style="font-size:80%;">18.463</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.29.5.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.9.1" style="font-size:80%;">8.442</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.10.1" style="font-size:80%;">64.727</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.11.1" style="font-size:80%;">79.559</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.29.5.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.12.1" style="font-size:80%;">83.199</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.13.1" style="font-size:80%;">16.671</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.29.5.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.14.1" style="font-size:80%;">12.084</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.15.1" style="font-size:80%;">45.776</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.16.1" style="font-size:80%;">82.076</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.29.5.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.29.5.17.1" style="font-size:80%;">89.879</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.30.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T2.24.24.24.30.6.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.30.6.1.1" style="font-size:80%;">StableNormal </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.30.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib123" title="">123</a><span class="ltx_text" id="S4.T2.24.24.24.30.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.30.6.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.30.6.2.1" style="font-size:80%;">250K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.30.6.3.1" style="font-size:80%;">19.707</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.30.6.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.4.1" style="font-size:80%;">10.527</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.30.6.5.1" style="font-size:80%;">53.042</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.6.1" style="font-size:80%;">75.889</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.30.6.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.7.1" style="font-size:80%;">81.723</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.8.1" style="font-size:80%;">17.248</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.30.6.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.9.1" style="font-size:80%;">8.057</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.10.1" style="font-size:80%;">66.655</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.11.1" style="font-size:80%;">81.134</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.30.6.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.12.1" style="font-size:80%;">84.632</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.13.1" style="font-size:80%;">13.701</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.30.6.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.14.1" style="font-size:80%;">9.460</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.15.1" style="font-size:80%;">63.447</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.16.1" style="font-size:80%;">86.309</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.30.6.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.30.6.17.1" style="font-size:80%;">92.107</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.31.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.24.24.24.31.7.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.31.7.1.1" style="font-size:80%;">Painter </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.31.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib109" title="">109</a><span class="ltx_text" id="S4.T2.24.24.24.31.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.31.7.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.31.7.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.31.7.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.31.7.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.31.7.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.13.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.31.7.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.14.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.15.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.16.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.31.7.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.31.7.17.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.32.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T2.24.24.24.32.8.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.32.8.1.1" style="font-size:80%;">One Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.32.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib53" title="">53</a><span class="ltx_text" id="S4.T2.24.24.24.32.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.32.8.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.32.8.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.32.8.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.32.8.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.32.8.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.13.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.32.8.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.14.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.15.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.16.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.32.8.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.32.8.17.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.33.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T2.24.24.24.33.9.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.33.9.1.1" style="font-size:80%;">Unified-IO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.33.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib68" title="">68</a><span class="ltx_text" id="S4.T2.24.24.24.33.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.33.9.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.2.1" style="font-size:80%;">210K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.3.1" style="font-size:80%;">28.547</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.33.9.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.4.1" style="font-size:80%;">14.637</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.5.1" style="font-size:80%;">39.907</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.6.1" style="font-size:80%;">63.912</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.33.9.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.7.1" style="font-size:80%;">71.240</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.33.9.8.1" style="font-size:80%;">17.955</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.33.9.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.33.9.9.1" style="font-size:80%;">10.269</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.33.9.10.1" style="font-size:80%;">54.120</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.33.9.11.1" style="font-size:80%;">77.617</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.33.9.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.33.9.12.1" style="font-size:80%;">83.728</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.13.1" style="font-size:80%;">31.576</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.33.9.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.14.1" style="font-size:80%;">16.615</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.15.1" style="font-size:80%;">27.855</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.16.1" style="font-size:80%;">64.973</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.33.9.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.33.9.17.1" style="font-size:80%;">73.445</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.34.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T2.24.24.24.34.10.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.T2.24.24.24.34.10.1.1" style="font-size:80%;">4M-XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.24.24.24.34.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib72" title="">72</a><span class="ltx_text" id="S4.T2.24.24.24.34.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.34.10.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.2.1" style="font-size:80%;">759M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.3.1" style="font-size:80%;">37.278</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.34.10.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.4.1" style="font-size:80%;">13.661</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.5.1" style="font-size:80%;">44.660</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.6.1" style="font-size:80%;">60.553</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.34.10.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.7.1" style="font-size:80%;">65.327</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.8.1" style="font-size:80%;">30.700</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.34.10.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.9.1" style="font-size:80%;">11.614</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.10.1" style="font-size:80%;">48.743</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.11.1" style="font-size:80%;">68.867</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.34.10.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.12.1" style="font-size:80%;">73.623</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.13.1" style="font-size:80%;">18.189</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.24.24.24.34.10.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.14.1" style="font-size:80%;">12.979</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.15.1" style="font-size:80%;">36.622</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.16.1" style="font-size:80%;">81.844</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.24.24.24.34.10.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.34.10.17.1" style="font-size:80%;">87.050</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.35.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T2.24.24.24.35.11.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.1.1" style="font-size:80%;color:#808080;">Ours-single</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.35.11.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.2.1" style="font-size:80%;color:#808080;">500K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.3.1" style="font-size:80%;color:#808080;">18.267</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.35.11.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.4.1" style="font-size:80%;color:#808080;">10.238</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.5.1" style="font-size:80%;color:#808080;">52.393</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.6.1" style="font-size:80%;color:#808080;">76.802</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.35.11.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.7.1" style="font-size:80%;color:#808080;">83.113</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.8.1" style="font-size:80%;color:#808080;">19.892</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.35.11.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.9.1" style="font-size:80%;color:#808080;">12.424</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.10.1" style="font-size:80%;color:#808080;">45.930</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.11.1" style="font-size:80%;color:#808080;">74.341</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.35.11.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.12.1" style="font-size:80%;color:#808080;">81.965</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.13.1" style="font-size:80%;color:#808080;">17.611</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.24.24.24.35.11.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.14.1" style="font-size:80%;color:#808080;">8.912</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.15.1" style="font-size:80%;color:#808080;">62.030</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.16.1" style="font-size:80%;color:#808080;">80.827</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.24.24.24.35.11.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.35.11.17.1" style="font-size:80%;color:#808080;">86.474</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24.36.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="S4.T2.24.24.24.36.12.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.36.12.1.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.24.24.24.36.12.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.36.12.2.1" style="font-size:80%;">500K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.3.1" style="font-size:80%;">18.302</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.24.24.24.36.12.4" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.4.1" style="font-size:80%;">10.538</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.5.1" style="font-size:80%;">52.533</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.6.1" style="font-size:80%;">75.977</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.24.24.24.36.12.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.7.1" style="font-size:80%;">82.573</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.36.12.8.1" style="font-size:80%;">19.348</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.24.24.24.36.12.9" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.36.12.9.1" style="font-size:80%;">12.129</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.10" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.36.12.10.1" style="font-size:80%;">46.410</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.11" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.36.12.11.1" style="font-size:80%;">74.805</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.24.24.24.36.12.12" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.36.12.12.1" style="font-size:80%;">82.176</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.13" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.13.1" style="font-size:80%;">17.946</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.24.24.24.36.12.14" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.14.1" style="font-size:80%;">8.686</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.15" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.15.1" style="font-size:80%;">62.641</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.16" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.16.1" style="font-size:80%;">81.152</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.36.12.17" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.36.12.17.1" style="font-size:80%;">85.398</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of surface normal estimation methods.  It contrasts the performance of specialized models (designed solely for surface normal estimation) against multi-task models (capable of handling various vision tasks, including surface normal estimation). All methods in the comparison were evaluated using the same StableNormal [123] evaluation protocol, ensuring a consistent and fair comparison. The results are presented in terms of metrics which are not specified in the caption.
> <details>
> <summary>read the caption</summary>
> Table 2:  Quantitative comparison of surface normal estimation with both specialized models and multi-task models. All methods are evaluated with the same evaluation protocol of StableNormal [123].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.3.3.4">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1">AR-small<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.2.2.2">AR-medium<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">AR-large<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.3.4.1.1">EntityV2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib81" title="">81</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.4.1.2.1">0.313</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.4.1.3.1">0.551</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.4.1.4.1">0.683</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.5.2.1"><span class="ltx_text" id="S4.T3.3.5.2.1.1" style="color:#808080;">Ours-single</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.5.2.2"><span class="ltx_text" id="S4.T3.3.5.2.2.1" style="color:#808080;">0.123</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.5.2.3"><span class="ltx_text" id="S4.T3.3.5.2.3.1" style="color:#808080;">0.424</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.4"><span class="ltx_text" id="S4.T3.3.5.2.4.1" style="color:#808080;">0.648</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.3.6.3.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.3.6.3.2">0.121</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.3.6.3.3">0.439</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.6.3.4">0.637</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the DICEPTION model's performance on entity segmentation.  Specifically, it shows the average recall (AR) achieved by DICEPTION across different object size categories (small, medium, and large) on the MS COCO validation set.  Average recall is a common metric used to assess the ability of a model to correctly identify all instances of objects within an image, taking into account the varying sizes of the objects. Higher AR values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Average recall (AR) of entity segmentation on the MS COCO validation set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.2.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.2.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.2">HRNet<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib96" title="">96</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.3">HRFormer<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib129" title="">129</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.2.1.4">ViTPose<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib115" title="">115</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.5">Painter<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib109" title="">109</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.6">Ours</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.1.1.1.1">AP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T4.1.1.1.2">76.3</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T4.1.1.1.3">77.2</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T4.1.1.1.4">78.3</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T4.1.1.1.5">72.5</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T4.1.1.1.6">57.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different models' performance on the MS COCO dataset for the task of human keypoint estimation.  The results show the Average Recall (AR) of each model across different keypoint sizes (small, medium, large). This metric assesses how accurately the models detect human keypoints in images.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation of human keypoints estimation on MS COCO.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.1.2.1.1">Method</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.2">SparK <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib98" title="">98</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.3">OneFormer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib44" title="">44</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.4">Mask2Former <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib18" title="">18</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1.5">Ours</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S4.T5.1.1.1.1">AP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.1.1.1.2">45.1</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.1.1.1.3">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1">50.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.1.1.1.5">33.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of semantic segmentation performance on the MS COCO dataset.  It shows the average precision (AP) achieved by different methods, including the proposed DICEPTION model and several other state-of-the-art models.  The 'with category ID' specification indicates that the evaluation considers the specific categories of objects present in the segmentation masks, offering a more precise measure of performance than simply evaluating overall pixel-level accuracy.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation of semantic segmentation on the MS COCO (with category ID).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T1.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="A1.T1.1.1.1.1.1">Training</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.2.1.1">Task</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T1.1.1.2.1.2">Data Samples</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.1.1.2.1.3">Dataset</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.3.2.1">Depth</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T1.1.1.3.2.2">500K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.1.1.3.2.3">OpenImages <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib51" title="">51</a>]</cite> + Depth Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib7" title="">7</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T1.1.1.4.3.1">Normal</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T1.1.1.4.3.2">500K</td>
<td class="ltx_td ltx_align_center" id="A1.T1.1.1.4.3.3">OpenImages <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib51" title="">51</a>]</cite> + StableNormal <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib123" title="">123</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T1.1.1.5.4.1">Point Segmentation</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T1.1.1.5.4.2">400K</td>
<td class="ltx_td ltx_align_center" id="A1.T1.1.1.5.4.3">SA-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib49" title="">49</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T1.1.1.6.5.1">Point Segmentation</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T1.1.1.6.5.2">200K</td>
<td class="ltx_td ltx_align_center" id="A1.T1.1.1.6.5.3">P3M-10K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib55" title="">55</a>]</cite>, AIM500 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib57" title="">57</a>]</cite> and AM2K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib56" title="">56</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T1.1.1.7.6.1">Human Pose</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T1.1.1.7.6.2">42K</td>
<td class="ltx_td ltx_align_center" id="A1.T1.1.1.7.6.3">MS COCO 2017 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib62" title="">62</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T1.1.1.8.7.1">Semantic Segmentation</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T1.1.1.8.7.2">120K</td>
<td class="ltx_td ltx_align_center" id="A1.T1.1.1.8.7.3">COCO-Rem <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib94" title="">94</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T1.1.1.9.8.1">Entity Segmentation</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T1.1.1.9.8.2">32K</td>
<td class="ltx_td ltx_align_center" id="A1.T1.1.1.9.8.3">EntityV2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib81" title="">81</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="A1.T1.1.1.10.9.1">Validation</th>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.11.10.1">Task</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T1.1.1.11.10.2">Dataset</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.12.11.1">Depth</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T1.1.1.12.11.2">NYUv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib74" title="">74</a>]</cite>, KITTI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib32" title="">32</a>]</cite>, ScanNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib23" title="">23</a>]</cite>, DIODE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib102" title="">102</a>]</cite>, ETH3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib92" title="">92</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.13.12.1">Normal</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T1.1.1.13.12.2">NYUv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib74" title="">74</a>]</cite>, ScanNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib23" title="">23</a>]</cite>, DIODE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib102" title="">102</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.14.13.1" rowspan="6"><span class="ltx_text" id="A1.T1.1.1.14.13.1.1">Point Segmentation</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T1.1.1.14.13.2">PPDLS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib71" title="">71</a>]</cite>, DOORS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib79" title="">79</a>]</cite>, TimberSeg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib30" title="">30</a>]</cite>, NDD20 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib101" title="">101</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.15.14">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T1.1.1.15.14.1">STREETS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib95" title="">95</a>]</cite>, iShape <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib120" title="">120</a>]</cite>, ADE20K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib134" title="">134</a>]</cite>, OVIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib80" title="">80</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.16.15">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T1.1.1.16.15.1">Plittersdorf <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib37" title="">37</a>]</cite>, EgoHOS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib131" title="">131</a>]</cite>, IBD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib15" title="">15</a>]</cite>, WoodScape <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib127" title="">127</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.17.16">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T1.1.1.17.16.1">TrashCan <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib41" title="">41</a>]</cite>, GTEA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib29" title="">29</a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib60" title="">60</a>]</cite>, NDISPark <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib20" title="">20</a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib19" title="">19</a>]</cite>, VISOR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib24" title="">24</a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib25" title="">25</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.18.17">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T1.1.1.18.17.1">LVIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib36" title="">36</a>]</cite>, Hypersim <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib90" title="">90</a>]</cite>, Cityscapes <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib22" title="">22</a>]</cite>, DRAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib21" title="">21</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.19.18">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T1.1.1.19.18.1">BBBC038v1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib10" title="">10</a>]</cite>, ZeroWaste <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib5" title="">5</a>]</cite>, PIDRay <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib103" title="">103</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.20.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.20.19.1">Entity Segmentation</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T1.1.1.20.19.2">MS COCO 2017 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib62" title="">62</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.21.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.1.1.21.20.1">Semantic Segmentation</th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T1.1.1.21.20.2">MS COCO 2017 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib62" title="">62</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.1.1.22.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="A1.T1.1.1.22.21.1">Human Keypoints</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" colspan="2" id="A1.T1.1.1.22.21.2">MS COCO 2017 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.17157v1#bib.bib62" title="">62</a>]</cite>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S1 provides a detailed breakdown of the datasets used in the DICEPTION research. It lists various datasets employed for different tasks, including the number of samples used for each task and the specific tasks they were used for.  The datasets are categorized into training and validation sets, clearly indicating their roles in model training and evaluation. This table allows readers to comprehensively understand the data used for training and evaluating the performance of DICEPTION on different vision perception tasks.
> <details>
> <summary>read the caption</summary>
> Table S1: Dataset detail.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A2.T2.1.1.1.2">Category</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T2.1.1.1.1">AP <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T2.1.1.1.1.m1.1"><semantics id="A2.T2.1.1.1.1.m1.1a"><mo id="A2.T2.1.1.1.1.m1.1.1" stretchy="false" xref="A2.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T2.1.1.1.1.m1.1b"><ci id="A2.T2.1.1.1.1.m1.1.1.cmml" xref="A2.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T2.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T2.1.1.2.1.1">Bear</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.1.1.2.1.2">76.3</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.1.1.3.2.1">Dog</td>
<td class="ltx_td ltx_align_center" id="A2.T2.1.1.3.2.2">68.9</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.1.1.4.3.1">Cat</td>
<td class="ltx_td ltx_align_center" id="A2.T2.1.1.4.3.2">71.7</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.1.1.5.4.1">Person</td>
<td class="ltx_td ltx_align_center" id="A2.T2.1.1.5.4.2">18.6</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.1.1.6.5.1">Bird</td>
<td class="ltx_td ltx_align_center" id="A2.T2.1.1.6.5.2">10.4</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A2.T2.1.1.7.6.1">Book</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T2.1.1.7.6.2">10.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 During post-processing of RGB masks generated for semantic and entity segmentation tasks, certain factors significantly impact performance.  Small segmented regions might be filtered out as noise, leading to missed objects.  Conversely, an excessive number of objects in a single image can cause similar-colored objects to be incorrectly grouped, reducing accuracy. This table shows how the average precision (AP) metric is affected by these issues for various object categories, highlighting that performance suffers when these issues occur.
> <details>
> <summary>read the caption</summary>
> Table S2: When post-processing RGB masks, small regions and excessive numbers of objects significantly lead to performance degradation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.17157/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17157/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}