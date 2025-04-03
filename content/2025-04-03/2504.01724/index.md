---
title: "DreamActor-M1: Holistic, Expressive and Robust Human Image Animation with Hybrid Guidance"
summary: "DreamActor-M1: Holistic, Expressive and Robust Human Image Animation with Hybrid Guidance"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Bytedance Intelligent Creation",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.01724 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuxuan Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.01724" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.01724" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.01724/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing image-based human animation methods have limitations in fine-grained holistic control, multi-scale adaptability, and long-term temporal coherence. This leads to reduced expressiveness and robustness. To overcome these issues, the paper introduces a new diffusion transformer framework. It aims to produce expressive and identity-preserving animations while handling various body poses and image scales. Methods also often fail to maintain temporal coherence. 



The proposed framework uses hybrid guidance for motion control. It integrates implicit facial representations, 3D head spheres, and 3D body skeletons. It employs a progressive training strategy using data with varying resolutions and scales for scale adaptation. This strategy handles various body poses and image scales. Appearance guidance is integrated from sequential frames with visual references to ensure long-term coherence.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DreamActor-M1 enables fine-grained holistic control, multi-scale adaptability and long-term temporal coherence in human image animation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework uses hybrid control signals including implicit face latent, explicit 3D head spheres and 3D body skeletons for robust motion control. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach utilizes complementary appearance guidance for consistent video generation over long durations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it presents a new approach to **human image animation** that tackles the limitations of existing methods. By offering **holistic control, multi-scale adaptability, and long-term temporal coherence**, this research opens new avenues for creating more realistic and expressive animations. Also, this research provides valuable insights into how hybrid guidance and progressive training can be leveraged to improve the quality and robustness of image animation techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2504.01724/extracted/6330760/figs/1-teaser-v2.png)

> 🔼 Figure 1 showcases the capabilities of DreamActor-M1, a novel human image animation framework.  It uses a diffusion transformer (DiT) architecture and incorporates hybrid guidance to enable precise control over various aspects of the animation.  The image demonstrates the system's ability to produce realistic and expressive animations with fine-grained control over facial features and body movements.  Crucially, it shows the model's adaptability to different scales (from portrait to full body) and its ability to maintain coherence over extended time periods. The reference image on the left is compared to a generated human video sequence on the right, highlighting the realism and detail of the output.
> <details>
> <summary>read the caption</summary>
> Figure 1: We introduce DreamActor-M1, a DiT-based human animation framework, with hybrid guidance to achieve fine-grained holistic controllability, multi-scale adaptability, and long-term temporal coherence.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T1.5.5.6"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:80%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:80%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:80%;">LPIPS</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:80%;">FVD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.6.1.1">
<span class="ltx_text" id="S4.T1.5.6.1.1.1" style="font-size:80%;">AA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.6.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T1.5.6.1.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.2"><span class="ltx_text" id="S4.T1.5.6.1.2.1" style="font-size:80%;">36.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.3"><span class="ltx_text" id="S4.T1.5.6.1.3.1" style="font-size:80%;">0.791</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.4"><span class="ltx_text" id="S4.T1.5.6.1.4.1" style="font-size:80%;">21.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.5"><span class="ltx_text" id="S4.T1.5.6.1.5.1" style="font-size:80%;">0.266</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.6"><span class="ltx_text" id="S4.T1.5.6.1.6.1" style="font-size:80%;">158.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.7.2.1">
<span class="ltx_text" id="S4.T1.5.7.2.1.1" style="font-size:80%;">Champ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.7.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S4.T1.5.7.2.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.2"><span class="ltx_text" id="S4.T1.5.7.2.2.1" style="font-size:80%;">40.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.3"><span class="ltx_text" id="S4.T1.5.7.2.3.1" style="font-size:80%;">0.732</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.4"><span class="ltx_text" id="S4.T1.5.7.2.4.1" style="font-size:80%;">20.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.5"><span class="ltx_text" id="S4.T1.5.7.2.5.1" style="font-size:80%;">0.281</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.6"><span class="ltx_text" id="S4.T1.5.7.2.6.1" style="font-size:80%;">171.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.8.3.1">
<span class="ltx_text" id="S4.T1.5.8.3.1.1" style="font-size:80%;">MimicMotion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.8.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S4.T1.5.8.3.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.2"><span class="ltx_text" id="S4.T1.5.8.3.2.1" style="font-size:80%;">35.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.3"><span class="ltx_text" id="S4.T1.5.8.3.3.1" style="font-size:80%;">0.799</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.4"><span class="ltx_text" id="S4.T1.5.8.3.4.1" style="font-size:80%;">22.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.5"><span class="ltx_text" id="S4.T1.5.8.3.5.1" style="font-size:80%;">0.253</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.6"><span class="ltx_text" id="S4.T1.5.8.3.6.1" style="font-size:80%;">149.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.9.4.1">
<span class="ltx_text" id="S4.T1.5.9.4.1.1" style="font-size:80%;">DisPose </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.9.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T1.5.9.4.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.2"><span class="ltx_text" id="S4.T1.5.9.4.2.1" style="font-size:80%;">33.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.3"><span class="ltx_text" id="S4.T1.5.9.4.3.1" style="font-size:80%;">0.804</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.4"><span class="ltx_text" id="S4.T1.5.9.4.4.1" style="font-size:80%;">21.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.5"><span class="ltx_text" id="S4.T1.5.9.4.5.1" style="font-size:80%;">0.248</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.6"><span class="ltx_text" id="S4.T1.5.9.4.6.1" style="font-size:80%;">144.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.1"><span class="ltx_text" id="S4.T1.5.10.5.1.1" style="font-size:80%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.2.1" style="font-size:80%;">27.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.3.1" style="font-size:80%;">0.821</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.4.1" style="font-size:80%;">23.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.5.1" style="font-size:80%;">0.206</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.6"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.6.1" style="font-size:80%;">122.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of DreamActor-M1's performance against other state-of-the-art body animation methods.  The comparison is based on a dataset created by the authors, and uses four metrics (FID, SSIM, PSNR, LPIPS) to evaluate the quality of individual frames and FVD to assess the overall quality of the generated video. Lower FID and LPIPS values, and higher SSIM and PSNR values, indicate better image quality. A lower FVD value suggests improved video quality. The table allows readers to directly compare the performance of DreamActor-M1 to existing methods on a common evaluation framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons with body animation methods on our collected dataset.
> </details>





