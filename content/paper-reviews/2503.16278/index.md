---
title: "Uni-3DAR: Unified 3D Generation and Understanding via Autoregression on Compressed Spatial Tokens"
summary: "Uni-3DAR: Autoregressive framework unifies 3D generation/understanding, compressing spatial tokens for faster, versatile AI."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 DP Technology",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16278 {{< /keyword >}}
{{< keyword icon="writer" >}} Shuqi Lu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16278" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16278" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16278/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advances use next-token prediction to unify generation/understanding, but 3D structural tasks lag behind. These tasks in AI for Science have largely evolved independently. To address this gap, this paper introduces **Uni-3DAR, a unified framework** integrating 3D generation/understanding tasks via autoregressive prediction. Uni-3DAR employs hierarchical tokenization, compressing 3D space using an octree. It tokenizes fine-grained structure, capturing atom types/coordinates. Two optimizations are introduced for efficiency: a two-level subtree compression, which reduces the octree token sequence, and a masked next-token prediction tailored for varying token positions.



Uni-3DAR unifies diverse 3D generation/understanding tasks. Extensive experiments on microscopic 3D tasks (molecules, proteins, polymers, crystals) validate its effectiveness/versatility. Uni-3DAR surpasses diffusion models, achieving significant relative improvement. The method also delivers inference speeds much faster than previous methods. **The code is publicly available**, inviting further research and development in this area. The model achieves gains in efficiency while also setting a new state of the art in performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Uni-3DAR unifies 3D generation and understanding tasks via autoregressive prediction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Hierarchical tokenization efficiently compresses 3D space using an octree. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Masked next-token prediction handles dynamic token positions, boosting performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Uni-3DAR, offering a **unified approach** to 3D structural tasks. Its efficiency gains and versatile framework provide researchers with **new tools** for exploring and understanding 3D data, potentially accelerating discoveries in AI for science.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16278/x1.png)

> 🔼 This figure provides a comprehensive overview of the Uni-3DAR model. Panel (a) illustrates the adaptive coarse-to-fine subdivision of grid cells used to construct the octree. Panel (b) shows how the octree is built and compresses the full 3D grid. Panel (c) explains Uni-3DAR's two-component tokenization: hierarchical spatial compression via an octree and a fine-grained structural tokenization. Panel (d) presents the 2-level subtree compression optimization which reduces the octree token sequence. Panel (e) illustrates the masked next-token prediction mechanism, showing how it addresses the problem of dynamically varying token positions in Uni-3DAR. Lastly, panel (f) shows the unified framework for 3D generation and understanding tasks within Uni-3DAR.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of Uni-3DAR (illustrated in 2D using a quadtree for clarity). (a) Adaptive coarse-to-fine subdivision of grid cells, where darker nodes indicate non-empty cells that can be further partitioned. (b) This partitioning process constructs an octree, providing a lossless compression of the full-size 3D grid. (c) Uni-3DAR’s tokenization consists of two components: hierarchical spatial compression via an octree and fine-grained structural tokenization. Each node’s position is determined by its tree level and cell center. (d) The proposed 2-level subtree compression further reduces the octree tokens by up to 8x (4x in the illustrated quadtree). (e) The masked next-token prediction mechanism effectively addresses the challenge of dynamically varying token positions. (f) Uni-3DAR unifies multi-frame 3D structural generation with token-level and structure-level understanding tasks in a single model, assigning each token a distinct role.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.4">
<tr class="ltx_tr" id="S3.T1.4.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.1.1.1" style="font-size:90%;">Section</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.1.2.1" style="font-size:90%;">Data Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.1.3.1" style="font-size:90%;">Single-Frame Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.1.4.1" style="font-size:90%;">Multi-Frame Gen.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.1.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.1.5.1" style="font-size:90%;">Token Und.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.1.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.1.6.1" style="font-size:90%;">Structure Und.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.4.2.1.1" style="font-size:90%;">Sec. </span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#S3.SS1" style="font-size:90%;" title="3.1 3D Small Molecule Generation ‣ 3 Experiments ‣ Uni-3DAR: Unified 3D Generation and Understanding via Autoregression on Compressed Spatial Tokens"><span class="ltx_text ltx_ref_tag">3.1</span></a>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.2.2.1" style="font-size:90%;">Molecule</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.2.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.4.2.6" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.4.3.1.1" style="font-size:90%;">Sec. </span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#S3.SS2" style="font-size:90%;" title="3.2 Crystal Generation ‣ 3 Experiments ‣ Uni-3DAR: Unified 3D Generation and Understanding via Autoregression on Compressed Spatial Tokens"><span class="ltx_text ltx_ref_tag">3.2</span></a>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.3.2.1" style="font-size:90%;">Crystal + PXRD</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.3.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.4.3.6" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.4.4.1.1" style="font-size:90%;">Sec. </span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#S3.SS3" style="font-size:90%;" title="3.3 Protein Pocket Prediction ‣ 3 Experiments ‣ Uni-3DAR: Unified 3D Generation and Understanding via Autoregression on Compressed Spatial Tokens"><span class="ltx_text ltx_ref_tag">3.3</span></a>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.4.2.1" style="font-size:90%;">Protein</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.4.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.4.5.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.4.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.4.5.1.1" style="font-size:90%;">Sec. </span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#S3.SS4" style="font-size:90%;" title="3.4 Molecular Docking ‣ 3 Experiments ‣ Uni-3DAR: Unified 3D Generation and Understanding via Autoregression on Compressed Spatial Tokens"><span class="ltx_text ltx_ref_tag">3.4</span></a>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.5.2.1" style="font-size:90%;">Protein + Molecule</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.5.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.5.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.4.5.6" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.4.6.1.1" style="font-size:90%;">Sec. </span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#S3.SS5" style="font-size:90%;" title="3.5 Molecular Property Prediction via Pretraining ‣ 3 Experiments ‣ Uni-3DAR: Unified 3D Generation and Understanding via Autoregression on Compressed Spatial Tokens"><span class="ltx_text ltx_ref_tag">3.5</span></a>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.6.2.1" style="font-size:90%;">Molecule</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.6.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.4.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.6.6.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.4.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.4.7.1.1" style="font-size:90%;">Sec. </span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#S3.SS6" style="font-size:90%;" title="3.6 Polymer Property Prediction via Pretraining ‣ 3 Experiments ‣ Uni-3DAR: Unified 3D Generation and Understanding via Autoregression on Compressed Spatial Tokens"><span class="ltx_text ltx_ref_tag">3.6</span></a>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.4.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.7.2.1" style="font-size:90%;">Polymer</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.4.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.7.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.4.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.4.7.5" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.7.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.7.6.1" style="font-size:90%;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table summarizes the various real-world applications that are addressed by the Uni-3DAR framework. It categorizes different tasks based on the type of 3D data (Molecules, Crystals, Proteins, or Polymers) and the nature of the task (Single-Frame Generation, Multi-Frame Generation, Token-level Understanding, or Structure-level Understanding).  A checkmark indicates that the task can be performed using the Uni-3DAR framework.  The table highlights the framework's versatility and broad applicability in solving various 3D structural problems.
> <details>
> <summary>read the caption</summary>
> Table 1: Our experiments cover a broad spectrum of real-world tasks, each of which can be seamlessly adapted by the unified framework of Uni-3DAR.
> </details>





