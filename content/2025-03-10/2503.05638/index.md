---
title: "TrajectoryCrafter: Redirecting Camera Trajectory for Monocular Videos via Diffusion Models"
summary: "TrajectoryCrafter: Precisely control camera movement in monocular videos with a novel diffusion model for coherent 4D content generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Chinese University of Hong Kong",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05638 {{< /keyword >}}
{{< keyword icon="writer" >}} Mark YU et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05638" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05638" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05638/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current video techniques fall short in immersive experiences. Traditional methods produce unrealistic results, require multi-view videos which are inconvenient. Recent advancements leverage image and video diffusion models, but struggle with dynamic videos from static methods, and implicit pose embeddings. This paper introduces methods with fixed poses and synthetic multi-view datasets, but performance suffers from domain gaps between real & synthetic videos.



This paper introduces a new framework that generates high-fidelity videos with user-defined camera trajectories from monocular inputs. **The proposed method, TrajectoryCrafter, disentangles deterministic view transformations from stochastic content generation, and leverages monocular reconstruction to model 3D transformations via point cloud renders**. A dual-stream diffusion model combines point cloud renders and source videos for 4D consistency and broadens generalization. **The method uses a hybrid training dataset of static multi-view and web-scale monocular videos**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TrajectoryCrafter enables precise, user-defined camera trajectory control in monocular videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A dual-stream diffusion model ensures both accurate view transformations and coherent 4D content generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A hybrid training data strategy using web-scale monocular videos and static multi-view datasets enhances generalization. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel method for redirecting camera trajectories in monocular videos, offering precise control and broad generalization, potentially impacting virtual content creation and video editing. It opens new research avenues in 4D content generation and video manipulation, relevant to current trends in AI-driven video processing.

------
#### Visual Insights



