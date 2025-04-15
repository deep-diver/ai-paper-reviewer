---
title: "WildGS-SLAM: Monocular Gaussian Splatting SLAM in Dynamic Environments"
summary: "WildGS-SLAM: A novel monocular SLAM system robust to dynamic scenes, using uncertainty-aware mapping to remove distractors and improve reconstruction quality."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Stanford University",]
showSummary: true
date: 2025-04-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03886 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianhao Zheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03886" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03886" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03886/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Simultaneous Localization and Mapping (SLAM) in dynamic environments is challenging because traditional SLAM systems assume static scenes, leading to errors when objects move independently. Recent methods use motion segmentation or semantic info but struggle to generalize across varied motion patterns, especially with real-world distractions, occlusions, and lighting changes. Existing uncertainty-aware methods in scene reconstruction and view synthesis require camera poses as input.



To solve this, **WildGS-SLAM** leverages a 3D Gaussian Splatting (3DGS) representation robustly in dynamic environments using monocular RGB input. It integrates uncertainty-aware tracking and mapping, removing dynamic distractors without depth or semantic labels. A shallow multi-layer perceptron (MLP) and DINOv2 features predict per-pixel uncertainty, guiding dynamic object removal during tracking and mapping. This enhances dense bundle adjustment and Gaussian map optimization. Evaluation shows improved performance in dynamic environments compared to state-of-the-art methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WildGS-SLAM robustly handles dynamic environments without needing explicit depth or semantic labels. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new uncertainty-aware tracking and mapping pipeline removes dynamic distractors effectively. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Wild-SLAM Dataset enables comprehensive benchmarking in dynamic environments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces WildGS-SLAM, a novel monocular SLAM system, offering a robust solution for dynamic environments by integrating uncertainty-aware mapping. This approach enhances **reconstruction accuracy** and enables artifact-free view synthesis, paving the way for more reliable SLAM applications in real-world scenarios. It sets a new benchmark for SLAM in dynamic environments and opens avenues for uncertainty modeling in geometric mapping.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03886/x1.png)

> 🔼 WildGS-SLAM accurately tracks camera movement and reconstructs a 3D Gaussian map of static elements while ignoring dynamic objects in a monocular video.  The figure shows the final 3D Gaussian map, the camera's path (red line), and comparisons of the view synthesis quality with other SLAM methods. This highlights WildGS-SLAM's ability to produce high-fidelity renderings even in complex, dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Figure 1: WildGS-SLAM. Given a monocular video sequence captured in the wild with dynamic distractors, our method accurately tracks the camera trajectory and reconstructs a 3D Gaussian map for static elements, effectively removing all dynamic components. This approach enables high-fidelity rendering even in complex, dynamic scenes. The illustration presents the final 3D Gaussian map, the camera tracking trajectory (in red), and view synthesis comparisons with baseline methods.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S4.2.3">
<tr class="ltx_tr" id="S4.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.2.3.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.2.1" style="font-size:80%;">ANYmal1</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.3.1" style="font-size:80%;">ANYmal2</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.4.1" style="font-size:80%;">Ball</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.5.1" style="font-size:80%;">Crowd</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.6.1" style="font-size:80%;">Person</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.7.1" style="font-size:80%;">Racket</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.8.1" style="font-size:80%;">Stones</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.9.1" style="font-size:80%;">Table1</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.10.1" style="font-size:80%;">Table2</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.2.3.1.11.1" style="font-size:80%;">Umbrella</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.2.3.1.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.1.12.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="12" id="S4.2.3.2.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_italic" id="S4.2.3.2.1.1" style="font-size:80%;background-color:#EEEEEE;">RGB-D</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.3">
<td class="ltx_td ltx_align_left" id="S4.2.3.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.3.1.1" style="font-size:80%;">Refusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">palazzolo2019iros</span><span class="ltx_text" id="S4.2.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.2.1" style="font-size:80%;">4.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.3.1" style="font-size:80%;">5.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.4.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.5.1" style="font-size:80%;">91.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.6.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.7.1" style="font-size:80%;">10.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.8.1" style="font-size:80%;">39.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.9.1" style="font-size:80%;">99.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.10.1" style="font-size:80%;">101.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.11.1" style="font-size:80%;">10.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.3.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.3.12.1" style="font-size:80%;">37.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.4">
<td class="ltx_td ltx_align_left" id="S4.2.3.4.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.4.1.1" style="font-size:80%;">DynaSLAM (N+G) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span><span class="ltx_text" id="S4.2.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.2.1" style="font-size:80%;">1.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.3" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.3.1" style="font-size:80%;background-color:#FFFFB3;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.4" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.4.1" style="font-size:80%;background-color:#FFFFB3;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.5.1" style="font-size:80%;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.6" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.6.1" style="font-size:80%;background-color:#E1FFA8;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.7" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.7.1" style="font-size:80%;background-color:#FFFFB3;">0.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.8.1" style="font-size:80%;">2.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.9" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.9.1" style="font-size:80%;background-color:#FFFFB3;">1.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.10.1" style="font-size:80%;">34.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.11.1" style="font-size:80%;">34.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.4.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.4.12.1" style="font-size:80%;">7.84</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.5">
<td class="ltx_td ltx_align_left" id="S4.2.3.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.5.1.1" style="font-size:80%;">NICE-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Zhu2022CVPR</span><span class="ltx_text" id="S4.2.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.2.1" style="font-size:80%;">F</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.3.1" style="font-size:80%;">123.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.4.1" style="font-size:80%;">21.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.5.1" style="font-size:80%;">F</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.6.1" style="font-size:80%;">150.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.7.1" style="font-size:80%;">F</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.8.1" style="font-size:80%;">134.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.9.1" style="font-size:80%;">138.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.10.1" style="font-size:80%;">F</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.11.1" style="font-size:80%;">23.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.5.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.5.12.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.6">
<td class="ltx_td ltx_align_left" colspan="12" id="S4.2.3.6.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S4.2.3.6.1.1">\hdashline</span><span class="ltx_text" id="S4.2.3.6.1.2" style="font-size:80%;">          </span><span class="ltx_text ltx_font_italic" id="S4.2.3.6.1.3" style="font-size:80%;background-color:#EEEEEE;">Monocular</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.2.3.7">
<td class="ltx_td ltx_align_left" id="S4.2.3.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.7.1.1" style="font-size:80%;">DSO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Engel2017PAMI</span><span class="ltx_text" id="S4.2.3.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.2.1" style="font-size:80%;">12.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.3.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.4.1" style="font-size:80%;">1.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.5.1" style="font-size:80%;">88.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.6.1" style="font-size:80%;">9.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.7.1" style="font-size:80%;">3.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.8.1" style="font-size:80%;">41.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.9.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.10.1" style="font-size:80%;">85.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.11.1" style="font-size:80%;">26.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.7.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.7.12.1" style="font-size:80%;">32.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.8">
<td class="ltx_td ltx_align_left" id="S4.2.3.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.8.1.1" style="font-size:80%;">DROID-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">teed2021droid</span><span class="ltx_text" id="S4.2.3.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.2" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.2.1" style="font-size:80%;background-color:#FFFFB3;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.3.1" style="font-size:80%;">4.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.4.1" style="font-size:80%;">1.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.5.1" style="font-size:80%;">2.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.6" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.6.1" style="font-size:80%;background-color:#FFFFB3;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.7.1" style="font-size:80%;">1.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.8.1" style="font-size:80%;">3.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.9.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.10.1" style="font-size:80%;">95.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.11.1" style="font-size:80%;">3.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.8.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.8.12.1" style="font-size:80%;">16.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.9">
<td class="ltx_td ltx_align_left" id="S4.2.3.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.9.1.1" style="font-size:80%;">DynaSLAM (RGB) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span><span class="ltx_text" id="S4.2.3.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.2" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.2.1" style="font-size:80%;background-color:#FFFFB3;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.3" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.3.1" style="font-size:80%;background-color:#FFFFB3;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.4" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.4.1" style="font-size:80%;background-color:#FFFFB3;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.5" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.5.1" style="font-size:80%;background-color:#E1FFA8;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.6" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.9.6.1" style="font-size:80%;background-color:#BFFFBF;">0.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.7" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.7.1" style="font-size:80%;background-color:#E1FFA8;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.8" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.8.1" style="font-size:80%;background-color:#E1FFA8;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.9.1" style="font-size:80%;">1.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.10.1" style="font-size:80%;">42.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.11" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.11.1" style="font-size:80%;background-color:#FFFFB3;">1.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.9.12" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.9.12.1" style="font-size:80%;background-color:#FFFFB3;">5.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.10">
<td class="ltx_td ltx_align_left" id="S4.2.3.10.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.10.1.1" style="font-size:80%;">MonoGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.10.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span><span class="ltx_text" id="S4.2.3.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.2.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.3.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.4.1" style="font-size:80%;">7.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.5.1" style="font-size:80%;">70.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.6.1" style="font-size:80%;">55.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.7.1" style="font-size:80%;">67.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.8.1" style="font-size:80%;">39.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.9.1" style="font-size:80%;">24.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.10.1" style="font-size:80%;">118.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.11.1" style="font-size:80%;">35.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.10.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.10.12.1" style="font-size:80%;">47.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.11">
<td class="ltx_td ltx_align_left" id="S4.2.3.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.11.1.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.2.3.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.2" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.2.1" style="font-size:80%;background-color:#E1FFA8;">0.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.3" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.3.1" style="font-size:80%;background-color:#E1FFA8;">0.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.4" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.4.1" style="font-size:80%;background-color:#E1FFA8;">0.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.5" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.5.1" style="font-size:80%;background-color:#FFFFB3;">0.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.6.1" style="font-size:80%;">0.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.7" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.7.1" style="font-size:80%;background-color:#E1FFA8;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.8" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.8.1" style="font-size:80%;background-color:#FFFFB3;">1.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.9.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.10.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.11.1" style="font-size:80%;">5.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.11.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.11.12.1" style="font-size:80%;">8.71</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.12">
<td class="ltx_td ltx_align_left" id="S4.2.3.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.12.1.1" style="font-size:80%;">MonST3R-SW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.12.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang2024monst3r</span><span class="ltx_text" id="S4.2.3.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.2.1" style="font-size:80%;">3.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.3.1" style="font-size:80%;">21.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.4.1" style="font-size:80%;">6.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.5.1" style="font-size:80%;">14.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.6.1" style="font-size:80%;">7.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.7.1" style="font-size:80%;">13.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.8.1" style="font-size:80%;">11.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.9.1" style="font-size:80%;">4.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.10" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.10.1" style="font-size:80%;background-color:#FFFFB3;">33.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.11.1" style="font-size:80%;">5.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.12.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.12.12.1" style="font-size:80%;">12.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.13">
<td class="ltx_td ltx_align_left" id="S4.2.3.13.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.2.3.13.1.1" style="font-size:80%;">MegaSaM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.2.3.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">li2024megasam</span><span class="ltx_text" id="S4.2.3.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.2" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.2.1" style="font-size:80%;background-color:#FFFFB3;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.3.1" style="font-size:80%;">2.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.4.1" style="font-size:80%;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.5.1" style="font-size:80%;">1.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.6.1" style="font-size:80%;">3.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.7.1" style="font-size:80%;">1.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.8.1" style="font-size:80%;">3.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.9" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.9.1" style="font-size:80%;background-color:#E1FFA8;">1.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.10" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.10.1" style="font-size:80%;background-color:#E1FFA8;">9.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.11" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.11.1" style="font-size:80%;background-color:#E1FFA8;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.2.3.13.12" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.13.12.1" style="font-size:80%;background-color:#E1FFA8;">2.40</span></td>
</tr>
<tr class="ltx_tr" id="S4.2.3.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.2.3.14.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.1.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.2" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.2.1" style="font-size:80%;background-color:#BFFFBF;">0.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.3" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.3.1" style="font-size:80%;background-color:#BFFFBF;">0.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.4" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.4.1" style="font-size:80%;background-color:#BFFFBF;">0.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.5" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.5.1" style="font-size:80%;background-color:#BFFFBF;">0.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.2.3.14.6.1" style="font-size:80%;">0.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.7" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.7.1" style="font-size:80%;background-color:#BFFFBF;">0.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.8" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.8.1" style="font-size:80%;background-color:#BFFFBF;">0.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.9" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.9.1" style="font-size:80%;background-color:#BFFFBF;">0.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.10" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.10.1" style="font-size:80%;background-color:#BFFFBF;">1.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.11" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.11.1" style="font-size:80%;background-color:#BFFFBF;">0.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.2.3.14.12" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.2.3.14.12.1" style="font-size:80%;background-color:#BFFFBF;">0.46</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the WildGS-SLAM algorithm against 13 state-of-the-art visual simultaneous localization and mapping (SLAM) methods.  The comparison is based on the average trajectory error (ATE) Root Mean Squared Error (RMSE) in centimeters.  Lower ATE RMSE values indicate better performance. The evaluation is performed across multiple sequences from the Wild-SLAM MoCap dataset, which features various dynamic environments with challenging scenarios. The table highlights the superior performance of WildGS-SLAM in dynamic environments and underscores its robustness against moving objects and scene complexities.  The 'F' in some cells indicates that the algorithm failed to complete tracking for that specific sequence.
> <details>
> <summary>read the caption</summary>
> Table 1: Tracking Performance on our Wild-SLAM MoCap Dataset (ATE RMSE ↓↓\downarrow↓ [cm]). Best results are highlighted asfirst,second, andthird. All baseline methods were run using their publicly available code. For DynaSLAM (RGB), initialization is time-consuming for certain sequences, and only keyframe poses are generated and evaluated. ‘F’ denotes tracking failure.
> </details>





