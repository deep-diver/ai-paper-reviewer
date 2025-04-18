---
title: "Set You Straight: Auto-Steering Denoising Trajectories to Sidestep Unwanted Concepts"
summary: "ANT: Automatically steers denoising trajectories to sidestep unwanted concepts in text-to-image generation, ensuring safer, high-quality outputs!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Nanyang Technological University",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12782 {{< /keyword >}}
{{< keyword icon="writer" >}} Leyang Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12782" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12782" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12782/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Text-to-image models often generate harmful content. Existing finetuning-based methods suffer from limitations. Anchor-free methods risk disrupting trajectories, causing visual artifacts, while anchor-based methods rely on heuristic selection of anchor concepts. There is a need for a solution that preserves structural integrity and avoids heuristic selection to improve quality and safety in image generation.



To address the issues, this paper introduces a finetuning framework called ANT. ANT steers deNoising Trajectories to avoid unwanted concepts. The approach reverses the condition direction of classifier-free guidance during mid-to-late denoising, enabling precise content modification without sacrificing early-stage structural integrity. It also introduces a trajectory-aware objective and an augmentation-enhanced weight saliency map for single-concept erasure.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Reversing classifier-free guidance in mid-to-late denoising enables precise content modification. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Trajectory-aware finetuning preserves early-stage score function integrity, improving concept erasure. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Augmentation-enhanced weight saliency maps accurately identify key parameters for concept erasure. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **offers a novel approach to concept erasure** in text-to-image models, improving both safety and quality. The **ANT framework** provides a practical solution to a critical problem, with broad implications for the responsible deployment of generative AI. It also opens **new avenues for research** in controllable content generation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12782/x1.png)

> 🔼 Figure 1 illustrates four different trajectories in diffusion models for concept erasure. (a) shows the standard denoising trajectory where a sample moves from a high-dimensional Gaussian distribution towards the natural image manifold guided by classifier-free guidance (CFG). (b) depicts an anchor-free approach where finetuning alters the score function to repel samples from the unwanted concept manifold, potentially leading to out-of-distribution samples. (c) illustrates an anchor-based method that aligns the score function of unwanted concepts with those of benign anchor concepts to steer samples toward the anchor manifold. Finally, (d) presents the proposed ANT method that preserves the early-stage score function while carefully adjusting later stages to avoid the unwanted concept manifold.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Geometric perspective on concept erasure in diffusion models. (a) Conventional Denoising Trajectory. A high-dimensional Gaussian sample, starting on a large sphere, converges to the human data manifold via classifier-free guidance (CFG). (b) Anchor-Free Finetuned Trajectory. Finetuning often modifies the orientation of the predicted conditional score functions so that they direct away from the unwanted concept manifold. This results in a condition direction 𝜹⁢(𝒄)=ϵ𝜽⁢(𝒛t,t,𝒄)−ϵ𝜽⁢(𝒛t,t)𝜹𝒄subscriptbold-italic-ϵ𝜽subscript𝒛𝑡𝑡𝒄subscriptbold-italic-ϵ𝜽subscript𝒛𝑡𝑡\bm{\delta}(\bm{c})=\bm{\epsilon}_{\bm{\theta}}(\bm{z}_{t},t,\bm{c})-\bm{% \epsilon}_{\bm{\theta}}(\bm{z}_{t},t)bold_italic_δ ( bold_italic_c ) = bold_italic_ϵ start_POSTSUBSCRIPT bold_italic_θ end_POSTSUBSCRIPT ( bold_italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_t , bold_italic_c ) - bold_italic_ϵ start_POSTSUBSCRIPT bold_italic_θ end_POSTSUBSCRIPT ( bold_italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_t ) nearly opposite to that of the original model, making the trajectory more likely to produce out-of-distribution samples. Note that, in the absence of an unconditional constraint, modifications to the conditional output also affect the unconditional output due to shared model parameters. (c) Anchor-Based Finetuned Trajectory. The model is finetuned so that the predicted score functions (or keys & values) for the unwanted concept align with those of the original model conditioned on a benign anchor, ensuring final samples lie on the anchor manifold, though not necessarily at the highest-probability mode. (d) Our Trajectory (ANT). In the early stage (when t>t′𝑡superscript𝑡′t>t^{\prime}italic_t > italic_t start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT), the conditional score functions remain directed toward the natural data mode, keeping the finetuned model aligned with the original. When t<t′𝑡superscript𝑡′t<t^{\prime}italic_t < italic_t start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT, they are finetuned to point away from the unwanted concept manifold. ANT encourages that unconditional score functions remain unchanged throughout all stages.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.3">
<tr class="ltx_tr" id="S4.T1.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.3.3.4.1" rowspan="2"><span class="ltx_text" id="S4.T1.3.3.4.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="9" id="S4.T1.3.3.4.2">Inappropriate Image Prompt (I2P)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.3.4.3">MS-COCO 30K</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.4">Armpits</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.5">Belly</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.6">Buttocks</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.7">Feet</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.8">Breasts (F)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.9">Genitalia (F)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.10">Breasts (M)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.11">Genitalia (M)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.1" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.1.1.1.1.1" style="background-color:#FFE7E2;">Total <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" mathbackground="#FFE7E2" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.2">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.3">CLIP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.3.5.1">FMN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.2">43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.3">117</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.4">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.5">59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.6">155</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.7">17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.8">19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.9">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.5.10.1" style="background-color:#FFE7E2;">424</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.11">13.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.5.12">30.39</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.6">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.6.1">ESD-x <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.2">59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.3">73</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.4">12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.5">39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.6">100</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.7">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.8">18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.9">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.6.10.1" style="background-color:#FFE7E2;">315</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.11">14.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6.12">30.69</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.7">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.7.1">ESD-u <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.2">32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.3">30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.4">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.5">19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.6">27</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.7">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.8">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.9">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.7.10.1" style="background-color:#FFE7E2;">123</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.11">15.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7.12">30.21</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.8">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.8.1">SLD-M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.2">47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.3">72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.4">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.5">21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.6">39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.7">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.8">26</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.9">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.8.10.1" style="background-color:#FFE7E2;">212</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.11">16.34</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8.12">30.90</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.9">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.9.1">AC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.2">153</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.3">180</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.4">45</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.5">66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.6">298</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.7">22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.8">67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.9">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.9.10.1" style="background-color:#FFE7E2;">838</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.11">14.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9.12"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.9.12.1">31.37</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.10">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.10.1">SA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.2">72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.3">77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.4">19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.5">25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.6">83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.7">16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.8">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.9">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.10.10.1" style="background-color:#FFE7E2;">292</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.11">–</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10.12">–</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.11">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.11.1">EA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.11.10.1" style="background-color:#FFE7E2;">199</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.11">21.75</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11.12">30.24</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.12">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.12.1">UCE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.2">29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.3">62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.4">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.5">29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.6">35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.7">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.8">11</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.9">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.12.10.1" style="background-color:#FFE7E2;">182</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.11">14.07</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.12.12">30.85</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.13">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.13.1">Receler<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.2">39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.3">26</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.4">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.5">10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.6">13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.7">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.8">12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.9">9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.13.10.1" style="background-color:#FFE7E2;">115</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.13.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.14">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.14.1">MACE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.2">17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.3">19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.4">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.5">39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.6">16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.7">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.8">9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.9">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.14.10.1" style="background-color:#FFE7E2;">111</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.11"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.14.11.1">13.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.14.12">29.41</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.15">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.15.1">AdvUnlearn<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib100" title=""><span class="ltx_text" style="font-size:90%;">100</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.2">12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.3">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.4">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.5">13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.6">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.7">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.8">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.9">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.15.10.1" style="background-color:#FFE7E2;">52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.11">15.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.15.12">29.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.16">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.16.1">RealEra<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.2">19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.3">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.4">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.5">37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.6">23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.7">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.8">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.9">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.16.10.1" style="background-color:#FFE7E2;">93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.16.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.17">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.17.1">SPEED <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.2">20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.3">42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.4">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.5">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.6">29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.7">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.8">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.9">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.17.10.1" style="background-color:#FFE7E2;">113</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.11">37.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.17.12">26.29</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.18">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.18.1">SalUn <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.2">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.3">14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.4">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.5">14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.6">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.7">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.8">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.9">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.18.10.1" style="background-color:#FFE7E2;">51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.11">–</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.18.12">–</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.19">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.19.1">CE-SDWV <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.2">13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.3">46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.4">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.5">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.6">13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.7">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.8">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.9">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.19.10.1" style="background-color:#FFE7E2;">84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.11">13.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.19.12">30.80</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.20">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.20.1">SPM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.2">22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.4">9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.5">12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.6">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.7">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.8">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.9">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.20.10.1" style="background-color:#FFE7E2;">56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.20.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.21">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.21.1">RECE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.2">17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.3">23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.4">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.5">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.6">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.7">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.8">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.9">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.21.10.1" style="background-color:#FFE7E2;">66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.21.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.22">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.22.1">SDD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.2">14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.4">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.5">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.6">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.7">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.8">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.9">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.22.10.1" style="background-color:#FFE7E2;">41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.22.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.23">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.23.1">DuMo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.2">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.3">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.4">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.5">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.6">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.7">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.8">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.9">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.23.10.1" style="background-color:#FFE7E2;">34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.11">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.23.12">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.24">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.24.1">ACE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.2">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.3">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.4">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.5">6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.6">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.7">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.8">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.9">9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.24.10.1" style="background-color:#FFE7E2;">39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.11">14.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.24.12">30.80</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.25">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.25.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.2">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.3">5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.4">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.5">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.6">8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.7">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.8">0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.9">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.10" style="background-color:#FFE7E2;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.25.10.1" style="background-color:#FFE7E2;">23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.11">14.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.25.12">30.64</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.26">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.3.26.1">SD v1.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.2">148</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.3">170</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.4">29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.5">63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.6">266</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.7">18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.8">42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.9">7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.26.10.1" style="background-color:#FFE7E2;">743</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.11">14.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.26.12">31.34</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.27">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.3.3.27.1">SD v2.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.2">105</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.3">159</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.4">17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.5">60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.6">177</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.7">9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.8">57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.9">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.10" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T1.3.3.27.10.1" style="background-color:#FFE7E2;">586</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.11">14.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.3.27.12">31.53</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative evaluation of NSFW content removal from images. The left half assesses the effectiveness of different methods in eliminating explicit content, measured by counting the number of exposed body parts detected using the NudeNet detector on the I2P dataset.  The right half evaluates the impact of the removal methods on the overall image quality and semantic alignment, using the Fréchet Inception Distance (FID) and CLIP scores on the COCO dataset. The breakdown by gender (Male/Female) for different body parts provides a more nuanced understanding of the results.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of Erasing NSFW Content. The left side shows the number of exposed body parts detected on the I2P dataset using the NudeNet detector, while the right side presents the FID and CLIP on the COCO dataset. M: Male. F: Female.
> </details>





