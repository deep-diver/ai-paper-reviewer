---
title: "Rewards Are Enough for Fast Photo-Realistic Text-to-image Generation"
summary: "Rewards Are Enough!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13070 {{< /keyword >}}
{{< keyword icon="writer" >}} Yihong Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13070" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13070" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13070/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Aligning generated images with text prompts and human preferences is a core challenge in AIGC. Reward-enhanced diffusion distillation is promising for boosting text-to-image models. However, rewards become dominant with stronger conditions, overshadowing diffusion losses. Rewards become the dominant force in generation while diffusion losses become regularization.



To validate, the paper introduces R0, a conditional generation approach via regularized reward maximization. Treating image generation as an optimization in data space, it searches for images with high compositional rewards. State-of-the-art few-step models are trained with R0, demonstrating the rewards play a dominant role in complex conditions and challenge the conventional diffusion post-training.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Rewards alone are sufficient for high-quality, few-step image generation, challenging the necessity of diffusion distillation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} R0, a novel approach, treats image generation as a direct optimization problem in data space, maximizing rewards. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Effective regularization techniques, like weight regularization and random η-sampling, are crucial for preventing reward hacking and ensuring visual quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents a paradigm shift in conditional image generation, offering a new perspective via regularized reward maximization, **eliminating reliance on complex diffusion losses** and opening doors for efficient, high-quality AIGC.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13070/x1.png)