### In-depth insights


#### Hybrid Guidance
The 'Hybrid Guidance' heading suggests a **multi-faceted approach to directing the image animation process**. It moves beyond reliance on single input modalities, likely integrating diverse control signals to achieve more nuanced and robust results. This could involve combining **explicit guidance**, like 3D pose information and facial landmarks, with **implicit guidance**, like learned latent representations of style or expression. The strength of this approach lies in its potential to **overcome the limitations of individual guidance methods**, enabling finer control, improved generalization, and the synthesis of more realistic and expressive human motions. It also allows for the complementary strengths of each guidance signal to be leveraged, ensuring robust animation even when individual signals are noisy or incomplete.

#### Multi-Scale DiT
A Multi-Scale DiT architecture could significantly enhance human image animation by processing information at varying resolutions. This would allow the model to capture both fine-grained details (like facial expressions) and broader contextual information (like body pose) simultaneously, leading to more realistic and coherent animations. A hierarchical DiT structure could be employed where each level operates at a different scale, enabling the model to progressively refine the animation. Such an approach would likely improve the model's ability to handle multi-scale inputs, adapt to different body poses, and maintain long-term temporal coherence, especially in regions unseen in the reference image. It could also improve robustness to changes in viewpoint. **Progressive training** is crucial, involving datasets with varying resolutions, ensuring robust and adaptable animation.

#### Temporal Coherence
Temporal coherence in human image animation refers to the **smoothness and consistency of motion and appearance over time**. A lack of temporal coherence manifests as jittering, flickering, or inconsistent textures across frames, breaking the illusion of realistic movement. Achieving this is challenging due to the independent processing of frames or short video segments, leading to discrepancies at the boundaries. Methods to improve temporal coherence include **recurrent architectures** that maintain a state across frames, **3D representations** that inherently enforce consistency, and **loss functions** that explicitly penalize temporal inconsistencies.  **Attention mechanisms** can also help by focusing on relevant features and maintaining consistency over time.  In essence, temporal coherence ensures that the generated video appears as a continuous, plausible, and stable sequence, mirroring the fluidity of real-world human motion.