### In-depth insights


#### ANT: Steer Clear
While "ANT: Steer Clear" isn't a direct heading, it evokes the paper's core innovation: **steering denoising trajectories away from unwanted concepts.** The name 'ANT' (Automatically guides deNoising Trajectories) already highlights this automatic guidance. Therefore, imagining a section with the title, "ANT: Steer Clear" implies a detailed walkthrough of how the method actively avoids the creation, or manifestation, of problematic elements. This title suggests the automatic mechanism works as a form of proactive avoidance, rather than a reactive correction and shows **ANT’s advantage against other methods by preserving structural integrity in the early stage** to avoid visual artifacts and unwanted content that arises in the later stages.

#### CFG Mid-Step Edit
The concept of a 'CFG Mid-Step Edit' is intriguing, hinting at targeted intervention within the Classifier-Free Guidance (CFG) process of diffusion models. **Such an edit would ideally allow for nuanced control over image generation**, modifying specific attributes or details while preserving the overall structural integrity and aesthetic quality. The core idea involves identifying a crucial timestep or range within the denoising process where targeted adjustments to the CFG can yield significant changes in output, perhaps preventing the emergence of undesired concepts or enhancing desired ones. **Success hinges on understanding the semantic influence of different denoising stages**. Early stages often define global structure, while later stages refine details. Therefore, the 'Mid-Step Edit' would require a delicate balance, avoiding disruptive changes early on and ensuring sufficient impact later. **Challenges include accurately identifying the optimal intervention point, designing effective edit strategies, and preventing unintended side effects**. Sophisticated techniques, like attention manipulation or score function modification, could be employed. Further research could explore adaptive strategies that dynamically adjust the edit based on input prompts or image content.

#### Saliency Key Map
The concept of a saliency map centers on identifying the **most important regions** or features in an image or data sample. In the context of AI safety, especially concerning harmful content generation, a saliency map could highlight the parameters or neurons that are most influential in producing the unwanted concept. These maps are useful for guiding interventions like pruning or adversarial training, efficiently targeting the **root causes of undesirable behavior**. The effectiveness hinges on accurately capturing the relevant features without oversimplifying the model's complex decision-making process. This approach could be vulnerable to adversarial attacks if the saliency map is not robust or if attackers can manipulate the model to generate deceptive maps, emphasizing the importance of **robust and reliable saliency methods**.

#### Multi-LoRA Fusion
**Multi-LoRA fusion offers a promising avenue for enhancing model expressiveness and enabling fine-grained control.** By combining multiple LoRA modules, each specialized for a specific task or concept, the model can effectively address complex scenarios requiring diverse adjustments. **This approach is particularly relevant in scenarios where sequential or parallel fine-tuning might lead to performance degradation or interference between concepts.** The optimization process for finding the optimal fusion solution, as mentioned, is crucial for achieving a balanced and effective integration of the LoRA modules, ultimately leading to improved performance and control over the model's behavior.

#### Robustness Next
The section on "Robustness" likely addresses the **vulnerability of concept erasure methods to adversarial prompts**. Despite successful concept suppression, models may still generate undesirable content with crafted prompts. Research is focusing on improving model reliability against these "attacks", combining prompt discovery with robust erasure or using adversarial training to improve stability, it highlights the **need for robust erasure techniques**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.12782/x2.png)

> 🔼 Figure 2 compares the performance of different concept erasure methods on diffusion models, using the concept 'cat'.  The anchor-free method (ESD) struggles, often resulting in images with visual artifacts or content unrelated to the prompt. The anchor-based method (MACE), which replaces 'cat' with 'forest', shows some success in simple scenarios. However, in more complex contexts, MACE produces unnatural or incoherent outputs.  In contrast, the researchers' novel trajectory-aware method (ANT) effectively removes the concept 'cat' while maintaining the overall structure and coherence of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 2: Generation results of different concept erasure methods conditioned on the concept “cat”. The anchor-free method (ESD) often produces images with visual artifacts or content that is out of distribution. The anchor-based method (MACE), which maps “cat” to “forest”, performs reasonably well in simple contexts but results in unnatural or incoherent outputs in more complex scenarios. In contrast, our trajectory-aware method (ANT) effectively removes the target concept while preserving the overall structure and contextual integrity of the generated images.
> </details>