### In-depth insights


#### Uni-3DAR Intro
The paper introduces Uni-3DAR, a novel framework unifying 3D generation and understanding through autoregressive prediction. It addresses the limitations of existing methods by using a hierarchical tokenization strategy based on **octrees**, which efficiently compresses 3D space while preserving spatial context. Two key optimizations enhance efficiency: **2-level subtree compression** and **masked next-token prediction**. This allows Uni-3DAR to outperform previous state-of-the-art diffusion models significantly in both accuracy and inference speed, unifying diverse 3D tasks like molecule, protein, polymer and crystal modelling.

#### Tokenization Adv.
The paper introduces a novel hierarchical tokenization method for 3D structures. **It leverages an octree to compress 3D space**, capitalizing on the inherent sparsity of such structures. This is augmented with fine-grained tokenization to capture details like atom types and spatial coordinates. This method efficiently compresses the 3D grid, addressing limitations of point-based and voxel-based approaches. **The octree efficiently compresses 3D space, and a two-level subtree compression strategy further reduces sequence length.** The method concatenates tokens level-by-level to produce a coarse-to-fine 1D token sequence. The fine-grained structural tokenization enables the encoding of essential details like atom types and precise coordinates for microscopic 3D structures. **To solve the dynamic tokens' positions problem, the team uses a masked next-token prediction strategy.**

#### Masked Predic. 
In the context of the document, "Masked Predic." likely refers to **masked prediction techniques**, a common strategy in machine learning. This technique involves **selectively masking parts of the input data and training the model to predict** the masked portions. It has proven effective in various domains, including natural language processing (NLP) where it is used to pretrain models like BERT. The document likely explores how masked prediction can be adapted for 3D structural data.  Key benefits of masking include **enabling bidirectional context learning** and **reducing reliance on specific input orderings**. The challenge here might be efficiently applying it to hierarchical or spatial data. Success lies in designing a **suitable masking strategy that preserves relevant information** and aligns with the 3D structure's properties. The framework would also need to consider the impact on computational costs. Optimizations that make masked prediction tractable for large and complex 3D structures would be essential.

#### 3D Task Unifier
The concept of a '3D Task Unifier' is compelling, suggesting a framework that **integrates diverse 3D tasks** (generation, understanding, manipulation) into a single architecture. This would move beyond task-specific models, enabling **transfer learning** and **synergistic improvements.** Key challenges include finding a **common representation** for diverse 3D data (point clouds, meshes, voxels) and designing an architecture capable of handling varying input/output formats and task requirements. Such a unifier necessitates **robust 3D understanding**, leveraging geometric priors and spatial relationships. Furthermore, effectively balancing performance across different tasks and preventing negative transfer are critical considerations for a successful '3D Task Unifier'.

#### Beyond Micro.? 
When considering expanding beyond microscopic scales in 3D structure modeling, new challenges and opportunities emerge. **Computational cost** becomes a significant factor as the size and complexity of the structures increase. Efficient data structures and algorithms are needed to handle the larger datasets. **Multi-scale modeling** approaches could be employed to represent different levels of detail at different scales. Understanding interactions between different scales will also become important. For instance, how do microscopic properties affect macroscopic behavior? Such problems requires models capable of bridging these scales. Further, **data acquisition** becomes harder. The data will be collected from different sources and modalities. It is important to consider **integration of different modalities** for better insights and prediction. This integration will require robust methods for data fusion and alignment. Finally, **visualization and interpretation** of the models will be crucial to extract meaningful insights. New tools will be needed for the exploration and analysis of large, complex 3D structures.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16278/extracted/6297143/pic/qm9.png)

> 🔼 Figure 2 presents a comparison of Uni-3DAR's inference speed against a diffusion-based generative model (GeoLDM).  The left panel shows the throughput (molecules generated per second) for various batch sizes, demonstrating that Uni-3DAR significantly outperforms GeoLDM across all batch sizes, achieving up to a 21.8x speedup at larger batch sizes and a 7.5x speedup at a batch size of 64. The right panel illustrates the impact of the rank ratio (𝑟) parameter, which controls the diversity of sampling, on Uni-3DAR's generation speed, showing its efficiency even with diverse sampling.
> <details>
> <summary>read the caption</summary>
> Figure 2: Left: Uni-3DAR generation speed on different batch sizes compared with the diffusion-based method; Right: Uni-3DAR generation speed on different rank ratios r𝑟ritalic_r compared with the diffusion-based method (higher is better).
> </details>



