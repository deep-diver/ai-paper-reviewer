---
title: "Uni3C: Unifying Precisely 3D-Enhanced Camera and Human Motion Controls for Video Generation"
summary: "Uni3C: Precisely controlling 3D-enhanced camera and human motion for unified video generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 DAMO Academy, Alibaba Group",]
showSummary: true
date: 2025-04-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.14899 {{< /keyword >}}
{{< keyword icon="writer" >}} Chenjie Cao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.14899" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.14899" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.14899/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing video generation methods struggle with simultaneously controlling camera and human motion due to limited data with high-quality annotations for both. Addressing this, the study introduces a unified framework that leverages 3D enhancement, aiming for precise control over both camera movement and human actions in video generation. The key issue is the lack of explicit guidance incorporating 3D-informed priors to concurrently control both camera movements and human motions.



The paper presents two main innovations: a plug-and-play module, named PCDController, trained to ensure accurate camera control using 3D point clouds, also a jointly aligned 3D world guidance method to unify control signals for both camera and human motion. The PCDController module demonstrates strong robustness in driving camera motion. This framework shows superior performance compared to existing methods in both camera controllability and human motion quality. This also includes a validation datasets for challenging camera movements and human actions.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Uni3C, a unified framework for precise camera and human motion control in video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a plug-and-play control module (PCDController) that utilizes 3D point clouds for accurate camera control. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposes a jointly aligned 3D world guidance for seamless integration of scenic point clouds and SMPL-X characters. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **novel framework for video generation** by unifying camera and human motion controls, addressing the limitations of existing methods and **opening new possibilities for controllable video creation**. The **proposed techniques and benchmarks** will be valuable for researchers aiming to advance video generation and human-computer interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2504.14899/x1.png)

