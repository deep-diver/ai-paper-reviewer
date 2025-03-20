---
title: "Unlock Pose Diversity: Accurate and Efficient Implicit Keypoint-based Spatiotemporal Diffusion for Audio-driven Talking Portrait"
summary: "KDTalker:  Accurate & efficient audio-driven talking portrait via implicit keypoint-based spatiotemporal diffusion, unlocking diverse & realistic animations."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 University of Liverpool",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12963 {{< /keyword >}}
{{< keyword icon="writer" >}} Chaolong Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12963" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12963" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12963/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Audio-driven talking portrait generation has challenges like fixed 3D keypoints that limit facial detail, & traditional networks struggle with audio-keypoint causality, resulting in low pose diversity. Also, image-based methods have identity distortion with high cost. To solve it, **this paper introduces KDTalker** to combine unsupervised implicit 3D keypoints with a spatiotemporal diffusion model, adapting facial information for diverse poses and fine details. A custom spatiotemporal attention ensures accurate lip sync and enhances efficiency.



**KDTalker** uses implicit 3D deformation keypoints and transformation parameters from audio, capturing lip, expressions, and head poses. Transformed keypoints are used for facial rendering. Unlike 3DMM, KDTalker’s keypoints adapt to facial densities, enhancing expressiveness. Experiments show KDTalker’s SOTA lip sync, pose diversity, & efficiency, offering a new appraoch in virtual reality & digital human creation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces KDTalker, a novel framework combining implicit 3D keypoints with spatiotemporal diffusion for realistic talking portraits. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Achieves state-of-the-art performance in lip synchronization, head pose diversity, and computational efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates the effectiveness of unsupervised learning and spatiotemporal attention mechanisms in generating expressive and coherent facial animations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work advances audio-driven talking portrait generation by offering a more efficient and accurate method that enhances both realism and diversity. It presents a new approach for future research, particularly in improving identity preservation and expressiveness.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12963/x1.png)

