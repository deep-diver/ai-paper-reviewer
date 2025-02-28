---
title: "Mobius: Text to Seamless Looping Video Generation via Latent Shift"
summary: "Mobius generates seamless looping videos from text using latent shift, repurposing pre-trained models without training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Chongqing University of Post and Telecommunications, China",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20307 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiuli Bi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20307" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20307" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20307/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current cinemagraph methods need manual effort, such as camera stabilization and object annotation, focusing on limited movement. To solve the issue, this paper defines a new research problem beyond cinemagraph synthesis: generating seamless looping videos from text descriptions using pre-trained text-to-video models. This allows more dynamic motions and natural visual effects, generating videos that are unusual in real life.



To address the challenge, **Mobius** is presented to iteratively transform the latent position, ensuring temporal consistency. It constructs a cycle by connecting the starting and ending noise of the videos and shifts the first-frame latent to the end in each step. The experiments also show that it can generate videos with longer context, utilizing NTK-aware interpolation, extending the Rotary Position Embedding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mobius generates seamless looping videos from text descriptions without requiring training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The latent shift strategy enables the generation of looping videos of arbitrary lengths. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Frame-invariance latent decoding and Rotary Position Encoding interpolation enhance video quality and temporal consistency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel method that allows the pre-trained text-to-video diffusion model without additional training, opening new research avenues for generating open-domain looping videos with dynamic motions. The generated results show better visual quality.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20307/x1.png)

> 🔼 This figure showcases the capability of the Mobius model to generate seamless looping videos from text prompts alone, without any further training.  Two example videos are shown.  The first depicts a young female activist holding a flag, while the second shows a koala eating eucalyptus leaves.  The seamless looping nature of the generated videos is highlighted, demonstrating the model's ability to create engaging, high-quality visual content from text descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 1.  Without any training, the proposed Mobius can generate seamless looping videos using the pre-trained Text-to-Video latent diffusion model directly. Can you identify the end in the above video? Best viewed with Acrobat Reader. Click the video to play the animation clips. We also give these examples in the supplementary video. Project page: http://mobius-diffusion.github.io.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T1.5.5.6"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1">MSE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2">FVD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.3.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.3.3.1">
<tr class="ltx_tr" id="S4.T1.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.3.3.1.1.1">CLIP</td>
</tr>
</table>
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.4.4.1">
<tr class="ltx_tr" id="S4.T1.4.4.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.4.1.1.1">Motion</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.4.1.2.1">Smooth</td>
</tr>
</table>
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.5">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.5.5.5.1">
<tr class="ltx_tr" id="S4.T1.5.5.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.5.5.1.1.1">Dynamic</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.5.5.1.2.1">Score</td>
</tr>
</table>
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.6.1.1">Svd-Interp.*</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.2"><span class="ltx_text" id="S4.T1.5.6.1.2.1" style="color:#808080;">18.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.3">5.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.4">32.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.5">0.9950</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.6.1.6">0.0667</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.7.2.1">CogX-Interp.*</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.2"><span class="ltx_text" id="S4.T1.5.7.2.2.1" style="color:#808080;">15.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.3">28.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.4">31.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.5">0.9830</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.7.2.6">0.3333</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.8.3.1">CogVideoX</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.2">66.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.3">56.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.4">32.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.5">0.9738</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.6">0.7056</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.9.4.1">Latent Mix</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.2">45.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.3">60.02</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.4">31.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.5">0.9749</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.6"><span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.6.1">0.7273</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.5.10.5.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.10.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.2.1">25.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.10.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.3.1">40.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.10.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.4.1">32.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.10.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.10.5.5.1">0.9850</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.10.5.6">0.4722</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different video generation methods using several metrics.  The methods are evaluated on their ability to generate seamless looping videos.  Metrics include Mean Squared Error (MSE), Fréchet Video Distance (FVD), CLIP score, smoothness, and dynamic score.  The MSE value marked with an asterisk (*) represents the oracle value; for interpolation-based methods, the start and end frames are set as the first frame generated by our proposed method. This allows for a fair comparison of MSE.
> <details>
> <summary>read the caption</summary>
> Table 1. Quantitative experimental results for different methods under the numerical evaluation metrics. * for the interpolation-based method, we utilize our generated first frame for the start and end keyframe, thus the MSE between the two frames is the oracle value.
> </details>





### In-depth insights


#### Latent Shift Loop
The 'Latent Shift Loop' concept seems to be a technique for generating seamless looping videos. It appears to involve manipulating the **latent space representation** of a video, rather than directly modifying the video frames. This could offer advantages like **better control over motion** and potentially **reducing artifacts**. The term 'shift' implies a gradual transformation or displacement of the latent representation over time, creating a continuous cycle. A key aspect of the loop creation might be ensuring temporal consistency, preventing abrupt changes between frames. It's plausible that the length of the latent cycle dictates the overall video duration. Longer latent cycles enable capturing more complex dynamics.