> 🔼 Figure 1 shows examples of image generation from Diff-Instruct++ and RG-LCM, highlighting common artifacts like repeated text or objects in the background. These artifacts are hypothesized to result from reward hacking, where the model exploits reward mechanisms to produce images that are not truly aligned with the intended prompt but maximize the reward score.
> <details>
> <summary>read the caption</summary>
> Figure 1: Samples are taken from the corresponding papers of Diff-Instruct++ and RG-LCM. It can be observed that there exist certain artifacts in samples, e.g., repeated text/objects in the background. We hypothesize this comes from reward hacking.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.5.5">
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.5.5.5.6">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.5.7">Backbone</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.5.8">Steps</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1">HPS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2.2">Aes<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.3.3.3.3">CS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.4.4.4">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.5.5">Image Reward<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_tt" id="S4.T1.5.5.5.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.5.5.6.1"><span class="ltx_text" id="S4.T1.5.5.6.1.1" style="background-color:#E6E6E6;">Base Model (Realistic-vision)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.2"><span class="ltx_text" id="S4.T1.5.5.6.2.1" style="background-color:#E6E6E6;">SD-v1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.3"><span class="ltx_text" id="S4.T1.5.5.6.3.1" style="background-color:#E6E6E6;">25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.4"><span class="ltx_text" id="S4.T1.5.5.6.4.1" style="background-color:#E6E6E6;">30.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.5"><span class="ltx_text" id="S4.T1.5.5.6.5.1" style="background-color:#E6E6E6;">5.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.6"><span class="ltx_text" id="S4.T1.5.5.6.6.1" style="background-color:#E6E6E6;">34.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.7"><span class="ltx_text" id="S4.T1.5.5.6.7.1" style="background-color:#E6E6E6;">29.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.8"><span class="ltx_text" id="S4.T1.5.5.6.8.1" style="background-color:#E6E6E6;">0.81</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.5.5.6.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.7">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.7.1">Hyper-SD <cite class="ltx_cite ltx_citemacro_citep">(Ren et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13070v1#bib.bib42" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2">SD-v1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.4">30.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.5">5.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.6">31.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.7"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.7.7.1">30.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.8">0.90</td>
<td class="ltx_td" id="S4.T1.5.5.7.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.8">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.8.1">RG-LCM <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13070v1#bib.bib19" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2">SD-v1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.4">31.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.5">6.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.6">29.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.7">52.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.8">0.67</td>
<td class="ltx_td" id="S4.T1.5.5.8.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.9">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.9.1">DI++ <cite class="ltx_cite ltx_citemacro_citep">(Luo, <a class="ltx_ref" href="https://arxiv.org/html/2503.13070v1#bib.bib24" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.2">SD-v1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.4">31.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.5">6.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.6">29.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.7">55.52</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.8">0.72</td>
<td class="ltx_td" id="S4.T1.5.5.9.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.10">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.10.1">R0 (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.2">SD-v1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.4">33.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.5">6.11</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.6">32.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.7">33.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.10.8">1.22</td>
<td class="ltx_td" id="S4.T1.5.5.10.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.11">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.11.1">R0+ (Ours)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.2">SD-v1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.11.4.1">34.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.11.5.1">6.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.6"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.11.6.1">32.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.7">37.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.11.8"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.11.8.1">1.27</span></td>
<td class="ltx_td" id="S4.T1.5.5.11.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.12" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.5.5.12.1"><span class="ltx_text" id="S4.T1.5.5.12.1.1" style="background-color:#E6E6E6;">Base Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.12.2"><span class="ltx_text" id="S4.T1.5.5.12.2.1" style="background-color:#E6E6E6;">SD3-Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.12.3"><span class="ltx_text" id="S4.T1.5.5.12.3.1" style="background-color:#E6E6E6;">28</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.12.4"><span class="ltx_text" id="S4.T1.5.5.12.4.1" style="background-color:#E6E6E6;">31.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.12.5"><span class="ltx_text" id="S4.T1.5.5.12.5.1" style="background-color:#E6E6E6;">5.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.12.6"><span class="ltx_text" id="S4.T1.5.5.12.6.1" style="background-color:#E6E6E6;">34.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.12.7"><span class="ltx_text" id="S4.T1.5.5.12.7.1" style="background-color:#E6E6E6;">28.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.5.12.8"><span class="ltx_text" id="S4.T1.5.5.12.8.1" style="background-color:#E6E6E6;">1.07</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.5.5.12.9"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.5.5.13.1">R0 (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.13.2">SD3-Medium</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.13.3">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.13.4">34.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.13.5">6.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.13.6">33.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.13.7">31.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.13.8">1.13</td>
<td class="ltx_td ltx_border_bb" id="S4.T1.5.5.13.9"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of several state-of-the-art text-to-image generation models, focusing on their performance in terms of speed and image quality.  The models are evaluated using four metrics:  HPS (Human Preference Score) assessing user preference; Aesthetic Score (AeS) measuring visual quality; CLIP Score (CS) evaluating image-text alignment; and FID (Fréchet Inception Distance) quantifying the similarity of generated images to real images.  The table highlights the best-performing models among those capable of fast generation (few sampling steps), using the COCO-5k dataset as the benchmark for FID.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of machine metrics on text-to-image generation across state-of-the-art methods. We highlight the best among fast sampling methods. The FID is measured based on COCO-5k dataset.
> </details>





### In-depth insights


#### Reward Dominance
**Reward dominance** in generative models signifies a paradigm shift where reward signals, rather than the diffusion process itself, become the primary driver of image creation. This emerges especially when dealing with complex conditions or preferences. Instead of relying heavily on diffusion losses for regularization, the focus shifts towards maximizing reward functions that reflect desired image attributes. The success of this approach hinges on effectively parameterizing the generator and applying appropriate regularization techniques to prevent reward hacking and ensure the generated images align with the intended goals. The concept involves strategically searching valid image points within data space that yield high compositional rewards. Shifting our attention to the **reward functions** could result in more effective models and potentially reduce the need for heavy regularization or complex processes. It allows for a more direct control over image generation by allowing us to target specific desired qualities. This approach allows more human-centric generative paradigms across the broader field of AIGC.

#### R0: Reward-Driven
The shift towards reward-driven approaches signifies a move from directly modeling data distributions to optimizing for desired outcomes. **Rewards, when strong, can guide the generation process more effectively than diffusion losses acting as regularization.** This necessitates rethinking conditional generation, prioritizing reward maximization while diffusion losses serve as regularization. It enables surprisingly good few-step generation, even without relying on image data or complex diffusion distillation losses. This reward-centric view may involve reformulating generation as an optimization problem, searching for images that maximize multiple reward functions. **The generator parameterization and regularization techniques are critical for achieving high-quality results**. It is a shift toward recognizing that rewards play a more vital role in scenarios involving complex conditions, potentially leading to more effective and efficient text-to-image generation systems.