> 🔼 Figure 1 demonstrates the capabilities of the Uni3C framework. Starting with a single image from various sources (real-world scenes, text-to-image outputs, or animation), the system first estimates depth and focal length using Depth-Pro to generate a point cloud representation of the scene.  Uni3C then leverages this 3D information to generate videos controlled in three ways: (a) by specifying arbitrary camera trajectories; (b) by providing human motion data using SMPL-X characters, or (c) by combining both camera control and human motion control. Finally, (c) shows that Uni3C can transfer motion from a reference video to a new video with camera control.
> <details>
> <summary>read the caption</summary>
> Figure 1: Given a single-view image across various domains (e.g., real-world, text-to-image, animation), we first extract the monocular depth and focal length of it via Depth-Pro [6] and then achieve relative point clouds. Then, the proposed Uni3C can generate impressive videos under arbitrary camera trajectories (a), human motion characters (SMPL-X [36]), or both of these conditions (b). (c) Uni3C further supports the camera-controlled motion transfer.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.7.3">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S5.T1.7.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T1.7.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.5.1" style="font-size:70%;">Camera</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.6.1" style="font-size:70%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.7.1" style="font-size:70%;">Subject</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.8.1" style="font-size:70%;">Bg</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.9.1" style="font-size:70%;">Aesthetic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.10.1" style="font-size:70%;">Imaging</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.11.1" style="font-size:70%;">Temporal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.12.1" style="font-size:70%;">Motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.13.1" style="font-size:70%;">I2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.7.3.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.14.1" style="font-size:70%;">I2V</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.5.1.1.1" style="font-size:70%;">ATE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.5.1.1.1.m1.1"><semantics id="S5.T1.5.1.1.1.m1.1a"><mo id="S5.T1.5.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.1.1.1.m1.1b"><ci id="S5.T1.5.1.1.1.m1.1.1.cmml" xref="S5.T1.5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.2.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.6.2.2.1" style="font-size:70%;">RPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.6.2.2.1.m1.1"><semantics id="S5.T1.6.2.2.1.m1.1a"><mo id="S5.T1.6.2.2.1.m1.1.1" stretchy="false" xref="S5.T1.6.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.2.2.1.m1.1b"><ci id="S5.T1.6.2.2.1.m1.1.1.cmml" xref="S5.T1.6.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.3.3" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.7.3.3.1" style="font-size:70%;">RRE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.7.3.3.1.m1.1"><semantics id="S5.T1.7.3.3.1.m1.1a"><mo id="S5.T1.7.3.3.1.m1.1.1" stretchy="false" xref="S5.T1.7.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.3.3.1.m1.1b"><ci id="S5.T1.7.3.3.1.m1.1.1.cmml" xref="S5.T1.7.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.20.17.1">
<td class="ltx_td ltx_border_r" id="S5.T1.20.17.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.2.1" style="font-size:70%;">Plücker</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.20.17.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.3.1" style="font-size:70%;">Pcd</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.4.1" style="font-size:70%;">Score</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.5.1" style="font-size:70%;">Consist</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.6.1" style="font-size:70%;">Consist</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.7.1" style="font-size:70%;">Quality</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.8.1" style="font-size:70%;">Quality</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.9.1" style="font-size:70%;">Flicker</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.10.1" style="font-size:70%;">Smooth</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.20.17.1.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.11.1" style="font-size:70%;">Subject</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.20.17.1.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.17.1.12.1" style="font-size:70%;">Bg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.8.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T1.8.4.2.1" style="font-size:70%;">ViewCrafter </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.8.4.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.14899v1#bib.bib66" title="">66</a><span class="ltx_text" id="S5.T1.8.4.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T1.8.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.8.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.8.4.1.m1.1"><semantics id="S5.T1.8.4.1.m1.1a"><mi id="S5.T1.8.4.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.8.4.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.8.4.1.m1.1b"><ci id="S5.T1.8.4.1.m1.1.1.cmml" xref="S5.T1.8.4.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.4.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.4.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.4.1" style="font-size:70%;">85.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.5.1" style="font-size:70%;">89.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.6.1" style="font-size:70%;">91.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.7.1" style="font-size:70%;">55.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.8.1" style="font-size:70%;">64.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.9.1" style="font-size:70%;">92.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.10.1" style="font-size:70%;">97.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.11.1" style="font-size:70%;">95.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.8.4.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.12.1" style="font-size:70%;">96.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.13.1" style="font-size:70%;">0.210</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.14.1" style="font-size:70%;">0.117</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.4.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.8.4.15.1" style="font-size:70%;">0.873</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.9.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T1.9.5.2.1" style="font-size:70%;">SEVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.9.5.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.14899v1#bib.bib71" title="">71</a><span class="ltx_text" id="S5.T1.9.5.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.9.5.1.m1.1"><semantics id="S5.T1.9.5.1.m1.1a"><mi id="S5.T1.9.5.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.9.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.9.5.1.m1.1b"><ci id="S5.T1.9.5.1.m1.1.1.cmml" xref="S5.T1.9.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.5.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_border_r" id="S5.T1.9.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.4.1" style="font-size:70%;">87.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.5.1" style="font-size:70%;">91.86</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.6.1" style="font-size:70%;">93.37</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.7.1" style="font-size:70%;">56.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.8.1" style="font-size:70%;">68.43</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.9.1" style="font-size:70%;">95.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.10.1" style="font-size:70%;">98.59</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.11.1" style="font-size:70%;">97.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.5.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.9.5.12.1" style="font-size:70%;">97.23</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.5.13.1" style="font-size:70%;">0.077</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.9.5.14.1" style="font-size:70%;">0.029</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.5.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.9.5.15.1" style="font-size:70%;">0.223</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.10.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.2.1" style="font-size:70%;">Ours (CogVideoX)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.10.6.1.m1.1"><semantics id="S5.T1.10.6.1.m1.1a"><mi id="S5.T1.10.6.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.10.6.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.10.6.1.m1.1b"><ci id="S5.T1.10.6.1.m1.1.1.cmml" xref="S5.T1.10.6.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.10.6.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.10.6.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_border_r" id="S5.T1.10.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.4.1" style="font-size:70%;">86.48</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.5.1" style="font-size:70%;">93.17</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.6.1" style="font-size:70%;">93.02</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.7.1" style="font-size:70%;">55.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.8.1" style="font-size:70%;">66.75</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.9.1" style="font-size:70%;">95.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.10.1" style="font-size:70%;">98.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.11.1" style="font-size:70%;">94.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.10.6.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.12.1" style="font-size:70%;">95.94</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.13.1" style="font-size:70%;">0.356</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.14.1" style="font-size:70%;">0.162</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.6.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.10.6.15.1" style="font-size:70%;">1.280</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.11.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.11.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.2.1" style="font-size:70%;">Ours (CogVideoX)</span></td>
<td class="ltx_td" id="S5.T1.11.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.11.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.11.7.1.m1.1"><semantics id="S5.T1.11.7.1.m1.1a"><mi id="S5.T1.11.7.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.11.7.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.11.7.1.m1.1b"><ci id="S5.T1.11.7.1.m1.1.1.cmml" xref="S5.T1.11.7.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.11.7.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.11.7.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.4.1" style="font-size:70%;">87.22</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.5.1" style="font-size:70%;">91.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.6.1" style="font-size:70%;">92.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.7.1" style="font-size:70%;">56.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.8.1" style="font-size:70%;">69.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.9.1" style="font-size:70%;">94.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.10.1" style="font-size:70%;">98.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.11.1" style="font-size:70%;">96.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.11.7.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.12.1" style="font-size:70%;">97.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.13.1" style="font-size:70%;">0.123</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.14.1" style="font-size:70%;">0.045</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.7.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.11.7.15.1" style="font-size:70%;">0.346</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.12.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.2.1" style="font-size:70%;">Ours (Wan-I2V)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.12.8.1.m1.1"><semantics id="S5.T1.12.8.1.m1.1a"><mi id="S5.T1.12.8.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.12.8.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.12.8.1.m1.1b"><ci id="S5.T1.12.8.1.m1.1.1.cmml" xref="S5.T1.12.8.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.12.8.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.12.8.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_border_r" id="S5.T1.12.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.12.8.4.1" style="font-size:70%;">89.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.5.1" style="font-size:70%;">94.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.6.1" style="font-size:70%;">94.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.7.1" style="font-size:70%;">60.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.8.1" style="font-size:70%;">72.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.9.1" style="font-size:70%;">96.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.10.1" style="font-size:70%;">98.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.11.1" style="font-size:70%;">97.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.8.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.12.1" style="font-size:70%;">98.29</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.13.1" style="font-size:70%;">0.402</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.14.1" style="font-size:70%;">0.095</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.8.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.12.8.15.1" style="font-size:70%;">0.728</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.13.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.13.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.2.1" style="font-size:70%;">Ours (Wan-I2V)</span></td>
<td class="ltx_td" id="S5.T1.13.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.13.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.13.9.1.m1.1"><semantics id="S5.T1.13.9.1.m1.1a"><mi id="S5.T1.13.9.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.13.9.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.13.9.1.m1.1b"><ci id="S5.T1.13.9.1.m1.1.1.cmml" xref="S5.T1.13.9.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.13.9.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.13.9.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.4.1" style="font-size:70%;">87.95</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.5.1" style="font-size:70%;">91.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.6.1" style="font-size:70%;">92.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.7.1" style="font-size:70%;">58.52</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.8.1" style="font-size:70%;">71.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.9.1" style="font-size:70%;">95.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.10.1" style="font-size:70%;">98.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.11.1" style="font-size:70%;">97.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.13.9.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.13.9.12.1" style="font-size:70%;">97.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.13.9.13.1" style="font-size:70%;">0.091</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.13.9.14.1" style="font-size:70%;">0.028</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.9.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.13.9.15.1" style="font-size:70%;">0.211</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.15.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.15.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.3.1" style="font-size:70%;">PCDController</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.10.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.14.10.1.m1.1"><semantics id="S5.T1.14.10.1.m1.1a"><mi id="S5.T1.14.10.1.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.14.10.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.14.10.1.m1.1b"><ci id="S5.T1.14.10.1.m1.1.1.cmml" xref="S5.T1.14.10.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.14.10.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.14.10.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.15.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.15.11.2.m1.1"><semantics id="S5.T1.15.11.2.m1.1a"><mi id="S5.T1.15.11.2.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.15.11.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.15.11.2.m1.1b"><ci id="S5.T1.15.11.2.m1.1.1.cmml" xref="S5.T1.15.11.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.15.11.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.15.11.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.15.11.4.1" style="font-size:70%;">88.27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.5.1" style="font-size:70%;">92.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.6.1" style="font-size:70%;">93.37</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.7.1" style="font-size:70%;">58.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.8.1" style="font-size:70%;">71.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.9.1" style="font-size:70%;">95.56</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.10.1" style="font-size:70%;">98.66</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.11.1" style="font-size:70%;">97.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.15.11.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.12.1" style="font-size:70%;">98.01</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.13.1" style="font-size:70%;">0.102</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.14.1" style="font-size:70%;">0.031</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.11.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.15.11.15.1" style="font-size:70%;">0.246</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.17.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.16.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T1.16.12.1.1" style="font-size:70%;">Ours (Wan-I2V)</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S5.T1.16.12.1.m1.1"><semantics id="S5.T1.16.12.1.m1.1a"><mo id="S5.T1.16.12.1.m1.1.1" mathsize="70%" xref="S5.T1.16.12.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T1.16.12.1.m1.1b"><ci id="S5.T1.16.12.1.m1.1.1.cmml" xref="S5.T1.16.12.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.16.12.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S5.T1.16.12.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_t" id="S5.T1.17.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.17.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.17.13.2.m1.1"><semantics id="S5.T1.17.13.2.m1.1a"><mi id="S5.T1.17.13.2.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.17.13.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.17.13.2.m1.1b"><ci id="S5.T1.17.13.2.m1.1.1.cmml" xref="S5.T1.17.13.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.17.13.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.17.13.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.9.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.17.13.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.13.1" style="font-size:70%;">1.327</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.14.1" style="font-size:70%;">0.551</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.17.13.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.17.13.15.1" style="font-size:70%;">6.334</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.20.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T1.18.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T1.18.14.1.1" style="font-size:70%;">PCDController</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S5.T1.18.14.1.m1.1"><semantics id="S5.T1.18.14.1.m1.1a"><mo id="S5.T1.18.14.1.m1.1.1" mathsize="70%" xref="S5.T1.18.14.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T1.18.14.1.m1.1b"><ci id="S5.T1.18.14.1.m1.1.1.cmml" xref="S5.T1.18.14.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.18.14.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S5.T1.18.14.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.19.15.2.m1.1"><semantics id="S5.T1.19.15.2.m1.1a"><mi id="S5.T1.19.15.2.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.19.15.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.19.15.2.m1.1b"><ci id="S5.T1.19.15.2.m1.1.1.cmml" xref="S5.T1.19.15.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.19.15.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.19.15.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.20.16.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T1.20.16.3.m1.1"><semantics id="S5.T1.20.16.3.m1.1a"><mi id="S5.T1.20.16.3.m1.1.1" mathsize="70%" mathvariant="normal" xref="S5.T1.20.16.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T1.20.16.3.m1.1b"><ci id="S5.T1.20.16.3.m1.1.1.cmml" xref="S5.T1.20.16.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.20.16.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T1.20.16.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.4.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.5.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.6.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.7.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.8.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.9.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.10.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.11" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.11.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.20.16.12" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T1.20.16.12.1" style="font-size:70%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.13" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.20.16.13.1" style="font-size:70%;">1.010</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.14" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.20.16.14.1" style="font-size:70%;">0.416</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.20.16.15" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.20.16.15.1" style="font-size:70%;">4.428</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of different methods for camera control in video generation.  The metrics used are VBench++ scores (normalized to a higher-is-better scale), evaluating overall video quality, subject consistency, background consistency, aesthetic quality, image quality, flicker, smoothness, and subject and background presence.  Additionally, it includes absolute translation error (ATE), relative pose error (RPE), and relative rotation error (RRE) which are lower-is-better metrics representing camera trajectory precision.  The table shows results for methods using only Plücker ray features, those using both Plücker ray and point cloud features, and results under challenging 360-degree camera rotations. The results highlight the performance improvements achieved by incorporating point cloud data.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results of camera control. VBench++ scores (%) are normalized (higher is better). Injected camera features are divided as Plücker ray and point clouds (Pcd). ††\dagger† denotes the results with challenging 360∘ camera rotations.
> </details>





