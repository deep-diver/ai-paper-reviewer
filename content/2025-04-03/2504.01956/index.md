---
title: "VideoScene: Distilling Video Diffusion Model to Generate 3D Scenes in One Step"
summary: "VideoScene: One-step 3D scene generation from sparse views by distilling video diffusion models for faster, structurally consistent results."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Tsinghua University",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.01956 {{< /keyword >}}
{{< keyword icon="writer" >}} Hanyang Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.01956" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.01956" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.01956/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recovering 3D scenes from sparse views is challenging due to its ill-posed nature. Conventional methods use geometry regularization or feed-forward models but suffer with minimal overlap and insufficient visual information. Recent video generative models show promise, capable of generating plausible 3D structures. Pioneering research explores video generative prior and creates 3D scenes. However, they are limited by slow inference time and lack of 3D constraints, leading to inefficiencies and reconstruction artifacts.



This paper introduces **VideoScene**, a novel video distillation model to generate 3D scenes in one step. It uses a 3D-aware leap flow distillation strategy to leap over time-consuming steps and train a dynamic denoising policy network for optimal timestep. Extensive experiments show that VideoScene achieves faster and superior 3D scene generation results than previous video diffusion models, enhancing its potential as an efficient tool for future applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VideoScene enables one-step 3D scene generation with strong structural consistency from just two input images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A 3D-aware leap flow distillation strategy leaps over time-consuming redundant information and focuses on crucial details. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A dynamic denoising policy network adapts to the optimal leap timestep during inference, maximizing 3D prior usage. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it presents an **efficient video distillation framework, VideoScene,** for generating 3D scenes from sparse views. This method **addresses the limitations of existing approaches** and opens new avenues for real-time 3D reconstruction, game design, and virtual reality.

------
#### Visual Insights