#### Beyond Distillation
Beyond the conventional wisdom of relying on distillation techniques for efficient generative modeling, a new paradigm emerges where **rewards play a dominant role**. Instead of painstakingly transferring knowledge from a pre-trained diffusion model, the focus shifts to directly optimizing for desired attributes, guided by reward signals. This transition signals a move from density estimation to **regularized reward maximization**, where the goal is to find images that simultaneously satisfy multiple reward functions. By carefully designing generator parameterization and regularization techniques, it is possible to achieve high-quality results without the complexities of distillation. The success of this approach suggests that diffusion losses, previously seen as essential, might primarily serve as a form of regularization, becoming less critical as reward signals strengthen. This perspective has potential to facilitate faster development and improve the controllability in AIGC by **reducing dependence on computationally intensive distillation**.

#### Regularization Key
Regularization is a **critical aspect** of training generative models, particularly in scenarios with strong conditional guidance like text-to-image synthesis. Without proper regularization, models can easily overfit to the reward function, leading to **reward hacking** where the generated images exhibit artifacts or repeated patterns, ultimately deviating from the desired image manifold. The paper explores different regularization techniques, notably **weight regularization**, which penalizes deviations from pre-trained diffusion model weights, and **random noise sampling**, which introduces diversity in the generator's output. The results highlight the importance of carefully balancing reward maximization with regularization to achieve high-quality, diverse, and semantically accurate image generation. **Effective regularization** is key to preventing the model from exploiting weaknesses in the reward function and ensuring that it learns to generate images that are both high-reward and visually plausible.

#### High-Res Guidance
Generating high-resolution images from text is difficult because reward functions used to guide the process are typically trained on low-resolution images. When directly applied to high-resolution synthesis, fine-grained details can be lost. One strategy is to train a dedicated high-resolution classifier to guide the generation process. The high-resolution classifier acts as a complementary signal, explicitly encouraging perceptual quality in the high-resolution outputs. This can be implemented by using a high-resolution classifier as a Bayesian rule, which involves combining the information from both high and low-resolution classifiers. The high-resolution information can be used for fine-tuning, and it is important to prioritize perceptual quality in high-resolution outputs. **This approach is promising because it allows the model to focus on generating realistic details**, even when the primary reward function is not well-suited for high-resolution images.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13070/x2.png)

> 🔼 This figure displays images generated using the R0 model.  The model was trained solely on reward maximization without using any diffusion loss, highlighting the effectiveness of rewards in image generation. Four steps of the generation process are shown for each of the images, and all images are at a 1024x1024 resolution.
> <details>
> <summary>read the caption</summary>
> Figure 2: 4-step samples at 1024 resolution generated by R0. The R0 here is trained from SD3-medium purely by reward maximization.
> </details>