### In-depth insights


#### Uni3C Framework
The Uni3C framework represents a significant stride in unifying control over camera and human motion in video generation. Addressing the limitations of existing approaches that treat these controls separately, Uni3C introduces a **3D-enhanced framework** that leverages the strengths of both camera and human motion domains. By doing so, it mitigates the need for extensive, jointly-annotated datasets, a common bottleneck in this field. The framework likely incorporates a novel approach to represent and manipulate camera trajectories and human movements within a shared 3D space, allowing for more realistic and coherent video generation. A key innovation could be the use of **unprojected 3D point clouds** derived from monocular depth to achieve accurate camera control. This suggests a departure from traditional camera parameterizations, enabling finer-grained manipulation and greater robustness. Furthermore, the framework's ability to integrate both scenic point clouds and SMPL-X characters into a **jointly aligned 3D world guidance** system hints at a sophisticated mechanism for ensuring spatial consistency between the camera and human actors. This is crucial for generating believable interactions and avoiding artifacts. Uni3C likely employs a modular design, allowing for independent training of camera and human motion control components. This not only simplifies the training process but also enhances the framework's adaptability to different domains and datasets. The framework's success hinges on effectively capturing and representing the complex interplay between camera movement, human action, and scene geometry. By leveraging 3D priors and sophisticated alignment techniques, Uni3C appears to have overcome the limitations of previous approaches, paving the way for more controllable and realistic video generation.