> 🔼 KDTalker is a novel framework for generating high-fidelity talking videos from a single image and audio. It uses a keypoint-based spatiotemporal diffusion model that produces realistic and temporally consistent animations.  The model combines implicit 3D keypoints to model diverse head poses and fine facial details, enhancing both pose diversity and expression detail, with a custom designed spatiotemporal attention mechanism for accurate lip synchronization. 
> <details>
> <summary>read the caption</summary>
> Figure 1: The proposed KDTalker: A keypoint-based spatiotemporal diffusion framework that generates synchronized, high-fidelity talking videos from audio and a single image, enhancing pose diversity and expression detail with realistic, temporally consistent animations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.7.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.7.7.8.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.7.7.8.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.7.7.8.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.7.7.8.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.7.7.8.1.2.1">Venue</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.7.7.8.1.3">Lip Synchronization</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.7.7.8.1.4">Head Motion</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T1.7.7.8.1.5">Video Quality</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.7.8.1.6">Inference Time</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.1">LSE-C <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.2.2">LSE-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.3.3">Diversity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.4">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.5.5">CPBD <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.6.6">CSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.7">FPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.9.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.7.7.9.2.1">Real Video</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.7.7.9.2.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.9.2.3">8.243</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.7.9.2.4">6.929</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.7.9.2.5">0.639</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.9.2.6">0.000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.9.2.7">0.353</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.7.9.2.8">1.000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.9.2.9">25</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.10.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.7.7.10.3.1">SadTalker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib5" title="">5</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.7.7.10.3.2">CVPR’23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.10.3.3">7.121</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.7.10.3.4">7.813</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.7.10.3.5">0.494</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.10.3.6">12.701</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.10.3.7">0.280</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.7.10.3.8">0.929</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.10.3.9">21.277</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.11.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.11.4.1">Real3DPortrait <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib6" title="">6</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.11.4.2">ICLR’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11.4.3">7.004</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.11.4.4">7.804</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.11.4.5">0.118</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11.4.6">17.428</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11.4.7">0.239</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.11.4.8">0.937</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.11.4.9">3.092</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.12.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.12.5.1">AniTalker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.12.5.2">MM’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.12.5.3">7.107</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.12.5.4">8.077</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.12.5.5">0.374</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.12.5.6">10.244</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.12.5.7">0.305</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.12.5.8">0.893</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.12.5.9">14.045</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.13.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.13.6.1">AniPortrait <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.7.13.6.2">ArXiv’24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.13.6.3">3.438</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.13.6.4">10.946</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.13.6.5">0.353</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.13.6.6">14.480</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.13.6.7"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.13.6.7.1">0.401</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.13.6.8">0.928</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.13.6.9">1.555</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.14.7" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.7.7.14.7.1"><span class="ltx_text" id="S4.T1.7.7.14.7.1.1" style="background-color:#E6E6E6;">Ours</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.7.7.14.7.2"><span class="ltx_text" id="S4.T1.7.7.14.7.2.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.14.7.3"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.14.7.3.1" style="background-color:#E6E6E6;">7.326</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.7.7.14.7.4"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.14.7.4.1" style="background-color:#E6E6E6;">7.548</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.7.7.14.7.5"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.14.7.5.1" style="background-color:#E6E6E6;">0.760</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.14.7.6"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.14.7.6.1" style="background-color:#E6E6E6;">9.756</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.14.7.7"><span class="ltx_text" id="S4.T1.7.7.14.7.7.1" style="background-color:#E6E6E6;">0.277</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.7.7.14.7.8"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.14.7.8.1" style="background-color:#E6E6E6;">0.949</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.7.7.14.7.9"><span class="ltx_text ltx_font_bold" id="S4.T1.7.7.14.7.9.1" style="background-color:#E6E6E6;">21.678</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the proposed KDTalker model against other state-of-the-art methods for audio-driven talking portrait generation, using the HDTF dataset.  It evaluates performance across several key metrics: lip synchronization accuracy (LSE-C and LSE-D), head motion diversity, video quality (FID and CPBD), identity preservation (CSIM), and inference speed (FPS). Higher LSE-C and lower LSE-D values indicate better lip synchronization. Higher diversity scores reflect more varied head poses. Lower FID scores denote higher visual realism. Higher CPBD scores indicate better image clarity. Higher CSIM scores mean better identity preservation. Higher FPS values mean faster generation. The table allows for a comprehensive comparison of the different models based on these objective metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison with the state-of-the-art methods on HDTF dataset.
> </details>





### In-depth insights


#### Pose Diversity
Pose diversity in audio-driven talking head generation is crucial for realism. Early methods lacked it, producing stiff animations. Recent work balances lip sync with natural head movements, but challenges remain. Keypoint-based methods, while preserving identity, can struggle with subtle motions and fixed keypoints. Image-based methods offer diverse details but face identity distortion and computational costs. Achieving a balance between accurate lip sync, diverse head poses, and efficient generation is key. The use of unsupervised keypoints and spatiotemporal diffusion models shows promise in enhancing pose variation while maintaining synchronization and computational feasibility. Explicit control over head poses is essential for greater flexibility. User studies and quantitative metrics are needed to assess the effectiveness of different approaches in achieving diverse and natural head movements. The ideal solution should generate temporally coherent motions that align with the audio input without sacrificing realism or computational efficiency. **Pose diversity and keypoint adaptation are a good match.**

#### KDTalker Design
**KDTalker**, as a novel approach in audio-driven talking portrait generation, likely represents a significant advancement by combining implicit keypoint representations with spatiotemporal diffusion models. A well-designed KDTalker architecture should address the limitations of existing methods by ensuring accurate lip synchronization, diverse and realistic head pose variations, and efficient processing. The system design would involve extracting relevant features from both audio and a reference image, mapping audio cues to keypoint movements, and using a diffusion process to generate realistic facial expressions over time. The spatiotemporal component would need to capture dependencies between frames, allowing for coherent movements and avoiding jerky transitions. Effective attention mechanisms would ensure audio cues align with facial expressions and head poses. The design choices might involve the selection of a diffusion model architecture, the type of keypoint representation, and the integration of pre-trained models. The system's efficiency and accuracy would be critical design goals.

