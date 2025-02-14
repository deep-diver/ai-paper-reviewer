---
title: "Efficient-vDiT: Efficient Video Diffusion Transformers With Attention Tile"
summary: "EFFICIENT-VDIT accelerates video generation by 7.8x using sparse attention and multi-step distillation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06155 {{< /keyword >}}
{{< keyword icon="writer" >}} Hangliang Ding et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06155" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06155" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06155/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current video diffusion transformer models are computationally expensive, requiring significant time to generate high-fidelity videos. This is primarily due to the complexity of 3D full attention mechanisms and numerous sampling steps. The research addresses these inefficiencies by proposing a new model called EFFICIENT-VDIT.  The slow inference is a major challenge hindering wider adoption of these models.

EFFICIENT-VDIT tackles this problem by developing a novel family of sparse 3D attention mechanisms that exploit inherent redundancies in video data. This significantly reduces computational complexity, resulting in faster inference speeds. Moreover, the method integrates multi-step consistency distillation to shorten the sampling process, further improving the efficiency of video generation.  These combined techniques enable substantial acceleration of video generation, achieving up to a 7.8x speedup while maintaining comparable video quality. **The framework, built upon the analysis of Attention Tile patterns, shows improved data efficiency and is readily adaptable to distributed inference**, showcasing its effectiveness in practical applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Efficient-VDIT significantly accelerates video generation using sparse attention and multi-step distillation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method identifies and leverages an "Attention Tile" pattern for efficient 3D attention computation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach is amenable to distributed inference, leading to further speed improvements. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on video generation because it significantly improves the efficiency of diffusion transformer models.  **Its findings on sparse attention and multi-step consistency distillation offer practical solutions to current computational bottlenecks**, opening avenues for developing faster and more efficient video generation systems.  The work's focus on data efficiency and distributed inference makes it especially relevant in resource-constrained environments.  It also introduces a novel "Attention Tile" concept, prompting further exploration of redundant patterns in attention mechanisms.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06155/x1.png)

> 🔼 Figure 1 illustrates the 'Attention Tile' pattern observed in 3D Diffusion Transformers (DiTs) for video generation.  Panel (a) shows that the attention maps can be decomposed into repeating blocks. Panel (b) distinguishes between diagonal blocks (stronger attention weights) and off-diagonal blocks (weaker weights). Panel (c) highlights the locality within these blocks, showing that attention decreases as the distance from the first frame increases. Panel (d) demonstrates the consistency of the block pattern across different input videos but with variations across different layers of the DiT.  The analysis involved randomly selecting two video prompts (landscape and portrait orientations) and identifying the most important attention positions (those accounting for 90%, 95%, and 99% of total attention).  The figure then shows the overlap of these key positions across various layers, quantifying the stability of the Attention Tile pattern.
> <details>
> <summary>read the caption</summary>
> Figure 1: We observe the Attention Tile pattern in 3D DiTs. (a) the attention map can be broken down into smaller repetitive blocks. (b) These blocks can be classified into two types, where attention weights on the diagonal blocks are noticeably larger than on off-diagonal ones. (c) These blocks exhibit locality, where the attention score differences between the first frame and later frames gradually increases. (d) The block structure is stable across different data points, but varies across layers. We randomly select 2 prompts (one landscape and one portrait) and record the important positions in the attention map that accounted for 90% (95%, 99%) of the total. We printed the proportion of stable overlap of important positions across layers.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.11.11">
<tr class="ltx_tr" id="S4.T1.11.11.12">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.11.11.12.1"><span class="ltx_text ltx_font_bold" id="S4.T1.11.11.12.1.1">Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.11.11.12.2"><span class="ltx_text ltx_font_bold" id="S4.T1.11.11.12.2.1">Mask</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.11.11.12.3"><span class="ltx_text ltx_font_bold" id="S4.T1.11.11.12.3.1">Sparsity (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.11.11.12.4"><span class="ltx_text ltx_font_bold" id="S4.T1.11.11.12.4.1">Time(ms)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.11.11.12.5"><span class="ltx_text ltx_font_bold" id="S4.T1.11.11.12.5.1">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.2" rowspan="5"><span class="ltx_text" id="S4.T1.1.1.1.2.1">29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.3">full</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.5">58.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><times id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.2">4:4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.3">17.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.4">46.52</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.1">1.25<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.1.m1.1.1" xref="S4.T1.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><times id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3">
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.2">3:5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.3">29.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.4">40.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.1">1.46<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.1.m1.1.1" xref="S4.T1.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.1.m1.1b"><times id="S4.T1.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4">
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.2">2:6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.3">45.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.4">31.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.1">1.86<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.1.m1.1.1" xref="S4.T1.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.1.m1.1b"><times id="S4.T1.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.2">1:7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.3">64.38</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.4">20.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.1">2.83<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.1.m1.1a"><mo id="S4.T1.5.5.5.1.m1.1.1" xref="S4.T1.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.1.m1.1b"><times id="S4.T1.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.6.6.6.2" rowspan="6"><span class="ltx_text" id="S4.T1.6.6.6.2.1">93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.3">full</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.5">523.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.6.1">1.00<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.1.m1.1a"><mo id="S4.T1.6.6.6.1.m1.1.1" xref="S4.T1.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.1.m1.1b"><times id="S4.T1.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7">
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.2">12:12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.3">21.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.4">397.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.1">1.32<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.7.7.7.1.m1.1"><semantics id="S4.T1.7.7.7.1.m1.1a"><mo id="S4.T1.7.7.7.1.m1.1.1" xref="S4.T1.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.1.m1.1b"><times id="S4.T1.7.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.8">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.2">8:16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.3">40.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.4">303.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.1">1.72<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.8.8.8.1.m1.1"><semantics id="S4.T1.8.8.8.1.m1.1a"><mo id="S4.T1.8.8.8.1.m1.1.1" xref="S4.T1.8.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.1.m1.1b"><times id="S4.T1.8.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.9">
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.2">6:18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.3">51.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.4">244.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.1">2.14<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.9.9.9.1.m1.1"><semantics id="S4.T1.9.9.9.1.m1.1a"><mo id="S4.T1.9.9.9.1.m1.1.1" xref="S4.T1.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.1.m1.1b"><times id="S4.T1.9.9.9.1.m1.1.1.cmml" xref="S4.T1.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10">
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.2">4:20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.3">64.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.4">179.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.10.1">2.91<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.10.10.10.1.m1.1"><semantics id="S4.T1.10.10.10.1.m1.1a"><mo id="S4.T1.10.10.10.1.m1.1.1" xref="S4.T1.10.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.1.m1.1b"><times id="S4.T1.10.10.10.1.m1.1.1.cmml" xref="S4.T1.10.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.11.11">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.11.11.11.2">3:21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.11.11.11.3">72.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.11.11.11.4">142.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.11.11.11.1">3.67<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.11.11.11.1.m1.1"><semantics id="S4.T1.11.11.11.1.m1.1a"><mo id="S4.T1.11.11.11.1.m1.1.1" xref="S4.T1.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.1.m1.1b"><times id="S4.T1.11.11.11.1.m1.1.1.cmml" xref="S4.T1.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the speedup achieved by using different sparse attention masks in the EFFICIENT-VDIT model.  The speedup is calculated relative to the full attention model (no sparsity). Different sparsity levels are tested, corresponding to different numbers of frames that each latent frame attends to in the attention mechanism. The results show how much faster the inference process becomes with various degrees of sparsity, and for two different video lengths (29 and 93 frames).
> <details>
> <summary>read the caption</summary>
> Table 1: Speedup with different masks.
> </details>





### In-depth insights


#### Attention Tile Sparsity
The concept of "Attention Tile Sparsity" in video diffusion models centers on optimizing the computational efficiency of the attention mechanism.  The authors observed a **repetitive tiling pattern** in the attention maps of video data, suggesting redundancy.  This redundancy implies that not all frames need to attend to every other frame.  **Sparsity techniques** are introduced to leverage this observation, reducing the quadratic complexity of full attention to a more efficient linear complexity.  This is achieved by strategically pruning connections in the attention map, focusing on the most informative interactions between frames, those along the main diagonal and a limited set of other frames. The **data-independent nature** of this tiling pattern further enhances the practicality of this approach because it allows for the creation of fixed sparse attention masks, used consistently across different video inputs, thus preventing computationally expensive inference-time searching. The effectiveness of this approach is demonstrated through significant speedups in video generation with minimal performance trade-offs, indicating that Attention Tile Sparsity is a promising direction for enhancing the scalability of video diffusion models.

#### MCD for Video DiTs
Multi-step consistency distillation (MCD) applied to video diffusion transformers (DiTs) offers a powerful technique to significantly accelerate video generation.  By splitting the lengthy sampling trajectory into segments and applying consistency distillation within each segment, **MCD effectively reduces the number of sampling steps** required to produce high-fidelity videos, thus improving inference speed.  This is particularly valuable for DiTs, which are known for their computational intensity.  The inherent parallelism in MCD also makes it **amenable to GPU acceleration**, furthering performance improvements.  However, **the effectiveness of MCD depends on careful hyperparameter tuning** and proper integration into the DiT architecture. The trade-off between reducing sampling steps and preserving video quality must be carefully balanced; too aggressive a reduction might compromise the output's fidelity.  Therefore, successful implementation requires a robust strategy to select optimal checkpoints for the distillation process, potentially using validation metrics to guide this selection.  **Combining MCD with other optimization techniques** (like sparsity) could lead to even more efficient video generation models.

#### Efficient Training Pipeline
An efficient training pipeline for video generation models is crucial for balancing performance and resource consumption.  A three-stage approach, as suggested, would likely involve: **Stage 1: Multi-step Consistency Distillation**, where a teacher model's long sampling trajectory is distilled into a student model with fewer steps, improving efficiency.  **Stage 2: Layer-wise Sparsity Search**, which focuses on identifying and leveraging redundant patterns within the 3D attention maps of video data to create sparse attention masks, further accelerating inference. This is critical for addressing the quadratic complexity of full attention.  Finally, **Stage 3: Knowledge Distillation**, where knowledge from the efficient student model is transferred to a final model, ensuring that the speed gains achieved in the previous stages are not at the cost of significant performance degradation. This iterative refinement process is essential for achieving a well-performing model while also maximizing computational efficiency. The success of this approach hinges on the careful selection of suitable methods at each stage and ensuring their compatibility to avoid performance bottlenecks.  The choice of hyperparameters, especially the sparsity level, significantly impacts the trade-off between speed and fidelity, requiring meticulous tuning. Finally, the analysis of whether this pipeline generalizes to different architectures (e.g., MM-DiT) is key to determining its broader applicability and robustness.

#### Scalable Inference
Scalable inference in large language models (LLMs) and video generation models is crucial for real-world deployment.  **Efficient-VDIT tackles this challenge in video diffusion transformers by addressing two key inefficiencies**: the computationally expensive 3D full attention mechanism and the lengthy diffusion sampling process. The paper introduces a novel **sparse attention mechanism** inspired by the observed 'Attention Tile' pattern in attention maps, significantly reducing computational complexity.  This, coupled with **multi-step consistency distillation**, shortens the sampling trajectory, resulting in substantial speedups. The framework's modular design allows for seamless integration with distributed inference strategies, further enhancing scalability.  **Achieving linear time complexity with respect to the number of video frames**, Efficient-VDIT demonstrates significant speed improvements, enabling faster video generation.  The data-efficient training methodology contributes to broader accessibility. Overall, Efficient-VDIT presents a significant advancement in efficient and scalable video generation, making high-fidelity video synthesis more practical for various applications.

#### Future Work: MM-DiTs
Future research into MM-DiTs (Multi-Modal Diffusion Transformers) should prioritize **efficiency improvements**.  Current MM-DiT architectures, while capable of generating high-quality videos from text and video prompts, often suffer from computational limitations.  Investigating **sparse attention mechanisms** tailored for multi-modal data, similar to those explored in the paper for video-only DiTs, is crucial.  **Combining sparse attention with techniques like multi-step consistency distillation** could significantly accelerate inference.  Furthermore, exploring **different model architectures** designed for efficient multi-modal processing, possibly leveraging techniques beyond traditional transformers, warrants investigation.  The potential benefits of **pre-training strategies focused on efficient multi-modal representation learning** should also be assessed.  Ultimately, the goal is to strike a balance between high-fidelity video generation and efficient inference, making MM-DiTs practically applicable for broader use cases.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06155/x2.png)

> 🔼 This figure illustrates the Efficient-VDIT framework, which enhances the speed of video generation while maintaining high fidelity.  It starts with a pre-trained 3D full attention Diffusion Transformer (DiT) known for its accuracy but slow inference. The framework then uses a three-stage process. Stage 1 adapts multi-step consistency distillation for video, creating a more efficient CM model. Stage 2 searches for optimal sparse attention patterns in each layer, achieving linearity in time complexity.  Stage 3 uses knowledge distillation to refine the sparse model, resulting in a final DiT that is significantly faster than the original with minimal impact on video quality.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Efficient-vDiT takes in a pre-trained 3D Full Attention video diffusion transformer(DiT), with slow inference speed and high fidelity. It then operates on three stages to greatly accelerate the inference while maintaining the fidelity. In Stage 1, we modify the multi-step consistency distillation framework from (Heek et al., 2024) to the video domain, which turned a DiT model to a CM model with stable training. In Stage 2, Efficient-vDiT performs a searching algorithm to find the best sparse attention pattern for each layer. In stage 3, Efficient-vDiT performs a knowledge distillation procedure to optimize the fidelity of the sparse DiT. At the end, Efficient-vDiT outputs a DiT with linear attention, high fidelity and fastest inference speed.
> </details>