#### PCDController:3D
Considering "PCDController: 3D", the focus would likely be on a module leveraging **3D geometric priors** for enhanced control. It could explore how point clouds, derived from monocular depth or multi-view stereo, are utilized to guide video generation. The architecture might involve **encoding point clouds into a latent space** that influences the diffusion process, potentially through cross-attention mechanisms. A key aspect could be the method's robustness to imperfect or incomplete point cloud data. The approach might also include strategies for handling viewpoint changes and occlusions in 3D, and how the 3D representations are aligned with other modalities like text or images. Further, the PCDController may demonstrate compatibility with various diffusion backbones. Training strategies for the PCDController, including datasets and loss functions, would also be important. The effectiveness of using 3D to enhance video generation quality and controllability is a core point. **Generalization capabilities** across diverse scenes and domains would be a significant advantage for this method.

#### Global 3D Unifier
The concept of a 'Global 3D Unifier' suggests a system aiming to integrate various 3D representations into a coherent framework. This would likely involve **aligning different coordinate systems and data formats**, such as point clouds, meshes, and implicit surfaces. A key challenge is handling varying levels of detail and noise inherent in different 3D capture methods. Such a unifier would be immensely valuable for applications like **robotic navigation, augmented reality, and 3D content creation**, enabling seamless interaction between virtual and real-world environments. Furthermore, a global 3D unifier could facilitate **transfer learning** between different 3D tasks and datasets, boosting performance and reducing data requirements. It would need to address issues of **scale, orientation, and occlusion** to create a consistent and complete representation of the scene.