#### Implicit KeyPts
The concept of implicit keypoints in audio-driven talking portrait generation represents a significant advancement. Instead of relying on fixed, predefined landmarks, **implicit keypoints dynamically adapt to facial feature densities**, enabling more nuanced motion capture. This adaptability is crucial for capturing subtle expressions like eye movements and frowning, which are often missed by methods using traditional 3D Morphable Models. Furthermore, the unsupervised nature of learning these keypoints eliminates the need for manual annotation and enhances the model's ability to generalize across diverse faces. By integrating these keypoints with spatiotemporal diffusion models, researchers can generate highly realistic and expressive talking portraits, addressing the limitations of earlier approaches that often resulted in stiff, unnatural animations due to limited head pose diversity and expression detail. The **dynamic adaptation** enables flexible motion capture via diffusion modeling, greatly improving the final output.

#### Spatio-Temporal
**Spatio-temporal modeling** acknowledges that data has both spatial and temporal dimensions, necessitating methods that capture dependencies across both. In research, especially involving dynamic scenes or processes, this is crucial. Methods may involve analyzing how phenomena evolve over time and space, such as movement patterns or changes in an environment. **Effective spatio-temporal analysis** often uses techniques like time-series analysis combined with spatial statistics or specialized models. Such as recurrent neural networks. Addressing challenges like computational complexity and the need for rich, high-quality data is paramount for useful insights. Ultimately, the goal is to understand not just what is happening, but where and when, for a more holistic view.

#### Limited Occlusion
Addressing limited occlusion in the context of audio-driven talking portraits poses a significant challenge. **Occlusion hinders accurate keypoint detection and tracking**, especially around crucial areas like the mouth and eyes. Methods must be robust to these visual disruptions, perhaps by employing **contextual reasoning** or **inferential filling** of missing information. A potential solution lies in **using advanced generative models** that can realistically hallucinate occluded facial regions based on audio cues and prior facial knowledge. Furthermore, robust training strategies using **data augmentation** with simulated occlusions can improve the model's resilience. Alternatively, **incorporating multi-modal information** (e.g., depth data) could aid in disambiguating occluded regions. Ultimately, a system that effectively handles partial occlusions would significantly enhance the realism and robustness of talking portrait generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12963/extracted/6286149/fig/Inference_Time_vs_Head_Diversity_LSE-D.png)

> 🔼 This figure shows a comparison of different talking portrait generation methods across three metrics: inference time (frames per second), head pose diversity, and lip synchronization accuracy (measured by Lip Sync Error Distance, or LSE-D).  Each method is represented by a point on the graph, with its horizontal position determined by inference time and its vertical position by head pose diversity. The size of the point corresponds to the LSE-D score; smaller points indicate better lip synchronization. This visualization allows for a direct comparison of the trade-offs between speed, diversity of head movements, and the accuracy of lip movements in relation to the audio.
> <details>
> <summary>read the caption</summary>
> Figure 2: Inference Time vs Head Diversity &\&& LSE-D. The value of LSE-D (Lip Sync Error Distance), a metric quantifying the alignment between lip movements and audio, is represented by the size of the circle. A smaller circle indicates a lower LSE-D value, reflecting better lip sync performance.
> </details>