#### VAE Decoding Fix
**Addressing VAE Decoding Artifacts**: When dealing with video generation using models with a Variational Autoencoder (VAE), it's essential to address potential artifacts arising during the decoding phase. These artifacts can stem from inconsistencies in how the VAE handles different frames, particularly the first frame in a sequence. Often, VAEs employ unique encoding methods for the initial frame compared to subsequent frames, causing discrepancies during decoding. To rectify this, a pragmatic approach involves ensuring uniform processing across all frames. One effective strategy is to copy the latent representations of the last few frames and insert them before the first latent frame. This creates redundant information that counteracts the special treatment of the initial frame. Subsequently, the redundant generated frames are removed, resulting in visually coherent video. This VAE decoding fix improves temporal consistency and visual quality in generated looped videos.

#### ROPE Interpolation
The paper introduces a novel approach to extending Rotary Position Embedding (RoPE), termed **RoPE-Interp**, to handle longer video contexts in text-to-video generation. RoPE, originally designed to encode relative positional information in attention mechanisms, faces limitations when applied to extended video sequences due to the mismatch between the training context length and the longer inference context. **RoPE-Interp addresses this by scaling the base of the RoPE function**, effectively interpolating the positional encodings to accommodate the longer sequence. This scaling is inspired by NTK-aware interpolation techniques used in large language models, ensuring that the positional information remains consistent and meaningful even for extended video durations.  By adapting RoPE to longer sequences, RoPE-Interp enables the model to maintain temporal coherence and generate visually consistent videos. Furthermore, **the paper explores different strategies for applying RoPE-Interp**, including shifted and fixed approaches, each offering unique trade-offs between computational cost and performance. The effectiveness of RoPE-Interp is demonstrated through experimental results, showcasing its ability to improve the quality and coherence of generated videos, particularly in scenarios involving long-term dependencies and complex motion patterns. 

#### Training-Free Loop
The concept of a 'Training-Free Loop' in video generation represents a significant leap forward. **It suggests the possibility of creating seamless, continuous video sequences without the need for extensive model retraining or fine-tuning.** This is valuable as traditional video generation methods require substantial computational resources and labeled datasets. A training-free approach could leverage pre-trained models and manipulating the latent space to achieve the looping effect. This method offers flexibility and efficiency, potentially reducing development time and resources while enabling dynamic video content creation. **The latent shift strategies are the key and they must be incorporated in the pre-trained diffusion models**. Achieving realistic motion and visual coherence is a critical area of focus, as seamless transitions and smooth animations are essential for a convincing looping video.

#### Motion Prior Limits
**Motion prior limits in video generation refer to the constraints imposed by the pre-existing patterns and biases learned by the model during its training phase.** These limitations can manifest in several ways, affecting the quality and diversity of generated videos. For instance, a model trained primarily on videos with specific types of motion (e.g., camera panning, object trajectories) may struggle to generate videos with novel or complex movements. **The model's tendency to reproduce familiar motion patterns can lead to a lack of creativity and realism, limiting the potential for generating truly unique content.** This can manifest as a lack of smooth transitions, repetitive actions, or an inability to accurately depict the physics of motion in various scenarios. To overcome these limitations, researchers often explore techniques such as incorporating new training data that exhibits more diverse motion, designing architectures that allow for greater flexibility in motion generation, or introducing methods that explicitly encourage the model to deviate from its learned motion priors. In addition, **the generative content might not be consistent in customized domains, due to the motion prior in the pre-trained video diffusion model we use.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20307/x2.png)

> 🔼 Figure 2 illustrates the Mobius method for generating looping videos.  It uses a pre-trained Video Diffusion Model (VDM). The process begins by creating a cycle of latent representations from a text prompt.  This cycle represents the video's entire duration, compressed into a latent space.  During inference, the method shifts the starting point of the latent cycle one step forward in each denoising iteration. By gradually shifting this starting point, the denoising process uses different parts of the latent cycle as context, resulting in a seamlessly looping video without abrupt transitions. The figure highlights that this shifting occurs in the latent space for efficiency and clarity. The actual encoder and decoder components of the VDM are omitted in the diagram for simplicity.
> <details>
> <summary>read the caption</summary>
> Figure 2. Latent Shift for looping video generation. Taking 4 latent toys pre-trained Video Diffusion Models (VDM) as an example, we build a latent cycle and shift the start point in each denoising step in inference for text-guided looping video generation. Notice that, the shifting is conducted in the latent space, we emit the latent encoder and decoder for easy understanding.
> </details>