#### Motion Quality
**Motion quality** in video generation research emphasizes creating realistic and natural-looking movements. This involves ensuring that generated videos exhibit smooth transitions, avoid abrupt changes, and maintain plausible physics. Key considerations include temporal consistency, where movements are consistent across frames, and adherence to real-world dynamics. Evaluation often involves subjective assessment by human observers, alongside objective metrics measuring motion smoothness and coherence. Achieving high motion quality is crucial for creating believable and engaging video content, especially in applications like character animation and virtual reality. High motion quality needs diverse datasets and complex motions.

#### Scalable VDMs
Scalable Video Diffusion Models (VDMs) represent a crucial advancement, enabling the creation of high-resolution, temporally coherent videos. Key to their success is the **efficient handling of increased computational demands**. This often involves techniques like **latent space diffusion**, where operations occur on a compressed representation, and **distributed training across multiple GPUs**. Architectures such as transformers with modifications for long-range dependencies, are essential. Furthermore, **data parallelism** and **model parallelism** play vital roles in facilitating training on large datasets. Scalability also necessitates innovative approaches to maintain video quality and coherence, especially for extended durations, addressing challenges such as **temporal artifacts** and **content inconsistencies**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.14899/x2.png)

> 🔼 Figure 2 illustrates the architecture of PCDController, a lightweight module designed for precise camera control in video generation.  It starts by extracting monocular depth from the initial video frame to generate a point cloud. This point cloud is then warped and rendered into a video representation (Vpcd).  PCDController takes this rendered video (Vpcd), Plücker ray coordinates (P), and a noisy latent video representation (zt) as input.  Importantly, only PCDController itself and the camera encoder are trainable; the rest of the video generation model remains frozen. This design makes PCDController easily adaptable and generalizable.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview pipeline of PCDController. PCDController is built as a lightweight DiT trained from scratch. We first obtain the point clouds via the monocular depth extracted from the first view. Then, the point clouds are warped and rendered into the video Vp⁢c⁢dsubscript𝑉𝑝𝑐𝑑V_{pcd}italic_V start_POSTSUBSCRIPT italic_p italic_c italic_d end_POSTSUBSCRIPT. The input conditions for PCDController comprise rendered Vp⁢c⁢dsubscript𝑉𝑝𝑐𝑑V_{pcd}italic_V start_POSTSUBSCRIPT italic_p italic_c italic_d end_POSTSUBSCRIPT, Plücker ray 𝐏𝐏\mathbf{P}bold_P, and the noisy latent ztsubscript𝑧𝑡z_{t}italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. Note that only the PCDController and camera encoder are trainable in our framework.
> </details>



