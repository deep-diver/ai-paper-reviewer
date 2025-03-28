---
title: "ChatAnyone: Stylized Real-time Portrait Video Generation with Hierarchical Motion Diffusion Model"
summary: "ChatAnyone: Stylized real-time portrait video generation with hierarchical motion diffusion model."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Alibaba Group",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21144 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinwei Qi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21144" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21144" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21144/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Real-time interactive video-chat portraits have gained traction. Existing methods primarily focus on generating head movements, often struggling with synchronized body motions and fine-grained control over facial expressions. To address these issues, this paper presents a framework for stylized real-time portrait video generation, enabling flexible video chat that extends to upper-body interactions.



The approach involves efficient hierarchical motion diffusion models that account for both explicit and implicit motion representations based on audio inputs, generating diverse facial expressions and synchronized head and body movements. The system supports efficient and continuous generation of upper-body portrait video, achieving 30fps on a 4090 GPU, which supports interactive video-chat in real-time.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a hierarchical motion diffusion model for generating synchronized face and body control signals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents a hybrid control fusion generative model for high-quality portrait video with detailed hand gestures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves real-time upper-body portrait video generation at 30fps on a 4090 GPU. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a real-time portrait video generation framework called ChatAnyone, enabling natural & expressive upper-body movements and facial expressions. It is **significant** for creating immersive digital interactions, and also sets the stage for future work in virtual avatars and human-computer interfaces.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21144/extracted/6313754/fig/video_driven.png)

> 🔼 This figure demonstrates the real-time portrait video generation capabilities of the ChatAnyone model.  The input consists of a single portrait image and an audio sequence. The output is a high-fidelity video of a full head and upper body avatar, exhibiting realistic and diverse facial expressions. The model allows for control over the style of the generated video.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Illustration of real-time portrait video generation. Given a portrait image and audio sequence as input, our model can generate high-fidelity animation results from full head to upper-body interaction with diverse facial expressions and style control.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.7.7.8">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.3.3">LPIPS<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.4">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.5">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.6.6.6">CSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.7.7.7">HKC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.m1.1.1" stretchy="false" xref="S3.T1.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.7.7.9">FPS (Resolution)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.7.8.1.1">FOMM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.8.1.2">18.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.8.1.3">0.677</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.8.1.4">0.269</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.8.1.5">42.690</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.8.1.6">569.893</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.8.1.7">0.525</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.7.8.1.8">0.494</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.8.1.9">87 (256*256)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.9.2.1">MRAA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.9.2.2">19.12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.9.2.3">0.696</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.9.2.4">0.253</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.9.2.5">35.546</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.9.2.6">419.293</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.9.2.7">0.536</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.9.2.8">0.534</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.7.9.2.9">77 (384*384)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.10.3.1">LIA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.10.3.2">18.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.10.3.3">0.681</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.10.3.4">0.258</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.10.3.5">44.747</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.10.3.6">387.924</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.10.3.7">0.590</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.10.3.8">0.548</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.7.10.3.9">30 (256*256)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.11.4.1">TPSMM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.11.4.2">19.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.11.4.3">0.707</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.11.4.4">0.237</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.11.4.5">34.509</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.11.4.6">384.663</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.11.4.7">0.597</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.11.4.8">0.567</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.7.11.4.9">48 (384*384)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.7.12.5.1">w/o hand injection</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.12.5.2">24.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.12.5.3">0.829</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.12.5.4">0.132</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.12.5.5">6.825</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.12.5.6">38.401</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.12.5.7">0.605</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.7.12.5.8">0.607</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.12.5.9">34 (512*768)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.13.6.1">w/o face refine</th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.13.6.2">24.87</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.13.6.3">0.829</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.13.6.4">0.126</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.13.6.5">5.799</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.13.6.6">34.124</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.13.6.7">0.613</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.13.6.8">0.652</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.7.13.6.9">37 (512*768)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.14.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.14.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.1.1">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.14.7.2"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.2.1">24.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.14.7.3"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.3.1">0.831</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.14.7.4"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.4.1">0.126</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.14.7.5"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.5.1">5.505</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.14.7.6"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.6.1">33.349</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.14.7.7"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.7.1">0.654</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.7.14.7.8"><span class="ltx_text ltx_font_bold" id="S3.T1.7.14.7.8.1">0.652</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.7.14.7.9">33 (512*768)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.15.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.7.15.8.1">w/o facial hybrid control*</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.15.8.2">22.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.15.8.3">0.799</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.15.8.4">0.170</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.15.8.5">6.355</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.15.8.6">64.249</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.15.8.7">0.627</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.7.15.8.8">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.7.15.8.9">40 (512*512)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.16.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.7.16.9.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.9.1.1">Ours*</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.7.16.9.2"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.9.2.1">23.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.7.16.9.3"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.9.3.1">0.807</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.7.16.9.4"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.9.4.1">0.166</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.7.16.9.5"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.9.5.1">6.297</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.7.16.9.6"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.9.6.1">47.914</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.7.16.9.7"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.9.7.1">0.632</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.7.16.9.8">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.7.16.9.9">41 (512*512)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of several methods for generating upper-body videos from a single image using a self-driven reenactment approach.  The comparison includes metrics such as PSNR, SSIM, LPIPS, FID, FVD, CSIM, and HKC, assessing the visual quality and accuracy of the generated videos.  The table also shows the inference speed in frames per second (FPS) and the resolution of the generated videos for each method.  Note that results marked with an asterisk (*) used talking head video reenactment to specifically evaluate the effectiveness of the implicit facial keypoint offset technique.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons of upper-body video generation under self-driven reenactment mode. The inference speed, measured in frames per second (FPS), and the resolution of the generated output are also presented in the table. The * symbol denotes that the evaluations are conducted on talking head video reenactment to verify the effectiveness of implicit facial keypoint offset.
> </details>