### In-depth insights


#### Dynamic SLAM
Dynamic SLAM presents a significant challenge in robotics and computer vision due to the inherent assumption of static environments in traditional SLAM systems. **Moving objects disrupt feature matching and photometric consistency**, leading to tracking errors. Recent advancements incorporate motion segmentation, semantic information, and depth-based cues, but generalization across varied motion patterns remains difficult. **Uncertainty-aware methods** are gaining traction for handling partial occlusions and noisy observations, offering valuable insights into modeling ambiguities. Addressing these limitations requires robust SLAM approaches that can effectively differentiate between static and dynamic elements, ensuring accurate tracking and mapping even in complex, real-world scenarios. The future of Dynamic SLAM lies in **integrating geometric and semantic understanding** to achieve reliable performance in dynamic environments.

#### 3D Gaussian Map
The paper leverages a **3D Gaussian Splatting (3DGS)** representation for scene reconstruction, aiming for robustness in dynamic environments. The core idea is to represent the static parts of the scene with a collection of **anisotropic Gaussians**, each characterized by color, opacity, mean, and covariance. During rendering, these 3D Gaussians are projected onto the 2D image plane, 'splatted' to generate the final image. A key aspect is the **differentiable rendering pipeline**, which allows for incremental map updates as new frames are processed, optimizing the Gaussian parameters to match the observed images. The approach offers a balance between rendering quality and computational efficiency and facilitates effective scene representation while filtering out dynamic elements based on the estimated uncertainty.

#### Uncertainty-Aware
The concept of "Uncertainty-Aware" is pivotal in contemporary SLAM systems, particularly when dealing with dynamic environments. **Incorporating uncertainty estimation allows the system to differentiate between static and dynamic elements**, leading to more robust and accurate mapping and localization. **Uncertainty quantification can be achieved through various methods**, such as Bayesian filtering, deep learning models trained to predict uncertainty, or geometric analysis to identify inconsistent features. This information is then used to weight observations during optimization, **reducing the influence of noisy or erroneous data from dynamic objects**. Effective uncertainty management enhances the reliability of tracking and reconstruction, resulting in artifact-free rendering and improved novel view synthesis, even in challenging real-world scenarios. **The 'Uncertainty-Aware' paradigm shifts the focus from merely detecting dynamic elements to understanding the reliability of each observation**, creating a more adaptive and resilient SLAM system.

#### Wild SLAM Data
**Wild SLAM Data** represents a significant leap towards robust SLAM in unconstrained environments. The term itself suggests a departure from traditional, well-structured datasets, embracing the complexities of real-world scenarios. Such data would inherently include dynamic elements, occlusions, varying lighting, and diverse object motions, all challenging the fundamental assumptions of static scene geometry in conventional SLAM systems. The emphasis on "Wild" data implies a need for SLAM algorithms to be more adaptive, generalizable, and capable of handling unpredictable environmental factors. Datasets of this nature would be invaluable for training and evaluating SLAM systems designed for applications in autonomous navigation, augmented reality, and robotics, where reliable performance in dynamic and unstructured environments is paramount. Furthermore, it drives innovation in uncertainty estimation and robust geometric mapping techniques, essential for achieving accurate localization and scene reconstruction in the face of real-world ambiguities.

#### Limitation
The paper acknowledges a **key limitation**: the online uncertainty predictor's performance is tied to the number of views capturing the same region. This implies that in scenarios with **limited viewpoints** or when dynamic objects persistently occlude areas, the system might struggle to accurately differentiate between static and dynamic elements. Introducing motion priors could help improve handling of dynamic scenes and tracking robustness. The method hinges on the ability to effectively discern between static and dynamic elements through uncertainty estimation. In cases where dynamic elements remain static for a certain number of frames the system may struggle to distinguish between them and the static background. **Limited camera movement** can lead to problems in differentiating dynamic object.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03886/extracted/6337032/figs/dataset/D455_cropped.png)

> 🔼 WildGS-SLAM processes RGB image sequences to simultaneously estimate camera poses and reconstruct a 3D Gaussian map of the static scene.  The system's robustness to dynamic environments stems from an uncertainty estimation module. This module uses a pretrained DINOv2 model to extract image features, which are then fed into a Multilayer Perceptron (MLP) to predict per-pixel uncertainty.  This uncertainty map is then used to weigh the dense bundle adjustment (DBA) during tracking, reducing the effect of moving objects. Monocular metric depth further aids pose estimation. The predicted uncertainty also influences the rendering loss during map optimization, improving the 3D Gaussian map's accuracy. The MLP and the 3D Gaussian map are optimized independently. 
> <details>
> <summary>read the caption</summary>
> Figure 2: System Overview. WildGS-SLAM takes a sequence of RGB images as input and simultaneously estimates the camera poses while building a 3D Gaussian map 𝒢𝒢\mathcal{G}caligraphic_G of the static scene. Our method is more robust to the dynamic environment due to the uncertainty estimation module, where a pretrained DINOv2 model [yue2025improving] is first used to extract the image features. An uncertainty MLP 𝒫𝒫\mathcal{P}caligraphic_P then utilizes the extracted features to predict per-pixel uncertainty. During the tracking, we leverage the predicted uncertainty as the weight in the dense bundle adjustment (DBA) layer to mitigate the impact of dynamic distractors. We further use monocular metric depth to facilitate the pose estimation. In the mapping module, the predicted uncertainty is incorporated into the rendering loss to update 𝒢𝒢\mathcal{G}caligraphic_G. Moreover, the uncertainty loss is computed in parallel to train 𝒫𝒫\mathcal{P}caligraphic_P. Note that 𝒫𝒫\mathcal{P}caligraphic_P and 𝒢𝒢\mathcal{G}caligraphic_G are optimized independently, as illustrated by the gradient flow in the gray dashed line. Faces are blurred to ensure anonymity.
> </details>