![](https://arxiv.org/html/2504.14899/x3.png)

> 🔼 This figure demonstrates the robustness of the PCDController module, a key component of the Uni3C framework.  Even when provided with imperfect or noisy point cloud data (due to limitations in depth estimation), the PCDController consistently produces high-quality video generations. This showcases the model's ability to generalize well beyond perfectly annotated data and its effective use of strong 3D priors from point clouds, even when those priors are not fully accurate. The preserved capacity from the underlying video diffusion model (VDM) enables this robustness and ensures that the generation process is not significantly impacted by inaccuracies in the input.
> <details>
> <summary>read the caption</summary>
> Figure 3: Results of PCDController with imperfect point clouds. Benefiting from the well-preserved capacity from VDM, PCDController enjoys robust generation with inferior point clouds.
> </details>



![](https://arxiv.org/html/2504.14899/x4.png)

> 🔼 Figure 4 illustrates the input modalities used in the Uni3C framework for controlling both camera and human motion in video generation.  It shows how the model integrates multiple 3D representations: camera parameters (including trajectory), point clouds representing the scene's geometry, a SMPL-X model for human body shape and pose, and a Hamer model for hand details.  These 3D inputs are unified to generate consistent and coherent videos, demonstrating the core concept of combining diverse 3D data sources within Uni3C for superior control.
> <details>
> <summary>read the caption</summary>
> Figure 4: The assignment of multi-modal conditions for Uni3C. Camera, point clouds, SMPL-X [36] and Hamer [37] are all presented as 3D conditions.
> </details>



![](https://arxiv.org/html/2504.14899/x5.png)

> 🔼 Figure 5 illustrates the process of aligning human motion data (represented by SMPL-X characters) with environmental data (point clouds) to create a unified 3D scene for video generation.  Panel (a) shows the initial alignment of SMPL-X characters from their original coordinate system (Whum) to the environment's coordinate system (Wenv), which is based on the point clouds.  Panel (b) depicts the calibration of the gravity direction of the SMPL-X characters using GeoCalib, ensuring physically realistic motion.  Finally, panel (c) demonstrates the application of a rigid transformation (using coefficients ~s, ~R, ~t) to align the entire SMPL-X sequence, followed by re-rendering with the camera trajectories, thus creating a consistent global 3D world guidance for both camera and human motion.
> <details>
> <summary>read the caption</summary>
> Figure 5: The overview of global 3D world guidance. (a) We first align the SMPL-X characters from the human world space Wh⁢u⁢msubscript𝑊ℎ𝑢𝑚W_{hum}italic_W start_POSTSUBSCRIPT italic_h italic_u italic_m end_POSTSUBSCRIPT to the environment world space We⁢n⁢vsubscript𝑊𝑒𝑛𝑣W_{env}italic_W start_POSTSUBSCRIPT italic_e italic_n italic_v end_POSTSUBSCRIPT comprising dense point clouds. (b) GeoCalib [53] is used to calibrate the gravity direction of SMPL-X. (c) The rigid transformation coefficients s~,R~,t~~𝑠~𝑅~𝑡\tilde{s},\tilde{R},\tilde{t}over~ start_ARG italic_s end_ARG , over~ start_ARG italic_R end_ARG , over~ start_ARG italic_t end_ARG are employed to align the whole SMPL-X sequence. We re-render all aligned conditions under specific camera trajectories as the global 3D world guidance.
> </details>



![](https://arxiv.org/html/2504.14899/x6.png)

> 🔼 This figure displays ablation study results comparing the use of Plücker ray and point cloud representations for camera control during the training phase of a video generation model.  The graph shows training loss curves for both methods over a number of iterations, demonstrating the superior performance of point clouds in achieving highly accurate camera control compared to Plücker rays.  Point clouds provide strong 3D priors which significantly enhance camera control accuracy, as evidenced by the lower and more stable loss curve.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation results of Plücker ray and point clouds during the training phase. Point clouds enjoy highly accurate camera control against Plücker ray.
> </details>



![](https://arxiv.org/html/2504.14899/x7.png)

> 🔼 Figure 7 demonstrates the impact of gravity calibration on the quality of video generation using the Uni3C framework.  The left side shows results without gravity calibration, highlighting issues like unnatural poses and movements, especially during challenging camera trajectories. The right side shows results with gravity calibration using GeoCalib [53], resulting in more natural and physically plausible human motion and overall improved video generation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Rendering results with and without gravity calibration by GeoCalib [53].
> </details>



![](https://arxiv.org/html/2504.14899/x8.png)

> 🔼 This figure showcases a variety of images used as an out-of-distribution benchmark for testing the camera control capabilities of the proposed Uni3C framework.  The images are categorized into four main types: generative (computer-generated), human (featuring humans), scene-level (capturing broader scenes), and object-level (focused on specific objects). The diverse aspect ratios of these images highlight the model's robustness in handling various image formats and compositions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Our out-of-distribution benchmark for camera control. The validation set includes generative, human, scene-level, and object-level images with diverse aspect ratios.
> </details>



![](https://arxiv.org/html/2504.14899/x9.png)

> 🔼 Figure 9 presents a qualitative comparison of camera control methods on a benchmark dataset.  The benchmark includes diverse scenes with various characteristics. Four methods are compared: ViewCrafter, SEVA, a baseline using only Plücker rays (a type of camera control), and the proposed Uni3C model using both Plücker rays and point clouds. For each scene, the leftmost image shows the reference image, while subsequent images show the results of each method. The 'full' label in the figure indicates that both Plücker rays and point clouds were used in the camera control.
> <details>
> <summary>read the caption</summary>
> Figure 9: Qualitative results of camera control on our benchmark. We compare the proposed PCDController to ViewCrafter [66], SEVA [71], and our model without point cloud guidance. The leftmost image is the reference condition. “full” indicates using both Plücker ray and point clouds as conditions.
> </details>



![](https://arxiv.org/html/2504.14899/x10.png)

> 🔼 This figure showcases the robustness of the PCDController module in handling challenging camera movements.  It presents results from a test set where the camera performs a 360-degree orbital rotation around various scenes. Each row displays a different scene, with the leftmost image being the reference view from which the depth is extracted to drive the camera trajectory in subsequent frames. The effectiveness of the controller is demonstrated by the consistent and smooth generation of the video across all 360-degree rotations. The results illustrate the controller's ability to maintain video quality while generating complex camera motions.
> <details>
> <summary>read the caption</summary>
> Figure 10: Results of the challenging orbital 360∘ rotations from PCDController. The leftmost images are the reference views.
> </details>



![](https://arxiv.org/html/2504.14899/x11.png)

> 🔼 This figure demonstrates the results of the Uni3C framework, showcasing its ability to unify camera and human motion controls for video generation.  The leftmost column shows the reference image or video frame. The top row shows the aligned 3D world guidance, illustrating how the framework integrates camera trajectories (point clouds) and human motion (SMPL-X characters) into a unified 3D scene representation before video generation. Subsequent rows display the generated video sequences from different methods: RealisDance-DiT (a baseline focusing on human motion control), PCDController (Uni3C's camera control module), and Uni3C (I2V and T2V versions, representing the full framework). This visualization highlights how Uni3C effectively coordinates both camera and human motion controls to produce more coherent and controllable videos than baselines.
> <details>
> <summary>read the caption</summary>
> Figure 11: Results of unified camera and human motion controls. The leftmost images are the reference views, while the first row indicates the aligned 3D world guidance.
> </details>



![](https://arxiv.org/html/2504.14899/x12.png)

> 🔼 Figure 12 presents a visual comparison of video generation results using Uni3C, focusing on the unified control of camera, human motion (SMPL-X), and hand animation (Hamer).  The leftmost column displays the original reference images. The next two rows demonstrate the aligned 3D world guidance utilized by Uni3C.  Specifically, the first row shows how the point cloud data representing the scene environment and the SMPL-X human character model are aligned into a shared 3D coordinate system before being used to control the video generation. The second row showcases the rendered results of the Hamer hand model integrated with the aligned 3D environment, highlighting the seamless integration of multiple control signals within Uni3C.
> <details>
> <summary>read the caption</summary>
> Figure 12: Results of unified camera, human motion, and Hamer controls. The leftmost images are the reference views, while the first and second rows indicate the aligned 3D world guidance and Hamer rendering, respectively.
> </details>



![](https://arxiv.org/html/2504.14899/x13.png)

> 🔼 This figure demonstrates the motion transfer capabilities of the Uni3C framework.  The top row displays a reference video showcasing a specific set of motions.  The rows below show videos generated by Uni3C that have transferred the motions from the reference video, but applied to different characters and in different settings (different backgrounds, different camera angles). This highlights Uni3C's ability to transfer motions seamlessly across diverse video scenarios and character models.
> <details>
> <summary>read the caption</summary>
> Figure 13: Results of motion transfer. The first row indicates the reference video, while others show our generated videos transferring motions from the reference sequence.
> </details>



![](https://arxiv.org/html/2504.14899/x14.png)

> 🔼 Figure 14 showcases the motion transfer capabilities of Uni3C.  It demonstrates the model's ability to generate videos with motions sourced from random, integrated motion clips from the BABEL dataset [41]. The figure displays multiple rows, each starting with a reference motion sequence (left column) that is then transferred to generate corresponding videos. The order of execution follows a light-to-dark color scheme, with the lighter colored videos earlier in each row and the darker videos later.  This highlights how Uni3C can adapt various motions to the specified scenes and camera controls.
> <details>
> <summary>read the caption</summary>
> Figure 14: Results transferred from random integrated motion clips of BABEL [41]. The motion sequences are listed on the left, which are executed from light to dark colors.
> </details>



![](https://arxiv.org/html/2504.14899/x15.png)

> 🔼 Figure 15 showcases examples where the Uni3C model failed to generate realistic videos.  These failures stem from inconsistencies between the human actions and their surrounding environment. For instance, a human character's movement might be physically impossible given the constraints of the scene geometry (e.g., a person walking through a wall), resulting in unnatural or unrealistic video output.
> <details>
> <summary>read the caption</summary>
> Figure 15: Failed cases generated by Uni3C. These results are primarily limited by the conflict between human motions and environments.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.14899/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14899/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}