![](https://arxiv.org/html/2503.12963/x2.png)

> 🔼 The figure shows a detailed overview of the KDTalker framework architecture.  It illustrates the process of generating talking portrait videos using a combination of audio and image inputs.  The input audio is processed by an encoder to extract audio features, while the reference image undergoes extraction of motion and appearance features. These features are then integrated with a noise sequence in the 'Reference-Guided Priors' module, which provides input to the core 'Keypoint-based Spatiotemporal Diffusion' module. This module predicts implicit 3D keypoints and transformation parameters (scaling, rotation, and translation), which are then used in the 'Face Render' module to generate the final talking head video.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the proposed KDTalker for talking portrait synthesis.
> </details>



![](https://arxiv.org/html/2503.12963/x3.png)

> 🔼 The Reference-Guided Priors module combines motion information from two key reference frames with a noise sequence to guide the diffusion model.  The canonical keypoints extracted from the reference image are used as input for the first frame, with zero-padding applied to other parameters. This provides prior information on facial structure, ensuring that canonical keypoints serve as a foundation for subsequent frames.  The expression deformation aligns with the canonical keypoints (xe), while other parameters are initialized with zero-padding. These priors are then integrated with a noise sequence to create the input for the diffusion model. By initializing the process with reference frames, the model conditions the noise sequence on structured motion information. This enables temporally coherent motion generation aligned with the original facial structure and adapting to audio-driven dynamics.
> <details>
> <summary>read the caption</summary>
> Figure 4: Reference-Guided Priors.
> </details>



![](https://arxiv.org/html/2503.12963/x4.png)

> 🔼 This figure illustrates the architecture of the Spatiotemporal-Aware Attention Network, a key component of the KDTalker framework.  The network takes as input the timestep (which indicates the stage of the denoising process), audio features, and the output from the ResNet blocks.  These inputs are processed through several modules including a Time MLP for temporal embedding, rotary embedding, and a softmax attention mechanism. The final output is a set of refined motion parameters that incorporate both spatial and temporal consistency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Spatiotemporal-Aware Attention Network.
> </details>



![](https://arxiv.org/html/2503.12963/x5.png)

> 🔼 Figure 6 presents a qualitative comparison of talking head videos generated by different state-of-the-art methods and the proposed method (KDTalker) using the HDTF dataset.  For each method, several frames from a generated video are shown alongside the corresponding ground truth frames. This visual comparison allows for a direct assessment of the realism, accuracy of lip synchronization, and overall quality of the generated videos. The figure highlights KDTalker's ability to generate high-fidelity animations that closely match the natural head movements and lip synchronization of the ground truth videos.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison with the state-of-the-art methods on HDTF dataset.
> </details>



![](https://arxiv.org/html/2503.12963/x6.png)

> 🔼 Figure 7 presents a qualitative comparison of head motion diversity between several existing audio-driven talking portrait generation methods and the proposed KDTalker approach. It uses motion heatmaps to visualize the diversity of head movements generated by each method, including SadTalker, Real3DPortrait, AniTalker, AniPortrait, and the proposed method. The heatmaps provide a visual representation of the range and variation of head poses generated, allowing for a direct comparison of the dynamic head motion generated by each method. The ground truth (GT) heatmap is also shown for reference.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative comparison of head motion diversity between existing methods and our proposed approach.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.2">Lip</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.3">Head</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.4">Overall</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.2.2.1">Sync.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.2.2.2">Diversity</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.2.3">Naturalness</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.1">SadTalker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib5" title="">5</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.2">14.5%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.3">22.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.4">15.8%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.4.4.1">Real3DPortrait <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib6" title="">6</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.4.4.2">3.8%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.4.4.3">0.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.4">0.0%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.5.5.1">AniTalker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib10" title="">10</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.5.5.2">39.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.5.5.3">13.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.4">38.5%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.1.1.6.6.1">AniPortrait <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib11" title="">11</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.6.6.2">2.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.6.6.3">2.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.4">0.0%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.7" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.1.1.7.7.1"><span class="ltx_text" id="S4.T2.1.1.7.7.1.1" style="background-color:#E6E6E6;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.7.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.7.2.1" style="background-color:#E6E6E6;">40.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.7.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.7.3.1" style="background-color:#E6E6E6;">61.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.7.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.7.4.1" style="background-color:#E6E6E6;">45.7%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing the performance of different talking portrait generation methods across three key dimensions: lip synchronization, head motion diversity, and overall naturalness.  The study involved 20 participants who evaluated 20 sample videos, selecting the best method for each sample based on each criterion. The percentages shown indicate the proportion of participants who rated each method as the best in each dimension.
> <details>
> <summary>read the caption</summary>
> Table 2: User study showing the percentage of participants who selected a method as the best across three evaluation dimensions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.4.4.5.1.1" rowspan="2"><span class="ltx_text" id="S4.T3.4.4.5.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.4.4.5.1.2">Lip Synchronization</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.5.1.3">Head Motion</th>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.1">LSE-C <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.2.2.2.2">LSE-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.3.3.3.3">Diversity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.4.4.4.1">w/o Reference <math alttext="x_{c}" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><msub id="S4.T3.4.4.4.1.m1.1.1" xref="S4.T3.4.4.4.1.m1.1.1.cmml"><mi id="S4.T3.4.4.4.1.m1.1.1.2" xref="S4.T3.4.4.4.1.m1.1.1.2.cmml">x</mi><mi id="S4.T3.4.4.4.1.m1.1.1.3" xref="S4.T3.4.4.4.1.m1.1.1.3.cmml">c</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><apply id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.4.4.1.m1.1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1">subscript</csymbol><ci id="S4.T3.4.4.4.1.m1.1.1.2.cmml" xref="S4.T3.4.4.4.1.m1.1.1.2">𝑥</ci><ci id="S4.T3.4.4.4.1.m1.1.1.3.cmml" xref="S4.T3.4.4.4.1.m1.1.1.3">𝑐</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">x_{c}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">italic_x start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.2">6.656</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.4.4.4.3">8.203</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4">0.791</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.4.6.1.1">w/o Attention</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.1.2">1.360</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.4.6.1.3">11.777</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.6.1.4.1">2.292</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.4.4.7.2.1">w/o RoPE</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.7.2.2">7.225</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.4.7.2.3">7.663</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.7.2.4">0.706</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.8.3" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.4.4.8.3.1"><span class="ltx_text" id="S4.T3.4.4.8.3.1.1" style="background-color:#E6E6E6;">Ours Full</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.8.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.3.2.1" style="background-color:#E6E6E6;">7.326</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.4.4.8.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.8.3.3.1" style="background-color:#E6E6E6;">7.548</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.8.3.4"><span class="ltx_text" id="S4.T3.4.4.8.3.4.1" style="background-color:#E6E6E6;">0.760</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of different components of the proposed KDTalker model on its performance.  It shows quantitative metrics (LSE-C, LSE-D, and Diversity) to assess the effect of removing key components, such as the reference keypoints (xc), the spatiotemporal attention mechanism, and the Rotary Positional Embedding (ROPE) used for temporal modeling.  The results highlight the contribution of each component to lip synchronization accuracy, head motion diversity, and overall model performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study for main components in proposed method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.3.3.4.1.1" rowspan="2"><span class="ltx_text" id="S4.T4.3.3.4.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.3.3.4.1.2">Lip Synchronization</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.4.1.3">Head Motion</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1">LSE-C <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.2.2.2">LSE-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.3">Diversity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.3.5.2.1">VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib13" title="">13</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.5.2.2">0.665</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.5.2.3">13.879</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.5.2.4">0.846</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.6.3.1">GAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib14" title="">14</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.3.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.6.3.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.6.3.4">-</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.3.7.4.1">VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib13" title="">13</a>]</cite> + GAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib14" title="">14</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.7.4.2">1.232</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.7.4.3">13.284</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.7.4.4.1">0.876</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.8.5" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.3.3.8.5.1"><span class="ltx_text" id="S4.T4.3.3.8.5.1.1" style="background-color:#E6E6E6;">Diffusion (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.8.5.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.8.5.2.1" style="background-color:#E6E6E6;">7.326</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.3.8.5.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.8.5.3.1" style="background-color:#E6E6E6;">7.548</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.8.5.4"><span class="ltx_text" id="S4.T4.3.3.8.5.4.1" style="background-color:#E6E6E6;">0.760</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the proposed KDTalker model with variations using different generative approaches (VAE, GAN, and a combined VAE-GAN) in place of the diffusion model.  It quantifies the performance of each model variation across lip synchronization accuracy (LSE-C and LSE-D) and head motion diversity, showing the superiority of the diffusion-based model used in the original KDTalker architecture.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of our model with different generators
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.5.5.6.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.6.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.5.5.6.1.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.6.1.2.1">Points</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.5.5.6.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">Lip Synchronization</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T5.5.5.6.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">Video Quality</th>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">LSE-C <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">LSE-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">CPBD <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T5.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">CSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.5.5.5.5.m1.1"><semantics id="S4.T5.5.5.5.5.m1.1a"><mo id="S4.T5.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.5.m1.1b"><ci id="S4.T5.5.5.5.5.m1.1.1.cmml" xref="S4.T5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.5.7.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.5.5.7.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">F.V. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib24" title="">24</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.5.7.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">5.579</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.5.7.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">9.228</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.7.1.5.1">8.625</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.7.1.6.1">0.307</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.7.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.940</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.8.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T5.5.5.8.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.8.2.1.1" style="background-color:#E6E6E6;">L.P. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12963v1#bib.bib28" title="">28</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.5.5.8.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.8.2.2.1" style="background-color:#E6E6E6;">21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.8.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.8.2.3.1" style="background-color:#E6E6E6;">7.326</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.5.5.8.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.8.2.4.1" style="background-color:#E6E6E6;">7.548</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.8.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.8.2.5.1" style="background-color:#E6E6E6;">9.756</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.8.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T5.5.5.8.2.6.1" style="background-color:#E6E6E6;">0.277</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.8.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.8.2.7.1" style="background-color:#E6E6E6;">0.949</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing two face rendering methods: Face-vid2vid (F.V.) and LivePortrait (L.P.), used in the proposed KDTalker model. It evaluates their performance on lip synchronization accuracy (LSE-C, LSE-D), and overall video quality (FID, CPBD, CSIM).  The number of keypoints used by each method is also listed, highlighting the impact of keypoint representation on the final results.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation of Face Render. F.V. denotes Face-vid2vid, while L.P. stands for LivePortrait, which is used in our method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T6.5.5.6.1.1" rowspan="2"><span class="ltx_text" id="S4.T6.5.5.6.1.1.1">Step</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T6.5.5.6.1.2">Lip Synchronization</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T6.5.5.6.1.3">Video Quality</th>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.1.1.1.1">LSE-C <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T6.2.2.2.2">LSE-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.m1.1a"><mo id="S4.T6.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T6.3.3.3.3">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.3.m1.1"><semantics id="S4.T6.3.3.3.3.m1.1a"><mo id="S4.T6.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T6.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.3.m1.1b"><ci id="S4.T6.3.3.3.3.m1.1.1.cmml" xref="S4.T6.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T6.4.4.4.4">CPBD <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.4.4.4.4.m1.1"><semantics id="S4.T6.4.4.4.4.m1.1a"><mo id="S4.T6.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T6.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.4.m1.1b"><ci id="S4.T6.4.4.4.4.m1.1.1.cmml" xref="S4.T6.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.5.5.5.5">CSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.5.5.5.5.m1.1"><semantics id="S4.T6.5.5.5.5.m1.1a"><mo id="S4.T6.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T6.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.5.5.5.m1.1b"><ci id="S4.T6.5.5.5.5.m1.1.1.cmml" xref="S4.T6.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.5.5.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.5.5.7.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.5.7.1.2">0.817</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.5.5.7.1.3">12.630</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.5.5.7.1.4">19.058</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.5.5.7.1.5">0.262</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.5.7.1.6">0.823</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.5.5.8.2.1">5</th>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.8.2.2"><span class="ltx_text ltx_font_bold" id="S4.T6.5.5.8.2.2.1">7.455</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.8.2.3"><span class="ltx_text ltx_font_bold" id="S4.T6.5.5.8.2.3.1">7.424</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.8.2.4">10.226</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.8.2.5">0.277</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.8.2.6">0.949</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.9.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.5.5.9.3.1">10</th>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.9.3.2">7.448</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.9.3.3">7.436</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.9.3.4">9.939</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.9.3.5"><span class="ltx_text ltx_font_bold" id="S4.T6.5.5.9.3.5.1">0.278</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.9.3.6">0.948</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.10.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.5.5.10.4.1">20</th>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.10.4.2">7.394</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.10.4.3">7.501</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.10.4.4">9.797</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.10.4.5">0.277</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.10.4.6">0.945</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.11.5" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.5.5.11.5.1"><span class="ltx_text" id="S4.T6.5.5.11.5.1.1" style="background-color:#E6E6E6;">50</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.11.5.2"><span class="ltx_text" id="S4.T6.5.5.11.5.2.1" style="background-color:#E6E6E6;">7.326</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.11.5.3"><span class="ltx_text" id="S4.T6.5.5.11.5.3.1" style="background-color:#E6E6E6;">7.548</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.11.5.4"><span class="ltx_text ltx_font_bold" id="S4.T6.5.5.11.5.4.1" style="background-color:#E6E6E6;">9.756</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.11.5.5"><span class="ltx_text" id="S4.T6.5.5.11.5.5.1" style="background-color:#E6E6E6;">0.277</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.11.5.6"><span class="ltx_text ltx_font_bold" id="S4.T6.5.5.11.5.6.1" style="background-color:#E6E6E6;">0.949</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.12.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.5.5.12.6.1">100</th>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.12.6.2">7.264</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.12.6.3">7.614</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.12.6.4">9.987</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.5.5.12.6.5">0.277</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.5.12.6.6">0.948</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.13.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T6.5.5.13.7.1">200</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.5.5.13.7.2">7.221</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.5.5.13.7.3">7.633</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.5.5.13.7.4">9.901</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.5.5.13.7.5">0.277</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.5.5.13.7.6">0.948</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the number of inference steps used in the KDTalker model.  It shows how varying the number of steps impacts lip synchronization accuracy (LSE-C and LSE-D) and the overall quality of the generated video (FID, CPBD, and CSIM). The goal is to find the optimal balance between accuracy, quality, and computational efficiency.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation of inference step
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T7.3.3.4.1.1" rowspan="2"><span class="ltx_text" id="S4.T7.3.3.4.1.1.1">Frame Number</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T7.3.3.4.1.2">Lip Synchronization</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.4.1.3">Head Motion</th>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.1.1.1.1">LSE-C <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T7.2.2.2.2">LSE-D <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T7.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.3.3.3.3">Diversity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.3.3.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.3.3.5.1.1">8</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.3.5.1.2">6.875</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.3.3.5.1.3">7.928</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.3.5.1.4">0.673</td>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T7.3.3.6.2.1">16</th>
<td class="ltx_td ltx_align_center" id="S4.T7.3.3.6.2.2">6.912</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.3.3.6.2.3">7.904</td>
<td class="ltx_td ltx_align_center" id="S4.T7.3.3.6.2.4">0.687</td>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T7.3.3.7.3.1">32</th>
<td class="ltx_td ltx_align_center" id="S4.T7.3.3.7.3.2">7.256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.3.3.7.3.3">7.636</td>
<td class="ltx_td ltx_align_center" id="S4.T7.3.3.7.3.4">0.686</td>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.8.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T7.3.3.8.4.1"><span class="ltx_text" id="S4.T7.3.3.8.4.1.1" style="background-color:#E6E6E6;">64</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.3.8.4.2"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.8.4.2.1" style="background-color:#E6E6E6;">7.326</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.3.3.8.4.3"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.8.4.3.1" style="background-color:#E6E6E6;">7.548</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.3.8.4.4"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.8.4.4.1" style="background-color:#E6E6E6;">0.760</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of varying the number of frames used in generating talking head videos.  It shows how the lip synchronization accuracy (LSE-C, LSE-D), and head motion diversity change as the number of frames increases from 8 to 64.  The goal is to determine the optimal number of frames to balance video quality and computational efficiency. 
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation of frame number.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12963/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12963/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}