#### Expressive Faces
The concept of "Expressive Faces" within human image animation signifies a crucial area of focus. **Capturing and realistically rendering the nuances of facial expressions** are paramount for achieving believable and engaging animations. Methods aim to finely control expressions, decoupling them from identity and head pose. Challenges remain in accurately reproducing subtle and exaggerated expressions, particularly in diverse scenarios beyond controlled portraits, like long-term coherence or maintaining visual fidelity across different views. **Hybrid control signals and appearance guidance** could be essential in overcoming such limitations, alongside **specialized encoders** trained on large datasets.

#### Animation Gaps
Addressing "animation gaps" in human image animation is crucial. **Current methods often struggle with fine-grained control**, leading to limitations in subtle expressions (eye blinks, lip tremors). **Multi-scale adaptability is lacking**, hindering performance across portrait, upper-body, and full-body scenarios. **Long-term temporal coherence remains a challenge**, resulting in inconsistencies, especially in unseen areas of the reference image. **Existing techniques fail to holistically integrate facial expressions and body movements effectively**, and **maintaining consistency across extended video segments is difficult**. The proposed DreamActor-M1 framework addresses these limitations through hybrid guidance (implicit facial representations, 3D head spheres, 3D body skeletons), complementary appearance guidance, and progressive training strategies, aiming for more realistic, expressive, and robust human image animation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.01724/extracted/6330760/figs/2-overview-v3.png)

> 🔼 DreamActor-M1's architecture uses a diffusion transformer (DiT) to generate human image animations.  The model takes a reference image and driving video as input.  During training, body skeletons and head spheres are extracted from the driving video and encoded into a pose latent. This pose latent is combined with a noised video latent (obtained from encoding a video clip with a 3D VAE) and a facial expression latent (generated from a face motion encoder). The reference image can be single or multiple frames, improving detail. The reference token branch shares weights with the noise token branch in the DiT. The model uses a multi-stage process with different tokens (noise, reference, face motion) integrated via cross-attention and self-attention within each DiT block. The denoised video latent is then compared with the encoded video latent for supervision.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of DreamActor-M1. During the training stage, we first extract body skeletons and head spheres from driving frames and then encode them to the pose latent using the pose encoder. The resultant pose latent is combined with the noised video latent along the channel dimension. The video latent is obtained by encoding a clip from the input full video using 3D VAE. Facial expression is additionally encoded by the face motion encoder, to generate implicit facial representations. Note that the reference image can be one or multiple frames sampled from the input video to provide additional appearance details during training and the reference token branch shares weights of our DiT model with the noise token branch. Finally, the denoised video latent is supervised by the encoded video latent. Within each DiT block, the face motion token is integrated into the noise token branch via cross-attention (Face Attn), while appearance information of ref token is injected to noise token through concatenated self-attention (Self Attn) and subsequent cross-attention (Ref Attn).
> </details>