![](https://arxiv.org/html/2502.20307/x3.png)

> 🔼 The figure illustrates how the 3D Variational Autoencoder (VAE) used in video generation can introduce artifacts.  Specifically, it shows how the inconsistent treatment of the first frame's latent during encoding and decoding can lead to visual imperfections in generated videos, particularly for seamless looping videos.  The method proposed in the paper, 'frame-invariant latent decoding', aims to mitigate these artifacts by ensuring that all frames are processed equally in the latent space, leading to improved video quality.
> <details>
> <summary>read the caption</summary>
> Figure 3. Frame-invariance latent decoding reduces the artifacts caused by the 3D VAE decoding.
> </details>



![](https://arxiv.org/html/2502.20307/x4.png)

> 🔼 Figure 4 illustrates the concept of Rotary Position Embedding Interpolation (RoPE-Interp).  It uses a simplified 'toy' latent video diffusion model with a context window of only 4 frames to show how RoPE-Interp. works.  In standard diffusion models, the model only considers a limited number of preceding frames (the context window) when generating the next frame. RoPE-Interp. overcomes this limitation by cleverly interpolating the positional information, effectively extending the context window and allowing the model to 'see' and utilize more of the preceding video frames. This is achieved without the need for further training of the model, demonstrating the power of RoPE-Interp. in enabling longer video context.
> <details>
> <summary>read the caption</summary>
> Figure 4. We illustrate this with the example of the toy latent video diffusion model with a context window equal to 4. The utilized RoPE-Interp. enables longer video context without training by interpolation.
> </details>



![](https://arxiv.org/html/2502.20307/x5.png)

> 🔼 Figure 5 presents a comparison of video generation results from different methods.  Three methods are shown: the proposed method ('Ours'), a latent mixing approach ('Latent Mix'), and two frame interpolation techniques ('Svd-Interp.' and 'Cog-Interp.'). For each method, the figure displays three key frames: the first frame, an intermediate frame, and the last frame.  The comparison highlights the differences in the visual consistency and motion quality achieved by each method. Notably, the frame interpolation techniques (Svd-Interp. and Cog-Interp.) use the same first and last frames as input, which are manually specified, to ensure a fair comparison with the other approaches that generate these frames.
> <details>
> <summary>read the caption</summary>
> Figure 5. Compare with other methods. We give the first frame, the intermediate frame, and the last frame for comparison. Notice that, both Svd-Interp. and Cog-Interp. are frame-interpolation methods, we manually give the same start frame and end frame as key-frames.
> </details>



![](https://arxiv.org/html/2502.20307/x6.png)

> 🔼 This ablation study explores how altering the number of latent shifts during each denoising iteration impacts the generated video's content.  Different shift steps represent varying degrees of change applied to the latent variables throughout the video generation process.  The figure visually demonstrates the effects of different skip sizes on the resulting video frames, showcasing how the generated content changes based on the frequency of latent shifting.
> <details>
> <summary>read the caption</summary>
> Figure 6. Ablation study on different latent skip. The shift step in each denoising iteration will also influence the generated content.
> </details>



![](https://arxiv.org/html/2502.20307/x7.png)

> 🔼 This ablation study investigates the effect of different Rotary Position Embedding (RoPE) interpolation strategies on video generation when using the latent shifting method.  The latent shifting method, described earlier in the paper, introduces temporal consistency by shifting the starting frame's latent representation throughout the denoising process.  This figure displays the results obtained using three different RoPE approaches: one without RoPE interpolation, one with a shifted RoPE interpolation, and one with a fixed RoPE interpolation.  By comparing the generated video frames from each method, the impact of each RoPE strategy on the generated video content is analyzed. The results reveal how each RoPE strategy affects the generated video's coherence and overall quality.
> <details>
> <summary>read the caption</summary>
> Figure 7. Ablation study on RoPE-Interp. Under the implementation of latent shifting, different RoPE strategies can have a significant impact on the content of video generation.
> </details>



![](https://arxiv.org/html/2502.20307/x8.png)

> 🔼 Figure 8 demonstrates limitations of the proposed method when generating longer videos in niche domains.  Specifically, it shows that while the model generally produces high-quality looping videos, its performance can degrade in scenarios requiring highly specific or uncommon actions or detailed objects that may not be well represented in the pre-trained model's dataset.  The example shows a sequence of frames from a generated video of an illustration-style scene. The video suffers from inconsistencies in the appearance of objects,  lacking smooth and coherent motion, highlighting a limitation where the model struggles to generate realistic details in less frequently represented scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 8. Limitation. The generated results might not show a very smooth video in the customized domain, e.g., the illustration, restricted by the pre-trained text-to-video diffusion model.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.3.3.1">
<tr class="ltx_tr" id="S4.T1.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.3.3.1.1.1">CLIP</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study comparing different methods for generating looping videos.  Participants ranked videos across three dimensions: Temporal Consistency (how smoothly the video loops), Visual Quality (overall image quality), and Video Dynamic (the dynamism and complexity of motion).  The scores for each method reflect the average ranking across participants for each of these qualities.
> <details>
> <summary>read the caption</summary>
> Table 2. User Study Results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.4.4.1">
<tr class="ltx_tr" id="S4.T1.4.4.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.4.1.1.1">Motion</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.4.4.1.2.1">Smooth</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 compares the proposed Mobius method with other existing longer video generation methods, including Gen-L-Video, FreeNoise, FIFO, and DiTCtrl.  The comparison focuses on the quality of longer videos generated by each method, assessed using metrics such as CLIP score, FVD (Fréchet Video Distance), and motion smoothness.  The table shows that Mobius outperforms other methods in generating high-quality, coherent videos with better motion and visual consistency, even when generating significantly longer video sequences.
> <details>
> <summary>read the caption</summary>
> Table 3. Comparing with other longer video generation methods.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20307/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20307/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}