![](https://arxiv.org/html/2503.05638/x2.png)

> 🔼 This figure showcases TrajectoryCrafter, a new method for altering the camera path in monocular videos.  It demonstrates the system's ability to precisely control the camera's viewpoint and simultaneously generate consistent and coherent 4D content, ensuring smooth and realistic-looking video transitions and scene changes.  The results shown are still images; to view the full video results, please refer to the project's supplementary materials.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We present TrajectoryCrafter, a novel approach to redirect camera trajectories for monocular videos, achieving precise control over the view transformations and coherent 4D content generation. Please refer to the supplementary project page for video results.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.3.3.3">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_rr ltx_border_tt" id="S4.T1.3.3.3.4" style="padding-left:2.9pt;padding-right:2.9pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T1.1.1.1.1" style="padding-left:2.9pt;padding-right:2.9pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T1.2.2.2.2" style="padding-left:2.9pt;padding-right:2.9pt;">
<span class="ltx_text" id="S4.T1.2.2.2.2.1" style="font-size:90%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T1.3.3.3.3" style="padding-left:2.9pt;padding-right:2.9pt;">
<span class="ltx_text" id="S4.T1.3.3.3.3.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_rr" id="S4.T1.3.3.4.1.1" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.4.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.2" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.2.1" style="font-size:90%;">Apple</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.3" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.3.1" style="font-size:90%;">Block</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.4" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.4.1" style="font-size:90%;">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.5" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.5.1" style="font-size:90%;">Spin</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.6" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.6.1" style="font-size:90%;">Teddy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.3.3.4.1.7" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.4.1.7.1" style="font-size:90%;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.8" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.8.1" style="font-size:90%;">Apple</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.9" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.9.1" style="font-size:90%;">Block</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.10" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.10.1" style="font-size:90%;">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.11" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.11.1" style="font-size:90%;">Spin</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.12" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.12.1" style="font-size:90%;">Teddy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.3.3.4.1.13" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.4.1.13.1" style="font-size:90%;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.14" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.14.1" style="font-size:90%;">Apple</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.15" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.15.1" style="font-size:90%;">Block</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.16" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.16.1" style="font-size:90%;">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.17" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.17.1" style="font-size:90%;">Spin</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.18" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.4.1.18.1" style="font-size:90%;">Teddy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.4.1.19" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.4.1.19.1" style="font-size:90%;">Mean</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S4.T1.3.3.5.1.1" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.1.1" style="font-size:90%;">GCD</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.2" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.2.1" style="font-size:90%;">9.823</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.3" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.3.1" style="font-size:90%;">12.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.4" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.4.1" style="font-size:90%;">9.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.5" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.5.1" style="font-size:90%;">10.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.6" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.6.1" style="font-size:90%;">11.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.5.1.7" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.7.1" style="font-size:90%;">10.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.8" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.8.1" style="font-size:90%;">0.215</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.9" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.9.1" style="font-size:90%;">0.458</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.10" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.10.1" style="font-size:90%;">0.398</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.11" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.11.1" style="font-size:90%;">0.324</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.12" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.12.1" style="font-size:90%;">0.385</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.5.1.13" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.13.1" style="font-size:90%;">0.356</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.14" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.14.1" style="font-size:90%;">0.738</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.15" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.15.1" style="font-size:90%;">0.590</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.16" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.16.1" style="font-size:90%;">0.535</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.17" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.17.1" style="font-size:90%;">0.576</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.18" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.18.1" style="font-size:90%;">0.629</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.1.19" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.5.1.19.1" style="font-size:90%;">0.614</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr" id="S4.T1.3.3.6.2.1" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.1.1" style="font-size:90%;">ViewCrafter</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.2" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.2.1" style="font-size:90%;">10.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.3" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.3.1" style="font-size:90%;">10.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.4" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.4.1" style="font-size:90%;">10.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.5" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.5.1" style="font-size:90%;">11.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.6" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.6.1" style="font-size:90%;">11.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.6.2.7" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.7.1" style="font-size:90%;">10.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.8" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.8.1" style="font-size:90%;">0.245</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.9" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.9.1" style="font-size:90%;">0.427</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.10" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.10.1" style="font-size:90%;">0.344</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.11" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.11.1" style="font-size:90%;">0.308</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.12" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.12.1" style="font-size:90%;">0.372</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.6.2.13" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.13.1" style="font-size:90%;">0.339</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.14" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.14.1" style="font-size:90%;">0.750</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.15" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.15.1" style="font-size:90%;">0.615</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.16" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.16.1" style="font-size:90%;">0.521</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.17" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.17.1" style="font-size:90%;">0.533</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.18" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.18.1" style="font-size:90%;">0.606</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2.19" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.6.2.19.1" style="font-size:90%;">0.605</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr" id="S4.T1.3.3.7.3.1" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.1.1" style="font-size:90%;">Shape-of-motion</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.2" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.2.1" style="font-size:90%;">11.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.3" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.3.1" style="font-size:90%;">11.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.4" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.4.1" style="font-size:90%;">11.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.5" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.5.1" style="font-size:90%;">11.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.6" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.6.1" style="font-size:90%;">10.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.7.3.7" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.7.1" style="font-size:90%;">11.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.8" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.8.1" style="font-size:90%;">0.197</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.9" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.9.1" style="font-size:90%;">0.446</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.10" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.10.1" style="font-size:90%;">0.425</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.11" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.11.1" style="font-size:90%;">0.319</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.12" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.12.1" style="font-size:90%;">0.357</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.7.3.13" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.13.1" style="font-size:90%;">0.349</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.14" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.14.1" style="font-size:90%;">0.879</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.15" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.15.1" style="font-size:90%;">0.601</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.16" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.16.1" style="font-size:90%;">0.486</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.17" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.17.1" style="font-size:90%;">0.560</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.18" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.18.1" style="font-size:90%;">0.650</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3.19" style="padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.7.3.19.1" style="font-size:90%;">0.635</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_rr" id="S4.T1.3.3.8.4.1" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text" id="S4.T1.3.3.8.4.1.1" style="font-size:90%;background-color:#F2F2F2;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.2" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.2.1" style="font-size:90%;background-color:#F2F2F2;">13.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.3" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.3.1" style="font-size:90%;background-color:#F2F2F2;">14.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.4" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.4.1" style="font-size:90%;background-color:#F2F2F2;">14.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.5" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.5.1" style="font-size:90%;background-color:#F2F2F2;">14.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.6" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.6.1" style="font-size:90%;background-color:#F2F2F2;">13.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.3.3.8.4.7" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.7.1" style="font-size:90%;background-color:#F2F2F2;">14.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.8" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.8.1" style="font-size:90%;background-color:#F2F2F2;">0.285</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.9" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.9.1" style="font-size:90%;background-color:#F2F2F2;">0.528</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.10" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.10.1" style="font-size:90%;background-color:#F2F2F2;">0.482</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.11" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.11.1" style="font-size:90%;background-color:#F2F2F2;">0.380</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.12" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.12.1" style="font-size:90%;background-color:#F2F2F2;">0.411</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.3.3.8.4.13" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.13.1" style="font-size:90%;background-color:#F2F2F2;">0.417</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.14" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.14.1" style="font-size:90%;background-color:#F2F2F2;">0.612</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.15" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.15.1" style="font-size:90%;background-color:#F2F2F2;">0.479</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.16" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.16.1" style="font-size:90%;background-color:#F2F2F2;">0.471</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.17" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.17.1" style="font-size:90%;background-color:#F2F2F2;">0.518</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.18" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.18.1" style="font-size:90%;background-color:#F2F2F2;">0.513</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.8.4.19" style="background-color:#F2F2F2;padding-left:2.9pt;padding-right:2.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.8.4.19.1" style="font-size:90%;background-color:#F2F2F2;">0.519</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for novel trajectory video synthesis using the iPhone dataset [23].  The performance of four methods (GCD, ViewCrafter, Shape-of-Motion, and the proposed method, Ours) is evaluated based on three metrics: Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS).  Each metric is calculated for individual scenes within the dataset, and the average across all scenes is also reported. Higher PSNR and SSIM values, along with lower LPIPS values, indicate better visual quality. The best results for each metric and scene are highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison of novel trajectory video synthesis. We report the PSNR, SSIM, and LPIPS metrics for each scene and the mean values across all scenes on the multi-view dataset, iphone [23]. The best results are highlighted in bold.
> </details>





### In-depth insights


#### Precise Trajectory
Generating precise trajectories in videos is a challenging task, as it requires careful control over camera movements and 4D content. The paper addresses this by **disentangling deterministic view transformations from stochastic content generation**, enabling accurate 3D modeling using point cloud renders. They also propose a dual-stream diffusion model that leverages point cloud renders and source videos to ensure **accurate view transformations and coherent 4D content generation**. The hybrid training dataset, combining web-scale monocular videos and static multi-view datasets, further enhances generalization across diverse scenes, ultimately leading to **high-fidelity video generation with user-defined trajectories**.

#### Dual-Stream Fusion
While the term "Dual-Stream Fusion" isn't explicitly mentioned as a heading in the provided paper, the core concept is heavily utilized within the TrajectoryCrafter framework. The essence of such an approach lies in processing information through **two distinct pathways** and subsequently **integrating** them to achieve a more comprehensive understanding or, in this case, a superior output. In the TrajectoryCrafter context, this manifests as a **dual-stream conditional video diffusion model.** One stream processes **point cloud renders**, enabling precise view transformations and geometric control based on user-specified camera trajectories. The other stream incorporates the **source video**, preserving rich appearance details and compensating for potential artifacts or inconsistencies arising from the point cloud reconstruction. The strength of the dual-stream approach lies in its ability to **decouple deterministic view transformation from stochastic content generation**, allowing for more robust and high-fidelity video synthesis. The fusion of these streams counters occlusions and geometric distortions. This fusion strategy effectively combines the strengths of both geometric precision and visual detail, leading to the generation of novel view videos with enhanced accuracy, consistency, and realism, showing **state-of-the-art performance**.

#### Hybrid Data Curation
**Hybrid data curation** is a practical approach to gather data for training complex models. As multi-view data can be limited, a hybrid strategy is important to expand the datasets and foster high-quality video generation. Gathering data from monocular videos using strategies like double re-projection and web-scale datasets with static multi-view resources enhances the generalization. Hybrid approach can improve the generalization across diverse scenes because models benefit from large and varied dataset. By consolidating different data, we enhance model's robustness for the complex task of generating high-fidelity videos.

#### 4D Consistency
The notion of '4D Consistency' is crucial in the context of video generation and novel view synthesis. It refers to the temporal coherence and spatial accuracy of generated content across time, ensuring that the generated video maintains a realistic and stable representation of the scene. Achieving 4D consistency involves several challenges, including preventing flickering artifacts, maintaining consistent object identities and shapes, and ensuring that the generated content aligns with the underlying 3D geometry of the scene.  Methods that explicitly model 3D structure or use temporal information effectively are better positioned to achieve high 4D consistency. **The lack of 4D consistency can lead to visually jarring and unrealistic videos**, undermining the overall quality and believability of the generated content. Therefore, innovations in video generation and novel view synthesis often prioritize enhancing 4D consistency through various techniques, such as incorporating geometric priors, using recurrent networks, or employing adversarial training strategies, **Ultimately, 4D consistency is paramount for creating immersive and visually compelling video experiences**.

#### Depth Inaccuracy
The research paper acknowledges that **depth estimation from monocular videos is inherently prone to inaccuracies**. This is a critical limitation, as the entire pipeline relies on the quality of the reconstructed 3D point cloud. **Errors in depth propagate through the system**, affecting view transformation and content consistency. The paper discusses that **while methods like DepthCrafter are employed to generate consistent depth sequences, these are not always perfect**. **Failures in depth estimation can lead to physically implausible behaviors** in the generated novel views, and therefore future research is needed in improving depth estimation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.05638/x3.png)