![](https://arxiv.org/html/2504.01956/x2.png)

> 🔼 This figure demonstrates VideoScene's ability to generate a short video of a 3D scene from only two input images.  The top row displays the two input images, which are sparse views of the scene. The subsequent rows show generated video frames from novel viewpoints, showcasing the model's capacity to create consistent 3D structure from limited information. The strong structural consistency between frames highlights the quality of the generated 3D scene.
> <details>
> <summary>read the caption</summary>
> Figure 1: VideoScene enables one-step video generation of 3D scenes with strong structural consistency from just two input images. The top row shows the input sparse views and the following two rows show the output novel-view video frames.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.4.4.4.5"><span class="ltx_text" id="S4.T1.4.4.4.5.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.4.4.4.6"><span class="ltx_text" id="S4.T1.4.4.4.6.1" style="font-size:70%;">#Steps</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1.1" style="font-size:70%;">FVD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.2.1" style="font-size:70%;">Aesthetic Quality </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.3.1" style="font-size:70%;">Subject Consistency </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.4.1" style="font-size:70%;">Background Consistency </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.5.1.1" rowspan="3"><span class="ltx_text" id="S4.T1.4.4.5.1.1.1" style="font-size:70%;">Stable Video Diffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.5.1.2"><span class="ltx_text" id="S4.T1.4.4.5.1.2.1" style="font-size:70%;">50</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.3"><span class="ltx_text" id="S4.T1.4.4.5.1.3.1" style="font-size:70%;">424.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.4"><span class="ltx_text" id="S4.T1.4.4.5.1.4.1" style="font-size:70%;">0.4906</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.5"><span class="ltx_text" id="S4.T1.4.4.5.1.5.1" style="font-size:70%;">0.9305</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5.1.6"><span class="ltx_text" id="S4.T1.4.4.5.1.6.1" style="font-size:70%;">0.9287</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.6.2.1"><span class="ltx_text" id="S4.T1.4.4.6.2.1.1" style="font-size:70%;">4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.2"><span class="ltx_text" id="S4.T1.4.4.6.2.2.1" style="font-size:70%;">541.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.3"><span class="ltx_text" id="S4.T1.4.4.6.2.3.1" style="font-size:70%;">0.4040</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.4"><span class="ltx_text" id="S4.T1.4.4.6.2.4.1" style="font-size:70%;">0.8728</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6.2.5"><span class="ltx_text" id="S4.T1.4.4.6.2.5.1" style="font-size:70%;">0.8952</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.7.3.1"><span class="ltx_text" id="S4.T1.4.4.7.3.1.1" style="font-size:70%;">1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.2"><span class="ltx_text" id="S4.T1.4.4.7.3.2.1" style="font-size:70%;">1220.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.3"><span class="ltx_text" id="S4.T1.4.4.7.3.3.1" style="font-size:70%;">0.2981</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.4"><span class="ltx_text" id="S4.T1.4.4.7.3.4.1" style="font-size:70%;">0.7934</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.3.5"><span class="ltx_text" id="S4.T1.4.4.7.3.5.1" style="font-size:70%;">0.8817</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.8.4.1" rowspan="3"><span class="ltx_text" id="S4.T1.4.4.8.4.1.1" style="font-size:70%;">DynamiCrafter <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.8.4.2"><span class="ltx_text" id="S4.T1.4.4.8.4.2.1" style="font-size:70%;">50</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.8.4.3"><span class="ltx_text" id="S4.T1.4.4.8.4.3.1" style="font-size:70%;">458.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.8.4.4"><span class="ltx_text" id="S4.T1.4.4.8.4.4.1" style="font-size:70%;">0.5336</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.8.4.5"><span class="ltx_text" id="S4.T1.4.4.8.4.5.1" style="font-size:70%;">0.8898</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.8.4.6"><span class="ltx_text" id="S4.T1.4.4.8.4.6.1" style="font-size:70%;">0.9349</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.9.5.1"><span class="ltx_text" id="S4.T1.4.4.9.5.1.1" style="font-size:70%;">4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.2"><span class="ltx_text" id="S4.T1.4.4.9.5.2.1" style="font-size:70%;">512.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.3"><span class="ltx_text" id="S4.T1.4.4.9.5.3.1" style="font-size:70%;">0.4899</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.4"><span class="ltx_text" id="S4.T1.4.4.9.5.4.1" style="font-size:70%;">0.8661</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.5.5"><span class="ltx_text" id="S4.T1.4.4.9.5.5.1" style="font-size:70%;">0.9098</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.10.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.10.6.1"><span class="ltx_text" id="S4.T1.4.4.10.6.1.1" style="font-size:70%;">1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.2"><span class="ltx_text" id="S4.T1.4.4.10.6.2.1" style="font-size:70%;">846.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.3"><span class="ltx_text" id="S4.T1.4.4.10.6.3.1" style="font-size:70%;">0.3737</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.4"><span class="ltx_text" id="S4.T1.4.4.10.6.4.1" style="font-size:70%;">0.7474</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.10.6.5"><span class="ltx_text" id="S4.T1.4.4.10.6.5.1" style="font-size:70%;">0.8627</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.11.7.1" rowspan="3"><span class="ltx_text" id="S4.T1.4.4.11.7.1.1" style="font-size:70%;">CogVideoX-5B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.11.7.2"><span class="ltx_text" id="S4.T1.4.4.11.7.2.1" style="font-size:70%;">50</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.11.7.3"><span class="ltx_text" id="S4.T1.4.4.11.7.3.1" style="font-size:70%;">521.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.11.7.4"><span class="ltx_text" id="S4.T1.4.4.11.7.4.1" style="font-size:70%;">0.5368</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.11.7.5"><span class="ltx_text" id="S4.T1.4.4.11.7.5.1" style="font-size:70%;">0.9179</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.11.7.6"><span class="ltx_text" id="S4.T1.4.4.11.7.6.1" style="font-size:70%;">0.9460</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.12.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.12.8.1"><span class="ltx_text" id="S4.T1.4.4.12.8.1.1" style="font-size:70%;">4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.8.2"><span class="ltx_text" id="S4.T1.4.4.12.8.2.1" style="font-size:70%;">662.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.8.3"><span class="ltx_text" id="S4.T1.4.4.12.8.3.1" style="font-size:70%;">0.4486</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.8.4"><span class="ltx_text" id="S4.T1.4.4.12.8.4.1" style="font-size:70%;">0.8489</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.8.5"><span class="ltx_text" id="S4.T1.4.4.12.8.5.1" style="font-size:70%;">0.9168</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.13.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.13.9.1"><span class="ltx_text" id="S4.T1.4.4.13.9.1.1" style="font-size:70%;">1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.2"><span class="ltx_text" id="S4.T1.4.4.13.9.2.1" style="font-size:70%;">753.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.3"><span class="ltx_text" id="S4.T1.4.4.13.9.3.1" style="font-size:70%;">0.3987</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.4"><span class="ltx_text" id="S4.T1.4.4.13.9.4.1" style="font-size:70%;">0.7842</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.13.9.5"><span class="ltx_text" id="S4.T1.4.4.13.9.5.1" style="font-size:70%;">0.8976</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.4.4.14.10.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.14.10.1.1" style="font-size:70%;">VideoScene (Ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.14.10.2"><span class="ltx_text" id="S4.T1.4.4.14.10.2.1" style="font-size:70%;">50</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.14.10.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.14.10.3.1" style="font-size:70%;">98.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.14.10.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.14.10.4.1" style="font-size:70%;">0.5570</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.14.10.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.14.10.5.1" style="font-size:70%;">0.9320</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.14.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.14.10.6.1" style="font-size:70%;">0.9407</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.15.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.4.15.11.1"><span class="ltx_text" id="S4.T1.4.4.15.11.1.1" style="font-size:70%;">4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.15.11.2"><span class="ltx_text" id="S4.T1.4.4.15.11.2.1" style="font-size:70%;">175.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.15.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.15.11.3.1" style="font-size:70%;">0.5357</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.15.11.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.15.11.4.1" style="font-size:70%;">0.9269</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.15.11.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.15.11.5.1" style="font-size:70%;">0.9431</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.16.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.4.16.12.1"><span class="ltx_text" id="S4.T1.4.4.16.12.1.1" style="font-size:70%;">1</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.16.12.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.16.12.2.1" style="font-size:70%;">103.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.16.12.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.16.12.3.1" style="font-size:70%;">0.5416</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.16.12.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.4.4.16.12.4.1" style="font-size:70%;">0.9259</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.16.12.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.16.12.5.1" style="font-size:70%;">0.9461</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of VideoScene against three baseline video generation models (Stable Video Diffusion, DynamiCrafter, and CogVideoX) across different numbers of denoising steps (1, 4, and 50).  The comparison uses several metrics to evaluate the quality and consistency of the generated videos, including Fréchet Video Distance (FVD), Aesthetic Quality, Subject Consistency, and Background Consistency.  The results highlight VideoScene's superior performance, especially its ability to achieve comparable results to the 50-step baselines using only a single denoising step, while the baselines show a substantial drop in performance with fewer steps.  This demonstrates the efficiency and effectiveness of VideoScene's approach.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative Comparison. We compare 1-, 4-, and 50-step versions of models. Not only does VideoScene outperform other methods, but its 1-step results also remain closely comparable to the 50-step results, while other methods show a significant decrease.
> </details>





### In-depth insights


#### Video to 3D Leap
The concept of a "Video to 3D Leap" signifies a significant advancement in scene reconstruction, moving beyond traditional frame-by-frame video processing to generating coherent 3D representations directly. This leap entails overcoming challenges such as **inferring depth and spatial relationships from 2D video, maintaining consistency across frames, and handling occlusions or dynamic elements**. The paper tackles this by distilling video diffusion models, leveraging their ability to generate plausible 3D structures. The use of techniques like 3D-aware leap flow distillation addresses the inefficiency of standard diffusion models by **incorporating 3D priors** and skipping less informative denoising steps, leading to faster and more accurate 3D scene generation. This method enables bridging the gap between video and 3D, leading to improvements in tasks such as novel view synthesis, virtual reality, and robotics by generating high-quality 3D models of environments.

#### 3D-Aware Policy
A 3D-aware policy would likely focus on incorporating an understanding of the 3D world into decision-making. This could involve using **3D scene representations** to inform actions, ensuring that the actions taken are consistent with the underlying 3D geometry. The policy might use depth information or learned 3D features to make more informed choices. A potential 3D aware policy could use **geometric reasoning** to avoid collisions, navigate complex environments, or interact with objects in a more physically plausible way. This approach could significantly improve the robustness and generalizability of the system, as it is grounded in the fundamental structure of the 3D world, allowing for more accurate predictions and more effective action planning.

#### Distill & Render
The "Distill & Render" approach **aims to create 3D scenes efficiently**. The distillation process likely **focuses on extracting the core 3D information** from a video diffusion model, reducing computational demands. Rendering then transforms this distilled data into visually coherent frames. Crucially, this technique likely optimizes the balance between speed and visual fidelity. High-fidelity 3D reconstruction often requires computationally intensive processes, while real-time applications prioritize speed. **Distillation is important to accelerate video generation from 3D scenes**. This allows us to bridge the performance gap. **The "Distill & Render" heading demonstrates the synergy** of learning core 3D structures, and presenting high-quality imagery for the user. 

#### Geometric Align
**Geometric alignment** is crucial for ensuring **3D consistency** in generated scenes, addressing the challenge of maintaining spatial relationships between objects across different viewpoints. This involves not only **camera pose estimation** and **accurate depth perception** but also mitigating distortions and artifacts that can arise from limited view information. Addressing **geometric alignment** is critical to the VideoScene approach by focusing the distillation process and policy network to ensure the generated video sequences and 3D structures that they produce are as geometrically coherent as possible. This **focus on geometric consistency** helps to produce **real-world accurate geometry** which is one of the important part of the VideoScene.

#### Fast Video to 3D
The concept of 'Fast Video to 3D' is intriguing, pointing towards efficient methods for generating 3D representations from video data. Current 3D reconstruction often suffers from computational bottlenecks. Speeding up the video to 3D process could revolutionize applications like real-time 3D modeling, rapid prototyping, and interactive experiences. Achieving **fast conversion** requires optimized algorithms, potentially leveraging **neural networks for rapid inference** or **parallel processing architectures**. Challenges include maintaining **high fidelity and geometric accuracy** while minimizing processing time. Success relies on balancing speed with quality, producing 3D models suitable for practical applications despite accelerated generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.01956/x3.png)

> 🔼 The figure illustrates the pipeline of VideoScene, a novel framework for one-step 3D scene generation from two input images. First, a feed-forward 3DGS model (MVSplat) generates a coarse 3D representation, enabling accurate camera trajectory control rendering.  The encoded renderings and input image pairs are then combined and fed into a consistency model. Next, a forward diffusion operation adds noise to the video. This noisy video is used to train both student and teacher models to predict videos at different timesteps. Finally, the student model and a dynamic denoising policy network (DDPNet) are updated independently using distillation loss and DDP loss to optimize video generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline of VideoScene. Given input pair views, we first generate a coarse 3D representation with a rapid feed-forward 3DGS model (i.e., MVSplat [17]), which enables accurate camera-trajectory-control rendering. The encoded rendering latent (“input”) and encoded input pairs latent (“condition”) are combined as input to the consistency model. Subsequently, a forward diffusion operation is performed to add noise to the video. Then, the noised 𝐱n+1rsuperscriptsubscript𝐱𝑛1𝑟\mathbf{x}_{n+1}^{r}bold_x start_POSTSUBSCRIPT italic_n + 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_r end_POSTSUPERSCRIPT is sent to both the student and teacher model to predict videos 𝐱0p⁢r⁢e⁢dsuperscriptsubscript𝐱0𝑝𝑟𝑒𝑑\mathbf{x}_{0}^{pred}bold_x start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_p italic_r italic_e italic_d end_POSTSUPERSCRIPT of timestep tn+1subscript𝑡𝑛1t_{n+1}italic_t start_POSTSUBSCRIPT italic_n + 1 end_POSTSUBSCRIPT and 𝐱^0ϕsuperscriptsubscript^𝐱0italic-ϕ\hat{\mathbf{x}}_{0}^{\phi}over^ start_ARG bold_x end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_ϕ end_POSTSUPERSCRIPT of timestep tnsubscript𝑡𝑛t_{n}italic_t start_POSTSUBSCRIPT italic_n end_POSTSUBSCRIPT. Finally, the student model and DDPNet are updated independently through distillation loss and DDP loss.
> </details>



![](https://arxiv.org/html/2504.01956/x4.png)

> 🔼 This figure compares the 3D scene generation results of VideoScene against three baseline methods: Stable Video Diffusion, DynamiCrafter, and CogVideoX.  Each method's output is shown for 1, 4, and 50 denoising steps. The comparison highlights VideoScene's superior quality, particularly in its ability to achieve high quality with only one step.  The baseline methods all exhibit artifacts such as blurriness, skipped frames, excessive motion, and inconsistent object positions, particularly pronounced in the one-step results.  VideoScene generates significantly clearer and more structurally consistent videos even in its single-step output, demonstrating improved 3D coherence and efficiency compared to the baselines.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison. We can observe that baseline models suffer from issues such as blurriness, frame skipping, excessive motion, and shifts in the relative positioning of objects, while our VideoScene achieves higher output quality and improved 3D coherence.
> </details>



![](https://arxiv.org/html/2504.01956/x5.png)

> 🔼 This figure demonstrates the cross-dataset generalization capabilities of VideoScene and several baseline models.  Models were initially trained on the RealEstate10K dataset, then tested on the unseen ACID dataset to evaluate their ability to generalize to new, unseen data. The results show that while fine-tuning baseline models (DynamiCrafter and CogVideoX) on 3D data improves their 3D consistency, they still struggle to produce high-quality results with only one inference step. In contrast, VideoScene maintains high quality even with one inference step, demonstrating its strong generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results in cross-dataset generalization. Models trained on the source dataset RealEstate10K are tested on ACID dataset. Fine-tuned models improve in 3D consistency but still fail with one-step.
> </details>



![](https://arxiv.org/html/2504.01956/x6.png)

> 🔼 This figure compares the results of structure matching between pairs of images in generated videos. The green dots represent successful matches, signifying that corresponding points in the two frames have been correctly identified. Conversely, the red dots indicate failed matches, where the corresponding points could not be reliably identified.  A higher number of green dots, and thus a lower number of red dots, suggests a higher level of geometric consistency between the frames. This implies that the generated videos maintain accurate camera trajectories and consistent 3D structures. This is an important evaluation metric because it measures the reliability of depth estimation and camera pose inference that are crucial for accurate 3D scene reconstruction. 
> <details>
> <summary>read the caption</summary>
> Figure 5: Matching results comparison. Green represents high-quality matching results, while red represents discarded matching results. More green high-quality matches indicate a higher level of geometric consistency between the two views.
> </details>



![](https://arxiv.org/html/2504.01956/x7.png)

> 🔼 This figure shows an ablation study on the VideoScene model, illustrating the impact of two key components: 3D-aware leap flow distillation and the dynamic denoising policy network (DDPNet).  By systematically removing each component, the figure visually demonstrates their individual contributions to the final video output quality.  The results showcase how both components are crucial for generating high-quality 3D-consistent videos, with the omission of either resulting in noticeable artifacts or lower quality in the final output.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visual results of ablation study. We ablate the design choices of 3D-aware leap flow distillation and dynamic denoising policy network (DDPNet).
> </details>



![](https://arxiv.org/html/2504.01956/x8.png)

> 🔼 This figure showcases the model's ability to generate novel views of a scene, starting from only two input images.  The red boxes highlight the areas of the generated views that were not directly visible in the original input. This demonstrates the model's capability to infer and fill in missing information, creating plausible and realistic-looking scenes. This process highlights the effectiveness of the 3D-aware leap flow distillation approach in ensuring high-quality and visually consistent 3D scene generation from limited information.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visual results of the generative ability. We highlight the generated regions in the red boxes in the novel generated views.
> </details>



![](https://arxiv.org/html/2504.01956/x9.png)

> 🔼 This figure displays a quantitative comparison of the performance of four different video generation models (CogVideo, DynamiCrafter, Stable Video Diffusion, and VideoScene) across varying numbers of steps (1, 10, 20, 30, 40, and 50).  The results show that VideoScene significantly outperforms the other models in terms of overall quality and notably maintains consistent performance even with only a single step, while the other models show a substantial drop in performance as the number of steps decreases.
> <details>
> <summary>read the caption</summary>
> Figure 8: Quantitative comparison across steps. We evaluate the results of CogVideo, DynamiCrafter, Stable Video Diffusion (SVD), and VideoScene across 1, 10, 20, 30, 40, and 50 steps. VideoScene not only outperforms the other methods but also demonstrates remarkable consistency, with its 1-step results closely approximating its 50-step results, whereas other methods exhibit a significant decline in performance over fewer steps.
> </details>



![](https://arxiv.org/html/2504.01956/x10.png)

> 🔼 This figure displays a comparison of video frames generated by VideoScene against base renderings.  The base renderings suffer from severe artifacts, highlighting the improvements in visual quality achieved by VideoScene.  The comparison emphasizes the effectiveness of VideoScene in mitigating common issues in video generation, such as blurriness, inconsistent geometry, and missing details.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparisons with base renderings with severe artifacts.
> </details>



![](https://arxiv.org/html/2504.01956/x11.png)

> 🔼 This figure compares the performance of VideoScene against ViewCrafter, another 3D-aware diffusion model. It visually demonstrates the efficiency of VideoScene by showing that VideoScene achieves comparable results to ViewCrafter in just 3 seconds, while ViewCrafter takes 7 minutes.  This comparison highlights the significant speed advantage of VideoScene without sacrificing quality.
> <details>
> <summary>read the caption</summary>
> Figure 10: Comparisons with 3D-aware diffusion model ViewCrafter.
> </details>



![](https://arxiv.org/html/2504.01956/x12.png)

> 🔼 This figure compares the performance of VideoScene against other NeRF-based methods (PixelNeRF, MVSNeRF, and SparseNeRF) for novel view synthesis. It showcases the significant improvement in frame rate achieved by VideoScene compared to these methods, highlighting its efficiency and speed advantages in generating novel views.
> <details>
> <summary>read the caption</summary>
> Figure 11: Comparisons with NeRF-based methods.
> </details>



![](https://arxiv.org/html/2504.01956/x13.png)

> 🔼 Figure 12 presents a comprehensive quantitative comparison of VideoScene against several baseline models, using metrics from the VBench benchmark.  It visually displays the performance of 1-step and 50-step versions across various metrics, including Fréchet Video Distance (FVD), Aesthetic Quality, Subject Consistency, Background Consistency, Motion Smoothness, Dynamic Degree, and Imaging Quality.  The figure helps illustrate VideoScene's efficiency by showing that its one-step performance is comparable to the 50-step results of other methods, which degrade significantly with fewer steps.
> <details>
> <summary>read the caption</summary>
> Figure 12: Quantitative comparison across additional dimensions. We further evaluate the 1-step and 50-step results by incorporating additional dimensions from the VBench metrics.
> </details>



![](https://arxiv.org/html/2504.01956/x14.png)

> 🔼 This figure compares the 3D reconstruction quality of VideoScene against several baseline methods (3DGS, SparseNeRF, DNGaussian, and InstantSplat) using the Mip-NeRF 360 and Tanks and Temples datasets.  The input to all methods consists of only two sparse views of a scene.  The results demonstrate that VideoScene produces significantly more accurate and detailed 3D reconstructions, highlighting its ability to generate high-quality 3D models from limited input data.
> <details>
> <summary>read the caption</summary>
> Figure 13: Qualitative comparison on Mip-Nerf 360 and Tank-and-Temples. With two sparse views as input, our method achieves much better reconstruction quality compared with baselines.
> </details>



![](https://arxiv.org/html/2504.01956/x15.png)

> 🔼 In this failure case, the generated video incorrectly passes directly through a closed door instead of navigating around it. This demonstrates a limitation of the model in handling complex 3D scene understanding, specifically scenarios requiring accurate spatial reasoning and object interaction.
> <details>
> <summary>read the caption</summary>
> Figure 14: Fail case of passing directly through the closed door.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.4.4.4.6">3D Training data</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.4.4.4.7">#Steps</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2">Aesthetic Quality <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3">Subject Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4">Background Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.5.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.5.1.1.1">DynamiCrafter <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.5.1.2" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.5.1.2.1">/</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.5.1.3">50</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.4">242.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.5">0.5191</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.6">0.9464</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.5.1.7">0.9527</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.4.4.6.2.1">1</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.2">453.24</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.3">0.4126</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.4">0.8136</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.6.2.5">0.8841</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.7.3.1" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.7.3.1.1">CogVideoX-5B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.7.3.2" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.7.3.2.1">/</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.7.3.3">50</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.3.4">867.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.3.5">0.5212</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.3.6">0.9628</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.7.3.7"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.7.3.7.1">0.9720</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.4.4.8.4.1">1</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.2">537.48</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.3">0.4614</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.4">0.8452</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.8.4.5">0.9349</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.9.5.1" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.9.5.1.1">DynamiCrafter <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.9.5.2" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.9.5.2.1">RealEstate10K <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.9.5.3">50</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.9.5.4">96.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.9.5.5">0.5096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.9.5.6">0.9524</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.9.5.7">0.9545</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.10.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.4.4.10.6.1">1</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.2">595.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.3">0.4013</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.4">0.8202</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.10.6.5">0.8917</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.11.7.1" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.11.7.1.1">CogVideoX-5B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.11.7.2" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.11.7.2.1">RealEstate10K <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.11.7.3">50</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.7.4">114.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.7.5">0.5491</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.7.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.11.7.6.1">0.9637</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.11.7.7">0.9593</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.12.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.4.4.12.8.1">1</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.8.2">464.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.8.3">0.4492</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.8.4">0.8406</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.12.8.5">0.9214</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.4.4.13.9.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.13.9.1.1">VideoScene (Ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.4.4.13.9.2" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.13.9.2.1">RealEstate10K <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.13.9.3">50</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.13.9.4"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.13.9.4.1">73.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.13.9.5"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.13.9.5.1">0.5602</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.13.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.4.13.9.6.1">0.9598</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.13.9.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.4.13.9.7.1">0.9573</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.14.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.4.4.14.10.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.14.10.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.4.14.10.2.1">121.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.14.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.4.14.10.3.1">0.5274</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.14.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.4.14.10.4.1">0.9395</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.4.14.10.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.4.14.10.5.1">0.9494</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different video generation models' performance on cross-dataset generalization.  Models were initially trained on the RealEstate10K dataset, then tested on unseen scenes from the ACID dataset without any further fine-tuning. The evaluation metrics include Fréchet Video Distance (FVD), which measures video quality, and the Aesthetic Quality, Subject Consistency, and Background Consistency scores, which assess different aspects of the visual fidelity and temporal coherence of generated videos. The results demonstrate how well each model generalizes to new datasets and how the quality of generated videos changes depending on whether the model has been specifically fine-tuned on the target dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results in cross-dataset generalization. Models trained on the source dataset RealEstate10K [105] are tested on unseen scenes from target datasets ACID [46], without any fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.4.4.4.5">Setup</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2">Aesthetic Quality <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3">Subject Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4">Background Consistency <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.4.5.1.1">Base rendered video</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.2">171.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.3">0.4769</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.4">0.8794</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.5">0.9240</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.4.6.2.1">w/o 3D-aware leap flow</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2.2">543.53</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2.3">0.4092</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2.4">0.7842</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2.5">0.9160</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.4.7.3.1">w/o DDPNet</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.7.3.2">106.28</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.7.3.3">0.4897</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.7.3.4">0.8850</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.7.3.5">0.9205</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.4.4.8.4.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.4.1.1">VideoScene (full model)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.4.2.1">97.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.8.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.4.3.1">0.5306</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.8.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.4.4.1">0.9139</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.8.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.4.5.1">0.9440</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the RealEstate10K dataset to evaluate the impact of different components of the proposed VideoScene model on its performance.  It compares the full VideoScene model's performance against several ablated versions: one without the 3D-aware leap flow distillation strategy, one without the dynamic denoising policy network (DDPNet), and a baseline using only the initial rendered video without subsequent diffusion processing. The metrics reported include Fréchet Video Distance (FVD), which measures the difference between generated and real videos, along with Aesthetic Quality, Subject Consistency, and Background Consistency, assessing the visual quality and temporal coherence of generated videos.  This helps to determine the relative contributions of each module to the overall effectiveness of the VideoScene model.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative results of ablation study. We report the quantitative metrics ablations in RealEstate10K.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S8.T4.3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T4.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S8.T4.3.3.3.3.4"><span class="ltx_text" id="S8.T4.3.3.3.3.4.1" style="font-size:144%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T4.1.1.1.1.1">
<span class="ltx_text" id="S8.T4.1.1.1.1.1.1" style="font-size:144%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S8.T4.1.1.1.1.1.m1.1"><semantics id="S8.T4.1.1.1.1.1.m1.1a"><mo id="S8.T4.1.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S8.T4.1.1.1.1.1.m1.1b"><ci id="S8.T4.1.1.1.1.1.m1.1.1.cmml" xref="S8.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S8.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T4.2.2.2.2.2">
<span class="ltx_text" id="S8.T4.2.2.2.2.2.1" style="font-size:144%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S8.T4.2.2.2.2.2.m1.1"><semantics id="S8.T4.2.2.2.2.2.m1.1a"><mo id="S8.T4.2.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T4.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S8.T4.2.2.2.2.2.m1.1b"><ci id="S8.T4.2.2.2.2.2.m1.1.1.cmml" xref="S8.T4.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T4.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S8.T4.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T4.3.3.3.3.3">
<span class="ltx_text" id="S8.T4.3.3.3.3.3.1" style="font-size:144%;">LPIPS</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S8.T4.3.3.3.3.3.m1.1"><semantics id="S8.T4.3.3.3.3.3.m1.1a"><mo id="S8.T4.3.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T4.3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S8.T4.3.3.3.3.3.m1.1b"><ci id="S8.T4.3.3.3.3.3.m1.1.1.cmml" xref="S8.T4.3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T4.3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T4.3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T4.3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T4.3.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.4.1.1.1" style="font-size:144%;">Mip-NeRF 360</span></th>
<td class="ltx_td ltx_border_t" id="S8.T4.3.3.3.4.1.2"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.3.3.3.4.1.3"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.3.3.3.4.1.4"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.5.2.1"><span class="ltx_text" id="S8.T4.3.3.3.5.2.1.1" style="font-size:144%;">3DGS</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.5.2.2"><span class="ltx_text" id="S8.T4.3.3.3.5.2.2.1" style="font-size:144%;">10.36</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.5.2.3"><span class="ltx_text" id="S8.T4.3.3.3.5.2.3.1" style="font-size:144%;">0.108</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.5.2.4"><span class="ltx_text" id="S8.T4.3.3.3.5.2.4.1" style="font-size:144%;">0.776</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.6.3.1"><span class="ltx_text" id="S8.T4.3.3.3.6.3.1.1" style="font-size:144%;">SparseNeRF</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.6.3.2"><span class="ltx_text" id="S8.T4.3.3.3.6.3.2.1" style="font-size:144%;">11.47</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.6.3.3"><span class="ltx_text" id="S8.T4.3.3.3.6.3.3.1" style="font-size:144%;">0.190</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.6.3.4"><span class="ltx_text" id="S8.T4.3.3.3.6.3.4.1" style="font-size:144%;">0.716</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.7.4.1"><span class="ltx_text" id="S8.T4.3.3.3.7.4.1.1" style="font-size:144%;">DNGaussian</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.7.4.2"><span class="ltx_text" id="S8.T4.3.3.3.7.4.2.1" style="font-size:144%;">10.81</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.7.4.3"><span class="ltx_text" id="S8.T4.3.3.3.7.4.3.1" style="font-size:144%;">0.133</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.7.4.4"><span class="ltx_text" id="S8.T4.3.3.3.7.4.4.1" style="font-size:144%;">0.727</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.8.5.1"><span class="ltx_text" id="S8.T4.3.3.3.8.5.1.1" style="font-size:144%;">InstantSplat</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.8.5.2"><span class="ltx_text" id="S8.T4.3.3.3.8.5.2.1" style="font-size:144%;">11.77</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.8.5.3"><span class="ltx_text" id="S8.T4.3.3.3.8.5.3.1" style="font-size:144%;">0.171</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.8.5.4"><span class="ltx_text" id="S8.T4.3.3.3.8.5.4.1" style="font-size:144%;">0.715</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.9.6.1"><span class="ltx_text" id="S8.T4.3.3.3.9.6.1.1" style="font-size:144%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.9.6.2"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.9.6.2.1" style="font-size:144%;">13.37</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.9.6.3"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.9.6.3.1" style="font-size:144%;">0.283</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.9.6.4"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.9.6.4.1" style="font-size:144%;">0.550</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T4.3.3.3.10.7.1"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.10.7.1.1" style="font-size:144%;">Tank and Temples</span></th>
<td class="ltx_td ltx_border_t" id="S8.T4.3.3.3.10.7.2"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.3.3.3.10.7.3"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.3.3.3.10.7.4"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.11.8.1"><span class="ltx_text" id="S8.T4.3.3.3.11.8.1.1" style="font-size:144%;">3DGS</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.11.8.2"><span class="ltx_text" id="S8.T4.3.3.3.11.8.2.1" style="font-size:144%;">9.57</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.11.8.3"><span class="ltx_text" id="S8.T4.3.3.3.11.8.3.1" style="font-size:144%;">0.108</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.11.8.4"><span class="ltx_text" id="S8.T4.3.3.3.11.8.4.1" style="font-size:144%;">0.779</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.12.9.1"><span class="ltx_text" id="S8.T4.3.3.3.12.9.1.1" style="font-size:144%;">SparseNeRF</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.12.9.2"><span class="ltx_text" id="S8.T4.3.3.3.12.9.2.1" style="font-size:144%;">9.23</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.12.9.3"><span class="ltx_text" id="S8.T4.3.3.3.12.9.3.1" style="font-size:144%;">0.191</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.12.9.4"><span class="ltx_text" id="S8.T4.3.3.3.12.9.4.1" style="font-size:144%;">0.632</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.13.10.1"><span class="ltx_text" id="S8.T4.3.3.3.13.10.1.1" style="font-size:144%;">DNGaussian</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.13.10.2"><span class="ltx_text" id="S8.T4.3.3.3.13.10.2.1" style="font-size:144%;">10.23</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.13.10.3"><span class="ltx_text" id="S8.T4.3.3.3.13.10.3.1" style="font-size:144%;">0.156</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.13.10.4"><span class="ltx_text" id="S8.T4.3.3.3.13.10.4.1" style="font-size:144%;">0.643</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T4.3.3.3.14.11.1"><span class="ltx_text" id="S8.T4.3.3.3.14.11.1.1" style="font-size:144%;">InstantSplat</span></th>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.14.11.2"><span class="ltx_text" id="S8.T4.3.3.3.14.11.2.1" style="font-size:144%;">10.98</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.14.11.3"><span class="ltx_text" id="S8.T4.3.3.3.14.11.3.1" style="font-size:144%;">0.381</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.3.3.3.14.11.4"><span class="ltx_text" id="S8.T4.3.3.3.14.11.4.1" style="font-size:144%;">0.619</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.3.3.3.15.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S8.T4.3.3.3.15.12.1"><span class="ltx_text" id="S8.T4.3.3.3.15.12.1.1" style="font-size:144%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T4.3.3.3.15.12.2"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.15.12.2.1" style="font-size:144%;">14.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T4.3.3.3.15.12.3"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.15.12.3.1" style="font-size:144%;">0.394</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T4.3.3.3.15.12.4"><span class="ltx_text ltx_font_bold" id="S8.T4.3.3.3.15.12.4.1" style="font-size:144%;">0.564</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different 3D reconstruction methods on two benchmark datasets: Mip-NeRF 360 and Tanks and Temples.  The methods are evaluated based on three key metrics: Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS).  Higher PSNR and SSIM values indicate better visual quality, while a lower LPIPS value suggests a closer perceptual similarity to the ground truth.  The results show the performance of each method using only two input views per scene, providing insights into their effectiveness for sparse-view 3D reconstruction.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative comparison on Mip-Nerf 360 and Tank-and-Temples datasets. We report the quantitative metrics with two input views for each scene.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S8.T5.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T5.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S8.T5.4.1.1.1.1"><span class="ltx_text" id="S8.T5.4.1.1.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T5.4.1.1.1.2"><span class="ltx_text" id="S8.T5.4.1.1.1.2.1" style="font-size:90%;">Layout Stability</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T5.4.1.1.1.3"><span class="ltx_text" id="S8.T5.4.1.1.1.3.1" style="font-size:90%;">Smoothness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T5.4.1.1.1.4"><span class="ltx_text" id="S8.T5.4.1.1.1.4.1" style="font-size:90%;">Visual Realism</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T5.4.1.1.1.5"><span class="ltx_text" id="S8.T5.4.1.1.1.5.1" style="font-size:90%;">Overall Quality</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T5.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T5.4.1.2.1.1">
<span class="ltx_text" id="S8.T5.4.1.2.1.1.1" style="font-size:90%;">Stable Video Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T5.4.1.2.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S8.T5.4.1.2.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.4.1.2.1.2"><span class="ltx_text" id="S8.T5.4.1.2.1.2.1" style="font-size:90%;">6.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.4.1.2.1.3"><span class="ltx_text" id="S8.T5.4.1.2.1.3.1" style="font-size:90%;">7.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.4.1.2.1.4"><span class="ltx_text" id="S8.T5.4.1.2.1.4.1" style="font-size:90%;">6.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.4.1.2.1.5"><span class="ltx_text" id="S8.T5.4.1.2.1.5.1" style="font-size:90%;">7.13</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.4.1.3.2.1">
<span class="ltx_text" id="S8.T5.4.1.3.2.1.1" style="font-size:90%;">DynamiCrafter </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T5.4.1.3.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a><span class="ltx_text" id="S8.T5.4.1.3.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.3.2.2"><span class="ltx_text" id="S8.T5.4.1.3.2.2.1" style="font-size:90%;">7.02</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.3.2.3"><span class="ltx_text" id="S8.T5.4.1.3.2.3.1" style="font-size:90%;">7.01</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.3.2.4"><span class="ltx_text" id="S8.T5.4.1.3.2.4.1" style="font-size:90%;">6.02</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.3.2.5"><span class="ltx_text" id="S8.T5.4.1.3.2.5.1" style="font-size:90%;">6.68</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S8.T5.4.1.4.3.1">
<span class="ltx_text" id="S8.T5.4.1.4.3.1.1" style="font-size:90%;">CogVideoX </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T5.4.1.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01956v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a><span class="ltx_text" id="S8.T5.4.1.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.4.3.2"><span class="ltx_text" id="S8.T5.4.1.4.3.2.1" style="font-size:90%;">7.83</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.4.3.3"><span class="ltx_text" id="S8.T5.4.1.4.3.3.1" style="font-size:90%;">7.53</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.4.3.4"><span class="ltx_text" id="S8.T5.4.1.4.3.4.1" style="font-size:90%;">7.33</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.4.1.4.3.5"><span class="ltx_text" id="S8.T5.4.1.4.3.5.1" style="font-size:90%;">7.50</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S8.T5.4.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S8.T5.4.1.5.4.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T5.4.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S8.T5.4.1.5.4.2.1" style="font-size:90%;">8.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T5.4.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S8.T5.4.1.5.4.3.1" style="font-size:90%;">8.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T5.4.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S8.T5.4.1.5.4.4.1" style="font-size:90%;">9.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T5.4.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S8.T5.4.1.5.4.5.1" style="font-size:90%;">8.82</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study evaluating the quality of videos generated by different methods.  Users rated four aspects of the videos on a scale of 1 to 10: layout stability (how consistent the scene layout is across frames), smoothness (how fluid and natural the motion is), visual realism (how realistic the video appears), and overall quality (a general assessment of the video). Higher scores indicate better performance. The table allows for a comparison of user perceptions of video quality across various generation techniques.
> <details>
> <summary>read the caption</summary>
> Table 5: User study on the layout stability, smoothness, visual realism, and overall quality score in a user study, rated on a range of 1-10, with higher scores indicating better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S9.T6.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T6.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S9.T6.6.1.1.1.1"><span class="ltx_text" id="S9.T6.6.1.1.1.1.1" style="font-size:144%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T6.6.1.1.1.2"><span class="ltx_text" id="S9.T6.6.1.1.1.2.1" style="font-size:144%;">SVD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T6.6.1.1.1.3"><span class="ltx_text" id="S9.T6.6.1.1.1.3.1" style="font-size:144%;">DynamiCrafter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T6.6.1.1.1.4"><span class="ltx_text" id="S9.T6.6.1.1.1.4.1" style="font-size:144%;">CogVideoX-5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T6.6.1.1.1.5"><span class="ltx_text" id="S9.T6.6.1.1.1.5.1" style="font-size:144%;">ViewCrafter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T6.6.1.1.1.6">
<span class="ltx_text" id="S9.T6.6.1.1.1.6.1" style="font-size:144%;">VideoScene (</span><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.1.1.6.2" style="font-size:144%;">Ours</span><span class="ltx_text" id="S9.T6.6.1.1.1.6.3" style="font-size:144%;">)</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T6.6.1.2.2.1"><span class="ltx_text" id="S9.T6.6.1.2.2.1.1" style="font-size:144%;">Runtime (s)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.2.2"><span class="ltx_text" id="S9.T6.6.1.2.2.2.1" style="font-size:144%;">933.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.2.3"><span class="ltx_text" id="S9.T6.6.1.2.2.3.1" style="font-size:144%;">21.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.2.4"><span class="ltx_text" id="S9.T6.6.1.2.2.4.1" style="font-size:144%;">179.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.2.5"><span class="ltx_text" id="S9.T6.6.1.2.2.5.1" style="font-size:144%;">206.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.2.2.6.1" style="font-size:144%;">2.98</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S9.T6.6.1.3.3.1"><span class="ltx_text" id="S9.T6.6.1.3.3.1.1" style="font-size:144%;">Frames</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T6.6.1.3.3.2"><span class="ltx_text" id="S9.T6.6.1.3.3.2.1" style="font-size:144%;">25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T6.6.1.3.3.3"><span class="ltx_text" id="S9.T6.6.1.3.3.3.1" style="font-size:144%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T6.6.1.3.3.4"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.3.3.4.1" style="font-size:144%;">49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T6.6.1.3.3.5"><span class="ltx_text" id="S9.T6.6.1.3.3.5.1" style="font-size:144%;">25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T6.6.1.3.3.6"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.3.3.6.1" style="font-size:144%;">49</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the empirical runtime for different video generation methods.  It shows the time taken (in seconds) to generate videos, the number of frames generated, and the specific methods used: Stable Video Diffusion (SVD), DynamiCrafter, CogVideoX-5B, ViewCrafter, and VideoScene (the authors' proposed method). This comparison highlights the relative efficiency of the VideoScene model in terms of speed of generating videos.
> <details>
> <summary>read the caption</summary>
> Table 6: Empirical runtime comparisons.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S9.T7.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S9.T7.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S9.T7.4.4.5.1.1"><span class="ltx_text" id="S9.T7.4.4.5.1.1.1" style="font-size:144%;">Description</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S9.T7.4.4.5.1.2"><span class="ltx_text" id="S9.T7.4.4.5.1.2.1" style="font-size:144%;">Video Backbone (CogVideoX)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S9.T7.4.4.5.1.3"><span class="ltx_text" id="S9.T7.4.4.5.1.3.1" style="font-size:144%;">Leap Flow Distillation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S9.T7.4.4.5.1.4"><span class="ltx_text" id="S9.T7.4.4.5.1.4.1" style="font-size:144%;">DDPNet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S9.T7.4.4.5.1.5"><span class="ltx_text" id="S9.T7.4.4.5.1.5.1" style="font-size:144%;">Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T7.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S9.T7.4.4.4.5"><span class="ltx_text" id="S9.T7.4.4.4.5.1" style="font-size:144%;">Training Cost</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T7.1.1.1.1">
<math alttext="\sim 66" class="ltx_Math" display="inline" id="S9.T7.1.1.1.1.m1.1"><semantics id="S9.T7.1.1.1.1.m1.1a"><mrow id="S9.T7.1.1.1.1.m1.1.1" xref="S9.T7.1.1.1.1.m1.1.1.cmml"><mi id="S9.T7.1.1.1.1.m1.1.1.2" xref="S9.T7.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S9.T7.1.1.1.1.m1.1.1.1" mathsize="144%" xref="S9.T7.1.1.1.1.m1.1.1.1.cmml">∼</mo><mn id="S9.T7.1.1.1.1.m1.1.1.3" mathsize="144%" xref="S9.T7.1.1.1.1.m1.1.1.3.cmml">66</mn></mrow><annotation-xml encoding="MathML-Content" id="S9.T7.1.1.1.1.m1.1b"><apply id="S9.T7.1.1.1.1.m1.1.1.cmml" xref="S9.T7.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="S9.T7.1.1.1.1.m1.1.1.1.cmml" xref="S9.T7.1.1.1.1.m1.1.1.1">similar-to</csymbol><csymbol cd="latexml" id="S9.T7.1.1.1.1.m1.1.1.2.cmml" xref="S9.T7.1.1.1.1.m1.1.1.2">absent</csymbol><cn id="S9.T7.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S9.T7.1.1.1.1.m1.1.1.3">66</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S9.T7.1.1.1.1.m1.1c">\sim 66</annotation><annotation encoding="application/x-llamapun" id="S9.T7.1.1.1.1.m1.1d">∼ 66</annotation></semantics></math><span class="ltx_text" id="S9.T7.1.1.1.1.1" style="font-size:144%;"> GB</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T7.2.2.2.2">
<math alttext="\sim 10" class="ltx_Math" display="inline" id="S9.T7.2.2.2.2.m1.1"><semantics id="S9.T7.2.2.2.2.m1.1a"><mrow id="S9.T7.2.2.2.2.m1.1.1" xref="S9.T7.2.2.2.2.m1.1.1.cmml"><mi id="S9.T7.2.2.2.2.m1.1.1.2" xref="S9.T7.2.2.2.2.m1.1.1.2.cmml"></mi><mo id="S9.T7.2.2.2.2.m1.1.1.1" mathsize="144%" xref="S9.T7.2.2.2.2.m1.1.1.1.cmml">∼</mo><mn id="S9.T7.2.2.2.2.m1.1.1.3" mathsize="144%" xref="S9.T7.2.2.2.2.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S9.T7.2.2.2.2.m1.1b"><apply id="S9.T7.2.2.2.2.m1.1.1.cmml" xref="S9.T7.2.2.2.2.m1.1.1"><csymbol cd="latexml" id="S9.T7.2.2.2.2.m1.1.1.1.cmml" xref="S9.T7.2.2.2.2.m1.1.1.1">similar-to</csymbol><csymbol cd="latexml" id="S9.T7.2.2.2.2.m1.1.1.2.cmml" xref="S9.T7.2.2.2.2.m1.1.1.2">absent</csymbol><cn id="S9.T7.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S9.T7.2.2.2.2.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S9.T7.2.2.2.2.m1.1c">\sim 10</annotation><annotation encoding="application/x-llamapun" id="S9.T7.2.2.2.2.m1.1d">∼ 10</annotation></semantics></math><span class="ltx_text" id="S9.T7.2.2.2.2.1" style="font-size:144%;"> GB</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T7.3.3.3.3">
<math alttext="\sim 0.02" class="ltx_Math" display="inline" id="S9.T7.3.3.3.3.m1.1"><semantics id="S9.T7.3.3.3.3.m1.1a"><mrow id="S9.T7.3.3.3.3.m1.1.1" xref="S9.T7.3.3.3.3.m1.1.1.cmml"><mi id="S9.T7.3.3.3.3.m1.1.1.2" xref="S9.T7.3.3.3.3.m1.1.1.2.cmml"></mi><mo id="S9.T7.3.3.3.3.m1.1.1.1" mathsize="144%" xref="S9.T7.3.3.3.3.m1.1.1.1.cmml">∼</mo><mn id="S9.T7.3.3.3.3.m1.1.1.3" mathsize="144%" xref="S9.T7.3.3.3.3.m1.1.1.3.cmml">0.02</mn></mrow><annotation-xml encoding="MathML-Content" id="S9.T7.3.3.3.3.m1.1b"><apply id="S9.T7.3.3.3.3.m1.1.1.cmml" xref="S9.T7.3.3.3.3.m1.1.1"><csymbol cd="latexml" id="S9.T7.3.3.3.3.m1.1.1.1.cmml" xref="S9.T7.3.3.3.3.m1.1.1.1">similar-to</csymbol><csymbol cd="latexml" id="S9.T7.3.3.3.3.m1.1.1.2.cmml" xref="S9.T7.3.3.3.3.m1.1.1.2">absent</csymbol><cn id="S9.T7.3.3.3.3.m1.1.1.3.cmml" type="float" xref="S9.T7.3.3.3.3.m1.1.1.3">0.02</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S9.T7.3.3.3.3.m1.1c">\sim 0.02</annotation><annotation encoding="application/x-llamapun" id="S9.T7.3.3.3.3.m1.1d">∼ 0.02</annotation></semantics></math><span class="ltx_text" id="S9.T7.3.3.3.3.1" style="font-size:144%;"> GB</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S9.T7.4.4.4.4">
<math alttext="\sim 76" class="ltx_Math" display="inline" id="S9.T7.4.4.4.4.m1.1"><semantics id="S9.T7.4.4.4.4.m1.1a"><mrow id="S9.T7.4.4.4.4.m1.1.1" xref="S9.T7.4.4.4.4.m1.1.1.cmml"><mi id="S9.T7.4.4.4.4.m1.1.1.2" xref="S9.T7.4.4.4.4.m1.1.1.2.cmml"></mi><mo id="S9.T7.4.4.4.4.m1.1.1.1" mathsize="144%" xref="S9.T7.4.4.4.4.m1.1.1.1.cmml">∼</mo><mn id="S9.T7.4.4.4.4.m1.1.1.3" mathsize="144%" xref="S9.T7.4.4.4.4.m1.1.1.3.cmml">76</mn></mrow><annotation-xml encoding="MathML-Content" id="S9.T7.4.4.4.4.m1.1b"><apply id="S9.T7.4.4.4.4.m1.1.1.cmml" xref="S9.T7.4.4.4.4.m1.1.1"><csymbol cd="latexml" id="S9.T7.4.4.4.4.m1.1.1.1.cmml" xref="S9.T7.4.4.4.4.m1.1.1.1">similar-to</csymbol><csymbol cd="latexml" id="S9.T7.4.4.4.4.m1.1.1.2.cmml" xref="S9.T7.4.4.4.4.m1.1.1.2">absent</csymbol><cn id="S9.T7.4.4.4.4.m1.1.1.3.cmml" type="integer" xref="S9.T7.4.4.4.4.m1.1.1.3">76</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S9.T7.4.4.4.4.m1.1c">\sim 76</annotation><annotation encoding="application/x-llamapun" id="S9.T7.4.4.4.4.m1.1d">∼ 76</annotation></semantics></math><span class="ltx_text" id="S9.T7.4.4.4.4.1" style="font-size:144%;"> GB</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the memory consumption of different components involved in training the VideoScene model.  It shows the memory usage for the video backbone (CogVideoX), the 3D-aware leap flow distillation process, and the dynamic denoising policy network (DDPNet). The total memory cost is also provided, illustrating the overall resource requirements of the training process on a single A100 GPU.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison on memory costs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.01956/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01956/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}