![](https://arxiv.org/html/2504.12782/x3.png)

> 🔼 Figure 3 illustrates the impact of altering the condition direction during different stages of the denoising process in a diffusion model.  The condition direction,  δ(c) = ϵθ(zt, t, c) - ϵθ(zt, t), represents the difference between the conditional and unconditional predictions of the model. By reversing this direction at various timesteps (t'), the model's ability to modify specific image attributes (such as occupation, gender, and age in this example) is tested.  Panel (a) shows the generation of original images.  Panels (b) through (d) demonstrate the impact of changing the condition direction at timesteps 25, 35, and 45 respectively. The results show that reversing the condition direction at an appropriate time (t'=35) allows selective attribute modification without disrupting the overall image structure. Reversal too early (t'=45) leads to structural artifacts, while reversal too late (t'=25) only affects fine image details.
> <details>
> <summary>read the caption</summary>
> Figure 3: Effect of condition direction reversal at different timesteps. Each column represents a distinct semantic condition, and each row shows generated outputs under varying reversal strategies. (a) displays originally generated images using a diffusion process (timestep 50→1). (b)–(d) show results when the condition direction 𝜹⁢(𝒄)=ϵ𝜽⁢(𝒛t,t,𝒄)−ϵ𝜽⁢(𝒛t,t)𝜹𝒄subscriptbold-italic-ϵ𝜽subscript𝒛𝑡𝑡𝒄subscriptbold-italic-ϵ𝜽subscript𝒛𝑡𝑡\bm{\delta}(\bm{c})=\bm{\epsilon}_{\bm{\theta}}(\bm{z}_{t},t,\bm{c})-\bm{% \epsilon}_{\bm{\theta}}(\bm{z}_{t},t)bold_italic_δ ( bold_italic_c ) = bold_italic_ϵ start_POSTSUBSCRIPT bold_italic_θ end_POSTSUBSCRIPT ( bold_italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_t , bold_italic_c ) - bold_italic_ϵ start_POSTSUBSCRIPT bold_italic_θ end_POSTSUBSCRIPT ( bold_italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_t ) is reversed at different timesteps (25, 35, and 45). With a proper t′superscript𝑡′t^{\prime}italic_t start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT, specific attributes can be removed while preserving image naturalness. If t′superscript𝑡′t^{\prime}italic_t start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT is too early, structural integrity is lost; if too late, only fine details are affected.
> </details>



![](https://arxiv.org/html/2504.12782/x4.png)

> 🔼 This figure visualizes the convergence of the number of active parameters identified using the intersection of multiple saliency maps.  Four different concepts—(a) Nudity, (b) Donald Trump, (c) Van Gogh Style, and (d) Dog—are examined. Each subplot displays the count of active parameters (Y-axis) against the number of intersected saliency maps (X-axis).  The results show that regardless of the concept, the number of active parameters stabilizes around 100 intersected saliency maps, indicating a consistent trend in parameter selection across different concepts.
> <details>
> <summary>read the caption</summary>
> Figure 4: Each subplot shows the number of active parameters (y-axis) against the number of intersected saliency maps (x-axis) for four concepts: (a) Nudity, (b) Donald Trump, (c) Van Gogh Style, and (d) Dog. The number of active parameters converges across different concept types with around 100 intersected saliency maps.
> </details>



![](https://arxiv.org/html/2504.12782/x5.png)

> 🔼 This figure illustrates the process of generating a concept-specific saliency map (M*) used to identify crucial model parameters for efficient concept erasure.  Multiple prompts (C) and random seeds (S) are used to generate gradient maps, which pinpoint parameters strongly correlated with the target concept.  After thresholding these maps, their intersection across all prompts and seeds yields the final concept-specific saliency map (M*), guiding the finetuning process to only adjust the most relevant parameters for removing the undesired concept. This approach avoids unnecessary adjustments of other parts of the model, improving accuracy and efficiency of erasure.
> <details>
> <summary>read the caption</summary>
> Figure 5: Generation of the concept-specific saliency map 𝑴∗superscript𝑴\bm{M}^{*}bold_italic_M start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT. GPT-4 generates prompts 𝒞={ci}i=1Nc𝒞superscriptsubscriptsubscript𝑐𝑖𝑖1subscript𝑁𝑐\mathcal{C}=\{c_{i}\}_{i=1}^{N_{c}}caligraphic_C = { italic_c start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_N start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT end_POSTSUPERSCRIPT, each paired with random seeds 𝒮={sj}j=1Ns𝒮superscriptsubscriptsubscript𝑠𝑗𝑗1subscript𝑁𝑠\mathcal{S}=\{s_{j}\}_{j=1}^{N_{s}}caligraphic_S = { italic_s start_POSTSUBSCRIPT italic_j end_POSTSUBSCRIPT } start_POSTSUBSCRIPT italic_j = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_N start_POSTSUBSCRIPT italic_s end_POSTSUBSCRIPT end_POSTSUPERSCRIPT, which are used to compute gradient maps. After thresholding, saliency maps are obtained, and their intersection across all prompts and seeds yields 𝑴∗superscript𝑴\bm{M}^{*}bold_italic_M start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2504.12782/x6.png)

> 🔼 This figure illustrates the process of fusing multiple LoRA (Low-Rank Adaptation) modules in a multi-concept erasure framework.  Each LoRA module is trained to remove a specific unwanted concept from the image generation model.  The fusion process combines the individual LoRA modules in a way that effectively removes multiple concepts simultaneously without negatively impacting the generation of other, desired concepts. The diagram visually depicts the fusion objective that aims to find a set of optimal parameters that minimizes the discrepancy between the original weight matrices and the updated matrices after incorporating the adjustments from each LoRA module.
> <details>
> <summary>read the caption</summary>
> Figure 6: Multi-LoRA fusion for multi-concept erasure.
> </details>



![](https://arxiv.org/html/2504.12782/x7.png)

> 🔼 Figure 7 presents a qualitative comparison of the results from erasing 100 celebrities from Stable Diffusion v1.4.  The top two rows show the results of erasing John Wayne and Tom Hiddleston, respectively, demonstrating the effectiveness of the erasure technique. The bottom two rows display the results for John Lennon and Gal Gadot who were in the preservation group, showcasing the model's ability to preserve unrelated identities. Note that erasing John Wayne presented a significant challenge for the model due to John Lennon's shared first name.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative comparison of erasing 100 celebrities from SD v1.4. John Wayne and Tom Hiddleston are in the erasure group for evaluating erasure performance; John Lennon and Gal Gadot are in preservation group for assessing preservation performance. Preserving John Lennon is challenging due to the shared first name with John Wayne.
> </details>



![](https://arxiv.org/html/2504.12782/x8.png)

> 🔼 Figure 8 presents a qualitative comparison of the results of art style erasure across different methods.  Each row shows images generated from the same random seed, allowing for direct comparison of how each method handles the task.  The top two rows display results for the erasure of styles by Chris Van Allsburg and Claude Monet, demonstrating the effectiveness of each method in removing those specific artistic influences. The bottom two rows display results for preserving the styles of Adriaen Van Outrecht and Adrian Ghenie, showing how well each method avoids unintended alterations to unrelated styles during the erasure process.  The figure highlights the relative strengths and weaknesses of different approaches to art-style erasure, demonstrating whether they successfully remove the targeted styles while maintaining the integrity of the unrelated styles.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative comparison on art style erasure. The images on the same row are generated using the same random seed. Chris Van Allsburg and Claude Monet are in the erasure group, while Adriaen Van Outrecht and Adrian Ghenie are in the retention group.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.12.6">
<tr class="ltx_tr" id="S4.T2.12.6.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.12.6.6.7">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.7.1.1.1"><math alttext="\text{Acc}_{e}\downarrow" class="ltx_Math" display="inline" id="S4.T2.7.1.1.1.m1.1"><semantics id="S4.T2.7.1.1.1.m1.1a"><mrow id="S4.T2.7.1.1.1.m1.1.1" xref="S4.T2.7.1.1.1.m1.1.1.cmml"><msub id="S4.T2.7.1.1.1.m1.1.1.2" xref="S4.T2.7.1.1.1.m1.1.1.2.cmml"><mtext id="S4.T2.7.1.1.1.m1.1.1.2.2" xref="S4.T2.7.1.1.1.m1.1.1.2.2a.cmml">Acc</mtext><mi id="S4.T2.7.1.1.1.m1.1.1.2.3" xref="S4.T2.7.1.1.1.m1.1.1.2.3.cmml">e</mi></msub><mo id="S4.T2.7.1.1.1.m1.1.1.1" stretchy="false" xref="S4.T2.7.1.1.1.m1.1.1.1.cmml">↓</mo><mi id="S4.T2.7.1.1.1.m1.1.1.3" xref="S4.T2.7.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.7.1.1.1.m1.1b"><apply id="S4.T2.7.1.1.1.m1.1.1.cmml" xref="S4.T2.7.1.1.1.m1.1.1"><ci id="S4.T2.7.1.1.1.m1.1.1.1.cmml" xref="S4.T2.7.1.1.1.m1.1.1.1">↓</ci><apply id="S4.T2.7.1.1.1.m1.1.1.2.cmml" xref="S4.T2.7.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T2.7.1.1.1.m1.1.1.2.1.cmml" xref="S4.T2.7.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S4.T2.7.1.1.1.m1.1.1.2.2a.cmml" xref="S4.T2.7.1.1.1.m1.1.1.2.2"><mtext id="S4.T2.7.1.1.1.m1.1.1.2.2.cmml" xref="S4.T2.7.1.1.1.m1.1.1.2.2">Acc</mtext></ci><ci id="S4.T2.7.1.1.1.m1.1.1.2.3.cmml" xref="S4.T2.7.1.1.1.m1.1.1.2.3">𝑒</ci></apply><csymbol cd="latexml" id="S4.T2.7.1.1.1.m1.1.1.3.cmml" xref="S4.T2.7.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.1.1.1.m1.1c">\text{Acc}_{e}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.1.1.1.m1.1d">Acc start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.2.2"><math alttext="{\text{Acc}_{p}\uparrow}" class="ltx_Math" display="inline" id="S4.T2.8.2.2.2.m1.1"><semantics id="S4.T2.8.2.2.2.m1.1a"><mrow id="S4.T2.8.2.2.2.m1.1.1" xref="S4.T2.8.2.2.2.m1.1.1.cmml"><msub id="S4.T2.8.2.2.2.m1.1.1.2" xref="S4.T2.8.2.2.2.m1.1.1.2.cmml"><mtext id="S4.T2.8.2.2.2.m1.1.1.2.2" xref="S4.T2.8.2.2.2.m1.1.1.2.2a.cmml">Acc</mtext><mi id="S4.T2.8.2.2.2.m1.1.1.2.3" xref="S4.T2.8.2.2.2.m1.1.1.2.3.cmml">p</mi></msub><mo id="S4.T2.8.2.2.2.m1.1.1.1" stretchy="false" xref="S4.T2.8.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T2.8.2.2.2.m1.1.1.3" xref="S4.T2.8.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.8.2.2.2.m1.1b"><apply id="S4.T2.8.2.2.2.m1.1.1.cmml" xref="S4.T2.8.2.2.2.m1.1.1"><ci id="S4.T2.8.2.2.2.m1.1.1.1.cmml" xref="S4.T2.8.2.2.2.m1.1.1.1">↑</ci><apply id="S4.T2.8.2.2.2.m1.1.1.2.cmml" xref="S4.T2.8.2.2.2.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T2.8.2.2.2.m1.1.1.2.1.cmml" xref="S4.T2.8.2.2.2.m1.1.1.2">subscript</csymbol><ci id="S4.T2.8.2.2.2.m1.1.1.2.2a.cmml" xref="S4.T2.8.2.2.2.m1.1.1.2.2"><mtext id="S4.T2.8.2.2.2.m1.1.1.2.2.cmml" xref="S4.T2.8.2.2.2.m1.1.1.2.2">Acc</mtext></ci><ci id="S4.T2.8.2.2.2.m1.1.1.2.3.cmml" xref="S4.T2.8.2.2.2.m1.1.1.2.3">𝑝</ci></apply><csymbol cd="latexml" id="S4.T2.8.2.2.2.m1.1.1.3.cmml" xref="S4.T2.8.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.2.2.2.m1.1c">{\text{Acc}_{p}\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.2.2.2.m1.1d">Acc start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.9.3.3.3" style="background-color:#FFE7E2;"><math alttext="{H_{c}\uparrow}" class="ltx_Math" display="inline" id="S4.T2.9.3.3.3.m1.1" style="background-color:#FFE7E2;"><semantics id="S4.T2.9.3.3.3.m1.1a"><mrow id="S4.T2.9.3.3.3.m1.1.1" xref="S4.T2.9.3.3.3.m1.1.1.cmml"><msub id="S4.T2.9.3.3.3.m1.1.1.2" xref="S4.T2.9.3.3.3.m1.1.1.2.cmml"><mi id="S4.T2.9.3.3.3.m1.1.1.2.2" mathbackground="#FFE7E2" xref="S4.T2.9.3.3.3.m1.1.1.2.2.cmml">H</mi><mi id="S4.T2.9.3.3.3.m1.1.1.2.3" mathbackground="#FFE7E2" xref="S4.T2.9.3.3.3.m1.1.1.2.3.cmml">c</mi></msub><mo id="S4.T2.9.3.3.3.m1.1.1.1" mathbackground="#FFE7E2" stretchy="false" xref="S4.T2.9.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S4.T2.9.3.3.3.m1.1.1.3" xref="S4.T2.9.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.9.3.3.3.m1.1b"><apply id="S4.T2.9.3.3.3.m1.1.1.cmml" xref="S4.T2.9.3.3.3.m1.1.1"><ci id="S4.T2.9.3.3.3.m1.1.1.1.cmml" xref="S4.T2.9.3.3.3.m1.1.1.1">↑</ci><apply id="S4.T2.9.3.3.3.m1.1.1.2.cmml" xref="S4.T2.9.3.3.3.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T2.9.3.3.3.m1.1.1.2.1.cmml" xref="S4.T2.9.3.3.3.m1.1.1.2">subscript</csymbol><ci id="S4.T2.9.3.3.3.m1.1.1.2.2.cmml" xref="S4.T2.9.3.3.3.m1.1.1.2.2">𝐻</ci><ci id="S4.T2.9.3.3.3.m1.1.1.2.3.cmml" xref="S4.T2.9.3.3.3.m1.1.1.2.3">𝑐</ci></apply><csymbol cd="latexml" id="S4.T2.9.3.3.3.m1.1.1.3.cmml" xref="S4.T2.9.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.3.3.3.m1.1c">{H_{c}\uparrow}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.3.3.3.m1.1d">italic_H start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.10.4.4.4">Face Ratio<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.4.4.4.m1.1"><semantics id="S4.T2.10.4.4.4.m1.1a"><mo id="S4.T2.10.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.10.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.4.4.4.m1.1b"><ci id="S4.T2.10.4.4.4.m1.1.1.cmml" xref="S4.T2.10.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.11.5.5.5">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.11.5.5.5.m1.1"><semantics id="S4.T2.11.5.5.5.m1.1a"><mo id="S4.T2.11.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.11.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.5.5.5.m1.1b"><ci id="S4.T2.11.5.5.5.m1.1.1.cmml" xref="S4.T2.11.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.6.6.6">CLIP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.12.6.6.6.m1.1"><semantics id="S4.T2.12.6.6.6.m1.1a"><mo id="S4.T2.12.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.12.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.6.6.6.m1.1b"><ci id="S4.T2.12.6.6.6.m1.1.1.cmml" xref="S4.T2.12.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.6.7.1">FMN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.7.2">0.9223</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.6.7.3.1">0.9076</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.7.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.7.4.1" style="background-color:#FFE7E2;">0.1431</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.6.7.5.1">0.9940</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.7.6">13.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.6.7.7.1">31.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.8">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.8.1">ESD-x <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.8.2">0.2784</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.8.3">0.2793</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.8.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.8.4.1" style="background-color:#FFE7E2;">0.4027</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.8.5">0.8088</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.8.6">14.65</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.8.7">28.90</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.9">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.9.1">ESD-u <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.9.2"><span class="ltx_text ltx_font_bold" id="S4.T2.12.6.9.2.1">0.0406</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.9.3">0.3909</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.9.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.9.4.1" style="background-color:#FFE7E2;">0.4598</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.9.5">0.4724</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.9.6">15.14</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.9.7">29.02</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.10">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.10.1">SLD-M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.10.2">0.8706</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.10.3">0.7946</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.10.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.10.4.1" style="background-color:#FFE7E2;">0.2237</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.10.5">0.9093</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.10.6">17.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.10.7">30.93</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.11">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.11.1">AC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.11.2">0.8913</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.11.3">0.9096</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.11.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.11.4.1" style="background-color:#FFE7E2;">0.1977</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.11.5">0.9932</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.11.6">13.92</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.11.7">31.23</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.12">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.12.1">UCE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.12.2">0.0012</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.12.3">0.3790</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.12.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.12.4.1" style="background-color:#FFE7E2;">0.5495</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.12.5">0.7179</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.12.6">106.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.12.7">19.17</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.13">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.13.1">RECE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.13.2">0.0243</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.13.3">0.2371</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.13.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.13.4.1" style="background-color:#FFE7E2;">0.3816</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.13.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.13.6">177.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.13.7">12.09</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.14">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.14.1">SPEED <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.14.2">0.0587</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.14.3">0.8554</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.14.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.14.4.1" style="background-color:#FFE7E2;">0.8963</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.14.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.14.6">44.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.14.7">26.22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.15">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.15.1">MACE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.15.2">0.0430</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.15.3">0.8456</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.15.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.15.4.1" style="background-color:#FFE7E2;">0.8979</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.15.5">0.9820</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.15.6">12.82</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.15.7">30.21</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.16">
<td class="ltx_td ltx_align_left" id="S4.T2.12.6.16.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.16.2">0.0430</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.16.3">0.8807</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.16.4" style="background-color:#FFE7E2;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.6.16.4.1" style="background-color:#FFE7E2;">0.9173</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.16.5">0.9816</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.16.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.6.16.6.1">11.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.16.7">30.40</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.6.17.1">SD v1.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.17.2">0.9648</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.17.3">0.9388</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.17.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.17.4.1" style="background-color:#FFE7E2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.17.5">0.9876</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.17.6">14.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.6.17.7">31.34</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.12.6.18.1">SD v2.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.6.18.2">0.9324</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.6.18.3">0.9293</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.6.18.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T2.12.6.18.4.1" style="background-color:#FFE7E2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.6.18.5">0.9879</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.6.18.6">14.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.6.18.7">31.53</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive evaluation of different concept erasure methods on a dataset of 200 celebrities, 100 of which are targeted for erasure and 100 for preservation.  The table quantifies the performance of each method across several key metrics:    * **Acc<sub>e</sub>:** The accuracy of correctly removing the target concepts (erased celebrities). * **Acc<sub>p</sub>:** The accuracy of preserving the unrelated concepts (preserved celebrities). * **H<sub>c</sub>:** The harmonic mean of Acc<sub>e</sub> and Acc<sub>p</sub>, providing a balanced assessment of both erasure and preservation capabilities.  A higher H<sub>c</sub> indicates superior performance. * **Face Ratio:** The proportion of images where faces are clearly recognizable.  This assesses the quality of the generated images.  * **FID:** Frechet Inception Distance, a metric measuring the visual quality of the generated images against a reference dataset (MS-COCO). * **CLIP:**  CLIP score, indicating the alignment of generated images with the corresponding captions.  This evaluates the semantic fidelity of the images.  The table also includes results from two baselines using Stable Diffusion models (versions 1.4 and 2.1) to provide context for the comparative performance of the tested erasure methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of Erasing Celebrity. We report the accuracy for erased celebrities (AccesubscriptAcc𝑒\text{Acc}_{e}Acc start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT), accuracy for preserved celebrities (AccpsubscriptAcc𝑝\text{Acc}_{p}Acc start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT), harmonic mean metric (Hcsubscript𝐻𝑐H_{c}italic_H start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT) and the proportion of clearly recognizable faces (Face Ratio). FID and CLIP are results based on MS-COCO dataset. SD v1.4 and SD v2.1 are used as reference base models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.11.5">
<tr class="ltx_tr" id="S4.T3.11.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.11.5.5.6">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.1.1.1"><math alttext="\text{CLIP}_{e}\downarrow" class="ltx_Math" display="inline" id="S4.T3.7.1.1.1.m1.1"><semantics id="S4.T3.7.1.1.1.m1.1a"><mrow id="S4.T3.7.1.1.1.m1.1.1" xref="S4.T3.7.1.1.1.m1.1.1.cmml"><msub id="S4.T3.7.1.1.1.m1.1.1.2" xref="S4.T3.7.1.1.1.m1.1.1.2.cmml"><mtext id="S4.T3.7.1.1.1.m1.1.1.2.2" xref="S4.T3.7.1.1.1.m1.1.1.2.2a.cmml">CLIP</mtext><mi id="S4.T3.7.1.1.1.m1.1.1.2.3" xref="S4.T3.7.1.1.1.m1.1.1.2.3.cmml">e</mi></msub><mo id="S4.T3.7.1.1.1.m1.1.1.1" stretchy="false" xref="S4.T3.7.1.1.1.m1.1.1.1.cmml">↓</mo><mi id="S4.T3.7.1.1.1.m1.1.1.3" xref="S4.T3.7.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.1.1.1.m1.1b"><apply id="S4.T3.7.1.1.1.m1.1.1.cmml" xref="S4.T3.7.1.1.1.m1.1.1"><ci id="S4.T3.7.1.1.1.m1.1.1.1.cmml" xref="S4.T3.7.1.1.1.m1.1.1.1">↓</ci><apply id="S4.T3.7.1.1.1.m1.1.1.2.cmml" xref="S4.T3.7.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T3.7.1.1.1.m1.1.1.2.1.cmml" xref="S4.T3.7.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S4.T3.7.1.1.1.m1.1.1.2.2a.cmml" xref="S4.T3.7.1.1.1.m1.1.1.2.2"><mtext id="S4.T3.7.1.1.1.m1.1.1.2.2.cmml" xref="S4.T3.7.1.1.1.m1.1.1.2.2">CLIP</mtext></ci><ci id="S4.T3.7.1.1.1.m1.1.1.2.3.cmml" xref="S4.T3.7.1.1.1.m1.1.1.2.3">𝑒</ci></apply><csymbol cd="latexml" id="S4.T3.7.1.1.1.m1.1.1.3.cmml" xref="S4.T3.7.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.1.1.1.m1.1c">\text{CLIP}_{e}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.1.1.1.m1.1d">CLIP start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.2.2.2"><math alttext="\text{CLIP}_{p}\uparrow" class="ltx_Math" display="inline" id="S4.T3.8.2.2.2.m1.1"><semantics id="S4.T3.8.2.2.2.m1.1a"><mrow id="S4.T3.8.2.2.2.m1.1.1" xref="S4.T3.8.2.2.2.m1.1.1.cmml"><msub id="S4.T3.8.2.2.2.m1.1.1.2" xref="S4.T3.8.2.2.2.m1.1.1.2.cmml"><mtext id="S4.T3.8.2.2.2.m1.1.1.2.2" xref="S4.T3.8.2.2.2.m1.1.1.2.2a.cmml">CLIP</mtext><mi id="S4.T3.8.2.2.2.m1.1.1.2.3" xref="S4.T3.8.2.2.2.m1.1.1.2.3.cmml">p</mi></msub><mo id="S4.T3.8.2.2.2.m1.1.1.1" stretchy="false" xref="S4.T3.8.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.8.2.2.2.m1.1.1.3" xref="S4.T3.8.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.2.2.2.m1.1b"><apply id="S4.T3.8.2.2.2.m1.1.1.cmml" xref="S4.T3.8.2.2.2.m1.1.1"><ci id="S4.T3.8.2.2.2.m1.1.1.1.cmml" xref="S4.T3.8.2.2.2.m1.1.1.1">↑</ci><apply id="S4.T3.8.2.2.2.m1.1.1.2.cmml" xref="S4.T3.8.2.2.2.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T3.8.2.2.2.m1.1.1.2.1.cmml" xref="S4.T3.8.2.2.2.m1.1.1.2">subscript</csymbol><ci id="S4.T3.8.2.2.2.m1.1.1.2.2a.cmml" xref="S4.T3.8.2.2.2.m1.1.1.2.2"><mtext id="S4.T3.8.2.2.2.m1.1.1.2.2.cmml" xref="S4.T3.8.2.2.2.m1.1.1.2.2">CLIP</mtext></ci><ci id="S4.T3.8.2.2.2.m1.1.1.2.3.cmml" xref="S4.T3.8.2.2.2.m1.1.1.2.3">𝑝</ci></apply><csymbol cd="latexml" id="S4.T3.8.2.2.2.m1.1.1.3.cmml" xref="S4.T3.8.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.2.2.2.m1.1c">\text{CLIP}_{p}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.2.2.2.m1.1d">CLIP start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.9.3.3.3" style="background-color:#FFE7E2;"><math alttext="H_{a}\uparrow" class="ltx_Math" display="inline" id="S4.T3.9.3.3.3.m1.1" style="background-color:#FFE7E2;"><semantics id="S4.T3.9.3.3.3.m1.1a"><mrow id="S4.T3.9.3.3.3.m1.1.1" xref="S4.T3.9.3.3.3.m1.1.1.cmml"><msub id="S4.T3.9.3.3.3.m1.1.1.2" xref="S4.T3.9.3.3.3.m1.1.1.2.cmml"><mi id="S4.T3.9.3.3.3.m1.1.1.2.2" mathbackground="#FFE7E2" xref="S4.T3.9.3.3.3.m1.1.1.2.2.cmml">H</mi><mi id="S4.T3.9.3.3.3.m1.1.1.2.3" mathbackground="#FFE7E2" xref="S4.T3.9.3.3.3.m1.1.1.2.3.cmml">a</mi></msub><mo id="S4.T3.9.3.3.3.m1.1.1.1" mathbackground="#FFE7E2" stretchy="false" xref="S4.T3.9.3.3.3.m1.1.1.1.cmml">↑</mo><mi id="S4.T3.9.3.3.3.m1.1.1.3" xref="S4.T3.9.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.9.3.3.3.m1.1b"><apply id="S4.T3.9.3.3.3.m1.1.1.cmml" xref="S4.T3.9.3.3.3.m1.1.1"><ci id="S4.T3.9.3.3.3.m1.1.1.1.cmml" xref="S4.T3.9.3.3.3.m1.1.1.1">↑</ci><apply id="S4.T3.9.3.3.3.m1.1.1.2.cmml" xref="S4.T3.9.3.3.3.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T3.9.3.3.3.m1.1.1.2.1.cmml" xref="S4.T3.9.3.3.3.m1.1.1.2">subscript</csymbol><ci id="S4.T3.9.3.3.3.m1.1.1.2.2.cmml" xref="S4.T3.9.3.3.3.m1.1.1.2.2">𝐻</ci><ci id="S4.T3.9.3.3.3.m1.1.1.2.3.cmml" xref="S4.T3.9.3.3.3.m1.1.1.2.3">𝑎</ci></apply><csymbol cd="latexml" id="S4.T3.9.3.3.3.m1.1.1.3.cmml" xref="S4.T3.9.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.3.3.3.m1.1c">H_{a}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.3.3.3.m1.1d">italic_H start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.10.4.4.4">FID-COCO<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.10.4.4.4.m1.1"><semantics id="S4.T3.10.4.4.4.m1.1a"><mo id="S4.T3.10.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.10.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.4.4.4.m1.1b"><ci id="S4.T3.10.4.4.4.m1.1.1.cmml" xref="S4.T3.10.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.11.5.5.5">CLIP-COCO<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.11.5.5.5.m1.1"><semantics id="S4.T3.11.5.5.5.m1.1a"><mo id="S4.T3.11.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.11.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.5.5.5.m1.1b"><ci id="S4.T3.11.5.5.5.m1.1.1.cmml" xref="S4.T3.11.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.11.5.6.1">FMN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.5.6.2">29.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.5.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.11.5.6.3.1">28.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.5.6.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.6.4.1" style="background-color:#FFE7E2;">-0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.5.6.5">13.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.5.6.6"><span class="ltx_text ltx_font_bold" id="S4.T3.11.5.6.6.1">31.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.7">
<td class="ltx_td ltx_align_left" id="S4.T3.11.5.7.1">ESD-x <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.7.2">20.89</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.7.3">21.21</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.7.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.7.4.1" style="background-color:#FFE7E2;">0.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.7.5">15.19</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.7.6">29.52</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.8">
<td class="ltx_td ltx_align_left" id="S4.T3.11.5.8.1">ESD-u <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.8.2"><span class="ltx_text ltx_font_bold" id="S4.T3.11.5.8.2.1">19.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.8.3">19.55</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.8.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.8.4.1" style="background-color:#FFE7E2;">-0.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.8.5">17.07</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.8.6">27.76</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.9">
<td class="ltx_td ltx_align_left" id="S4.T3.11.5.9.1">SLD-M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.9.2">28.49</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.9.3">27.89</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.9.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.9.4.1" style="background-color:#FFE7E2;">-0.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.9.5">17.95</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.9.6">30.87</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.10">
<td class="ltx_td ltx_align_left" id="S4.T3.11.5.10.1">AC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.10.2">29.26</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.10.3">28.54</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.10.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.10.4.1" style="background-color:#FFE7E2;">-0.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.10.5">14.08</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.10.6">31.29</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.11">
<td class="ltx_td ltx_align_left" id="S4.T3.11.5.11.1">UCE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.11.2">21.31</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.11.3">25.70</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.11.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.11.4.1" style="background-color:#FFE7E2;">4.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.11.5">77.72</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.11.6">19.17</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.12">
<td class="ltx_td ltx_align_left" id="S4.T3.11.5.12.1">MACE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12782v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.12.2">22.59</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.12.3">28.58</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.12.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.12.4.1" style="background-color:#FFE7E2;">5.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.12.5"><span class="ltx_text ltx_font_bold" id="S4.T3.11.5.12.5.1">12.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.12.6">29.51</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.13">
<td class="ltx_td ltx_align_left" id="S4.T3.11.5.13.1">Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.13.2">20.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.13.3">26.78</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.13.4" style="background-color:#FFE7E2;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.5.13.4.1" style="background-color:#FFE7E2;">6.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.13.5">12.96</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.13.6">27.63</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.11.5.14.1">SD v1.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.5.14.2">29.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.5.14.3">28.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.5.14.4" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T3.11.5.14.4.1" style="background-color:#FFE7E2;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.5.14.5">14.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.11.5.14.6">31.34</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of the experiment on erasing 100 art styles.  It assesses the performance of different methods in removing specific art styles while preserving unrelated styles.  For each method, the CLIP score for erased art styles (CLIPe), the CLIP score for preserved art styles (CLIPp), and the harmonic mean of these two scores (Ha) are reported.  Lower CLIPe indicates better erasure, higher CLIPp indicates better preservation of unrelated styles, and higher Ha shows a better balance between erasure and preservation.  Additionally, FID and CLIP scores calculated on the MS-COCO dataset are provided as overall image quality metrics.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of Erasing 100 Art Styles. We report the CLIP score for erased artistic style (CLIPesubscriptCLIP𝑒\text{CLIP}_{e}CLIP start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT), CLIP score for preserved artistic style (CLIPpsubscriptCLIP𝑝\text{CLIP}_{p}CLIP start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT), the overall score (Hasubscript𝐻𝑎H_{a}italic_H start_POSTSUBSCRIPT italic_a end_POSTSUBSCRIPT). FID and CLIP are results based on MS-COCO dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.16.8">
<tr class="ltx_tr" id="S4.T4.16.8.9">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.16.8.9.1" rowspan="2"><span class="ltx_text" id="S4.T4.16.8.9.1.1">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T4.16.8.9.2">Components</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.16.8.9.3">Metrics</td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.1.1.1"><math alttext="\mathcal{L}_{\text{erase}}" class="ltx_Math" display="inline" id="S4.T4.9.1.1.1.m1.1"><semantics id="S4.T4.9.1.1.1.m1.1a"><msub id="S4.T4.9.1.1.1.m1.1.1" xref="S4.T4.9.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.9.1.1.1.m1.1.1.2" xref="S4.T4.9.1.1.1.m1.1.1.2.cmml">ℒ</mi><mtext id="S4.T4.9.1.1.1.m1.1.1.3" xref="S4.T4.9.1.1.1.m1.1.1.3a.cmml">erase</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.9.1.1.1.m1.1b"><apply id="S4.T4.9.1.1.1.m1.1.1.cmml" xref="S4.T4.9.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.9.1.1.1.m1.1.1.1.cmml" xref="S4.T4.9.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.9.1.1.1.m1.1.1.2.cmml" xref="S4.T4.9.1.1.1.m1.1.1.2">ℒ</ci><ci id="S4.T4.9.1.1.1.m1.1.1.3a.cmml" xref="S4.T4.9.1.1.1.m1.1.1.3"><mtext id="S4.T4.9.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S4.T4.9.1.1.1.m1.1.1.3">erase</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.1.1.1.m1.1c">\mathcal{L}_{\text{erase}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.1.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT erase end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.2.2.2"><math alttext="\mathcal{L}_{\text{erase}}^{*}" class="ltx_Math" display="inline" id="S4.T4.10.2.2.2.m1.1"><semantics id="S4.T4.10.2.2.2.m1.1a"><msubsup id="S4.T4.10.2.2.2.m1.1.1" xref="S4.T4.10.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.10.2.2.2.m1.1.1.2.2" xref="S4.T4.10.2.2.2.m1.1.1.2.2.cmml">ℒ</mi><mtext id="S4.T4.10.2.2.2.m1.1.1.2.3" xref="S4.T4.10.2.2.2.m1.1.1.2.3a.cmml">erase</mtext><mo id="S4.T4.10.2.2.2.m1.1.1.3" xref="S4.T4.10.2.2.2.m1.1.1.3.cmml">∗</mo></msubsup><annotation-xml encoding="MathML-Content" id="S4.T4.10.2.2.2.m1.1b"><apply id="S4.T4.10.2.2.2.m1.1.1.cmml" xref="S4.T4.10.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.10.2.2.2.m1.1.1.1.cmml" xref="S4.T4.10.2.2.2.m1.1.1">superscript</csymbol><apply id="S4.T4.10.2.2.2.m1.1.1.2.cmml" xref="S4.T4.10.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.10.2.2.2.m1.1.1.2.1.cmml" xref="S4.T4.10.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T4.10.2.2.2.m1.1.1.2.2.cmml" xref="S4.T4.10.2.2.2.m1.1.1.2.2">ℒ</ci><ci id="S4.T4.10.2.2.2.m1.1.1.2.3a.cmml" xref="S4.T4.10.2.2.2.m1.1.1.2.3"><mtext id="S4.T4.10.2.2.2.m1.1.1.2.3.cmml" mathsize="70%" xref="S4.T4.10.2.2.2.m1.1.1.2.3">erase</mtext></ci></apply><times id="S4.T4.10.2.2.2.m1.1.1.3.cmml" xref="S4.T4.10.2.2.2.m1.1.1.3"></times></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.2.2.2.m1.1c">\mathcal{L}_{\text{erase}}^{*}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.2.2.2.m1.1d">caligraphic_L start_POSTSUBSCRIPT erase end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.11.3.3.3"><math alttext="\mathcal{L}_{\text{preserve}}" class="ltx_Math" display="inline" id="S4.T4.11.3.3.3.m1.1"><semantics id="S4.T4.11.3.3.3.m1.1a"><msub id="S4.T4.11.3.3.3.m1.1.1" xref="S4.T4.11.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.11.3.3.3.m1.1.1.2" xref="S4.T4.11.3.3.3.m1.1.1.2.cmml">ℒ</mi><mtext id="S4.T4.11.3.3.3.m1.1.1.3" xref="S4.T4.11.3.3.3.m1.1.1.3a.cmml">preserve</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.11.3.3.3.m1.1b"><apply id="S4.T4.11.3.3.3.m1.1.1.cmml" xref="S4.T4.11.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.11.3.3.3.m1.1.1.1.cmml" xref="S4.T4.11.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T4.11.3.3.3.m1.1.1.2.cmml" xref="S4.T4.11.3.3.3.m1.1.1.2">ℒ</ci><ci id="S4.T4.11.3.3.3.m1.1.1.3a.cmml" xref="S4.T4.11.3.3.3.m1.1.1.3"><mtext id="S4.T4.11.3.3.3.m1.1.1.3.cmml" mathsize="70%" xref="S4.T4.11.3.3.3.m1.1.1.3">preserve</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.3.3.3.m1.1c">\mathcal{L}_{\text{preserve}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.3.3.3.m1.1d">caligraphic_L start_POSTSUBSCRIPT preserve end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.12.4.4.4"><math alttext="\mathcal{L}_{\text{uncond-early}}" class="ltx_Math" display="inline" id="S4.T4.12.4.4.4.m1.1"><semantics id="S4.T4.12.4.4.4.m1.1a"><msub id="S4.T4.12.4.4.4.m1.1.1" xref="S4.T4.12.4.4.4.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.12.4.4.4.m1.1.1.2" xref="S4.T4.12.4.4.4.m1.1.1.2.cmml">ℒ</mi><mtext id="S4.T4.12.4.4.4.m1.1.1.3" xref="S4.T4.12.4.4.4.m1.1.1.3a.cmml">uncond-early</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.12.4.4.4.m1.1b"><apply id="S4.T4.12.4.4.4.m1.1.1.cmml" xref="S4.T4.12.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.12.4.4.4.m1.1.1.1.cmml" xref="S4.T4.12.4.4.4.m1.1.1">subscript</csymbol><ci id="S4.T4.12.4.4.4.m1.1.1.2.cmml" xref="S4.T4.12.4.4.4.m1.1.1.2">ℒ</ci><ci id="S4.T4.12.4.4.4.m1.1.1.3a.cmml" xref="S4.T4.12.4.4.4.m1.1.1.3"><mtext id="S4.T4.12.4.4.4.m1.1.1.3.cmml" mathsize="70%" xref="S4.T4.12.4.4.4.m1.1.1.3">uncond-early</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.12.4.4.4.m1.1c">\mathcal{L}_{\text{uncond-early}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.12.4.4.4.m1.1d">caligraphic_L start_POSTSUBSCRIPT uncond-early end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.5.5.5"><math alttext="\mathcal{L}_{\text{uncond-late}}" class="ltx_Math" display="inline" id="S4.T4.13.5.5.5.m1.1"><semantics id="S4.T4.13.5.5.5.m1.1a"><msub id="S4.T4.13.5.5.5.m1.1.1" xref="S4.T4.13.5.5.5.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.13.5.5.5.m1.1.1.2" xref="S4.T4.13.5.5.5.m1.1.1.2.cmml">ℒ</mi><mtext id="S4.T4.13.5.5.5.m1.1.1.3" xref="S4.T4.13.5.5.5.m1.1.1.3a.cmml">uncond-late</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.13.5.5.5.m1.1b"><apply id="S4.T4.13.5.5.5.m1.1.1.cmml" xref="S4.T4.13.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.13.5.5.5.m1.1.1.1.cmml" xref="S4.T4.13.5.5.5.m1.1.1">subscript</csymbol><ci id="S4.T4.13.5.5.5.m1.1.1.2.cmml" xref="S4.T4.13.5.5.5.m1.1.1.2">ℒ</ci><ci id="S4.T4.13.5.5.5.m1.1.1.3a.cmml" xref="S4.T4.13.5.5.5.m1.1.1.3"><mtext id="S4.T4.13.5.5.5.m1.1.1.3.cmml" mathsize="70%" xref="S4.T4.13.5.5.5.m1.1.1.3">uncond-late</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.13.5.5.5.m1.1c">\mathcal{L}_{\text{uncond-late}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.13.5.5.5.m1.1d">caligraphic_L start_POSTSUBSCRIPT uncond-late end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.14.6.6.6"><math alttext="\text{Acc}_{e}\downarrow" class="ltx_Math" display="inline" id="S4.T4.14.6.6.6.m1.1"><semantics id="S4.T4.14.6.6.6.m1.1a"><mrow id="S4.T4.14.6.6.6.m1.1.1" xref="S4.T4.14.6.6.6.m1.1.1.cmml"><msub id="S4.T4.14.6.6.6.m1.1.1.2" xref="S4.T4.14.6.6.6.m1.1.1.2.cmml"><mtext id="S4.T4.14.6.6.6.m1.1.1.2.2" xref="S4.T4.14.6.6.6.m1.1.1.2.2a.cmml">Acc</mtext><mi id="S4.T4.14.6.6.6.m1.1.1.2.3" xref="S4.T4.14.6.6.6.m1.1.1.2.3.cmml">e</mi></msub><mo id="S4.T4.14.6.6.6.m1.1.1.1" stretchy="false" xref="S4.T4.14.6.6.6.m1.1.1.1.cmml">↓</mo><mi id="S4.T4.14.6.6.6.m1.1.1.3" xref="S4.T4.14.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.14.6.6.6.m1.1b"><apply id="S4.T4.14.6.6.6.m1.1.1.cmml" xref="S4.T4.14.6.6.6.m1.1.1"><ci id="S4.T4.14.6.6.6.m1.1.1.1.cmml" xref="S4.T4.14.6.6.6.m1.1.1.1">↓</ci><apply id="S4.T4.14.6.6.6.m1.1.1.2.cmml" xref="S4.T4.14.6.6.6.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T4.14.6.6.6.m1.1.1.2.1.cmml" xref="S4.T4.14.6.6.6.m1.1.1.2">subscript</csymbol><ci id="S4.T4.14.6.6.6.m1.1.1.2.2a.cmml" xref="S4.T4.14.6.6.6.m1.1.1.2.2"><mtext id="S4.T4.14.6.6.6.m1.1.1.2.2.cmml" xref="S4.T4.14.6.6.6.m1.1.1.2.2">Acc</mtext></ci><ci id="S4.T4.14.6.6.6.m1.1.1.2.3.cmml" xref="S4.T4.14.6.6.6.m1.1.1.2.3">𝑒</ci></apply><csymbol cd="latexml" id="S4.T4.14.6.6.6.m1.1.1.3.cmml" xref="S4.T4.14.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.14.6.6.6.m1.1c">\text{Acc}_{e}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.14.6.6.6.m1.1d">Acc start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.15.7.7.7"><math alttext="\text{Acc}_{p}\uparrow" class="ltx_Math" display="inline" id="S4.T4.15.7.7.7.m1.1"><semantics id="S4.T4.15.7.7.7.m1.1a"><mrow id="S4.T4.15.7.7.7.m1.1.1" xref="S4.T4.15.7.7.7.m1.1.1.cmml"><msub id="S4.T4.15.7.7.7.m1.1.1.2" xref="S4.T4.15.7.7.7.m1.1.1.2.cmml"><mtext id="S4.T4.15.7.7.7.m1.1.1.2.2" xref="S4.T4.15.7.7.7.m1.1.1.2.2a.cmml">Acc</mtext><mi id="S4.T4.15.7.7.7.m1.1.1.2.3" xref="S4.T4.15.7.7.7.m1.1.1.2.3.cmml">p</mi></msub><mo id="S4.T4.15.7.7.7.m1.1.1.1" stretchy="false" xref="S4.T4.15.7.7.7.m1.1.1.1.cmml">↑</mo><mi id="S4.T4.15.7.7.7.m1.1.1.3" xref="S4.T4.15.7.7.7.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.15.7.7.7.m1.1b"><apply id="S4.T4.15.7.7.7.m1.1.1.cmml" xref="S4.T4.15.7.7.7.m1.1.1"><ci id="S4.T4.15.7.7.7.m1.1.1.1.cmml" xref="S4.T4.15.7.7.7.m1.1.1.1">↑</ci><apply id="S4.T4.15.7.7.7.m1.1.1.2.cmml" xref="S4.T4.15.7.7.7.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T4.15.7.7.7.m1.1.1.2.1.cmml" xref="S4.T4.15.7.7.7.m1.1.1.2">subscript</csymbol><ci id="S4.T4.15.7.7.7.m1.1.1.2.2a.cmml" xref="S4.T4.15.7.7.7.m1.1.1.2.2"><mtext id="S4.T4.15.7.7.7.m1.1.1.2.2.cmml" xref="S4.T4.15.7.7.7.m1.1.1.2.2">Acc</mtext></ci><ci id="S4.T4.15.7.7.7.m1.1.1.2.3.cmml" xref="S4.T4.15.7.7.7.m1.1.1.2.3">𝑝</ci></apply><csymbol cd="latexml" id="S4.T4.15.7.7.7.m1.1.1.3.cmml" xref="S4.T4.15.7.7.7.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.15.7.7.7.m1.1c">\text{Acc}_{p}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.15.7.7.7.m1.1d">Acc start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.8.8" style="background-color:#FFE7E2;"><math alttext="H_{c}\uparrow" class="ltx_Math" display="inline" id="S4.T4.16.8.8.8.m1.1" style="background-color:#FFE7E2;"><semantics id="S4.T4.16.8.8.8.m1.1a"><mrow id="S4.T4.16.8.8.8.m1.1.1" xref="S4.T4.16.8.8.8.m1.1.1.cmml"><msub id="S4.T4.16.8.8.8.m1.1.1.2" xref="S4.T4.16.8.8.8.m1.1.1.2.cmml"><mi id="S4.T4.16.8.8.8.m1.1.1.2.2" mathbackground="#FFE7E2" xref="S4.T4.16.8.8.8.m1.1.1.2.2.cmml">H</mi><mi id="S4.T4.16.8.8.8.m1.1.1.2.3" mathbackground="#FFE7E2" xref="S4.T4.16.8.8.8.m1.1.1.2.3.cmml">c</mi></msub><mo id="S4.T4.16.8.8.8.m1.1.1.1" mathbackground="#FFE7E2" stretchy="false" xref="S4.T4.16.8.8.8.m1.1.1.1.cmml">↑</mo><mi id="S4.T4.16.8.8.8.m1.1.1.3" xref="S4.T4.16.8.8.8.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.16.8.8.8.m1.1b"><apply id="S4.T4.16.8.8.8.m1.1.1.cmml" xref="S4.T4.16.8.8.8.m1.1.1"><ci id="S4.T4.16.8.8.8.m1.1.1.1.cmml" xref="S4.T4.16.8.8.8.m1.1.1.1">↑</ci><apply id="S4.T4.16.8.8.8.m1.1.1.2.cmml" xref="S4.T4.16.8.8.8.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T4.16.8.8.8.m1.1.1.2.1.cmml" xref="S4.T4.16.8.8.8.m1.1.1.2">subscript</csymbol><ci id="S4.T4.16.8.8.8.m1.1.1.2.2.cmml" xref="S4.T4.16.8.8.8.m1.1.1.2.2">𝐻</ci><ci id="S4.T4.16.8.8.8.m1.1.1.2.3.cmml" xref="S4.T4.16.8.8.8.m1.1.1.2.3">𝑐</ci></apply><csymbol cd="latexml" id="S4.T4.16.8.8.8.m1.1.1.3.cmml" xref="S4.T4.16.8.8.8.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.16.8.8.8.m1.1c">H_{c}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.16.8.8.8.m1.1d">italic_H start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT ↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.8.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.1">A</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.2"><span class="ltx_ERROR undefined" id="S4.T4.16.8.10.2.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.3"><span class="ltx_ERROR undefined" id="S4.T4.16.8.10.3.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.4"><span class="ltx_ERROR undefined" id="S4.T4.16.8.10.4.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.5"><span class="ltx_ERROR undefined" id="S4.T4.16.8.10.5.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.6"><span class="ltx_ERROR undefined" id="S4.T4.16.8.10.6.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.7">0.0192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.8">0.7785</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.16.8.10.9" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T4.16.8.10.9.1" style="background-color:#FFE7E2;">0.8680</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.8.11">
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.1">B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.2"><span class="ltx_ERROR undefined" id="S4.T4.16.8.11.2.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.3"><span class="ltx_ERROR undefined" id="S4.T4.16.8.11.3.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.4"><span class="ltx_ERROR undefined" id="S4.T4.16.8.11.4.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.5"><span class="ltx_ERROR undefined" id="S4.T4.16.8.11.5.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.6"><span class="ltx_ERROR undefined" id="S4.T4.16.8.11.6.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.7"><span class="ltx_text ltx_font_bold" id="S4.T4.16.8.11.7.1">0.0042</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.8">0.7848</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.11.9" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T4.16.8.11.9.1" style="background-color:#FFE7E2;">0.8778</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.8.12">
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.1">C</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.2"><span class="ltx_ERROR undefined" id="S4.T4.16.8.12.2.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.3"><span class="ltx_ERROR undefined" id="S4.T4.16.8.12.3.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.4"><span class="ltx_ERROR undefined" id="S4.T4.16.8.12.4.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.5"><span class="ltx_ERROR undefined" id="S4.T4.16.8.12.5.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.6"><span class="ltx_ERROR undefined" id="S4.T4.16.8.12.6.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.7">0.0309</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.8">0.8094</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.12.9" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T4.16.8.12.9.1" style="background-color:#FFE7E2;">0.8821</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.8.13">
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.1">D</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.2"><span class="ltx_ERROR undefined" id="S4.T4.16.8.13.2.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.3"><span class="ltx_ERROR undefined" id="S4.T4.16.8.13.3.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.4"><span class="ltx_ERROR undefined" id="S4.T4.16.8.13.4.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.5"><span class="ltx_ERROR undefined" id="S4.T4.16.8.13.5.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.6"><span class="ltx_ERROR undefined" id="S4.T4.16.8.13.6.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.7">0.0075</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.8">0.8013</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.13.9" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T4.16.8.13.9.1" style="background-color:#FFE7E2;">0.8867</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.8.14">
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.1">E</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.2"><span class="ltx_ERROR undefined" id="S4.T4.16.8.14.2.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.3"><span class="ltx_ERROR undefined" id="S4.T4.16.8.14.3.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.4"><span class="ltx_ERROR undefined" id="S4.T4.16.8.14.4.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.5"><span class="ltx_ERROR undefined" id="S4.T4.16.8.14.5.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.6"><span class="ltx_ERROR undefined" id="S4.T4.16.8.14.6.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.7">0.0910</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.8">0.8545</td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.8.14.9" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T4.16.8.14.9.1" style="background-color:#FFE7E2;">0.8809</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.8.15">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.1">Ours</td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.3"><span class="ltx_ERROR undefined" id="S4.T4.16.8.15.3.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.4"><span class="ltx_ERROR undefined" id="S4.T4.16.8.15.4.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.5"><span class="ltx_ERROR undefined" id="S4.T4.16.8.15.5.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.6"><span class="ltx_ERROR undefined" id="S4.T4.16.8.15.6.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.7">0.0430</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.8"><span class="ltx_text ltx_font_bold" id="S4.T4.16.8.15.8.1">0.8807</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.16.8.15.9" style="background-color:#FFE7E2;"><span class="ltx_text ltx_font_bold" id="S4.T4.16.8.15.9.1" style="background-color:#FFE7E2;">0.9173</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of applying the ℒerase \mathcal{L}_{\text{erase}} loss at different stages of the denoising process during training for multi-concept (celebrity) removal.  It compares the performance when ℒerase \mathcal{L}_{\text{erase}} is applied throughout the entire denoising process (ℒerase∗ \mathcal{L}_{\text{erase}}^{*} ) versus only during the mid-to-late stages (ℒerase \mathcal{L}_{\text{erase}}).  The results are evaluated using metrics such as Accp (accuracy for preserved concepts), Acce (accuracy for erased concepts), and He (harmonic mean of Accp and Acce) to assess the balance between successfully removing the target concepts and preserving unrelated concepts.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on multiple concepts (celebrity) removal. ℒerase∗superscriptsubscriptℒerase\mathcal{L}_{\text{erase}}^{*}caligraphic_L start_POSTSUBSCRIPT erase end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT: ℒerasesubscriptℒerase\mathcal{L}_{\text{erase}}caligraphic_L start_POSTSUBSCRIPT erase end_POSTSUBSCRIPT is applied at all denoising timesteps during training. ℒerasesubscriptℒerase\mathcal{L}_{\text{erase}}caligraphic_L start_POSTSUBSCRIPT erase end_POSTSUBSCRIPT: ℒerasesubscriptℒerase\mathcal{L}_{\text{erase}}caligraphic_L start_POSTSUBSCRIPT erase end_POSTSUBSCRIPT is applied only during the mid-to-late stages of the denoising process in training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.5.1">
<tr class="ltx_tr" id="S4.T5.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.5.1.2.1" rowspan="2"><span class="ltx_text" id="S4.T5.5.1.2.1.1">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.5.1.2.2">Components</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T5.5.1.2.3">Inappropriate Image Prompt (I2P)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.1.2">Single Map</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.1.3">Multi Maps</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.1.4">Breasts (M&amp;F)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.1.5">Genitalia (M&amp;F)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.1.6">Others</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.1.1" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T5.5.1.1.1.1" style="background-color:#FFE7E2;">Total<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.5.1.1.1.1.m1.1"><semantics id="S4.T5.5.1.1.1.1.m1.1a"><mo id="S4.T5.5.1.1.1.1.m1.1.1" mathbackground="#FFE7E2" stretchy="false" xref="S4.T5.5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.1.1.1.1.m1.1b"><ci id="S4.T5.5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1">F</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.2"><span class="ltx_ERROR undefined" id="S4.T5.5.1.3.2.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.3"><span class="ltx_ERROR undefined" id="S4.T5.5.1.3.3.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.4">136</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.5">11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.6">148</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.7" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T5.5.1.3.7.1" style="background-color:#FFE7E2;">295</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.4">
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.1">G</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2"><span class="ltx_ERROR undefined" id="S4.T5.5.1.4.2.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.3"><span class="ltx_ERROR undefined" id="S4.T5.5.1.4.3.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.4">83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.5">56</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.6">184</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.7" style="background-color:#FFE7E2;"><span class="ltx_text" id="S4.T5.5.1.4.7.1" style="background-color:#FFE7E2;">323</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.5.1.5.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.5.1.5.2"><span class="ltx_ERROR undefined" id="S4.T5.5.1.5.2.1">\faTimes</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.5.1.5.3"><span class="ltx_ERROR undefined" id="S4.T5.5.1.5.3.1">\faCheck</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.5.1.5.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.5.4.1">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.5.1.5.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.5.5.1">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.5.1.5.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.5.6.1">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.5.1.5.7" style="background-color:#FFE7E2;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.5.7.1" style="background-color:#FFE7E2;">23</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of using different methods for generating the concept-specific saliency map (M*) on the performance of NSFW content removal.  The study compares two approaches: 'Single Map', which uses a single prompt and a single random seed to create the saliency map, and 'Multi Maps', which generates multiple saliency maps using multiple prompts and random seeds, then takes the intersection of these maps. The table presents quantitative results, showing the number of exposed body parts detected (using NudeNet) for different body areas (breasts (M&F), genitalia (M&F), and others), and the total number of inappropriate images generated using each approach. This allows for a comparison of the effectiveness and stability of the two saliency map generation strategies.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on single concept (NSFW) removal. Single Map: 𝑴∗superscript𝑴\bm{M}^{*}bold_italic_M start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT is generated using a single prompt and one random seed. Multi Maps: 𝑴∗superscript𝑴\bm{M}^{*}bold_italic_M start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT is generated taking the intersection of saliency maps obtained using multiple prompts and multiple random seeds.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.7.7">
<tr class="ltx_tr" id="A2.T6.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.4.4.4.5"><span class="ltx_text ltx_font_bold" id="A2.T6.4.4.4.5.1">Erasure Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.4.4.4.6"><span class="ltx_text ltx_font_bold" id="A2.T6.4.4.4.6.1">Learning Rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.4.4.4.7"><span class="ltx_text ltx_font_bold" id="A2.T6.4.4.4.7.1">Epochs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.1"><math alttext="\lambda_{1}" class="ltx_Math" display="inline" id="A2.T6.1.1.1.1.m1.1"><semantics id="A2.T6.1.1.1.1.m1.1a"><msub id="A2.T6.1.1.1.1.m1.1.1" xref="A2.T6.1.1.1.1.m1.1.1.cmml"><mi id="A2.T6.1.1.1.1.m1.1.1.2" xref="A2.T6.1.1.1.1.m1.1.1.2.cmml">λ</mi><mn id="A2.T6.1.1.1.1.m1.1.1.3" xref="A2.T6.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.1.m1.1b"><apply id="A2.T6.1.1.1.1.m1.1.1.cmml" xref="A2.T6.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.1.1.1.1.m1.1.1.1.cmml" xref="A2.T6.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T6.1.1.1.1.m1.1.1.2.cmml" xref="A2.T6.1.1.1.1.m1.1.1.2">𝜆</ci><cn id="A2.T6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="A2.T6.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.1.m1.1c">\lambda_{1}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.1.m1.1d">italic_λ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.2.2.2.2"><math alttext="\lambda_{2}" class="ltx_Math" display="inline" id="A2.T6.2.2.2.2.m1.1"><semantics id="A2.T6.2.2.2.2.m1.1a"><msub id="A2.T6.2.2.2.2.m1.1.1" xref="A2.T6.2.2.2.2.m1.1.1.cmml"><mi id="A2.T6.2.2.2.2.m1.1.1.2" xref="A2.T6.2.2.2.2.m1.1.1.2.cmml">λ</mi><mn id="A2.T6.2.2.2.2.m1.1.1.3" xref="A2.T6.2.2.2.2.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.2.2.m1.1b"><apply id="A2.T6.2.2.2.2.m1.1.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.2.2.2.2.m1.1.1.1.cmml" xref="A2.T6.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A2.T6.2.2.2.2.m1.1.1.2.cmml" xref="A2.T6.2.2.2.2.m1.1.1.2">𝜆</ci><cn id="A2.T6.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="A2.T6.2.2.2.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.2.2.m1.1c">\lambda_{2}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.2.2.m1.1d">italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.3.3.3.3"><math alttext="\lambda_{3}" class="ltx_Math" display="inline" id="A2.T6.3.3.3.3.m1.1"><semantics id="A2.T6.3.3.3.3.m1.1a"><msub id="A2.T6.3.3.3.3.m1.1.1" xref="A2.T6.3.3.3.3.m1.1.1.cmml"><mi id="A2.T6.3.3.3.3.m1.1.1.2" xref="A2.T6.3.3.3.3.m1.1.1.2.cmml">λ</mi><mn id="A2.T6.3.3.3.3.m1.1.1.3" xref="A2.T6.3.3.3.3.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.3.3.m1.1b"><apply id="A2.T6.3.3.3.3.m1.1.1.cmml" xref="A2.T6.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.3.3.3.3.m1.1.1.1.cmml" xref="A2.T6.3.3.3.3.m1.1.1">subscript</csymbol><ci id="A2.T6.3.3.3.3.m1.1.1.2.cmml" xref="A2.T6.3.3.3.3.m1.1.1.2">𝜆</ci><cn id="A2.T6.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="A2.T6.3.3.3.3.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.3.3.m1.1c">\lambda_{3}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.3.3.m1.1d">italic_λ start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.4.4.4.4"><math alttext="t^{\prime}" class="ltx_Math" display="inline" id="A2.T6.4.4.4.4.m1.1"><semantics id="A2.T6.4.4.4.4.m1.1a"><msup id="A2.T6.4.4.4.4.m1.1.1" xref="A2.T6.4.4.4.4.m1.1.1.cmml"><mi id="A2.T6.4.4.4.4.m1.1.1.2" xref="A2.T6.4.4.4.4.m1.1.1.2.cmml">t</mi><mo id="A2.T6.4.4.4.4.m1.1.1.3" xref="A2.T6.4.4.4.4.m1.1.1.3.cmml">′</mo></msup><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.4.4.m1.1b"><apply id="A2.T6.4.4.4.4.m1.1.1.cmml" xref="A2.T6.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="A2.T6.4.4.4.4.m1.1.1.1.cmml" xref="A2.T6.4.4.4.4.m1.1.1">superscript</csymbol><ci id="A2.T6.4.4.4.4.m1.1.1.2.cmml" xref="A2.T6.4.4.4.4.m1.1.1.2">𝑡</ci><ci id="A2.T6.4.4.4.4.m1.1.1.3.cmml" xref="A2.T6.4.4.4.4.m1.1.1.3">′</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.4.4.m1.1c">t^{\prime}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.4.4.m1.1d">italic_t start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.5.2">NFSW Content</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.5.1"><math alttext="5.0\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T6.5.5.5.1.m1.1"><semantics id="A2.T6.5.5.5.1.m1.1a"><mrow id="A2.T6.5.5.5.1.m1.1.1" xref="A2.T6.5.5.5.1.m1.1.1.cmml"><mn id="A2.T6.5.5.5.1.m1.1.1.2" xref="A2.T6.5.5.5.1.m1.1.1.2.cmml">5.0</mn><mo id="A2.T6.5.5.5.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.5.5.5.1.m1.1.1.3" xref="A2.T6.5.5.5.1.m1.1.1.3.cmml"><mn id="A2.T6.5.5.5.1.m1.1.1.3.2" xref="A2.T6.5.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T6.5.5.5.1.m1.1.1.3.3" xref="A2.T6.5.5.5.1.m1.1.1.3.3.cmml"><mo id="A2.T6.5.5.5.1.m1.1.1.3.3a" xref="A2.T6.5.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T6.5.5.5.1.m1.1.1.3.3.2" xref="A2.T6.5.5.5.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.5.1.m1.1b"><apply id="A2.T6.5.5.5.1.m1.1.1.cmml" xref="A2.T6.5.5.5.1.m1.1.1"><times id="A2.T6.5.5.5.1.m1.1.1.1.cmml" xref="A2.T6.5.5.5.1.m1.1.1.1"></times><cn id="A2.T6.5.5.5.1.m1.1.1.2.cmml" type="float" xref="A2.T6.5.5.5.1.m1.1.1.2">5.0</cn><apply id="A2.T6.5.5.5.1.m1.1.1.3.cmml" xref="A2.T6.5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.5.5.5.1.m1.1.1.3.1.cmml" xref="A2.T6.5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.5.5.5.1.m1.1.1.3.2">10</cn><apply id="A2.T6.5.5.5.1.m1.1.1.3.3.cmml" xref="A2.T6.5.5.5.1.m1.1.1.3.3"><minus id="A2.T6.5.5.5.1.m1.1.1.3.3.1.cmml" xref="A2.T6.5.5.5.1.m1.1.1.3.3"></minus><cn id="A2.T6.5.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T6.5.5.5.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.5.1.m1.1c">5.0\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.5.1.m1.1d">5.0 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.5.3">250</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.5.4">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.5.5">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.5.6">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.5.5.5.7">43</td>
</tr>
<tr class="ltx_tr" id="A2.T6.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.6.2">Celebrity</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.6.1"><math alttext="5.0\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T6.6.6.6.1.m1.1"><semantics id="A2.T6.6.6.6.1.m1.1a"><mrow id="A2.T6.6.6.6.1.m1.1.1" xref="A2.T6.6.6.6.1.m1.1.1.cmml"><mn id="A2.T6.6.6.6.1.m1.1.1.2" xref="A2.T6.6.6.6.1.m1.1.1.2.cmml">5.0</mn><mo id="A2.T6.6.6.6.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.6.6.6.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.6.6.6.1.m1.1.1.3" xref="A2.T6.6.6.6.1.m1.1.1.3.cmml"><mn id="A2.T6.6.6.6.1.m1.1.1.3.2" xref="A2.T6.6.6.6.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T6.6.6.6.1.m1.1.1.3.3" xref="A2.T6.6.6.6.1.m1.1.1.3.3.cmml"><mo id="A2.T6.6.6.6.1.m1.1.1.3.3a" xref="A2.T6.6.6.6.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T6.6.6.6.1.m1.1.1.3.3.2" xref="A2.T6.6.6.6.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.6.6.6.1.m1.1b"><apply id="A2.T6.6.6.6.1.m1.1.1.cmml" xref="A2.T6.6.6.6.1.m1.1.1"><times id="A2.T6.6.6.6.1.m1.1.1.1.cmml" xref="A2.T6.6.6.6.1.m1.1.1.1"></times><cn id="A2.T6.6.6.6.1.m1.1.1.2.cmml" type="float" xref="A2.T6.6.6.6.1.m1.1.1.2">5.0</cn><apply id="A2.T6.6.6.6.1.m1.1.1.3.cmml" xref="A2.T6.6.6.6.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.6.6.6.1.m1.1.1.3.1.cmml" xref="A2.T6.6.6.6.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.6.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.6.6.6.1.m1.1.1.3.2">10</cn><apply id="A2.T6.6.6.6.1.m1.1.1.3.3.cmml" xref="A2.T6.6.6.6.1.m1.1.1.3.3"><minus id="A2.T6.6.6.6.1.m1.1.1.3.3.1.cmml" xref="A2.T6.6.6.6.1.m1.1.1.3.3"></minus><cn id="A2.T6.6.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T6.6.6.6.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.6.6.6.1.m1.1c">5.0\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.6.6.6.1.m1.1d">5.0 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.6.3">400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.6.4">0.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.6.5">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.6.6">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.6.6.6.7">40</td>
</tr>
<tr class="ltx_tr" id="A2.T6.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.7.7.7.2">Art Style</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.7.7.7.1"><math alttext="5.0\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T6.7.7.7.1.m1.1"><semantics id="A2.T6.7.7.7.1.m1.1a"><mrow id="A2.T6.7.7.7.1.m1.1.1" xref="A2.T6.7.7.7.1.m1.1.1.cmml"><mn id="A2.T6.7.7.7.1.m1.1.1.2" xref="A2.T6.7.7.7.1.m1.1.1.2.cmml">5.0</mn><mo id="A2.T6.7.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.7.7.7.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.7.7.7.1.m1.1.1.3" xref="A2.T6.7.7.7.1.m1.1.1.3.cmml"><mn id="A2.T6.7.7.7.1.m1.1.1.3.2" xref="A2.T6.7.7.7.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T6.7.7.7.1.m1.1.1.3.3" xref="A2.T6.7.7.7.1.m1.1.1.3.3.cmml"><mo id="A2.T6.7.7.7.1.m1.1.1.3.3a" xref="A2.T6.7.7.7.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T6.7.7.7.1.m1.1.1.3.3.2" xref="A2.T6.7.7.7.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.7.7.7.1.m1.1b"><apply id="A2.T6.7.7.7.1.m1.1.1.cmml" xref="A2.T6.7.7.7.1.m1.1.1"><times id="A2.T6.7.7.7.1.m1.1.1.1.cmml" xref="A2.T6.7.7.7.1.m1.1.1.1"></times><cn id="A2.T6.7.7.7.1.m1.1.1.2.cmml" type="float" xref="A2.T6.7.7.7.1.m1.1.1.2">5.0</cn><apply id="A2.T6.7.7.7.1.m1.1.1.3.cmml" xref="A2.T6.7.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.7.7.7.1.m1.1.1.3.1.cmml" xref="A2.T6.7.7.7.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.7.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.7.7.7.1.m1.1.1.3.2">10</cn><apply id="A2.T6.7.7.7.1.m1.1.1.3.3.cmml" xref="A2.T6.7.7.7.1.m1.1.1.3.3"><minus id="A2.T6.7.7.7.1.m1.1.1.3.3.1.cmml" xref="A2.T6.7.7.7.1.m1.1.1.3.3"></minus><cn id="A2.T6.7.7.7.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T6.7.7.7.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.7.7.7.1.m1.1c">5.0\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.7.7.7.1.m1.1d">5.0 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.7.7.7.3">400</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.7.7.7.4">0.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.7.7.7.5">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.7.7.7.6">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.7.7.7.7">47</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training phase for three different concept erasure tasks: NSFW content removal, celebrity removal, and art style removal.  For each task, it lists the learning rate, number of training epochs, and the weighting factors (λ1, λ2, λ3) used to balance the different components of the loss function.  It also shows the parameter t', which determines the transition point between early-stage and mid-to-late-stage score function adjustments during the training process.
> <details>
> <summary>read the caption</summary>
> Table 6: Training hyperparameters for NFSW content, celebrity and art style erasure tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12782/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12782/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}