### In-depth insights


#### Hierarchical Gen
**Hierarchical generation** could refer to a multi-stage or layered approach in generative models, where outputs are refined progressively. In video or image generation, this might involve creating a low-resolution base and then adding details in subsequent steps.  The hierarchy could also relate to control, with high-level parameters setting the overall style or content and lower-level parameters controlling specific details.  Such a structure allows for efficient generation and editing, as changes at a high level propagate to all subsequent levels, while changes at a low level only affect local details. This aligns well with how humans create complex outputs, starting with broad strokes and adding refinements. This enables control and coherence.

#### Hybrid Control
The concept of "Hybrid Control" in the context of portrait video generation likely refers to the **combined use of explicit and implicit control mechanisms** to achieve more nuanced and realistic facial expressions and body movements. Explicit control might involve using parameters like 3DMM coefficients or facial landmarks to directly manipulate specific features, offering precise control but potentially lacking fine-grained detail. Implicit control, on the other hand, could involve using latent variables or learned representations to capture subtle variations and styles, providing richer expressiveness but with less direct control. A hybrid approach aims to leverage the **strengths of both**, using explicit controls for overall structure and implicit controls for detail and style, ultimately leading to more controllable and expressive portrait videos. This fusion allows for detailed manipulation of features while keeping the capacity to represent subtle expressions.

#### Real-time GAN
Real-time GANs represent a significant area of research, focusing on achieving **fast and efficient image and video generation**. Traditional GANs often suffer from high computational costs, making them unsuitable for real-time applications. Research in this area aims to **optimize GAN architectures and training methods** to reduce inference time while maintaining high-quality output. Techniques include **model compression, efficient network designs, and optimized training strategies**. This is crucial for applications like real-time video editing, interactive gaming, and live streaming, where low latency is essential. The challenge lies in balancing speed and quality, as aggressive optimization can sometimes lead to a reduction in the visual fidelity of the generated content. **Success in real-time GANs** would enable more interactive and responsive AI-driven experiences.

#### Style Transfer
While not explicitly a standalone section, the concept of style transfer is woven into the core of the research. The paper leverages it primarily within the facial motion prediction stage. By conditioning the audio-driven motion diffusion model on a reference video, the framework gains the ability to imbue the generated portrait video with the stylistic nuances of the reference. This means that aspects like **expressiveness intensity, subtle emotional cues, or even idiosyncratic head movements** seen in the reference can be transferred to the generated avatar. This is achieved through Adaptive Layer Normalization(AdaLN). This allows for a more personalized and controllable output, going beyond simple audio-to-motion mapping. The effectiveness is shown that injecting expression information from reference video can improve the similarity to ground-truth. Further, the ablation study validates the influence of explicitly controlling the magnitude of expressions.

#### Upper-Body Focus
Focusing on the upper body in video generation tasks is crucial for creating realistic and engaging digital interactions. Unlike traditional methods that primarily address head movements and facial expressions, a dedicated approach to the upper body allows for the incorporation of natural body language, hand gestures, and subtle postural adjustments. This enhancement significantly contributes to the overall expressiveness and authenticity of the generated video. **Accurate upper-body motion is critical for synchronizing with speech and conveying emotional nuances.** Moreover, an upper-body focus enables a broader range of applications beyond simple talking head scenarios, such as virtual avatars, live streaming, and augmented reality, thereby enhancing user engagement and immersion. **Challenges include capturing the complex interplay between facial expressions, head movements, and body language,** as well as ensuring realistic hand gestures and seamless integration of the upper body with the overall scene. Effective solutions often involve advanced techniques for motion capture, body pose estimation, and realistic rendering of clothing and skin textures. **The goal is to generate upper-body movements that are not only visually appealing but also contextually relevant and emotionally expressive.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21144/extracted/6313754/fig/audio2motion.png)