![](https://arxiv.org/html/2503.13070/x3.png)

> 🔼 This figure shows the log gradient norms of both the distillation loss and the reward loss during the training process of the DI++ model.  The x-axis represents the training iteration, and the y-axis shows the log of the gradient norm. This visualization helps to illustrate the relative dominance of the reward loss compared to the distillation loss as training progresses, suggesting that reward signals become the dominant force in guiding the model's learning process, particularly in scenarios with complex generation conditions. The use of the best configuration from the DI++ model (as reported in Luo, 2024) ensures a fair comparison.
> <details>
> <summary>read the caption</summary>
> Figure 3: Log Gradient norm curve of DI++ through training process. We use the best configuration reported in DI++ (Luo, 2024).
> </details>



![](https://arxiv.org/html/2503.13070/x4.png)

> 🔼 This figure compares the image generation quality of the proposed method (R0) against the baseline method, Referee can play (Liu et al., 2024).  The images shown are examples generated by each method for the same prompts. The comparison highlights the superior visual quality achieved by R0, showing more detail, realism, and overall better adherence to the prompt compared to the baseline method.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison with Referee can play (Liu et al., 2024). The baseline samples are taken from their paper. It can be seen that our method has significantly better visual quality.
> </details>



![](https://arxiv.org/html/2503.13070/x5.png)

> 🔼 This figure displays the results of an experiment using diffusion models to generate images of a Pikachu.  The models were run with 100 noise-removing steps (NFE) and a classifier-free guidance (CFG) scale of 7.5. The key variable manipulated was η (eta), a parameter controlling the sampling process during image generation.  The images shown are all generated from the same starting point (the same initial noise), allowing a clear visualization of how different eta values impact the final output.  The prompt used for all generations was: “A Pikachu, best quality”. This illustrates the effect of this hyperparameter on the generated image.
> <details>
> <summary>read the caption</summary>
> Figure 5: Samples diffusion models with 100 NFE and 7.5 CFG by varying the η𝜂\etaitalic_η in sampling. The samples are generated from the same initial noise. The prompt is “A pikachu, best quality”.
> </details>



![](https://arxiv.org/html/2503.13070/x6.png)

> 🔼 This figure displays the cosine similarity between the gradients of the distillation loss and the reward loss during the training process of the Diff-Instruct++ model.  The x-axis represents the training iteration, and the y-axis shows the cosine similarity. A high cosine similarity indicates that the updates from the distillation loss and reward loss are aligned, while a low similarity implies that the updates are pulling the model in different directions. This graph helps to visually illustrate the dominance of reward loss gradient over distillation loss gradient during the training process, as discussed in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 6: Cosine Similarity between DI gradient and Reward gradient.
> </details>



![](https://arxiv.org/html/2503.13070/x7.png)

> 🔼 This figure compares the performance of prior distillation-based reward maximization methods (like RG-LCM and DI++) and the proposed R0 method when using HPS v2.1 as the reward.  The prior methods fail to generate reasonable images, indicated by a 'collapse' in their performance. In contrast, R0, due to its effective regularization techniques, is robust and produces satisfactory results even with this challenging reward function. This illustrates the robustness and effectiveness of R0's regularization strategies.
> <details>
> <summary>read the caption</summary>
> Figure 7: The prior distillation-based reward maximization methods collapse when the reward is chosen to be HPS v2.1. In contrast, our R0 still works well, benefiting from the proposed effective regularization technique.
> </details>



![](https://arxiv.org/html/2503.13070/x8.png)

> 🔼 This figure displays the training progress curves for various metrics, specifically focusing on the HPS (Human Preference Score) benchmark.  The curves illustrate how different metrics change over a series of training iterations (50 iterations are shown on the x-axis).  It highlights that using normalized gradients leads to better performance during the training process compared to unnormalized gradients.  The evaluation is conducted on 1000 prompts from the HPS benchmark, providing a robust assessment of the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 8: Training progress of various metrics over iterations. It can be seen that the normalized gradient shows better performance. This is evaluated on 1k prompts from HPS benchmark.
> </details>



![](https://arxiv.org/html/2503.13070/x9.png)

> 🔼 This figure showcases a series of images generated by the R0 model after 4 steps. Each image corresponds to a different number of reward signals used during the generation process.  The purpose is to illustrate how the visual quality of the generated image improves as more reward signals are integrated into the R0 model, indicating a monotonic relationship between the number of rewards and image quality. The improvement in image quality suggests that the use of multiple reward functions enhances the overall result.
> <details>
> <summary>read the caption</summary>
> Figure 9: Four-step samples generated by R0. We observed that the quality of the image monotonically increases with the gradual increment of the reward count.
> </details>



![](https://arxiv.org/html/2503.13070/x10.png)

> 🔼 This figure demonstrates that combining multiple reward signals during training leads to better image generation compared to using a single reward. It showcases the complementary effect of using HPS, Image Reward, and Clip Score rewards, resulting in improved image quality and a closer alignment between the generated image and the text prompt. The experiment was conducted without the use of random η sampling and with minimal weight regularization to highlight the benefits of combining rewards.
> <details>
> <summary>read the caption</summary>
> Figure 10: The complementary effect of different reward. We do not use random η𝜂\etaitalic_η sampling and set small weight regularization in training here to highlight the complementary effect between rewards.
> </details>



![](https://arxiv.org/html/2503.13070/x11.png)

> 🔼 This figure demonstrates the impact of the regularization loss on image generation using the R0 model.  It showcases multiple images generated from the same initial noise, with and without the regularization loss applied. The differences in image quality and features illustrate how the regularization term influences the output and helps prevent issues like reward hacking, ensuring the generator stays within a desirable distribution and produces images of better quality.
> <details>
> <summary>read the caption</summary>
> Figure 11: The effect of regularization loss. Images are from the same initial noise.
> </details>



![](https://arxiv.org/html/2503.13070/x12.png)

> 🔼 Figure 12 presents a comparison of the convergence speed achieved by two different models, R0 and R0+, during training.  The training involved 1000 prompts sourced from the HPS (Human Preference Score) benchmark dataset. The figure likely shows plots of various metrics (e.g., FID, HPS scores, CLIP scores) against training iterations. This visual comparison allows for a quantitative assessment of the efficiency improvements gained by incorporating intermediate supervision into the training process of the R0+ model.  The figure is useful for determining the impact of the training modifications introduced in the R0+ model on training efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 12: Comparison on the convergence speed between R0 and R0+. This is evaluated on 1k prompts from HPS benchmark.
> </details>



![](https://arxiv.org/html/2503.13070/x13.png)

> 🔼 This figure compares the generation process of the R0 and R0+ models, which are both few-step text-to-image generation models.  The prompt used for both models is 'Two dogs, best quality'.  The images shown illustrate the intermediate steps in the generation process, from initial noise to final image. By comparing the intermediate steps for both models, the figure highlights how the introduction of intermediate supervision in R0+ leads to a smoother and more stable generation process compared to R0, which shows more artifacts during intermediate steps before converging to the final image.
> <details>
> <summary>read the caption</summary>
> Figure 13: Path comparison between R0 and R0+. The prompt is “Two dogs, best quality”.
> </details>



![](https://arxiv.org/html/2503.13070/x14.png)

> 🔼 This figure demonstrates the impact of incorporating a high-resolution guidance loss during the training of the R0+ model.  It visually compares image generation results from the same initial noise input, with and without the high-resolution guidance loss applied. The comparison highlights the improved image quality, particularly in terms of fine details and clarity, that the high-resolution guidance loss contributes to.
> <details>
> <summary>read the caption</summary>
> Figure 14: The effect of high-resolution guidance loss. Images are from the same initial noise.
> </details>



![](https://arxiv.org/html/2503.13070/x15.png)

> 🔼 This figure presents a qualitative comparison of image generation results using different methods.  It compares R0 (the proposed method) to several other approaches including various distillation-based methods, all using the same SD-v1.5 model backbone and starting from identical initial noise conditions.  The goal is to demonstrate that R0 achieves superior image quality and better alignment between the generated image and the corresponding text prompt, even with fewer steps (4 steps in this case), when compared to distillation-based reward maximization techniques.
> <details>
> <summary>read the caption</summary>
> Figure 15: Qualitative comparisons of R0 against distillation-based methods and diffusion base models on SD-v1.5 backbone. All images are generated by the same initial noise. We surprisingly observe that our proposed R0 has better image quality and text-image alignment compared to prior distillation-based reward maximization methods in 4-step text-to-image generation.
> </details>



![](https://arxiv.org/html/2503.13070/x16.png)

> 🔼 Figure 16 presents a qualitative comparison of the proposed R0 model against other competing methods on various downstream tasks, including image editing and integration with ControlNet.  The image shows that R0, even without relying on distillation losses, achieves comparable or superior performance in downstream applications. It demonstrates versatility in handling image editing (changing a squirrel to a cat), and seamless integration with ControlNet for image generation guided by Canny edge detection, while retaining reasonable image quality. This showcases R0's effectiveness and adaptability beyond simple image generation.
> <details>
> <summary>read the caption</summary>
> Figure 16: Qualitative comparison against competing methods and applications in downstream tasks.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13070/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13070/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}