![](https://arxiv.org/html/2504.03886/extracted/6337032/figs/dataset/calibration_board.png)

> 🔼 This figure displays the results of input view synthesis using the WildGS-SLAM method on the Wild-SLAM MoCap dataset.  The images demonstrate the system's ability to accurately remove dynamic objects (distractors) from the scene reconstruction, regardless of the type of distractor present. The resulting 3D Gaussian maps generate realistic synthetic views that maintain high fidelity.  For privacy reasons, the faces of any people in the images have been blurred.
> <details>
> <summary>read the caption</summary>
> Figure 3: Input View Synthesis Results on our Wild-SLAM MoCap Dataset. Regardless of the distractor type, our method is able to remove distractors and render realistic images. Faces are blurred to ensure anonymity.
> </details>



![](https://arxiv.org/html/2504.03886/extracted/6337032/figs/dataset/scene1.png)

> 🔼 This figure visualizes novel view synthesis results from the Wild-SLAM MoCap dataset.  It presents several sequences, each showing comparisons between input views and renderings produced by WildGS-SLAM and other state-of-the-art methods.  The quality of the novel view synthesis is evaluated using PSNR (Peak Signal-to-Noise Ratio), and the corresponding PSNR values are displayed directly on the images. The figure showcases the effectiveness of WildGS-SLAM in generating high-fidelity, artifact-free renderings even in complex dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Figure 4: Novel View Synthesis Results on our Wild-SLAM MoCap Dataset. PSNR metrics (↑↑\uparrow↑) are included in images.
> </details>



![](https://arxiv.org/html/2504.03886/extracted/6337032/figs/dataset/scene2.png)

> 🔼 This figure showcases the results of input view synthesis using WildGS-SLAM on the Wild-SLAM iPhone Dataset.  Since depth data was unavailable for this dataset, only monocular methods are presented. The uncertainty map appears less sharp than expected because the DINOv2 feature extractor, used for uncertainty prediction, outputs feature maps at a significantly reduced resolution (1/14th of the original image). To maintain computational efficiency within the SLAM system, the resolution is further downsampled to 1/3rd of the original for the mapping stage. While this compromise reduces image sharpness, higher resolution maps are possible at the cost of decreased efficiency; supplementary materials contain further details and higher resolution results. Note that faces in the images have been blurred to maintain anonymity.
> <details>
> <summary>read the caption</summary>
> Figure 5: Input View Synthesis Results on our Wild-SLAM iPhone Dataset. We only show rendering results of monocular methods, as depth images are unavailable in this dataset. Note that our uncertainty map appears blurry, as DINOv2 outputs feature maps at 1/14 of the original resolution, and for mapping we also downsample to 1/3 of the original resolution, in order to maintain SLAM system efficiency. For a high-resolution, sharper uncertainty map, the resolution can be increased at the cost of some efficiency; further details and results are provided in the supplementary materials. Faces are blurred to ensure anonymity.
> </details>



![](https://arxiv.org/html/2504.03886/extracted/6337032/figs_rebuttal/online_uncertainty_input.png)

> 🔼 Figure 6 demonstrates the effectiveness of WildGS-SLAM on the Bonn RGB-D Dynamic Dataset, specifically showcasing its ability to handle dynamic objects and produce high-quality renderings.  The first row shows the 'Balloon' sequence; the comparison highlights WildGS-SLAM's superior performance compared to ReFusion and DynaSLAM (N+G), which struggle with removing the person entirely and producing artifacts respectively. The second row, featuring the 'Crowd' sequence, demonstrates how WildGS-SLAM outperforms DynaSLAM (N+G) by correctly identifying and removing dynamic objects, generating a clean and artifact-free rendering even in the presence of motion blur.
> <details>
> <summary>read the caption</summary>
> Figure 6: View Synthesis Results on Bonn RGB-D Dynamic Dataset [palazzolo2019iros]. We show results on the Balloon (first row) and Crowd (second row) sequences. For Balloon, ReFusion [palazzolo2019iros] fails to remove the person from the TSDF, and DynaSLAM(N+G)[bescos2018dynaslam] struggles with limited static information from multiple views, resulting in partial black masks. In Crowd, DynaSLAM(N+G)[bescos2018dynaslam] cannot detect dynamic regions, defaulting the original image as the inpainted result. In contrast, ours achieves superior rendering even with motion blur in the input.
> </details>



![](https://arxiv.org/html/2504.03886/extracted/6337032/figs_rebuttal/online_uncertainty_80.pth.png)

> 🔼 This figure shows an Intel RealSense D455 camera used for capturing data in the Wild-SLAM MoCap dataset.  The camera is shown from different angles, illustrating its setup and orientation during data collection. The image highlights the device's physical characteristics and provides context for understanding the camera's role in the data acquisition process.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2504.03886/extracted/6337032/figs_rebuttal/online_uncertainty_215.pth.png)

> 🔼 The figure shows a calibration board used to align the camera reference frame with OptiTrack's rigid body frame.  This is a crucial step in the dataset creation process, ensuring accurate alignment between the camera's perspective and the ground truth data obtained from the motion capture system. The board provides a set of known 3D points, whose corresponding 2D projections in the camera image are used to calculate the transformation matrix between the two coordinate systems.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2504.03886/extracted/6337032/figs_rebuttal/online_uncertainty_451.pth.png)

> 🔼 This figure shows the second static scene used in the Wild-SLAM MoCap dataset.  It depicts a scene with multiple objects (a table, a gripper, and various items) that would constitute a relatively complex static scene for a SLAM system to reconstruct. This image is presented alongside other images illustrating the camera setup and a sample static scene in the dataset, highlighting the variety of static scenes in the dataset.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F3.18">
<tr class="ltx_tr" id="S4.F3.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.6.6.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F3.6.6.7.1" style="font-size:80%;position:relative; bottom:21.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F3.6.6.7.1.1" style="width:4.9pt;height:30.5pt;vertical-align:-12.8pt;"><span class="ltx_transformed_inner" style="width:30.5pt;transform:translate(-12.83pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F3.6.6.7.1.1.1"><span class="ltx_text" id="S4.F3.6.6.7.1.1.1.1" style="font-size:88%;">ANYmal2</span></span>
</span></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.1.1.1.g1" src="extracted/6337032/figs/input_view/our_ANYmal2/refusion.jpg" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.2.2.2.g1" src="extracted/6337032/figs/input_view/our_ANYmal2/dynaslam_resize.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.3.3.3" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.3.3.3.g1" src="extracted/6337032/figs/input_view/our_ANYmal2/monoGS.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.4.4.4" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.4.4.4.g1" src="extracted/6337032/figs/input_view/our_ANYmal2/splat-slam.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.5.5.5" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.5.5.5.g1" src="extracted/6337032/figs/input_view/our_ANYmal2/ours.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.6.6.6" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.6.6.6.g1" src="extracted/6337032/figs/input_view/our_ANYmal2/frame_00890.png" width="93"/></td>
</tr>
<tr class="ltx_tr" id="S4.F3.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.12.12.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F3.12.12.7.1" style="font-size:80%;position:relative; bottom:21.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F3.12.12.7.1.1" style="width:5.5pt;height:22.7pt;vertical-align:-8.6pt;"><span class="ltx_transformed_inner" style="width:22.7pt;transform:translate(-8.62pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F3.12.12.7.1.1.1">Stones</span>
</span></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.7.7.1" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.7.7.1.g1" src="extracted/6337032/figs/input_view/our_stones/refusion.jpg" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.8.8.2" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.8.8.2.g1" src="extracted/6337032/figs/input_view/our_stones/dynaslam_resize.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.9.9.3" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.9.9.3.g1" src="extracted/6337032/figs/input_view/our_stones/monoGS.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.10.10.4" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.10.10.4.g1" src="extracted/6337032/figs/input_view/our_stones/splat-slam.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.11.11.5" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.11.11.5.g1" src="extracted/6337032/figs/input_view/our_stones/ours.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.12.12.6" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.12.12.6.g1" src="extracted/6337032/figs/input_view/our_stones/frame_00432.png" width="93"/></td>
</tr>
<tr class="ltx_tr" id="S4.F3.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.18.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F3.18.18.7.1" style="font-size:80%;position:relative; bottom:21.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F3.18.18.7.1.1" style="width:5.6pt;height:32pt;vertical-align:-13.2pt;"><span class="ltx_transformed_inner" style="width:32.0pt;transform:translate(-13.23pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F3.18.18.7.1.1.1">Umbrella</span>
</span></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.13.13.1" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.13.13.1.g1" src="extracted/6337032/figs/input_view/our_umbrella/refusion.jpg" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.14.14.2" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.14.14.2.g1" src="extracted/6337032/figs/input_view/our_umbrella/dynaslam_resize.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.15.15.3" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.15.15.3.g1" src="extracted/6337032/figs/input_view/our_umbrella/monoGS.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.16.16.4" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.16.16.4.g1" src="extracted/6337032/figs/input_view/our_umbrella/splat-slam.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.17.17.5" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.17.17.5.g1" src="extracted/6337032/figs/input_view/our_umbrella/ours.png" width="93"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.18.6" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="53" id="S4.F3.18.18.6.g1" src="extracted/6337032/figs/input_view/our_umbrella/frame_00320.png" width="93"/></td>
</tr>
<tr class="ltx_tr" id="S4.F3.18.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.F3.18.19.1" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.19.2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F3.18.19.2.1" style="font-size:80%;">ReFusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.18.19.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">palazzolo2019iros</span><span class="ltx_text" id="S4.F3.18.19.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.19.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F3.18.19.3.1" style="font-size:80%;">DynaSLAM (N+G) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.18.19.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span><span class="ltx_text" id="S4.F3.18.19.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.19.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F3.18.19.4.1" style="font-size:80%;">MonoGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.18.19.4.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span><span class="ltx_text" id="S4.F3.18.19.4.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.19.5" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F3.18.19.5.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F3.18.19.5.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.F3.18.19.5.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.19.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.F3.18.19.6.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F3.18.19.7" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F3.18.19.7.1" style="font-size:80%;">Input</span></td>
</tr>
<tr class="ltx_tr" id="S4.F3.18.20">
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="S4.F3.18.20.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.F3.18.20.1.1" style="font-size:80%;">RGB-D input</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="S4.F3.18.20.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.F3.18.20.2.1" style="font-size:80%;">Monocular input</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.F3.18.20.3" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of novel view synthesis quality on the Wild-SLAM MoCap dataset.  It compares the performance of WildGS-SLAM against several baseline methods.  Metrics used include Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS).  Higher PSNR and SSIM scores, along with lower LPIPS scores, indicate better view synthesis quality. The results are broken down by sequence within the dataset, allowing for detailed analysis of method performance across various scenes and dynamic object conditions.
> <details>
> <summary>read the caption</summary>
> Table 2: Novel View Synthesis Evaluation on our Wild-SLAM MoCap Dataset. Best results are in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.6">
<tr class="ltx_tr" id="S4.T2.6.6.7">
<td class="ltx_td ltx_border_tt" id="S4.T2.6.6.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T2.6.6.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.3.1" style="font-size:80%;">ANYmal1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.4.1" style="font-size:80%;">ANYmal2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.5.1" style="font-size:80%;">Ball</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.6.1" style="font-size:80%;">Crowd</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.7.1" style="font-size:80%;">Person</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.8.1" style="font-size:80%;">Racket</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.9.1" style="font-size:80%;">Stones</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.10.1" style="font-size:80%;">Table1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.11.1" style="font-size:80%;">Table2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.7.12.1" style="font-size:80%;">Umbrella</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.7.13.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="13" id="S4.T2.6.6.8.1" style="background-color:#EEEEEE;padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.8.1.1" style="font-size:80%;background-color:#EEEEEE;">Monocular</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.1.2" rowspan="3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T2.1.1.1.2.1.1" style="width:160.5pt;height:8pt;vertical-align:-2.0pt;"><span class="ltx_transformed_inner" style="width:160.5pt;transform:translate(0pt,3pt) rotate(-0deg) ;">
<span class="ltx_p" id="S4.T2.1.1.1.2.1.1.1">Splat-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span>]</cite></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:80%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1" style="font-size:80%;">19.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.4.1" style="font-size:80%;">20.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.5.1" style="font-size:80%;">17.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.6.1" style="font-size:80%;">16.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.7.1" style="font-size:80%;">18.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.8.1" style="font-size:80%;">16.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.9.1" style="font-size:80%;">17.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.10.1" style="font-size:80%;">17.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.11.1" style="font-size:80%;">11.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.12.1" style="font-size:80%;">16.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.13.1" style="font-size:80%;">17.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_left" id="S4.T2.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.2.2.2.1.1" style="font-size:80%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.2.1" style="font-size:80%;">0.786</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.3.1" style="font-size:80%;">0.800</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.4.1" style="font-size:80%;">0.702</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.5.1" style="font-size:80%;">0.693</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.6.1" style="font-size:80%;">0.754</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.7.1" style="font-size:80%;">0.699</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.8.1" style="font-size:80%;">0.711</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.9.1" style="font-size:80%;">0.717</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.10.1" style="font-size:80%;">0.458</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.11.1" style="font-size:80%;">0.667</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.12.1" style="font-size:80%;">0.699</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.3.3.3.1.1" style="font-size:80%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.2.1" style="font-size:80%;">0.313</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.3.1" style="font-size:80%;">0.278</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.4.1" style="font-size:80%;">0.294</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.5.1" style="font-size:80%;">0.356</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.6.1" style="font-size:80%;">0.298</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.7.1" style="font-size:80%;">0.301</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.8.1" style="font-size:80%;">0.291</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.9.1" style="font-size:80%;">0.312</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.10.1" style="font-size:80%;">0.650</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.11.1" style="font-size:80%;">0.362</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.3.3.3.12.1" style="font-size:80%;">0.346</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.4.4.4.2" rowspan="3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.4.4.2.1.1" style="width:79.1pt;height:8pt;vertical-align:-2.0pt;"><span class="ltx_transformed_inner" style="width:79.1pt;transform:translate(0pt,3pt) rotate(-0deg) ;">
<span class="ltx_p" id="S4.T2.4.4.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.2.1.1.1.1">WildGS-SLAM (Ours)</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.4.4.4.1.1" style="font-size:80%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.3.1" style="font-size:80%;">21.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1" style="font-size:80%;">21.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.5.1" style="font-size:80%;">20.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.6.1" style="font-size:80%;">21.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.7.1" style="font-size:80%;">20.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.8.1" style="font-size:80%;">20.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.9.1" style="font-size:80%;">20.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.10.1" style="font-size:80%;">20.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.11.1" style="font-size:80%;">19.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.12.1" style="font-size:80%;">20.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.13.1" style="font-size:80%;">20.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.5.5.5.1.1" style="font-size:80%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.2.1" style="font-size:80%;">0.807</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.3.1" style="font-size:80%;">0.832</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.4.1" style="font-size:80%;">0.754</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.5.1" style="font-size:80%;">0.802</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.6.1" style="font-size:80%;">0.801</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.7.1" style="font-size:80%;">0.785</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.8.1" style="font-size:80%;">0.768</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.9.1" style="font-size:80%;">0.788</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.10.1" style="font-size:80%;">0.728</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.11.1" style="font-size:80%;">0.766</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.12.1" style="font-size:80%;">0.783</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T2.6.6.6.1.1" style="font-size:80%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.1.m1.1a"><mo id="S4.T2.6.6.6.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.2.1" style="font-size:80%;">0.211</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.3.1" style="font-size:80%;">0.230</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.4.1" style="font-size:80%;">0.191</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.5.1" style="font-size:80%;">0.176</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.6.1" style="font-size:80%;">0.189</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.7.1" style="font-size:80%;">0.186</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.8.1" style="font-size:80%;">0.185</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.9.1" style="font-size:80%;">0.209</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.10.1" style="font-size:80%;">0.303</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.11.1" style="font-size:80%;">0.210</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.12.1" style="font-size:80%;">0.209</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the Average Trajectory Error (ATE) and Root Mean Squared Error (RMSE) in centimeters for several visual Simultaneous Localization and Mapping (SLAM) algorithms. The evaluation was performed on the Bonn RGB-D Dynamic Dataset, which is specifically designed to test the robustness of SLAM algorithms in dynamic environments.  The table shows the performance of various methods across different dynamic scenes, including those with humans, moving objects, and complex interactions. Note that some methods are excluded due to being unavailable or encountering significant issues such as initialization failures or extended tracking loss. 'F' denotes failure.
> <details>
> <summary>read the caption</summary>
> Table 3: Tracking Performance on Bonn RGB-D Dynamic Dataset [palazzolo2019iros] (ATE RMSE ↓↓\downarrow↓ [cm]). DDN-SLAM [li2024ddn] is not open source and does not report its RGB mode results on this dataset. DynaSLAM (RGB) [bescos2018dynaslam] consistently fails to initialize or experiences extended tracking loss across all sequences and therefore cannot be included in the table. ‘F’ indicates failure.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.F4.12.12">
<tr class="ltx_tr" id="S4.F4.6.6.6">
<td class="ltx_td ltx_align_center" id="S4.F4.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.6.6.6.7.1" style="font-size:80%;position:relative; bottom:24.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F4.6.6.6.7.1.1" style="width:5.6pt;height:34.9pt;vertical-align:-14.7pt;"><span class="ltx_transformed_inner" style="width:34.9pt;transform:translate(-14.67pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F4.6.6.6.7.1.1.1">ANYmal1</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.1.1.1.1.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.1.1.1.1.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.1.1.1.1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/ANYmal1_splat_slam_PSNR_19.80.png" width="96"/><span class="ltx_text" id="S4.F4.1.1.1.1.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.1.1.1.1.pic1.3.3.3.1.1" style="font-size:80%;">19.80</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.2.2.2.2.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.2.2.2.2.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.2.2.2.2.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/ANYmal1_ours_PSNR_23.15.png" width="96"/><span class="ltx_text" id="S4.F4.2.2.2.2.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.2.2.2.2.pic1.3.3.3.1.1" style="font-size:80%;">23.15</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.3.3.3.3.g1" src="extracted/6337032/figs/qualitative_nvs/ANYmal1_gt.png" width="96"/></td>
<td class="ltx_td ltx_align_center" id="S4.F4.6.6.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.6.6.6.8.1" style="font-size:80%;position:relative; bottom:24.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F4.6.6.6.8.1.1" style="width:5.6pt;height:14.1pt;vertical-align:-4.3pt;"><span class="ltx_transformed_inner" style="width:14.1pt;transform:translate(-4.28pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F4.6.6.6.8.1.1.1">Ball</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.4.4.4.4.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.4.4.4.4.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.4.4.4.4.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/basketball_splat_slam_PSNR_17.62.png" width="96"/><span class="ltx_text" id="S4.F4.4.4.4.4.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.4.4.4.4.pic1.3.3.3.1.1" style="font-size:80%;">17.62</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.5.5.5.5.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.5.5.5.5.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.5.5.5.5.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/basketball_ours_PSNR_26.32.png" width="96"/><span class="ltx_text" id="S4.F4.5.5.5.5.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.5.5.5.5.pic1.3.3.3.1.1" style="font-size:80%;">26.32</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.6.6.6.6.g1" src="extracted/6337032/figs/qualitative_nvs/basketball_gt.png" width="96"/></td>
</tr>
<tr class="ltx_tr" id="S4.F4.12.12.13">
<td class="ltx_td" id="S4.F4.12.12.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.13.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.12.12.13.2.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.12.12.13.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.F4.12.12.13.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.12.12.13.3.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.12.12.13.4.1" style="font-size:80%;">GT</span></td>
<td class="ltx_td" id="S4.F4.12.12.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.13.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.12.12.13.6.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.12.12.13.6.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.F4.12.12.13.6.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.13.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.12.12.13.7.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.13.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.12.12.13.8.1" style="font-size:80%;">GT</span></td>
</tr>
<tr class="ltx_tr" id="S4.F4.12.12.12">
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.12.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.12.12.12.7.1" style="font-size:80%;position:relative; bottom:24.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F4.12.12.12.7.1.1" style="width:5.6pt;height:34.9pt;vertical-align:-14.7pt;"><span class="ltx_transformed_inner" style="width:34.9pt;transform:translate(-14.67pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F4.12.12.12.7.1.1.1">ANYmal2</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.7.7.7.1.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.7.7.7.1.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.7.7.7.1.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/ANYmal2_splat_slam_PSNR_23.00.png" width="96"/><span class="ltx_text" id="S4.F4.7.7.7.1.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.7.7.7.1.pic1.3.3.3.1.1" style="font-size:80%;">23.00</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.8.8.8.2.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.8.8.8.2.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.8.8.8.2.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/ANYmal2_ours_PSNR_24.90.png" width="96"/><span class="ltx_text" id="S4.F4.8.8.8.2.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.8.8.8.2.pic1.3.3.3.1.1" style="font-size:80%;">24.90</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.9.9.9.3.g1" src="extracted/6337032/figs/qualitative_nvs/ANYmal2_gt.png" width="96"/></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.12.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.12.12.12.8.1" style="font-size:80%;position:relative; bottom:24.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F4.12.12.12.8.1.1" style="width:5.5pt;height:23.5pt;vertical-align:-9.0pt;"><span class="ltx_transformed_inner" style="width:23.5pt;transform:translate(-9.02pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F4.12.12.12.8.1.1.1">Person</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.10.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.10.10.10.4.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.10.10.10.4.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.10.10.10.4.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/person_tracking2_splat_slam_PSNR_18.70.png" width="96"/><span class="ltx_text" id="S4.F4.10.10.10.4.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.10.10.10.4.pic1.3.3.3.1.1" style="font-size:80%;">18.70</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.11.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.11.11.11.5.1" style="font-size:80%;"></span><svg class="ltx_picture" height="54" id="S4.F4.11.11.11.5.pic1" overflow="visible" version="1.1" width="99.69"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="translate(0,54) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="54" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="99.69"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.11.11.11.5.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6337032/figs/qualitative_nvs/person_tracking2_ours_PSNR_24.64.png" width="96"/><span class="ltx_text" id="S4.F4.11.11.11.5.pic1.2.2.2.2.1" style="font-size:80%;"> </span></foreignobject></g><g fill="#FFFFB4" stroke="#FFFFB4" transform="matrix(1.0 0.0 0.0 1.0 71.99 3.04)"><foreignobject color="#FFFFB4" height="7.13" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="25.21"><span class="ltx_text" id="S4.F4.11.11.11.5.pic1.3.3.3.1.1" style="font-size:80%;">24.64</span></foreignobject></g></g></svg>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="54" id="S4.F4.12.12.12.6.g1" src="extracted/6337032/figs/qualitative_nvs/person_tracking2_gt.png" width="96"/></td>
</tr>
<tr class="ltx_tr" id="S4.F4.12.12.14">
<td class="ltx_td" id="S4.F4.12.12.14.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.14.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.12.12.14.2.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.12.12.14.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.F4.12.12.14.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.12.12.14.3.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.14.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.12.12.14.4.1" style="font-size:80%;">GT</span></td>
<td class="ltx_td" id="S4.F4.12.12.14.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.14.6" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F4.12.12.14.6.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F4.12.12.14.6.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.F4.12.12.14.6.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.14.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F4.12.12.14.7.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.F4.12.12.14.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F4.12.12.14.8.1" style="font-size:80%;">GT</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a detailed overview of the WildGS-SLAM MoCap dataset, which is a newly created dataset used to evaluate the WildGS-SLAM method. For each sequence in the dataset, the table lists the name of the sequence, a description of the distractors present (moving objects that need to be filtered out by a SLAM algorithm), the number of frames in the sequence, and the length of the camera trajectory captured in meters. The static environment is also indicated.  This information is essential for understanding the characteristics of the dataset and how it was used to evaluate the performance of the proposed method.
> <details>
> <summary>read the caption</summary>
> Table 6: Overview of our WildGS-SLAM MoCap Dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F5.29">
<tr class="ltx_tr" id="S4.F5.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.7.7.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F5.7.7.8.1" style="font-size:80%;position:relative; bottom:33.6pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F5.7.7.8.1.1" style="width:7.1pt;height:27.2pt;vertical-align:-11.6pt;"><span class="ltx_transformed_inner" style="width:27.2pt;transform:translate(-10.07pt,2.33pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F5.7.7.8.1.1.1">Parking</span>
</span></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.1.1.1.g1" src="extracted/6337032/figs/outdoor/parking2/monoGS.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.2.2.2.g1" src="extracted/6337032/figs/outdoor/parking2/splatslam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.3.3.3" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.3.3.3.g1" src="extracted/6337032/figs/outdoor/parking2/ours.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.4.4.4" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.4.4.4.g1" src="extracted/6337032/figs/outdoor/parking2/frame_00184.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.5.5.5" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.5.5.5.g1" src="extracted/6337032/figs/outdoor/parking2/uncertainty.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.6.6.6" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.6.6.6.g1" src="extracted/6337032/figs/outdoor/parking2/megasam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.7.7.7" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.7.7.7.g1" src="extracted/6337032/figs/outdoor/parking2/monst3r.png" width="79"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.14.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.14.14.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F5.14.14.8.1" style="font-size:80%;position:relative; bottom:30.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F5.14.14.8.1.1" style="width:5.5pt;height:20.1pt;vertical-align:-7.3pt;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-7.32pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F5.14.14.8.1.1.1">Piano</span>
</span></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.8.8.1" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.8.8.1.g1" src="extracted/6337032/figs/outdoor/piano/monoGS.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.9.9.2" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.9.9.2.g1" src="extracted/6337032/figs/outdoor/piano/splatslam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.10.10.3" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.10.10.3.g1" src="extracted/6337032/figs/outdoor/piano/ours.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.11.11.4" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.11.11.4.g1" src="extracted/6337032/figs/outdoor/piano/frame_00090.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.12.12.5" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.12.12.5.g1" src="extracted/6337032/figs/outdoor/piano/uncertainty.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.13.13.6" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.13.13.6.g1" src="extracted/6337032/figs/outdoor/piano/megasam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.14.14.7" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.14.14.7.g1" src="extracted/6337032/figs/outdoor/piano/monst3r.png" width="79"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.21.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.21.21.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F5.21.21.8.1" style="font-size:80%;position:relative; bottom:30.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F5.21.21.8.1.1" style="width:5.5pt;height:20.9pt;vertical-align:-7.7pt;"><span class="ltx_transformed_inner" style="width:20.9pt;transform:translate(-7.72pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F5.21.21.8.1.1.1">Street</span>
</span></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.15.15.1" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.15.15.1.g1" src="extracted/6337032/figs/outdoor/street1/monoGS.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.16.16.2" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.16.16.2.g1" src="extracted/6337032/figs/outdoor/street1/splatslam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.17.17.3" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.17.17.3.g1" src="extracted/6337032/figs/outdoor/street1/ours.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.18.18.4" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.18.18.4.g1" src="extracted/6337032/figs/outdoor/street1/frame_00864_mosaic.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.19.19.5" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.19.19.5.g1" src="extracted/6337032/figs/outdoor/street1/uncertainty.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.20.20.6" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.20.20.6.g1" src="extracted/6337032/figs/outdoor/street1/megasam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.21.21.7" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.21.21.7.g1" src="extracted/6337032/figs/outdoor/street1/monst3r.png" width="79"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.28.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.28.28.8" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F5.28.28.8.1" style="font-size:80%;position:relative; bottom:30.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F5.28.28.8.1.1" style="width:5.5pt;height:21.1pt;vertical-align:-7.8pt;"><span class="ltx_transformed_inner" style="width:21.1pt;transform:translate(-7.83pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.F5.28.28.8.1.1.1">Tower</span>
</span></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.22.22.1" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.22.22.1.g1" src="extracted/6337032/figs/outdoor/tower/monoGS.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.23.23.2" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.23.23.2.g1" src="extracted/6337032/figs/outdoor/tower/splatslam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.24.24.3" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.24.24.3.g1" src="extracted/6337032/figs/outdoor/tower/ours.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.25.25.4" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.25.25.4.g1" src="extracted/6337032/figs/outdoor/tower/frame_00144.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.26.26.5" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.26.26.5.g1" src="extracted/6337032/figs/outdoor/tower/uncertainty.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.27.27.6" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.27.27.6.g1" src="extracted/6337032/figs/outdoor/tower/megasam.png" width="79"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.28.28.7" style="padding-left:1.5pt;padding-right:1.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="60" id="S4.F5.28.28.7.g1" src="extracted/6337032/figs/outdoor/tower/monst3r.png" width="79"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.29.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.F5.29.29.2" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.29.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F5.29.29.3.1" style="font-size:80%;">MonoGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F5.29.29.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span><span class="ltx_text" id="S4.F5.29.29.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.29.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F5.29.29.4.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F5.29.29.4.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.F5.29.29.4.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.29.5" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F5.29.29.5.1" style="font-size:80%;"></span><span class="ltx_text ltx_font_bold" id="S4.F5.29.29.5.2" style="font-size:80%;">WildGS-SLAM (Ours)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.29.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S4.F5.29.29.6.1" style="font-size:80%;">Input</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.29.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F5.29.29.1.1" style="font-size:80%;">Uncertainty </span><math alttext="\beta" class="ltx_Math" display="inline" id="S4.F5.29.29.1.m1.1"><semantics id="S4.F5.29.29.1.m1.1a"><mi id="S4.F5.29.29.1.m1.1.1" mathsize="80%" xref="S4.F5.29.29.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="S4.F5.29.29.1.m1.1b"><ci id="S4.F5.29.29.1.m1.1.1.cmml" xref="S4.F5.29.29.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.F5.29.29.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="S4.F5.29.29.1.m1.1d">italic_β</annotation></semantics></math><span class="ltx_text" id="S4.F5.29.29.1.2" style="font-size:80%;"> (</span><span class="ltx_text ltx_font_bold" id="S4.F5.29.29.1.3" style="font-size:80%;">Ours</span><span class="ltx_text" id="S4.F5.29.29.1.4" style="font-size:80%;">)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.29.7" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F5.29.29.7.1" style="font-size:80%;">MegaSaM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F5.29.29.7.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">li2024megasam</span><span class="ltx_text" id="S4.F5.29.29.7.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.F5.29.29.7.4" style="font-size:80%;"> Mask</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.29.8" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_text" id="S4.F5.29.29.8.1" style="font-size:80%;">MonST3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F5.29.29.8.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang2024monst3r</span><span class="ltx_text" id="S4.F5.29.29.8.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.F5.29.29.8.4" style="font-size:80%;"> Mask</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a comprehensive comparison of various visual SLAM (Simultaneous Localization and Mapping) methods, highlighting their key characteristics and capabilities.  The methods are categorized, and their suitability for handling dynamic environments, availability of open-source implementations, and reliance on prior knowledge (class priors) for object identification are clearly indicated. The use of object detection ('O') or semantic segmentation ('S') as a means of incorporating prior information is explicitly detailed.  The table also notes that in the experiments, the RGB mode of MonoGS was used.
> <details>
> <summary>read the caption</summary>
> Table 7: Overview of Baseline Methods. ‘Dynamic’ indicates whether the method explicitly addresses dynamic scenes. ‘Open Source’ specifies if a public implementation is available. ‘Prior Free’ refers to not using class priors, where ‘O’ represents object detection and ‘S’ denotes semantic segmentation. In all our experiments, we employ the RGB mode of MonoGS [matsuki2024gaussian].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS2.2.3.1">
<tr class="ltx_tr" id="S4.SS2.2.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS2.2.3.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.2.1" style="font-size:80%;">Balloon</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.3.1" style="font-size:80%;">Balloon2</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.4.1" style="font-size:80%;">Crowd</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.5.1" style="font-size:80%;">Crowd2</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.6.1" style="font-size:80%;">Person</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.7.1" style="font-size:80%;">Person2</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.8.1" style="font-size:80%;">Moving</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.SS2.2.3.1.1.9.1" style="font-size:80%;">Moving2</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.SS2.2.3.1.1.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.1.10.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S4.SS2.2.3.1.2.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_italic" id="S4.SS2.2.3.1.2.1.1" style="font-size:80%;background-color:#EEEEEE;">RGB-D</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.3">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.3.1.1" style="font-size:80%;">ReFusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">palazzolo2019iros</span><span class="ltx_text" id="S4.SS2.2.3.1.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.2.1" style="font-size:80%;">17.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.3.1" style="font-size:80%;">25.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.4.1" style="font-size:80%;">20.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.5.1" style="font-size:80%;">15.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.6.1" style="font-size:80%;">28.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.7.1" style="font-size:80%;">46.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.8.1" style="font-size:80%;">7.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.9.1" style="font-size:80%;">17.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.3.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.3.10.1" style="font-size:80%;">22.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.4">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.4.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.4.1.1" style="font-size:80%;">ORB-SLAM2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Mur2017TRO</span><span class="ltx_text" id="S4.SS2.2.3.1.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.2.1" style="font-size:80%;">6.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.3.1" style="font-size:80%;">23.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.4.1" style="font-size:80%;">4.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.5.1" style="font-size:80%;">9.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.6.1" style="font-size:80%;">6.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.7.1" style="font-size:80%;">7.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.8.1" style="font-size:80%;">3.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.9.1" style="font-size:80%;">3.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.4.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.4.10.1" style="font-size:80%;">6.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.5">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.5.1.1" style="font-size:80%;">DynaSLAM (N+G) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span><span class="ltx_text" id="S4.SS2.2.3.1.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.2" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.2.1" style="font-size:80%;background-color:#FFFFB3;">3.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.3.1" style="font-size:80%;">2.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.4" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.4.1" style="font-size:80%;background-color:#E1FFA8;">1.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.5" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.5.1" style="font-size:80%;background-color:#FFFFB3;">3.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.6.1" style="font-size:80%;">6.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.7.1" style="font-size:80%;">7.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.8.1" style="font-size:80%;">23.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.9.1" style="font-size:80%;">3.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.5.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.5.10.1" style="font-size:80%;">6.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.6">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.6.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.6.1.1" style="font-size:80%;">NICE-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Zhu2022CVPR</span><span class="ltx_text" id="S4.SS2.2.3.1.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.2.1" style="font-size:80%;">24.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.3.1" style="font-size:80%;">20.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.4.1" style="font-size:80%;">19.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.5.1" style="font-size:80%;">35.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.6.1" style="font-size:80%;">24.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.7.1" style="font-size:80%;">53.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.8.1" style="font-size:80%;">17.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.9.1" style="font-size:80%;">8.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.6.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.6.10.1" style="font-size:80%;">22.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.7">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.7.1.1" style="font-size:80%;">DG-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">xu2024dgslam</span><span class="ltx_text" id="S4.SS2.2.3.1.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.2.1" style="font-size:80%;">3.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.3.1" style="font-size:80%;">4.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.6.1" style="font-size:80%;">4.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.7.1" style="font-size:80%;">6.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.9.1" style="font-size:80%;">3.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.7.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.7.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.8">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.8.1.1" style="font-size:80%;">RoDyn-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">jiang2024rodyn</span><span class="ltx_text" id="S4.SS2.2.3.1.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.2.1" style="font-size:80%;">7.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.3.1" style="font-size:80%;">11.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.6.1" style="font-size:80%;">14.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.7.1" style="font-size:80%;">13.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.9.1" style="font-size:80%;">12.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.8.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.8.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.9">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.9.1.1" style="font-size:80%;">DDN-SLAM (RGB-D) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">li2024ddn</span><span class="ltx_text" id="S4.SS2.2.3.1.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.2" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.9.2.1" style="font-size:80%;background-color:#BFFFBF;">1.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.9.3.1" style="font-size:80%;">4.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.4" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.9.4.1" style="font-size:80%;background-color:#FFFFB3;">1.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.5" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.9.5.1" style="font-size:80%;background-color:#BFFFBF;">2.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.9.6.1" style="font-size:80%;">4.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.9.7.1" style="font-size:80%;">3.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.9.8.1" style="font-size:80%;">2.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.9.9.1" style="font-size:80%;">3.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.9.10" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.9.10.1" style="font-size:80%;background-color:#E1FFA8;">2.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.10">
<td class="ltx_td ltx_align_left" colspan="10" id="S4.SS2.2.3.1.10.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S4.SS2.2.3.1.10.1.1">\hdashline</span><span class="ltx_text" id="S4.SS2.2.3.1.10.1.2" style="font-size:80%;">            </span><span class="ltx_text ltx_font_italic" id="S4.SS2.2.3.1.10.1.3" style="font-size:80%;background-color:#EEEEEE;">Monocular</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.11">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.11.1.1" style="font-size:80%;">DSO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Engel2017PAMI</span><span class="ltx_text" id="S4.SS2.2.3.1.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.2.1" style="font-size:80%;">7.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.3.1" style="font-size:80%;">21.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.4.1" style="font-size:80%;">10.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.5.1" style="font-size:80%;">7.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.6.1" style="font-size:80%;">30.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.7.1" style="font-size:80%;">26.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.8.1" style="font-size:80%;">4.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.9.1" style="font-size:80%;">11.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.11.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.11.10.1" style="font-size:80%;">15.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.12">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.12.1.1" style="font-size:80%;">DROID-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.12.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">teed2021droid</span><span class="ltx_text" id="S4.SS2.2.3.1.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.2.1" style="font-size:80%;">7.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.3.1" style="font-size:80%;">4.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.4.1" style="font-size:80%;">5.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.5.1" style="font-size:80%;">6.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.6.1" style="font-size:80%;">4.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.7.1" style="font-size:80%;">5.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.8.1" style="font-size:80%;">2.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.9.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.12.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.12.10.1" style="font-size:80%;">4.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.13">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.13.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.13.1.1" style="font-size:80%;">MonoGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span><span class="ltx_text" id="S4.SS2.2.3.1.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.2.1" style="font-size:80%;">15.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.3.1" style="font-size:80%;">17.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.4.1" style="font-size:80%;">11.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.5.1" style="font-size:80%;">7.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.6.1" style="font-size:80%;">26.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.7.1" style="font-size:80%;">35.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.8.1" style="font-size:80%;">22.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.9.1" style="font-size:80%;">47.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.13.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.13.10.1" style="font-size:80%;">22.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.14">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.14.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.14.1.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.14.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.SS2.2.3.1.14.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.2.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.3.1" style="font-size:80%;">3.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.4.1" style="font-size:80%;">6.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.5.1" style="font-size:80%;">F</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.6.1" style="font-size:80%;">4.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.7.1" style="font-size:80%;">25.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.8.1" style="font-size:80%;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.9.1" style="font-size:80%;">3.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.14.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.14.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.15">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.15.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.15.1.1" style="font-size:80%;">DynaMoN (MS) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.15.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">schischka2023dynamon</span><span class="ltx_text" id="S4.SS2.2.3.1.15.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.2.1" style="font-size:80%;">6.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.3.1" style="font-size:80%;">3.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.4.1" style="font-size:80%;">6.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.5.1" style="font-size:80%;">5.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.6" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.15.6.1" style="font-size:80%;background-color:#BFFFBF;">2.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.7" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.7.1" style="font-size:80%;background-color:#FFFFB3;">3.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.8" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.8.1" style="font-size:80%;background-color:#E1FFA8;">1.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.9" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.9.1" style="font-size:80%;background-color:#E1FFA8;">2.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.15.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.15.10.1" style="font-size:80%;">4.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.16">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.16.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.16.1.1" style="font-size:80%;">DynaMoN (MS&amp;SS) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.16.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">schischka2023dynamon</span><span class="ltx_text" id="S4.SS2.2.3.1.16.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.2" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.16.2.1" style="font-size:80%;background-color:#E1FFA8;">2.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.3" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.16.3.1" style="font-size:80%;background-color:#FFFFB3;">2.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.16.4.1" style="font-size:80%;">3.5</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.5" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.16.5.1" style="font-size:80%;background-color:#E1FFA8;">2.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.16.6.1" style="font-size:80%;">14.8</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.7" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.16.7.1" style="font-size:80%;background-color:#BFFFBF;">2.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.8" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.16.8.1" style="font-size:80%;background-color:#BFFFBF;">1.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.9" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.16.9.1" style="font-size:80%;background-color:#FFFFB3;">2.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.16.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.16.10.1" style="font-size:80%;">4.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.17">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.17.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.17.1.1" style="font-size:80%;">MonST3R-SW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.17.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang2024monst3r</span><span class="ltx_text" id="S4.SS2.2.3.1.17.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.2.1" style="font-size:80%;">5.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.3.1" style="font-size:80%;">7.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.4.1" style="font-size:80%;">5.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.5.1" style="font-size:80%;">6.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.6.1" style="font-size:80%;">11.9</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.7.1" style="font-size:80%;">11.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.8.1" style="font-size:80%;">3.3</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.9.1" style="font-size:80%;">7.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.17.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.17.10.1" style="font-size:80%;">7.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.18">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.3.1.18.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S4.SS2.2.3.1.18.1.1" style="font-size:80%;">MegaSaM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.SS2.2.3.1.18.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">li2024megasam</span><span class="ltx_text" id="S4.SS2.2.3.1.18.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.2.1" style="font-size:80%;">3.7</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.3" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.3.1" style="font-size:80%;background-color:#E1FFA8;">2.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.4" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.4.1" style="font-size:80%;background-color:#E1FFA8;">1.6</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.5.1" style="font-size:80%;">7.2</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.6" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.6.1" style="font-size:80%;background-color:#FFFFB3;">4.1</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.7.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.8" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.8.1" style="font-size:80%;background-color:#E1FFA8;">1.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.9.1" style="font-size:80%;">3.4</span></td>
<td class="ltx_td ltx_align_right" id="S4.SS2.2.3.1.18.10" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.18.10.1" style="font-size:80%;background-color:#FFFFB3;">3.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.3.1.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS2.2.3.1.19.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.19.1.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.2" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.19.2.1" style="font-size:80%;background-color:#E1FFA8;">2.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.3" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.19.3.1" style="font-size:80%;background-color:#BFFFBF;">2.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.4" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.19.4.1" style="font-size:80%;background-color:#BFFFBF;">1.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.5" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.19.5.1" style="font-size:80%;background-color:#BFFFBF;">2.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.6" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.19.6.1" style="font-size:80%;background-color:#E1FFA8;">3.1</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.7" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.19.7.1" style="font-size:80%;background-color:#E1FFA8;">2.7</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.8" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.SS2.2.3.1.19.8.1" style="font-size:80%;background-color:#FFFFB3;">1.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.9" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.19.9.1" style="font-size:80%;background-color:#BFFFBF;">2.2</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.SS2.2.3.1.19.10" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.3.1.19.10.1" style="font-size:80%;background-color:#BFFFBF;">2.31</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comparison of different visual SLAM methods' performance on the TUM RGB-D dataset [sturm2012benchmark], specifically focusing on the accuracy of camera trajectory estimation. The evaluation metric used is Average Trajectory Error (ATE) in centimeters (cm), with lower values indicating better performance.  The table highlights the top three performing methods for each sequence.  Because some methods lack complete scene coverage or readily available open-source code, asterisks (*) denote results obtained by running open-source implementations, while hyphens (-) represent missing data due to code unavailability or failure to initialize/track.  One method, DynaSLAM (RGB) [bescos2018dynaslam], is excluded due to consistent initialization failures or extended tracking losses across all sequences.
> <details>
> <summary>read the caption</summary>
> Table 8: Tracking Performance on TUM RGB-D Dataset [sturm2012benchmark] (ATE RMSE ↓↓\downarrow↓ [cm]). Best results are highlighted asfirst,second, andthird. For methods without complete scene coverage in the original reports, results obtained by running their open-source code are marked with ‘*’. If open-source code is unavailable, scenes without results are marked with ‘-’. DynaSLAM (RGB) [bescos2018dynaslam] consistently fails to initialize or experiences extended tracking loss across all sequences and therefore cannot be included in this table.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F6.12">
<tr class="ltx_tr" id="S4.F6.6.6">
<td class="ltx_td ltx_align_center" id="S4.F6.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.1.1.1.g1" src="extracted/6337032/figs/input_view/bonn_balloon_blur/refusion.jpg" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.2.2.2.g1" src="extracted/6337032/figs/input_view/bonn_balloon_blur/dynaslam.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.3.3.3.g1" src="extracted/6337032/figs/input_view/bonn_balloon_blur/monoGS.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.4.4.4.g1" src="extracted/6337032/figs/input_view/bonn_balloon_blur/splat-slam.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.5.5.5.g1" src="extracted/6337032/figs/input_view/bonn_balloon_blur/ours.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.6.6.6.g1" src="extracted/6337032/figs/input_view/bonn_balloon_blur/1548266471.82969.png" width="94"/></td>
</tr>
<tr class="ltx_tr" id="S4.F6.12.12">
<td class="ltx_td ltx_align_center" id="S4.F6.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.7.7.1.g1" src="extracted/6337032/figs/input_view/bonn_crowd/refusion.jpg" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.8.8.2.g1" src="extracted/6337032/figs/input_view/bonn_crowd/dynaslam.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.9.9.3.g1" src="extracted/6337032/figs/input_view/bonn_crowd/monoGS.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.10.10.4.g1" src="extracted/6337032/figs/input_view/bonn_crowd/splat-slam.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.11.11.5.g1" src="extracted/6337032/figs/input_view/bonn_crowd/ours.png" width="94"/></td>
<td class="ltx_td ltx_align_center" id="S4.F6.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S4.F6.12.12.6.g1" src="extracted/6337032/figs/input_view/bonn_crowd/1548339834.78926.png" width="94"/></td>
</tr>
<tr class="ltx_tr" id="S4.F6.12.13">
<td class="ltx_td ltx_align_center" id="S4.F6.12.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F6.12.13.1.1" style="font-size:80%;">ReFusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F6.12.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">palazzolo2019iros</span><span class="ltx_text" id="S4.F6.12.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F6.12.13.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F6.12.13.2.1" style="font-size:80%;">DynaSLAM (N+G) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F6.12.13.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span><span class="ltx_text" id="S4.F6.12.13.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F6.12.13.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F6.12.13.3.1" style="font-size:80%;">MonoGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F6.12.13.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span><span class="ltx_text" id="S4.F6.12.13.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F6.12.13.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.F6.12.13.4.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.F6.12.13.4.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S4.F6.12.13.4.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.F6.12.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F6.12.13.5.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.F6.12.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.F6.12.13.6.1" style="font-size:80%;">Input</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.12.14">
<td class="ltx_td ltx_align_center" colspan="2" id="S4.F6.12.14.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.F6.12.14.1.1" style="font-size:80%;">RGB-D input</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S4.F6.12.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.F6.12.14.2.1" style="font-size:80%;">Monocular input</span></td>
<td class="ltx_td" id="S4.F6.12.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a runtime analysis comparing the WildGS-SLAM system's performance to several other methods.  The analysis is conducted on two datasets and compares both a complete ('full') version of the WildGS-SLAM pipeline and a faster ('fast') version that employs several optimizations to improve processing speed.  The comparison metrics are frames per second (FPS) and the average Root Mean Square Error of Absolute Trajectory Error (ATE RMSE), measured in centimeters.  The table shows the trade-off between speed and accuracy achieved with the optimized method.
> <details>
> <summary>read the caption</summary>
> Table 9: Running time evaluation. For each dataset, we report the average FPS and RMSE of ATE [cm]. We logged the total running time to process a sequence and compute FPS by dividing the total number of processed frames by the total running time. Ours-full is the full pipeline presented, while Ours-fast is a fast version of WildGS-SLAM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T6.2.1">
<tr class="ltx_tr" id="S6.T6.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T6.2.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.2.1.1.1.1" style="font-size:144%;">Sequence Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.2.1.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.2.1.1.2.1" style="font-size:144%;">Distractors</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.2.1.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.2.1.1.3.1" style="font-size:144%;">Static Environment</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.2.1.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.2.1.1.4.1" style="font-size:144%;">Number of Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.2.1.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.2.1.1.5.1" style="font-size:144%;">Length of Trajectory [m]</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.2.1.2.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.2.1.1" style="font-size:144%;">ANYmal1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.1.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.2.2.1" style="font-size:144%;">ANYmal Robot</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.1.2.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.2.3.1" style="font-size:144%;">Scene 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.1.2.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.2.4.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.2.4.2" style="font-size:144%;">651</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.1.2.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.2.5.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.2.5.2" style="font-size:144%;">7.274</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.3">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.3.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.3.1.1" style="font-size:144%;">ANYmal2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.3.2.1" style="font-size:144%;">ANYmal Robot</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.3.3.1" style="font-size:144%;">Scene 1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.3.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.3.4.1" style="font-size:144%;">1210</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.3.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.3.5.1" style="font-size:144%;">11.567</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.4">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.4.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.4.1.1" style="font-size:144%;">Ball</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.4.2.1" style="font-size:144%;">Human, Basketball</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.4.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.4.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.4.4.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.4.4.2" style="font-size:144%;">931</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.4.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.4.5.1" style="font-size:144%;">11.759</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.5">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.5.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.5.1.1" style="font-size:144%;">Crowd</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.5.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.5.2.1" style="font-size:144%;">Human, Basketball, Bag</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.5.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.5.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.5.4.1" style="font-size:144%;">1268</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.5.5.1" style="font-size:144%;">14.189</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.6">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.6.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.6.1.1" style="font-size:144%;">Person</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.6.2.1" style="font-size:144%;">Human</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.6.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.6.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.6.4.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.6.4.2" style="font-size:144%;">986</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.6.5.1" style="font-size:144%;">10.354</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.7">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.7.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.7.1.1" style="font-size:144%;">Racket</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.7.2.1" style="font-size:144%;">Human, Racket</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.7.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.7.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.7.4.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.7.4.2" style="font-size:144%;">962</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.7.5.1" style="font-size:144%;">12.421</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.8">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.8.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.8.1.1" style="font-size:144%;">Stones</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.8.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.8.2.1" style="font-size:144%;">Human, Table, Bag, Gripper, Stone</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.8.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.8.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.8.4.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.8.4.2" style="font-size:144%;">962</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.8.5.1" style="font-size:144%;">12.421</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.9">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.9.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.9.1.1" style="font-size:144%;">Table1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.9.2.1" style="font-size:144%;">Human, Table, Gripper, Stone</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.9.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.9.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.9.4.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.9.4.2" style="font-size:144%;">561</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.9.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.9.5.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.9.5.2" style="font-size:144%;">6.592</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.10">
<td class="ltx_td ltx_align_left" id="S6.T6.2.1.10.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.10.1.1" style="font-size:144%;">Table2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.10.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.10.2.1" style="font-size:144%;">Human, Table, Gripper, Stone</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.10.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.10.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.10.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.10.4.1" style="font-size:144%;">1029</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.1.10.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.10.5.1" style="font-size:144%;">11.184</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T6.2.1.11.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S6.T6.2.1.11.1.1" style="font-size:144%;">Umbrella</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.1.11.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.11.2.1" style="font-size:144%;">Human, Umbrella</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.1.11.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S6.T6.2.1.11.3.1" style="font-size:144%;">Scene 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.1.11.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.11.4.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.11.4.2" style="font-size:144%;">458</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.1.11.5" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_phantom" id="S6.T6.2.1.11.5.1" style="font-size:144%;"><span style="visibility:hidden">1</span></span><span class="ltx_text" id="S6.T6.2.1.11.5.2" style="font-size:144%;">4.499</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a comparison of the tracking accuracy, measured by Absolute Trajectory Error (ATE) in centimeters, achieved by several visual SLAM methods on static sequences from the TUM RGB-D dataset. The table highlights the top three performers for each sequence. Data for ORB-SLAM2 and NICE-SLAM were sourced from the NICE-SLAM paper, while data for MonoGS and Splat-SLAM were sourced from the Splat-SLAM paper.  The results for DROID-SLAM were obtained by running its publicly available code.  The table showcases the relative performance of different methods in terms of tracking accuracy on these relatively simple, static scenes.
> <details>
> <summary>read the caption</summary>
> Table 10: Tracking Performance on TUM RGB-D Dataset (Static) [sturm2012benchmark] (ATE RMSE ↓↓\downarrow↓ [cm]). Best results are highlighted asfirst,second, andthird. Results for ORB-SLAM2 [Mur2017TRO] and NICE-SLAM [Zhu2022CVPR] are taken from NICE-SLAM [Zhu2022CVPR]. Results for MonoGS [matsuki2024gaussian] and Splat-SLAM [sandstrom2024splat] are taken from Splat-SLAM [sandstrom2024splat]. The results for DROID-SLAM [teed2021droid] are obtained by running their open-source code.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S7.SS1.tab1.1">
<tr class="ltx_tr" id="S7.SS1.tab1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.SS1.tab1.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.tab1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS1.tab1.1.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.tab1.1.1.2.1">Input Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS1.tab1.1.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.tab1.1.1.3.1">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS1.tab1.1.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.tab1.1.1.4.1">Open Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS1.tab1.1.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.tab1.1.1.5.1">Prior Free</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.SS1.tab1.1.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.tab1.1.1.6.1">Scene Representation</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S7.SS1.tab1.1.2.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_italic" id="S7.SS1.tab1.1.2.1.1" style="background-color:#EEEEEE;">Classic SLAM methods</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.3">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">DSO <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">Engel2017PAMI</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.3.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.3.3.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.3.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.3.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.3.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.3.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.3.6" style="padding-left:4.5pt;padding-right:4.5pt;">Sparse Point Cloud</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.4">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.4.1" style="padding-left:4.5pt;padding-right:4.5pt;">ORB-SLAM2 <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">Mur2017TRO</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.4.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.4.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.4.3.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.4.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.4.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.4.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.4.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.4.6" style="padding-left:4.5pt;padding-right:4.5pt;">Sparse Point Cloud</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.5">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">DROID-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">teed2021droid</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.5.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.5.3.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.5.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.5.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.5.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.5.6" style="padding-left:4.5pt;padding-right:4.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.6">
<td class="ltx_td ltx_align_left" colspan="6" id="S7.SS1.tab1.1.6.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S7.SS1.tab1.1.6.1.1">\hdashline</span>             <span class="ltx_text ltx_font_italic" id="S7.SS1.tab1.1.6.1.2" style="background-color:#EEEEEE;">Classic SLAM methods with dynamic environment handling</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.7">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">Refusion <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">palazzolo2019iros</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.7.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB-D</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.7.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.7.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.7.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.7.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.7.6" style="padding-left:4.5pt;padding-right:4.5pt;">TSDF</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.8">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">DynaSLAM (RGB) <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.8.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.8.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.8.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.8.5.1" style="color:#FF0A9C;">✗(S)</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.8.6" style="padding-left:4.5pt;padding-right:4.5pt;">Sparse Point Cloud</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.9">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">DynaSLAM (N+G) <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.9.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB-D</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.9.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.9.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.9.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.9.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.9.5.1" style="color:#FF0A9C;">✗(S)</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.9.6" style="padding-left:4.5pt;padding-right:4.5pt;">Sparse Point Cloud</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.10">
<td class="ltx_td ltx_align_left" colspan="6" id="S7.SS1.tab1.1.10.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S7.SS1.tab1.1.10.1.1">\hdashline</span>             <span class="ltx_text ltx_font_italic" id="S7.SS1.tab1.1.10.1.2" style="background-color:#EEEEEE;">Static neural implicit and 3DGS SLAM methods</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.11">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">NICE-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">Zhu2022CVPR</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.11.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB-D</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.11.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.11.3.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.11.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.11.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.11.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.11.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.11.6" style="padding-left:4.5pt;padding-right:4.5pt;">Neural Implicit</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.12">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">MonoGS <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.12.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB/RGB-D</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.12.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.12.3.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.12.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.12.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.12.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.12.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.12.6" style="padding-left:4.5pt;padding-right:4.5pt;">3D Gaussian Splatting</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.13">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.13.1" style="padding-left:4.5pt;padding-right:4.5pt;">SplatSLAM <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.13.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.13.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.13.3.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.13.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.13.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.13.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.13.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.13.6" style="padding-left:4.5pt;padding-right:4.5pt;">3D Gaussian Splatting</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.14">
<td class="ltx_td ltx_align_left" colspan="6" id="S7.SS1.tab1.1.14.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S7.SS1.tab1.1.14.1.1">\hdashline</span>             <span class="ltx_text ltx_font_italic" id="S7.SS1.tab1.1.14.1.2" style="background-color:#EEEEEE;">Concurrent neural implicit and 3DGS SLAM methods for dynamic scenes</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.15">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.15.1" style="padding-left:4.5pt;padding-right:4.5pt;">DG-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">xu2024dgslam</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.15.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB-D</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.15.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.15.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.15.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.15.4.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.15.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.15.5.1" style="color:#FF0A9C;">✗(S)</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.15.6" style="padding-left:4.5pt;padding-right:4.5pt;">3D Gaussian Splatting</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.16">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.16.1" style="padding-left:4.5pt;padding-right:4.5pt;">RoDyn-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">jiang2024rodyn</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.16.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB-D</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.16.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.16.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.16.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.16.4.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.16.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.16.5.1" style="color:#FF0A9C;">✗(S)</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.16.6" style="padding-left:4.5pt;padding-right:4.5pt;">Neural Implicit</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.17">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.17.1" style="padding-left:4.5pt;padding-right:4.5pt;">DDN-SLAM <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">li2024ddn</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.17.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB/RGB-D</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.17.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.17.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.17.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.17.4.1" style="color:#FF0A9C;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.17.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.17.5.1" style="color:#FF0A9C;">✗(O)</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.17.6" style="padding-left:4.5pt;padding-right:4.5pt;">Neural Implicit</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.18">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.18.1" style="padding-left:4.5pt;padding-right:4.5pt;">DynaMoN (MS) <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">schischka2023dynamon</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.18.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.18.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.18.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.18.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.18.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.18.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.18.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.18.6" style="padding-left:4.5pt;padding-right:4.5pt;">Neural Implicit</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.19">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.19.1" style="padding-left:4.5pt;padding-right:4.5pt;">DynaMoN (MS &amp; SS) <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">schischka2023dynamon</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.19.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.19.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.19.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.19.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.19.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.19.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.19.5.1" style="color:#FF0A9C;">✗(S)</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.19.6" style="padding-left:4.5pt;padding-right:4.5pt;">Neural Implicit</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.20">
<td class="ltx_td ltx_align_left" colspan="6" id="S7.SS1.tab1.1.20.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S7.SS1.tab1.1.20.1.1">\hdashline</span>             <span class="ltx_text ltx_font_italic" id="S7.SS1.tab1.1.20.1.2" style="background-color:#EEEEEE;">Recent feed-forward methods</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.21">
<td class="ltx_td ltx_align_left" id="S7.SS1.tab1.1.21.1" style="padding-left:4.5pt;padding-right:4.5pt;">MonST3R <cite class="ltx_cite ltx_citemacro_cite">[<span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang2024monst3r</span>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.21.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.21.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.21.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.21.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.21.4.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.21.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.21.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.SS1.tab1.1.21.6" style="padding-left:4.5pt;padding-right:4.5pt;">Dense Point cloud</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.tab1.1.22">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.SS1.tab1.1.22.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S7.SS1.tab1.1.22.1.1">\hdashline</span><span class="ltx_text ltx_font_bold" id="S7.SS1.tab1.1.22.1.2">WildGS-SLAM (Ours)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS1.tab1.1.22.2" style="padding-left:4.5pt;padding-right:4.5pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS1.tab1.1.22.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.22.3.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS1.tab1.1.22.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.22.4.1" style="color:#00E000;">✓*</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS1.tab1.1.22.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.tab1.1.22.5.1" style="color:#00E000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.SS1.tab1.1.22.6" style="padding-left:4.5pt;padding-right:4.5pt;">3D Gaussian Splatting</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of disparity regularization in the WildGS-SLAM system.  The study examines the effect of disparity regularization on tracking accuracy (measured by ATE RMSE in centimeters) before and after the final global bundle adjustment (BA).  The rows show different configurations: including/excluding the disparity regularization mask in the main tracking optimization and in the final global BA optimization.  Results are shown separately for 'Before BA' (before the final refinement) and 'After BA' (after the final refinement) stages, providing insights into how disparity regularization impacts both the initial tracking and the final refined pose estimates. The datasets used in the evaluation are specified in the table.
> <details>
> <summary>read the caption</summary>
> Table 11:  Ablation Study on Disparity Regularization (ATE RMSE ↓↓\downarrow↓ [cm]). For each dataset, we report the average tracking error before and after the final global BA. ‘Before BA’ denotes before final global BA. ‘After BA’ denotes after final global BA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.F8.12">
<tr class="ltx_tr" id="S7.F8.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.1.1.1" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.1.1.1.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_static/refusion.jpg" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.2.2.2" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.2.2.2.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_static/dynaslam.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.3.3.3" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.3.3.3.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_static/monoGS.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.4.4.4" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.4.4.4.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_static/splat-slam.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.5.5.5" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S7.F8.5.5.5.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_static/ours.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.6.6.6" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S7.F8.6.6.6.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_static/1341846241.094372.png" width="96"/></td>
</tr>
<tr class="ltx_tr" id="S7.F8.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.7.7.1" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.7.7.1.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_xyz/refusion.jpg" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.8.8.2" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.8.8.2.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_xyz/dynaslam.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.9.9.3" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.9.9.3.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_xyz/monoGS.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.10.10.4" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="72" id="S7.F8.10.10.4.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_xyz/splat-slam.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.11.11.5" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S7.F8.11.11.5.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_xyz/ours.png" width="96"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.12.12.6" style="padding-left:0.5pt;padding-right:0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="71" id="S7.F8.12.12.6.g1" src="extracted/6337032/figs/input_view/freiburg3_walking_xyz/1341846337.150037.png" width="96"/></td>
</tr>
<tr class="ltx_tr" id="S7.F8.12.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.12.13.1" style="padding-left:0.5pt;padding-right:0.5pt;">
<span class="ltx_text" id="S7.F8.12.13.1.1" style="font-size:80%;">Refusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.F8.12.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">palazzolo2019iros</span><span class="ltx_text" id="S7.F8.12.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.12.13.2" style="padding-left:0.5pt;padding-right:0.5pt;">
<span class="ltx_text" id="S7.F8.12.13.2.1" style="font-size:80%;">DynaSLAM (N+G) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.F8.12.13.2.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span><span class="ltx_text" id="S7.F8.12.13.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.12.13.3" style="padding-left:0.5pt;padding-right:0.5pt;">
<span class="ltx_text" id="S7.F8.12.13.3.1" style="font-size:80%;">MonoGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.F8.12.13.3.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span><span class="ltx_text" id="S7.F8.12.13.3.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.12.13.4" style="padding-left:0.5pt;padding-right:0.5pt;">
<span class="ltx_text" id="S7.F8.12.13.4.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.F8.12.13.4.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S7.F8.12.13.4.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.12.13.5" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text ltx_font_bold" id="S7.F8.12.13.5.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S7.F8.12.13.6" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text" id="S7.F8.12.13.6.1" style="font-size:80%;">Input</span></td>
</tr>
<tr class="ltx_tr" id="S7.F8.12.14">
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S7.F8.12.14.1" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S7.F8.12.14.1.1" style="font-size:80%;">RGB-D input</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="S7.F8.12.14.2" style="padding-left:0.5pt;padding-right:0.5pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S7.F8.12.14.2.1" style="font-size:80%;">Monocular input</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S7.F8.12.14.3" style="padding-left:0.5pt;padding-right:0.5pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of different distractor estimation methods on the accuracy of camera tracking in the WildGS-SLAM system.  The study compares the performance of WildGS-SLAM using three different approaches for identifying and removing dynamic objects (distractors): (1) the method proposed in the paper, (2) a combination of YOLOv8 and the Segment Anything Model (SAM), and (3) the distractor mask produced by the MonST3R method.  The average tracking error (ATE RMSE) is reported for each method on three datasets: Bonn, TUM, and Wild-SLAM.  The results help determine the effectiveness of the proposed distractor estimation technique compared to other approaches.
> <details>
> <summary>read the caption</summary>
> Table 12: Ablation Study on Distractor Estimation. (ATE RMSE ↓↓\downarrow↓ [cm]). For each dataset, we report the average tracking error.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S7.SS1.SSS0.Px3.2.3">
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.2.1" style="font-size:80%;">f2/dp</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.3.1" style="font-size:80%;">f3/ss</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.4.1" style="font-size:80%;">fr3/sx</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.5.1" style="font-size:80%;">f3/sr</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.6.1" style="font-size:80%;">f3/shs</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.7.1" style="font-size:80%;">f3/ws</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.8.1" style="font-size:80%;">f3/wx</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.9.1" style="font-size:80%;">f3/wr</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_typewriter" id="S7.SS1.SSS0.Px3.2.3.1.10.1" style="font-size:80%;">f3/whs</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S7.SS1.SSS0.Px3.2.3.1.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.1.11.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="11" id="S7.SS1.SSS0.Px3.2.3.2.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_italic" id="S7.SS1.SSS0.Px3.2.3.2.1.1" style="font-size:80%;background-color:#EEEEEE;">RGB-D</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.3">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.1.1" style="font-size:80%;">Refusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">palazzolo2019iros</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.2.1" style="font-size:80%;">4.9*</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.3" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.3.1" style="font-size:80%;background-color:#FFFFB3;">0.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.4.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.5.1" style="font-size:80%;">13.2*</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.6.1" style="font-size:80%;">11.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.7.1" style="font-size:80%;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.8.1" style="font-size:80%;">9.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.9.1" style="font-size:80%;">40.6*</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.10.1" style="font-size:80%;">10.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.3.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.3.11.1" style="font-size:80%;">10.73*</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.4">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.4.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.1.1" style="font-size:80%;">ORB-SLAM2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Mur2017TRO</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.2" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.4.2.1" style="font-size:80%;background-color:#BFFFBF;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.3" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.3.1" style="font-size:80%;background-color:#E1FFA8;">0.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.4" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.4.1" style="font-size:80%;background-color:#FFFFB3;">1.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.5.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.6.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.7.1" style="font-size:80%;">40.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.8.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.9.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.10.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.4.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.4.11.1" style="font-size:80%;">30.4</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.5">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.1.1" style="font-size:80%;">DynaSLAM (N+G) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">bescos2018dynaslam</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.2" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.2.1" style="font-size:80%;background-color:#E1FFA8;">0.7*</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.3.1" style="font-size:80%;">0.5*</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.4.1" style="font-size:80%;">1.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.5.1" style="font-size:80%;">2.7*</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.6" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.6.1" style="font-size:80%;background-color:#FFFFB3;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.7" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.7.1" style="font-size:80%;background-color:#E1FFA8;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.8" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.8.1" style="font-size:80%;background-color:#FFFFB3;">1.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.9" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.9.1" style="font-size:80%;background-color:#E1FFA8;">3.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.10.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.5.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.5.11.1" style="font-size:80%;">1.7*</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.6">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.6.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.1.1" style="font-size:80%;">NICE-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Zhu2022CVPR</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.2.1" style="font-size:80%;">88.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.3.1" style="font-size:80%;">1.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.4.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.6.1" style="font-size:80%;">8.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.7.1" style="font-size:80%;">79.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.8.1" style="font-size:80%;">86.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.9.1" style="font-size:80%;">244.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.10.1" style="font-size:80%;">152.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.6.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.6.11.1" style="font-size:80%;">83.6</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.7">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.1.1" style="font-size:80%;">DG-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">xu2024dgslam</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.2.1" style="font-size:80%;">3.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.4" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.4.1" style="font-size:80%;background-color:#FFFFB3;">1.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.7" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.7.1" style="font-size:80%;background-color:#E1FFA8;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.8.1" style="font-size:80%;">1.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.9.1" style="font-size:80%;">4.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.7.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.7.11.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.8">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.1.1" style="font-size:80%;">RoDyn-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">jiang2024rodyn</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.6.1" style="font-size:80%;">4.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.7.1" style="font-size:80%;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.8.1" style="font-size:80%;">8.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.10.1" style="font-size:80%;">5.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.8.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.8.11.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.9">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.1.1" style="font-size:80%;">DDN-SLAM (RGB-D) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">li2024ddn</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.4" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.4.1" style="font-size:80%;background-color:#FFFFB3;">1.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.6" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.6.1" style="font-size:80%;background-color:#FFFFB3;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.7.1" style="font-size:80%;">1.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.8" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.8.1" style="font-size:80%;background-color:#E1FFA8;">1.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.9" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.9.1" style="font-size:80%;background-color:#FFFFB3;">3.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.10.1" style="font-size:80%;">2.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.9.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.9.11.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.10">
<td class="ltx_td ltx_align_left" colspan="11" id="S7.SS1.SSS0.Px3.2.3.10.1" style="background-color:#EEEEEE;padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_ERROR undefined" id="S7.SS1.SSS0.Px3.2.3.10.1.1">\hdashline</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.10.1.2" style="font-size:80%;">            </span><span class="ltx_text ltx_font_italic" id="S7.SS1.SSS0.Px3.2.3.10.1.3" style="font-size:80%;background-color:#EEEEEE;">Monocular</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.11">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.1.1" style="font-size:80%;">DSO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">Engel2017PAMI</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.2.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.3.1" style="font-size:80%;">1.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.4.1" style="font-size:80%;">11.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.5.1" style="font-size:80%;">3.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.6.1" style="font-size:80%;">12.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.7.1" style="font-size:80%;">1.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.8.1" style="font-size:80%;">12.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.9.1" style="font-size:80%;">13.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.10.1" style="font-size:80%;">40.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.11.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.11.11.1" style="font-size:80%;">11.1</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.12">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.1.1" style="font-size:80%;">DROID-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">teed2021droid</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.2" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.12.2.1" style="font-size:80%;background-color:#BFFFBF;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.3" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.12.3.1" style="font-size:80%;background-color:#BFFFBF;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.4" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.4.1" style="font-size:80%;background-color:#E1FFA8;">0.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.5.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.6" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.12.6.1" style="font-size:80%;background-color:#BFFFBF;">1.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.7.1" style="font-size:80%;">1.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.8.1" style="font-size:80%;">1.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.9.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.10.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.12.11" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.12.11.1" style="font-size:80%;background-color:#E1FFA8;">1.62</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.13">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.13.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.1.1" style="font-size:80%;">MonoGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">matsuki2024gaussian</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.2.1" style="font-size:80%;">112.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.3.1" style="font-size:80%;">1.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.4.1" style="font-size:80%;">6.1</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.5.1" style="font-size:80%;">5.1</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.6.1" style="font-size:80%;">28.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.7.1" style="font-size:80%;">1.1</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.8.1" style="font-size:80%;">21.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.9.1" style="font-size:80%;">17.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.10.1" style="font-size:80%;">44.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.13.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.13.11.1" style="font-size:80%;">26.4</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.14">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.14.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.1.1" style="font-size:80%;">Splat-SLAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">sandstrom2024splat</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.2" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.2.1" style="font-size:80%;background-color:#E1FFA8;">0.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.3" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.14.3.1" style="font-size:80%;background-color:#BFFFBF;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.4" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.4.1" style="font-size:80%;background-color:#E1FFA8;">0.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.5" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.5.1" style="font-size:80%;background-color:#E1FFA8;">2.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.6" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.6.1" style="font-size:80%;background-color:#E1FFA8;">1.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.7.1" style="font-size:80%;">2.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.8" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.14.8.1" style="font-size:80%;background-color:#BFFFBF;">1.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.9" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.9.1" style="font-size:80%;background-color:#FFFFB3;">3.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.10.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.14.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.14.11.1" style="font-size:80%;">1.71</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.15">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.15.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.1.1" style="font-size:80%;">DynaMoN (MS) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">schischka2023dynamon</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.2" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.15.2.1" style="font-size:80%;background-color:#BFFFBF;">0.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.3" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.15.3.1" style="font-size:80%;background-color:#BFFFBF;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.4" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.4.1" style="font-size:80%;background-color:#E1FFA8;">0.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.5" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.15.5.1" style="font-size:80%;background-color:#BFFFBF;">2.1</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.6.1" style="font-size:80%;">1.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.7.1" style="font-size:80%;">1.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.8" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.8.1" style="font-size:80%;background-color:#E1FFA8;">1.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.9" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.9.1" style="font-size:80%;background-color:#FFFFB3;">3.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.10" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.10.1" style="font-size:80%;background-color:#FFFFB3;">2.0</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.15.11" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.15.11.1" style="font-size:80%;background-color:#FFFFB3;">1.63</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.16">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.16.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.1.1" style="font-size:80%;">DynaMoN (MS&amp;SS)  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">schischka2023dynamon</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.2" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.2.1" style="font-size:80%;background-color:#E1FFA8;">0.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.3" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.16.3.1" style="font-size:80%;background-color:#BFFFBF;">0.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.4" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.4.1" style="font-size:80%;background-color:#E1FFA8;">0.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.5" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.5.1" style="font-size:80%;background-color:#FFFFB3;">2.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.6.1" style="font-size:80%;">2.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.7" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.7.1" style="font-size:80%;background-color:#FFFFB3;">0.7</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.8" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.8.1" style="font-size:80%;background-color:#E1FFA8;">1.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.9" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.9.1" style="font-size:80%;background-color:#FFFFB3;">3.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.10" style="background-color:#E1FFA8;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.10.1" style="font-size:80%;background-color:#E1FFA8;">1.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.16.11" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.16.11.1" style="font-size:80%;background-color:#FFFFB3;">1.63</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.17">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.17.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.1.1" style="font-size:80%;">DDN-SLAM (RGB) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">li2024ddn</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.4.1" style="font-size:80%;">1.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.6.1" style="font-size:80%;">3.1</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.7.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.8.1" style="font-size:80%;">2.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.9.1" style="font-size:80%;">8.9</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.10.1" style="font-size:80%;">4.1</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.17.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.17.11.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.18">
<td class="ltx_td ltx_align_left" id="S7.SS1.SSS0.Px3.2.3.18.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.1.1" style="font-size:80%;">MonST3R-SW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.1.2.1" style="font-size:80%;">[</span><span class="ltx_ref ltx_missing_citation ltx_ref_self">zhang2024monst3r</span><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.2.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.3.1" style="font-size:80%;">2.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.4.1" style="font-size:80%;">28.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.5.1" style="font-size:80%;">5.4</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.6.1" style="font-size:80%;">36.5</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.7.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.8.1" style="font-size:80%;">27.3</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.9.1" style="font-size:80%;">13.6</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.10.1" style="font-size:80%;">19.8</span></td>
<td class="ltx_td ltx_align_right" id="S7.SS1.SSS0.Px3.2.3.18.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.18.11.1" style="font-size:80%;">20.8</span></td>
</tr>
<tr class="ltx_tr" id="S7.SS1.SSS0.Px3.2.3.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.1.1" style="font-size:80%;">WildGS-SLAM (Ours)</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.2" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.19.2.1" style="font-size:80%;background-color:#FFFFB3;">1.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.3" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.3.1" style="font-size:80%;background-color:#BFFFBF;">0.5</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.4" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.4.1" style="font-size:80%;background-color:#BFFFBF;">0.8</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.5" style="background-color:#FFFFB3;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.19.5.1" style="font-size:80%;background-color:#FFFFB3;">2.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S7.SS1.SSS0.Px3.2.3.19.6.1" style="font-size:80%;">2.0</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.7" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.7.1" style="font-size:80%;background-color:#BFFFBF;">0.4</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.8" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.8.1" style="font-size:80%;background-color:#BFFFBF;">1.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.9" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.9.1" style="font-size:80%;background-color:#BFFFBF;">3.3</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.10" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.10.1" style="font-size:80%;background-color:#BFFFBF;">1.6</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S7.SS1.SSS0.Px3.2.3.19.11" style="background-color:#BFFFBF;padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S7.SS1.SSS0.Px3.2.3.19.11.1" style="font-size:80%;background-color:#BFFFBF;">1.51</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the impact of different pre-trained models on the WildGS-SLAM system.  Specifically, it examines the effect of using different pre-trained models for depth estimation and visual feature extraction on both the novel view synthesis quality (measured by PSNR) and the accuracy of camera tracking (measured by ATE RMSE).  The study compares results on three datasets: Wild-SLAM, Bonn, and TUM. For the Wild-SLAM dataset, both PSNR and ATE RMSE are reported to show the effect on both reconstruction and tracking. For the Bonn and TUM datasets, only ATE RMSE is reported as novel view synthesis is not performed on those datasets.  This allows for a comprehensive analysis of how the choice of pre-trained model impacts the overall performance of the WildGS-SLAM system.
> <details>
> <summary>read the caption</summary>
> Table 13: Ablation Study on Different Pretrained Models. For the Wild-SLAM dataset, we report the novel view synthesis results (PSNR ↑↑\uparrow↑) and the tracking error (ATE RMSE ↓↓\downarrow↓ [cm]). For the Bonn and TUM datasets, we report the average tracking error (ATE RMSE ↓↓\downarrow↓ [cm]).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03886/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03886/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}