> 🔼 This figure illustrates the pipeline for generating upper-body videos.  It starts with a source image which undergoes feature extraction. Simultaneously, facial keypoints (explicit control) and body keypoints (implicit control) are extracted from the source image.  These keypoints, along with rendered hand images (providing additional detailed hand control), are then used to guide a warping module. This warping module distorts the appearance features based on the motion information extracted from the keypoints.  The warped features are fed into a generator which produces the final upper-body video output, leveraging both explicit and implicit control signals for refined control over facial expressions and body movements.
> <details>
> <summary>read the caption</summary>
> Figure 2: Pipeline of upper-body video generation with hybrid control fusion, which takes both explicit facial keypoints and implicit body keypoints to conduct feature warping, while rendered hand image further inject into generator for improving the quality of hand generation.
> </details>



![](https://arxiv.org/html/2503.21144/extracted/6313754/fig/face_offset.png)

> 🔼 Figure 3 illustrates the hierarchical audio2motion diffusion model.  The bottom part shows facial motion prediction, which includes style control mechanisms such as reference sequence injection for style transfer. The top section shows upper-body motion prediction, driven by the output of the facial motion prediction module and audio input.  This upper-body module also incorporates hand motion generation using hand coefficients from a MANO template.  The model uses a combination of cross-attention mechanisms and adaptive layer normalization to effectively combine audio features and motion information at each level.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of hierarchical audio2motion diffusion model, including facial motion prediction with style control at bottom, and upper-body motion prediction with hands at top.
> </details>



![](https://arxiv.org/html/2503.21144/extracted/6313754/fig/visualization_main.png)

> 🔼 Figure 4 illustrates the architecture of a face refinement network used to enhance the realism of generated facial expressions.  The network takes as input both explicit and implicit facial keypoints. Explicit keypoints provide coarse control, while implicit offsets refine the position of the keypoints, leading to more precise and natural facial expressions.  The right side of the figure visually demonstrates how the addition of implicit offsets leads to a more accurate representation of facial keypoint locations compared to using only explicit keypoints.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of face refine network, the left of figure shows the architecture, while the right demonstrates that more precise facial keypoints are located by adding implicit offset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.2.2.3">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1">HKC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2">CSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.3.1.1">CyberHost* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.3.1.2.1">0.723</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.3.1.3.1">0.706</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.4.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.4.2.1.1">Ours*</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.2.2">0.708</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.4.2.3">0.657</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.5.3.1">EchoMimicV2* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.5.3.2">0.618</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.5.3.3">0.621</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.6.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.1.1">Ours*</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.2.1">0.642</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.2.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.3.1">0.683</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table quantitatively compares the hand generation quality of several video generation methods based on diffusion models.  The comparison is performed by reenacting demo videos from existing methods and then assessing the resulting hand gestures using specific metrics.  This provides insights into the relative performance of different diffusion-based approaches in generating realistic and detailed hand movements within generated videos.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparisons of video generation with diffusion based method. We reenact the demo videos provided by the compared methods and evaluate the results of hand generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">CSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">Sync<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4">Diversity<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.5.1.1">SadTalker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.1.2">52.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.1.3">0.595</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.5.1.4">4.120</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.4.5.1.5">0.112</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.6.2.1">AniTalker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21144v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.2">19.74</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.3">0.578</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.4">4.066</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.6.2.5">0.099</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.4.7.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.1.1">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.7.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.2.1">9.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.3.1">0.668</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.4.1">5.668</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.4.7.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.5.1">0.137</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the results obtained from generating head-only talking animations driven by audio input.  It compares various metrics to assess the quality and realism of different approaches, focusing specifically on the accuracy of lip synchronization and the diversity of facial expressions generated.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparisons of audio-driven results under head-only talking animation generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.2.2.3">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">MAE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.3.1.1">w/o style transfer</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.2">0.074</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.2.3.1.3">0.373</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.2.4.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.2.4.2.1.1">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.4.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.4.2.2.1">0.049</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.2.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.4.2.3.1">0.709</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the effectiveness of style transfer using a reference video.  It shows the Mean Absolute Error (MAE) and Structural Similarity Index (SSIM) values calculated for facial coefficients predicted by the audio-to-motion model. Lower MAE indicates better accuracy and higher SSIM represents improved visual similarity between the generated and reference video's facial expressions. The comparison allows for assessing the impact of style transfer on the model's ability to generate visually consistent and stylistically coherent facial animations.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison on reference style transfer, calculated on the face coefficients predicted from audio2motion model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21144/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21144/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}