![](https://arxiv.org/html/2503.16278/extracted/6297143/pic/drugs.png)

> 🔼 This figure showcases examples of 3D molecular structures generated by the Uni-3DAR model without any specific input or conditioning.  The structures were generated as part of the unconditional generation experiment on the QM9 dataset, a benchmark dataset commonly used in molecular machine learning.  Each structure represents a different small molecule, highlighting the model's ability to generate a diverse range of realistic and chemically plausible 3D conformations.
> <details>
> <summary>read the caption</summary>
> Figure SI-1: Unconditional 3D molecular generation samples of QM9 dataset.
> </details>



![](https://arxiv.org/html/2503.16278/extracted/6297143/pic/mp20.png)

> 🔼 This figure displays various 3D molecular structures generated by the Uni-3DAR model.  The structures are from the GEOM-DRUG dataset which contains larger organic molecules compared to the QM9 dataset.  The figure visually demonstrates Uni-3DAR's ability to generate diverse, complex, and chemically plausible 3D molecular structures with many atoms, showing its effectiveness for this challenging task.
> <details>
> <summary>read the caption</summary>
> Figure SI-2: Unconditional 3D molecular generation samples of GEOM-DRUG dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.7">
<tr class="ltx_tr" id="S3.T2.7.8">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S3.T2.7.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S3.T2.7.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.2.1" style="font-size:90%;">QM9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.7.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.3.1" style="font-size:90%;">DRUG</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7">
<td class="ltx_td ltx_border_r" id="S3.T2.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.1.1.1.1" style="font-size:90%;">Atom Sta(%)</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.2.2.2.1" style="font-size:90%;">Mol Sta(%)</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.3.3.3.1" style="font-size:90%;">Valid(%)</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.5.5.5.1" style="font-size:90%;">V </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.m1.1.1" mathsize="90%" xref="S3.T2.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.m1.1b"><times id="S3.T2.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T2.5.5.5.2" style="font-size:90%;"> U(%)</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.m2.1"><semantics id="S3.T2.5.5.5.m2.1a"><mo id="S3.T2.5.5.5.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T2.5.5.5.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.m2.1b"><ci id="S3.T2.5.5.5.m2.1.1.cmml" xref="S3.T2.5.5.5.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.m2.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.6.6.6.1" style="font-size:90%;">Atom Sta(%)</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.m1.1a"><mo id="S3.T2.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.m1.1b"><ci id="S3.T2.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.7.7.1" style="font-size:90%;">Valid(%)</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.m1.1"><semantics id="S3.T2.7.7.7.m1.1a"><mo id="S3.T2.7.7.7.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.m1.1b"><ci id="S3.T2.7.7.7.m1.1.1.cmml" xref="S3.T2.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.7.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.9.1.1" style="font-size:90%;">Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.9.2.1" style="font-size:90%;">99.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.9.3.1" style="font-size:90%;">95.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.9.4.1" style="font-size:90%;">97.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.9.5.1" style="font-size:90%;">97.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.9.6.1" style="font-size:90%;">86.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.9.7.1" style="font-size:90%;">99.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.7.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.10.1.1" style="font-size:90%;">ENF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib34" title="">34</a><span class="ltx_text" id="S3.T2.7.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.10.2.1" style="font-size:90%;">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.10.3.1" style="font-size:90%;">4.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.10.4.1" style="font-size:90%;">40.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.10.5.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.10.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.10.7.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.11.1.1" style="font-size:90%;">G-Schnet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib33" title="">33</a><span class="ltx_text" id="S3.T2.7.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.11.2.1" style="font-size:90%;">95.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.11.3.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.11.4.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.11.5.1" style="font-size:90%;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.11.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.11.7.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.12.1.1" style="font-size:90%;">GDM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib11" title="">11</a><span class="ltx_text" id="S3.T2.7.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.12.2.1" style="font-size:90%;">97.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.12.3.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.12.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.12.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.12.6.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.12.7.1" style="font-size:90%;">90.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.13.1.1" style="font-size:90%;">GDM-AUG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib11" title="">11</a><span class="ltx_text" id="S3.T2.7.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.13.2.1" style="font-size:90%;">97.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.13.3.1" style="font-size:90%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.13.4.1" style="font-size:90%;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.13.5.1" style="font-size:90%;">89.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.13.6.1" style="font-size:90%;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.13.7.1" style="font-size:90%;">91.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.14.1.1" style="font-size:90%;">EDM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib11" title="">11</a><span class="ltx_text" id="S3.T2.7.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.14.2.1" style="font-size:90%;">98.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.14.3.1" style="font-size:90%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.14.4.1" style="font-size:90%;">91.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.14.5.1" style="font-size:90%;">90.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.14.6.1" style="font-size:90%;">81.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.14.7.1" style="font-size:90%;">92.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.15.1.1" style="font-size:90%;">EDM-Bridge </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib35" title="">35</a><span class="ltx_text" id="S3.T2.7.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.15.2.1" style="font-size:90%;">98.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.15.3.1" style="font-size:90%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.15.4.1" style="font-size:90%;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.15.5.1" style="font-size:90%;">90.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.15.6.1" style="font-size:90%;">82.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.15.7.1" style="font-size:90%;">92.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.16.1.1" style="font-size:90%;">GeoLDM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib12" title="">12</a><span class="ltx_text" id="S3.T2.7.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.16.2.1" style="font-size:90%;">98.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.16.3.1" style="font-size:90%;">89.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.16.4.1" style="font-size:90%;">93.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.16.5.1" style="font-size:90%;">92.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.16.6.1" style="font-size:90%;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.16.7.1" style="font-size:90%;">99.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.17.1.1" style="font-size:90%;">UniGEM* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib36" title="">36</a><span class="ltx_text" id="S3.T2.7.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.17.2.1" style="font-size:90%;">99.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.17.3.1" style="font-size:90%;">89.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.17.4.1" style="font-size:90%;">95.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.17.5.1" style="font-size:90%;">93.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.17.6.1" style="font-size:90%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.17.7.1" style="font-size:90%;">98.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.18">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.7.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.7.18.1.1" style="font-size:90%;">Uni-3DAR</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.7.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.2.1" style="font-size:90%;">99.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.7.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.3.1" style="font-size:90%;">93.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.7.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.4.1" style="font-size:90%;">98.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.7.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.5.1" style="font-size:90%;">94.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.7.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.6.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.7.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.7.1" style="font-size:90%;">99.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Uni-3DAR against other state-of-the-art models on the task of generating small organic molecules with accurate 3D conformations.  The metrics used include atom stability, molecule stability, validity, and uniqueness.  The QM9 and GEOM-DRUG datasets were used for evaluation, and UniGEM's results are marked with an asterisk to indicate the use of additional molecular property information during training.  This highlights Uni-3DAR's performance relative to others, particularly in terms of generating chemically valid and unique molecules, even when compared to methods leveraging additional input data.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on unconditional 3D molecular generation. Results for UniGEM are marked with an asterisk (*) to indicate the use of additional molecular property information during training to enhance generation performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.6.6">
<tr class="ltx_tr" id="S3.T3.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.3.3.3.4"><span class="ltx_text" id="S3.T3.3.3.3.4.1" style="font-size:90%;">Data</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.3.3.3.5"><span class="ltx_text" id="S3.T3.3.3.3.5.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.1">
<span class="ltx_text" id="S3.T3.1.1.1.1.1" style="font-size:90%;">Validity (%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.2.2.2.2">
<span class="ltx_text" id="S3.T3.2.2.2.2.1" style="font-size:90%;">Coverage (%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.2.m1.1a"><mo id="S3.T3.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.2.m1.1b"><ci id="S3.T3.2.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T3.3.3.3.3">
<span class="ltx_text" id="S3.T3.3.3.3.3.1" style="font-size:90%;">Property </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.3.3.3.3.m1.1"><semantics id="S3.T3.3.3.3.3.m1.1a"><mo id="S3.T3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.3.m1.1b"><ci id="S3.T3.3.3.3.3.m1.1.1.cmml" xref="S3.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.6">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.6.4"></td>
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.6.5"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.6.6"><span class="ltx_text" id="S3.T3.6.6.6.6.1" style="font-size:90%;">Struc.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.6.7"><span class="ltx_text" id="S3.T3.6.6.6.7.1" style="font-size:90%;">Comp.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.6.8"><span class="ltx_text" id="S3.T3.6.6.6.8.1" style="font-size:90%;">COV-R</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.6.9"><span class="ltx_text" id="S3.T3.6.6.6.9.1" style="font-size:90%;">COV-P</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.4.4.4.1"><math alttext="d_{p}" class="ltx_Math" display="inline" id="S3.T3.4.4.4.1.m1.1"><semantics id="S3.T3.4.4.4.1.m1.1a"><msub id="S3.T3.4.4.4.1.m1.1.1" xref="S3.T3.4.4.4.1.m1.1.1.cmml"><mi id="S3.T3.4.4.4.1.m1.1.1.2" mathsize="90%" xref="S3.T3.4.4.4.1.m1.1.1.2.cmml">d</mi><mi id="S3.T3.4.4.4.1.m1.1.1.3" mathsize="90%" xref="S3.T3.4.4.4.1.m1.1.1.3.cmml">p</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.1.m1.1b"><apply id="S3.T3.4.4.4.1.m1.1.1.cmml" xref="S3.T3.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.4.4.4.1.m1.1.1.1.cmml" xref="S3.T3.4.4.4.1.m1.1.1">subscript</csymbol><ci id="S3.T3.4.4.4.1.m1.1.1.2.cmml" xref="S3.T3.4.4.4.1.m1.1.1.2">𝑑</ci><ci id="S3.T3.4.4.4.1.m1.1.1.3.cmml" xref="S3.T3.4.4.4.1.m1.1.1.3">𝑝</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.1.m1.1c">d_{p}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_p end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.5.5.5.2"><math alttext="d_{E}" class="ltx_Math" display="inline" id="S3.T3.5.5.5.2.m1.1"><semantics id="S3.T3.5.5.5.2.m1.1a"><msub id="S3.T3.5.5.5.2.m1.1.1" xref="S3.T3.5.5.5.2.m1.1.1.cmml"><mi id="S3.T3.5.5.5.2.m1.1.1.2" mathsize="90%" xref="S3.T3.5.5.5.2.m1.1.1.2.cmml">d</mi><mi id="S3.T3.5.5.5.2.m1.1.1.3" mathsize="90%" xref="S3.T3.5.5.5.2.m1.1.1.3.cmml">E</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.2.m1.1b"><apply id="S3.T3.5.5.5.2.m1.1.1.cmml" xref="S3.T3.5.5.5.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.5.5.5.2.m1.1.1.1.cmml" xref="S3.T3.5.5.5.2.m1.1.1">subscript</csymbol><ci id="S3.T3.5.5.5.2.m1.1.1.2.cmml" xref="S3.T3.5.5.5.2.m1.1.1.2">𝑑</ci><ci id="S3.T3.5.5.5.2.m1.1.1.3.cmml" xref="S3.T3.5.5.5.2.m1.1.1.3">𝐸</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.2.m1.1c">d_{E}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.2.m1.1d">italic_d start_POSTSUBSCRIPT italic_E end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.6.6.6.3"><math alttext="d_{\text{elem}}" class="ltx_Math" display="inline" id="S3.T3.6.6.6.3.m1.1"><semantics id="S3.T3.6.6.6.3.m1.1a"><msub id="S3.T3.6.6.6.3.m1.1.1" xref="S3.T3.6.6.6.3.m1.1.1.cmml"><mi id="S3.T3.6.6.6.3.m1.1.1.2" mathsize="90%" xref="S3.T3.6.6.6.3.m1.1.1.2.cmml">d</mi><mtext id="S3.T3.6.6.6.3.m1.1.1.3" mathsize="90%" xref="S3.T3.6.6.6.3.m1.1.1.3a.cmml">elem</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.3.m1.1b"><apply id="S3.T3.6.6.6.3.m1.1.1.cmml" xref="S3.T3.6.6.6.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.6.6.6.3.m1.1.1.1.cmml" xref="S3.T3.6.6.6.3.m1.1.1">subscript</csymbol><ci id="S3.T3.6.6.6.3.m1.1.1.2.cmml" xref="S3.T3.6.6.6.3.m1.1.1.2">𝑑</ci><ci id="S3.T3.6.6.6.3.m1.1.1.3a.cmml" xref="S3.T3.6.6.6.3.m1.1.1.3"><mtext id="S3.T3.6.6.6.3.m1.1.1.3.cmml" mathsize="63%" xref="S3.T3.6.6.6.3.m1.1.1.3">elem</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.3.m1.1c">d_{\text{elem}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.3.m1.1d">italic_d start_POSTSUBSCRIPT elem end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.6.7.1"><span class="ltx_text" id="S3.T3.6.6.7.1.1" style="font-size:90%;">Carbon-24</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.6.7.2">
<span class="ltx_text" id="S3.T3.6.6.7.2.1" style="font-size:90%;">FTCP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.7.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib43" title="">43</a><span class="ltx_text" id="S3.T3.6.6.7.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.7.3"><span class="ltx_text" id="S3.T3.6.6.7.3.1" style="font-size:90%;">0.08</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.7.4"><span class="ltx_text" id="S3.T3.6.6.7.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.7.5"><span class="ltx_text" id="S3.T3.6.6.7.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.7.6"><span class="ltx_text" id="S3.T3.6.6.7.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.7.7"><span class="ltx_text" id="S3.T3.6.6.7.7.1" style="font-size:90%;">5.206</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.7.8"><span class="ltx_text" id="S3.T3.6.6.7.8.1" style="font-size:90%;">19.05</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.6.6.7.9"><span class="ltx_text" id="S3.T3.6.6.7.9.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.8">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.8.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.8.2">
<span class="ltx_text" id="S3.T3.6.6.8.2.1" style="font-size:90%;">G-SchNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib44" title="">44</a><span class="ltx_text" id="S3.T3.6.6.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.8.3"><span class="ltx_text" id="S3.T3.6.6.8.3.1" style="font-size:90%;">99.94</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.8.4"><span class="ltx_text" id="S3.T3.6.6.8.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.8.5"><span class="ltx_text" id="S3.T3.6.6.8.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.8.6"><span class="ltx_text" id="S3.T3.6.6.8.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.8.7"><span class="ltx_text" id="S3.T3.6.6.8.7.1" style="font-size:90%;">0.9427</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.8.8"><span class="ltx_text" id="S3.T3.6.6.8.8.1" style="font-size:90%;">1.320</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.8.9"><span class="ltx_text" id="S3.T3.6.6.8.9.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.9">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.9.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.9.2">
<span class="ltx_text" id="S3.T3.6.6.9.2.1" style="font-size:90%;">P-G-SchNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.9.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib44" title="">44</a><span class="ltx_text" id="S3.T3.6.6.9.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.9.3"><span class="ltx_text" id="S3.T3.6.6.9.3.1" style="font-size:90%;">48.39</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.9.4"><span class="ltx_text" id="S3.T3.6.6.9.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.9.5"><span class="ltx_text" id="S3.T3.6.6.9.5.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.9.6"><span class="ltx_text" id="S3.T3.6.6.9.6.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.9.7"><span class="ltx_text" id="S3.T3.6.6.9.7.1" style="font-size:90%;">1.533</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.9.8"><span class="ltx_text" id="S3.T3.6.6.9.8.1" style="font-size:90%;">134.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.9.9"><span class="ltx_text" id="S3.T3.6.6.9.9.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.10">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.10.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.10.2">
<span class="ltx_text" id="S3.T3.6.6.10.2.1" style="font-size:90%;">CDVAE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib37" title="">37</a><span class="ltx_text" id="S3.T3.6.6.10.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.10.3"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.10.3.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.10.4"><span class="ltx_text" id="S3.T3.6.6.10.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.10.5"><span class="ltx_text" id="S3.T3.6.6.10.5.1" style="font-size:90%;">99.80</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.10.6"><span class="ltx_text" id="S3.T3.6.6.10.6.1" style="font-size:90%;">83.08</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.10.7"><span class="ltx_text" id="S3.T3.6.6.10.7.1" style="font-size:90%;">0.1407</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.10.8"><span class="ltx_text" id="S3.T3.6.6.10.8.1" style="font-size:90%;">0.2850</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.10.9"><span class="ltx_text" id="S3.T3.6.6.10.9.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.11">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.11.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.11.2">
<span class="ltx_text" id="S3.T3.6.6.11.2.1" style="font-size:90%;">DiffCSP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.11.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib38" title="">38</a><span class="ltx_text" id="S3.T3.6.6.11.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.11.3"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.11.3.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.11.4"><span class="ltx_text" id="S3.T3.6.6.11.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.11.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.11.5.1" style="font-size:90%;">99.90</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.11.6.1" style="font-size:90%;">97.27</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.11.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.11.7.1" style="font-size:90%;">0.0805</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.11.8"><span class="ltx_text" id="S3.T3.6.6.11.8.1" style="font-size:90%;">0.0820</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.11.9"><span class="ltx_text" id="S3.T3.6.6.11.9.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.12">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.12.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.12.2"><span class="ltx_text" id="S3.T3.6.6.12.2.1" style="font-size:90%;">Uni-3DAR</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.12.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.12.3.1" style="font-size:90%;">99.99</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.12.4"><span class="ltx_text" id="S3.T3.6.6.12.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.12.5"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.12.5.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.12.6"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.12.6.1" style="font-size:90%;">98.16</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.12.7"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.12.7.1" style="font-size:90%;">0.0660</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.12.8"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.12.8.1" style="font-size:90%;">0.0289</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.12.9"><span class="ltx_text" id="S3.T3.6.6.12.9.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.6.13.1"><span class="ltx_text" id="S3.T3.6.6.13.1.1" style="font-size:90%;">MP-20</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.6.13.2">
<span class="ltx_text" id="S3.T3.6.6.13.2.1" style="font-size:90%;">FTCP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.13.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib43" title="">43</a><span class="ltx_text" id="S3.T3.6.6.13.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.13.3"><span class="ltx_text" id="S3.T3.6.6.13.3.1" style="font-size:90%;">1.55</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.13.4"><span class="ltx_text" id="S3.T3.6.6.13.4.1" style="font-size:90%;">48.37</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.13.5"><span class="ltx_text" id="S3.T3.6.6.13.5.1" style="font-size:90%;">4.72</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.13.6"><span class="ltx_text" id="S3.T3.6.6.13.6.1" style="font-size:90%;">0.09</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.13.7"><span class="ltx_text" id="S3.T3.6.6.13.7.1" style="font-size:90%;">23.71</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.13.8"><span class="ltx_text" id="S3.T3.6.6.13.8.1" style="font-size:90%;">160.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.6.6.13.9"><span class="ltx_text" id="S3.T3.6.6.13.9.1" style="font-size:90%;">0.7363</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.14">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.14.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.14.2">
<span class="ltx_text" id="S3.T3.6.6.14.2.1" style="font-size:90%;">G-SchNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.14.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib44" title="">44</a><span class="ltx_text" id="S3.T3.6.6.14.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.14.3"><span class="ltx_text" id="S3.T3.6.6.14.3.1" style="font-size:90%;">99.65</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.14.4"><span class="ltx_text" id="S3.T3.6.6.14.4.1" style="font-size:90%;">75.96</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.14.5"><span class="ltx_text" id="S3.T3.6.6.14.5.1" style="font-size:90%;">38.33</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.14.6"><span class="ltx_text" id="S3.T3.6.6.14.6.1" style="font-size:90%;">99.57</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.14.7"><span class="ltx_text" id="S3.T3.6.6.14.7.1" style="font-size:90%;">3.034</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.14.8"><span class="ltx_text" id="S3.T3.6.6.14.8.1" style="font-size:90%;">42.09</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.14.9"><span class="ltx_text" id="S3.T3.6.6.14.9.1" style="font-size:90%;">0.6411</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.15">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.15.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.15.2">
<span class="ltx_text" id="S3.T3.6.6.15.2.1" style="font-size:90%;">P-G-SchNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.15.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib44" title="">44</a><span class="ltx_text" id="S3.T3.6.6.15.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.15.3"><span class="ltx_text" id="S3.T3.6.6.15.3.1" style="font-size:90%;">77.51</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.15.4"><span class="ltx_text" id="S3.T3.6.6.15.4.1" style="font-size:90%;">76.40</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.15.5"><span class="ltx_text" id="S3.T3.6.6.15.5.1" style="font-size:90%;">41.93</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.15.6"><span class="ltx_text" id="S3.T3.6.6.15.6.1" style="font-size:90%;">99.74</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.15.7"><span class="ltx_text" id="S3.T3.6.6.15.7.1" style="font-size:90%;">4.04</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.15.8"><span class="ltx_text" id="S3.T3.6.6.15.8.1" style="font-size:90%;">2.448</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.15.9"><span class="ltx_text" id="S3.T3.6.6.15.9.1" style="font-size:90%;">0.6234</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.16">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.16.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.16.2">
<span class="ltx_text" id="S3.T3.6.6.16.2.1" style="font-size:90%;">CDVAE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.16.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib37" title="">37</a><span class="ltx_text" id="S3.T3.6.6.16.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.16.3"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.16.3.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.16.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.16.4.1" style="font-size:90%;">86.70</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.16.5"><span class="ltx_text" id="S3.T3.6.6.16.5.1" style="font-size:90%;">99.15</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.16.6"><span class="ltx_text" id="S3.T3.6.6.16.6.1" style="font-size:90%;">99.49</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.16.7"><span class="ltx_text" id="S3.T3.6.6.16.7.1" style="font-size:90%;">0.6875</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.16.8"><span class="ltx_text" id="S3.T3.6.6.16.8.1" style="font-size:90%;">0.2778</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.16.9"><span class="ltx_text" id="S3.T3.6.6.16.9.1" style="font-size:90%;">1.432</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.17">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.17.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.17.2">
<span class="ltx_text" id="S3.T3.6.6.17.2.1" style="font-size:90%;">DiffCSP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.17.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib38" title="">38</a><span class="ltx_text" id="S3.T3.6.6.17.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.17.3"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.17.3.1" style="font-size:90%;">100.0</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.17.4"><span class="ltx_text" id="S3.T3.6.6.17.4.1" style="font-size:90%;">83.25</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.17.5"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.17.5.1" style="font-size:90%;">99.71</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.17.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.17.6.1" style="font-size:90%;">99.76</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.17.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.17.7.1" style="font-size:90%;">0.3502</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.17.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.17.8.1" style="font-size:90%;">0.1247</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.17.9"><span class="ltx_text" id="S3.T3.6.6.17.9.1" style="font-size:90%;">0.3398</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.18">
<td class="ltx_td ltx_border_r" id="S3.T3.6.6.18.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.6.6.18.2">
<span class="ltx_text" id="S3.T3.6.6.18.2.1" style="font-size:90%;">FlowMM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.6.6.18.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib39" title="">39</a><span class="ltx_text" id="S3.T3.6.6.18.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.18.3"><span class="ltx_text" id="S3.T3.6.6.18.3.1" style="font-size:90%;">96.85</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.18.4"><span class="ltx_text" id="S3.T3.6.6.18.4.1" style="font-size:90%;">83.19</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.18.5"><span class="ltx_text" id="S3.T3.6.6.18.5.1" style="font-size:90%;">99.49</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.18.6"><span class="ltx_text" id="S3.T3.6.6.18.6.1" style="font-size:90%;">99.58</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.18.7"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.18.7.1" style="font-size:90%;">0.239</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.18.8"><span class="ltx_text" id="S3.T3.6.6.18.8.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.6.6.18.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.18.9.1" style="font-size:90%;">0.083</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.19">
<td class="ltx_td ltx_border_bb ltx_border_r" id="S3.T3.6.6.19.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.6.6.19.2"><span class="ltx_text" id="S3.T3.6.6.19.2.1" style="font-size:90%;">Uni-3DAR</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.6.19.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.19.3.1" style="font-size:90%;">99.89</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.6.19.4"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.19.4.1" style="font-size:90%;">90.31</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.6.19.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.19.5.1" style="font-size:90%;">99.62</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.6.19.6"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.19.6.1" style="font-size:90%;">99.83</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.6.19.7"><span class="ltx_text" id="S3.T3.6.6.19.7.1" style="font-size:90%;">0.4768</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.6.19.8"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.19.8.1" style="font-size:90%;">0.1237</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.6.6.19.9"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.19.9.1" style="font-size:90%;">0.0694</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the results of de novo crystal generation experiments, comparing the performance of Uni-3DAR against several baseline methods.  The metrics used are Validity (percentage of generated structures that meet physical plausibility criteria), Coverage (how well the generated structures represent the diversity of the dataset), and Property statistics (how close the properties of generated structures are to the ground truth). The dataset used is Carbon-24 and MP-20.  For FlowMM, the results reported are based on running 1000 integration steps. This table allows for comparison of Uni-3DAR's performance to other methods in the area of crystal generation.
> <details>
> <summary>read the caption</summary>
> Table 3: Results on de novo crystal generation. Baseline results are taken from Xie et al. [37]. For FlowMM, we report its result with 1000 integration steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.8.8">
<tr class="ltx_tr" id="S3.T4.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T4.8.8.9.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T4.8.8.9.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T4.8.8.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">Carbon-24</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T4.8.8.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">MPTS-52</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T4.8.8.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">MP-20</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T4.8.8.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">MP-20 (PXRD-Guided)</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.1.1.1.1.1">
<tr class="ltx_tr" id="S3.T4.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.1.1.1.1.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.1.1.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.1.1.1.1.m1.1a"><mo id="S3.T4.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T4.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.2.2.2.2.1">
<tr class="ltx_tr" id="S3.T4.2.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.2.2.2.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">RMSE</td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.2.2.2.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.2.2.2.2.1.1.1.m1.1"><semantics id="S3.T4.2.2.2.2.1.1.1.m1.1a"><mo id="S3.T4.2.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.2.2.2.2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.2.2.2.2.1.1.1.m1.1b"><ci id="S3.T4.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.T4.2.2.2.2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.2.2.2.2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.2.2.2.2.1.1.1.m1.1d">↓</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.3.3.3.3.1">
<tr class="ltx_tr" id="S3.T4.3.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.3.3.3.3.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.3.3.3.3.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.3.3.3.3.1.1.1.m1.1"><semantics id="S3.T4.3.3.3.3.1.1.1.m1.1a"><mo id="S3.T4.3.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.3.3.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.3.3.3.3.1.1.1.m1.1b"><ci id="S3.T4.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S3.T4.3.3.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.3.3.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.3.3.3.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.4.4.4.4.1">
<tr class="ltx_tr" id="S3.T4.4.4.4.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.4.4.4.4.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">RMSE</td>
</tr>
<tr class="ltx_tr" id="S3.T4.4.4.4.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.4.4.4.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.4.4.4.4.1.1.1.m1.1"><semantics id="S3.T4.4.4.4.4.1.1.1.m1.1a"><mo id="S3.T4.4.4.4.4.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.4.4.4.4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.4.4.4.4.1.1.1.m1.1b"><ci id="S3.T4.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S3.T4.4.4.4.4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.4.4.4.4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.4.4.4.4.1.1.1.m1.1d">↓</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.5.5.5.5.1">
<tr class="ltx_tr" id="S3.T4.5.5.5.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.5.5.5.5.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.5.5.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.5.5.5.5.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.5.5.5.5.1.1.1.m1.1"><semantics id="S3.T4.5.5.5.5.1.1.1.m1.1a"><mo id="S3.T4.5.5.5.5.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.5.5.5.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.5.5.5.5.1.1.1.m1.1b"><ci id="S3.T4.5.5.5.5.1.1.1.m1.1.1.cmml" xref="S3.T4.5.5.5.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.5.5.5.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.5.5.5.5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.6.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.6.6.6.6.1">
<tr class="ltx_tr" id="S3.T4.6.6.6.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.6.6.6.6.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">RMSE</td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.6.6.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.6.6.6.6.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.6.6.6.6.1.1.1.m1.1"><semantics id="S3.T4.6.6.6.6.1.1.1.m1.1a"><mo id="S3.T4.6.6.6.6.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.6.6.6.6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.6.6.6.6.1.1.1.m1.1b"><ci id="S3.T4.6.6.6.6.1.1.1.m1.1.1.cmml" xref="S3.T4.6.6.6.6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.6.6.6.6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.6.6.6.6.1.1.1.m1.1d">↓</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.7.7.7.7.1">
<tr class="ltx_tr" id="S3.T4.7.7.7.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.7.7.7.7.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.7.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.7.7.7.7.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.7.7.7.7.1.1.1.m1.1"><semantics id="S3.T4.7.7.7.7.1.1.1.m1.1a"><mo id="S3.T4.7.7.7.7.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.7.7.7.7.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.7.7.7.7.1.1.1.m1.1b"><ci id="S3.T4.7.7.7.7.1.1.1.m1.1.1.cmml" xref="S3.T4.7.7.7.7.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.7.7.7.7.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.7.7.7.7.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.8.8.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S3.T4.8.8.8.8.1">
<tr class="ltx_tr" id="S3.T4.8.8.8.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.8.8.8.8.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">RMSE</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.8.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.8.8.8.8.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.8.8.8.8.1.1.1.m1.1"><semantics id="S3.T4.8.8.8.8.1.1.1.m1.1a"><mo id="S3.T4.8.8.8.8.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.8.8.8.8.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.8.8.8.8.1.1.1.m1.1b"><ci id="S3.T4.8.8.8.8.1.1.1.m1.1.1.cmml" xref="S3.T4.8.8.8.8.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.8.8.8.8.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.8.8.8.8.1.1.1.m1.1d">↓</annotation></semantics></math></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.8.8.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">CDVAE <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib37" title="">37</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.8.8.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">17.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.8.8.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.2969</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.8.8.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">5.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.8.8.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.2106</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.8.8.10.6" style="padding-left:3.0pt;padding-right:3.0pt;">33.90</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.8.8.10.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.1045</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.8.8.10.8" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.8.8.10.9" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.8.8.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">DiffCSP <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">17.54</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.2759</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">12.19</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.1786</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.11.6" style="padding-left:3.0pt;padding-right:3.0pt;">51.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.8.8.11.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.0631</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.11.8" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.8.8.11.9" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.8.8.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">FlowMM <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib39" title="">39</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.47</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.4122</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">17.54</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.1726</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">61.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.8.8.12.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.8.8.12.7.1">0.0566</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.12.8" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.8.8.12.9" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.8.8.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">UniGenX <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib45" title="">45</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.13.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.8.8.13.2.1">27.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.13.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.8.8.13.3.1">0.2264</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.13.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.8.8.13.4.1">29.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.8.8.13.5.1">0.1256</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.13.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.8.8.13.6.1">63.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.8.8.13.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.0598</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.13.8" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.8.8.13.9" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.8.8.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">PXRDGEN <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16278v1#bib.bib46" title="">46</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.8.8.14.7" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.8.14.8" style="padding-left:3.0pt;padding-right:3.0pt;">68.68</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.8.8.14.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.0707</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.8.15">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T4.8.8.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">Uni-3DAR</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.8.8.15.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.2.1">31.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.8.8.15.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.3.1">0.2194</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.8.8.15.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.4.1">32.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.8.8.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.5.1">0.0684</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.8.8.15.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.6.1">65.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T4.8.8.15.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.7.1">0.0317</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.8.8.15.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.8.1">75.08</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.8.8.15.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.15.9.1">0.0276</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of crystal structure prediction (CSP) and PXRD-guided CSP experiments.  For a fair comparison with UniGenX, the results shown are from a model trained from scratch without any additional large-scale pretraining or fine-tuning, which UniGenX usually employs.  The table compares the performance of Uni-3DAR against other existing methods and shows metrics such as match rate and RMSE to evaluate the accuracy of crystal structure prediction based on chemical composition (CSP) and powder X-ray diffraction data (PXRD-guided CSP).
> <details>
> <summary>read the caption</summary>
> Table 4: Results on crystal structure prediction (CSP) and PXRD-guided CSP. For a fair comparison, we report UniGenX results obtained from the model trained from scratch, rather than using its default configuration that leverages large-scale datasets for additional pretraining and fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.1.1.1.1.1">
<tr class="ltx_tr" id="S3.T4.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.1.1.1.1.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.1.1.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.1.1.1.1.m1.1a"><mo id="S3.T4.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T4.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the Intersection over Union (IoU) scores for atom-level protein binding site prediction.  The IoU metric quantifies the overlap between predicted and actual binding sites. The table compares the performance of Uni-3DAR against various baseline methods.  For a fair comparison, results for the Vabs-Net model are shown using only alpha-carbon atoms, rather than the full atomic representation used in the original work. Higher IoU scores indicate better performance in identifying binding sites.
> <details>
> <summary>read the caption</summary>
> Table 5: Results for atom-level binding site prediction measured by IoU (%). Baseline results are taken from Zhao et al. [48]. For a fair comparison with other methods, we report Vabs-Net’s result using only α𝛼\alphaitalic_α-carbon atoms.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.2.2.2.2.1">
<tr class="ltx_tr" id="S3.T4.2.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.2.2.2.2.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">RMSE</td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.2.2.2.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.2.2.2.2.1.1.1.m1.1"><semantics id="S3.T4.2.2.2.2.1.1.1.m1.1a"><mo id="S3.T4.2.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.2.2.2.2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.2.2.2.2.1.1.1.m1.1b"><ci id="S3.T4.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.T4.2.2.2.2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.2.2.2.2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.2.2.2.2.1.1.1.m1.1d">↓</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of molecular docking performance using two key metrics: Top1-RMSD and Top5-RMSD.  These metrics measure the root-mean-square deviation (RMSD) between the predicted ligand binding pose and the actual pose.  The table compares the performance of Uni-3DAR against two sets of baseline methods. The first group consists of five classical, non-machine-learning based docking software tools. The second group includes eight state-of-the-art deep-learning based docking methods.  The results shown in the table are taken directly from a separate study (Cao et al. [60]). The best performing method for each metric is shown in bold, and the second best is underlined.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of docking performance on the Top1- and Top5-RMSD metrics. The first group of five baselines comprises classical docking software, while the second group of eight baselines consists of deep learning–based methods. The results are reproduced directly from Cao et al. [60]. The best outcomes are shown in bold, and the second-best are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.3.3.3.3.1">
<tr class="ltx_tr" id="S3.T4.3.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.3.3.3.3.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.3.3.3.3.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.3.3.3.3.1.1.1.m1.1"><semantics id="S3.T4.3.3.3.3.1.1.1.m1.1a"><mo id="S3.T4.3.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.3.3.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.3.3.3.3.1.1.1.m1.1b"><ci id="S3.T4.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S3.T4.3.3.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.3.3.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.3.3.3.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comparison of different machine learning models' performance on predicting various molecular properties.  The models are evaluated across ten different properties, and their mean absolute error (MAE) is reported for each property.  The table highlights the best-performing model for each property in bold and the second-best in underline.  This allows for easy comparison of Uni-3DAR's performance against established baselines (from Lu et al. [73]). The results demonstrate Uni-3DAR's competitiveness in molecular property prediction, showcasing its ability to achieve state-of-the-art performance on several key properties.
> <details>
> <summary>read the caption</summary>
> Table 7: Results on molecular property prediction performance. The best results are highlighted in bold, and the second-best results are underlined. Baseline results are taken from Lu et al. [73].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.4.4.4.4.1">
<tr class="ltx_tr" id="S3.T4.4.4.4.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.4.4.4.4.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">RMSE</td>
</tr>
<tr class="ltx_tr" id="S3.T4.4.4.4.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.4.4.4.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.4.4.4.4.1.1.1.m1.1"><semantics id="S3.T4.4.4.4.4.1.1.1.m1.1a"><mo id="S3.T4.4.4.4.4.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.4.4.4.4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.4.4.4.4.1.1.1.m1.1b"><ci id="S3.T4.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S3.T4.4.4.4.4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.4.4.4.4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.4.4.4.4.1.1.1.m1.1d">↓</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comparison of the performance of various models on predicting eight different polymer properties.  For each property, the table shows the mean absolute error (MAE) achieved by each model.  The MAE is a measure of the average difference between the model's predictions and the actual values. Lower MAE values indicate better performance. The best result for each property is shown in bold, and the second-best result is underlined. This table allows for a direct comparison of the accuracy of different models in predicting various polymer properties, providing insights into the relative strengths and weaknesses of each model.
> <details>
> <summary>read the caption</summary>
> Table 8: Polymer properties prediction performance. The best results are highlighted in bold, and the second-best results are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.5.5.5.5.1">
<tr class="ltx_tr" id="S3.T4.5.5.5.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.5.5.5.5.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.5.5.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.5.5.5.5.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.5.5.5.5.1.1.1.m1.1"><semantics id="S3.T4.5.5.5.5.1.1.1.m1.1a"><mo id="S3.T4.5.5.5.5.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.5.5.5.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.5.5.5.5.1.1.1.m1.1b"><ci id="S3.T4.5.5.5.5.1.1.1.m1.1.1.cmml" xref="S3.T4.5.5.5.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.5.5.5.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.5.5.5.5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study result of incorporating a generation loss during downstream fine-tuning in the molecular pretrained representation task.  The results show that including the generation loss improves the performance on downstream tasks such as predicting HOMO, LUMO, E1-CC2, and E2-CC2.
> <details>
> <summary>read the caption</summary>
> Table 9: In the molecular pretrained representation task, incorporating a generation loss during downstream fine-tuning improves performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.6.6.6.6.1">
<tr class="ltx_tr" id="S3.T4.6.6.6.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.6.6.6.6.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">RMSE</td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.6.6.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.6.6.6.6.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.6.6.6.6.1.1.1.m1.1"><semantics id="S3.T4.6.6.6.6.1.1.1.m1.1a"><mo id="S3.T4.6.6.6.6.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.6.6.6.6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.6.6.6.6.1.1.1.m1.1b"><ci id="S3.T4.6.6.6.6.1.1.1.m1.1.1.cmml" xref="S3.T4.6.6.6.6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.6.6.6.6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.6.6.6.6.1.1.1.m1.1d">↓</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the QM9 dataset.  Specifically, it compares the results of unconditional 3D molecule generation using only the generation task versus also incorporating a structure-level understanding task (predicting the internal energy). The results demonstrate that adding the structure-level understanding improves the quality of the generated molecules, reflected in higher atom stability, molecule stability, validity, and uniqueness scores.
> <details>
> <summary>read the caption</summary>
> Table 10: In the QM9 unconditional generation task, incorporating a structure-level understanding task further enhances the quality of the generated samples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.7.7.7.7.1">
<tr class="ltx_tr" id="S3.T4.7.7.7.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.7.7.7.7.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Match Rate</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.7.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T4.7.7.7.7.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.7.7.7.7.1.1.1.m1.1"><semantics id="S3.T4.7.7.7.7.1.1.1.m1.1a"><mo id="S3.T4.7.7.7.7.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.7.7.7.7.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.7.7.7.7.1.1.1.m1.1b"><ci id="S3.T4.7.7.7.7.1.1.1.m1.1.1.cmml" xref="S3.T4.7.7.7.7.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.7.7.7.7.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.7.7.7.7.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different components within the Uni-3DAR model on its performance and efficiency.  Specifically, it isolates the effects of Masked Next-Token Prediction (MNTP), 2-Level Subtree Compression (2LSC), and the use of a token-level diffusion loss compared to the simpler autoregressive head proposed in the paper.  The results are shown in terms of Atom Stability, Molecule Stability, Validity, Uniqueness, the number of tokens used, and training time on 4 NVIDIA 4090 GPUs.  The table demonstrates the effectiveness of MNTP in improving performance, the efficiency gains from 2LSC in reducing training time and token count, and the comparable performance of the diffusion loss to the simpler, more efficient autoregressive head.  It highlights Uni-3DAR's ability to balance model performance with computational efficiency.
> <details>
> <summary>read the caption</summary>
> Table 11: Ablation Studies for Uni-3DAR. MNTP (Masked Next-Token Prediction) boosts performance, while 2LSC (2-Level Subtree Compression) enhances efficiency. Uni-3DAR integrates both techniques to balance effectiveness and efficiency. Token-level diffusion loss (diff. loss) performs comparably to our proposed simple autoregressive head. Training cost is measured using 4 NVIDIA 4090 GPUs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16278/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16278/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}