![](https://arxiv.org/html/2502.06155/x3.png)

> 🔼 This figure showcases a sample of a sparse attention mask used in the EFFICIENT-VDIT model.  The mask is represented as a grid, highlighting which latent frame connections are maintained during attention computation. The (2:6) notation signifies that each frame attends to 2 global reference frames, aside from its connections along the main diagonal. The white blocks illustrate areas where attention is pruned, reducing computational cost.  This sparse attention pattern is designed to leverage the repetitive 'Attention Tile' structure identified in video data. By selectively pruning less important connections, the model significantly accelerates the attention mechanism while aiming to retain sufficient information for high-quality video generation. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Exemplar attention mask (2:6:262:62 : 6). It maintains the attention in the main diagonals and against 2 global reference latent frames. Tile blocks in white are not computed.
> </details>



![](https://arxiv.org/html/2502.06155/x4.png)

> 🔼 Figure 4 shows the results of an experiment to determine the optimal sparsity level for each layer in a 3D video diffusion transformer (DiT) model, specifically Open-Sora-Plan v1.2, when generating videos with 29 frames.  The experiment aimed to find the appropriate balance between computational efficiency and performance.  The graph displays the sparsity level (vertical axis) for each layer (horizontal axis) after an optimization process. Different layers exhibit varying levels of sparsity, indicating that some layers can tolerate more sparsity than others during inference without significantly impacting the model's performance.  This finding supports the design choice of the EFFICIENT-VDIT framework, which employs layer-wise sparsity search to optimize the trade-off between inference speed and video quality.
> <details>
> <summary>read the caption</summary>
> Figure 4: Search results for Open-Sora-Plan v1.2 model (29 frames). We verify that different layers have different sparsity in 3D video DiTs.
> </details>



![](https://arxiv.org/html/2502.06155/extracted/6191047/figures/prompt_sample/ablation.jpg)

> 🔼 This figure displays a qualitative comparison of video generation results from three different models: the original, a model using multi-step consistency distillation (MLCD), and a model that incorporates both MLCD and knowledge distillation.  The comparison showcases the visual quality of video samples generated by each model. Each row presents a video sample from the same prompt, where the columns represent the generated videos by the three models. This allows viewers to directly compare the visual fidelity, motion clarity, and overall quality achieved through the different model architectures.  Additional examples are provided in Appendix F of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative samples of our models. We compare the generation quality between the base model, MLCD model, and after knowledge distillation. Frames shown are equally spaced samples from the generated video. Efficient-vDiT is shortened as ‘E-vdit’ for simplicity. More samples can be found in Appendix F.
> </details>



![](https://arxiv.org/html/2502.06155/extracted/6191047/figures/prompt_sample/cogvideo_batch.jpg)

> 🔼 This figure displays a comparison of video generation results from different models to demonstrate the impact of distillation order on video quality.  The top row of each pair of videos shows results from a model trained using multi-step consistency distillation (MLCD) followed by knowledge distillation (KD). The bottom row shows results from a model trained with the opposite order: KD followed by MLCD.  The videos were generated using prompts from the VBench dataset, a standard benchmark for evaluating video generation models. The purpose is to visually show whether the order of applying these two techniques significantly affects the final video quality and to demonstrate that the order doesn't matter much. 
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative samples of ablation of distillation order. sampled from VBench prompts. We show that both MLCD and Efficient-vDiT model can simliar quality on these samples. In two consecutive videos, the top shows results from MLCD + CD model followed by KD + MLCD model.
> </details>



![](https://arxiv.org/html/2502.06155/extracted/6191047/figures/prompt_sample/output_batch_1.jpg)

> 🔼 Figure 7 presents a qualitative comparison of video generation results from the base CogVideoX-5B model and a model that incorporates attention distillation. The figure demonstrates the effectiveness of the proposed attention distillation technique, showing that it can be successfully applied to the MM-DiT architecture of CogVideoX-5B.  The comparison is shown in pairs of videos where the top row displays the results from the original, non-distilled model, and the bottom row shows results from the model trained with attention distillation. This visual comparison illustrates that the attention distillation method preserves the overall quality and details of the generated videos while potentially offering improved efficiency or faster generation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative samples of CogvideoX-5B (Yang et al., 2024b) distillation from its sample prompts. We show that our attention distill is capable of MM-DiT model architecture. In two consecutive videos, the top shows results from the base model, followed by the distillation model.
> </details>



![](https://arxiv.org/html/2502.06155/extracted/6191047/figures/prompt_sample/output_batch_3.jpg)

> 🔼 Figure 8 showcases video generation results from three models: the baseline model, a model using multi-step consistency distillation (MLCD), and the proposed EFFICIENT-VDIT model.  The prompts used are dynamic and involve centralized explosions and radiating energy. The videos generated demonstrate the models' ability to handle large-scale motion and dramatic transitions, transitioning from concentrated focal points to expansive environmental effects.
> <details>
> <summary>read the caption</summary>
> Figure 8: Based on Open-Sora’s examples (Zheng et al., 2024) , we selected dynamic prompts featuring centralized explosions and radiating energy, demonstrating dramatic transitions from focal points to expansive environmental transformations, emphasizing large-scale motion.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.27">
<tr class="ltx_tr" id="S4.T2.8.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.3.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.7.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.7.1.1.1"></span><span class="ltx_text" id="S4.T2.7.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.7.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.7.1.1.3.1">
<span class="ltx_tr" id="S4.T2.7.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.7.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.7.1.1.3.1.1.1.1">Final</span></span></span>
<span class="ltx_tr" id="S4.T2.7.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.7.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.7.1.1.3.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.7.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.7.1.1.5"></span><span class="ltx_text" id="S4.T2.7.1.1.6" style="font-size:70%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.1.1.m1.1"><semantics id="S4.T2.7.1.1.m1.1a"><mo id="S4.T2.7.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.7.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.1.1.m1.1b"><ci id="S4.T2.7.1.1.m1.1.1.cmml" xref="S4.T2.7.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.8.2.4.1"></span><span class="ltx_text" id="S4.T2.8.2.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.8.2.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.2.4.3.1">
<span class="ltx_tr" id="S4.T2.8.2.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.4.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.4.3.1.1.1.1">Aesthetic</span></span></span>
<span class="ltx_tr" id="S4.T2.8.2.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.4.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.4.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.8.2.4.4"></span><span class="ltx_text" id="S4.T2.8.2.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.8.2.5.1"></span><span class="ltx_text" id="S4.T2.8.2.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.8.2.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.2.5.3.1">
<span class="ltx_tr" id="S4.T2.8.2.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.5.3.1.1.1.1">Motion</span></span></span>
<span class="ltx_tr" id="S4.T2.8.2.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.5.3.1.2.1.1">Smoothness</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.8.2.5.4"></span><span class="ltx_text" id="S4.T2.8.2.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.8.2.6.1"></span><span class="ltx_text" id="S4.T2.8.2.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.8.2.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.2.6.3.1">
<span class="ltx_tr" id="S4.T2.8.2.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.6.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="S4.T2.8.2.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.6.3.1.2.1.1">Flickering</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.8.2.6.4"></span><span class="ltx_text" id="S4.T2.8.2.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.8.2.7.1"></span><span class="ltx_text" id="S4.T2.8.2.7.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.8.2.7.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.2.7.3.1">
<span class="ltx_tr" id="S4.T2.8.2.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.7.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.7.3.1.1.1.1">Object</span></span></span>
<span class="ltx_tr" id="S4.T2.8.2.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.7.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.7.3.1.2.1.1">Class</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.8.2.7.4"></span><span class="ltx_text" id="S4.T2.8.2.7.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.8.2.8.1"></span><span class="ltx_text" id="S4.T2.8.2.8.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.8.2.8.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.2.8.3.1">
<span class="ltx_tr" id="S4.T2.8.2.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.8.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.8.3.1.1.1.1">Subject</span></span></span>
<span class="ltx_tr" id="S4.T2.8.2.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.8.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.8.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.8.2.8.4"></span><span class="ltx_text" id="S4.T2.8.2.8.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.8.2.2.1" style="font-size:70%;">CD-FVD</span><span class="ltx_text" id="S4.T2.8.2.2.2" style="font-size:70%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.8.2.2.m1.1"><semantics id="S4.T2.8.2.2.m1.1a"><mo id="S4.T2.8.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.8.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.2.2.m1.1b"><ci id="S4.T2.8.2.2.m1.1.1.cmml" xref="S4.T2.8.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.9.1" style="font-size:70%;">Sparsity (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.8.2.10.1"></span><span class="ltx_text" id="S4.T2.8.2.10.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.8.2.10.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.2.10.3.1">
<span class="ltx_tr" id="S4.T2.8.2.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.10.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.10.3.1.1.1.1">Kernel</span></span></span>
<span class="ltx_tr" id="S4.T2.8.2.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.10.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.10.3.1.2.1.1">Time(ms)</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.8.2.10.4"></span><span class="ltx_text" id="S4.T2.8.2.10.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.8.2.11.1"></span><span class="ltx_text" id="S4.T2.8.2.11.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T2.8.2.11.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.2.11.3.1">
<span class="ltx_tr" id="S4.T2.8.2.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.11.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.11.3.1.1.1.1">Kernel</span></span></span>
<span class="ltx_tr" id="S4.T2.8.2.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.2.11.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.11.3.1.2.1.1">Speedup</span></span></span>
</span></span><span class="ltx_text" id="S4.T2.8.2.11.4"></span><span class="ltx_text" id="S4.T2.8.2.11.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.2.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.2.12.1" style="font-size:70%;">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.3.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.4.1" style="font-size:70%;">76.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.5.1" style="font-size:70%;">58.34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.6.1" style="font-size:70%;">99.43%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.7.1" style="font-size:70%;">99.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.8.1" style="font-size:70%;">64.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.9.1" style="font-size:70%;">98.45%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.10.1" style="font-size:70%;">172.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.11.1" style="font-size:70%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.10.4.12.1" style="font-size:70%;">58.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.9.3.1.1" style="font-size:70%;">1.00</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.9.3.1.m1.1"><semantics id="S4.T2.9.3.1.m1.1a"><mo id="S4.T2.9.3.1.m1.1.1" mathsize="70%" xref="S4.T2.9.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.3.1.m1.1b"><times id="S4.T2.9.3.1.m1.1.1.cmml" xref="S4.T2.9.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.3.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.10.4.2.1" style="font-size:70%;">1.00</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.10.4.2.m1.1"><semantics id="S4.T2.10.4.2.m1.1a"><mo id="S4.T2.10.4.2.m1.1.1" mathsize="70%" xref="S4.T2.10.4.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.4.2.m1.1b"><times id="S4.T2.10.4.2.m1.1.1.cmml" xref="S4.T2.10.4.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.4.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.4.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.6">
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.3.1" style="font-size:70%;">MLCD</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.4.1" style="font-size:70%;">76.81%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.5.1" style="font-size:70%;">58.92%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.6.1" style="font-size:70%;">99.41%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.7.1" style="font-size:70%;">99.42%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.8.1" style="font-size:70%;">63.37%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.9.1" style="font-size:70%;">98.37%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.10.1" style="font-size:70%;">190.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.11.1" style="font-size:70%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.12.6.12.1" style="font-size:70%;">58.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.11.5.1.1" style="font-size:70%;">1.00</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.11.5.1.m1.1"><semantics id="S4.T2.11.5.1.m1.1a"><mo id="S4.T2.11.5.1.m1.1.1" mathsize="70%" xref="S4.T2.11.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.5.1.m1.1b"><times id="S4.T2.11.5.1.m1.1.1.cmml" xref="S4.T2.11.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.5.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.12.6.2.1" style="font-size:70%;">5.00</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.12.6.2.m1.1"><semantics id="S4.T2.12.6.2.m1.1a"><mo id="S4.T2.12.6.2.m1.1.1" mathsize="70%" xref="S4.T2.12.6.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.6.2.m1.1b"><times id="S4.T2.12.6.2.m1.1.1.cmml" xref="S4.T2.12.6.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.6.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.6.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.025}}" class="ltx_Math" display="inline" id="S4.T2.13.7.1.m1.1"><semantics id="S4.T2.13.7.1.m1.1a"><msub id="S4.T2.13.7.1.m1.1.1" xref="S4.T2.13.7.1.m1.1.1.cmml"><mtext id="S4.T2.13.7.1.m1.1.1.2" mathsize="70%" xref="S4.T2.13.7.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="S4.T2.13.7.1.m1.1.1.3" xref="S4.T2.13.7.1.m1.1.1.3.cmml"><mi id="S4.T2.13.7.1.m1.1.1.3.2" mathsize="70%" xref="S4.T2.13.7.1.m1.1.1.3.2.cmml">r</mi><mo id="S4.T2.13.7.1.m1.1.1.3.1" xref="S4.T2.13.7.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="S4.T2.13.7.1.m1.1.1.3.3" mathsize="70%" xref="S4.T2.13.7.1.m1.1.1.3.3a.cmml">=0.025</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T2.13.7.1.m1.1b"><apply id="S4.T2.13.7.1.m1.1.1.cmml" xref="S4.T2.13.7.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.13.7.1.m1.1.1.1.cmml" xref="S4.T2.13.7.1.m1.1.1">subscript</csymbol><ci id="S4.T2.13.7.1.m1.1.1.2a.cmml" xref="S4.T2.13.7.1.m1.1.1.2"><mtext id="S4.T2.13.7.1.m1.1.1.2.cmml" mathsize="70%" xref="S4.T2.13.7.1.m1.1.1.2">Ours</mtext></ci><apply id="S4.T2.13.7.1.m1.1.1.3.cmml" xref="S4.T2.13.7.1.m1.1.1.3"><times id="S4.T2.13.7.1.m1.1.1.3.1.cmml" xref="S4.T2.13.7.1.m1.1.1.3.1"></times><ci id="S4.T2.13.7.1.m1.1.1.3.2.cmml" xref="S4.T2.13.7.1.m1.1.1.3.2">𝑟</ci><ci id="S4.T2.13.7.1.m1.1.1.3.3a.cmml" xref="S4.T2.13.7.1.m1.1.1.3.3"><mtext id="S4.T2.13.7.1.m1.1.1.3.3.cmml" mathsize="49%" xref="S4.T2.13.7.1.m1.1.1.3.3">=0.025</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.7.1.m1.1c">\text{Ours}_{r\text{=0.025}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.7.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.025 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.9.4.1" style="font-size:70%;">76.14%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.15.9.5.1" style="font-size:70%;">57.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.9.6.1" style="font-size:70%;">99.37%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.15.9.7.1" style="font-size:70%;">99.49%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.9.8.1" style="font-size:70%;">60.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.9.9.1" style="font-size:70%;">98.26%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.9.10.1" style="font-size:70%;">186.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.15.9.11.1" style="font-size:70%;">23.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.15.9.12.1" style="font-size:70%;">43.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.14.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.14.8.2.1" style="font-size:70%;">1.34</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.14.8.2.m1.1"><semantics id="S4.T2.14.8.2.m1.1a"><mo id="S4.T2.14.8.2.m1.1.1" mathsize="70%" xref="S4.T2.14.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.8.2.m1.1b"><times id="S4.T2.14.8.2.m1.1.1.cmml" xref="S4.T2.14.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.8.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.15.9.3.1" style="font-size:70%;">5.85</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.15.9.3.m1.1"><semantics id="S4.T2.15.9.3.m1.1a"><mo id="S4.T2.15.9.3.m1.1.1" mathsize="70%" xref="S4.T2.15.9.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.15.9.3.m1.1b"><times id="S4.T2.15.9.3.m1.1.1.cmml" xref="S4.T2.15.9.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.9.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.9.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.12">
<td class="ltx_td ltx_align_center" id="S4.T2.16.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.050}}" class="ltx_Math" display="inline" id="S4.T2.16.10.1.m1.1"><semantics id="S4.T2.16.10.1.m1.1a"><msub id="S4.T2.16.10.1.m1.1.1" xref="S4.T2.16.10.1.m1.1.1.cmml"><mtext id="S4.T2.16.10.1.m1.1.1.2" mathsize="70%" xref="S4.T2.16.10.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="S4.T2.16.10.1.m1.1.1.3" xref="S4.T2.16.10.1.m1.1.1.3.cmml"><mi id="S4.T2.16.10.1.m1.1.1.3.2" mathsize="70%" xref="S4.T2.16.10.1.m1.1.1.3.2.cmml">r</mi><mo id="S4.T2.16.10.1.m1.1.1.3.1" xref="S4.T2.16.10.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="S4.T2.16.10.1.m1.1.1.3.3" mathsize="70%" xref="S4.T2.16.10.1.m1.1.1.3.3a.cmml">=0.050</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T2.16.10.1.m1.1b"><apply id="S4.T2.16.10.1.m1.1.1.cmml" xref="S4.T2.16.10.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.16.10.1.m1.1.1.1.cmml" xref="S4.T2.16.10.1.m1.1.1">subscript</csymbol><ci id="S4.T2.16.10.1.m1.1.1.2a.cmml" xref="S4.T2.16.10.1.m1.1.1.2"><mtext id="S4.T2.16.10.1.m1.1.1.2.cmml" mathsize="70%" xref="S4.T2.16.10.1.m1.1.1.2">Ours</mtext></ci><apply id="S4.T2.16.10.1.m1.1.1.3.cmml" xref="S4.T2.16.10.1.m1.1.1.3"><times id="S4.T2.16.10.1.m1.1.1.3.1.cmml" xref="S4.T2.16.10.1.m1.1.1.3.1"></times><ci id="S4.T2.16.10.1.m1.1.1.3.2.cmml" xref="S4.T2.16.10.1.m1.1.1.3.2">𝑟</ci><ci id="S4.T2.16.10.1.m1.1.1.3.3a.cmml" xref="S4.T2.16.10.1.m1.1.1.3.3"><mtext id="S4.T2.16.10.1.m1.1.1.3.3.cmml" mathsize="49%" xref="S4.T2.16.10.1.m1.1.1.3.3">=0.050</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.10.1.m1.1c">\text{Ours}_{r\text{=0.050}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.10.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.050 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.18.12.4.1" style="font-size:70%;">76.01%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.18.12.5.1" style="font-size:70%;">57.57%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.18.12.6.1" style="font-size:70%;">99.15%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.18.12.7.1" style="font-size:70%;">99.56%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.18.12.8.1" style="font-size:70%;">58.70%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.18.12.9.1" style="font-size:70%;">97.58%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.18.12.10.1" style="font-size:70%;">195.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.18.12.11.1" style="font-size:70%;">37.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.18.12.12.1" style="font-size:70%;">35.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.17.11.2.1" style="font-size:70%;">1.64</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.17.11.2.m1.1"><semantics id="S4.T2.17.11.2.m1.1a"><mo id="S4.T2.17.11.2.m1.1.1" mathsize="70%" xref="S4.T2.17.11.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.11.2.m1.1b"><times id="S4.T2.17.11.2.m1.1.1.cmml" xref="S4.T2.17.11.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.11.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.11.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.18.12.3.1" style="font-size:70%;">6.60</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.18.12.3.m1.1"><semantics id="S4.T2.18.12.3.m1.1a"><mo id="S4.T2.18.12.3.m1.1.1" mathsize="70%" xref="S4.T2.18.12.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.12.3.m1.1b"><times id="S4.T2.18.12.3.m1.1.1.cmml" xref="S4.T2.18.12.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.12.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.12.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.21.15">
<td class="ltx_td ltx_align_center" id="S4.T2.19.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.100}}" class="ltx_Math" display="inline" id="S4.T2.19.13.1.m1.1"><semantics id="S4.T2.19.13.1.m1.1a"><msub id="S4.T2.19.13.1.m1.1.1" xref="S4.T2.19.13.1.m1.1.1.cmml"><mtext id="S4.T2.19.13.1.m1.1.1.2" mathsize="70%" xref="S4.T2.19.13.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="S4.T2.19.13.1.m1.1.1.3" xref="S4.T2.19.13.1.m1.1.1.3.cmml"><mi id="S4.T2.19.13.1.m1.1.1.3.2" mathsize="70%" xref="S4.T2.19.13.1.m1.1.1.3.2.cmml">r</mi><mo id="S4.T2.19.13.1.m1.1.1.3.1" xref="S4.T2.19.13.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="S4.T2.19.13.1.m1.1.1.3.3" mathsize="70%" xref="S4.T2.19.13.1.m1.1.1.3.3a.cmml">=0.100</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T2.19.13.1.m1.1b"><apply id="S4.T2.19.13.1.m1.1.1.cmml" xref="S4.T2.19.13.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.19.13.1.m1.1.1.1.cmml" xref="S4.T2.19.13.1.m1.1.1">subscript</csymbol><ci id="S4.T2.19.13.1.m1.1.1.2a.cmml" xref="S4.T2.19.13.1.m1.1.1.2"><mtext id="S4.T2.19.13.1.m1.1.1.2.cmml" mathsize="70%" xref="S4.T2.19.13.1.m1.1.1.2">Ours</mtext></ci><apply id="S4.T2.19.13.1.m1.1.1.3.cmml" xref="S4.T2.19.13.1.m1.1.1.3"><times id="S4.T2.19.13.1.m1.1.1.3.1.cmml" xref="S4.T2.19.13.1.m1.1.1.3.1"></times><ci id="S4.T2.19.13.1.m1.1.1.3.2.cmml" xref="S4.T2.19.13.1.m1.1.1.3.2">𝑟</ci><ci id="S4.T2.19.13.1.m1.1.1.3.3a.cmml" xref="S4.T2.19.13.1.m1.1.1.3.3"><mtext id="S4.T2.19.13.1.m1.1.1.3.3.cmml" mathsize="49%" xref="S4.T2.19.13.1.m1.1.1.3.3">=0.100</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.13.1.m1.1c">\text{Ours}_{r\text{=0.100}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.13.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.100 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.4.1" style="font-size:70%;">76.00%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.5.1" style="font-size:70%;">56.59%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.6.1" style="font-size:70%;">99.13%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.7.1" style="font-size:70%;">99.54%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.8.1" style="font-size:70%;">57.12%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.9.1" style="font-size:70%;">97.73%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.10.1" style="font-size:70%;">204.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.11.1" style="font-size:70%;">45.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.21.15.12.1" style="font-size:70%;">31.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.20.14.2.1" style="font-size:70%;">1.85</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.20.14.2.m1.1"><semantics id="S4.T2.20.14.2.m1.1a"><mo id="S4.T2.20.14.2.m1.1.1" mathsize="70%" xref="S4.T2.20.14.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.20.14.2.m1.1b"><times id="S4.T2.20.14.2.m1.1.1.cmml" xref="S4.T2.20.14.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.14.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.14.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.21.15.3.1" style="font-size:70%;">7.05</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.21.15.3.m1.1"><semantics id="S4.T2.21.15.3.m1.1a"><mo id="S4.T2.21.15.3.m1.1.1" mathsize="70%" xref="S4.T2.21.15.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.21.15.3.m1.1b"><times id="S4.T2.21.15.3.m1.1.1.cmml" xref="S4.T2.21.15.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.15.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.15.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.18">
<td class="ltx_td ltx_align_center" id="S4.T2.22.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.200}}" class="ltx_Math" display="inline" id="S4.T2.22.16.1.m1.1"><semantics id="S4.T2.22.16.1.m1.1a"><msub id="S4.T2.22.16.1.m1.1.1" xref="S4.T2.22.16.1.m1.1.1.cmml"><mtext id="S4.T2.22.16.1.m1.1.1.2" mathsize="70%" xref="S4.T2.22.16.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="S4.T2.22.16.1.m1.1.1.3" xref="S4.T2.22.16.1.m1.1.1.3.cmml"><mi id="S4.T2.22.16.1.m1.1.1.3.2" mathsize="70%" xref="S4.T2.22.16.1.m1.1.1.3.2.cmml">r</mi><mo id="S4.T2.22.16.1.m1.1.1.3.1" xref="S4.T2.22.16.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="S4.T2.22.16.1.m1.1.1.3.3" mathsize="70%" xref="S4.T2.22.16.1.m1.1.1.3.3a.cmml">=0.200</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T2.22.16.1.m1.1b"><apply id="S4.T2.22.16.1.m1.1.1.cmml" xref="S4.T2.22.16.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.22.16.1.m1.1.1.1.cmml" xref="S4.T2.22.16.1.m1.1.1">subscript</csymbol><ci id="S4.T2.22.16.1.m1.1.1.2a.cmml" xref="S4.T2.22.16.1.m1.1.1.2"><mtext id="S4.T2.22.16.1.m1.1.1.2.cmml" mathsize="70%" xref="S4.T2.22.16.1.m1.1.1.2">Ours</mtext></ci><apply id="S4.T2.22.16.1.m1.1.1.3.cmml" xref="S4.T2.22.16.1.m1.1.1.3"><times id="S4.T2.22.16.1.m1.1.1.3.1.cmml" xref="S4.T2.22.16.1.m1.1.1.3.1"></times><ci id="S4.T2.22.16.1.m1.1.1.3.2.cmml" xref="S4.T2.22.16.1.m1.1.1.3.2">𝑟</ci><ci id="S4.T2.22.16.1.m1.1.1.3.3a.cmml" xref="S4.T2.22.16.1.m1.1.1.3.3"><mtext id="S4.T2.22.16.1.m1.1.1.3.3.cmml" mathsize="49%" xref="S4.T2.22.16.1.m1.1.1.3.3">=0.200</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.16.1.m1.1c">\text{Ours}_{r\text{=0.200}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.16.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.200 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.4.1" style="font-size:70%;">75.02%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.5.1" style="font-size:70%;">55.71%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.6.1" style="font-size:70%;">99.03%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.7.1" style="font-size:70%;">99.50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.8.1" style="font-size:70%;">55.22%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.9.1" style="font-size:70%;">97.28%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.10.1" style="font-size:70%;">223.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.11.1" style="font-size:70%;">51.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.24.18.12.1" style="font-size:70%;">27.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.23.17.2.1" style="font-size:70%;">2.09</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.23.17.2.m1.1"><semantics id="S4.T2.23.17.2.m1.1a"><mo id="S4.T2.23.17.2.m1.1.1" mathsize="70%" xref="S4.T2.23.17.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.23.17.2.m1.1b"><times id="S4.T2.23.17.2.m1.1.1.cmml" xref="S4.T2.23.17.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.17.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.17.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.18.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T2.24.18.3.1" style="font-size:70%;">7.50</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.24.18.3.m1.1"><semantics id="S4.T2.24.18.3.m1.1a"><mo id="S4.T2.24.18.3.m1.1.1" mathsize="70%" xref="S4.T2.24.18.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.24.18.3.m1.1b"><times id="S4.T2.24.18.3.m1.1.1.cmml" xref="S4.T2.24.18.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.18.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.18.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.27.21">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.25.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.400}}" class="ltx_Math" display="inline" id="S4.T2.25.19.1.m1.1"><semantics id="S4.T2.25.19.1.m1.1a"><msub id="S4.T2.25.19.1.m1.1.1" xref="S4.T2.25.19.1.m1.1.1.cmml"><mtext id="S4.T2.25.19.1.m1.1.1.2" mathsize="70%" xref="S4.T2.25.19.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="S4.T2.25.19.1.m1.1.1.3" xref="S4.T2.25.19.1.m1.1.1.3.cmml"><mi id="S4.T2.25.19.1.m1.1.1.3.2" mathsize="70%" xref="S4.T2.25.19.1.m1.1.1.3.2.cmml">r</mi><mo id="S4.T2.25.19.1.m1.1.1.3.1" xref="S4.T2.25.19.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="S4.T2.25.19.1.m1.1.1.3.3" mathsize="70%" xref="S4.T2.25.19.1.m1.1.1.3.3a.cmml">=0.400</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T2.25.19.1.m1.1b"><apply id="S4.T2.25.19.1.m1.1.1.cmml" xref="S4.T2.25.19.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.25.19.1.m1.1.1.1.cmml" xref="S4.T2.25.19.1.m1.1.1">subscript</csymbol><ci id="S4.T2.25.19.1.m1.1.1.2a.cmml" xref="S4.T2.25.19.1.m1.1.1.2"><mtext id="S4.T2.25.19.1.m1.1.1.2.cmml" mathsize="70%" xref="S4.T2.25.19.1.m1.1.1.2">Ours</mtext></ci><apply id="S4.T2.25.19.1.m1.1.1.3.cmml" xref="S4.T2.25.19.1.m1.1.1.3"><times id="S4.T2.25.19.1.m1.1.1.3.1.cmml" xref="S4.T2.25.19.1.m1.1.1.3.1"></times><ci id="S4.T2.25.19.1.m1.1.1.3.2.cmml" xref="S4.T2.25.19.1.m1.1.1.3.2">𝑟</ci><ci id="S4.T2.25.19.1.m1.1.1.3.3a.cmml" xref="S4.T2.25.19.1.m1.1.1.3.3"><mtext id="S4.T2.25.19.1.m1.1.1.3.3.cmml" mathsize="49%" xref="S4.T2.25.19.1.m1.1.1.3.3">=0.400</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.19.1.m1.1c">\text{Ours}_{r\text{=0.400}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.19.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.400 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.27.21.4.1" style="font-size:70%;">75.30%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.27.21.5.1" style="font-size:70%;">55.79%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.27.21.6.1" style="font-size:70%;">98.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.27.21.7.1" style="font-size:70%;">99.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.27.21.8.1" style="font-size:70%;">54.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.27.21.9.1" style="font-size:70%;">97.71%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.27.21.10.1" style="font-size:70%;">231.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.27.21.11.1" style="font-size:70%;">55.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.27.21.12.1" style="font-size:70%;">25.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.26.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.26.20.2.1" style="font-size:70%;">2.25<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.26.20.2.1.m1.1"><semantics id="S4.T2.26.20.2.1.m1.1a"><mo id="S4.T2.26.20.2.1.m1.1.1" xref="S4.T2.26.20.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.26.20.2.1.m1.1b"><times id="S4.T2.26.20.2.1.m1.1.1.cmml" xref="S4.T2.26.20.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.20.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.20.2.1.m1.1d">×</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.27.21.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.27.21.3.1" style="font-size:70%;">7.80<math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.27.21.3.1.m1.1"><semantics id="S4.T2.27.21.3.1.m1.1a"><mo id="S4.T2.27.21.3.1.m1.1.1" xref="S4.T2.27.21.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.27.21.3.1.m1.1b"><times id="S4.T2.27.21.3.1.m1.1.1.cmml" xref="S4.T2.27.21.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.21.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.21.3.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive evaluation of the Open-Sora-Plan model (29 frames, 720p resolution) using the VBench and CD-FVD metrics. It showcases the performance of different model variants, including the base model, a model trained with multi-step consistency distillation (MLCD), and several versions of the proposed EFFICIENT-VDIT model trained with varying sparsity levels (controlled by the threshold 'r').  The table details key video quality aspects assessed by VBench (like aesthetic quality, motion smoothness, temporal consistency, etc.), along with CD-FVD scores, which measure the difference between generated and real video distributions.  Crucially, it also provides kernel speedup factors for each model variant relative to the base model, illustrating the efficiency gains achieved through the MLCD method and different sparsity levels in the EFFICIENT-VDIT approach.  While the table highlights selected VBench dimensions, Table 6 in the paper offers a complete breakdown of all dimensions.
> <details>
> <summary>read the caption</summary>
> Table 2: Open-Sora-Plan with 29 frames and 720p resolution results on VBench, CD-FVD metrics and kernel speedup evalutation. ‘r𝑟ritalic_r=0.1’ indicates that this checkpoint is trained using the layerwise search strategy described in Algorithm 1, with a threshold of r𝑟ritalic_r=0.1. We selects some dimensions for analysis, with the remaining dimensions provide in the Table 6. We also shows kernel different speedup with threshold r𝑟ritalic_r.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.6.6">
<tr class="ltx_tr" id="S4.T3.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.7.1.1">Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.7.2.1"># GPUs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.7.3.1">Time (s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.7.4.1">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2" rowspan="3"><span class="ltx_text" id="S4.T3.1.1.1.2.1">29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.4">5.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1"><math alttext="1.00\times" class="ltx_math_unparsed" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.1.m1.1b"><mn id="S4.T3.1.1.1.1.m1.1.1">1.00</mn><mo id="S4.T3.1.1.1.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">1.00\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">1.00 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2">
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2">2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.3">2.98</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.1">1.87<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><times id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.2">4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3">1.52</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.1">3.68<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" xref="S4.T3.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><times id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.4.4.2" rowspan="3"><span class="ltx_text" id="S4.T3.4.4.4.2.1">93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4">39.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.1"><math alttext="1.00\times" class="ltx_math_unparsed" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><mrow id="S4.T3.4.4.4.1.m1.1b"><mn id="S4.T3.4.4.4.1.m1.1.1">1.00</mn><mo id="S4.T3.4.4.4.1.m1.1.2" lspace="0.222em">×</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">1.00\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">1.00 ×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5">
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.2">2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.3">20.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.1">1.95<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.1.m1.1.1" xref="S4.T3.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><times id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.2">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.3">10.02</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.1">3.91<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.1.m1.1a"><mo id="S4.T3.6.6.6.1.m1.1.1" xref="S4.T3.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.1.m1.1b"><times id="S4.T3.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the EFFICIENT-VDIT model's performance when employing sequence parallelism on the Open-Sora-Plan model. It displays the wall-clock time taken per step for video generation with varying numbers of GPUs. This allows assessing the model's scalability and efficiency gains achieved through parallel processing.
> <details>
> <summary>read the caption</summary>
> Table 3: Efficient-vDiT  with sequence parallelism on Open-Sora-Plan model. Time as wall-clock-time per step.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.4">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1"></span><span class="ltx_text" id="S4.T4.1.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.1.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.1.3.1">
<span class="ltx_tr" id="S4.T4.1.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1.1.1.1">Final</span></span></span>
<span class="ltx_tr" id="S4.T4.1.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.1.1.1.5"></span><span class="ltx_text" id="S4.T4.1.1.1.6" style="font-size:70%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.1.1.3.1"></span><span class="ltx_text" id="S4.T4.1.1.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.1.1.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.3.3.1">
<span class="ltx_tr" id="S4.T4.1.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.3.1.1.1.1">Aesthetic</span></span></span>
<span class="ltx_tr" id="S4.T4.1.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.3.4"></span><span class="ltx_text" id="S4.T4.1.1.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.1.1.4.1"></span><span class="ltx_text" id="S4.T4.1.1.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.1.1.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.4.3.1">
<span class="ltx_tr" id="S4.T4.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.4.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.3.1.1.1.1">Motion</span></span></span>
<span class="ltx_tr" id="S4.T4.1.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.4.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.3.1.2.1.1">Smoothness</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.4.4"></span><span class="ltx_text" id="S4.T4.1.1.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.1.1.5.1"></span><span class="ltx_text" id="S4.T4.1.1.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T4.1.1.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.5.3.1">
<span class="ltx_tr" id="S4.T4.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="S4.T4.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.3.1.2.1.1">Flickering</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.5.4"></span><span class="ltx_text" id="S4.T4.1.1.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.1" style="font-size:70%;">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.2.2.3.1" style="font-size:70%;">77.91%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.2.2.4.1" style="font-size:70%;">57.91%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.2.2.5.1" style="font-size:70%;">97.83%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.2.2.6.1" style="font-size:70%;">97.34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.2.2.1.1" style="font-size:70%;">1.00</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.2.2.1.m1.1"><semantics id="S4.T4.2.2.1.m1.1a"><mo id="S4.T4.2.2.1.m1.1.1" mathsize="70%" xref="S4.T4.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.1.m1.1b"><times id="S4.T4.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=5}}" class="ltx_Math" display="inline" id="S4.T4.3.3.1.m1.1"><semantics id="S4.T4.3.3.1.m1.1a"><msub id="S4.T4.3.3.1.m1.1.1" xref="S4.T4.3.3.1.m1.1.1.cmml"><mtext id="S4.T4.3.3.1.m1.1.1.2" mathsize="70%" xref="S4.T4.3.3.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="S4.T4.3.3.1.m1.1.1.3" xref="S4.T4.3.3.1.m1.1.1.3.cmml"><mi id="S4.T4.3.3.1.m1.1.1.3.2" mathsize="70%" xref="S4.T4.3.3.1.m1.1.1.3.2.cmml">r</mi><mo id="S4.T4.3.3.1.m1.1.1.3.1" xref="S4.T4.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="S4.T4.3.3.1.m1.1.1.3.3" mathsize="70%" xref="S4.T4.3.3.1.m1.1.1.3.3a.cmml">=5</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.1.m1.1b"><apply id="S4.T4.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.3.3.1.m1.1.1.1.cmml" xref="S4.T4.3.3.1.m1.1.1">subscript</csymbol><ci id="S4.T4.3.3.1.m1.1.1.2a.cmml" xref="S4.T4.3.3.1.m1.1.1.2"><mtext id="S4.T4.3.3.1.m1.1.1.2.cmml" mathsize="70%" xref="S4.T4.3.3.1.m1.1.1.2">Ours</mtext></ci><apply id="S4.T4.3.3.1.m1.1.1.3.cmml" xref="S4.T4.3.3.1.m1.1.1.3"><times id="S4.T4.3.3.1.m1.1.1.3.1.cmml" xref="S4.T4.3.3.1.m1.1.1.3.1"></times><ci id="S4.T4.3.3.1.m1.1.1.3.2.cmml" xref="S4.T4.3.3.1.m1.1.1.3.2">𝑟</ci><ci id="S4.T4.3.3.1.m1.1.1.3.3a.cmml" xref="S4.T4.3.3.1.m1.1.1.3.3"><mtext id="S4.T4.3.3.1.m1.1.1.3.3.cmml" mathsize="49%" xref="S4.T4.3.3.1.m1.1.1.3.3">=5</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.1.m1.1c">\text{Ours}_{r\text{=5}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =5 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.4.4.3.1" style="font-size:70%;">77.15%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.4.4.4.1" style="font-size:70%;">51.18%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.4.4.5.1" style="font-size:70%;">96.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.4.4.6.1" style="font-size:70%;">97.18%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.4.4.2.1" style="font-size:70%;">1.34</span><math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.4.4.2.m1.1"><semantics id="S4.T4.4.4.2.m1.1a"><mo id="S4.T4.4.4.2.m1.1.1" mathsize="70%" xref="S4.T4.4.4.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.2.m1.1b"><times id="S4.T4.4.4.2.m1.1.1.cmml" xref="S4.T4.4.4.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the CogVideoX-5B model on the VBench benchmark. CogVideoX-5B is a large video generation model based on the MM-DiT architecture. The evaluation used videos with 49 frames and a resolution of 480p.  The VBench metrics assess various aspects of video generation quality including final score, aesthetic quality, motion smoothness, temporal consistency, and object class consistency, among others. The table likely shows the performance of the CogVideoX-5B model after applying the proposed sparse attention and distillation techniques, compared to the original model.
> <details>
> <summary>read the caption</summary>
> Table 4: CogVideoX-5B with 49 frames and 480p resolution results on VBench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.2">
<tr class="ltx_tr" id="S4.T5.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.3.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.1.1.1.1"></span><span class="ltx_text" id="S4.T5.1.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T5.1.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.1.3.1">
<span class="ltx_tr" id="S4.T5.1.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1.1.1.1">Final</span></span></span>
<span class="ltx_tr" id="S4.T5.1.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.1.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T5.1.1.1.5"></span><span class="ltx_text" id="S4.T5.1.1.1.6" style="font-size:70%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.2.2.4.1"></span><span class="ltx_text" id="S4.T5.2.2.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T5.2.2.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.2.2.4.3.1">
<span class="ltx_tr" id="S4.T5.2.2.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.2.4.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.4.3.1.1.1.1">Aesthetic</span></span></span>
<span class="ltx_tr" id="S4.T5.2.2.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.2.4.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.4.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.2.2.4.4"></span><span class="ltx_text" id="S4.T5.2.2.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.2.2.5.1"></span><span class="ltx_text" id="S4.T5.2.2.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T5.2.2.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.2.2.5.3.1">
<span class="ltx_tr" id="S4.T5.2.2.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.2.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.5.3.1.1.1.1">Motion</span></span></span>
<span class="ltx_tr" id="S4.T5.2.2.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.2.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.5.3.1.2.1.1">Smoothness</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.2.2.5.4"></span><span class="ltx_text" id="S4.T5.2.2.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T5.2.2.6.1"></span><span class="ltx_text" id="S4.T5.2.2.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="S4.T5.2.2.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.2.2.6.3.1">
<span class="ltx_tr" id="S4.T5.2.2.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.2.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.6.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="S4.T5.2.2.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.2.2.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.6.3.1.2.1.1">Flickering</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.2.2.6.4"></span><span class="ltx_text" id="S4.T5.2.2.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.1" style="font-size:70%;">CD-FVD</span><span class="ltx_text" id="S4.T5.2.2.2.2" style="font-size:70%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.3.1.1" style="font-size:70%;">MLCD + KD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.3.2.1" style="font-size:70%;">76.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.3.3.1" style="font-size:70%;">56.59%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.3.4.1" style="font-size:70%;">99.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.3.5.1" style="font-size:70%;">99.54%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.3.6.1" style="font-size:70%;">204.13</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.4.1.1" style="font-size:70%;">KD + MLCD</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.4.2.1" style="font-size:70%;">75.50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.4.3.1" style="font-size:70%;">56.38%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.4.4.1" style="font-size:70%;">99.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.4.5.1" style="font-size:70%;">99.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.2.4.6.1" style="font-size:70%;">203.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of two different approaches for training a video diffusion model: applying Multi-step Consistency Distillation (MLCD) before layerwise knowledge distillation (KD) versus applying KD before MLCD.  The comparison uses metrics such as final score, aesthetic quality, motion smoothness, temporal flickering, object class consistency, subject consistency, image quality, and CD-FVD (Content-Debiased Fréchet Video Distance). This allows for assessing the impact of the order of these training stages on the overall video generation quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Quantitative evaluation on distillation order for MLCD and layerwise knowledge distillation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T6.5">
<tr class="ltx_tr" id="A3.T6.5.6">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.1.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.2.1"></span><span class="ltx_text" id="A3.T6.5.6.2.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.2.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.2.3.1">
<span class="ltx_tr" id="A3.T6.5.6.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.2.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.2.3.1.1.1.1">Multiple</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.2.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.2.3.1.2.1.1">Objects</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.2.4"></span><span class="ltx_text" id="A3.T6.5.6.2.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.3.1"></span><span class="ltx_text" id="A3.T6.5.6.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.3.3.1">
<span class="ltx_tr" id="A3.T6.5.6.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.3.3.1.1.1.1">Human</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.3.3.1.2.1.1">Action</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.3.4"></span><span class="ltx_text" id="A3.T6.5.6.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.4.1" style="font-size:70%;">Color</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.5.1"></span><span class="ltx_text" id="A3.T6.5.6.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.5.3.1">
<span class="ltx_tr" id="A3.T6.5.6.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.5.3.1.1.1.1">Dynamic</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.5.3.1.2.1.1">Degree</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.5.4"></span><span class="ltx_text" id="A3.T6.5.6.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.6.1"></span><span class="ltx_text" id="A3.T6.5.6.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.6.3.1">
<span class="ltx_tr" id="A3.T6.5.6.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.6.3.1.1.1.1">Spatial</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.6.3.1.2.1.1">Relationship</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.6.4"></span><span class="ltx_text" id="A3.T6.5.6.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.7.1" style="font-size:70%;">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.8.1"></span><span class="ltx_text" id="A3.T6.5.6.8.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.8.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.8.3.1">
<span class="ltx_tr" id="A3.T6.5.6.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.8.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.8.3.1.1.1.1">Appearance</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.8.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.8.3.1.2.1.1">Style</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.8.4"></span><span class="ltx_text" id="A3.T6.5.6.8.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.9.1"></span><span class="ltx_text" id="A3.T6.5.6.9.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.9.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.9.3.1">
<span class="ltx_tr" id="A3.T6.5.6.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.9.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.9.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.9.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.9.3.1.2.1.1">Style</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.9.4"></span><span class="ltx_text" id="A3.T6.5.6.9.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.10.1"></span><span class="ltx_text" id="A3.T6.5.6.10.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.10.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.10.3.1">
<span class="ltx_tr" id="A3.T6.5.6.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.10.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.10.3.1.1.1.1">Overall</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.10.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.10.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.10.4"></span><span class="ltx_text" id="A3.T6.5.6.10.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.11.1"></span><span class="ltx_text" id="A3.T6.5.6.11.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.11.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.11.3.1">
<span class="ltx_tr" id="A3.T6.5.6.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.11.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.11.3.1.1.1.1">Background</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.11.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.11.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.11.4"></span><span class="ltx_text" id="A3.T6.5.6.11.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.6.12" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.T6.5.6.12.1"></span><span class="ltx_text" id="A3.T6.5.6.12.2" style="font-size:70%;"> </span><span class="ltx_text" id="A3.T6.5.6.12.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A3.T6.5.6.12.3.1">
<span class="ltx_tr" id="A3.T6.5.6.12.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.12.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.12.3.1.1.1.1">Imaging</span></span></span>
<span class="ltx_tr" id="A3.T6.5.6.12.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.5.6.12.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.6.12.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A3.T6.5.6.12.4"></span><span class="ltx_text" id="A3.T6.5.6.12.5" style="font-size:70%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.1.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.2.1" style="font-size:70%;">23.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.3.1" style="font-size:70%;">54.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.4.1" style="font-size:70%;">94.47%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.5.1" style="font-size:70%;">34.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.6.1" style="font-size:70%;">43.49%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.7.1" style="font-size:70%;">18.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.8.1" style="font-size:70%;">19.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.9.1" style="font-size:70%;">18.45%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.10.1" style="font-size:70%;">19.69%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.11.1" style="font-size:70%;">97.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.7.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.7.12.1" style="font-size:70%;">64.75%</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.8">
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.1.1" style="font-size:70%;">MLCD</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.2.1" style="font-size:70%;">19.21%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.3.1" style="font-size:70%;">56.00%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.4.1" style="font-size:70%;">94.12%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.5.1" style="font-size:70%;">41.67%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.6.1" style="font-size:70%;">40.57%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.7.1" style="font-size:70%;">22.67%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.8.1" style="font-size:70%;">20.46%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.9.1" style="font-size:70%;">18.21%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.10.1" style="font-size:70%;">19.77%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.11.1" style="font-size:70%;">97.98%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.8.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.8.12.1" style="font-size:70%;">65.55%</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.025}}" class="ltx_Math" display="inline" id="A3.T6.1.1.1.m1.1"><semantics id="A3.T6.1.1.1.m1.1a"><msub id="A3.T6.1.1.1.m1.1.1" xref="A3.T6.1.1.1.m1.1.1.cmml"><mtext id="A3.T6.1.1.1.m1.1.1.2" mathsize="70%" xref="A3.T6.1.1.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A3.T6.1.1.1.m1.1.1.3" xref="A3.T6.1.1.1.m1.1.1.3.cmml"><mi id="A3.T6.1.1.1.m1.1.1.3.2" mathsize="70%" xref="A3.T6.1.1.1.m1.1.1.3.2.cmml">r</mi><mo id="A3.T6.1.1.1.m1.1.1.3.1" xref="A3.T6.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A3.T6.1.1.1.m1.1.1.3.3" mathsize="70%" xref="A3.T6.1.1.1.m1.1.1.3.3a.cmml">=0.025</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T6.1.1.1.m1.1b"><apply id="A3.T6.1.1.1.m1.1.1.cmml" xref="A3.T6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.1.1.1.m1.1.1.1.cmml" xref="A3.T6.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T6.1.1.1.m1.1.1.2a.cmml" xref="A3.T6.1.1.1.m1.1.1.2"><mtext id="A3.T6.1.1.1.m1.1.1.2.cmml" mathsize="70%" xref="A3.T6.1.1.1.m1.1.1.2">Ours</mtext></ci><apply id="A3.T6.1.1.1.m1.1.1.3.cmml" xref="A3.T6.1.1.1.m1.1.1.3"><times id="A3.T6.1.1.1.m1.1.1.3.1.cmml" xref="A3.T6.1.1.1.m1.1.1.3.1"></times><ci id="A3.T6.1.1.1.m1.1.1.3.2.cmml" xref="A3.T6.1.1.1.m1.1.1.3.2">𝑟</ci><ci id="A3.T6.1.1.1.m1.1.1.3.3a.cmml" xref="A3.T6.1.1.1.m1.1.1.3.3"><mtext id="A3.T6.1.1.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A3.T6.1.1.1.m1.1.1.3.3">=0.025</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.1.1.1.m1.1c">\text{Ours}_{r\text{=0.025}}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.1.1.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.025 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.1.1.2.1" style="font-size:70%;">18.83%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.1.1.3.1" style="font-size:70%;">55.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.4.1" style="font-size:70%;">96.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.1.1.5.1" style="font-size:70%;">52.78%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.6.1" style="font-size:70%;">46.02%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.1.1.7.1" style="font-size:70%;">12.35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.8.1" style="font-size:70%;">20.31%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.1.1.9.1" style="font-size:70%;">18.17%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.1.1.10.1" style="font-size:70%;">19.11%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.1.1.11.1" style="font-size:70%;">97.70%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.12.1" style="font-size:70%;">58.90%</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.2">
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.050}}" class="ltx_Math" display="inline" id="A3.T6.2.2.1.m1.1"><semantics id="A3.T6.2.2.1.m1.1a"><msub id="A3.T6.2.2.1.m1.1.1" xref="A3.T6.2.2.1.m1.1.1.cmml"><mtext id="A3.T6.2.2.1.m1.1.1.2" mathsize="70%" xref="A3.T6.2.2.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A3.T6.2.2.1.m1.1.1.3" xref="A3.T6.2.2.1.m1.1.1.3.cmml"><mi id="A3.T6.2.2.1.m1.1.1.3.2" mathsize="70%" xref="A3.T6.2.2.1.m1.1.1.3.2.cmml">r</mi><mo id="A3.T6.2.2.1.m1.1.1.3.1" xref="A3.T6.2.2.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A3.T6.2.2.1.m1.1.1.3.3" mathsize="70%" xref="A3.T6.2.2.1.m1.1.1.3.3a.cmml">=0.050</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T6.2.2.1.m1.1b"><apply id="A3.T6.2.2.1.m1.1.1.cmml" xref="A3.T6.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.2.2.1.m1.1.1.1.cmml" xref="A3.T6.2.2.1.m1.1.1">subscript</csymbol><ci id="A3.T6.2.2.1.m1.1.1.2a.cmml" xref="A3.T6.2.2.1.m1.1.1.2"><mtext id="A3.T6.2.2.1.m1.1.1.2.cmml" mathsize="70%" xref="A3.T6.2.2.1.m1.1.1.2">Ours</mtext></ci><apply id="A3.T6.2.2.1.m1.1.1.3.cmml" xref="A3.T6.2.2.1.m1.1.1.3"><times id="A3.T6.2.2.1.m1.1.1.3.1.cmml" xref="A3.T6.2.2.1.m1.1.1.3.1"></times><ci id="A3.T6.2.2.1.m1.1.1.3.2.cmml" xref="A3.T6.2.2.1.m1.1.1.3.2">𝑟</ci><ci id="A3.T6.2.2.1.m1.1.1.3.3a.cmml" xref="A3.T6.2.2.1.m1.1.1.3.3"><mtext id="A3.T6.2.2.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A3.T6.2.2.1.m1.1.1.3.3">=0.050</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.2.2.1.m1.1c">\text{Ours}_{r\text{=0.050}}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.2.2.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.050 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.2.2.2.1" style="font-size:70%;">11.74%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.2.2.3.1" style="font-size:70%;">58.00%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.2.2.4.1" style="font-size:70%;">92.11%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.2.2.5.1" style="font-size:70%;">58.33%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.2.2.6.1" style="font-size:70%;">39.81%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.2.2.7.1" style="font-size:70%;">22.31%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.2.2.8.1" style="font-size:70%;">20.25%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.2.2.9.1" style="font-size:70%;">17.71%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.2.2.10.1" style="font-size:70%;">19.45%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.2.2.11.1" style="font-size:70%;">97.71%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.2.2.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.2.2.12.1" style="font-size:70%;">56.86%</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.3.3">
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.100}}" class="ltx_Math" display="inline" id="A3.T6.3.3.1.m1.1"><semantics id="A3.T6.3.3.1.m1.1a"><msub id="A3.T6.3.3.1.m1.1.1" xref="A3.T6.3.3.1.m1.1.1.cmml"><mtext id="A3.T6.3.3.1.m1.1.1.2" mathsize="70%" xref="A3.T6.3.3.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A3.T6.3.3.1.m1.1.1.3" xref="A3.T6.3.3.1.m1.1.1.3.cmml"><mi id="A3.T6.3.3.1.m1.1.1.3.2" mathsize="70%" xref="A3.T6.3.3.1.m1.1.1.3.2.cmml">r</mi><mo id="A3.T6.3.3.1.m1.1.1.3.1" xref="A3.T6.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A3.T6.3.3.1.m1.1.1.3.3" mathsize="70%" xref="A3.T6.3.3.1.m1.1.1.3.3a.cmml">=0.100</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T6.3.3.1.m1.1b"><apply id="A3.T6.3.3.1.m1.1.1.cmml" xref="A3.T6.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.3.3.1.m1.1.1.1.cmml" xref="A3.T6.3.3.1.m1.1.1">subscript</csymbol><ci id="A3.T6.3.3.1.m1.1.1.2a.cmml" xref="A3.T6.3.3.1.m1.1.1.2"><mtext id="A3.T6.3.3.1.m1.1.1.2.cmml" mathsize="70%" xref="A3.T6.3.3.1.m1.1.1.2">Ours</mtext></ci><apply id="A3.T6.3.3.1.m1.1.1.3.cmml" xref="A3.T6.3.3.1.m1.1.1.3"><times id="A3.T6.3.3.1.m1.1.1.3.1.cmml" xref="A3.T6.3.3.1.m1.1.1.3.1"></times><ci id="A3.T6.3.3.1.m1.1.1.3.2.cmml" xref="A3.T6.3.3.1.m1.1.1.3.2">𝑟</ci><ci id="A3.T6.3.3.1.m1.1.1.3.3a.cmml" xref="A3.T6.3.3.1.m1.1.1.3.3"><mtext id="A3.T6.3.3.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A3.T6.3.3.1.m1.1.1.3.3">=0.100</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.3.1.m1.1c">\text{Ours}_{r\text{=0.100}}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.3.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.100 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.3.3.2.1" style="font-size:70%;">18.98%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.3.1" style="font-size:70%;">56.00%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.4.1" style="font-size:70%;">93.65%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.5.1" style="font-size:70%;">63.89%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.6.1" style="font-size:70%;">43.88%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.7.1" style="font-size:70%;">15.77%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.8.1" style="font-size:70%;">20.20%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.9.1" style="font-size:70%;">17.98%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.10.1" style="font-size:70%;">19.29%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.11.1" style="font-size:70%;">97.55%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.3.3.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.3.3.12.1" style="font-size:70%;">54.88%</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.4">
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.200}}" class="ltx_Math" display="inline" id="A3.T6.4.4.1.m1.1"><semantics id="A3.T6.4.4.1.m1.1a"><msub id="A3.T6.4.4.1.m1.1.1" xref="A3.T6.4.4.1.m1.1.1.cmml"><mtext id="A3.T6.4.4.1.m1.1.1.2" mathsize="70%" xref="A3.T6.4.4.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A3.T6.4.4.1.m1.1.1.3" xref="A3.T6.4.4.1.m1.1.1.3.cmml"><mi id="A3.T6.4.4.1.m1.1.1.3.2" mathsize="70%" xref="A3.T6.4.4.1.m1.1.1.3.2.cmml">r</mi><mo id="A3.T6.4.4.1.m1.1.1.3.1" xref="A3.T6.4.4.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A3.T6.4.4.1.m1.1.1.3.3" mathsize="70%" xref="A3.T6.4.4.1.m1.1.1.3.3a.cmml">=0.200</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T6.4.4.1.m1.1b"><apply id="A3.T6.4.4.1.m1.1.1.cmml" xref="A3.T6.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.4.4.1.m1.1.1.1.cmml" xref="A3.T6.4.4.1.m1.1.1">subscript</csymbol><ci id="A3.T6.4.4.1.m1.1.1.2a.cmml" xref="A3.T6.4.4.1.m1.1.1.2"><mtext id="A3.T6.4.4.1.m1.1.1.2.cmml" mathsize="70%" xref="A3.T6.4.4.1.m1.1.1.2">Ours</mtext></ci><apply id="A3.T6.4.4.1.m1.1.1.3.cmml" xref="A3.T6.4.4.1.m1.1.1.3"><times id="A3.T6.4.4.1.m1.1.1.3.1.cmml" xref="A3.T6.4.4.1.m1.1.1.3.1"></times><ci id="A3.T6.4.4.1.m1.1.1.3.2.cmml" xref="A3.T6.4.4.1.m1.1.1.3.2">𝑟</ci><ci id="A3.T6.4.4.1.m1.1.1.3.3a.cmml" xref="A3.T6.4.4.1.m1.1.1.3.3"><mtext id="A3.T6.4.4.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A3.T6.4.4.1.m1.1.1.3.3">=0.200</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.4.1.m1.1c">\text{Ours}_{r\text{=0.200}}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.4.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.200 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.2.1" style="font-size:70%;">17.99%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.4.1" style="font-size:70%;">51.82%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.5.1" style="font-size:70%;">59.72%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.6.1" style="font-size:70%;">36.14%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.7.1" style="font-size:70%;">13.88%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.8.1" style="font-size:70%;">20.29%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.9.1" style="font-size:70%;">17.97%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.10.1" style="font-size:70%;">18.97%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.11.1" style="font-size:70%;">97.62%</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.4.4.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.4.4.12.1" style="font-size:70%;">54.07%</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.400}}" class="ltx_Math" display="inline" id="A3.T6.5.5.1.m1.1"><semantics id="A3.T6.5.5.1.m1.1a"><msub id="A3.T6.5.5.1.m1.1.1" xref="A3.T6.5.5.1.m1.1.1.cmml"><mtext id="A3.T6.5.5.1.m1.1.1.2" mathsize="70%" xref="A3.T6.5.5.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A3.T6.5.5.1.m1.1.1.3" xref="A3.T6.5.5.1.m1.1.1.3.cmml"><mi id="A3.T6.5.5.1.m1.1.1.3.2" mathsize="70%" xref="A3.T6.5.5.1.m1.1.1.3.2.cmml">r</mi><mo id="A3.T6.5.5.1.m1.1.1.3.1" xref="A3.T6.5.5.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A3.T6.5.5.1.m1.1.1.3.3" mathsize="70%" xref="A3.T6.5.5.1.m1.1.1.3.3a.cmml">=0.400</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T6.5.5.1.m1.1b"><apply id="A3.T6.5.5.1.m1.1.1.cmml" xref="A3.T6.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T6.5.5.1.m1.1.1.1.cmml" xref="A3.T6.5.5.1.m1.1.1">subscript</csymbol><ci id="A3.T6.5.5.1.m1.1.1.2a.cmml" xref="A3.T6.5.5.1.m1.1.1.2"><mtext id="A3.T6.5.5.1.m1.1.1.2.cmml" mathsize="70%" xref="A3.T6.5.5.1.m1.1.1.2">Ours</mtext></ci><apply id="A3.T6.5.5.1.m1.1.1.3.cmml" xref="A3.T6.5.5.1.m1.1.1.3"><times id="A3.T6.5.5.1.m1.1.1.3.1.cmml" xref="A3.T6.5.5.1.m1.1.1.3.1"></times><ci id="A3.T6.5.5.1.m1.1.1.3.2.cmml" xref="A3.T6.5.5.1.m1.1.1.3.2">𝑟</ci><ci id="A3.T6.5.5.1.m1.1.1.3.3a.cmml" xref="A3.T6.5.5.1.m1.1.1.3.3"><mtext id="A3.T6.5.5.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A3.T6.5.5.1.m1.1.1.3.3">=0.400</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.5.1.m1.1c">\text{Ours}_{r\text{=0.400}}</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.5.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.400 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.2.1" style="font-size:70%;">15.32%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.3.1" style="font-size:70%;">54.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.4.1" style="font-size:70%;">92.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.5.1" style="font-size:70%;">65.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.6.1" style="font-size:70%;">37.05%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.7.1" style="font-size:70%;">12.06%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.8.1" style="font-size:70%;">20.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.9.1" style="font-size:70%;">18.19%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.10.1" style="font-size:70%;">19.22%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.11.1" style="font-size:70%;">97.66%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.T6.5.5.12.1" style="font-size:70%;">54.36%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 provides a detailed breakdown of the VBench scores for various video generation models, including the baseline model and different variants of the EFFICIENT-VDIT model with varying sparsity levels.  It shows a quantitative comparison across multiple aspects of video quality, such as the presence of multiple objects, human actions, color accuracy, dynamic degree, spatial relationships, scene style, appearance style, temporal consistency, overall image quality, background consistency, and overall quality score. This allows for a comprehensive assessment of the impact of different model modifications on the different facets of video quality.
> <details>
> <summary>read the caption</summary>
> Table 6: Supplemental VBench evaluation for main result.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A4.T7.20">
<tr class="ltx_tr" id="A4.T7.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.3.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.1.1.1.1"></span><span class="ltx_text" id="A4.T7.1.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.1.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.1.1.1.3.1">
<span class="ltx_tr" id="A4.T7.1.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.1.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.3.1.1.1.1">Final</span></span></span>
<span class="ltx_tr" id="A4.T7.1.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.1.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.3.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.1.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.1.1.1.5"></span><span class="ltx_text" id="A4.T7.1.1.1.6" style="font-size:70%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T7.1.1.1.m1.1"><semantics id="A4.T7.1.1.1.m1.1a"><mo id="A4.T7.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="A4.T7.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T7.1.1.1.m1.1b"><ci id="A4.T7.1.1.1.m1.1.1.cmml" xref="A4.T7.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T7.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.2.2.4.1"></span><span class="ltx_text" id="A4.T7.2.2.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.2.2.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.2.2.4.3.1">
<span class="ltx_tr" id="A4.T7.2.2.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.4.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.4.3.1.1.1.1">Aesthetic</span></span></span>
<span class="ltx_tr" id="A4.T7.2.2.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.4.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.4.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.2.2.4.4"></span><span class="ltx_text" id="A4.T7.2.2.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.2.2.5.1"></span><span class="ltx_text" id="A4.T7.2.2.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.2.2.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.2.2.5.3.1">
<span class="ltx_tr" id="A4.T7.2.2.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.5.3.1.1.1.1">Motion</span></span></span>
<span class="ltx_tr" id="A4.T7.2.2.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.5.3.1.2.1.1">Smoothness</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.2.2.5.4"></span><span class="ltx_text" id="A4.T7.2.2.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.2.2.6.1"></span><span class="ltx_text" id="A4.T7.2.2.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.2.2.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.2.2.6.3.1">
<span class="ltx_tr" id="A4.T7.2.2.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.6.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="A4.T7.2.2.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.6.3.1.2.1.1">Flickering</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.2.2.6.4"></span><span class="ltx_text" id="A4.T7.2.2.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.2.2.7.1"></span><span class="ltx_text" id="A4.T7.2.2.7.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.2.2.7.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.2.2.7.3.1">
<span class="ltx_tr" id="A4.T7.2.2.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.7.3.1.1.1.1">Object</span></span></span>
<span class="ltx_tr" id="A4.T7.2.2.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.7.3.1.2.1.1">Class</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.2.2.7.4"></span><span class="ltx_text" id="A4.T7.2.2.7.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.2.2.8.1"></span><span class="ltx_text" id="A4.T7.2.2.8.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.2.2.8.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.2.2.8.3.1">
<span class="ltx_tr" id="A4.T7.2.2.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.8.3.1.1.1.1">Subject</span></span></span>
<span class="ltx_tr" id="A4.T7.2.2.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.8.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.2.2.8.4"></span><span class="ltx_text" id="A4.T7.2.2.8.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.2.2.9.1"></span><span class="ltx_text" id="A4.T7.2.2.9.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.2.2.9.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.2.2.9.3.1">
<span class="ltx_tr" id="A4.T7.2.2.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.9.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.3.1.1.1.1">Imaging</span></span></span>
<span class="ltx_tr" id="A4.T7.2.2.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.2.2.9.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.2.2.9.4"></span><span class="ltx_text" id="A4.T7.2.2.9.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T7.2.2.2.1" style="font-size:70%;">CD-FVD</span><span class="ltx_text" id="A4.T7.2.2.2.2" style="font-size:70%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T7.2.2.2.m1.1"><semantics id="A4.T7.2.2.2.m1.1a"><mo id="A4.T7.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="A4.T7.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T7.2.2.2.m1.1b"><ci id="A4.T7.2.2.2.m1.1.1.cmml" xref="A4.T7.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T7.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.10.1" style="font-size:70%;">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.3.3.2.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.3.3.3.1" style="font-size:70%;">76.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.3.3.4.1" style="font-size:70%;">58.34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T7.3.3.5.1" style="font-size:70%;">99.43</span><span class="ltx_text" id="A4.T7.3.3.5.2" style="font-size:70%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.3.3.6.1" style="font-size:70%;">99.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.3.3.7.1" style="font-size:70%;">64.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.3.3.8.1" style="font-size:70%;">98.45%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.3.3.9.1" style="font-size:70%;">64.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.3.3.10.1" style="font-size:70%;">172.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.3.3.1.1" style="font-size:70%;">1.00</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.3.3.1.m1.1"><semantics id="A4.T7.3.3.1.m1.1a"><mo id="A4.T7.3.3.1.m1.1.1" mathsize="70%" xref="A4.T7.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.3.3.1.m1.1b"><times id="A4.T7.3.3.1.m1.1.1.cmml" xref="A4.T7.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.5.5">
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{4:4}" class="ltx_Math" display="inline" id="A4.T7.4.4.1.m1.1"><semantics id="A4.T7.4.4.1.m1.1a"><msub id="A4.T7.4.4.1.m1.1.1" xref="A4.T7.4.4.1.m1.1.1.cmml"><mtext id="A4.T7.4.4.1.m1.1.1.2" mathsize="70%" xref="A4.T7.4.4.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.4.4.1.m1.1.1.3" xref="A4.T7.4.4.1.m1.1.1.3.cmml"><mn id="A4.T7.4.4.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.4.4.1.m1.1.1.3.2.cmml">4</mn><mo id="A4.T7.4.4.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.4.4.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.4.4.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.4.4.1.m1.1.1.3.3.cmml">4</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.4.4.1.m1.1b"><apply id="A4.T7.4.4.1.m1.1.1.cmml" xref="A4.T7.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.4.4.1.m1.1.1.1.cmml" xref="A4.T7.4.4.1.m1.1.1">subscript</csymbol><ci id="A4.T7.4.4.1.m1.1.1.2a.cmml" xref="A4.T7.4.4.1.m1.1.1.2"><mtext id="A4.T7.4.4.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.4.4.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.4.4.1.m1.1.1.3.cmml" xref="A4.T7.4.4.1.m1.1.1.3"><ci id="A4.T7.4.4.1.m1.1.1.3.1.cmml" xref="A4.T7.4.4.1.m1.1.1.3.1">:</ci><cn id="A4.T7.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.4.4.1.m1.1.1.3.2">4</cn><cn id="A4.T7.4.4.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.4.4.1.m1.1.1.3.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.4.4.1.m1.1c">\text{Base}_{4:4}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.4.4.1.m1.1d">Base start_POSTSUBSCRIPT 4 : 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.5.5.3.1" style="font-size:70%;">76.57%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.5.5.4.1" style="font-size:70%;">58.64%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.5.5.5.1" style="font-size:70%;">99.38%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.5.5.6.1" style="font-size:70%;">99.20%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.5.5.7.1" style="font-size:70%;">66.38%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.5.5.8.1" style="font-size:70%;">98.26%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.5.5.9.1" style="font-size:70%;">63.56%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.5.5.10.1" style="font-size:70%;">171.62</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.5.5.2.1" style="font-size:70%;">1.16</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.5.5.2.m1.1"><semantics id="A4.T7.5.5.2.m1.1a"><mo id="A4.T7.5.5.2.m1.1.1" mathsize="70%" xref="A4.T7.5.5.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.5.5.2.m1.1b"><times id="A4.T7.5.5.2.m1.1.1.cmml" xref="A4.T7.5.5.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.5.5.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.5.5.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.7.7">
<td class="ltx_td ltx_align_center" id="A4.T7.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{3:5}" class="ltx_Math" display="inline" id="A4.T7.6.6.1.m1.1"><semantics id="A4.T7.6.6.1.m1.1a"><msub id="A4.T7.6.6.1.m1.1.1" xref="A4.T7.6.6.1.m1.1.1.cmml"><mtext id="A4.T7.6.6.1.m1.1.1.2" mathsize="70%" xref="A4.T7.6.6.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.6.6.1.m1.1.1.3" xref="A4.T7.6.6.1.m1.1.1.3.cmml"><mn id="A4.T7.6.6.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.6.6.1.m1.1.1.3.2.cmml">3</mn><mo id="A4.T7.6.6.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.6.6.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.6.6.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.6.6.1.m1.1.1.3.3.cmml">5</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.6.6.1.m1.1b"><apply id="A4.T7.6.6.1.m1.1.1.cmml" xref="A4.T7.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.6.6.1.m1.1.1.1.cmml" xref="A4.T7.6.6.1.m1.1.1">subscript</csymbol><ci id="A4.T7.6.6.1.m1.1.1.2a.cmml" xref="A4.T7.6.6.1.m1.1.1.2"><mtext id="A4.T7.6.6.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.6.6.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.6.6.1.m1.1.1.3.cmml" xref="A4.T7.6.6.1.m1.1.1.3"><ci id="A4.T7.6.6.1.m1.1.1.3.1.cmml" xref="A4.T7.6.6.1.m1.1.1.3.1">:</ci><cn id="A4.T7.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.6.6.1.m1.1.1.3.2">3</cn><cn id="A4.T7.6.6.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.6.6.1.m1.1.1.3.3">5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.6.6.1.m1.1c">\text{Base}_{3:5}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.6.6.1.m1.1d">Base start_POSTSUBSCRIPT 3 : 5 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.3.1" style="font-size:70%;">75.53%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.4.1" style="font-size:70%;">55.47%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.5.1" style="font-size:70%;">99.01%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.6.1" style="font-size:70%;">98.96%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.7.1" style="font-size:70%;">62.26%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.8.1" style="font-size:70%;">97.42%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.9.1" style="font-size:70%;">59.67%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.7.7.10.1" style="font-size:70%;">197.35</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.7.7.2.1" style="font-size:70%;">1.26</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.7.7.2.m1.1"><semantics id="A4.T7.7.7.2.m1.1a"><mo id="A4.T7.7.7.2.m1.1.1" mathsize="70%" xref="A4.T7.7.7.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.7.7.2.m1.1b"><times id="A4.T7.7.7.2.m1.1.1.cmml" xref="A4.T7.7.7.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.7.7.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.7.7.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.9.9">
<td class="ltx_td ltx_align_center" id="A4.T7.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{2:6}" class="ltx_Math" display="inline" id="A4.T7.8.8.1.m1.1"><semantics id="A4.T7.8.8.1.m1.1a"><msub id="A4.T7.8.8.1.m1.1.1" xref="A4.T7.8.8.1.m1.1.1.cmml"><mtext id="A4.T7.8.8.1.m1.1.1.2" mathsize="70%" xref="A4.T7.8.8.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.8.8.1.m1.1.1.3" xref="A4.T7.8.8.1.m1.1.1.3.cmml"><mn id="A4.T7.8.8.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.8.8.1.m1.1.1.3.2.cmml">2</mn><mo id="A4.T7.8.8.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.8.8.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.8.8.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.8.8.1.m1.1.1.3.3.cmml">6</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.8.8.1.m1.1b"><apply id="A4.T7.8.8.1.m1.1.1.cmml" xref="A4.T7.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.8.8.1.m1.1.1.1.cmml" xref="A4.T7.8.8.1.m1.1.1">subscript</csymbol><ci id="A4.T7.8.8.1.m1.1.1.2a.cmml" xref="A4.T7.8.8.1.m1.1.1.2"><mtext id="A4.T7.8.8.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.8.8.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.8.8.1.m1.1.1.3.cmml" xref="A4.T7.8.8.1.m1.1.1.3"><ci id="A4.T7.8.8.1.m1.1.1.3.1.cmml" xref="A4.T7.8.8.1.m1.1.1.3.1">:</ci><cn id="A4.T7.8.8.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.8.8.1.m1.1.1.3.2">2</cn><cn id="A4.T7.8.8.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.8.8.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.8.8.1.m1.1c">\text{Base}_{2:6}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.8.8.1.m1.1d">Base start_POSTSUBSCRIPT 2 : 6 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.3.1" style="font-size:70%;">76.33%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.4.1" style="font-size:70%;">57.14%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.5.1" style="font-size:70%;">99.06%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.6.1" style="font-size:70%;">99.02%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.7.1" style="font-size:70%;">56.17%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.8.1" style="font-size:70%;">97.58%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.9.1" style="font-size:70%;">61.10%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.9.9.10.1" style="font-size:70%;">201.61</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.9.9.2.1" style="font-size:70%;">1.45</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.9.9.2.m1.1"><semantics id="A4.T7.9.9.2.m1.1a"><mo id="A4.T7.9.9.2.m1.1.1" mathsize="70%" xref="A4.T7.9.9.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.9.9.2.m1.1b"><times id="A4.T7.9.9.2.m1.1.1.cmml" xref="A4.T7.9.9.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.9.9.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.9.9.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.11.11">
<td class="ltx_td ltx_align_center" id="A4.T7.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{1:7}" class="ltx_Math" display="inline" id="A4.T7.10.10.1.m1.1"><semantics id="A4.T7.10.10.1.m1.1a"><msub id="A4.T7.10.10.1.m1.1.1" xref="A4.T7.10.10.1.m1.1.1.cmml"><mtext id="A4.T7.10.10.1.m1.1.1.2" mathsize="70%" xref="A4.T7.10.10.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.10.10.1.m1.1.1.3" xref="A4.T7.10.10.1.m1.1.1.3.cmml"><mn id="A4.T7.10.10.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.10.10.1.m1.1.1.3.2.cmml">1</mn><mo id="A4.T7.10.10.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.10.10.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.10.10.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.10.10.1.m1.1.1.3.3.cmml">7</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.10.10.1.m1.1b"><apply id="A4.T7.10.10.1.m1.1.1.cmml" xref="A4.T7.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.10.10.1.m1.1.1.1.cmml" xref="A4.T7.10.10.1.m1.1.1">subscript</csymbol><ci id="A4.T7.10.10.1.m1.1.1.2a.cmml" xref="A4.T7.10.10.1.m1.1.1.2"><mtext id="A4.T7.10.10.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.10.10.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.10.10.1.m1.1.1.3.cmml" xref="A4.T7.10.10.1.m1.1.1.3"><ci id="A4.T7.10.10.1.m1.1.1.3.1.cmml" xref="A4.T7.10.10.1.m1.1.1.3.1">:</ci><cn id="A4.T7.10.10.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.10.10.1.m1.1.1.3.2">1</cn><cn id="A4.T7.10.10.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.10.10.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.10.10.1.m1.1c">\text{Base}_{1:7}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.10.10.1.m1.1d">Base start_POSTSUBSCRIPT 1 : 7 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.11.11.3.1" style="font-size:70%;">77.15%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.11.11.4.1" style="font-size:70%;">57.53%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.11.11.5.1" style="font-size:70%;">98.67%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.11.11.6.1" style="font-size:70%;">98.66%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.11.11.7.1" style="font-size:70%;">60.68%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.11.11.8.1" style="font-size:70%;">96.96%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.11.11.9.1" style="font-size:70%;">61.91%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.11.11.10.1" style="font-size:70%;">322.28</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.11.11.2.1" style="font-size:70%;">1.77</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.11.11.2.m1.1"><semantics id="A4.T7.11.11.2.m1.1a"><mo id="A4.T7.11.11.2.m1.1.1" mathsize="70%" xref="A4.T7.11.11.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.11.11.2.m1.1b"><times id="A4.T7.11.11.2.m1.1.1.cmml" xref="A4.T7.11.11.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.11.11.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.11.11.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.12.12.2.1" style="font-size:70%;">MLCD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.12.12.3.1" style="font-size:70%;">76.81%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T7.12.12.4.1" style="font-size:70%;">58.92</span><span class="ltx_text" id="A4.T7.12.12.4.2" style="font-size:70%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.12.12.5.1" style="font-size:70%;">99.41%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.12.12.6.1" style="font-size:70%;">99.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.12.12.7.1" style="font-size:70%;">63.37%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.12.12.8.1" style="font-size:70%;">98.37%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T7.12.12.9.1" style="font-size:70%;">65.55</span><span class="ltx_text" id="A4.T7.12.12.9.2" style="font-size:70%;">%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.12.12.10.1" style="font-size:70%;">190.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.12.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.12.12.1.1" style="font-size:70%;">5.00</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.12.12.1.m1.1"><semantics id="A4.T7.12.12.1.m1.1a"><mo id="A4.T7.12.12.1.m1.1.1" mathsize="70%" xref="A4.T7.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.12.12.1.m1.1b"><times id="A4.T7.12.12.1.m1.1.1.cmml" xref="A4.T7.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.12.12.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.14.14">
<td class="ltx_td ltx_align_center" id="A4.T7.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{4:4}" class="ltx_Math" display="inline" id="A4.T7.13.13.1.m1.1"><semantics id="A4.T7.13.13.1.m1.1a"><msub id="A4.T7.13.13.1.m1.1.1" xref="A4.T7.13.13.1.m1.1.1.cmml"><mtext id="A4.T7.13.13.1.m1.1.1.2" mathsize="70%" xref="A4.T7.13.13.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.13.13.1.m1.1.1.3" xref="A4.T7.13.13.1.m1.1.1.3.cmml"><mn id="A4.T7.13.13.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.13.13.1.m1.1.1.3.2.cmml">4</mn><mo id="A4.T7.13.13.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.13.13.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.13.13.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.13.13.1.m1.1.1.3.3.cmml">4</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.13.13.1.m1.1b"><apply id="A4.T7.13.13.1.m1.1.1.cmml" xref="A4.T7.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.13.13.1.m1.1.1.1.cmml" xref="A4.T7.13.13.1.m1.1.1">subscript</csymbol><ci id="A4.T7.13.13.1.m1.1.1.2a.cmml" xref="A4.T7.13.13.1.m1.1.1.2"><mtext id="A4.T7.13.13.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.13.13.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.13.13.1.m1.1.1.3.cmml" xref="A4.T7.13.13.1.m1.1.1.3"><ci id="A4.T7.13.13.1.m1.1.1.3.1.cmml" xref="A4.T7.13.13.1.m1.1.1.3.1">:</ci><cn id="A4.T7.13.13.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.13.13.1.m1.1.1.3.2">4</cn><cn id="A4.T7.13.13.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.13.13.1.m1.1.1.3.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.13.13.1.m1.1c">\text{MLCD}_{4:4}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.13.13.1.m1.1d">MLCD start_POSTSUBSCRIPT 4 : 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.14.14.3.1" style="font-size:70%;">75.90%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.14.14.4.1" style="font-size:70%;">57.84%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.14.14.5.1" style="font-size:70%;">99.38%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T7.14.14.6.1" style="font-size:70%;">99.50</span><span class="ltx_text" id="A4.T7.14.14.6.2" style="font-size:70%;">%</span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.14.14.7.1" style="font-size:70%;">63.03%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.14.14.8.1" style="font-size:70%;">98.21%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.14.14.9.1" style="font-size:70%;">58.47%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.14.14.10.1" style="font-size:70%;">175.47</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.14.14.2.1" style="font-size:70%;">5.80</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.14.14.2.m1.1"><semantics id="A4.T7.14.14.2.m1.1a"><mo id="A4.T7.14.14.2.m1.1.1" mathsize="70%" xref="A4.T7.14.14.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.14.14.2.m1.1b"><times id="A4.T7.14.14.2.m1.1.1.cmml" xref="A4.T7.14.14.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.14.14.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.14.14.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.16.16">
<td class="ltx_td ltx_align_center" id="A4.T7.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{3:5}" class="ltx_Math" display="inline" id="A4.T7.15.15.1.m1.1"><semantics id="A4.T7.15.15.1.m1.1a"><msub id="A4.T7.15.15.1.m1.1.1" xref="A4.T7.15.15.1.m1.1.1.cmml"><mtext id="A4.T7.15.15.1.m1.1.1.2" mathsize="70%" xref="A4.T7.15.15.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.15.15.1.m1.1.1.3" xref="A4.T7.15.15.1.m1.1.1.3.cmml"><mn id="A4.T7.15.15.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.15.15.1.m1.1.1.3.2.cmml">3</mn><mo id="A4.T7.15.15.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.15.15.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.15.15.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.15.15.1.m1.1.1.3.3.cmml">5</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.15.15.1.m1.1b"><apply id="A4.T7.15.15.1.m1.1.1.cmml" xref="A4.T7.15.15.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.15.15.1.m1.1.1.1.cmml" xref="A4.T7.15.15.1.m1.1.1">subscript</csymbol><ci id="A4.T7.15.15.1.m1.1.1.2a.cmml" xref="A4.T7.15.15.1.m1.1.1.2"><mtext id="A4.T7.15.15.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.15.15.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.15.15.1.m1.1.1.3.cmml" xref="A4.T7.15.15.1.m1.1.1.3"><ci id="A4.T7.15.15.1.m1.1.1.3.1.cmml" xref="A4.T7.15.15.1.m1.1.1.3.1">:</ci><cn id="A4.T7.15.15.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.15.15.1.m1.1.1.3.2">3</cn><cn id="A4.T7.15.15.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.15.15.1.m1.1.1.3.3">5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.15.15.1.m1.1c">\text{MLCD}_{3:5}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.15.15.1.m1.1d">MLCD start_POSTSUBSCRIPT 3 : 5 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.3.1" style="font-size:70%;">75.41%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.4.1" style="font-size:70%;">57.19%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.5.1" style="font-size:70%;">99.36%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.6.1" style="font-size:70%;">99.50%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.7.1" style="font-size:70%;">57.04%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.8.1" style="font-size:70%;">98.12%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.9.1" style="font-size:70%;">58.84%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.16.16.10.1" style="font-size:70%;">190.92</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.16.16.2.1" style="font-size:70%;">6.30</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.16.16.2.m1.1"><semantics id="A4.T7.16.16.2.m1.1a"><mo id="A4.T7.16.16.2.m1.1.1" mathsize="70%" xref="A4.T7.16.16.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.16.16.2.m1.1b"><times id="A4.T7.16.16.2.m1.1.1.cmml" xref="A4.T7.16.16.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.16.16.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.16.16.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.18.18">
<td class="ltx_td ltx_align_center" id="A4.T7.17.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{2:6}" class="ltx_Math" display="inline" id="A4.T7.17.17.1.m1.1"><semantics id="A4.T7.17.17.1.m1.1a"><msub id="A4.T7.17.17.1.m1.1.1" xref="A4.T7.17.17.1.m1.1.1.cmml"><mtext id="A4.T7.17.17.1.m1.1.1.2" mathsize="70%" xref="A4.T7.17.17.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.17.17.1.m1.1.1.3" xref="A4.T7.17.17.1.m1.1.1.3.cmml"><mn id="A4.T7.17.17.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.17.17.1.m1.1.1.3.2.cmml">2</mn><mo id="A4.T7.17.17.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.17.17.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.17.17.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.17.17.1.m1.1.1.3.3.cmml">6</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.17.17.1.m1.1b"><apply id="A4.T7.17.17.1.m1.1.1.cmml" xref="A4.T7.17.17.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.17.17.1.m1.1.1.1.cmml" xref="A4.T7.17.17.1.m1.1.1">subscript</csymbol><ci id="A4.T7.17.17.1.m1.1.1.2a.cmml" xref="A4.T7.17.17.1.m1.1.1.2"><mtext id="A4.T7.17.17.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.17.17.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.17.17.1.m1.1.1.3.cmml" xref="A4.T7.17.17.1.m1.1.1.3"><ci id="A4.T7.17.17.1.m1.1.1.3.1.cmml" xref="A4.T7.17.17.1.m1.1.1.3.1">:</ci><cn id="A4.T7.17.17.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.17.17.1.m1.1.1.3.2">2</cn><cn id="A4.T7.17.17.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.17.17.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.17.17.1.m1.1c">\text{MLCD}_{2:6}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.17.17.1.m1.1d">MLCD start_POSTSUBSCRIPT 2 : 6 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.3.1" style="font-size:70%;">75.23%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.4.1" style="font-size:70%;">57.45%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.5.1" style="font-size:70%;">99.29%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.6.1" style="font-size:70%;">99.48%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.7.1" style="font-size:70%;">54.59%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.8.1" style="font-size:70%;">98.37%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.9.1" style="font-size:70%;">57.35%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.18.18.10.1" style="font-size:70%;">213.72</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.18.18.2.1" style="font-size:70%;">7.25</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.18.18.2.m1.1"><semantics id="A4.T7.18.18.2.m1.1a"><mo id="A4.T7.18.18.2.m1.1.1" mathsize="70%" xref="A4.T7.18.18.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.18.18.2.m1.1b"><times id="A4.T7.18.18.2.m1.1.1.cmml" xref="A4.T7.18.18.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.18.18.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.18.18.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.20.20">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.19.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{1:7}" class="ltx_Math" display="inline" id="A4.T7.19.19.1.m1.1"><semantics id="A4.T7.19.19.1.m1.1a"><msub id="A4.T7.19.19.1.m1.1.1" xref="A4.T7.19.19.1.m1.1.1.cmml"><mtext id="A4.T7.19.19.1.m1.1.1.2" mathsize="70%" xref="A4.T7.19.19.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.19.19.1.m1.1.1.3" xref="A4.T7.19.19.1.m1.1.1.3.cmml"><mn id="A4.T7.19.19.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.19.19.1.m1.1.1.3.2.cmml">1</mn><mo id="A4.T7.19.19.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.19.19.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.19.19.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.19.19.1.m1.1.1.3.3.cmml">7</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.19.19.1.m1.1b"><apply id="A4.T7.19.19.1.m1.1.1.cmml" xref="A4.T7.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.19.19.1.m1.1.1.1.cmml" xref="A4.T7.19.19.1.m1.1.1">subscript</csymbol><ci id="A4.T7.19.19.1.m1.1.1.2a.cmml" xref="A4.T7.19.19.1.m1.1.1.2"><mtext id="A4.T7.19.19.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.19.19.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.19.19.1.m1.1.1.3.cmml" xref="A4.T7.19.19.1.m1.1.1.3"><ci id="A4.T7.19.19.1.m1.1.1.3.1.cmml" xref="A4.T7.19.19.1.m1.1.1.3.1">:</ci><cn id="A4.T7.19.19.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.19.19.1.m1.1.1.3.2">1</cn><cn id="A4.T7.19.19.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.19.19.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.19.19.1.m1.1c">\text{MLCD}_{1:7}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.19.19.1.m1.1d">MLCD start_POSTSUBSCRIPT 1 : 7 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.3.1" style="font-size:70%;">75.84%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.4.1" style="font-size:70%;">56.83%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.5.1" style="font-size:70%;">98.99%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.6.1" style="font-size:70%;">99.23%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.7.1" style="font-size:70%;">52.77%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.8.1" style="font-size:70%;">97.54%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.9.1" style="font-size:70%;">56.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.20.20.10.1" style="font-size:70%;">294.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.20.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.20.20.2.1" style="font-size:70%;">8.85<math alttext="\times" class="ltx_Math" display="inline" id="A4.T7.20.20.2.1.m1.1"><semantics id="A4.T7.20.20.2.1.m1.1a"><mo id="A4.T7.20.20.2.1.m1.1.1" xref="A4.T7.20.20.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T7.20.20.2.1.m1.1b"><times id="A4.T7.20.20.2.1.m1.1.1.cmml" xref="A4.T7.20.20.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.20.20.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T7.20.20.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of multi-step consistency distillation (MLCD) on video generation quality and efficiency. It compares the performance of the baseline model (Base) with the MLCD model and different sparsity levels (4:4, 3:5, 2:6, 1:7) applied to both the baseline and MLCD models.  The metrics used for comparison include various aspects of video generation quality assessed by VBench (Final Score, Aesthetic Quality, Motion Smoothness, Temporal Flickering, Object Class Consistency, Subject Consistency, and Imaging Quality), as well as CD-FVD, which measures the distance between generated and real video distributions.  The table also reports the kernel time and speedup achieved by each model.  This ablation study isolates the effect of MLCD and its interaction with sparsity to better understand how MLCD contributes to both speed and quality improvements.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation experiments on the effect of MLCD.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A4.T7.28">
<tr class="ltx_tr" id="A4.T7.28.9">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.1.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.2.1"></span><span class="ltx_text" id="A4.T7.28.9.2.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.2.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.2.3.1">
<span class="ltx_tr" id="A4.T7.28.9.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.2.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.2.3.1.1.1.1">Multiple</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.2.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.2.3.1.2.1.1">Objects</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.2.4"></span><span class="ltx_text" id="A4.T7.28.9.2.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.3.1"></span><span class="ltx_text" id="A4.T7.28.9.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.3.3.1">
<span class="ltx_tr" id="A4.T7.28.9.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.3.3.1.1.1.1">Human</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.3.3.1.2.1.1">Action</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.3.4"></span><span class="ltx_text" id="A4.T7.28.9.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.4.1" style="font-size:70%;">Color</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.5.1"></span><span class="ltx_text" id="A4.T7.28.9.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.5.3.1">
<span class="ltx_tr" id="A4.T7.28.9.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.5.3.1.1.1.1">Dynamic</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.5.3.1.2.1.1">Degree</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.5.4"></span><span class="ltx_text" id="A4.T7.28.9.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.6.1"></span><span class="ltx_text" id="A4.T7.28.9.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.6.3.1">
<span class="ltx_tr" id="A4.T7.28.9.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.6.3.1.1.1.1">Spatial</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.6.3.1.2.1.1">Relationship</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.6.4"></span><span class="ltx_text" id="A4.T7.28.9.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.7.1" style="font-size:70%;">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.8.1"></span><span class="ltx_text" id="A4.T7.28.9.8.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.8.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.8.3.1">
<span class="ltx_tr" id="A4.T7.28.9.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.8.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.8.3.1.1.1.1">Appearance</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.8.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.8.3.1.2.1.1">Style</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.8.4"></span><span class="ltx_text" id="A4.T7.28.9.8.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.9.1"></span><span class="ltx_text" id="A4.T7.28.9.9.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.9.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.9.3.1">
<span class="ltx_tr" id="A4.T7.28.9.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.9.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.9.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.9.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.9.3.1.2.1.1">Style</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.9.4"></span><span class="ltx_text" id="A4.T7.28.9.9.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.10.1"></span><span class="ltx_text" id="A4.T7.28.9.10.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.10.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.10.3.1">
<span class="ltx_tr" id="A4.T7.28.9.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.10.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.10.3.1.1.1.1">Overall</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.10.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.10.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.10.4"></span><span class="ltx_text" id="A4.T7.28.9.10.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.28.9.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T7.28.9.11.1"></span><span class="ltx_text" id="A4.T7.28.9.11.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T7.28.9.11.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T7.28.9.11.3.1">
<span class="ltx_tr" id="A4.T7.28.9.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.11.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.11.3.1.1.1.1">Background</span></span></span>
<span class="ltx_tr" id="A4.T7.28.9.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T7.28.9.11.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.9.11.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A4.T7.28.9.11.4"></span><span class="ltx_text" id="A4.T7.28.9.11.5" style="font-size:70%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.28.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.1.1" style="font-size:70%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.2.1" style="font-size:70%;">23.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.3.1" style="font-size:70%;">54.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.10.4.1" style="font-size:70%;">94.47%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.5.1" style="font-size:70%;">34.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.6.1" style="font-size:70%;">43.49%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.7.1" style="font-size:70%;">18.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.8.1" style="font-size:70%;">19.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.10.9.1" style="font-size:70%;">18.45%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.10.1" style="font-size:70%;">19.69%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.10.11.1" style="font-size:70%;">97.64%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.21.1">
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{4:4}" class="ltx_Math" display="inline" id="A4.T7.21.1.1.m1.1"><semantics id="A4.T7.21.1.1.m1.1a"><msub id="A4.T7.21.1.1.m1.1.1" xref="A4.T7.21.1.1.m1.1.1.cmml"><mtext id="A4.T7.21.1.1.m1.1.1.2" mathsize="70%" xref="A4.T7.21.1.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.21.1.1.m1.1.1.3" xref="A4.T7.21.1.1.m1.1.1.3.cmml"><mn id="A4.T7.21.1.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.21.1.1.m1.1.1.3.2.cmml">4</mn><mo id="A4.T7.21.1.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.21.1.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.21.1.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.21.1.1.m1.1.1.3.3.cmml">4</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.21.1.1.m1.1b"><apply id="A4.T7.21.1.1.m1.1.1.cmml" xref="A4.T7.21.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.21.1.1.m1.1.1.1.cmml" xref="A4.T7.21.1.1.m1.1.1">subscript</csymbol><ci id="A4.T7.21.1.1.m1.1.1.2a.cmml" xref="A4.T7.21.1.1.m1.1.1.2"><mtext id="A4.T7.21.1.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.21.1.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.21.1.1.m1.1.1.3.cmml" xref="A4.T7.21.1.1.m1.1.1.3"><ci id="A4.T7.21.1.1.m1.1.1.3.1.cmml" xref="A4.T7.21.1.1.m1.1.1.3.1">:</ci><cn id="A4.T7.21.1.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.21.1.1.m1.1.1.3.2">4</cn><cn id="A4.T7.21.1.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.21.1.1.m1.1.1.3.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.21.1.1.m1.1c">\text{Base}_{4:4}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.21.1.1.m1.1d">Base start_POSTSUBSCRIPT 4 : 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.21.1.2.1" style="font-size:70%;">32.01%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.3.1" style="font-size:70%;">55.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.4.1" style="font-size:70%;">90.94%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.5.1" style="font-size:70%;">43.06%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.21.1.6.1" style="font-size:70%;">45.42%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.7.1" style="font-size:70%;">17.30%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.8.1" style="font-size:70%;">20.21%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.9.1" style="font-size:70%;">18.41%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.10.1" style="font-size:70%;">19.48%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.21.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.21.1.11.1" style="font-size:70%;">97.17%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.22.2">
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{3:5}" class="ltx_Math" display="inline" id="A4.T7.22.2.1.m1.1"><semantics id="A4.T7.22.2.1.m1.1a"><msub id="A4.T7.22.2.1.m1.1.1" xref="A4.T7.22.2.1.m1.1.1.cmml"><mtext id="A4.T7.22.2.1.m1.1.1.2" mathsize="70%" xref="A4.T7.22.2.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.22.2.1.m1.1.1.3" xref="A4.T7.22.2.1.m1.1.1.3.cmml"><mn id="A4.T7.22.2.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.22.2.1.m1.1.1.3.2.cmml">3</mn><mo id="A4.T7.22.2.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.22.2.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.22.2.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.22.2.1.m1.1.1.3.3.cmml">5</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.22.2.1.m1.1b"><apply id="A4.T7.22.2.1.m1.1.1.cmml" xref="A4.T7.22.2.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.22.2.1.m1.1.1.1.cmml" xref="A4.T7.22.2.1.m1.1.1">subscript</csymbol><ci id="A4.T7.22.2.1.m1.1.1.2a.cmml" xref="A4.T7.22.2.1.m1.1.1.2"><mtext id="A4.T7.22.2.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.22.2.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.22.2.1.m1.1.1.3.cmml" xref="A4.T7.22.2.1.m1.1.1.3"><ci id="A4.T7.22.2.1.m1.1.1.3.1.cmml" xref="A4.T7.22.2.1.m1.1.1.3.1">:</ci><cn id="A4.T7.22.2.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.22.2.1.m1.1.1.3.2">3</cn><cn id="A4.T7.22.2.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.22.2.1.m1.1.1.3.3">5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.22.2.1.m1.1c">\text{Base}_{3:5}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.22.2.1.m1.1d">Base start_POSTSUBSCRIPT 3 : 5 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.2.1" style="font-size:70%;">15.85%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.4.1" style="font-size:70%;">88.88%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.5.1" style="font-size:70%;">58.33%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.6.1" style="font-size:70%;">44.38%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.7.1" style="font-size:70%;">14.53%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.8.1" style="font-size:70%;">20.13%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.9.1" style="font-size:70%;">17.46%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.10.1" style="font-size:70%;">18.43%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.22.2.11.1" style="font-size:70%;">97.28%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.23.3">
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{2:6}" class="ltx_Math" display="inline" id="A4.T7.23.3.1.m1.1"><semantics id="A4.T7.23.3.1.m1.1a"><msub id="A4.T7.23.3.1.m1.1.1" xref="A4.T7.23.3.1.m1.1.1.cmml"><mtext id="A4.T7.23.3.1.m1.1.1.2" mathsize="70%" xref="A4.T7.23.3.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.23.3.1.m1.1.1.3" xref="A4.T7.23.3.1.m1.1.1.3.cmml"><mn id="A4.T7.23.3.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.23.3.1.m1.1.1.3.2.cmml">2</mn><mo id="A4.T7.23.3.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.23.3.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.23.3.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.23.3.1.m1.1.1.3.3.cmml">6</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.23.3.1.m1.1b"><apply id="A4.T7.23.3.1.m1.1.1.cmml" xref="A4.T7.23.3.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.23.3.1.m1.1.1.1.cmml" xref="A4.T7.23.3.1.m1.1.1">subscript</csymbol><ci id="A4.T7.23.3.1.m1.1.1.2a.cmml" xref="A4.T7.23.3.1.m1.1.1.2"><mtext id="A4.T7.23.3.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.23.3.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.23.3.1.m1.1.1.3.cmml" xref="A4.T7.23.3.1.m1.1.1.3"><ci id="A4.T7.23.3.1.m1.1.1.3.1.cmml" xref="A4.T7.23.3.1.m1.1.1.3.1">:</ci><cn id="A4.T7.23.3.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.23.3.1.m1.1.1.3.2">2</cn><cn id="A4.T7.23.3.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.23.3.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.23.3.1.m1.1c">\text{Base}_{2:6}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.23.3.1.m1.1d">Base start_POSTSUBSCRIPT 2 : 6 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.2.1" style="font-size:70%;">21.65%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.3.1" style="font-size:70%;">56.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.4.1" style="font-size:70%;">93.27%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.5.1" style="font-size:70%;">56.94%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.6.1" style="font-size:70%;">49.90%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.7.1" style="font-size:70%;">18.31%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.8.1" style="font-size:70%;">19.87%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.9.1" style="font-size:70%;">18.23%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.10.1" style="font-size:70%;">18.94%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.23.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.23.3.11.1" style="font-size:70%;">97.27%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.24.4">
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Base}_{1:7}" class="ltx_Math" display="inline" id="A4.T7.24.4.1.m1.1"><semantics id="A4.T7.24.4.1.m1.1a"><msub id="A4.T7.24.4.1.m1.1.1" xref="A4.T7.24.4.1.m1.1.1.cmml"><mtext id="A4.T7.24.4.1.m1.1.1.2" mathsize="70%" xref="A4.T7.24.4.1.m1.1.1.2a.cmml">Base</mtext><mrow id="A4.T7.24.4.1.m1.1.1.3" xref="A4.T7.24.4.1.m1.1.1.3.cmml"><mn id="A4.T7.24.4.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.24.4.1.m1.1.1.3.2.cmml">1</mn><mo id="A4.T7.24.4.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.24.4.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.24.4.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.24.4.1.m1.1.1.3.3.cmml">7</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.24.4.1.m1.1b"><apply id="A4.T7.24.4.1.m1.1.1.cmml" xref="A4.T7.24.4.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.24.4.1.m1.1.1.1.cmml" xref="A4.T7.24.4.1.m1.1.1">subscript</csymbol><ci id="A4.T7.24.4.1.m1.1.1.2a.cmml" xref="A4.T7.24.4.1.m1.1.1.2"><mtext id="A4.T7.24.4.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.24.4.1.m1.1.1.2">Base</mtext></ci><apply id="A4.T7.24.4.1.m1.1.1.3.cmml" xref="A4.T7.24.4.1.m1.1.1.3"><ci id="A4.T7.24.4.1.m1.1.1.3.1.cmml" xref="A4.T7.24.4.1.m1.1.1.3.1">:</ci><cn id="A4.T7.24.4.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.24.4.1.m1.1.1.3.2">1</cn><cn id="A4.T7.24.4.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.24.4.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.24.4.1.m1.1c">\text{Base}_{1:7}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.24.4.1.m1.1d">Base start_POSTSUBSCRIPT 1 : 7 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.2.1" style="font-size:70%;">17.76%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.3.1" style="font-size:70%;">54.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.4.1" style="font-size:70%;">93.02%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.5.1" style="font-size:70%;">75.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.6.1" style="font-size:70%;">44.75%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.7.1" style="font-size:70%;">19.99%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.8.1" style="font-size:70%;">19.95%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.9.1" style="font-size:70%;">18.25%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.10.1" style="font-size:70%;">19.41%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.24.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.24.4.11.1" style="font-size:70%;">97.30%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.28.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.11.1.1" style="font-size:70%;">MLCD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.11.2.1" style="font-size:70%;">19.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.11.3.1" style="font-size:70%;">56.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.11.4.1" style="font-size:70%;">94.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.11.5.1" style="font-size:70%;">41.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.11.6.1" style="font-size:70%;">40.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.11.7.1" style="font-size:70%;">22.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.11.8.1" style="font-size:70%;">20.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.11.9.1" style="font-size:70%;">18.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.11.10.1" style="font-size:70%;">19.77%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.28.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.28.11.11.1" style="font-size:70%;">97.98%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.25.5">
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{4:4}" class="ltx_Math" display="inline" id="A4.T7.25.5.1.m1.1"><semantics id="A4.T7.25.5.1.m1.1a"><msub id="A4.T7.25.5.1.m1.1.1" xref="A4.T7.25.5.1.m1.1.1.cmml"><mtext id="A4.T7.25.5.1.m1.1.1.2" mathsize="70%" xref="A4.T7.25.5.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.25.5.1.m1.1.1.3" xref="A4.T7.25.5.1.m1.1.1.3.cmml"><mn id="A4.T7.25.5.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.25.5.1.m1.1.1.3.2.cmml">4</mn><mo id="A4.T7.25.5.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.25.5.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.25.5.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.25.5.1.m1.1.1.3.3.cmml">4</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.25.5.1.m1.1b"><apply id="A4.T7.25.5.1.m1.1.1.cmml" xref="A4.T7.25.5.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.25.5.1.m1.1.1.1.cmml" xref="A4.T7.25.5.1.m1.1.1">subscript</csymbol><ci id="A4.T7.25.5.1.m1.1.1.2a.cmml" xref="A4.T7.25.5.1.m1.1.1.2"><mtext id="A4.T7.25.5.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.25.5.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.25.5.1.m1.1.1.3.cmml" xref="A4.T7.25.5.1.m1.1.1.3"><ci id="A4.T7.25.5.1.m1.1.1.3.1.cmml" xref="A4.T7.25.5.1.m1.1.1.3.1">:</ci><cn id="A4.T7.25.5.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.25.5.1.m1.1.1.3.2">4</cn><cn id="A4.T7.25.5.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.25.5.1.m1.1.1.3.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.25.5.1.m1.1c">\text{MLCD}_{4:4}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.25.5.1.m1.1d">MLCD start_POSTSUBSCRIPT 4 : 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.2.1" style="font-size:70%;">22.79%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.4.1" style="font-size:70%;">92.69%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.5.1" style="font-size:70%;">50.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.6.1" style="font-size:70%;">39.80%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.7.1" style="font-size:70%;">17.51%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.8.1" style="font-size:70%;">19.89%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.9.1" style="font-size:70%;">18.32%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.10.1" style="font-size:70%;">19.06%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.25.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.25.5.11.1" style="font-size:70%;">97.30%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.26.6">
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{3:5}" class="ltx_Math" display="inline" id="A4.T7.26.6.1.m1.1"><semantics id="A4.T7.26.6.1.m1.1a"><msub id="A4.T7.26.6.1.m1.1.1" xref="A4.T7.26.6.1.m1.1.1.cmml"><mtext id="A4.T7.26.6.1.m1.1.1.2" mathsize="70%" xref="A4.T7.26.6.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.26.6.1.m1.1.1.3" xref="A4.T7.26.6.1.m1.1.1.3.cmml"><mn id="A4.T7.26.6.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.26.6.1.m1.1.1.3.2.cmml">3</mn><mo id="A4.T7.26.6.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.26.6.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.26.6.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.26.6.1.m1.1.1.3.3.cmml">5</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.26.6.1.m1.1b"><apply id="A4.T7.26.6.1.m1.1.1.cmml" xref="A4.T7.26.6.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.26.6.1.m1.1.1.1.cmml" xref="A4.T7.26.6.1.m1.1.1">subscript</csymbol><ci id="A4.T7.26.6.1.m1.1.1.2a.cmml" xref="A4.T7.26.6.1.m1.1.1.2"><mtext id="A4.T7.26.6.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.26.6.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.26.6.1.m1.1.1.3.cmml" xref="A4.T7.26.6.1.m1.1.1.3"><ci id="A4.T7.26.6.1.m1.1.1.3.1.cmml" xref="A4.T7.26.6.1.m1.1.1.3.1">:</ci><cn id="A4.T7.26.6.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.26.6.1.m1.1.1.3.2">3</cn><cn id="A4.T7.26.6.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.26.6.1.m1.1.1.3.3">5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.26.6.1.m1.1c">\text{MLCD}_{3:5}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.26.6.1.m1.1d">MLCD start_POSTSUBSCRIPT 3 : 5 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.2.1" style="font-size:70%;">22.10%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.3.1" style="font-size:70%;">50.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.4.1" style="font-size:70%;">90.82%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.5.1" style="font-size:70%;">43.06%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.6.1" style="font-size:70%;">43.48%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.7.1" style="font-size:70%;">21.44%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.8.1" style="font-size:70%;">19.97%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.9.1" style="font-size:70%;">17.68%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.10.1" style="font-size:70%;">19.75%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.26.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.26.6.11.1" style="font-size:70%;">97.47%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.27.7">
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{2:6}" class="ltx_Math" display="inline" id="A4.T7.27.7.1.m1.1"><semantics id="A4.T7.27.7.1.m1.1a"><msub id="A4.T7.27.7.1.m1.1.1" xref="A4.T7.27.7.1.m1.1.1.cmml"><mtext id="A4.T7.27.7.1.m1.1.1.2" mathsize="70%" xref="A4.T7.27.7.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.27.7.1.m1.1.1.3" xref="A4.T7.27.7.1.m1.1.1.3.cmml"><mn id="A4.T7.27.7.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.27.7.1.m1.1.1.3.2.cmml">2</mn><mo id="A4.T7.27.7.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.27.7.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.27.7.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.27.7.1.m1.1.1.3.3.cmml">6</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.27.7.1.m1.1b"><apply id="A4.T7.27.7.1.m1.1.1.cmml" xref="A4.T7.27.7.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.27.7.1.m1.1.1.1.cmml" xref="A4.T7.27.7.1.m1.1.1">subscript</csymbol><ci id="A4.T7.27.7.1.m1.1.1.2a.cmml" xref="A4.T7.27.7.1.m1.1.1.2"><mtext id="A4.T7.27.7.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.27.7.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.27.7.1.m1.1.1.3.cmml" xref="A4.T7.27.7.1.m1.1.1.3"><ci id="A4.T7.27.7.1.m1.1.1.3.1.cmml" xref="A4.T7.27.7.1.m1.1.1.3.1">:</ci><cn id="A4.T7.27.7.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.27.7.1.m1.1.1.3.2">2</cn><cn id="A4.T7.27.7.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.27.7.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.27.7.1.m1.1c">\text{MLCD}_{2:6}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.27.7.1.m1.1d">MLCD start_POSTSUBSCRIPT 2 : 6 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.2.1" style="font-size:70%;">18.60%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.4.1" style="font-size:70%;">92.52%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.5.1" style="font-size:70%;">44.44%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.6.1" style="font-size:70%;">43.36%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.7.1" style="font-size:70%;">16.21%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.8.1" style="font-size:70%;">19.89%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.9.1" style="font-size:70%;">17.84%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.10.1" style="font-size:70%;">20.12%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.27.7.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.27.7.11.1" style="font-size:70%;">97.70%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.28.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{1:7}" class="ltx_Math" display="inline" id="A4.T7.28.8.1.m1.1"><semantics id="A4.T7.28.8.1.m1.1a"><msub id="A4.T7.28.8.1.m1.1.1" xref="A4.T7.28.8.1.m1.1.1.cmml"><mtext id="A4.T7.28.8.1.m1.1.1.2" mathsize="70%" xref="A4.T7.28.8.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T7.28.8.1.m1.1.1.3" xref="A4.T7.28.8.1.m1.1.1.3.cmml"><mn id="A4.T7.28.8.1.m1.1.1.3.2" mathsize="70%" xref="A4.T7.28.8.1.m1.1.1.3.2.cmml">1</mn><mo id="A4.T7.28.8.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T7.28.8.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T7.28.8.1.m1.1.1.3.3" mathsize="70%" xref="A4.T7.28.8.1.m1.1.1.3.3.cmml">7</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T7.28.8.1.m1.1b"><apply id="A4.T7.28.8.1.m1.1.1.cmml" xref="A4.T7.28.8.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.28.8.1.m1.1.1.1.cmml" xref="A4.T7.28.8.1.m1.1.1">subscript</csymbol><ci id="A4.T7.28.8.1.m1.1.1.2a.cmml" xref="A4.T7.28.8.1.m1.1.1.2"><mtext id="A4.T7.28.8.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T7.28.8.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T7.28.8.1.m1.1.1.3.cmml" xref="A4.T7.28.8.1.m1.1.1.3"><ci id="A4.T7.28.8.1.m1.1.1.3.1.cmml" xref="A4.T7.28.8.1.m1.1.1.3.1">:</ci><cn id="A4.T7.28.8.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T7.28.8.1.m1.1.1.3.2">1</cn><cn id="A4.T7.28.8.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T7.28.8.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.28.8.1.m1.1c">\text{MLCD}_{1:7}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.28.8.1.m1.1d">MLCD start_POSTSUBSCRIPT 1 : 7 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.2.1" style="font-size:70%;">16.92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.4.1" style="font-size:70%;">91.92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.5.1" style="font-size:70%;">63.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.6.1" style="font-size:70%;">43.27%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.7.1" style="font-size:70%;">17.22%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.8.1" style="font-size:70%;">19.94%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.9.1" style="font-size:70%;">18.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.10.1" style="font-size:70%;">19.85%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.28.8.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T7.28.8.11.1" style="font-size:70%;">97.45%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation experiments conducted to evaluate the effectiveness of the proposed layerwise search algorithm for sparse attention masks.  It compares the performance of different models: the baseline model using multi-step consistency distillation (MLCD) and variations of the model incorporating different sparsity levels of attention masks. The results are presented in terms of VBench scores (which measure video generation quality across various dimensions), CD-FVD (Content-Debiased Fréchet Video Distance, assessing the distribution difference between generated and real videos), and the speedup achieved over the base MLCD model.  The comparison helps to understand the trade-off between model speed and video generation quality at various sparsity levels.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation experiments on the effect of our layerwise searching algorithm.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A4.T8.21">
<tr class="ltx_tr" id="A4.T8.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.1.1.1.1"></span><span class="ltx_text" id="A4.T8.1.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.1.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.1.1.1.3.1">
<span class="ltx_tr" id="A4.T8.1.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.3.1.1.1.1">Final</span></span></span>
<span class="ltx_tr" id="A4.T8.1.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.1.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.3.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.1.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.1.1.1.5"></span><span class="ltx_text" id="A4.T8.1.1.1.6" style="font-size:70%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T8.1.1.1.m1.1"><semantics id="A4.T8.1.1.1.m1.1a"><mo id="A4.T8.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="A4.T8.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T8.1.1.1.m1.1b"><ci id="A4.T8.1.1.1.m1.1.1.cmml" xref="A4.T8.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T8.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.2.2.4.1"></span><span class="ltx_text" id="A4.T8.2.2.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.2.2.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.2.2.4.3.1">
<span class="ltx_tr" id="A4.T8.2.2.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.4.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.4.3.1.1.1.1">Aesthetic</span></span></span>
<span class="ltx_tr" id="A4.T8.2.2.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.4.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.4.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.2.2.4.4"></span><span class="ltx_text" id="A4.T8.2.2.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.2.2.5.1"></span><span class="ltx_text" id="A4.T8.2.2.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.2.2.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.2.2.5.3.1">
<span class="ltx_tr" id="A4.T8.2.2.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.5.3.1.1.1.1">Motion</span></span></span>
<span class="ltx_tr" id="A4.T8.2.2.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.5.3.1.2.1.1">Smoothness</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.2.2.5.4"></span><span class="ltx_text" id="A4.T8.2.2.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.2.2.6.1"></span><span class="ltx_text" id="A4.T8.2.2.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.2.2.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.2.2.6.3.1">
<span class="ltx_tr" id="A4.T8.2.2.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.6.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="A4.T8.2.2.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.6.3.1.2.1.1">Flickering</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.2.2.6.4"></span><span class="ltx_text" id="A4.T8.2.2.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.2.2.7.1"></span><span class="ltx_text" id="A4.T8.2.2.7.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.2.2.7.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.2.2.7.3.1">
<span class="ltx_tr" id="A4.T8.2.2.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.7.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.7.3.1.1.1.1">Object</span></span></span>
<span class="ltx_tr" id="A4.T8.2.2.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.7.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.7.3.1.2.1.1">Class</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.2.2.7.4"></span><span class="ltx_text" id="A4.T8.2.2.7.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.2.2.8.1"></span><span class="ltx_text" id="A4.T8.2.2.8.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.2.2.8.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.2.2.8.3.1">
<span class="ltx_tr" id="A4.T8.2.2.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.8.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.8.3.1.1.1.1">Subject</span></span></span>
<span class="ltx_tr" id="A4.T8.2.2.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.8.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.8.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.2.2.8.4"></span><span class="ltx_text" id="A4.T8.2.2.8.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.2.2.9.1"></span><span class="ltx_text" id="A4.T8.2.2.9.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.2.2.9.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.2.2.9.3.1">
<span class="ltx_tr" id="A4.T8.2.2.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.9.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.3.1.1.1.1">Imaging</span></span></span>
<span class="ltx_tr" id="A4.T8.2.2.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.2.2.9.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.2.2.9.4"></span><span class="ltx_text" id="A4.T8.2.2.9.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T8.2.2.2.1" style="font-size:70%;">CD-FVD</span><span class="ltx_text" id="A4.T8.2.2.2.2" style="font-size:70%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T8.2.2.2.m1.1"><semantics id="A4.T8.2.2.2.m1.1a"><mo id="A4.T8.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="A4.T8.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T8.2.2.2.m1.1b"><ci id="A4.T8.2.2.2.m1.1.1.cmml" xref="A4.T8.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T8.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.10.1" style="font-size:70%;">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.3.3.2.1" style="font-size:70%;">MLCD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.3.3.3.1" style="font-size:70%;">76.81%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.3.3.4.1" style="font-size:70%;">58.92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.3.3.5.1" style="font-size:70%;">99.41%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.3.3.6.1" style="font-size:70%;">99.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.3.3.7.1" style="font-size:70%;">63.37%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.3.3.8.1" style="font-size:70%;">98.37%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.3.3.9.1" style="font-size:70%;">65.55%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.3.3.10.1" style="font-size:70%;">190.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.3.3.1.1" style="font-size:70%;">5.00</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.3.3.1.m1.1"><semantics id="A4.T8.3.3.1.m1.1a"><mo id="A4.T8.3.3.1.m1.1.1" mathsize="70%" xref="A4.T8.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.3.3.1.m1.1b"><times id="A4.T8.3.3.1.m1.1.1.cmml" xref="A4.T8.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.5.5">
<td class="ltx_td ltx_align_center" id="A4.T8.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{4:4}" class="ltx_Math" display="inline" id="A4.T8.4.4.1.m1.1"><semantics id="A4.T8.4.4.1.m1.1a"><msub id="A4.T8.4.4.1.m1.1.1" xref="A4.T8.4.4.1.m1.1.1.cmml"><mtext id="A4.T8.4.4.1.m1.1.1.2" mathsize="70%" xref="A4.T8.4.4.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.4.4.1.m1.1.1.3" xref="A4.T8.4.4.1.m1.1.1.3.cmml"><mn id="A4.T8.4.4.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.4.4.1.m1.1.1.3.2.cmml">4</mn><mo id="A4.T8.4.4.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.4.4.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.4.4.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.4.4.1.m1.1.1.3.3.cmml">4</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.4.4.1.m1.1b"><apply id="A4.T8.4.4.1.m1.1.1.cmml" xref="A4.T8.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.4.4.1.m1.1.1.1.cmml" xref="A4.T8.4.4.1.m1.1.1">subscript</csymbol><ci id="A4.T8.4.4.1.m1.1.1.2a.cmml" xref="A4.T8.4.4.1.m1.1.1.2"><mtext id="A4.T8.4.4.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.4.4.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.4.4.1.m1.1.1.3.cmml" xref="A4.T8.4.4.1.m1.1.1.3"><ci id="A4.T8.4.4.1.m1.1.1.3.1.cmml" xref="A4.T8.4.4.1.m1.1.1.3.1">:</ci><cn id="A4.T8.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.4.4.1.m1.1.1.3.2">4</cn><cn id="A4.T8.4.4.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.4.4.1.m1.1.1.3.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.4.4.1.m1.1c">\text{MLCD}_{4:4}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.4.4.1.m1.1d">MLCD start_POSTSUBSCRIPT 4 : 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.5.5.3.1" style="font-size:70%;">75.90%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.5.5.4.1" style="font-size:70%;">57.84%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.5.5.5.1" style="font-size:70%;">99.38%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.5.5.6.1" style="font-size:70%;">99.50%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.5.5.7.1" style="font-size:70%;">63.03%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.5.5.8.1" style="font-size:70%;">98.21%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.5.5.9.1" style="font-size:70%;">58.47%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.5.5.10.1" style="font-size:70%;">175.47</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.5.5.2.1" style="font-size:70%;">5.80</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.5.5.2.m1.1"><semantics id="A4.T8.5.5.2.m1.1a"><mo id="A4.T8.5.5.2.m1.1.1" mathsize="70%" xref="A4.T8.5.5.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.5.5.2.m1.1b"><times id="A4.T8.5.5.2.m1.1.1.cmml" xref="A4.T8.5.5.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.5.5.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.5.5.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.7.7">
<td class="ltx_td ltx_align_center" id="A4.T8.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{3:5}" class="ltx_Math" display="inline" id="A4.T8.6.6.1.m1.1"><semantics id="A4.T8.6.6.1.m1.1a"><msub id="A4.T8.6.6.1.m1.1.1" xref="A4.T8.6.6.1.m1.1.1.cmml"><mtext id="A4.T8.6.6.1.m1.1.1.2" mathsize="70%" xref="A4.T8.6.6.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.6.6.1.m1.1.1.3" xref="A4.T8.6.6.1.m1.1.1.3.cmml"><mn id="A4.T8.6.6.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.6.6.1.m1.1.1.3.2.cmml">3</mn><mo id="A4.T8.6.6.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.6.6.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.6.6.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.6.6.1.m1.1.1.3.3.cmml">5</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.6.6.1.m1.1b"><apply id="A4.T8.6.6.1.m1.1.1.cmml" xref="A4.T8.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.6.6.1.m1.1.1.1.cmml" xref="A4.T8.6.6.1.m1.1.1">subscript</csymbol><ci id="A4.T8.6.6.1.m1.1.1.2a.cmml" xref="A4.T8.6.6.1.m1.1.1.2"><mtext id="A4.T8.6.6.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.6.6.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.6.6.1.m1.1.1.3.cmml" xref="A4.T8.6.6.1.m1.1.1.3"><ci id="A4.T8.6.6.1.m1.1.1.3.1.cmml" xref="A4.T8.6.6.1.m1.1.1.3.1">:</ci><cn id="A4.T8.6.6.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.6.6.1.m1.1.1.3.2">3</cn><cn id="A4.T8.6.6.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.6.6.1.m1.1.1.3.3">5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.6.6.1.m1.1c">\text{MLCD}_{3:5}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.6.6.1.m1.1d">MLCD start_POSTSUBSCRIPT 3 : 5 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.3.1" style="font-size:70%;">75.41%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.4.1" style="font-size:70%;">57.19%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.5.1" style="font-size:70%;">99.36%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.6.1" style="font-size:70%;">99.50%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.7.1" style="font-size:70%;">57.04%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.8.1" style="font-size:70%;">98.12%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.9.1" style="font-size:70%;">58.84%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.7.7.10.1" style="font-size:70%;">190.91</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.7.7.2.1" style="font-size:70%;">6.30</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.7.7.2.m1.1"><semantics id="A4.T8.7.7.2.m1.1a"><mo id="A4.T8.7.7.2.m1.1.1" mathsize="70%" xref="A4.T8.7.7.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.7.7.2.m1.1b"><times id="A4.T8.7.7.2.m1.1.1.cmml" xref="A4.T8.7.7.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.7.7.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.7.7.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.9.9">
<td class="ltx_td ltx_align_center" id="A4.T8.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{2:6}" class="ltx_Math" display="inline" id="A4.T8.8.8.1.m1.1"><semantics id="A4.T8.8.8.1.m1.1a"><msub id="A4.T8.8.8.1.m1.1.1" xref="A4.T8.8.8.1.m1.1.1.cmml"><mtext id="A4.T8.8.8.1.m1.1.1.2" mathsize="70%" xref="A4.T8.8.8.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.8.8.1.m1.1.1.3" xref="A4.T8.8.8.1.m1.1.1.3.cmml"><mn id="A4.T8.8.8.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.8.8.1.m1.1.1.3.2.cmml">2</mn><mo id="A4.T8.8.8.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.8.8.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.8.8.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.8.8.1.m1.1.1.3.3.cmml">6</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.8.8.1.m1.1b"><apply id="A4.T8.8.8.1.m1.1.1.cmml" xref="A4.T8.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.8.8.1.m1.1.1.1.cmml" xref="A4.T8.8.8.1.m1.1.1">subscript</csymbol><ci id="A4.T8.8.8.1.m1.1.1.2a.cmml" xref="A4.T8.8.8.1.m1.1.1.2"><mtext id="A4.T8.8.8.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.8.8.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.8.8.1.m1.1.1.3.cmml" xref="A4.T8.8.8.1.m1.1.1.3"><ci id="A4.T8.8.8.1.m1.1.1.3.1.cmml" xref="A4.T8.8.8.1.m1.1.1.3.1">:</ci><cn id="A4.T8.8.8.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.8.8.1.m1.1.1.3.2">2</cn><cn id="A4.T8.8.8.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.8.8.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.8.8.1.m1.1c">\text{MLCD}_{2:6}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.8.8.1.m1.1d">MLCD start_POSTSUBSCRIPT 2 : 6 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.3.1" style="font-size:70%;">75.23%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.4.1" style="font-size:70%;">57.45%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.5.1" style="font-size:70%;">99.29%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.6.1" style="font-size:70%;">99.48%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.7.1" style="font-size:70%;">54.59%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.8.1" style="font-size:70%;">98.37%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.9.1" style="font-size:70%;">57.35%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.9.9.10.1" style="font-size:70%;">213.71</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.9.9.2.1" style="font-size:70%;">7.25</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.9.9.2.m1.1"><semantics id="A4.T8.9.9.2.m1.1a"><mo id="A4.T8.9.9.2.m1.1.1" mathsize="70%" xref="A4.T8.9.9.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.9.9.2.m1.1b"><times id="A4.T8.9.9.2.m1.1.1.cmml" xref="A4.T8.9.9.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.9.9.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.9.9.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.11.11">
<td class="ltx_td ltx_align_center" id="A4.T8.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{1:7}" class="ltx_Math" display="inline" id="A4.T8.10.10.1.m1.1"><semantics id="A4.T8.10.10.1.m1.1a"><msub id="A4.T8.10.10.1.m1.1.1" xref="A4.T8.10.10.1.m1.1.1.cmml"><mtext id="A4.T8.10.10.1.m1.1.1.2" mathsize="70%" xref="A4.T8.10.10.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.10.10.1.m1.1.1.3" xref="A4.T8.10.10.1.m1.1.1.3.cmml"><mn id="A4.T8.10.10.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.10.10.1.m1.1.1.3.2.cmml">1</mn><mo id="A4.T8.10.10.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.10.10.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.10.10.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.10.10.1.m1.1.1.3.3.cmml">7</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.10.10.1.m1.1b"><apply id="A4.T8.10.10.1.m1.1.1.cmml" xref="A4.T8.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.10.10.1.m1.1.1.1.cmml" xref="A4.T8.10.10.1.m1.1.1">subscript</csymbol><ci id="A4.T8.10.10.1.m1.1.1.2a.cmml" xref="A4.T8.10.10.1.m1.1.1.2"><mtext id="A4.T8.10.10.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.10.10.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.10.10.1.m1.1.1.3.cmml" xref="A4.T8.10.10.1.m1.1.1.3"><ci id="A4.T8.10.10.1.m1.1.1.3.1.cmml" xref="A4.T8.10.10.1.m1.1.1.3.1">:</ci><cn id="A4.T8.10.10.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.10.10.1.m1.1.1.3.2">1</cn><cn id="A4.T8.10.10.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.10.10.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.10.10.1.m1.1c">\text{MLCD}_{1:7}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.10.10.1.m1.1d">MLCD start_POSTSUBSCRIPT 1 : 7 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.3.1" style="font-size:70%;">75.84%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.4.1" style="font-size:70%;">56.83%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.5.1" style="font-size:70%;">98.99%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.6.1" style="font-size:70%;">99.23%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.7.1" style="font-size:70%;">52.77%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.8.1" style="font-size:70%;">97.54%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.9.1" style="font-size:70%;">56.42%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.11.11.10.1" style="font-size:70%;">294.09</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.11.11.2.1" style="font-size:70%;">8.85<math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.11.11.2.1.m1.1"><semantics id="A4.T8.11.11.2.1.m1.1a"><mo id="A4.T8.11.11.2.1.m1.1.1" xref="A4.T8.11.11.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.11.11.2.1.m1.1b"><times id="A4.T8.11.11.2.1.m1.1.1.cmml" xref="A4.T8.11.11.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.11.11.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.11.11.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.13.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.12.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.025}}" class="ltx_Math" display="inline" id="A4.T8.12.12.1.m1.1"><semantics id="A4.T8.12.12.1.m1.1a"><msub id="A4.T8.12.12.1.m1.1.1" xref="A4.T8.12.12.1.m1.1.1.cmml"><mtext id="A4.T8.12.12.1.m1.1.1.2" mathsize="70%" xref="A4.T8.12.12.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.12.12.1.m1.1.1.3" xref="A4.T8.12.12.1.m1.1.1.3.cmml"><mi id="A4.T8.12.12.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.12.12.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.12.12.1.m1.1.1.3.1" xref="A4.T8.12.12.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.12.12.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.12.12.1.m1.1.1.3.3a.cmml">=0.025</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.12.12.1.m1.1b"><apply id="A4.T8.12.12.1.m1.1.1.cmml" xref="A4.T8.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.12.12.1.m1.1.1.1.cmml" xref="A4.T8.12.12.1.m1.1.1">subscript</csymbol><ci id="A4.T8.12.12.1.m1.1.1.2a.cmml" xref="A4.T8.12.12.1.m1.1.1.2"><mtext id="A4.T8.12.12.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.12.12.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.12.12.1.m1.1.1.3.cmml" xref="A4.T8.12.12.1.m1.1.1.3"><times id="A4.T8.12.12.1.m1.1.1.3.1.cmml" xref="A4.T8.12.12.1.m1.1.1.3.1"></times><ci id="A4.T8.12.12.1.m1.1.1.3.2.cmml" xref="A4.T8.12.12.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.12.12.1.m1.1.1.3.3a.cmml" xref="A4.T8.12.12.1.m1.1.1.3.3"><mtext id="A4.T8.12.12.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.12.12.1.m1.1.1.3.3">=0.025</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.12.12.1.m1.1c">\text{Ours}_{r\text{=0.025}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.12.12.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.025 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.3.1" style="font-size:70%;">76.14%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.4.1" style="font-size:70%;">57.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.5.1" style="font-size:70%;">99.37%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.6.1" style="font-size:70%;">99.49%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.7.1" style="font-size:70%;">60.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.8.1" style="font-size:70%;">98.26%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.9.1" style="font-size:70%;">58.90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.13.13.10.1" style="font-size:70%;">186.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.13.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.13.13.2.1" style="font-size:70%;">5.85</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.13.13.2.m1.1"><semantics id="A4.T8.13.13.2.m1.1a"><mo id="A4.T8.13.13.2.m1.1.1" mathsize="70%" xref="A4.T8.13.13.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.13.13.2.m1.1b"><times id="A4.T8.13.13.2.m1.1.1.cmml" xref="A4.T8.13.13.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.13.13.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.13.13.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.15.15">
<td class="ltx_td ltx_align_center" id="A4.T8.14.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.050}}" class="ltx_Math" display="inline" id="A4.T8.14.14.1.m1.1"><semantics id="A4.T8.14.14.1.m1.1a"><msub id="A4.T8.14.14.1.m1.1.1" xref="A4.T8.14.14.1.m1.1.1.cmml"><mtext id="A4.T8.14.14.1.m1.1.1.2" mathsize="70%" xref="A4.T8.14.14.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.14.14.1.m1.1.1.3" xref="A4.T8.14.14.1.m1.1.1.3.cmml"><mi id="A4.T8.14.14.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.14.14.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.14.14.1.m1.1.1.3.1" xref="A4.T8.14.14.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.14.14.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.14.14.1.m1.1.1.3.3a.cmml">=0.050</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.14.14.1.m1.1b"><apply id="A4.T8.14.14.1.m1.1.1.cmml" xref="A4.T8.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.14.14.1.m1.1.1.1.cmml" xref="A4.T8.14.14.1.m1.1.1">subscript</csymbol><ci id="A4.T8.14.14.1.m1.1.1.2a.cmml" xref="A4.T8.14.14.1.m1.1.1.2"><mtext id="A4.T8.14.14.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.14.14.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.14.14.1.m1.1.1.3.cmml" xref="A4.T8.14.14.1.m1.1.1.3"><times id="A4.T8.14.14.1.m1.1.1.3.1.cmml" xref="A4.T8.14.14.1.m1.1.1.3.1"></times><ci id="A4.T8.14.14.1.m1.1.1.3.2.cmml" xref="A4.T8.14.14.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.14.14.1.m1.1.1.3.3a.cmml" xref="A4.T8.14.14.1.m1.1.1.3.3"><mtext id="A4.T8.14.14.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.14.14.1.m1.1.1.3.3">=0.050</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.14.14.1.m1.1c">\text{Ours}_{r\text{=0.050}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.14.14.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.050 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.15.15.3.1" style="font-size:70%;">76.01%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.15.15.4.1" style="font-size:70%;">57.57%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.15.15.5.1" style="font-size:70%;">99.15%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.15.15.6.1" style="font-size:70%;">99.56%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.15.15.7.1" style="font-size:70%;">58.70%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.15.15.8.1" style="font-size:70%;">97.58%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.15.15.9.1" style="font-size:70%;">56.86%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.15.15.10.1" style="font-size:70%;">195.55</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.15.15.2.1" style="font-size:70%;">6.60</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.15.15.2.m1.1"><semantics id="A4.T8.15.15.2.m1.1a"><mo id="A4.T8.15.15.2.m1.1.1" mathsize="70%" xref="A4.T8.15.15.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.15.15.2.m1.1b"><times id="A4.T8.15.15.2.m1.1.1.cmml" xref="A4.T8.15.15.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.15.15.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.15.15.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.17.17">
<td class="ltx_td ltx_align_center" id="A4.T8.16.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.100}}" class="ltx_Math" display="inline" id="A4.T8.16.16.1.m1.1"><semantics id="A4.T8.16.16.1.m1.1a"><msub id="A4.T8.16.16.1.m1.1.1" xref="A4.T8.16.16.1.m1.1.1.cmml"><mtext id="A4.T8.16.16.1.m1.1.1.2" mathsize="70%" xref="A4.T8.16.16.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.16.16.1.m1.1.1.3" xref="A4.T8.16.16.1.m1.1.1.3.cmml"><mi id="A4.T8.16.16.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.16.16.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.16.16.1.m1.1.1.3.1" xref="A4.T8.16.16.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.16.16.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.16.16.1.m1.1.1.3.3a.cmml">=0.100</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.16.16.1.m1.1b"><apply id="A4.T8.16.16.1.m1.1.1.cmml" xref="A4.T8.16.16.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.16.16.1.m1.1.1.1.cmml" xref="A4.T8.16.16.1.m1.1.1">subscript</csymbol><ci id="A4.T8.16.16.1.m1.1.1.2a.cmml" xref="A4.T8.16.16.1.m1.1.1.2"><mtext id="A4.T8.16.16.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.16.16.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.16.16.1.m1.1.1.3.cmml" xref="A4.T8.16.16.1.m1.1.1.3"><times id="A4.T8.16.16.1.m1.1.1.3.1.cmml" xref="A4.T8.16.16.1.m1.1.1.3.1"></times><ci id="A4.T8.16.16.1.m1.1.1.3.2.cmml" xref="A4.T8.16.16.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.16.16.1.m1.1.1.3.3a.cmml" xref="A4.T8.16.16.1.m1.1.1.3.3"><mtext id="A4.T8.16.16.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.16.16.1.m1.1.1.3.3">=0.100</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.16.16.1.m1.1c">\text{Ours}_{r\text{=0.100}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.16.16.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.100 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.3.1" style="font-size:70%;">76.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.4.1" style="font-size:70%;">56.59%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.5.1" style="font-size:70%;">99.13%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.6.1" style="font-size:70%;">99.54%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.7.1" style="font-size:70%;">57.12%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.8.1" style="font-size:70%;">97.73%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.9.1" style="font-size:70%;">54.88%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.17.17.10.1" style="font-size:70%;">204.13</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.17.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.17.17.2.1" style="font-size:70%;">7.05</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.17.17.2.m1.1"><semantics id="A4.T8.17.17.2.m1.1a"><mo id="A4.T8.17.17.2.m1.1.1" mathsize="70%" xref="A4.T8.17.17.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.17.17.2.m1.1b"><times id="A4.T8.17.17.2.m1.1.1.cmml" xref="A4.T8.17.17.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.17.17.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.17.17.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.19.19">
<td class="ltx_td ltx_align_center" id="A4.T8.18.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.200}}" class="ltx_Math" display="inline" id="A4.T8.18.18.1.m1.1"><semantics id="A4.T8.18.18.1.m1.1a"><msub id="A4.T8.18.18.1.m1.1.1" xref="A4.T8.18.18.1.m1.1.1.cmml"><mtext id="A4.T8.18.18.1.m1.1.1.2" mathsize="70%" xref="A4.T8.18.18.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.18.18.1.m1.1.1.3" xref="A4.T8.18.18.1.m1.1.1.3.cmml"><mi id="A4.T8.18.18.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.18.18.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.18.18.1.m1.1.1.3.1" xref="A4.T8.18.18.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.18.18.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.18.18.1.m1.1.1.3.3a.cmml">=0.200</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.18.18.1.m1.1b"><apply id="A4.T8.18.18.1.m1.1.1.cmml" xref="A4.T8.18.18.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.18.18.1.m1.1.1.1.cmml" xref="A4.T8.18.18.1.m1.1.1">subscript</csymbol><ci id="A4.T8.18.18.1.m1.1.1.2a.cmml" xref="A4.T8.18.18.1.m1.1.1.2"><mtext id="A4.T8.18.18.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.18.18.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.18.18.1.m1.1.1.3.cmml" xref="A4.T8.18.18.1.m1.1.1.3"><times id="A4.T8.18.18.1.m1.1.1.3.1.cmml" xref="A4.T8.18.18.1.m1.1.1.3.1"></times><ci id="A4.T8.18.18.1.m1.1.1.3.2.cmml" xref="A4.T8.18.18.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.18.18.1.m1.1.1.3.3a.cmml" xref="A4.T8.18.18.1.m1.1.1.3.3"><mtext id="A4.T8.18.18.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.18.18.1.m1.1.1.3.3">=0.200</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.18.18.1.m1.1c">\text{Ours}_{r\text{=0.200}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.18.18.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.200 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.3.1" style="font-size:70%;">75.02%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.4.1" style="font-size:70%;">55.71%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.5.1" style="font-size:70%;">99.03%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.6.1" style="font-size:70%;">99.50%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.7.1" style="font-size:70%;">55.22%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.8.1" style="font-size:70%;">97.28%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.9.1" style="font-size:70%;">54.07%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.19.19.10.1" style="font-size:70%;">223.75</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.19.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.19.19.2.1" style="font-size:70%;">7.50</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.19.19.2.m1.1"><semantics id="A4.T8.19.19.2.m1.1a"><mo id="A4.T8.19.19.2.m1.1.1" mathsize="70%" xref="A4.T8.19.19.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.19.19.2.m1.1b"><times id="A4.T8.19.19.2.m1.1.1.cmml" xref="A4.T8.19.19.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.19.19.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.19.19.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.21.21">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.20.20.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.400}}" class="ltx_Math" display="inline" id="A4.T8.20.20.1.m1.1"><semantics id="A4.T8.20.20.1.m1.1a"><msub id="A4.T8.20.20.1.m1.1.1" xref="A4.T8.20.20.1.m1.1.1.cmml"><mtext id="A4.T8.20.20.1.m1.1.1.2" mathsize="70%" xref="A4.T8.20.20.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.20.20.1.m1.1.1.3" xref="A4.T8.20.20.1.m1.1.1.3.cmml"><mi id="A4.T8.20.20.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.20.20.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.20.20.1.m1.1.1.3.1" xref="A4.T8.20.20.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.20.20.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.20.20.1.m1.1.1.3.3a.cmml">=0.400</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.20.20.1.m1.1b"><apply id="A4.T8.20.20.1.m1.1.1.cmml" xref="A4.T8.20.20.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.20.20.1.m1.1.1.1.cmml" xref="A4.T8.20.20.1.m1.1.1">subscript</csymbol><ci id="A4.T8.20.20.1.m1.1.1.2a.cmml" xref="A4.T8.20.20.1.m1.1.1.2"><mtext id="A4.T8.20.20.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.20.20.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.20.20.1.m1.1.1.3.cmml" xref="A4.T8.20.20.1.m1.1.1.3"><times id="A4.T8.20.20.1.m1.1.1.3.1.cmml" xref="A4.T8.20.20.1.m1.1.1.3.1"></times><ci id="A4.T8.20.20.1.m1.1.1.3.2.cmml" xref="A4.T8.20.20.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.20.20.1.m1.1.1.3.3a.cmml" xref="A4.T8.20.20.1.m1.1.1.3.3"><mtext id="A4.T8.20.20.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.20.20.1.m1.1.1.3.3">=0.400</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.20.20.1.m1.1c">\text{Ours}_{r\text{=0.400}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.20.20.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.400 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.3.1" style="font-size:70%;">75.30%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.4.1" style="font-size:70%;">55.79%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.5.1" style="font-size:70%;">98.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.6.1" style="font-size:70%;">99.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.7.1" style="font-size:70%;">54.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.8.1" style="font-size:70%;">97.71%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.9.1" style="font-size:70%;">54.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.21.21.10.1" style="font-size:70%;">231.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.21.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.21.21.2.1" style="font-size:70%;">7.80</span><math alttext="\times" class="ltx_Math" display="inline" id="A4.T8.21.21.2.m1.1"><semantics id="A4.T8.21.21.2.m1.1a"><mo id="A4.T8.21.21.2.m1.1.1" mathsize="70%" xref="A4.T8.21.21.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A4.T8.21.21.2.m1.1b"><times id="A4.T8.21.21.2.m1.1.1.cmml" xref="A4.T8.21.21.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.21.21.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A4.T8.21.21.2.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of distillation order on the performance of the Efficient-VDIT model.  Specifically, it compares the model's performance when multi-step consistency distillation (MLCD) is applied before layerwise knowledge distillation versus the reverse order. The evaluation is performed using VBench metrics, assessing various aspects of video generation quality, such as aesthetic quality, motion smoothness, temporal consistency, and overall quality.  The table helps to determine whether the order of these distillation steps affects the final model's performance and whether there is an optimal approach.
> <details>
> <summary>read the caption</summary>
> Table 9: VBench evaluation result for ablation study on distillation order for MLCD and layerwise knowledge distillation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A4.T8.30">
<tr class="ltx_tr" id="A4.T8.30.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.1.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.2.1"></span><span class="ltx_text" id="A4.T8.30.10.2.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.2.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.2.3.1">
<span class="ltx_tr" id="A4.T8.30.10.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.2.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.2.3.1.1.1.1">Multiple</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.2.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.2.3.1.2.1.1">Objects</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.2.4"></span><span class="ltx_text" id="A4.T8.30.10.2.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.3.1"></span><span class="ltx_text" id="A4.T8.30.10.3.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.3.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.3.3.1">
<span class="ltx_tr" id="A4.T8.30.10.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.3.3.1.1.1.1">Human</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.3.3.1.2.1.1">Action</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.3.4"></span><span class="ltx_text" id="A4.T8.30.10.3.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.4.1" style="font-size:70%;">Color</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.5.1"></span><span class="ltx_text" id="A4.T8.30.10.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.5.3.1">
<span class="ltx_tr" id="A4.T8.30.10.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.5.3.1.1.1.1">Dynamic</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.5.3.1.2.1.1">Degree</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.5.4"></span><span class="ltx_text" id="A4.T8.30.10.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.6.1"></span><span class="ltx_text" id="A4.T8.30.10.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.6.3.1">
<span class="ltx_tr" id="A4.T8.30.10.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.6.3.1.1.1.1">Spatial</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.6.3.1.2.1.1">Relationship</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.6.4"></span><span class="ltx_text" id="A4.T8.30.10.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.7.1" style="font-size:70%;">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.8.1"></span><span class="ltx_text" id="A4.T8.30.10.8.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.8.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.8.3.1">
<span class="ltx_tr" id="A4.T8.30.10.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.8.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.8.3.1.1.1.1">Appearance</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.8.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.8.3.1.2.1.1">Style</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.8.4"></span><span class="ltx_text" id="A4.T8.30.10.8.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.9.1"></span><span class="ltx_text" id="A4.T8.30.10.9.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.9.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.9.3.1">
<span class="ltx_tr" id="A4.T8.30.10.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.9.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.9.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.9.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.9.3.1.2.1.1">Style</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.9.4"></span><span class="ltx_text" id="A4.T8.30.10.9.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.10.1"></span><span class="ltx_text" id="A4.T8.30.10.10.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.10.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.10.3.1">
<span class="ltx_tr" id="A4.T8.30.10.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.10.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.10.3.1.1.1.1">Overall</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.10.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.10.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.10.4"></span><span class="ltx_text" id="A4.T8.30.10.10.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.30.10.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T8.30.10.11.1"></span><span class="ltx_text" id="A4.T8.30.10.11.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T8.30.10.11.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T8.30.10.11.3.1">
<span class="ltx_tr" id="A4.T8.30.10.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.11.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.11.3.1.1.1.1">Background</span></span></span>
<span class="ltx_tr" id="A4.T8.30.10.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T8.30.10.11.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.10.11.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A4.T8.30.10.11.4"></span><span class="ltx_text" id="A4.T8.30.10.11.5" style="font-size:70%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.30.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.1.1" style="font-size:70%;">MLCD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.2.1" style="font-size:70%;">19.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.3.1" style="font-size:70%;">56.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.4.1" style="font-size:70%;">94.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.5.1" style="font-size:70%;">41.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.6.1" style="font-size:70%;">40.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.11.7.1" style="font-size:70%;">22.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.11.8.1" style="font-size:70%;">20.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.9.1" style="font-size:70%;">18.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.11.10.1" style="font-size:70%;">19.77%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.30.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.11.11.1" style="font-size:70%;">97.98%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.22.1">
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{4:4}" class="ltx_Math" display="inline" id="A4.T8.22.1.1.m1.1"><semantics id="A4.T8.22.1.1.m1.1a"><msub id="A4.T8.22.1.1.m1.1.1" xref="A4.T8.22.1.1.m1.1.1.cmml"><mtext id="A4.T8.22.1.1.m1.1.1.2" mathsize="70%" xref="A4.T8.22.1.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.22.1.1.m1.1.1.3" xref="A4.T8.22.1.1.m1.1.1.3.cmml"><mn id="A4.T8.22.1.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.22.1.1.m1.1.1.3.2.cmml">4</mn><mo id="A4.T8.22.1.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.22.1.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.22.1.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.22.1.1.m1.1.1.3.3.cmml">4</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.22.1.1.m1.1b"><apply id="A4.T8.22.1.1.m1.1.1.cmml" xref="A4.T8.22.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.22.1.1.m1.1.1.1.cmml" xref="A4.T8.22.1.1.m1.1.1">subscript</csymbol><ci id="A4.T8.22.1.1.m1.1.1.2a.cmml" xref="A4.T8.22.1.1.m1.1.1.2"><mtext id="A4.T8.22.1.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.22.1.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.22.1.1.m1.1.1.3.cmml" xref="A4.T8.22.1.1.m1.1.1.3"><ci id="A4.T8.22.1.1.m1.1.1.3.1.cmml" xref="A4.T8.22.1.1.m1.1.1.3.1">:</ci><cn id="A4.T8.22.1.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.22.1.1.m1.1.1.3.2">4</cn><cn id="A4.T8.22.1.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.22.1.1.m1.1.1.3.3">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.22.1.1.m1.1c">\text{MLCD}_{4:4}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.22.1.1.m1.1d">MLCD start_POSTSUBSCRIPT 4 : 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.22.1.2.1" style="font-size:70%;">22.79%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.4.1" style="font-size:70%;">92.69%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.5.1" style="font-size:70%;">50.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.6.1" style="font-size:70%;">39.80%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.7.1" style="font-size:70%;">17.51%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.8.1" style="font-size:70%;">19.89%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.9.1" style="font-size:70%;">18.32%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.10.1" style="font-size:70%;">19.06%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.22.1.11.1" style="font-size:70%;">97.30%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.23.2">
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{3:5}" class="ltx_Math" display="inline" id="A4.T8.23.2.1.m1.1"><semantics id="A4.T8.23.2.1.m1.1a"><msub id="A4.T8.23.2.1.m1.1.1" xref="A4.T8.23.2.1.m1.1.1.cmml"><mtext id="A4.T8.23.2.1.m1.1.1.2" mathsize="70%" xref="A4.T8.23.2.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.23.2.1.m1.1.1.3" xref="A4.T8.23.2.1.m1.1.1.3.cmml"><mn id="A4.T8.23.2.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.23.2.1.m1.1.1.3.2.cmml">3</mn><mo id="A4.T8.23.2.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.23.2.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.23.2.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.23.2.1.m1.1.1.3.3.cmml">5</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.23.2.1.m1.1b"><apply id="A4.T8.23.2.1.m1.1.1.cmml" xref="A4.T8.23.2.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.23.2.1.m1.1.1.1.cmml" xref="A4.T8.23.2.1.m1.1.1">subscript</csymbol><ci id="A4.T8.23.2.1.m1.1.1.2a.cmml" xref="A4.T8.23.2.1.m1.1.1.2"><mtext id="A4.T8.23.2.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.23.2.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.23.2.1.m1.1.1.3.cmml" xref="A4.T8.23.2.1.m1.1.1.3"><ci id="A4.T8.23.2.1.m1.1.1.3.1.cmml" xref="A4.T8.23.2.1.m1.1.1.3.1">:</ci><cn id="A4.T8.23.2.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.23.2.1.m1.1.1.3.2">3</cn><cn id="A4.T8.23.2.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.23.2.1.m1.1.1.3.3">5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.23.2.1.m1.1c">\text{MLCD}_{3:5}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.23.2.1.m1.1d">MLCD start_POSTSUBSCRIPT 3 : 5 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.2.1" style="font-size:70%;">22.10%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.3.1" style="font-size:70%;">50.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.4.1" style="font-size:70%;">90.82%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.5.1" style="font-size:70%;">43.06%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.6.1" style="font-size:70%;">43.48%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.7.1" style="font-size:70%;">21.44%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.8.1" style="font-size:70%;">19.97%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.9.1" style="font-size:70%;">17.68%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.10.1" style="font-size:70%;">19.75%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.23.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.23.2.11.1" style="font-size:70%;">97.47%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.24.3">
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{2:6}" class="ltx_Math" display="inline" id="A4.T8.24.3.1.m1.1"><semantics id="A4.T8.24.3.1.m1.1a"><msub id="A4.T8.24.3.1.m1.1.1" xref="A4.T8.24.3.1.m1.1.1.cmml"><mtext id="A4.T8.24.3.1.m1.1.1.2" mathsize="70%" xref="A4.T8.24.3.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.24.3.1.m1.1.1.3" xref="A4.T8.24.3.1.m1.1.1.3.cmml"><mn id="A4.T8.24.3.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.24.3.1.m1.1.1.3.2.cmml">2</mn><mo id="A4.T8.24.3.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.24.3.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.24.3.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.24.3.1.m1.1.1.3.3.cmml">6</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.24.3.1.m1.1b"><apply id="A4.T8.24.3.1.m1.1.1.cmml" xref="A4.T8.24.3.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.24.3.1.m1.1.1.1.cmml" xref="A4.T8.24.3.1.m1.1.1">subscript</csymbol><ci id="A4.T8.24.3.1.m1.1.1.2a.cmml" xref="A4.T8.24.3.1.m1.1.1.2"><mtext id="A4.T8.24.3.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.24.3.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.24.3.1.m1.1.1.3.cmml" xref="A4.T8.24.3.1.m1.1.1.3"><ci id="A4.T8.24.3.1.m1.1.1.3.1.cmml" xref="A4.T8.24.3.1.m1.1.1.3.1">:</ci><cn id="A4.T8.24.3.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.24.3.1.m1.1.1.3.2">2</cn><cn id="A4.T8.24.3.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.24.3.1.m1.1.1.3.3">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.24.3.1.m1.1c">\text{MLCD}_{2:6}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.24.3.1.m1.1d">MLCD start_POSTSUBSCRIPT 2 : 6 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.2.1" style="font-size:70%;">18.60%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.4.1" style="font-size:70%;">92.52%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.5.1" style="font-size:70%;">44.44%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.6.1" style="font-size:70%;">43.36%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.7.1" style="font-size:70%;">16.21%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.8.1" style="font-size:70%;">19.89%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.9.1" style="font-size:70%;">17.84%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.3.10.1" style="font-size:70%;">20.12%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.24.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.24.3.11.1" style="font-size:70%;">97.70%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.25.4">
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{MLCD}_{1:7}" class="ltx_Math" display="inline" id="A4.T8.25.4.1.m1.1"><semantics id="A4.T8.25.4.1.m1.1a"><msub id="A4.T8.25.4.1.m1.1.1" xref="A4.T8.25.4.1.m1.1.1.cmml"><mtext id="A4.T8.25.4.1.m1.1.1.2" mathsize="70%" xref="A4.T8.25.4.1.m1.1.1.2a.cmml">MLCD</mtext><mrow id="A4.T8.25.4.1.m1.1.1.3" xref="A4.T8.25.4.1.m1.1.1.3.cmml"><mn id="A4.T8.25.4.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.25.4.1.m1.1.1.3.2.cmml">1</mn><mo id="A4.T8.25.4.1.m1.1.1.3.1" lspace="0.278em" mathsize="70%" rspace="0.278em" xref="A4.T8.25.4.1.m1.1.1.3.1.cmml">:</mo><mn id="A4.T8.25.4.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.25.4.1.m1.1.1.3.3.cmml">7</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.25.4.1.m1.1b"><apply id="A4.T8.25.4.1.m1.1.1.cmml" xref="A4.T8.25.4.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.25.4.1.m1.1.1.1.cmml" xref="A4.T8.25.4.1.m1.1.1">subscript</csymbol><ci id="A4.T8.25.4.1.m1.1.1.2a.cmml" xref="A4.T8.25.4.1.m1.1.1.2"><mtext id="A4.T8.25.4.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.25.4.1.m1.1.1.2">MLCD</mtext></ci><apply id="A4.T8.25.4.1.m1.1.1.3.cmml" xref="A4.T8.25.4.1.m1.1.1.3"><ci id="A4.T8.25.4.1.m1.1.1.3.1.cmml" xref="A4.T8.25.4.1.m1.1.1.3.1">:</ci><cn id="A4.T8.25.4.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T8.25.4.1.m1.1.1.3.2">1</cn><cn id="A4.T8.25.4.1.m1.1.1.3.3.cmml" type="integer" xref="A4.T8.25.4.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.25.4.1.m1.1c">\text{MLCD}_{1:7}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.25.4.1.m1.1d">MLCD start_POSTSUBSCRIPT 1 : 7 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.2.1" style="font-size:70%;">16.92%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.4.1" style="font-size:70%;">91.92%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.5.1" style="font-size:70%;">63.89%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.6.1" style="font-size:70%;">43.27%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.7.1" style="font-size:70%;">17.22%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.8.1" style="font-size:70%;">19.94%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.25.4.9.1" style="font-size:70%;">18.56%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.10.1" style="font-size:70%;">19.85%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.25.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.25.4.11.1" style="font-size:70%;">97.45%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.26.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.025}}" class="ltx_Math" display="inline" id="A4.T8.26.5.1.m1.1"><semantics id="A4.T8.26.5.1.m1.1a"><msub id="A4.T8.26.5.1.m1.1.1" xref="A4.T8.26.5.1.m1.1.1.cmml"><mtext id="A4.T8.26.5.1.m1.1.1.2" mathsize="70%" xref="A4.T8.26.5.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.26.5.1.m1.1.1.3" xref="A4.T8.26.5.1.m1.1.1.3.cmml"><mi id="A4.T8.26.5.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.26.5.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.26.5.1.m1.1.1.3.1" xref="A4.T8.26.5.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.26.5.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.26.5.1.m1.1.1.3.3a.cmml">=0.025</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.26.5.1.m1.1b"><apply id="A4.T8.26.5.1.m1.1.1.cmml" xref="A4.T8.26.5.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.26.5.1.m1.1.1.1.cmml" xref="A4.T8.26.5.1.m1.1.1">subscript</csymbol><ci id="A4.T8.26.5.1.m1.1.1.2a.cmml" xref="A4.T8.26.5.1.m1.1.1.2"><mtext id="A4.T8.26.5.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.26.5.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.26.5.1.m1.1.1.3.cmml" xref="A4.T8.26.5.1.m1.1.1.3"><times id="A4.T8.26.5.1.m1.1.1.3.1.cmml" xref="A4.T8.26.5.1.m1.1.1.3.1"></times><ci id="A4.T8.26.5.1.m1.1.1.3.2.cmml" xref="A4.T8.26.5.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.26.5.1.m1.1.1.3.3a.cmml" xref="A4.T8.26.5.1.m1.1.1.3.3"><mtext id="A4.T8.26.5.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.26.5.1.m1.1.1.3.3">=0.025</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.26.5.1.m1.1c">\text{Ours}_{r\text{=0.025}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.26.5.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.025 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.2.1" style="font-size:70%;">18.83%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.3.1" style="font-size:70%;">55.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.26.5.4.1" style="font-size:70%;">96.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.5.1" style="font-size:70%;">52.78%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.26.5.6.1" style="font-size:70%;">46.02%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.7.1" style="font-size:70%;">12.35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.8.1" style="font-size:70%;">20.31%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.9.1" style="font-size:70%;">18.17%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.10.1" style="font-size:70%;">19.11%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.26.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.26.5.11.1" style="font-size:70%;">97.70%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.27.6">
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.050}}" class="ltx_Math" display="inline" id="A4.T8.27.6.1.m1.1"><semantics id="A4.T8.27.6.1.m1.1a"><msub id="A4.T8.27.6.1.m1.1.1" xref="A4.T8.27.6.1.m1.1.1.cmml"><mtext id="A4.T8.27.6.1.m1.1.1.2" mathsize="70%" xref="A4.T8.27.6.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.27.6.1.m1.1.1.3" xref="A4.T8.27.6.1.m1.1.1.3.cmml"><mi id="A4.T8.27.6.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.27.6.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.27.6.1.m1.1.1.3.1" xref="A4.T8.27.6.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.27.6.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.27.6.1.m1.1.1.3.3a.cmml">=0.050</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.27.6.1.m1.1b"><apply id="A4.T8.27.6.1.m1.1.1.cmml" xref="A4.T8.27.6.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.27.6.1.m1.1.1.1.cmml" xref="A4.T8.27.6.1.m1.1.1">subscript</csymbol><ci id="A4.T8.27.6.1.m1.1.1.2a.cmml" xref="A4.T8.27.6.1.m1.1.1.2"><mtext id="A4.T8.27.6.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.27.6.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.27.6.1.m1.1.1.3.cmml" xref="A4.T8.27.6.1.m1.1.1.3"><times id="A4.T8.27.6.1.m1.1.1.3.1.cmml" xref="A4.T8.27.6.1.m1.1.1.3.1"></times><ci id="A4.T8.27.6.1.m1.1.1.3.2.cmml" xref="A4.T8.27.6.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.27.6.1.m1.1.1.3.3a.cmml" xref="A4.T8.27.6.1.m1.1.1.3.3"><mtext id="A4.T8.27.6.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.27.6.1.m1.1.1.3.3">=0.050</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.27.6.1.m1.1c">\text{Ours}_{r\text{=0.050}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.27.6.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.050 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.2.1" style="font-size:70%;">11.74%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.27.6.3.1" style="font-size:70%;">58.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.4.1" style="font-size:70%;">92.11%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.5.1" style="font-size:70%;">58.33%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.6.1" style="font-size:70%;">39.81%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.7.1" style="font-size:70%;">22.31%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.8.1" style="font-size:70%;">20.25%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.9.1" style="font-size:70%;">17.71%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.10.1" style="font-size:70%;">19.45%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.27.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.27.6.11.1" style="font-size:70%;">97.71%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.28.7">
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.100}}" class="ltx_Math" display="inline" id="A4.T8.28.7.1.m1.1"><semantics id="A4.T8.28.7.1.m1.1a"><msub id="A4.T8.28.7.1.m1.1.1" xref="A4.T8.28.7.1.m1.1.1.cmml"><mtext id="A4.T8.28.7.1.m1.1.1.2" mathsize="70%" xref="A4.T8.28.7.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.28.7.1.m1.1.1.3" xref="A4.T8.28.7.1.m1.1.1.3.cmml"><mi id="A4.T8.28.7.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.28.7.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.28.7.1.m1.1.1.3.1" xref="A4.T8.28.7.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.28.7.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.28.7.1.m1.1.1.3.3a.cmml">=0.100</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.28.7.1.m1.1b"><apply id="A4.T8.28.7.1.m1.1.1.cmml" xref="A4.T8.28.7.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.28.7.1.m1.1.1.1.cmml" xref="A4.T8.28.7.1.m1.1.1">subscript</csymbol><ci id="A4.T8.28.7.1.m1.1.1.2a.cmml" xref="A4.T8.28.7.1.m1.1.1.2"><mtext id="A4.T8.28.7.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.28.7.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.28.7.1.m1.1.1.3.cmml" xref="A4.T8.28.7.1.m1.1.1.3"><times id="A4.T8.28.7.1.m1.1.1.3.1.cmml" xref="A4.T8.28.7.1.m1.1.1.3.1"></times><ci id="A4.T8.28.7.1.m1.1.1.3.2.cmml" xref="A4.T8.28.7.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.28.7.1.m1.1.1.3.3a.cmml" xref="A4.T8.28.7.1.m1.1.1.3.3"><mtext id="A4.T8.28.7.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.28.7.1.m1.1.1.3.3">=0.100</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.28.7.1.m1.1c">\text{Ours}_{r\text{=0.100}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.28.7.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.100 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.2.1" style="font-size:70%;">18.98%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.3.1" style="font-size:70%;">56.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.4.1" style="font-size:70%;">93.65%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.5.1" style="font-size:70%;">63.89%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.6.1" style="font-size:70%;">43.88%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.7.1" style="font-size:70%;">15.77%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.8.1" style="font-size:70%;">20.20%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.9.1" style="font-size:70%;">17.98%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.10.1" style="font-size:70%;">19.29%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.28.7.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.28.7.11.1" style="font-size:70%;">97.55%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.29.8">
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.200}}" class="ltx_Math" display="inline" id="A4.T8.29.8.1.m1.1"><semantics id="A4.T8.29.8.1.m1.1a"><msub id="A4.T8.29.8.1.m1.1.1" xref="A4.T8.29.8.1.m1.1.1.cmml"><mtext id="A4.T8.29.8.1.m1.1.1.2" mathsize="70%" xref="A4.T8.29.8.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.29.8.1.m1.1.1.3" xref="A4.T8.29.8.1.m1.1.1.3.cmml"><mi id="A4.T8.29.8.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.29.8.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.29.8.1.m1.1.1.3.1" xref="A4.T8.29.8.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.29.8.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.29.8.1.m1.1.1.3.3a.cmml">=0.200</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.29.8.1.m1.1b"><apply id="A4.T8.29.8.1.m1.1.1.cmml" xref="A4.T8.29.8.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.29.8.1.m1.1.1.1.cmml" xref="A4.T8.29.8.1.m1.1.1">subscript</csymbol><ci id="A4.T8.29.8.1.m1.1.1.2a.cmml" xref="A4.T8.29.8.1.m1.1.1.2"><mtext id="A4.T8.29.8.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.29.8.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.29.8.1.m1.1.1.3.cmml" xref="A4.T8.29.8.1.m1.1.1.3"><times id="A4.T8.29.8.1.m1.1.1.3.1.cmml" xref="A4.T8.29.8.1.m1.1.1.3.1"></times><ci id="A4.T8.29.8.1.m1.1.1.3.2.cmml" xref="A4.T8.29.8.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.29.8.1.m1.1.1.3.3a.cmml" xref="A4.T8.29.8.1.m1.1.1.3.3"><mtext id="A4.T8.29.8.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.29.8.1.m1.1.1.3.3">=0.200</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.29.8.1.m1.1c">\text{Ours}_{r\text{=0.200}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.29.8.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.200 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.2.1" style="font-size:70%;">17.99%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.3.1" style="font-size:70%;">53.00%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.4.1" style="font-size:70%;">51.82%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.5.1" style="font-size:70%;">59.72%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.6.1" style="font-size:70%;">36.14%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.7.1" style="font-size:70%;">13.88%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.8.1" style="font-size:70%;">20.29%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.9.1" style="font-size:70%;">17.97%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.10.1" style="font-size:70%;">18.97%</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.29.8.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.29.8.11.1" style="font-size:70%;">97.62%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.30.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\text{Ours}_{r\text{=0.400}}" class="ltx_Math" display="inline" id="A4.T8.30.9.1.m1.1"><semantics id="A4.T8.30.9.1.m1.1a"><msub id="A4.T8.30.9.1.m1.1.1" xref="A4.T8.30.9.1.m1.1.1.cmml"><mtext id="A4.T8.30.9.1.m1.1.1.2" mathsize="70%" xref="A4.T8.30.9.1.m1.1.1.2a.cmml">Ours</mtext><mrow id="A4.T8.30.9.1.m1.1.1.3" xref="A4.T8.30.9.1.m1.1.1.3.cmml"><mi id="A4.T8.30.9.1.m1.1.1.3.2" mathsize="70%" xref="A4.T8.30.9.1.m1.1.1.3.2.cmml">r</mi><mo id="A4.T8.30.9.1.m1.1.1.3.1" xref="A4.T8.30.9.1.m1.1.1.3.1.cmml">⁢</mo><mtext id="A4.T8.30.9.1.m1.1.1.3.3" mathsize="70%" xref="A4.T8.30.9.1.m1.1.1.3.3a.cmml">=0.400</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A4.T8.30.9.1.m1.1b"><apply id="A4.T8.30.9.1.m1.1.1.cmml" xref="A4.T8.30.9.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.30.9.1.m1.1.1.1.cmml" xref="A4.T8.30.9.1.m1.1.1">subscript</csymbol><ci id="A4.T8.30.9.1.m1.1.1.2a.cmml" xref="A4.T8.30.9.1.m1.1.1.2"><mtext id="A4.T8.30.9.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T8.30.9.1.m1.1.1.2">Ours</mtext></ci><apply id="A4.T8.30.9.1.m1.1.1.3.cmml" xref="A4.T8.30.9.1.m1.1.1.3"><times id="A4.T8.30.9.1.m1.1.1.3.1.cmml" xref="A4.T8.30.9.1.m1.1.1.3.1"></times><ci id="A4.T8.30.9.1.m1.1.1.3.2.cmml" xref="A4.T8.30.9.1.m1.1.1.3.2">𝑟</ci><ci id="A4.T8.30.9.1.m1.1.1.3.3a.cmml" xref="A4.T8.30.9.1.m1.1.1.3.3"><mtext id="A4.T8.30.9.1.m1.1.1.3.3.cmml" mathsize="49%" xref="A4.T8.30.9.1.m1.1.1.3.3">=0.400</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.30.9.1.m1.1c">\text{Ours}_{r\text{=0.400}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.30.9.1.m1.1d">Ours start_POSTSUBSCRIPT italic_r =0.400 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.2.1" style="font-size:70%;">15.32%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.3.1" style="font-size:70%;">54.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.4.1" style="font-size:70%;">92.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.30.9.5.1" style="font-size:70%;">65.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.6.1" style="font-size:70%;">37.05%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.7.1" style="font-size:70%;">12.06%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.8.1" style="font-size:70%;">20.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.9.1" style="font-size:70%;">18.19%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.10.1" style="font-size:70%;">19.22%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.30.9.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T8.30.9.11.1" style="font-size:70%;">97.66%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the speedup achieved by using different sparse attention masks in the CogVideoX-5B model.  It shows the relationship between the sparsity of the attention mask (percentage of elements not computed), the resulting execution time (in milliseconds), and the speedup factor compared to using a full attention mask (no sparsity).  The results demonstrate that increasing sparsity, while maintaining reasonable performance, significantly reduces computation time, leading to substantial speed improvements.  This highlights the efficiency gains obtained by strategically applying sparse attention in video generation models.
> <details>
> <summary>read the caption</summary>
> Table 10: CogvideoX-5B model speedup with different masks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A4.T9.2">
<tr class="ltx_tr" id="A4.T9.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.3.1" style="font-size:70%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.1.1.1.1"></span><span class="ltx_text" id="A4.T9.1.1.1.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.1.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.1.1.1.3.1">
<span class="ltx_tr" id="A4.T9.1.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.1.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.1.1.1.3.1.1.1.1">Final</span></span></span>
<span class="ltx_tr" id="A4.T9.1.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.1.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.1.1.1.3.1.2.1.1">Score</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.1.1.1.4" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.1.1.1.5"></span><span class="ltx_text" id="A4.T9.1.1.1.6" style="font-size:70%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T9.1.1.1.m1.1"><semantics id="A4.T9.1.1.1.m1.1a"><mo id="A4.T9.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="A4.T9.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T9.1.1.1.m1.1b"><ci id="A4.T9.1.1.1.m1.1.1.cmml" xref="A4.T9.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.2.2.4.1"></span><span class="ltx_text" id="A4.T9.2.2.4.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.2.2.4.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.2.2.4.3.1">
<span class="ltx_tr" id="A4.T9.2.2.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.4.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.4.3.1.1.1.1">Aesthetic</span></span></span>
<span class="ltx_tr" id="A4.T9.2.2.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.4.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.4.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.2.2.4.4"></span><span class="ltx_text" id="A4.T9.2.2.4.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.2.2.5.1"></span><span class="ltx_text" id="A4.T9.2.2.5.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.2.2.5.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.2.2.5.3.1">
<span class="ltx_tr" id="A4.T9.2.2.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.5.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.5.3.1.1.1.1">Dynamic</span></span></span>
<span class="ltx_tr" id="A4.T9.2.2.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.5.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.5.3.1.2.1.1">Degree</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.2.2.5.4"></span><span class="ltx_text" id="A4.T9.2.2.5.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.2.2.6.1"></span><span class="ltx_text" id="A4.T9.2.2.6.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.2.2.6.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.2.2.6.3.1">
<span class="ltx_tr" id="A4.T9.2.2.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.6.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.6.3.1.1.1.1">Motion</span></span></span>
<span class="ltx_tr" id="A4.T9.2.2.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.6.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.6.3.1.2.1.1">Smoothness</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.2.2.6.4"></span><span class="ltx_text" id="A4.T9.2.2.6.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.2.2.7.1"></span><span class="ltx_text" id="A4.T9.2.2.7.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.2.2.7.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.2.2.7.3.1">
<span class="ltx_tr" id="A4.T9.2.2.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.7.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.7.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="A4.T9.2.2.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.7.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.7.3.1.2.1.1">Flickering</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.2.2.7.4"></span><span class="ltx_text" id="A4.T9.2.2.7.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.2.2.8.1"></span><span class="ltx_text" id="A4.T9.2.2.8.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.2.2.8.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.2.2.8.3.1">
<span class="ltx_tr" id="A4.T9.2.2.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.8.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.8.3.1.1.1.1">Object</span></span></span>
<span class="ltx_tr" id="A4.T9.2.2.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.8.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.8.3.1.2.1.1">Class</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.2.2.8.4"></span><span class="ltx_text" id="A4.T9.2.2.8.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.2.2.9.1"></span><span class="ltx_text" id="A4.T9.2.2.9.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.2.2.9.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.2.2.9.3.1">
<span class="ltx_tr" id="A4.T9.2.2.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.9.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.9.3.1.1.1.1">Subject</span></span></span>
<span class="ltx_tr" id="A4.T9.2.2.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.9.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.9.3.1.2.1.1">Consistency</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.2.2.9.4"></span><span class="ltx_text" id="A4.T9.2.2.9.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A4.T9.2.2.10.1"></span><span class="ltx_text" id="A4.T9.2.2.10.2" style="font-size:70%;"> </span><span class="ltx_text" id="A4.T9.2.2.10.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A4.T9.2.2.10.3.1">
<span class="ltx_tr" id="A4.T9.2.2.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.10.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.10.3.1.1.1.1">Imaging</span></span></span>
<span class="ltx_tr" id="A4.T9.2.2.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T9.2.2.10.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.2.2.10.3.1.2.1.1">Quality</span></span></span>
</span></span><span class="ltx_text" id="A4.T9.2.2.10.4"></span><span class="ltx_text" id="A4.T9.2.2.10.5" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A4.T9.2.2.2.1" style="font-size:70%;">CD-FVD</span><span class="ltx_text" id="A4.T9.2.2.2.2" style="font-size:70%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T9.2.2.2.m1.1"><semantics id="A4.T9.2.2.2.m1.1a"><mo id="A4.T9.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="A4.T9.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T9.2.2.2.m1.1b"><ci id="A4.T9.2.2.2.m1.1.1.cmml" xref="A4.T9.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.1.1" style="font-size:70%;">MLCD + KD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.2.1" style="font-size:70%;">76.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.3.1" style="font-size:70%;">56.59%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.4.1" style="font-size:70%;">63.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.5.1" style="font-size:70%;">99.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.6.1" style="font-size:70%;">99.54%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.7.1" style="font-size:70%;">57.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.8.1" style="font-size:70%;">97.73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.9.1" style="font-size:70%;">54.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.3.10.1" style="font-size:70%;">204.13</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.2.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.1.1" style="font-size:70%;">KD + MLCD</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.2.1" style="font-size:70%;">75.50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.3.1" style="font-size:70%;">56.38%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.4.1" style="font-size:70%;">54.16%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.5.1" style="font-size:70%;">99.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.6.1" style="font-size:70%;">99.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.7.1" style="font-size:70%;">54.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.8.1" style="font-size:70%;">97.71%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.9.1" style="font-size:70%;">57.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A4.T9.2.4.10.1" style="font-size:70%;">203.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents the performance of the CogVideoX-5B model (a large video generation model) on the VBench benchmark.  The experiment uses videos with 49 frames and a resolution of 480p.  A key aspect is the use of a layerwise search strategy (detailed in Algorithm 1 of the paper) during training.  The 'r=4.0' in the caption specifies that a threshold of 4.0 was used during this layerwise search process which determines sparsity level in the model's attention mechanism. The table provides a detailed breakdown of the model's performance across various aspects of video quality, enabling a comprehensive assessment of its capabilities.
> <details>
> <summary>read the caption</summary>
> Table 11: CogVideoX-5B with 49 frames and 480p resolution results on VBench. ‘r𝑟ritalic_r=4.0’ indicates that this checkpoint was trained using the layerwise search strategy described in Algorithm 1, with a threshold of r𝑟ritalic_r=4.0.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06155/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06155/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}