> 🔼 TrajectoryCrafter processes a source video (either recorded or AI-generated) by first converting it into a dynamic point cloud using depth estimation. This point cloud allows users to interactively define new camera trajectories.  The system then uses a dual-stream conditional video diffusion model that combines the point cloud renderings with the original video to create a high-fidelity output video. This output video precisely matches the specified camera path while maintaining temporal consistency (4D consistency) with the source video.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of TrajectoryCrafter. Starting with a source video, whether casually captured or AI-generated, we first lift it into a dynamic point cloud via depth estimation. Users can then interactively render the point cloud with desired camera trajectories. Finally, the point cloud renders and the source video are jointly processed by our dual-stream conditional video diffusion model, yielding a high-fidelity video that precisely aligns with the specified trajectory and remains 4D consistent with the source video.
> </details>



![](https://arxiv.org/html/2503.05638/x4.png)

> 🔼 The Ref-DiT (Reference-conditioned Diffusion Transformer) block refines view tokens by incorporating information from reference tokens.  The process begins with 3D attention applied to both text and view tokens, capturing contextual relationships within the video data and text descriptions.  Then, a cross-attention mechanism injects detailed information from the reference tokens (encoding the source video) into the view tokens. Because the source video and rendered views aren't perfectly aligned spatially, the cross-attention selectively integrates relevant details, improving the accuracy and coherence of the view tokens for subsequent processing steps in the video generation model. This refined information ensures that the generated novel view is both geometrically accurate and visually consistent with the source video.
> <details>
> <summary>read the caption</summary>
> Figure 3: Ref-DiT Block. The text and view tokens are first processed through 3D attention, followed by a cross-attention that injects the detailed, yet mis-aligned, reference information into the view tokens, yielding refined view tokens for subsequent layers.
> </details>



![](https://arxiv.org/html/2503.05638/x5.png)

> 🔼 The figure illustrates the double-reprojection technique used to create training data.  A target video is first converted into a dynamic point cloud representation. A novel view (I') is then rendered from this point cloud using a random view transformation. This novel view is then reprojected back to the original camera's perspective, resulting in a new image (I'') that includes occlusions and aligns with the target video. This I'' image serves as a simulated point cloud render, mimicking the effects of occlusions and view transformations that occur in real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 4: Double-reprojection. Given a target video, we lift it into a dynamic point cloud to render a novel view 𝑰′superscript𝑰′\bm{I}^{\prime}bold_italic_I start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT via a random view transformation. Then 𝑰′superscript𝑰′\bm{I}^{\prime}bold_italic_I start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT is reprojected to the original camera pose, yielding 𝑰′′superscript𝑰′′\bm{I}^{\prime\prime}bold_italic_I start_POSTSUPERSCRIPT ′ ′ end_POSTSUPERSCRIPT through the inverse view transformation. 𝑰′′superscript𝑰′′\bm{I}^{\prime\prime}bold_italic_I start_POSTSUPERSCRIPT ′ ′ end_POSTSUPERSCRIPT contains occlusions and aligns with the target video, simulating the point cloud renders.
> </details>



![](https://arxiv.org/html/2503.05638/x6.png)

> 🔼 Figure 5 presents a qualitative comparison of novel trajectory video synthesis methods.  It showcases the results of four different approaches applied to the same video sequence from the iPhone [23] multi-view dataset. These methods include our proposed TrajectoryCrafter, the reconstruction-based method Shape-of-motion [78], and the generative methods GCD [75] and ViewCrafter [95]. The figure allows for visual comparison of the generated videos' quality, accuracy in portraying camera movements, and overall visual fidelity to the source video, highlighting the strengths and weaknesses of each approach.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison of novel trajectory video synthesis. We compare our method with both reconstruction-based method, Shape-of-motion [78], and generative methods, GCD [75] and ViewCrafter [95] on the multi-view dataset, iphone [23].
> </details>



![](https://arxiv.org/html/2503.05638/x7.png)

> 🔼 Figure 6 presents a qualitative comparison of novel trajectory video synthesis results on real-world monocular videos.  The experiment focuses on the specific camera trajectory of 'zooming in and orbiting to the right'.  The figure displays the input video and the output videos generated by three different methods: the authors' proposed TrajectoryCrafter, GCD [75], and ViewCrafter [95]. This allows for a visual comparison of the quality and accuracy of the trajectory redirection achieved by each method, highlighting strengths and weaknesses in generating realistic and coherent videos with novel camera paths.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Qualitative comparison on in-the-wild monocular videos. We show results of redirecting the camera trajectory as “zoom-in and orbit to the right” from the input videos, produced by our method and the generative baselines, GCD [75] and ViewCrafter [95].
> </details>



![](https://arxiv.org/html/2503.05638/x8.png)

> 🔼 Figure 7 demonstrates the impact of the Ref-DiT (Reference-conditioned Diffusion Transformer) block on video generation quality within the TrajectoryCrafter model.  Three versions of the model are compared: the complete model with Ref-DiT blocks, a model without Ref-DiT blocks, and a model where the source video is directly concatenated with point cloud renders instead of using Ref-DiT. A yellow box highlights key visual differences between the outputs, showing how the Ref-DiT block improves the coherence and fidelity of the generated video by effectively integrating information from both the point cloud renders and the source video.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Effectiveness of Ref-DiT blocks. We compare our full model (w/ Ref-DiT) to two alternatives: a baseline without Ref-DiT (w/o Ref-DiT), and a variant that directly concatenates the source video with the point cloud renders (w/ Concat Condition). The yellow box highlights the most prominent differences.
> </details>



![](https://arxiv.org/html/2503.05638/x9.png)

> 🔼 Figure 8 demonstrates the impact of different training data on the model's performance.  It compares the model trained on a combination of static multi-view and dynamic monocular videos (mixed data) against two alternatives: a model trained only on static multi-view data, and a model trained only on dynamic monocular data. The yellow boxes highlight key differences in the results, particularly demonstrating how using both static multi-view and dynamic monocular data improves the model's ability to handle occlusions, geometric distortions, and maintain motion consistency in the generated videos.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Ablation on the training data. We compare our model trained with mixed data to two alternatives: training without multi-view data and training without dynamic data. The yellow box highlights the most prominent differences of occulusions, geometric distortions, and motion consistency.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_rr ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="7" id="S4.T2.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:90%;">VBench </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_rr" id="S4.T2.1.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.2.1" style="font-size:90%;">Subject Consis.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.3.1" style="font-size:90%;">Background Consis.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.4.1" style="font-size:90%;">Temporal Flicker.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.5.1" style="font-size:90%;">Motion Smooth.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.6.1" style="font-size:90%;">Overall Consis.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.7.1" style="font-size:90%;">Aesthetic Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.2.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.8.1" style="font-size:90%;">Imaging Quality</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S4.T2.1.1.3.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.1.1" style="font-size:90%;">GCD</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.2.1" style="font-size:90%;">0.7677</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.3.1" style="font-size:90%;">0.8533</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.4.1" style="font-size:90%;">0.8215</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.5.1" style="font-size:90%;">0.8950</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.6.1" style="font-size:90%;">0.2321</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.7.1" style="font-size:90%;">0.4154</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.8.1" style="font-size:90%;">0.5203</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr" id="S4.T2.1.1.4.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.1.1" style="font-size:90%;">ViewCrafter</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.2.1" style="font-size:90%;">0.7305</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.3.1" style="font-size:90%;">0.8782</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.4.1" style="font-size:90%;">0.8954</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.5.1" style="font-size:90%;">0.9031</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.6.1" style="font-size:90%;">0.2432</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.7.1" style="font-size:90%;">0.4950</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.8.1" style="font-size:90%;">0.5548</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_rr" id="S4.T2.1.1.5.3.1" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.3.1.1" style="font-size:90%;background-color:#F2F2F2;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.5.3.2" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.2.1" style="font-size:90%;background-color:#F2F2F2;">0.9236</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.5.3.3" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.3.1" style="font-size:90%;background-color:#F2F2F2;">0.9512</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.5.3.4" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.4.1" style="font-size:90%;background-color:#F2F2F2;">0.9437</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.5.3.5" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.5.1" style="font-size:90%;background-color:#F2F2F2;">0.9815</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.5.3.6" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.6.1" style="font-size:90%;background-color:#F2F2F2;">0.2847</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.5.3.7" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.7.1" style="font-size:90%;background-color:#F2F2F2;">0.5920</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.5.3.8" style="background-color:#F2F2F2;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.8.1" style="font-size:90%;background-color:#F2F2F2;">0.6479</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of novel trajectory video synthesis methods on a large-scale, in-the-wild video benchmark dataset. The dataset consists of 100 real-world videos and 60 high-quality videos generated by text-to-video (T2V) models.  The table reports VBench scores, which are a set of metrics evaluating video quality and consistency across several aspects, for novel trajectory videos generated by three different methods: GCD [75], ViewCrafter [95], and the proposed method (TrajectoryCrafter).  The best results for each metric are highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 2:  VBench results on in-the-wild monocular videos. We compiled a large-scale in-the-wild video benchmark with 100 real-world and 60 high-quality T2V-generated videos, and report the VBench scores of novel trajectory videos from GCD [75], ViewCrafter [95], and our method. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_rr ltx_border_tt" id="S4.T3.3.3.3.4"><span class="ltx_text" id="S4.T3.3.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1.1" style="font-size:90%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.2.1" style="font-size:90%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.3.1" style="font-size:90%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S4.T3.3.3.4.1.1"><span class="ltx_text" id="S4.T3.3.3.4.1.1.1" style="font-size:90%;">Ours w/o Ref-DiT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.1.2"><span class="ltx_text" id="S4.T3.3.3.4.1.2.1" style="font-size:90%;">11.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.1.3"><span class="ltx_text" id="S4.T3.3.3.4.1.3.1" style="font-size:90%;">0.341</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.4.1.4"><span class="ltx_text" id="S4.T3.3.3.4.1.4.1" style="font-size:90%;">0.612</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr" id="S4.T3.3.3.5.2.1"><span class="ltx_text" id="S4.T3.3.3.5.2.1.1" style="font-size:90%;">Ours w/ concat. condition</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.2"><span class="ltx_text" id="S4.T3.3.3.5.2.2.1" style="font-size:90%;">11.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.3"><span class="ltx_text" id="S4.T3.3.3.5.2.3.1" style="font-size:90%;">0.352</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.4"><span class="ltx_text" id="S4.T3.3.3.5.2.4.1" style="font-size:90%;">0.627</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr" id="S4.T3.3.3.6.3.1"><span class="ltx_text" id="S4.T3.3.3.6.3.1.1" style="font-size:90%;">Ours w/o dynamic data</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.2"><span class="ltx_text" id="S4.T3.3.3.6.3.2.1" style="font-size:90%;">10.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.3"><span class="ltx_text" id="S4.T3.3.3.6.3.3.1" style="font-size:90%;">0.348</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.6.3.4"><span class="ltx_text" id="S4.T3.3.3.6.3.4.1" style="font-size:90%;">0.621</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_rr" id="S4.T3.3.3.7.4.1"><span class="ltx_text" id="S4.T3.3.3.7.4.1.1" style="font-size:90%;">Ours w/o mv data</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.2"><span class="ltx_text" id="S4.T3.3.3.7.4.2.1" style="font-size:90%;">12.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.3"><span class="ltx_text" id="S4.T3.3.3.7.4.3.1" style="font-size:90%;">0.361</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.4"><span class="ltx_text" id="S4.T3.3.3.7.4.4.1" style="font-size:90%;">0.588</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_rr" id="S4.T3.3.3.8.5.1" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T3.3.3.8.5.1.1" style="font-size:90%;background-color:#F2F2F2;">Ours full</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.8.5.2" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.8.5.2.1" style="font-size:90%;background-color:#F2F2F2;">14.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.8.5.3" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.8.5.3.1" style="font-size:90%;background-color:#F2F2F2;">0.417</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.8.5.4" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.8.5.4.1" style="font-size:90%;background-color:#F2F2F2;">0.519</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different components of the TrajectoryCrafter model on its performance.  Specifically, it compares the full model against versions where key components have been removed. These components include the Reference-conditioned Diffusion Transformer (Ref-DiT) blocks, the dual-stream conditioning (concat. condition), the dynamic data, and the multi-view (mv) data. The comparison is done using three metrics: Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS). The results are presented for each scene in the iPhone [23] dataset, with the best performance in each metric bolded. This table helps to understand the contribution of each component to the model's overall performance and identify areas for potential improvement.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study. We report the PSNR, SSIM, and LPIPS metrics for the full model and its ablated versions on the multi-view dataset, iphone [23]. The best results are highlighted in bold.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05638/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05638/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}