![](https://arxiv.org/html/2504.01724/extracted/6330760/figs/3-inference-v3.png)

> 🔼 This figure illustrates the inference pipeline of the DreamActor-M1 model.  The process begins with an optional step to generate multiple pseudo-references, which enhances the model's ability to handle unseen regions and improves temporal consistency. Next, hybrid control signals are extracted from the driving video. These signals include implicit facial motion information (captured without explicit landmark use), and explicit pose information (represented by a 3D head sphere and a 3D body skeleton).  These signals are then fed into the DiT (Diffusion Transformer) model. The model synthesizes an animated human video based on these inputs. Importantly, the framework decouples facial motion from body poses, allowing for flexibility in control; facial movements can also be driven by audio input (speech) in addition to video.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of our inference pipeline. First, we (optionally) generate multiple pseudo-references to provide complementary appearance information. Next, we extract hybrid control signals comprising implicit facial motion and explicit poses (head sphere and body skeleton) from the driving video. Finally, these signals are injected into a DiT model to synthesize animated human videos. Our framework decouples facial motion from body poses, with facial motion signals being alternatively derivable from speech inputs.
> </details>



![](https://arxiv.org/html/2504.01724/extracted/6330760/figs/4-qualitative-pose-v1.png)

> 🔼 Figure 4 presents a qualitative comparison of DreamActor-M1 against several state-of-the-art human image animation methods: AnimateAnyone [14], Champ [61], MimicMotion [57], and DisPose [20].  Each method is applied to the same reference image and driving video. The results showcase DreamActor-M1's superior performance in generating animations with finer details in the movements, better preservation of the subject's identity across frames, greater temporal consistency over longer sequences, and overall higher visual fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 4: The comparisons with human image animation works, Animate Anyone [14], Champ [61], MimicMotion [57] and DisPose [20]. Our method demonstrates results with better fine-grained motions, identity preservation, temporal consistency and high fidelity.
> </details>



![](https://arxiv.org/html/2504.01724/extracted/6330760/figs/4-qualitative-portrait-v1.png)

> 🔼 Figure 5 presents a comparison of DreamActor-M1 with several state-of-the-art portrait animation methods: LivePortrait [12], X-Portrait [49], Skyreels-A1 [30], and Runway Act-One [33].  The results showcase DreamActor-M1's superior ability to generate more accurate and expressive portrait animations. Each column displays the reference image, driving image (used to animate the portrait), and the output from each method, including DreamActor-M1. This allows for a direct visual comparison of the generated animations, highlighting DreamActor-M1's improvements in detail and expressiveness.
> <details>
> <summary>read the caption</summary>
> Figure 5: Our comparisons with portrait image animation works, LivePortrait [12], X-Portrait [49], Skyreels-A1 [30] and Runway Act-One [33]. Our method demonstrates more accurate and expressive portrait animation capabilities.
> </details>



![](https://arxiv.org/html/2504.01724/extracted/6330760/figs/5-ablation.png)

> 🔼 This ablation study investigates the effects of using 3D body skeletons with bone length adjustment (BLA) and implicit facial features in the DreamActor-M1 model.  It compares the animation results when including both, only 3D skeletons with and without BLA, and only implicit face motions, highlighting the individual and combined contributions of these components to the overall quality and realism of the generated animations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation study of 3D skeletons with bone length adjustment (BLA) and implicit face features.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.5.5.6"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2">
<span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:80%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3">
<span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:80%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4">
<span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:80%;">LPIPS</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5">
<span class="ltx_text" id="S4.T2.5.5.5.1" style="font-size:80%;">FVD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.6.1.1">
<span class="ltx_text" id="S4.T2.5.6.1.1.1" style="font-size:80%;">LivePortrait </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.5.6.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="S4.T2.5.6.1.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.2"><span class="ltx_text" id="S4.T2.5.6.1.2.1" style="font-size:80%;">31.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.3"><span class="ltx_text" id="S4.T2.5.6.1.3.1" style="font-size:80%;">0.809</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.4"><span class="ltx_text" id="S4.T2.5.6.1.4.1" style="font-size:80%;">24.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.5"><span class="ltx_text" id="S4.T2.5.6.1.5.1" style="font-size:80%;">0.270</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.6.1.6"><span class="ltx_text" id="S4.T2.5.6.1.6.1" style="font-size:80%;">147.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.7.2.1">
<span class="ltx_text" id="S4.T2.5.7.2.1.1" style="font-size:80%;">X-Portrait </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.5.7.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S4.T2.5.7.2.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.2.2"><span class="ltx_text" id="S4.T2.5.7.2.2.1" style="font-size:80%;">30.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.2.3"><span class="ltx_text" id="S4.T2.5.7.2.3.1" style="font-size:80%;">0.774</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.2.4"><span class="ltx_text" id="S4.T2.5.7.2.4.1" style="font-size:80%;">22.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.2.5"><span class="ltx_text" id="S4.T2.5.7.2.5.1" style="font-size:80%;">0.281</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.2.6"><span class="ltx_text" id="S4.T2.5.7.2.6.1" style="font-size:80%;">150.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.8.3.1">
<span class="ltx_text" id="S4.T2.5.8.3.1.1" style="font-size:80%;">SkyReels-A1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.5.8.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S4.T2.5.8.3.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3.2"><span class="ltx_text" id="S4.T2.5.8.3.2.1" style="font-size:80%;">30.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3.3"><span class="ltx_text" id="S4.T2.5.8.3.3.1" style="font-size:80%;">0.811</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3.4"><span class="ltx_text" id="S4.T2.5.8.3.4.1" style="font-size:80%;">24.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3.5"><span class="ltx_text" id="S4.T2.5.8.3.5.1" style="font-size:80%;">0.262</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.8.3.6"><span class="ltx_text" id="S4.T2.5.8.3.6.1" style="font-size:80%;">133.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.9.4.1">
<span class="ltx_text" id="S4.T2.5.9.4.1.1" style="font-size:80%;">Act-One </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.5.9.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01724v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S4.T2.5.9.4.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4.2"><span class="ltx_text" id="S4.T2.5.9.4.2.1" style="font-size:80%;">29.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4.3"><span class="ltx_text" id="S4.T2.5.9.4.3.1" style="font-size:80%;">0.817</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4.4"><span class="ltx_text" id="S4.T2.5.9.4.4.1" style="font-size:80%;">25.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4.5"><span class="ltx_text" id="S4.T2.5.9.4.5.1" style="font-size:80%;">0.259</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4.6"><span class="ltx_text" id="S4.T2.5.9.4.6.1" style="font-size:80%;">135.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.5.10.5.1"><span class="ltx_text" id="S4.T2.5.10.5.1.1" style="font-size:80%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.5.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.5.2.1" style="font-size:80%;">25.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.5.3.1" style="font-size:80%;">0.823</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.5.4.1" style="font-size:80%;">28.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.5.5.1" style="font-size:80%;">0.238</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.10.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.10.5.6.1" style="font-size:80%;">110.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the proposed DreamActor-M1 model against several state-of-the-art portrait animation methods.  The comparison is based on a collected dataset and uses standard metrics to evaluate the quality of the generated animations.  Metrics include FID (Fréchet Inception Distance), SSIM (Structural Similarity Index), PSNR (Peak Signal-to-Noise Ratio), LPIPS (Learned Perceptual Image Patch Similarity), and FVD (Fréchet Video Distance), providing a comprehensive assessment of both image quality and video fidelity.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparisons with portrait animation methods on our collected dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T3.5.5.6"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:80%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:80%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4">
<span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:80%;">LPIPS</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.5.5">
<span class="ltx_text" id="S4.T3.5.5.5.1" style="font-size:80%;">FVD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.6.1.1"><span class="ltx_text" id="S4.T3.5.6.1.1.1" style="font-size:80%;">Single-R</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.1.2"><span class="ltx_text" id="S4.T3.5.6.1.2.1" style="font-size:80%;">28.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.1.3"><span class="ltx_text" id="S4.T3.5.6.1.3.1" style="font-size:80%;">0.798</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.1.4"><span class="ltx_text" id="S4.T3.5.6.1.4.1" style="font-size:80%;">25.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.1.5"><span class="ltx_text" id="S4.T3.5.6.1.5.1" style="font-size:80%;">0.223</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.6.1.6"><span class="ltx_text" id="S4.T3.5.6.1.6.1" style="font-size:80%;">120.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.5.7.2.1"><span class="ltx_text" id="S4.T3.5.7.2.1.1" style="font-size:80%;">Multi-R (pseudo)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.7.2.2"><span class="ltx_text" id="S4.T3.5.7.2.2.1" style="font-size:80%;">26.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.7.2.3"><span class="ltx_text" id="S4.T3.5.7.2.3.1" style="font-size:80%;">0.812</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.7.2.4"><span class="ltx_text" id="S4.T3.5.7.2.4.1" style="font-size:80%;">26.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.7.2.5"><span class="ltx_text" id="S4.T3.5.7.2.5.1" style="font-size:80%;">0.219</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.7.2.6"><span class="ltx_text" id="S4.T3.5.7.2.6.1" style="font-size:80%;">116.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study evaluating the impact of using multiple references during inference.  It compares the performance metrics (FID, SSIM, PSNR, LPIPS, FVD) achieved when using a single reference image versus employing a multi-reference approach where pseudo references are generated before running the inference. The multi-reference approach uses several key frames from the input video to enhance the quality of the synthesized video.  The table shows that this approach improves the results compared to the single-reference scenario, particularly benefiting long-term video generation quality and temporal consistency.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on multi-reference.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.01724/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01724/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}