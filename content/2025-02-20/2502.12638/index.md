---
title: "NExT-Mol: 3D Diffusion Meets 1D Language Modeling for 3D Molecule Generation"
summary: "NExT-Mol: Combines 1D language models with 3D diffusion for molecule generation, achieving state-of-the-art performance and validity."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 National University of Singapore",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.12638 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhiyuan Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.12638" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.12638" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.12638/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating 3D molecules is vital for designing drugs & materials. Existing methods rely on 3D diffusion, yet they sometimes make invalid molecules and don't use big 1D molecule datasets. To solve this, we can use language models, which are guaranteed validity. How do we bring 1D language advantages to 3D generation? It's tough, as previous methods lack effective language models, powerful 3D models, or efficient transfer learning. 



NExT-Mol, tackles this by combining 1D language models with 3D diffusion. We pretrain a large language model on molecules, then predict 3D shapes using a diffusion model. Key innovations include scaling up the language model and refining the diffusion model. This makes sure validity, is scalable, and accurate. By leveraging pretrained language, NExT-Mol **demonstrates strong performance** in molecule generation and conformer prediction.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Combining 1D language models (LMs) with 3D diffusion models enhances molecule generation by ensuring validity and leveraging large datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The NExT-Mol architecture achieves leading performance in de novo and conditional 3D molecule generation, as well as 3D conformer prediction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Transfer learning from pretrained 1D molecule representations can significantly improve 3D conformer prediction accuracy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research addresses key limitations in 3D molecule generation, **offering a scalable & valid foundation model for drug discovery**. It provides new insights for combining language models with diffusion techniques & opens avenues for structure-based design.

------
#### Visual Insights



![](https://arxiv.org/html/2502.12638/x1.png)

> 🔼 The figure illustrates the NEXT-Mol model architecture, a novel foundation model for 3D molecule generation.  It's a two-stage process. First, a large language model (LLM) called MoLlama generates a 1D representation (SELFIES string) of a molecule.  This 1D string, which guarantees 100% valid molecules, is then fed into a 3D diffusion model (DMT) to predict the 3D conformer (3D structure) of the molecule. Critically, transfer learning is employed: the knowledge gained by MoLlama in learning 1D molecular representations is transferred to improve the accuracy of the 3D conformer predictions by DMT.  The figure visually depicts these three key components (MoLlama, DMT, and the transfer learning) and their interactions, showcasing the overall process of generating 3D molecular structures.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our NExT-Mol foundation model for 3D molecule generation. NExT-Mol consists of three key components: (1) MoLlama, a large LM for generating 1D molecule sequences; (2) DMT, a diffusion model to predict 3D conformers from the 1D sequences; and (3) NExT-Mol leverages transfer learning to enhance DMT’s 3D prediction with MoLlama’s 1D representations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.SS2.p5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS2.p5.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS2.p5.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.p5.1.1.1.1.1">
<span class="ltx_p" id="S3.SS2.p5.1.1.1.1.1.1" style="width:184.9pt;">
<span class="ltx_equation ltx_eqn_table" id="S3.E1">
<span><span class="ltx_equation ltx_eqn_row ltx_align_baseline">
<span class="ltx_eqn_cell ltx_eqn_center_padleft"></span>
<span class="ltx_eqn_cell ltx_align_center"><math alttext="[\mathbf{Q};\mathbf{K};\mathbf{V}]=[\mathbf{W}_{q};\mathbf{W}_{k};\mathbf{W}_{%
v}]{\mathbf{H}}^{\top}," class="ltx_Math" display="block" id="S3.E1.m1.4"><semantics id="S3.E1.m1.4a"><mrow id="S3.E1.m1.4.4.1" xref="S3.E1.m1.4.4.1.1.cmml"><mrow id="S3.E1.m1.4.4.1.1" xref="S3.E1.m1.4.4.1.1.cmml"><mrow id="S3.E1.m1.4.4.1.1.5.2" xref="S3.E1.m1.4.4.1.1.5.1.cmml"><mo id="S3.E1.m1.4.4.1.1.5.2.1" stretchy="false" xref="S3.E1.m1.4.4.1.1.5.1.cmml">[</mo><mi id="S3.E1.m1.1.1" xref="S3.E1.m1.1.1.cmml">𝐐</mi><mo id="S3.E1.m1.4.4.1.1.5.2.2" xref="S3.E1.m1.4.4.1.1.5.1.cmml">;</mo><mi id="S3.E1.m1.2.2" xref="S3.E1.m1.2.2.cmml">𝐊</mi><mo id="S3.E1.m1.4.4.1.1.5.2.3" xref="S3.E1.m1.4.4.1.1.5.1.cmml">;</mo><mi id="S3.E1.m1.3.3" xref="S3.E1.m1.3.3.cmml">𝐕</mi><mo id="S3.E1.m1.4.4.1.1.5.2.4" stretchy="false" xref="S3.E1.m1.4.4.1.1.5.1.cmml">]</mo></mrow><mo id="S3.E1.m1.4.4.1.1.4" xref="S3.E1.m1.4.4.1.1.4.cmml">=</mo><mrow id="S3.E1.m1.4.4.1.1.3" xref="S3.E1.m1.4.4.1.1.3.cmml"><mrow id="S3.E1.m1.4.4.1.1.3.3.3" xref="S3.E1.m1.4.4.1.1.3.3.4.cmml"><mo id="S3.E1.m1.4.4.1.1.3.3.3.4" stretchy="false" xref="S3.E1.m1.4.4.1.1.3.3.4.cmml">[</mo><msub id="S3.E1.m1.4.4.1.1.1.1.1.1" xref="S3.E1.m1.4.4.1.1.1.1.1.1.cmml"><mi id="S3.E1.m1.4.4.1.1.1.1.1.1.2" xref="S3.E1.m1.4.4.1.1.1.1.1.1.2.cmml">𝐖</mi><mi id="S3.E1.m1.4.4.1.1.1.1.1.1.3" xref="S3.E1.m1.4.4.1.1.1.1.1.1.3.cmml">q</mi></msub><mo id="S3.E1.m1.4.4.1.1.3.3.3.5" xref="S3.E1.m1.4.4.1.1.3.3.4.cmml">;</mo><msub id="S3.E1.m1.4.4.1.1.2.2.2.2" xref="S3.E1.m1.4.4.1.1.2.2.2.2.cmml"><mi id="S3.E1.m1.4.4.1.1.2.2.2.2.2" xref="S3.E1.m1.4.4.1.1.2.2.2.2.2.cmml">𝐖</mi><mi id="S3.E1.m1.4.4.1.1.2.2.2.2.3" xref="S3.E1.m1.4.4.1.1.2.2.2.2.3.cmml">k</mi></msub><mo id="S3.E1.m1.4.4.1.1.3.3.3.6" xref="S3.E1.m1.4.4.1.1.3.3.4.cmml">;</mo><msub id="S3.E1.m1.4.4.1.1.3.3.3.3" xref="S3.E1.m1.4.4.1.1.3.3.3.3.cmml"><mi id="S3.E1.m1.4.4.1.1.3.3.3.3.2" xref="S3.E1.m1.4.4.1.1.3.3.3.3.2.cmml">𝐖</mi><mi id="S3.E1.m1.4.4.1.1.3.3.3.3.3" xref="S3.E1.m1.4.4.1.1.3.3.3.3.3.cmml">v</mi></msub><mo id="S3.E1.m1.4.4.1.1.3.3.3.7" stretchy="false" xref="S3.E1.m1.4.4.1.1.3.3.4.cmml">]</mo></mrow><mo id="S3.E1.m1.4.4.1.1.3.4" xref="S3.E1.m1.4.4.1.1.3.4.cmml">⁢</mo><msup id="S3.E1.m1.4.4.1.1.3.5" xref="S3.E1.m1.4.4.1.1.3.5.cmml"><mi id="S3.E1.m1.4.4.1.1.3.5.2" xref="S3.E1.m1.4.4.1.1.3.5.2.cmml">𝐇</mi><mo id="S3.E1.m1.4.4.1.1.3.5.3" xref="S3.E1.m1.4.4.1.1.3.5.3.cmml">⊤</mo></msup></mrow></mrow><mo id="S3.E1.m1.4.4.1.2" xref="S3.E1.m1.4.4.1.1.cmml">,</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.E1.m1.4b"><apply id="S3.E1.m1.4.4.1.1.cmml" xref="S3.E1.m1.4.4.1"><eq id="S3.E1.m1.4.4.1.1.4.cmml" xref="S3.E1.m1.4.4.1.1.4"></eq><list id="S3.E1.m1.4.4.1.1.5.1.cmml" xref="S3.E1.m1.4.4.1.1.5.2"><ci id="S3.E1.m1.1.1.cmml" xref="S3.E1.m1.1.1">𝐐</ci><ci id="S3.E1.m1.2.2.cmml" xref="S3.E1.m1.2.2">𝐊</ci><ci id="S3.E1.m1.3.3.cmml" xref="S3.E1.m1.3.3">𝐕</ci></list><apply id="S3.E1.m1.4.4.1.1.3.cmml" xref="S3.E1.m1.4.4.1.1.3"><times id="S3.E1.m1.4.4.1.1.3.4.cmml" xref="S3.E1.m1.4.4.1.1.3.4"></times><list id="S3.E1.m1.4.4.1.1.3.3.4.cmml" xref="S3.E1.m1.4.4.1.1.3.3.3"><apply id="S3.E1.m1.4.4.1.1.1.1.1.1.cmml" xref="S3.E1.m1.4.4.1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.E1.m1.4.4.1.1.1.1.1.1.1.cmml" xref="S3.E1.m1.4.4.1.1.1.1.1.1">subscript</csymbol><ci id="S3.E1.m1.4.4.1.1.1.1.1.1.2.cmml" xref="S3.E1.m1.4.4.1.1.1.1.1.1.2">𝐖</ci><ci id="S3.E1.m1.4.4.1.1.1.1.1.1.3.cmml" xref="S3.E1.m1.4.4.1.1.1.1.1.1.3">𝑞</ci></apply><apply id="S3.E1.m1.4.4.1.1.2.2.2.2.cmml" xref="S3.E1.m1.4.4.1.1.2.2.2.2"><csymbol cd="ambiguous" id="S3.E1.m1.4.4.1.1.2.2.2.2.1.cmml" xref="S3.E1.m1.4.4.1.1.2.2.2.2">subscript</csymbol><ci id="S3.E1.m1.4.4.1.1.2.2.2.2.2.cmml" xref="S3.E1.m1.4.4.1.1.2.2.2.2.2">𝐖</ci><ci id="S3.E1.m1.4.4.1.1.2.2.2.2.3.cmml" xref="S3.E1.m1.4.4.1.1.2.2.2.2.3">𝑘</ci></apply><apply id="S3.E1.m1.4.4.1.1.3.3.3.3.cmml" xref="S3.E1.m1.4.4.1.1.3.3.3.3"><csymbol cd="ambiguous" id="S3.E1.m1.4.4.1.1.3.3.3.3.1.cmml" xref="S3.E1.m1.4.4.1.1.3.3.3.3">subscript</csymbol><ci id="S3.E1.m1.4.4.1.1.3.3.3.3.2.cmml" xref="S3.E1.m1.4.4.1.1.3.3.3.3.2">𝐖</ci><ci id="S3.E1.m1.4.4.1.1.3.3.3.3.3.cmml" xref="S3.E1.m1.4.4.1.1.3.3.3.3.3">𝑣</ci></apply></list><apply id="S3.E1.m1.4.4.1.1.3.5.cmml" xref="S3.E1.m1.4.4.1.1.3.5"><csymbol cd="ambiguous" id="S3.E1.m1.4.4.1.1.3.5.1.cmml" xref="S3.E1.m1.4.4.1.1.3.5">superscript</csymbol><ci id="S3.E1.m1.4.4.1.1.3.5.2.cmml" xref="S3.E1.m1.4.4.1.1.3.5.2">𝐇</ci><csymbol cd="latexml" id="S3.E1.m1.4.4.1.1.3.5.3.cmml" xref="S3.E1.m1.4.4.1.1.3.5.3">top</csymbol></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.E1.m1.4c">[\mathbf{Q};\mathbf{K};\mathbf{V}]=[\mathbf{W}_{q};\mathbf{W}_{k};\mathbf{W}_{%
v}]{\mathbf{H}}^{\top},</annotation><annotation encoding="application/x-llamapun" id="S3.E1.m1.4d">[ bold_Q ; bold_K ; bold_V ] = [ bold_W start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT ; bold_W start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT ; bold_W start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT ] bold_H start_POSTSUPERSCRIPT ⊤ end_POSTSUPERSCRIPT ,</annotation></semantics></math></span>
<span class="ltx_eqn_cell ltx_eqn_center_padright"></span>
<span class="ltx_eqn_cell ltx_eqn_eqno ltx_align_middle ltx_align_right" rowspan="1"><span class="ltx_tag ltx_tag_equation ltx_align_right">(1)</span></span></span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS2.p5.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.p5.1.1.1.2.1">
<span class="ltx_p" id="S3.SS2.p5.1.1.1.2.1.1" style="width:184.9pt;">
<span class="ltx_equation ltx_eqn_table" id="S3.E2">
<span><span class="ltx_equation ltx_eqn_row ltx_align_baseline">
<span class="ltx_eqn_cell ltx_eqn_center_padleft"></span>
<span class="ltx_eqn_cell ltx_align_center"><math alttext="[\mathbf{Q}^{E};\mathbf{V}^{E}]=\tanh([\mathbf{W}_{eq};\mathbf{W}_{ev}]{%
\mathbf{E}}^{\top})," class="ltx_Math" display="block" id="S3.E2.m1.2"><semantics id="S3.E2.m1.2a"><mrow id="S3.E2.m1.2.2.1" xref="S3.E2.m1.2.2.1.1.cmml"><mrow id="S3.E2.m1.2.2.1.1" xref="S3.E2.m1.2.2.1.1.cmml"><mrow id="S3.E2.m1.2.2.1.1.2.2" xref="S3.E2.m1.2.2.1.1.2.3.cmml"><mo id="S3.E2.m1.2.2.1.1.2.2.3" stretchy="false" xref="S3.E2.m1.2.2.1.1.2.3.cmml">[</mo><msup id="S3.E2.m1.2.2.1.1.1.1.1" xref="S3.E2.m1.2.2.1.1.1.1.1.cmml"><mi id="S3.E2.m1.2.2.1.1.1.1.1.2" xref="S3.E2.m1.2.2.1.1.1.1.1.2.cmml">𝐐</mi><mi id="S3.E2.m1.2.2.1.1.1.1.1.3" xref="S3.E2.m1.2.2.1.1.1.1.1.3.cmml">E</mi></msup><mo id="S3.E2.m1.2.2.1.1.2.2.4" xref="S3.E2.m1.2.2.1.1.2.3.cmml">;</mo><msup id="S3.E2.m1.2.2.1.1.2.2.2" xref="S3.E2.m1.2.2.1.1.2.2.2.cmml"><mi id="S3.E2.m1.2.2.1.1.2.2.2.2" xref="S3.E2.m1.2.2.1.1.2.2.2.2.cmml">𝐕</mi><mi id="S3.E2.m1.2.2.1.1.2.2.2.3" xref="S3.E2.m1.2.2.1.1.2.2.2.3.cmml">E</mi></msup><mo id="S3.E2.m1.2.2.1.1.2.2.5" stretchy="false" xref="S3.E2.m1.2.2.1.1.2.3.cmml">]</mo></mrow><mo id="S3.E2.m1.2.2.1.1.4" xref="S3.E2.m1.2.2.1.1.4.cmml">=</mo><mrow id="S3.E2.m1.2.2.1.1.3.1" xref="S3.E2.m1.2.2.1.1.3.2.cmml"><mi id="S3.E2.m1.1.1" xref="S3.E2.m1.1.1.cmml">tanh</mi><mo id="S3.E2.m1.2.2.1.1.3.1a" xref="S3.E2.m1.2.2.1.1.3.2.cmml">⁡</mo><mrow id="S3.E2.m1.2.2.1.1.3.1.1" xref="S3.E2.m1.2.2.1.1.3.2.cmml"><mo id="S3.E2.m1.2.2.1.1.3.1.1.2" stretchy="false" xref="S3.E2.m1.2.2.1.1.3.2.cmml">(</mo><mrow id="S3.E2.m1.2.2.1.1.3.1.1.1" xref="S3.E2.m1.2.2.1.1.3.1.1.1.cmml"><mrow id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.3.cmml"><mo id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.3" stretchy="false" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.3.cmml">[</mo><msub id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.cmml"><mi id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.2" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.2.cmml">𝐖</mi><mrow id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.cmml"><mi id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.2" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.2.cmml">e</mi><mo id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.1" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.3" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.3.cmml">q</mi></mrow></msub><mo id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.4" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.3.cmml">;</mo><msub id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.cmml"><mi id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.2" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.2.cmml">𝐖</mi><mrow id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.cmml"><mi id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.2" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.2.cmml">e</mi><mo id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.1" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.1.cmml">⁢</mo><mi id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.3" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.3.cmml">v</mi></mrow></msub><mo id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.5" stretchy="false" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.3.cmml">]</mo></mrow><mo id="S3.E2.m1.2.2.1.1.3.1.1.1.3" xref="S3.E2.m1.2.2.1.1.3.1.1.1.3.cmml">⁢</mo><msup id="S3.E2.m1.2.2.1.1.3.1.1.1.4" xref="S3.E2.m1.2.2.1.1.3.1.1.1.4.cmml"><mi id="S3.E2.m1.2.2.1.1.3.1.1.1.4.2" xref="S3.E2.m1.2.2.1.1.3.1.1.1.4.2.cmml">𝐄</mi><mo id="S3.E2.m1.2.2.1.1.3.1.1.1.4.3" xref="S3.E2.m1.2.2.1.1.3.1.1.1.4.3.cmml">⊤</mo></msup></mrow><mo id="S3.E2.m1.2.2.1.1.3.1.1.3" stretchy="false" xref="S3.E2.m1.2.2.1.1.3.2.cmml">)</mo></mrow></mrow></mrow><mo id="S3.E2.m1.2.2.1.2" xref="S3.E2.m1.2.2.1.1.cmml">,</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.E2.m1.2b"><apply id="S3.E2.m1.2.2.1.1.cmml" xref="S3.E2.m1.2.2.1"><eq id="S3.E2.m1.2.2.1.1.4.cmml" xref="S3.E2.m1.2.2.1.1.4"></eq><list id="S3.E2.m1.2.2.1.1.2.3.cmml" xref="S3.E2.m1.2.2.1.1.2.2"><apply id="S3.E2.m1.2.2.1.1.1.1.1.cmml" xref="S3.E2.m1.2.2.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.E2.m1.2.2.1.1.1.1.1.1.cmml" xref="S3.E2.m1.2.2.1.1.1.1.1">superscript</csymbol><ci id="S3.E2.m1.2.2.1.1.1.1.1.2.cmml" xref="S3.E2.m1.2.2.1.1.1.1.1.2">𝐐</ci><ci id="S3.E2.m1.2.2.1.1.1.1.1.3.cmml" xref="S3.E2.m1.2.2.1.1.1.1.1.3">𝐸</ci></apply><apply id="S3.E2.m1.2.2.1.1.2.2.2.cmml" xref="S3.E2.m1.2.2.1.1.2.2.2"><csymbol cd="ambiguous" id="S3.E2.m1.2.2.1.1.2.2.2.1.cmml" xref="S3.E2.m1.2.2.1.1.2.2.2">superscript</csymbol><ci id="S3.E2.m1.2.2.1.1.2.2.2.2.cmml" xref="S3.E2.m1.2.2.1.1.2.2.2.2">𝐕</ci><ci id="S3.E2.m1.2.2.1.1.2.2.2.3.cmml" xref="S3.E2.m1.2.2.1.1.2.2.2.3">𝐸</ci></apply></list><apply id="S3.E2.m1.2.2.1.1.3.2.cmml" xref="S3.E2.m1.2.2.1.1.3.1"><tanh id="S3.E2.m1.1.1.cmml" xref="S3.E2.m1.1.1"></tanh><apply id="S3.E2.m1.2.2.1.1.3.1.1.1.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1"><times id="S3.E2.m1.2.2.1.1.3.1.1.1.3.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.3"></times><list id="S3.E2.m1.2.2.1.1.3.1.1.1.2.3.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2"><apply id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.1.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1">subscript</csymbol><ci id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.2.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.2">𝐖</ci><apply id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3"><times id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.1.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.1"></times><ci id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.2.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.2">𝑒</ci><ci id="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.3.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.1.1.1.3.3">𝑞</ci></apply></apply><apply id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2"><csymbol cd="ambiguous" id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.1.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2">subscript</csymbol><ci id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.2.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.2">𝐖</ci><apply id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3"><times id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.1.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.1"></times><ci id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.2.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.2">𝑒</ci><ci id="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.3.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.2.2.2.3.3">𝑣</ci></apply></apply></list><apply id="S3.E2.m1.2.2.1.1.3.1.1.1.4.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.4"><csymbol cd="ambiguous" id="S3.E2.m1.2.2.1.1.3.1.1.1.4.1.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.4">superscript</csymbol><ci id="S3.E2.m1.2.2.1.1.3.1.1.1.4.2.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.4.2">𝐄</ci><csymbol cd="latexml" id="S3.E2.m1.2.2.1.1.3.1.1.1.4.3.cmml" xref="S3.E2.m1.2.2.1.1.3.1.1.1.4.3">top</csymbol></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.E2.m1.2c">[\mathbf{Q}^{E};\mathbf{V}^{E}]=\tanh([\mathbf{W}_{eq};\mathbf{W}_{ev}]{%
\mathbf{E}}^{\top}),</annotation><annotation encoding="application/x-llamapun" id="S3.E2.m1.2d">[ bold_Q start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT ; bold_V start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT ] = roman_tanh ( [ bold_W start_POSTSUBSCRIPT italic_e italic_q end_POSTSUBSCRIPT ; bold_W start_POSTSUBSCRIPT italic_e italic_v end_POSTSUBSCRIPT ] bold_E start_POSTSUPERSCRIPT ⊤ end_POSTSUPERSCRIPT ) ,</annotation></semantics></math></span>
<span class="ltx_eqn_cell ltx_eqn_center_padright"></span>
<span class="ltx_eqn_cell ltx_eqn_eqno ltx_align_middle ltx_align_right" rowspan="1"><span class="ltx_tag ltx_tag_equation ltx_align_right">(2)</span></span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.p5.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS2.p5.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.p5.1.2.2.1.1">
<span class="ltx_p" id="S3.SS2.p5.1.2.2.1.1.1" style="width:184.9pt;">
<span class="ltx_equation ltx_eqn_table" id="S3.E3">
<span><span class="ltx_equation ltx_eqn_row ltx_align_baseline">
<span class="ltx_eqn_cell ltx_eqn_center_padleft"></span>
<span class="ltx_eqn_cell ltx_align_center"><math alttext="a_{i,j}=\mathrm{softmax}_{j}(\frac{(\mathbf{Q}^{E}_{i,j}\odot\mathbf{Q}_{i}){%
\mathbf{K}}^{\top}_{j}}{\sqrt{d}})," class="ltx_Math" display="block" id="S3.E3.m1.6"><semantics id="S3.E3.m1.6a"><mrow id="S3.E3.m1.6.6.1" xref="S3.E3.m1.6.6.1.1.cmml"><mrow id="S3.E3.m1.6.6.1.1" xref="S3.E3.m1.6.6.1.1.cmml"><msub id="S3.E3.m1.6.6.1.1.2" xref="S3.E3.m1.6.6.1.1.2.cmml"><mi id="S3.E3.m1.6.6.1.1.2.2" xref="S3.E3.m1.6.6.1.1.2.2.cmml">a</mi><mrow id="S3.E3.m1.2.2.2.4" xref="S3.E3.m1.2.2.2.3.cmml"><mi id="S3.E3.m1.1.1.1.1" xref="S3.E3.m1.1.1.1.1.cmml">i</mi><mo id="S3.E3.m1.2.2.2.4.1" xref="S3.E3.m1.2.2.2.3.cmml">,</mo><mi id="S3.E3.m1.2.2.2.2" xref="S3.E3.m1.2.2.2.2.cmml">j</mi></mrow></msub><mo id="S3.E3.m1.6.6.1.1.1" xref="S3.E3.m1.6.6.1.1.1.cmml">=</mo><mrow id="S3.E3.m1.6.6.1.1.3" xref="S3.E3.m1.6.6.1.1.3.cmml"><msub id="S3.E3.m1.6.6.1.1.3.2" xref="S3.E3.m1.6.6.1.1.3.2.cmml"><mi id="S3.E3.m1.6.6.1.1.3.2.2" xref="S3.E3.m1.6.6.1.1.3.2.2.cmml">softmax</mi><mi id="S3.E3.m1.6.6.1.1.3.2.3" xref="S3.E3.m1.6.6.1.1.3.2.3.cmml">j</mi></msub><mo id="S3.E3.m1.6.6.1.1.3.1" xref="S3.E3.m1.6.6.1.1.3.1.cmml">⁢</mo><mrow id="S3.E3.m1.6.6.1.1.3.3.2" xref="S3.E3.m1.5.5.cmml"><mo id="S3.E3.m1.6.6.1.1.3.3.2.1" stretchy="false" xref="S3.E3.m1.5.5.cmml">(</mo><mfrac id="S3.E3.m1.5.5" xref="S3.E3.m1.5.5.cmml"><mrow id="S3.E3.m1.5.5.3" xref="S3.E3.m1.5.5.3.cmml"><mrow id="S3.E3.m1.5.5.3.3.1" xref="S3.E3.m1.5.5.3.3.1.1.cmml"><mo id="S3.E3.m1.5.5.3.3.1.2" stretchy="false" xref="S3.E3.m1.5.5.3.3.1.1.cmml">(</mo><mrow id="S3.E3.m1.5.5.3.3.1.1" xref="S3.E3.m1.5.5.3.3.1.1.cmml"><msubsup id="S3.E3.m1.5.5.3.3.1.1.2" xref="S3.E3.m1.5.5.3.3.1.1.2.cmml"><mi id="S3.E3.m1.5.5.3.3.1.1.2.2.2" xref="S3.E3.m1.5.5.3.3.1.1.2.2.2.cmml">𝐐</mi><mrow id="S3.E3.m1.4.4.2.2.2.4" xref="S3.E3.m1.4.4.2.2.2.3.cmml"><mi id="S3.E3.m1.3.3.1.1.1.1" xref="S3.E3.m1.3.3.1.1.1.1.cmml">i</mi><mo id="S3.E3.m1.4.4.2.2.2.4.1" xref="S3.E3.m1.4.4.2.2.2.3.cmml">,</mo><mi id="S3.E3.m1.4.4.2.2.2.2" xref="S3.E3.m1.4.4.2.2.2.2.cmml">j</mi></mrow><mi id="S3.E3.m1.5.5.3.3.1.1.2.2.3" xref="S3.E3.m1.5.5.3.3.1.1.2.2.3.cmml">E</mi></msubsup><mo id="S3.E3.m1.5.5.3.3.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.E3.m1.5.5.3.3.1.1.1.cmml">⊙</mo><msub id="S3.E3.m1.5.5.3.3.1.1.3" xref="S3.E3.m1.5.5.3.3.1.1.3.cmml"><mi id="S3.E3.m1.5.5.3.3.1.1.3.2" xref="S3.E3.m1.5.5.3.3.1.1.3.2.cmml">𝐐</mi><mi id="S3.E3.m1.5.5.3.3.1.1.3.3" xref="S3.E3.m1.5.5.3.3.1.1.3.3.cmml">i</mi></msub></mrow><mo id="S3.E3.m1.5.5.3.3.1.3" stretchy="false" xref="S3.E3.m1.5.5.3.3.1.1.cmml">)</mo></mrow><mo id="S3.E3.m1.5.5.3.4" xref="S3.E3.m1.5.5.3.4.cmml">⁢</mo><msubsup id="S3.E3.m1.5.5.3.5" xref="S3.E3.m1.5.5.3.5.cmml"><mi id="S3.E3.m1.5.5.3.5.2.2" xref="S3.E3.m1.5.5.3.5.2.2.cmml">𝐊</mi><mi id="S3.E3.m1.5.5.3.5.3" xref="S3.E3.m1.5.5.3.5.3.cmml">j</mi><mo id="S3.E3.m1.5.5.3.5.2.3" xref="S3.E3.m1.5.5.3.5.2.3.cmml">⊤</mo></msubsup></mrow><msqrt id="S3.E3.m1.5.5.5" xref="S3.E3.m1.5.5.5.cmml"><mi id="S3.E3.m1.5.5.5.2" xref="S3.E3.m1.5.5.5.2.cmml">d</mi></msqrt></mfrac><mo id="S3.E3.m1.6.6.1.1.3.3.2.2" stretchy="false" xref="S3.E3.m1.5.5.cmml">)</mo></mrow></mrow></mrow><mo id="S3.E3.m1.6.6.1.2" xref="S3.E3.m1.6.6.1.1.cmml">,</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.E3.m1.6b"><apply id="S3.E3.m1.6.6.1.1.cmml" xref="S3.E3.m1.6.6.1"><eq id="S3.E3.m1.6.6.1.1.1.cmml" xref="S3.E3.m1.6.6.1.1.1"></eq><apply id="S3.E3.m1.6.6.1.1.2.cmml" xref="S3.E3.m1.6.6.1.1.2"><csymbol cd="ambiguous" id="S3.E3.m1.6.6.1.1.2.1.cmml" xref="S3.E3.m1.6.6.1.1.2">subscript</csymbol><ci id="S3.E3.m1.6.6.1.1.2.2.cmml" xref="S3.E3.m1.6.6.1.1.2.2">𝑎</ci><list id="S3.E3.m1.2.2.2.3.cmml" xref="S3.E3.m1.2.2.2.4"><ci id="S3.E3.m1.1.1.1.1.cmml" xref="S3.E3.m1.1.1.1.1">𝑖</ci><ci id="S3.E3.m1.2.2.2.2.cmml" xref="S3.E3.m1.2.2.2.2">𝑗</ci></list></apply><apply id="S3.E3.m1.6.6.1.1.3.cmml" xref="S3.E3.m1.6.6.1.1.3"><times id="S3.E3.m1.6.6.1.1.3.1.cmml" xref="S3.E3.m1.6.6.1.1.3.1"></times><apply id="S3.E3.m1.6.6.1.1.3.2.cmml" xref="S3.E3.m1.6.6.1.1.3.2"><csymbol cd="ambiguous" id="S3.E3.m1.6.6.1.1.3.2.1.cmml" xref="S3.E3.m1.6.6.1.1.3.2">subscript</csymbol><ci id="S3.E3.m1.6.6.1.1.3.2.2.cmml" xref="S3.E3.m1.6.6.1.1.3.2.2">softmax</ci><ci id="S3.E3.m1.6.6.1.1.3.2.3.cmml" xref="S3.E3.m1.6.6.1.1.3.2.3">𝑗</ci></apply><apply id="S3.E3.m1.5.5.cmml" xref="S3.E3.m1.6.6.1.1.3.3.2"><divide id="S3.E3.m1.5.5.4.cmml" xref="S3.E3.m1.6.6.1.1.3.3.2"></divide><apply id="S3.E3.m1.5.5.3.cmml" xref="S3.E3.m1.5.5.3"><times id="S3.E3.m1.5.5.3.4.cmml" xref="S3.E3.m1.5.5.3.4"></times><apply id="S3.E3.m1.5.5.3.3.1.1.cmml" xref="S3.E3.m1.5.5.3.3.1"><csymbol cd="latexml" id="S3.E3.m1.5.5.3.3.1.1.1.cmml" xref="S3.E3.m1.5.5.3.3.1.1.1">direct-product</csymbol><apply id="S3.E3.m1.5.5.3.3.1.1.2.cmml" xref="S3.E3.m1.5.5.3.3.1.1.2"><csymbol cd="ambiguous" id="S3.E3.m1.5.5.3.3.1.1.2.1.cmml" xref="S3.E3.m1.5.5.3.3.1.1.2">subscript</csymbol><apply id="S3.E3.m1.5.5.3.3.1.1.2.2.cmml" xref="S3.E3.m1.5.5.3.3.1.1.2"><csymbol cd="ambiguous" id="S3.E3.m1.5.5.3.3.1.1.2.2.1.cmml" xref="S3.E3.m1.5.5.3.3.1.1.2">superscript</csymbol><ci id="S3.E3.m1.5.5.3.3.1.1.2.2.2.cmml" xref="S3.E3.m1.5.5.3.3.1.1.2.2.2">𝐐</ci><ci id="S3.E3.m1.5.5.3.3.1.1.2.2.3.cmml" xref="S3.E3.m1.5.5.3.3.1.1.2.2.3">𝐸</ci></apply><list id="S3.E3.m1.4.4.2.2.2.3.cmml" xref="S3.E3.m1.4.4.2.2.2.4"><ci id="S3.E3.m1.3.3.1.1.1.1.cmml" xref="S3.E3.m1.3.3.1.1.1.1">𝑖</ci><ci id="S3.E3.m1.4.4.2.2.2.2.cmml" xref="S3.E3.m1.4.4.2.2.2.2">𝑗</ci></list></apply><apply id="S3.E3.m1.5.5.3.3.1.1.3.cmml" xref="S3.E3.m1.5.5.3.3.1.1.3"><csymbol cd="ambiguous" id="S3.E3.m1.5.5.3.3.1.1.3.1.cmml" xref="S3.E3.m1.5.5.3.3.1.1.3">subscript</csymbol><ci id="S3.E3.m1.5.5.3.3.1.1.3.2.cmml" xref="S3.E3.m1.5.5.3.3.1.1.3.2">𝐐</ci><ci id="S3.E3.m1.5.5.3.3.1.1.3.3.cmml" xref="S3.E3.m1.5.5.3.3.1.1.3.3">𝑖</ci></apply></apply><apply id="S3.E3.m1.5.5.3.5.cmml" xref="S3.E3.m1.5.5.3.5"><csymbol cd="ambiguous" id="S3.E3.m1.5.5.3.5.1.cmml" xref="S3.E3.m1.5.5.3.5">subscript</csymbol><apply id="S3.E3.m1.5.5.3.5.2.cmml" xref="S3.E3.m1.5.5.3.5"><csymbol cd="ambiguous" id="S3.E3.m1.5.5.3.5.2.1.cmml" xref="S3.E3.m1.5.5.3.5">superscript</csymbol><ci id="S3.E3.m1.5.5.3.5.2.2.cmml" xref="S3.E3.m1.5.5.3.5.2.2">𝐊</ci><csymbol cd="latexml" id="S3.E3.m1.5.5.3.5.2.3.cmml" xref="S3.E3.m1.5.5.3.5.2.3">top</csymbol></apply><ci id="S3.E3.m1.5.5.3.5.3.cmml" xref="S3.E3.m1.5.5.3.5.3">𝑗</ci></apply></apply><apply id="S3.E3.m1.5.5.5.cmml" xref="S3.E3.m1.5.5.5"><root id="S3.E3.m1.5.5.5a.cmml" xref="S3.E3.m1.5.5.5"></root><ci id="S3.E3.m1.5.5.5.2.cmml" xref="S3.E3.m1.5.5.5.2">𝑑</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.E3.m1.6c">a_{i,j}=\mathrm{softmax}_{j}(\frac{(\mathbf{Q}^{E}_{i,j}\odot\mathbf{Q}_{i}){%
\mathbf{K}}^{\top}_{j}}{\sqrt{d}}),</annotation><annotation encoding="application/x-llamapun" id="S3.E3.m1.6d">italic_a start_POSTSUBSCRIPT italic_i , italic_j end_POSTSUBSCRIPT = roman_softmax start_POSTSUBSCRIPT italic_j end_POSTSUBSCRIPT ( divide start_ARG ( bold_Q start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i , italic_j end_POSTSUBSCRIPT ⊙ bold_Q start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ) bold_K start_POSTSUPERSCRIPT ⊤ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_j end_POSTSUBSCRIPT end_ARG start_ARG square-root start_ARG italic_d end_ARG end_ARG ) ,</annotation></semantics></math></span>
<span class="ltx_eqn_cell ltx_eqn_center_padright"></span>
<span class="ltx_eqn_cell ltx_eqn_eqno ltx_align_middle ltx_align_right" rowspan="1"><span class="ltx_tag ltx_tag_equation ltx_align_right">(3)</span></span></span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS2.p5.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.p5.1.2.2.2.1">
<span class="ltx_p" id="S3.SS2.p5.1.2.2.2.1.1" style="width:184.9pt;">
<span class="ltx_equation ltx_eqn_table" id="S3.E4">
<span><span class="ltx_equation ltx_eqn_row ltx_align_baseline">
<span class="ltx_eqn_cell ltx_eqn_center_padleft"></span>
<span class="ltx_eqn_cell ltx_align_center"><math alttext="\mathbf{O}_{i}=\sum_{j=1}^{N}a_{i,j}(\mathbf{V}^{E}_{i,j}\odot\mathbf{V}_{j})," class="ltx_Math" display="block" id="S3.E4.m1.5"><semantics id="S3.E4.m1.5a"><mrow id="S3.E4.m1.5.5.1" xref="S3.E4.m1.5.5.1.1.cmml"><mrow id="S3.E4.m1.5.5.1.1" xref="S3.E4.m1.5.5.1.1.cmml"><msub id="S3.E4.m1.5.5.1.1.3" xref="S3.E4.m1.5.5.1.1.3.cmml"><mi id="S3.E4.m1.5.5.1.1.3.2" xref="S3.E4.m1.5.5.1.1.3.2.cmml">𝐎</mi><mi id="S3.E4.m1.5.5.1.1.3.3" xref="S3.E4.m1.5.5.1.1.3.3.cmml">i</mi></msub><mo id="S3.E4.m1.5.5.1.1.2" rspace="0.111em" xref="S3.E4.m1.5.5.1.1.2.cmml">=</mo><mrow id="S3.E4.m1.5.5.1.1.1" xref="S3.E4.m1.5.5.1.1.1.cmml"><munderover id="S3.E4.m1.5.5.1.1.1.2" xref="S3.E4.m1.5.5.1.1.1.2.cmml"><mo id="S3.E4.m1.5.5.1.1.1.2.2.2" movablelimits="false" xref="S3.E4.m1.5.5.1.1.1.2.2.2.cmml">∑</mo><mrow id="S3.E4.m1.5.5.1.1.1.2.2.3" xref="S3.E4.m1.5.5.1.1.1.2.2.3.cmml"><mi id="S3.E4.m1.5.5.1.1.1.2.2.3.2" xref="S3.E4.m1.5.5.1.1.1.2.2.3.2.cmml">j</mi><mo id="S3.E4.m1.5.5.1.1.1.2.2.3.1" xref="S3.E4.m1.5.5.1.1.1.2.2.3.1.cmml">=</mo><mn id="S3.E4.m1.5.5.1.1.1.2.2.3.3" xref="S3.E4.m1.5.5.1.1.1.2.2.3.3.cmml">1</mn></mrow><mi id="S3.E4.m1.5.5.1.1.1.2.3" xref="S3.E4.m1.5.5.1.1.1.2.3.cmml">N</mi></munderover><mrow id="S3.E4.m1.5.5.1.1.1.1" xref="S3.E4.m1.5.5.1.1.1.1.cmml"><msub id="S3.E4.m1.5.5.1.1.1.1.3" xref="S3.E4.m1.5.5.1.1.1.1.3.cmml"><mi id="S3.E4.m1.5.5.1.1.1.1.3.2" xref="S3.E4.m1.5.5.1.1.1.1.3.2.cmml">a</mi><mrow id="S3.E4.m1.2.2.2.4" xref="S3.E4.m1.2.2.2.3.cmml"><mi id="S3.E4.m1.1.1.1.1" xref="S3.E4.m1.1.1.1.1.cmml">i</mi><mo id="S3.E4.m1.2.2.2.4.1" xref="S3.E4.m1.2.2.2.3.cmml">,</mo><mi id="S3.E4.m1.2.2.2.2" xref="S3.E4.m1.2.2.2.2.cmml">j</mi></mrow></msub><mo id="S3.E4.m1.5.5.1.1.1.1.2" xref="S3.E4.m1.5.5.1.1.1.1.2.cmml">⁢</mo><mrow id="S3.E4.m1.5.5.1.1.1.1.1.1" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.cmml"><mo id="S3.E4.m1.5.5.1.1.1.1.1.1.2" stretchy="false" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S3.E4.m1.5.5.1.1.1.1.1.1.1" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.cmml"><msubsup id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.cmml"><mi id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.2" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.2.cmml">𝐕</mi><mrow id="S3.E4.m1.4.4.2.4" xref="S3.E4.m1.4.4.2.3.cmml"><mi id="S3.E4.m1.3.3.1.1" xref="S3.E4.m1.3.3.1.1.cmml">i</mi><mo id="S3.E4.m1.4.4.2.4.1" xref="S3.E4.m1.4.4.2.3.cmml">,</mo><mi id="S3.E4.m1.4.4.2.2" xref="S3.E4.m1.4.4.2.2.cmml">j</mi></mrow><mi id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.3" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.3.cmml">E</mi></msubsup><mo id="S3.E4.m1.5.5.1.1.1.1.1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.1.cmml">⊙</mo><msub id="S3.E4.m1.5.5.1.1.1.1.1.1.1.3" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.cmml"><mi id="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.2" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.2.cmml">𝐕</mi><mi id="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.3" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.3.cmml">j</mi></msub></mrow><mo id="S3.E4.m1.5.5.1.1.1.1.1.1.3" stretchy="false" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.cmml">)</mo></mrow></mrow></mrow></mrow><mo id="S3.E4.m1.5.5.1.2" xref="S3.E4.m1.5.5.1.1.cmml">,</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.E4.m1.5b"><apply id="S3.E4.m1.5.5.1.1.cmml" xref="S3.E4.m1.5.5.1"><eq id="S3.E4.m1.5.5.1.1.2.cmml" xref="S3.E4.m1.5.5.1.1.2"></eq><apply id="S3.E4.m1.5.5.1.1.3.cmml" xref="S3.E4.m1.5.5.1.1.3"><csymbol cd="ambiguous" id="S3.E4.m1.5.5.1.1.3.1.cmml" xref="S3.E4.m1.5.5.1.1.3">subscript</csymbol><ci id="S3.E4.m1.5.5.1.1.3.2.cmml" xref="S3.E4.m1.5.5.1.1.3.2">𝐎</ci><ci id="S3.E4.m1.5.5.1.1.3.3.cmml" xref="S3.E4.m1.5.5.1.1.3.3">𝑖</ci></apply><apply id="S3.E4.m1.5.5.1.1.1.cmml" xref="S3.E4.m1.5.5.1.1.1"><apply id="S3.E4.m1.5.5.1.1.1.2.cmml" xref="S3.E4.m1.5.5.1.1.1.2"><csymbol cd="ambiguous" id="S3.E4.m1.5.5.1.1.1.2.1.cmml" xref="S3.E4.m1.5.5.1.1.1.2">superscript</csymbol><apply id="S3.E4.m1.5.5.1.1.1.2.2.cmml" xref="S3.E4.m1.5.5.1.1.1.2"><csymbol cd="ambiguous" id="S3.E4.m1.5.5.1.1.1.2.2.1.cmml" xref="S3.E4.m1.5.5.1.1.1.2">subscript</csymbol><sum id="S3.E4.m1.5.5.1.1.1.2.2.2.cmml" xref="S3.E4.m1.5.5.1.1.1.2.2.2"></sum><apply id="S3.E4.m1.5.5.1.1.1.2.2.3.cmml" xref="S3.E4.m1.5.5.1.1.1.2.2.3"><eq id="S3.E4.m1.5.5.1.1.1.2.2.3.1.cmml" xref="S3.E4.m1.5.5.1.1.1.2.2.3.1"></eq><ci id="S3.E4.m1.5.5.1.1.1.2.2.3.2.cmml" xref="S3.E4.m1.5.5.1.1.1.2.2.3.2">𝑗</ci><cn id="S3.E4.m1.5.5.1.1.1.2.2.3.3.cmml" type="integer" xref="S3.E4.m1.5.5.1.1.1.2.2.3.3">1</cn></apply></apply><ci id="S3.E4.m1.5.5.1.1.1.2.3.cmml" xref="S3.E4.m1.5.5.1.1.1.2.3">𝑁</ci></apply><apply id="S3.E4.m1.5.5.1.1.1.1.cmml" xref="S3.E4.m1.5.5.1.1.1.1"><times id="S3.E4.m1.5.5.1.1.1.1.2.cmml" xref="S3.E4.m1.5.5.1.1.1.1.2"></times><apply id="S3.E4.m1.5.5.1.1.1.1.3.cmml" xref="S3.E4.m1.5.5.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.E4.m1.5.5.1.1.1.1.3.1.cmml" xref="S3.E4.m1.5.5.1.1.1.1.3">subscript</csymbol><ci id="S3.E4.m1.5.5.1.1.1.1.3.2.cmml" xref="S3.E4.m1.5.5.1.1.1.1.3.2">𝑎</ci><list id="S3.E4.m1.2.2.2.3.cmml" xref="S3.E4.m1.2.2.2.4"><ci id="S3.E4.m1.1.1.1.1.cmml" xref="S3.E4.m1.1.1.1.1">𝑖</ci><ci id="S3.E4.m1.2.2.2.2.cmml" xref="S3.E4.m1.2.2.2.2">𝑗</ci></list></apply><apply id="S3.E4.m1.5.5.1.1.1.1.1.1.1.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1"><csymbol cd="latexml" id="S3.E4.m1.5.5.1.1.1.1.1.1.1.1.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.1">direct-product</csymbol><apply id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.1.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2">subscript</csymbol><apply id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2"><csymbol cd="ambiguous" id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.1.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2">superscript</csymbol><ci id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.2.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.2">𝐕</ci><ci id="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.3.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.2.2.3">𝐸</ci></apply><list id="S3.E4.m1.4.4.2.3.cmml" xref="S3.E4.m1.4.4.2.4"><ci id="S3.E4.m1.3.3.1.1.cmml" xref="S3.E4.m1.3.3.1.1">𝑖</ci><ci id="S3.E4.m1.4.4.2.2.cmml" xref="S3.E4.m1.4.4.2.2">𝑗</ci></list></apply><apply id="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.1.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.3">subscript</csymbol><ci id="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.2.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.2">𝐕</ci><ci id="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.3.cmml" xref="S3.E4.m1.5.5.1.1.1.1.1.1.1.3.3">𝑗</ci></apply></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.E4.m1.5c">\mathbf{O}_{i}=\sum_{j=1}^{N}a_{i,j}(\mathbf{V}^{E}_{i,j}\odot\mathbf{V}_{j}),</annotation><annotation encoding="application/x-llamapun" id="S3.E4.m1.5d">bold_O start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT = ∑ start_POSTSUBSCRIPT italic_j = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_N end_POSTSUPERSCRIPT italic_a start_POSTSUBSCRIPT italic_i , italic_j end_POSTSUBSCRIPT ( bold_V start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_i , italic_j end_POSTSUBSCRIPT ⊙ bold_V start_POSTSUBSCRIPT italic_j end_POSTSUBSCRIPT ) ,</annotation></semantics></math></span>
<span class="ltx_eqn_cell ltx_eqn_center_padright"></span>
<span class="ltx_eqn_cell ltx_eqn_eqno ltx_align_middle ltx_align_right" rowspan="1"><span class="ltx_tag ltx_tag_equation ltx_align_right">(4)</span></span></span></span>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the datasets used for each of the three tasks performed in the paper: de novo 3D molecule generation, conditional 3D molecule generation, and 3D conformer prediction.  For each task, the specific dataset(s) used are detailed, providing a clear overview of the data used to train and evaluate the models.
> <details>
> <summary>read the caption</summary>
> Table 1: Datasets for each task.
> </details>





### In-depth insights


#### 3D meets 1D
The fusion of 3D and 1D representations in molecule generation is a promising avenue. **3D diffusion models excel at modeling continuous conformers**, but can struggle with validity. Conversely, **1D language models based on SELFIES guarantee valid molecules** and can leverage vast datasets. Combining these approaches, as seen in NExT-Mol, allows for both accurate 3D structure prediction and 100% validity. This hybrid strategy offers a way to capitalize on the strengths of both methodologies for improved molecule generation.

#### MoLlama Boost
The 'MoLlama Boost' concept likely explores how **pre-trained MoLlama** can enhance downstream tasks. It potentially leverages MoLlama's learned representations to improve performance in tasks like 3D conformer prediction or molecule generation. One possible mechanism is using MoLlama's embeddings as initial features for a downstream model, providing a richer starting point than random initialization. The key benefit would be **improved generalization and faster convergence**, especially when data is limited. Also this may improve geometric metrics, since extensive pre-training might help the model learn general chemical heuristics.

#### DMT Architecture
The Diffusion Molecular Transformer (DMT) architecture is a critical component, leveraging Relational Multi-Head Self-Attention (RMHA) and adaptive layernorm (adaLN). **RMHA iteratively refines atom and pair representations**, capturing intricate molecular graph structures by incorporating information about atomic interactions. Unlike some models which compromise on retaining complete 2D molecular graph data, DMT retains this detail, ensuring a more faithful representation. The multi-head version of RMHA utilizes query, key, and value transformations to capture diverse relationships, and also pair representation, and then aggregates the output adaptively informed by these structural details, enhancing overall performance. Further, random rotation augmentations are applied to improve DMT's equivariance to rotated inputs, helping the 3D diffusion process work more effectively. By combining RMHA, adaLN, and a well-designed diffusion process, DMT achieves leading performance in 3D conformer prediction.

#### Beyond Validity
**Validity in molecule generation extends beyond mere chemical feasibility**, impacting crucial aspects like distributional similarity and 3D geometry learning. 100% validity aids models in capturing true target distributions, essential for real-world applications. It grounds 3D structure prediction on sound 2D structures. Improved validity enhances geometric similarity. Essentially, ensuring molecules are valid isn't just about creating something chemically possible, but about **building a solid foundation** for meaningful and accurate molecular design.

#### Edit NEXT-Mol
While "Edit NEXT-Mol" isn't present, I can discuss potential model editing capabilities. **Model editing** allows targeted knowledge updates without retraining, crucial for adapting NEXT-Mol. Considering NEXT-Mol's architecture (LM + Diffusion), editing could involve refining the LM's chemical knowledge or adjusting the diffusion model's geometric understanding. Techniques like **knowledge distillation** could transfer specific chemical rules. Alternatively, methods like **adapter modules** could selectively modify existing parameters. Model editing might enable bias correction, improve performance on specific molecular classes, or correct known limitations like scaffold generalization or property prediction accuracy. Effective model editing would require identifying influential parameters, understanding their relationship to specific chemical properties, and carefully applying modifications. This is particularly valuable for tasks like structure-based design or drug-drug interaction prediction to update chemical rules.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.12638/x2.png)

> 🔼 Figure 2 details the architecture of the Diffusion Molecular Transformer (DMT), a core component of the NEXT-Mol model.  Panel (a) illustrates the diffusion process itself: DMT takes as input a 3D molecular structure, adds random Gaussian noise to the 3D atomic coordinates, and then learns to progressively remove that noise to generate a refined structure.  Panel (b) zooms in on a single layer of the DMT neural network, showing how it uses Relational Multi-Head Self-Attention (RMHA) to simultaneously update representations of individual atoms (H) and the relationships between pairs of atoms (E). This iterative refinement process, repeated across multiple layers, allows DMT to predict accurate 3D conformations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of DMT’s neural architecture. (a) DMT is a diffusion model learning to denoise random Gaussian perturbations ϵbold-italic-ϵ\bm{\epsilon}bold_italic_ϵ applied on the 3D coordinates of atoms. (b) DMT relies on the RMHA module to iteratively update atom representations 𝐇𝐇\mathbf{H}bold_H and pair representations 𝐄𝐄\mathbf{E}bold_E.
> </details>



![](https://arxiv.org/html/2502.12638/x3.png)

> 🔼 Figure 3 illustrates the transfer learning process used in NEXT-Mol to leverage 1D molecular representations from MoLlama to improve 3D conformer prediction with DMT.  Panel (a) details the cross-modal projector, which bridges MoLlama's output (SELFIES tokens) and the DMT's 3D prediction.  The projector addresses how the 1D sequence doesn't directly map to atoms in 3D structure (especially for Hydrogen atoms, indicated in grey).  Panel (b) outlines the three training stages for transfer learning: 1) DMT is initially trained in isolation, 2) the projector is warmed-up with MoLlama parameters frozen, and 3) the entire model is fine-tuned.  The use of snowflakes and flames in Panel (b) visually denotes which model components are frozen versus trainable during each stage.
> <details>
> <summary>read the caption</summary>
> Figure 3: Transfer learning between MoLlama’s 1D representations and DMT’s 3D prediction. (a) A cross-modal projector bridges the gap between MoLlama and DMT. Grey H atoms have no corresponding SELFIES tokens, and are replaced by a learnable token. (b) Transfer learning’s three training stages. Snowflake  denotes frozen parameters while flame  denotes trainable ones.
> </details>



![](https://arxiv.org/html/2502.12638/x14.png)

> 🔼 This table presents the results of 3D conformer prediction experiments conducted on the GEOM-DRUGS dataset.  The key aspect is that the dataset is split into subsets based on the scaffold frequency observed within the training set.  This allows for an evaluation of how well the model generalizes to unseen molecular structures (those with infrequent scaffolds).  The results are broken down for different model configurations (DMT-B and DMT-B with MoLlama) and show metrics like AMR-R (Average Minimum RMSD Recall) and AMR-P (Average Minimum RMSD Precision)  for three subsets: unseen scaffolds, scaffolds with frequency ≥1, and scaffolds with frequency ≥10. This detailed breakdown helps to assess the model's performance on various degrees of structural novelty. The caption also notes that 68 low-quality samples were removed from the dataset before evaluation, following the methodology of a prior study (Jing et al., 2022).
> <details>
> <summary>read the caption</summary>
> Table 6: 3D conformer prediction performance on GEOM-DRUGS’s test subsets, split by scaffold frequency in the training set. 68 low-quality samples are filtered following (Jing et al., 2022).
> </details>



![](https://arxiv.org/html/2502.12638/x15.png)

> 🔼 The figure visualizes 3D conformers generated by three different methods: ground truth (GT), DMT (Diffusion Molecular Transformer), and DMT+MoLlama (DMT combined with MoLlama, a language model).  The image showcases how the addition of MoLlama enhances DMT's ability to accurately predict the 3D structure of a molecule, as demonstrated by the reduction in the root mean square deviation (RMSD) between the predicted conformer and ground truth.
> <details>
> <summary>read the caption</summary>
> (a) Case 1. L to R: GT, DMT, DMT+MoLlama.
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/499_gt_3.png)

> 🔼 This figure visualizes the 3D conformers generated by three different methods: the ground truth conformer, the conformer predicted by the Diffusion Molecular Transformer (DMT) model alone, and the conformer predicted by the DMT model enhanced with MoLlama's 1D representations.  The goal is to show the improvement in 3D conformer prediction accuracy when incorporating MoLlama's 1D information, as reflected by the Root Mean Square Deviation (RMSD) values.
> <details>
> <summary>read the caption</summary>
> (b) Case 2. L to R: GT, DMT, DMT+MoLlama.
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/499_dmt.png)

> 🔼 Figure 4 showcases a comparison of ground truth (GT) 3D molecular conformations with those predicted by two models: DMT (Diffusion Molecular Transformer) alone and DMT enhanced by incorporating MoLlama's 1D representations.  For each molecule, the predicted conformer with the lowest Root Mean Square Deviation (RMSD) from the ground truth is selected for display. This visual comparison highlights the improvement in 3D conformer prediction accuracy achieved by integrating the 1D language model, showcasing NExT-Mol's ability to generate more accurate and realistic 3D molecular structures.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of 3D conformers. We select the predicted conformers with the least RMSD to the ground truth (GT).
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/499_dmt_llama.png)

> 🔼 This figure shows the impact of varying the number of sampling steps on the performance of the Diffusion Molecule Transformer (DMT-B) model for 3D conformer prediction.  The x-axis represents the number of sampling steps (on a logarithmic scale), and the y-axis shows the Average Minimum Root Mean Square Deviation (AMR).  Separate lines are shown for both AMR-Recall and AMR-Precision, illustrating the precision and recall trade-offs at different sampling step counts.  The results are presented for the GEOM-DRUGS and GEOM-QM9 datasets, revealing how the model's accuracy changes as the number of sampling steps increases. The plot demonstrates the relationship between the computational cost (more sampling steps equals more computation) and the accuracy of the model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Effect of sampling steps on AMR↓↓\downarrow↓ for 3D conformer prediction using DMT-B.
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/688_gt_4.png)

> 🔼 Figure 6 presents a comparison of the computational time required for generating conformers using different methods on the GEOM-Drugs dataset's test set.  The graph visually represents the efficiency of various approaches in predicting molecular conformations, comparing the time taken by different methods (DMT-B, DMT-L, OMEGA, and TD w/ PG). This comparison highlights the relative computational efficiency of each method, providing insights into their practical applicability in drug discovery and material design processes, where efficient generation of conformers is crucial.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of conformer generation time on the test set of the GEOM-Drugs dataset using various methods.
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/688_dmt.png)

> 🔼 This figure visualizes 3D conformers predicted by DMT-B and DMT-B enhanced with MoLlama's 1D representations.  Each row shows the ground truth conformer, a conformer predicted by DMT-B alone, and a conformer predicted by DMT-B incorporating MoLlama's 1D information.  The root mean square deviation (RMSD) values between each prediction and the ground truth conformer are shown. The improvements in prediction accuracy after incorporating MoLlama's representations are evident in the lower RMSD values.
> <details>
> <summary>read the caption</summary>
> (a) Ground truth.
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/688_dmt_llama.png)

> 🔼 The figure shows a comparison of predicted and actual 3D conformers.  Specifically, it displays a predicted 3D molecular structure generated using the Diffusion Molecular Transformer (DMT-B) model.  The caption indicates a root mean square deviation (RMSD) value of 0.90 between the predicted and true conformer, suggesting a relatively large difference in structural geometry. The visual representation highlights the discrepancies between the predicted and actual structures of the molecule.
> <details>
> <summary>read the caption</summary>
> (b) DMT-B’s prediction (RMSD = 0.90).
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/864_gt_5.png)

> 🔼 This figure shows the result of 3D conformer prediction using the DMT-B model enhanced with MoLlama's 1D representations.  Specifically, it displays a predicted 3D conformer with a low Root Mean Square Deviation (RMSD) of 0.05 compared to the ground truth. This illustrates the model's improved ability to generate accurate 3D molecular structures, particularly when leveraging information from the MoLlama language model.
> <details>
> <summary>read the caption</summary>
> (c) DMT-B + MoLlama’s prediction (RMSD = 0.05).
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/864_dmt.png)

> 🔼 Figure 7 visualizes 3D conformers and the results predicted by DMT-B and DMT-B+MoLlama. For each molecule, the conformer with the lowest RMSD to the ground truth is selected. The ground truths are selected from the test set of GEOM-DRUGS with unseen scaffolds in the training set.
> <details>
> <summary>read the caption</summary>
> (d) Ground truth.
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/864_dmt_llama.png)

> 🔼 This figure shows a comparison of three 3D conformers: a ground truth conformer, a conformer predicted using the DMT-B model, and a conformer predicted using DMT-B combined with MoLlama's 1D representations.  The root mean square deviation (RMSD) between the ground truth conformer and DMT-B's prediction is 0.87 angstroms. This illustrates the improvement achieved by incorporating the 1D representations from MoLlama to improve the accuracy of 3D conformer prediction. Lower RMSD values indicate better prediction accuracy.
> <details>
> <summary>read the caption</summary>
> (e) DMT-B’s prediction (RMSD = 0.87).
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/892_gt.png)

> 🔼 This figure visualizes the 3D conformer prediction results for a molecule.  The image shows three 3D conformers: (a) the ground truth conformer obtained from the GEOM-DRUGS dataset, (b) the conformer predicted using only the DMT-B model, and (c) the conformer predicted using both the DMT-B and MoLlama models.  The Root Mean Square Deviation (RMSD) values, a measure of structural similarity between the conformers, are provided to quantify the differences between the predicted conformers and the ground truth.  Lower RMSD values indicate better prediction accuracy.
> <details>
> <summary>read the caption</summary>
> (f) DMT-B + MoLlama’s prediction (RMSD = 0.06).
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/892_dmt.png)

> 🔼 This figure visualizes a 3D conformer predicted by DMT-B, with and without using MoLlama's 1D representations, alongside its ground truth conformer.  The root-mean-square deviation (RMSD) values are provided to quantify the difference between predicted and ground truth conformers.  The image showcases the model's capability to generate accurate and valid conformers when incorporating MoLlama's representations.
> <details>
> <summary>read the caption</summary>
> (g) Ground truth.
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/appendix_vis/892_dmt_llama.png)

> 🔼 This figure shows a comparison of three different 3D conformers for a molecule. The first conformer is the ground truth, which represents the actual 3D structure of the molecule. The second conformer was generated by the Diffusion Molecular Transformer (DMT-B) model without the assistance of the Molecular Llama (MoLlama) Language Model. The third conformer was generated by DMT-B with the assistance of MoLlama. The Root Mean Square Deviation (RMSD) values are provided for each conformer to quantify the differences between the predicted conformers and the ground truth. A lower RMSD value indicates a better prediction. In this instance, the conformer predicted by DMT-B in conjunction with MoLlama shows a significantly lower RMSD value than the conformer predicted by DMT-B alone, highlighting the effectiveness of incorporating the MoLlama Language Model to enhance the prediction accuracy of the 3D conformers.
> <details>
> <summary>read the caption</summary>
> (h) DMT-B’s prediction (RMSD = 0.84).
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/random_samples_DRUGS.png)

> 🔼 This figure visualizes a 3D conformer predicted by the model DMT-B enhanced with MoLlama's 1D representations. It shows the predicted conformer's spatial arrangement of atoms, demonstrating how incorporating MoLlama's 1D representation improves the model's ability to accurately predict 3D conformers. The RMSD (Root Mean Square Deviation) value of 0.07 indicates a relatively good match between the predicted and ground truth conformers, highlighting the effectiveness of the model.
> <details>
> <summary>read the caption</summary>
> (i) DMT-B + MoLlama’s prediction (RMSD = 0.07).
> </details>



![](https://arxiv.org/html/2502.12638/extracted/6212480/figures/random_samples_QM9.png)

> 🔼 Figure 7 visualizes 3D conformers and the prediction results by DMT-B and DMT-B+MoLlama. For each model, the conformer with the least RMSD to the ground truth conformer is selected. The conformers in the figure are selected from the test set of GEOM-DRUGS with unseen scaffolds in the training set.
> <details>
> <summary>read the caption</summary>
> (j) Ground truth.
> </details>



![](https://arxiv.org/html/2502.12638/x16.png)

> 🔼 This figure is a visualization of 3D conformers. It shows the ground truth conformer, the conformer predicted by DMT-B (a diffusion molecular transformer model), and the conformer predicted by DMT-B+MoLlama (DMT-B combined with a molecular language model, MoLlama).  The image displays the predicted conformers with the lowest RMSD (root mean square deviation) values compared to the ground truth conformer.  The goal is to demonstrate the improved accuracy of 3D conformer prediction when MoLlama is integrated with DMT-B. The RMSD values are displayed for each prediction, quantifying the difference between the predicted and ground truth conformers.
> <details>
> <summary>read the caption</summary>
> (k) DMT-B’s prediction (RMSD = 0.86).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.2.1">Dataset</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T1.1.1.2.1.1.1">De novo</span> 3D Mol Gen</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">GEOM-DRUGS, QM9-2014</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Conditional 3D Mol Gen</th>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">QM9-2014</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">3D Conformer Pred</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">GEOM-DRUGS, GEOM-QM9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different models on de novo 3D molecule generation.  The results are evaluated using two sets of metrics: 2D-Metrics and 3D-Metrics.  2D-Metrics assess the quality of the directly predicted 2D molecular graphs, while 3D-Metrics evaluate the predicted 3D coordinates, or the 2D graphs reconstructed from these 3D coordinates.  The table includes several metrics within both the 2D and 3D categories to comprehensively evaluate different aspects of molecule generation, including validity, stability, diversity, and similarity to known molecules.  Results marked with an asterisk (*) indicate that those values were reproduced by the authors using the original source code from the cited papers, while others are taken directly from a prior study by Huang et al. (2024). This allows for a direct comparison of NEXT-Mol's performance against existing state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Performances for de novo 3D molecule generation. * denotes our reproduced results using their source codes. Other baseline results are borrowed from (Huang et al., 2024). 2D-Metric evaluates the directly predicted 2D molecular graphs, whereas the 3D-Metric evaluates the predicted 3D coordinates or the 2D molecular graphs reconstructed from the 3D coordinates.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.st1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.st1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.st1.1.1.2" style="padding-left:3.5pt;padding-right:3.5pt;">2D-Metric</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st1.1.1.1.m1.1"><semantics id="S4.T2.st1.1.1.1.m1.1a"><mo id="S4.T2.st1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.st1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st1.1.1.1.m1.1b"><ci id="S4.T2.st1.1.1.1.m1.1.1.cmml" xref="S4.T2.st1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.3" style="padding-left:3.5pt;padding-right:3.5pt;">AtomStable</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.4" style="padding-left:3.5pt;padding-right:3.5pt;">MolStable</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.5" style="padding-left:3.5pt;padding-right:3.5pt;">V&amp;C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.6" style="padding-left:3.5pt;padding-right:3.5pt;">V&amp;U</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.7" style="padding-left:3.5pt;padding-right:3.5pt;">V&amp;U&amp;N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.8" style="padding-left:3.5pt;padding-right:3.5pt;">SNN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.9" style="padding-left:3.5pt;padding-right:3.5pt;">Frag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.st1.1.1.10" style="padding-left:3.5pt;padding-right:3.5pt;">Scaf</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.st1.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.st1.5.6.1.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.1.1" style="color:#808080;">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.2.1" style="color:#808080;">0.251</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.3.1" style="color:#808080;">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.4.1" style="color:#808080;">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.5.1" style="color:#808080;">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.6.1" style="color:#808080;">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.7.1" style="color:#808080;">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.8" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.8.1" style="color:#808080;">0.585</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.9" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.9.1" style="color:#808080;">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.6.1.10" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.6.1.10.1" style="color:#808080;">0.584</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.7.2.1" style="padding-left:3.5pt;padding-right:3.5pt;">MolGPT*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">0.888</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.979</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.4" style="padding-left:3.5pt;padding-right:3.5pt;">0.977</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.5" style="padding-left:3.5pt;padding-right:3.5pt;">0.957</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.6" style="padding-left:3.5pt;padding-right:3.5pt;">0.955</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.7" style="padding-left:3.5pt;padding-right:3.5pt;">0.918</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.8" style="padding-left:3.5pt;padding-right:3.5pt;">0.520</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.9" style="padding-left:3.5pt;padding-right:3.5pt;">0.991</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.7.2.10" style="padding-left:3.5pt;padding-right:3.5pt;">0.539</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.8.3.1" style="padding-left:3.5pt;padding-right:3.5pt;">MolGen*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.2" style="padding-left:3.5pt;padding-right:3.5pt;">0.655</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.8.3.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.4" style="padding-left:3.5pt;padding-right:3.5pt;">0.995</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.8.3.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.6" style="padding-left:3.5pt;padding-right:3.5pt;">0.993</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.7" style="padding-left:3.5pt;padding-right:3.5pt;">0.759</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.8" style="padding-left:3.5pt;padding-right:3.5pt;">0.513</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.9" style="padding-left:3.5pt;padding-right:3.5pt;">0.993</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.8.3.10" style="padding-left:3.5pt;padding-right:3.5pt;">0.549</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.9.4.1" style="padding-left:3.5pt;padding-right:3.5pt;">CDGS</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.2" style="padding-left:3.5pt;padding-right:3.5pt;">22.051</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.991</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">0.706</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.5" style="padding-left:3.5pt;padding-right:3.5pt;">0.285</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.6" style="padding-left:3.5pt;padding-right:3.5pt;">0.285</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.7" style="padding-left:3.5pt;padding-right:3.5pt;">0.285</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.8" style="padding-left:3.5pt;padding-right:3.5pt;">0.262</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.9" style="padding-left:3.5pt;padding-right:3.5pt;">0.789</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.9.4.10" style="padding-left:3.5pt;padding-right:3.5pt;">0.022</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.10.5.1" style="padding-left:3.5pt;padding-right:3.5pt;">JODO</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.2" style="padding-left:3.5pt;padding-right:3.5pt;">2.523</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.10.5.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.4" style="padding-left:3.5pt;padding-right:3.5pt;">0.981</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">0.874</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.6" style="padding-left:3.5pt;padding-right:3.5pt;">0.905</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.7" style="padding-left:3.5pt;padding-right:3.5pt;">0.902</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.8" style="padding-left:3.5pt;padding-right:3.5pt;">0.417</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.9" style="padding-left:3.5pt;padding-right:3.5pt;">0.993</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.10.5.10" style="padding-left:3.5pt;padding-right:3.5pt;">0.483</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.11.6.1" style="padding-left:3.5pt;padding-right:3.5pt;">MiDi*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.2" style="padding-left:3.5pt;padding-right:3.5pt;">7.054</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.968</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.4" style="padding-left:3.5pt;padding-right:3.5pt;">0.818</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.5" style="padding-left:3.5pt;padding-right:3.5pt;">0.633</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.6" style="padding-left:3.5pt;padding-right:3.5pt;">0.654</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.7" style="padding-left:3.5pt;padding-right:3.5pt;">0.652</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.8" style="padding-left:3.5pt;padding-right:3.5pt;">0.392</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.9" style="padding-left:3.5pt;padding-right:3.5pt;">0.951</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.11.6.10" style="padding-left:3.5pt;padding-right:3.5pt;">0.196</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.12.7.1" style="padding-left:3.5pt;padding-right:3.5pt;">EQGAT-diff*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.2" style="padding-left:3.5pt;padding-right:3.5pt;">6.310</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.999</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.4" style="padding-left:3.5pt;padding-right:3.5pt;">0.998</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.5" style="padding-left:3.5pt;padding-right:3.5pt;">0.959</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.6" style="padding-left:3.5pt;padding-right:3.5pt;">0.993</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.7" style="padding-left:3.5pt;padding-right:3.5pt;">0.702</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.8" style="padding-left:3.5pt;padding-right:3.5pt;">0.368</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.9" style="padding-left:3.5pt;padding-right:3.5pt;">0.986</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.12.7.10" style="padding-left:3.5pt;padding-right:3.5pt;">0.147</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.13.8.1" style="padding-left:3.5pt;padding-right:3.5pt;">NExT-Mol, ours</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.2.1">0.334</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.4.1">0.999</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.6.1">0.999</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.7.1">0.945</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.8" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.8.1">0.529</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.9" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.9.1">0.999</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.13.8.10" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.13.8.10.1">0.552</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.st1.5.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">3D-Metric</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.2.2.1" style="padding-left:3.5pt;padding-right:3.5pt;">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st1.2.2.1.m1.1"><semantics id="S4.T2.st1.2.2.1.m1.1a"><mo id="S4.T2.st1.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.st1.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st1.2.2.1.m1.1b"><ci id="S4.T2.st1.2.2.1.m1.1.1.cmml" xref="S4.T2.st1.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st1.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st1.2.2.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.5.5.6" style="padding-left:3.5pt;padding-right:3.5pt;">AtomStable</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.3.3.2" style="padding-left:3.5pt;padding-right:3.5pt;">Bond length<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st1.3.3.2.m1.1"><semantics id="S4.T2.st1.3.3.2.m1.1a"><mo id="S4.T2.st1.3.3.2.m1.1.1" stretchy="false" xref="S4.T2.st1.3.3.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st1.3.3.2.m1.1b"><ci id="S4.T2.st1.3.3.2.m1.1.1.cmml" xref="S4.T2.st1.3.3.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st1.3.3.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st1.3.3.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.4.4.3" style="padding-left:3.5pt;padding-right:3.5pt;">Bond angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st1.4.4.3.m1.1"><semantics id="S4.T2.st1.4.4.3.m1.1a"><mo id="S4.T2.st1.4.4.3.m1.1.1" stretchy="false" xref="S4.T2.st1.4.4.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st1.4.4.3.m1.1b"><ci id="S4.T2.st1.4.4.3.m1.1.1.cmml" xref="S4.T2.st1.4.4.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st1.4.4.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st1.4.4.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.5.5.4" style="padding-left:3.5pt;padding-right:3.5pt;">Dihedral angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st1.5.5.4.m1.1"><semantics id="S4.T2.st1.5.5.4.m1.1a"><mo id="S4.T2.st1.5.5.4.m1.1.1" stretchy="false" xref="S4.T2.st1.5.5.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st1.5.5.4.m1.1b"><ci id="S4.T2.st1.5.5.4.m1.1.1.cmml" xref="S4.T2.st1.5.5.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st1.5.5.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st1.5.5.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.st1.5.14.9.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.14.9.1.1" style="color:#808080;">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st1.5.14.9.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.14.9.2.1" style="color:#808080;">13.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.5.14.9.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.14.9.3.1" style="color:#808080;">0.861</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.5.14.9.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.14.9.4.1" style="color:#808080;">1.56E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.5.14.9.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.14.9.5.1" style="color:#808080;">1.81E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st1.5.14.9.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T2.st1.5.14.9.6.1" style="color:#808080;">1.56E-04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.15.10.1" style="padding-left:3.5pt;padding-right:3.5pt;">EDM</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.15.10.2" style="padding-left:3.5pt;padding-right:3.5pt;">31.29</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.15.10.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.831</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.15.10.4" style="padding-left:3.5pt;padding-right:3.5pt;">4.29E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.15.10.5" style="padding-left:3.5pt;padding-right:3.5pt;">4.96E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.15.10.6" style="padding-left:3.5pt;padding-right:3.5pt;">1.46E-02</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.16.11.1" style="padding-left:3.5pt;padding-right:3.5pt;">JODO</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.16.11.2" style="padding-left:3.5pt;padding-right:3.5pt;">19.99</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.16.11.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.845</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.16.11.4" style="padding-left:3.5pt;padding-right:3.5pt;">8.49E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.16.11.5" style="padding-left:3.5pt;padding-right:3.5pt;">1.15E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.16.11.6" style="padding-left:3.5pt;padding-right:3.5pt;">6.68E-04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.17.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.17.12.1" style="padding-left:3.5pt;padding-right:3.5pt;">MiDi*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.17.12.2" style="padding-left:3.5pt;padding-right:3.5pt;">23.14</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.17.12.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.750</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.17.12.4" style="padding-left:3.5pt;padding-right:3.5pt;">1.17E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.17.12.5" style="padding-left:3.5pt;padding-right:3.5pt;">9.57E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.17.12.6" style="padding-left:3.5pt;padding-right:3.5pt;">4.46E-03</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.18.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st1.5.18.13.1" style="padding-left:3.5pt;padding-right:3.5pt;">EQGAT-diff*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st1.5.18.13.2" style="padding-left:3.5pt;padding-right:3.5pt;">25.89</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.18.13.3" style="padding-left:3.5pt;padding-right:3.5pt;">0.846</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.18.13.4" style="padding-left:3.5pt;padding-right:3.5pt;">1.23E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.18.13.5" style="padding-left:3.5pt;padding-right:3.5pt;">5.29E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st1.5.18.13.6" style="padding-left:3.5pt;padding-right:3.5pt;">2.17E-03</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st1.5.19.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.st1.5.19.14.1" style="padding-left:3.5pt;padding-right:3.5pt;">NExT-Mol, ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.st1.5.19.14.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.19.14.2.1">14.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st1.5.19.14.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.19.14.3.1">0.848</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st1.5.19.14.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.19.14.4.1">2.05E-02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st1.5.19.14.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.19.14.5.1">8.18E-03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st1.5.19.14.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st1.5.19.14.6.1">2.31E-04</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of the NEXT-Mol model on the GEOM-DRUGS dataset for de novo 3D molecule generation.  It compares NEXT-Mol against various other methods, evaluating both 2D and 3D metrics. The 2D metrics assess the quality of the generated 2D molecular graphs, including atom stability, molecule stability, validity, uniqueness, and novelty. The 3D metrics evaluate the quality of the generated 3D molecule coordinates based on root-mean-square deviation (RMSD) from ground truth conformers, considering fragment, scaffold, and overall similarity.  The table provides a comprehensive comparison of NEXT-Mol with other models, allowing for a detailed assessment of its effectiveness in generating novel and accurate 3D molecular structures.
> <details>
> <summary>read the caption</summary>
> (a) Performances on the GEOM-DRUGS dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.st2.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.st2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.st2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">2D-Metric</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st2.1.1.1.m1.1"><semantics id="S4.T2.st2.1.1.1.m1.1a"><mo id="S4.T2.st2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.st2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st2.1.1.1.m1.1b"><ci id="S4.T2.st2.1.1.1.m1.1.1.cmml" xref="S4.T2.st2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">AtomStable</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">MolStable</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">V&amp;C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">V&amp;U</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">V&amp;U&amp;N</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">SNN</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;">Frag</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.st2.1.1.10" style="padding-left:3.0pt;padding-right:3.0pt;">Scaf</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.st2.5.6.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.1.1" style="color:#808080;">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.2.1" style="color:#808080;">0.063</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.3.1" style="color:#808080;">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.4.1" style="color:#808080;">0.988</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.5.1" style="color:#808080;">0.989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.6.1" style="color:#808080;">0.989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.7.1" style="color:#808080;">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.8.1" style="color:#808080;">0.490</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.9.1" style="color:#808080;">0.992</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.6.1.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.6.1.10.1" style="color:#808080;">0.946</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.7.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">MolGPT*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.461</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.982</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.976</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.977</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.937</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.763</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.523</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.958</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.7.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">0.923</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.8.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">MolGen*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.085</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.8.3.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.988</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.8.3.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.955</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.479</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.500</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.988</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.8.3.10" style="padding-left:3.0pt;padding-right:3.0pt;">0.934</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.9.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">CDGS</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.798</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.997</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.951</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.951</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.936</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.9.4.7.1">0.860*</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.493</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.973</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.9.4.10" style="padding-left:3.0pt;padding-right:3.0pt;">0.784</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.10.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">JODO</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.138</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.999</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.988</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.990</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.960</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.780*</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.522</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.986</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.10.5.10" style="padding-left:3.0pt;padding-right:3.0pt;">0.934</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.11.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">MiDi*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.187</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.998</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.976</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.980</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.954</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.769</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.501</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.979</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.11.6.10" style="padding-left:3.0pt;padding-right:3.0pt;">0.882</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.12.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">EQGAT-diff*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">2.157</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.12.7.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.972</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.12.7.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.996</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.695</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.479</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.949</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.12.7.10" style="padding-left:3.0pt;padding-right:3.0pt;">0.707</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.13.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">NExT-Mol, ours</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.2.1">0.070</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.4.1">0.989</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.6.1">0.967</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.802</td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.8.1">0.530</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.9.1">0.992</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.13.8.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.13.8.10.1">0.945</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.st2.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">3D-Metric</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st2.2.2.1.m1.1"><semantics id="S4.T2.st2.2.2.1.m1.1a"><mo id="S4.T2.st2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.st2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st2.2.2.1.m1.1b"><ci id="S4.T2.st2.2.2.1.m1.1.1.cmml" xref="S4.T2.st2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st2.2.2.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">AtomStable</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">Bond length<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st2.3.3.2.m1.1"><semantics id="S4.T2.st2.3.3.2.m1.1a"><mo id="S4.T2.st2.3.3.2.m1.1.1" stretchy="false" xref="S4.T2.st2.3.3.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st2.3.3.2.m1.1b"><ci id="S4.T2.st2.3.3.2.m1.1.1.cmml" xref="S4.T2.st2.3.3.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st2.3.3.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st2.3.3.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">Bond angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st2.4.4.3.m1.1"><semantics id="S4.T2.st2.4.4.3.m1.1a"><mo id="S4.T2.st2.4.4.3.m1.1.1" stretchy="false" xref="S4.T2.st2.4.4.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st2.4.4.3.m1.1b"><ci id="S4.T2.st2.4.4.3.m1.1.1.cmml" xref="S4.T2.st2.4.4.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st2.4.4.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st2.4.4.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">Dihedral angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.st2.5.5.4.m1.1"><semantics id="S4.T2.st2.5.5.4.m1.1a"><mo id="S4.T2.st2.5.5.4.m1.1.1" stretchy="false" xref="S4.T2.st2.5.5.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.st2.5.5.4.m1.1b"><ci id="S4.T2.st2.5.5.4.m1.1.1.cmml" xref="S4.T2.st2.5.5.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.st2.5.5.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.st2.5.5.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.st2.5.14.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.14.9.1.1" style="color:#808080;">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.st2.5.14.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.14.9.2.1" style="color:#808080;">0.877</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.5.14.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.14.9.3.1" style="color:#808080;">0.994</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.5.14.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.14.9.4.1" style="color:#808080;">5.44E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.5.14.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.14.9.5.1" style="color:#808080;">4.65E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.st2.5.14.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.st2.5.14.9.6.1" style="color:#808080;">1.78E-04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.15.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">G-SchNet</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.15.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">2.386</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.15.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.957</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.15.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">3.62E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.15.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">7.27E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.15.10.6" style="padding-left:3.0pt;padding-right:3.0pt;">4.20E-03</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.16.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">G-SphereNet</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.16.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">6.659</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.16.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.672</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.16.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">1.51E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.16.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">3.54E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.16.11.6" style="padding-left:3.0pt;padding-right:3.0pt;">1.29E-02</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.17.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.17.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">EDM</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.17.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">1.285</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.17.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.986</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.17.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">1.30E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.17.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">1.82E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.17.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">6.64E-04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.18.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.18.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">MDM</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.18.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">4.861</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.18.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.992</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.18.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">2.74E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.18.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">6.60E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.18.13.6" style="padding-left:3.0pt;padding-right:3.0pt;">2.39E-02</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.19.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.19.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">JODO</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.19.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.885</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.19.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.992</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.19.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">1.48E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.19.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">1.21E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.19.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">6.29E-04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.20.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.20.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">MiDi*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.20.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">1.100</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.20.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.983</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.20.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">8.96E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.20.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">2.08E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.20.15.6" style="padding-left:3.0pt;padding-right:3.0pt;">8.14E-04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.21.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.st2.5.21.16.1" style="padding-left:3.0pt;padding-right:3.0pt;">EQGAT-diff*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.st2.5.21.16.2" style="padding-left:3.0pt;padding-right:3.0pt;">1.519</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.21.16.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.988</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.21.16.4" style="padding-left:3.0pt;padding-right:3.0pt;">4.09E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.21.16.5" style="padding-left:3.0pt;padding-right:3.0pt;">1.91E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.st2.5.21.16.6" style="padding-left:3.0pt;padding-right:3.0pt;">1.14E-03</td>
</tr>
<tr class="ltx_tr" id="S4.T2.st2.5.22.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.st2.5.22.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">NExT-Mol, ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.st2.5.22.17.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.22.17.2.1">0.879</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st2.5.22.17.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.22.17.3.1">0.993</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st2.5.22.17.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.22.17.4.1">1.15E-01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st2.5.22.17.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.22.17.5.1">7.32E-03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.st2.5.22.17.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.st2.5.22.17.6.1">1.95E-04</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2(b) presents the results of de novo 3D molecule generation on the QM9-2014 dataset.  The table presents metrics evaluating the quality of the generated molecules across several aspects, including 2D and 3D structural metrics.  2D metrics assess aspects like atom and molecule stability, as well as validity and uniqueness. 3D metrics evaluate geometric similarity and stability by comparing predicted and true 3D structures.  This allows comparison of NEXT-Mol's performance against other state-of-the-art methods for generating molecules.
> <details>
> <summary>read the caption</summary>
> (b) Performances on the QM9-2014 dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.8.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.8.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mu\ (\textnormal{D})" class="ltx_Math" display="inline" id="S4.T3.3.1.1.m1.1"><semantics id="S4.T3.3.1.1.m1.1a"><mrow id="S4.T3.3.1.1.m1.1.2" xref="S4.T3.3.1.1.m1.1.2.cmml"><mi id="S4.T3.3.1.1.m1.1.2.2" xref="S4.T3.3.1.1.m1.1.2.2.cmml">μ</mi><mo id="S4.T3.3.1.1.m1.1.2.1" lspace="0.500em" xref="S4.T3.3.1.1.m1.1.2.1.cmml">⁢</mo><mrow id="S4.T3.3.1.1.m1.1.2.3.2" xref="S4.T3.3.1.1.m1.1.1a.cmml"><mo id="S4.T3.3.1.1.m1.1.2.3.2.1" stretchy="false" xref="S4.T3.3.1.1.m1.1.1a.cmml">(</mo><mtext id="S4.T3.3.1.1.m1.1.1" xref="S4.T3.3.1.1.m1.1.1.cmml">D</mtext><mo id="S4.T3.3.1.1.m1.1.2.3.2.2" stretchy="false" xref="S4.T3.3.1.1.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.m1.1b"><apply id="S4.T3.3.1.1.m1.1.2.cmml" xref="S4.T3.3.1.1.m1.1.2"><times id="S4.T3.3.1.1.m1.1.2.1.cmml" xref="S4.T3.3.1.1.m1.1.2.1"></times><ci id="S4.T3.3.1.1.m1.1.2.2.cmml" xref="S4.T3.3.1.1.m1.1.2.2">𝜇</ci><ci id="S4.T3.3.1.1.m1.1.1a.cmml" xref="S4.T3.3.1.1.m1.1.2.3.2"><mtext id="S4.T3.3.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.m1.1.1">D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.m1.1c">\mu\ (\textnormal{D})</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.m1.1d">italic_μ ( D )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\alpha\ (\textnormal{Bohr}^{3})" class="ltx_Math" display="inline" id="S4.T3.4.2.2.m1.1"><semantics id="S4.T3.4.2.2.m1.1a"><mrow id="S4.T3.4.2.2.m1.1.1" xref="S4.T3.4.2.2.m1.1.1.cmml"><mi id="S4.T3.4.2.2.m1.1.1.3" xref="S4.T3.4.2.2.m1.1.1.3.cmml">α</mi><mo id="S4.T3.4.2.2.m1.1.1.2" lspace="0.500em" xref="S4.T3.4.2.2.m1.1.1.2.cmml">⁢</mo><mrow id="S4.T3.4.2.2.m1.1.1.1.1" xref="S4.T3.4.2.2.m1.1.1.1.1.1.cmml"><mo id="S4.T3.4.2.2.m1.1.1.1.1.2" stretchy="false" xref="S4.T3.4.2.2.m1.1.1.1.1.1.cmml">(</mo><msup id="S4.T3.4.2.2.m1.1.1.1.1.1" xref="S4.T3.4.2.2.m1.1.1.1.1.1.cmml"><mtext id="S4.T3.4.2.2.m1.1.1.1.1.1.2" xref="S4.T3.4.2.2.m1.1.1.1.1.1.2a.cmml">Bohr</mtext><mn id="S4.T3.4.2.2.m1.1.1.1.1.1.3" xref="S4.T3.4.2.2.m1.1.1.1.1.1.3.cmml">3</mn></msup><mo id="S4.T3.4.2.2.m1.1.1.1.1.3" stretchy="false" xref="S4.T3.4.2.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.2.m1.1b"><apply id="S4.T3.4.2.2.m1.1.1.cmml" xref="S4.T3.4.2.2.m1.1.1"><times id="S4.T3.4.2.2.m1.1.1.2.cmml" xref="S4.T3.4.2.2.m1.1.1.2"></times><ci id="S4.T3.4.2.2.m1.1.1.3.cmml" xref="S4.T3.4.2.2.m1.1.1.3">𝛼</ci><apply id="S4.T3.4.2.2.m1.1.1.1.1.1.cmml" xref="S4.T3.4.2.2.m1.1.1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.2.2.m1.1.1.1.1.1.1.cmml" xref="S4.T3.4.2.2.m1.1.1.1.1">superscript</csymbol><ci id="S4.T3.4.2.2.m1.1.1.1.1.1.2a.cmml" xref="S4.T3.4.2.2.m1.1.1.1.1.1.2"><mtext id="S4.T3.4.2.2.m1.1.1.1.1.1.2.cmml" xref="S4.T3.4.2.2.m1.1.1.1.1.1.2">Bohr</mtext></ci><cn id="S4.T3.4.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="S4.T3.4.2.2.m1.1.1.1.1.1.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.2.m1.1c">\alpha\ (\textnormal{Bohr}^{3})</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.2.m1.1d">italic_α ( Bohr start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="C_{v}\ \left(\frac{\textnormal{cal}}{\textnormal{mol}}\textnormal{K}\right)" class="ltx_Math" display="inline" id="S4.T3.5.3.3.m1.1"><semantics id="S4.T3.5.3.3.m1.1a"><mrow id="S4.T3.5.3.3.m1.1.1" xref="S4.T3.5.3.3.m1.1.1.cmml"><msub id="S4.T3.5.3.3.m1.1.1.3" xref="S4.T3.5.3.3.m1.1.1.3.cmml"><mi id="S4.T3.5.3.3.m1.1.1.3.2" xref="S4.T3.5.3.3.m1.1.1.3.2.cmml">C</mi><mi id="S4.T3.5.3.3.m1.1.1.3.3" xref="S4.T3.5.3.3.m1.1.1.3.3.cmml">v</mi></msub><mo id="S4.T3.5.3.3.m1.1.1.2" lspace="0.500em" xref="S4.T3.5.3.3.m1.1.1.2.cmml">⁢</mo><mrow id="S4.T3.5.3.3.m1.1.1.1.1" xref="S4.T3.5.3.3.m1.1.1.1.1.1.cmml"><mo id="S4.T3.5.3.3.m1.1.1.1.1.2" xref="S4.T3.5.3.3.m1.1.1.1.1.1.cmml">(</mo><mrow id="S4.T3.5.3.3.m1.1.1.1.1.1" xref="S4.T3.5.3.3.m1.1.1.1.1.1.cmml"><mfrac id="S4.T3.5.3.3.m1.1.1.1.1.1.2" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2.cmml"><mtext id="S4.T3.5.3.3.m1.1.1.1.1.1.2.2" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2.2a.cmml">cal</mtext><mtext id="S4.T3.5.3.3.m1.1.1.1.1.1.2.3" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2.3a.cmml">mol</mtext></mfrac><mo id="S4.T3.5.3.3.m1.1.1.1.1.1.1" xref="S4.T3.5.3.3.m1.1.1.1.1.1.1.cmml">⁢</mo><mtext id="S4.T3.5.3.3.m1.1.1.1.1.1.3" xref="S4.T3.5.3.3.m1.1.1.1.1.1.3a.cmml">K</mtext></mrow><mo id="S4.T3.5.3.3.m1.1.1.1.1.3" xref="S4.T3.5.3.3.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.3.3.m1.1b"><apply id="S4.T3.5.3.3.m1.1.1.cmml" xref="S4.T3.5.3.3.m1.1.1"><times id="S4.T3.5.3.3.m1.1.1.2.cmml" xref="S4.T3.5.3.3.m1.1.1.2"></times><apply id="S4.T3.5.3.3.m1.1.1.3.cmml" xref="S4.T3.5.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T3.5.3.3.m1.1.1.3.1.cmml" xref="S4.T3.5.3.3.m1.1.1.3">subscript</csymbol><ci id="S4.T3.5.3.3.m1.1.1.3.2.cmml" xref="S4.T3.5.3.3.m1.1.1.3.2">𝐶</ci><ci id="S4.T3.5.3.3.m1.1.1.3.3.cmml" xref="S4.T3.5.3.3.m1.1.1.3.3">𝑣</ci></apply><apply id="S4.T3.5.3.3.m1.1.1.1.1.1.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1"><times id="S4.T3.5.3.3.m1.1.1.1.1.1.1.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1.1.1"></times><apply id="S4.T3.5.3.3.m1.1.1.1.1.1.2.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2"><divide id="S4.T3.5.3.3.m1.1.1.1.1.1.2.1.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2"></divide><ci id="S4.T3.5.3.3.m1.1.1.1.1.1.2.2a.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2.2"><mtext id="S4.T3.5.3.3.m1.1.1.1.1.1.2.2.cmml" mathsize="70%" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2.2">cal</mtext></ci><ci id="S4.T3.5.3.3.m1.1.1.1.1.1.2.3a.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2.3"><mtext id="S4.T3.5.3.3.m1.1.1.1.1.1.2.3.cmml" mathsize="70%" xref="S4.T3.5.3.3.m1.1.1.1.1.1.2.3">mol</mtext></ci></apply><ci id="S4.T3.5.3.3.m1.1.1.1.1.1.3a.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1.1.3"><mtext id="S4.T3.5.3.3.m1.1.1.1.1.1.3.cmml" xref="S4.T3.5.3.3.m1.1.1.1.1.1.3">K</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.3.3.m1.1c">C_{v}\ \left(\frac{\textnormal{cal}}{\textnormal{mol}}\textnormal{K}\right)</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.3.3.m1.1d">italic_C start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT ( divide start_ARG cal end_ARG start_ARG mol end_ARG K )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\varepsilon_{\textnormal{HOMO}}\ (\textnormal{meV})" class="ltx_Math" display="inline" id="S4.T3.6.4.4.m1.1"><semantics id="S4.T3.6.4.4.m1.1a"><mrow id="S4.T3.6.4.4.m1.1.2" xref="S4.T3.6.4.4.m1.1.2.cmml"><msub id="S4.T3.6.4.4.m1.1.2.2" xref="S4.T3.6.4.4.m1.1.2.2.cmml"><mi id="S4.T3.6.4.4.m1.1.2.2.2" xref="S4.T3.6.4.4.m1.1.2.2.2.cmml">ε</mi><mtext id="S4.T3.6.4.4.m1.1.2.2.3" xref="S4.T3.6.4.4.m1.1.2.2.3a.cmml">HOMO</mtext></msub><mo id="S4.T3.6.4.4.m1.1.2.1" lspace="0.500em" xref="S4.T3.6.4.4.m1.1.2.1.cmml">⁢</mo><mrow id="S4.T3.6.4.4.m1.1.2.3.2" xref="S4.T3.6.4.4.m1.1.1a.cmml"><mo id="S4.T3.6.4.4.m1.1.2.3.2.1" stretchy="false" xref="S4.T3.6.4.4.m1.1.1a.cmml">(</mo><mtext id="S4.T3.6.4.4.m1.1.1" xref="S4.T3.6.4.4.m1.1.1.cmml">meV</mtext><mo id="S4.T3.6.4.4.m1.1.2.3.2.2" stretchy="false" xref="S4.T3.6.4.4.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.4.4.m1.1b"><apply id="S4.T3.6.4.4.m1.1.2.cmml" xref="S4.T3.6.4.4.m1.1.2"><times id="S4.T3.6.4.4.m1.1.2.1.cmml" xref="S4.T3.6.4.4.m1.1.2.1"></times><apply id="S4.T3.6.4.4.m1.1.2.2.cmml" xref="S4.T3.6.4.4.m1.1.2.2"><csymbol cd="ambiguous" id="S4.T3.6.4.4.m1.1.2.2.1.cmml" xref="S4.T3.6.4.4.m1.1.2.2">subscript</csymbol><ci id="S4.T3.6.4.4.m1.1.2.2.2.cmml" xref="S4.T3.6.4.4.m1.1.2.2.2">𝜀</ci><ci id="S4.T3.6.4.4.m1.1.2.2.3a.cmml" xref="S4.T3.6.4.4.m1.1.2.2.3"><mtext id="S4.T3.6.4.4.m1.1.2.2.3.cmml" mathsize="70%" xref="S4.T3.6.4.4.m1.1.2.2.3">HOMO</mtext></ci></apply><ci id="S4.T3.6.4.4.m1.1.1a.cmml" xref="S4.T3.6.4.4.m1.1.2.3.2"><mtext id="S4.T3.6.4.4.m1.1.1.cmml" xref="S4.T3.6.4.4.m1.1.1">meV</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.4.4.m1.1c">\varepsilon_{\textnormal{HOMO}}\ (\textnormal{meV})</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.4.4.m1.1d">italic_ε start_POSTSUBSCRIPT HOMO end_POSTSUBSCRIPT ( meV )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.7.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\varepsilon_{\textnormal{LUMO}}\ (\textnormal{meV})" class="ltx_Math" display="inline" id="S4.T3.7.5.5.m1.1"><semantics id="S4.T3.7.5.5.m1.1a"><mrow id="S4.T3.7.5.5.m1.1.2" xref="S4.T3.7.5.5.m1.1.2.cmml"><msub id="S4.T3.7.5.5.m1.1.2.2" xref="S4.T3.7.5.5.m1.1.2.2.cmml"><mi id="S4.T3.7.5.5.m1.1.2.2.2" xref="S4.T3.7.5.5.m1.1.2.2.2.cmml">ε</mi><mtext id="S4.T3.7.5.5.m1.1.2.2.3" xref="S4.T3.7.5.5.m1.1.2.2.3a.cmml">LUMO</mtext></msub><mo id="S4.T3.7.5.5.m1.1.2.1" lspace="0.500em" xref="S4.T3.7.5.5.m1.1.2.1.cmml">⁢</mo><mrow id="S4.T3.7.5.5.m1.1.2.3.2" xref="S4.T3.7.5.5.m1.1.1a.cmml"><mo id="S4.T3.7.5.5.m1.1.2.3.2.1" stretchy="false" xref="S4.T3.7.5.5.m1.1.1a.cmml">(</mo><mtext id="S4.T3.7.5.5.m1.1.1" xref="S4.T3.7.5.5.m1.1.1.cmml">meV</mtext><mo id="S4.T3.7.5.5.m1.1.2.3.2.2" stretchy="false" xref="S4.T3.7.5.5.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.5.5.m1.1b"><apply id="S4.T3.7.5.5.m1.1.2.cmml" xref="S4.T3.7.5.5.m1.1.2"><times id="S4.T3.7.5.5.m1.1.2.1.cmml" xref="S4.T3.7.5.5.m1.1.2.1"></times><apply id="S4.T3.7.5.5.m1.1.2.2.cmml" xref="S4.T3.7.5.5.m1.1.2.2"><csymbol cd="ambiguous" id="S4.T3.7.5.5.m1.1.2.2.1.cmml" xref="S4.T3.7.5.5.m1.1.2.2">subscript</csymbol><ci id="S4.T3.7.5.5.m1.1.2.2.2.cmml" xref="S4.T3.7.5.5.m1.1.2.2.2">𝜀</ci><ci id="S4.T3.7.5.5.m1.1.2.2.3a.cmml" xref="S4.T3.7.5.5.m1.1.2.2.3"><mtext id="S4.T3.7.5.5.m1.1.2.2.3.cmml" mathsize="70%" xref="S4.T3.7.5.5.m1.1.2.2.3">LUMO</mtext></ci></apply><ci id="S4.T3.7.5.5.m1.1.1a.cmml" xref="S4.T3.7.5.5.m1.1.2.3.2"><mtext id="S4.T3.7.5.5.m1.1.1.cmml" xref="S4.T3.7.5.5.m1.1.1">meV</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.5.5.m1.1c">\varepsilon_{\textnormal{LUMO}}\ (\textnormal{meV})</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.5.5.m1.1d">italic_ε start_POSTSUBSCRIPT LUMO end_POSTSUBSCRIPT ( meV )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.8.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\Delta\varepsilon\ (\textnormal{meV})" class="ltx_Math" display="inline" id="S4.T3.8.6.6.m1.1"><semantics id="S4.T3.8.6.6.m1.1a"><mrow id="S4.T3.8.6.6.m1.1.2" xref="S4.T3.8.6.6.m1.1.2.cmml"><mi id="S4.T3.8.6.6.m1.1.2.2" mathvariant="normal" xref="S4.T3.8.6.6.m1.1.2.2.cmml">Δ</mi><mo id="S4.T3.8.6.6.m1.1.2.1" xref="S4.T3.8.6.6.m1.1.2.1.cmml">⁢</mo><mi id="S4.T3.8.6.6.m1.1.2.3" xref="S4.T3.8.6.6.m1.1.2.3.cmml">ε</mi><mo id="S4.T3.8.6.6.m1.1.2.1a" lspace="0.500em" xref="S4.T3.8.6.6.m1.1.2.1.cmml">⁢</mo><mrow id="S4.T3.8.6.6.m1.1.2.4.2" xref="S4.T3.8.6.6.m1.1.1a.cmml"><mo id="S4.T3.8.6.6.m1.1.2.4.2.1" stretchy="false" xref="S4.T3.8.6.6.m1.1.1a.cmml">(</mo><mtext id="S4.T3.8.6.6.m1.1.1" xref="S4.T3.8.6.6.m1.1.1.cmml">meV</mtext><mo id="S4.T3.8.6.6.m1.1.2.4.2.2" stretchy="false" xref="S4.T3.8.6.6.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.6.6.m1.1b"><apply id="S4.T3.8.6.6.m1.1.2.cmml" xref="S4.T3.8.6.6.m1.1.2"><times id="S4.T3.8.6.6.m1.1.2.1.cmml" xref="S4.T3.8.6.6.m1.1.2.1"></times><ci id="S4.T3.8.6.6.m1.1.2.2.cmml" xref="S4.T3.8.6.6.m1.1.2.2">Δ</ci><ci id="S4.T3.8.6.6.m1.1.2.3.cmml" xref="S4.T3.8.6.6.m1.1.2.3">𝜀</ci><ci id="S4.T3.8.6.6.m1.1.1a.cmml" xref="S4.T3.8.6.6.m1.1.2.4.2"><mtext id="S4.T3.8.6.6.m1.1.1.cmml" xref="S4.T3.8.6.6.m1.1.1">meV</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.6.6.m1.1c">\Delta\varepsilon\ (\textnormal{meV})</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.6.6.m1.1d">roman_Δ italic_ε ( meV )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.7.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.8.7.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.8.7.1.1.1" style="color:#808080;">L-Bound</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.7.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.8.7.1.2.1" style="color:#808080;">0.043</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.7.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.8.7.1.3.1" style="color:#808080;">0.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.7.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.8.7.1.4.1" style="color:#808080;">0.040</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.7.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.7.1.5.1" style="color:#808080;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.T3.8.7.1.5.2" style="color:#808080;">39</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.7.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.7.1.6.1" style="color:#808080;"><span style="visibility:hidden">00</span></span><span class="ltx_text" id="S4.T3.8.7.1.6.2" style="color:#808080;">36</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.7.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.7.1.7.1" style="color:#808080;"><span style="visibility:hidden">00</span></span><span class="ltx_text" id="S4.T3.8.7.1.7.2" style="color:#808080;">65</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.2">
<td class="ltx_td ltx_align_left" id="S4.T3.8.8.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">EDM</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.123</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">2.78</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.065</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">371</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.8.2.6.1"><span style="visibility:hidden">0</span></span>601</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.8.2.7.1"><span style="visibility:hidden">0</span></span>671</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.9.3">
<td class="ltx_td ltx_align_left" id="S4.T3.8.9.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">EEGSDE</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.9.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.777</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.9.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">2.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.9.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.941</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.9.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">302</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.9.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.9.3.6.1"><span style="visibility:hidden">0</span></span>447</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.9.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.9.3.7.1"><span style="visibility:hidden">0</span></span>487</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.10.4">
<td class="ltx_td ltx_align_left" id="S4.T3.8.10.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">GeoLDM</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.10.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.108</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.10.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">2.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.10.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">1.025</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.10.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">340</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.10.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.10.4.6.1"><span style="visibility:hidden">0</span></span>522</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.10.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.10.4.7.1"><span style="visibility:hidden">0</span></span>587</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.11.5">
<td class="ltx_td ltx_align_left" id="S4.T3.8.11.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">JODO</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.11.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.628</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.11.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">1.42</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.11.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.581</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.11.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">226</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.11.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.11.5.6.1"><span style="visibility:hidden">0</span></span>256</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.11.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom" id="S4.T3.8.11.5.7.1"><span style="visibility:hidden">0</span></span>335</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.12.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.8.12.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">NExT-Mol, ours</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.12.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.12.6.2.1">0.507</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.12.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.12.6.3.1">1.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.12.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.12.6.4.1">0.512</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.12.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.12.6.5.1">205</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.12.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S4.T3.8.12.6.6.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S4.T3.8.12.6.6.2">235</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.12.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S4.T3.8.12.6.7.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S4.T3.8.12.6.7.2">297</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.13.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.8.13.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">relative improv.</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.13.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">19.3%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.13.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">18.3%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.13.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">11.9%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.13.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">9.3%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.13.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">8.2%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.13.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">11.3%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of conditional 3D molecule generation on the QM9-2014 dataset.  The goal was to generate molecules with specific target properties (quantum chemical properties).  The table shows the Mean Absolute Error (MAE) between the desired properties and the predicted properties for each method evaluated. Lower MAE values indicate better performance.  Baseline results are included for comparison, and the best-performing method for each property is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of conditional 3D molecule generation on the QM9-2014 dataset. We report MAE ↓↓\downarrow↓ between the desired properties and the predicted properties of the generated samples. Baseline results are from (Huang et al., 2024). We bold the best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.st1.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.st1.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T4.st1.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<td class="ltx_td ltx_border_tt" id="S4.T4.st1.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.st1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">COV-R (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.st1.1.1.1.m1.1"><semantics id="S4.T4.st1.1.1.1.m1.1a"><mo id="S4.T4.st1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.st1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st1.1.1.1.m1.1b"><ci id="S4.T4.st1.1.1.1.m1.1.1.cmml" xref="S4.T4.st1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.st1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-R <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.st1.2.2.2.m1.1"><semantics id="S4.T4.st1.2.2.2.m1.1a"><mo id="S4.T4.st1.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.st1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st1.2.2.2.m1.1b"><ci id="S4.T4.st1.2.2.2.m1.1.1.cmml" xref="S4.T4.st1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st1.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.st1.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">COV-P (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.st1.3.3.3.m1.1"><semantics id="S4.T4.st1.3.3.3.m1.1a"><mo id="S4.T4.st1.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.st1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st1.3.3.3.m1.1b"><ci id="S4.T4.st1.3.3.3.m1.1.1.cmml" xref="S4.T4.st1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st1.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.st1.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-P <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.st1.4.4.4.m1.1"><semantics id="S4.T4.st1.4.4.4.m1.1a"><mo id="S4.T4.st1.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.st1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st1.4.4.4.m1.1b"><ci id="S4.T4.st1.4.4.4.m1.1.1.cmml" xref="S4.T4.st1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st1.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.7.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<td class="ltx_td ltx_align_left" id="S4.T4.st1.6.7.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Model Size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Median</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">Median</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">Median</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st1.6.7.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">Median</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T4.st1.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.5.5.1.1">Model size <math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.st1.5.5.1.1.m1.1"><semantics id="S4.T4.st1.5.5.1.1.m1.1a"><mo id="S4.T4.st1.5.5.1.1.m1.1.1" xref="S4.T4.st1.5.5.1.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st1.5.5.1.1.m1.1b"><leq id="S4.T4.st1.5.5.1.1.m1.1.1.cmml" xref="S4.T4.st1.5.5.1.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st1.5.5.1.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st1.5.5.1.1.m1.1d">≤</annotation></semantics></math> 100M</span></th>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.8.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">OMEGA</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">54.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.841</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.762</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">40.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.946</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.8.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.854</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.9.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">GeoMol</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.3M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">44.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">41.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.875</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.834</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">36.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.928</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.9.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.841</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.10.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">GeoDiff</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.6M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">42.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">37.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.835</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.809</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">24.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">14.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">1.136</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.10.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">1.090</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.11.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">Torsional Diffusion</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.6M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">72.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.582</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.565</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">55.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">56.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.778</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.11.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.729</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.12.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.1.1" style="color:#808080;">TD <span class="ltx_text ltx_font_italic" id="S4.T4.st1.6.12.6.1.1.1">w/</span> PG</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.2.1" style="color:#808080;">1.6M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.3.1" style="color:#808080;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.4.1" style="color:#808080;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.5.1" style="color:#808080;">0.543</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.6.1" style="color:#808080;">0.520</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.7.1" style="color:#808080;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.8.1" style="color:#808080;">78.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.9.1" style="color:#808080;">0.656</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.12.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.st1.6.12.6.10.1" style="color:#808080;">0.594</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.13.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.13.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">TD <span class="ltx_text ltx_font_italic" id="S4.T4.st1.6.13.7.1.1">w/ PG*</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.6M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">73.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">79.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.566</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.539</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.680</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.13.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.615</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.14.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.14.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">MCF-S</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">13M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">79.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">87.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.512</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.492</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">57.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.761</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.14.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.715</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.15.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.15.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">MCF-B</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">64M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">84.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">91.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.427</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.402</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">66.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.667</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.15.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.605</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.16.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.16.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">DMT-B, ours</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">55M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">85.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.16.10.4.1">92.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.401</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.375</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">67.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.642</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.16.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.577</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.17.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.17.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">DMT-B, PC samp.</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">55M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.17.11.3.1">85.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">91.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.17.11.5.1">0.396</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.17.11.6.1">0.370</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.17.11.7.1">67.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.17.11.8.1">71.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.17.11.9.1">0.623</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.17.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.17.11.10.1">0.546</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T4.st1.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.6.1.1">Model size <math alttext="&gt;" class="ltx_Math" display="inline" id="S4.T4.st1.6.6.1.1.m1.1"><semantics id="S4.T4.st1.6.6.1.1.m1.1a"><mo id="S4.T4.st1.6.6.1.1.m1.1.1" xref="S4.T4.st1.6.6.1.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st1.6.6.1.1.m1.1b"><gt id="S4.T4.st1.6.6.1.1.m1.1.1.cmml" xref="S4.T4.st1.6.6.1.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st1.6.6.1.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st1.6.6.1.1.m1.1d">&gt;</annotation></semantics></math> 100M</span></th>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T4.st1.6.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.18.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st1.6.18.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">MCF-L</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">242M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">84.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">92.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.390</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.18.12.6.1">0.247</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">66.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">71.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.618</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st1.6.18.12.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.530</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st1.6.19.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.st1.6.19.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">DMT-L, ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">150M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.19.13.3.1">85.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.19.13.4.1">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.19.13.5.1">0.375</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.346</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.19.13.7.1">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.19.13.8.1">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.19.13.9.1">0.598</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st1.6.19.13.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st1.6.19.13.10.1">0.527</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of 3D conformer prediction experiments.  It compares the performance of the proposed Diffusion Molecular Transformer (DMT) model against several baselines from recent literature.  The metrics used to evaluate the models' performance include Coverage (COV) and Average Minimum Root Mean Square Deviation (AMR), both reported as Recall and Precision. The table shows the mean and median values of these metrics for different model sizes, helping to understand the impact of model scale on performance.  Results are presented for both the GEOM-DRUGS and GEOM-QM9 datasets.  The caption indicates that some baseline results were reproduced using the authors' code for better comparability.
> <details>
> <summary>read the caption</summary>
> Table 4: 3D conformer prediction results. Baseline results are from (Jing et al., 2022; Corso et al., 2024; Wang et al., 2024). * denotes reproduction using their codes. -R←←\leftarrow←Recall and -P←←\leftarrow←Precision.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.st2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.st2.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T4.st2.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T4.st2.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.st2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">COV-R (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.st2.1.1.1.m1.1"><semantics id="S4.T4.st2.1.1.1.m1.1a"><mo id="S4.T4.st2.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.st2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st2.1.1.1.m1.1b"><ci id="S4.T4.st2.1.1.1.m1.1.1.cmml" xref="S4.T4.st2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.st2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-R <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.st2.2.2.2.m1.1"><semantics id="S4.T4.st2.2.2.2.m1.1a"><mo id="S4.T4.st2.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.st2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st2.2.2.2.m1.1b"><ci id="S4.T4.st2.2.2.2.m1.1.1.cmml" xref="S4.T4.st2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.st2.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">COV-P (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.st2.3.3.3.m1.1"><semantics id="S4.T4.st2.3.3.3.m1.1a"><mo id="S4.T4.st2.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.st2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st2.3.3.3.m1.1b"><ci id="S4.T4.st2.3.3.3.m1.1.1.cmml" xref="S4.T4.st2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st2.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.st2.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-P <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.st2.4.4.4.m1.1"><semantics id="S4.T4.st2.4.4.4.m1.1a"><mo id="S4.T4.st2.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.st2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.st2.4.4.4.m1.1b"><ci id="S4.T4.st2.4.4.4.m1.1.1.cmml" xref="S4.T4.st2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.st2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.st2.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T4.st2.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T4.st2.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.st2.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Model size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.st2.4.5.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.st2.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.st2.4.6.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">OMEGA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.6.1.4.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.177</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.126</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">82.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.6.1.8.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.224</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.st2.4.6.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.186</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st2.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st2.4.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">GeoMol</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.3M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">91.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.7.2.4.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.225</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.193</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">86.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.7.2.8.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.270</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.7.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.241</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st2.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st2.4.8.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">GeoDiff</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.6M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.8.3.4.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.297</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.229</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">33.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.524</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.8.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.510</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st2.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st2.4.9.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Torsoinal Diffusion</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">1.6M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">92.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.9.4.4.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.178</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.147</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">92.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.9.4.8.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.221</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.9.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.195</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st2.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.st2.4.10.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">MCF-B</th>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">64M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">95.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.10.5.4.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.103</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.044</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">93.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.10.5.8.1">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.119</td>
<td class="ltx_td ltx_align_center" id="S4.T4.st2.4.10.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.055</td>
</tr>
<tr class="ltx_tr" id="S4.T4.st2.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.st2.4.11.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">DMT-B, ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">55M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.3.1">95.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.4.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.5.1">0.090</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.6.1">0.036</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.7.1">93.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.8.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.9.1">0.108</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.st2.4.11.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.st2.4.11.6.10.1">0.049</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different methods for 3D conformer prediction on the GEOM-DRUGS dataset.  The metrics used are COV-R (Coverage Recall), AMR-R (Average Minimum RMSD Recall), COV-P (Coverage Precision), and AMR-P (Average Minimum RMSD Precision).  The table includes results for various methods, including OMEGA, GeoMol, GeoDiff, Torsional Diffusion (TD) with and without Particle Guidance (PG), MCF models (small and large), and the proposed DMT model (both small and large).  The Model Size column shows the number of parameters for each model to provide context regarding model capacity.
> <details>
> <summary>read the caption</summary>
> (a) Performances on the GEOM-DRUGS dataset. TD w/ PG denotes torsional diffusion with particle guidance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T5.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">COV-R (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-R <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">COV-P (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-P <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.m1.1.1" stretchy="false" xref="S4.T5.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T5.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T5.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Dataset</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T5.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.5.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T5.4.6.1.1" rowspan="4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.4.6.1.1.1">GEOM-DRUGS</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.4.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">DMT-B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">85.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.6.1.4.1">92.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.401</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">0.375</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">65.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">67.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.642</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.6.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.577</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.4.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">+MoLlama</th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.2.2.1">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">92.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.2.4.1">0.383</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.2.5.1">0.367</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.2.6.1">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.2.7.1">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.2.8.1">0.626</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.2.9.1">0.566</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.4.8.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">DMT-L</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">85.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">92.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.375</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.346</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">67.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.8.3.7.1">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.598</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.527</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.4.9.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">+MoLLama</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.9.4.2.1">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.9.4.3.1">93.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.9.4.4.1">0.360</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.9.4.5.1">0.334</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.9.4.6.1">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.9.4.8.1">0.595</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.9.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.9.4.9.1">0.525</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the NEXT-Mol model on the GEOM-QM9 dataset for the de novo 3D molecule generation task.  It provides a quantitative assessment of the model's ability to generate novel 3D molecules using various metrics.  These metrics evaluate different aspects of the generated molecules, including their validity, structural properties, and similarity to molecules in the training dataset. Both 2D and 3D metrics are provided to offer a comprehensive evaluation.
> <details>
> <summary>read the caption</summary>
> (b) Performances on the GEOM-QM9 dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.2.2.3.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Test subset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T6.2.2.3.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">#Mol</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.3.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.3.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">AMR-R</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.3.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">AMR-P</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.4.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.2.2.4.1.1.1">unseen scaffold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.2.2.4.1.2" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.2.2.4.1.2.1">348</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.2.2.4.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">DMT-B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.450</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.785</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.5.2">
<td class="ltx_td ltx_align_left" id="S4.T6.2.2.5.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">+MoLlama</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.5.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.5.2.2.1">0.422</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.5.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.5.2.3.1">0.755</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.1.1.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.1.1.1.1.1">scaf. freq. <math alttext="\geq" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.1.m1.1.1" xref="S4.T6.1.1.1.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.1.m1.1b"><geq id="S4.T6.1.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.1.m1.1d">≥</annotation></semantics></math>1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.1.1.1.2" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.1.1.1.2.1">584</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">DMT-B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.364</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.549</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.6.3">
<td class="ltx_td ltx_align_left" id="S4.T6.2.2.6.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">+MoLlama</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.6.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.6.3.2.1">0.359</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.6.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.6.3.3.1">0.548</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T6.2.2.2.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.2.2.2.1.1">scaf. freq. <math alttext="\geq" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.1.m1.1"><semantics id="S4.T6.2.2.2.1.1.m1.1a"><mo id="S4.T6.2.2.2.1.1.m1.1.1" xref="S4.T6.2.2.2.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.1.m1.1b"><geq id="S4.T6.2.2.2.1.1.m1.1.1.cmml" xref="S4.T6.2.2.2.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.1.m1.1d">≥</annotation></semantics></math>10</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T6.2.2.2.2" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.2.2.2.2.1">285</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">DMT-B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.348</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.515</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.7.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.2.2.7.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">+MoLlama</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.7.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.4.2.1">0.347</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.7.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.4.3.1">0.513</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of incorporating MoLlama's pretrained 1D molecular representations into DMT (Diffusion Molecular Transformer), a 3D diffusion model for conformer prediction.  It shows a comparison of the performance of DMT alone versus DMT enhanced with MoLlama's representations on two datasets, GEOM-DRUGS and GEOM-QM9. The metrics used are COV-R (Coverage Recall), AMR-R (Average Minimum RMSD Recall), COV-P (Coverage Precision), and AMR-P (Average Minimum RMSD Precision), illustrating improvements achieved by leveraging the 1D representations for 3D prediction.
> <details>
> <summary>read the caption</summary>
> Table 5: Incorporating MoLlama’s 1D representations to improve DMT’s 3D conformer prediction.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S4.T6.fig1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.fig1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.fig1.1.1.1.1" style="padding:-5pt -8.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T6.fig1.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.fig1.1.2.2.1" style="padding:-5pt -8.0pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comparison of the performance of enhancing 3D molecule generation by incorporating MoLlama representations on the GEOM-DRUGS dataset. It compares the performance of a baseline model (DMT-B) with NEXT-Mol which integrates MoLlama representations. The metrics used include FCD (Fréchet ChemNet Distance), AtomStable, MolStable, Bond length, Bond angle, and Dihedral angle, assessing the quality and stability of the generated 3D molecular structures.  The results show the impact of MoLlama's 1D molecular representations on the various aspects of 3D generation.
> <details>
> <summary>read the caption</summary>
> Table 7: Enhancing 3D molecule generation with MoLlama representations on GEOM-DRUGS.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T7.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.4.4.5" style="padding-left:3.5pt;padding-right:3.5pt;">Method</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.4.4.6" style="padding-left:3.5pt;padding-right:3.5pt;">3D Pred.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">FCD <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.m1.1.1" stretchy="false" xref="S4.T7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.4.4.7" style="padding-left:3.5pt;padding-right:3.5pt;">AtomStable</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.2.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">Bond length<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.m1.1.1" stretchy="false" xref="S4.T7.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">Bond angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.m1.1.1" stretchy="false" xref="S4.T7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.4.4.4" style="padding-left:3.5pt;padding-right:3.5pt;">Dihedral angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.4.4.4.m1.1"><semantics id="S4.T7.4.4.4.m1.1a"><mo id="S4.T7.4.4.4.m1.1.1" stretchy="false" xref="S4.T7.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.m1.1b"><ci id="S4.T7.4.4.4.m1.1.1.cmml" xref="S4.T7.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T7.4.5.1.1" rowspan="2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S4.T7.4.5.1.1.1">NExT-Mol</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.4.5.1.2" style="padding-left:3.5pt;padding-right:3.5pt;">DMT-B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.3" style="padding-left:3.5pt;padding-right:3.5pt;">14.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.4" style="padding-left:3.5pt;padding-right:3.5pt;">0.848</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.5" style="padding-left:3.5pt;padding-right:3.5pt;">2.05E-02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.6" style="padding-left:3.5pt;padding-right:3.5pt;">8.18E-03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.5.1.7" style="padding-left:3.5pt;padding-right:3.5pt;">2.31E-04</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T7.4.6.2.1" style="padding-left:3.5pt;padding-right:3.5pt;">+MoLLama</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.6.2.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.6.2.2.1">14.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.6.2.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.6.2.3.1">0.852</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.6.2.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.6.2.4.1">1.48E-02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.6.2.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.6.2.5.1">8.08E-03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.6.2.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.6.2.6.1">1.81E-04</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study of randomized SELFIES augmentations in the 1D molecular generation task on QM9-2014 dataset.  It shows the performance of the model (MoLlama) with and without this data augmentation technique, comparing various metrics such as FCD (Fréchet ChemNet Distance), atom stability, molecule stability, validity & completeness (V&C), validity & uniqueness (V&U), validity & uniqueness & novelty (V&U&N), similarity to nearest neighbor (SNN), fragment similarity (Frag), and scaffold similarity (Scaf). This analysis helps to understand the impact of this specific data augmentation strategy on the overall performance of the 1D molecule generation model.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablating randomized SELFIES augmentations for 1D molecule generation on QM9-2014.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T8.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T8.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">2D metrics</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T8.1.1.1.m1.1"><semantics id="S4.T8.1.1.1.m1.1a"><mo id="S4.T8.1.1.1.m1.1.1" stretchy="false" xref="S4.T8.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T8.1.1.1.m1.1b"><ci id="S4.T8.1.1.1.m1.1.1.cmml" xref="S4.T8.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">AtomStable</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">MolStable</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">V&amp;C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">V&amp;U</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">V&amp;U&amp;N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">SNN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;">Frag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T8.1.1.10" style="padding-left:3.0pt;padding-right:3.0pt;">Scaf</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T8.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">MoLlama</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.2.1">0.070</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.4.1">0.989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.6.1">0.967</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.7.1">0.802</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.8.1">0.530</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.9.1">0.992</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.1.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.2.1.10.1">0.945</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T8.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T8.1.3.2.1.1">w/o</span> randomized aug.</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.074</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.3.2.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.988</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.1.3.2.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.948</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">0.395</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.491</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.989</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">0.939</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of pretraining the MoLlama model on 1D molecule generation using the GEOM-DRUGS dataset.  The table compares the performance metrics (FCD, AtomStable, MolStable, V&C, V&U, V&U&N, SNN, Frag, and Scaf) of MoLlama models with and without pretraining.  These metrics assess different aspects of the generated molecules, including their validity, stability, diversity, and similarity to real molecules. The results show the effect of pretraining on these metrics, demonstrating the benefit of pretraining for improved performance in several areas.
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation study for the MoLlama pretraining for 1D molecule generation on the GEOM-DRUGS dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T9.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T9.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T9.1.1.1.m1.1"><semantics id="A2.T9.1.1.1.m1.1a"><mo id="A2.T9.1.1.1.m1.1.1" stretchy="false" xref="A2.T9.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T9.1.1.1.m1.1b"><ci id="A2.T9.1.1.1.m1.1.1.cmml" xref="A2.T9.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T9.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">AtomStable</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">MolStable</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">V&amp;C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">V&amp;U</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">V&amp;U&amp;N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">SNN</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Frag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">Scaf</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T9.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T9.1.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MoLlama</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.2.1">0.334</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.4.1">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.6.1">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.945</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.8.1">0.529</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.9.1">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.10.1">0.552</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T9.1.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_italic" id="A2.T9.1.3.2.1.1">w/o</span> pretraining</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">0.586</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.3.2.3.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0.995</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.3.2.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.3.2.6.1">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.3.2.7.1">0.974</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">0.495</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.3.2.9.1">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.3.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.534</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the effect of random rotation augmentation for 3D conformer prediction using the Diffusion Molecular Transformer (DMT) model on the GEOM-QM9 dataset.  It shows a comparison of the model's performance with and without random rotation augmentation, assessing metrics such as Coverage-Recall (COV-R), Average Minimum RMSD-Recall (AMR-R), Coverage-Precision (COV-P), and Average Minimum RMSD-Precision (AMR-P).  The results help determine the impact of this data augmentation technique on the model's ability to accurately predict 3D molecular conformations.
> <details>
> <summary>read the caption</summary>
> Table 10: Ablating random rotation augmentation for 3D conformer prediction on GEOM-QM9.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T10.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T10.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T10.4.4.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T10.1.1.1">COV-R (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.1.1.1.m1.1"><semantics id="A2.T10.1.1.1.m1.1a"><mo id="A2.T10.1.1.1.m1.1.1" stretchy="false" xref="A2.T10.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.1.1.1.m1.1b"><ci id="A2.T10.1.1.1.m1.1.1.cmml" xref="A2.T10.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T10.2.2.2">AMR-R <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T10.2.2.2.m1.1"><semantics id="A2.T10.2.2.2.m1.1a"><mo id="A2.T10.2.2.2.m1.1.1" stretchy="false" xref="A2.T10.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T10.2.2.2.m1.1b"><ci id="A2.T10.2.2.2.m1.1.1.cmml" xref="A2.T10.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T10.3.3.3">COV-P (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T10.3.3.3.m1.1"><semantics id="A2.T10.3.3.3.m1.1a"><mo id="A2.T10.3.3.3.m1.1.1" stretchy="false" xref="A2.T10.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T10.3.3.3.m1.1b"><ci id="A2.T10.3.3.3.m1.1.1.cmml" xref="A2.T10.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T10.4.4.4">AMR-P <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T10.4.4.4.m1.1"><semantics id="A2.T10.4.4.4.m1.1a"><mo id="A2.T10.4.4.4.m1.1.1" stretchy="false" xref="A2.T10.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T10.4.4.4.m1.1b"><ci id="A2.T10.4.4.4.m1.1.1.cmml" xref="A2.T10.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T10.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="A2.T10.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T10.4.5.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.2">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.3">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.4">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.5">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.6">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.7">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.8">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T10.4.5.1.9">Median</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T10.4.6.1.1">DMT-B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.2"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.2.1">95.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.3"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.3.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.4"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.4.1">0.090</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.5"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.5.1">0.036</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.6"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.6.1">93.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.7"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.8"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.8.1">0.108</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.4.6.1.9"><span class="ltx_text ltx_font_bold" id="A2.T10.4.6.1.9.1">0.049</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T10.4.7.2.1">
<span class="ltx_text ltx_font_italic" id="A2.T10.4.7.2.1.1">w/o</span> rand rot aug.</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.2"><span class="ltx_text ltx_font_bold" id="A2.T10.4.7.2.2.1">95.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.3"><span class="ltx_text ltx_font_bold" id="A2.T10.4.7.2.3.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.4">0.095</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.5">0.040</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.6">93.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.7"><span class="ltx_text ltx_font_bold" id="A2.T10.4.7.2.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.8">0.113</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.4.7.2.9">0.053</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents a comparison of the performance of various methods on four different MoleculeNet datasets (Wu et al., 2018), focusing on the prediction of molecular properties.  The results are reported in terms of root mean squared error (RMSE) for FreeSolv, ESOL, and Lipophilicity datasets, and mean absolute error (MAE) for the QM7 dataset. The table showcases different machine learning methods, including supervised learning techniques, graph neural networks (GNNs), and pretrained GNN-based methods, highlighting their performance against the newly proposed model (MoLlama).  The baseline results for comparison are taken from Rollins et al. (2024). Lower values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 11: Molecule property regression results on four MoleculeNet datasets (Wu et al., 2018). Baseline results are from (Rollins et al., 2024). Lower↓↓\downarrow↓ is better.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T11.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T11.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T11.3.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">FreeSolv (RMSE)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">ESOL (RMSE)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">Lipo (RMSE)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">QM7 (MAE)</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="3" id="A2.T11.3.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.2.2.1.1">Supervised Learning Methods</span></th>
<td class="ltx_td ltx_border_t" id="A2.T11.3.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A2.T11.3.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">RF <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib91" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.03±0.22</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.07±0.19</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.88±0.04</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">122.7±4.2</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">SVM <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib91" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">3.14±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.50±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.82±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">156.9±0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="3" id="A2.T11.3.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.5.5.1.1">Supervised GNN-based Methods</span></th>
<td class="ltx_td ltx_border_t" id="A2.T11.3.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A2.T11.3.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">GCN <cite class="ltx_cite ltx_citemacro_citep">(Kipf &amp; Welling, <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib43" title="">2017</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.87±0.14</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.43±0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.85±0.08</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">122.9±2.2</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">GATv2 <cite class="ltx_cite ltx_citemacro_citep">(Brody et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib9" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">3.14±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.41±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.89±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">113.3±0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">GIN <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib97" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.76±0.18</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.45±0.02</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.85±0.07</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;">124.8±0.7</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">SchNet <cite class="ltx_cite ltx_citemacro_citep">(Schütt et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib76" title="">2018</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">3.22±0.76</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.05±0.06</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.91±0.10</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;">74.2±6.0</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">3D Infomax <cite class="ltx_cite ltx_citemacro_citep">(Stärk et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib82" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.23±0.26</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.95±0.04</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.74±0.01</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.11.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">MGCN <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib59" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.11.11.2" style="padding-left:2.0pt;padding-right:2.0pt;">3.35±0.01</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.11.11.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.27±0.15</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.11.11.4" style="padding-left:2.0pt;padding-right:2.0pt;">1.11±0.04</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;">77.6±4.7</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.12.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">D-MPNN <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib100" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.18±0.91</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.98±0.26</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.65±0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;">105.8±13.2</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="3" id="A2.T11.3.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.13.13.1.1">Pretrained GNN-based Methods</span></th>
<td class="ltx_td ltx_border_t" id="A2.T11.3.13.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A2.T11.3.13.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.14.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">Pretrain-GNN <cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib33" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.83±0.12</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.14.14.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.22±0.02</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.14.14.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.74±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.14.14.5" style="padding-left:2.0pt;padding-right:2.0pt;">110.2±6.4</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.15.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">MolCLR <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib91" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.15.15.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.20±0.20</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.15.15.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.11±0.01</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.15.15.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.65±0.08</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.15.15.5" style="padding-left:2.0pt;padding-right:2.0pt;">87.2±2.0</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="3" id="A2.T11.3.16.16.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.16.16.1.1">LM-based Methods</span></th>
<td class="ltx_td ltx_border_t" id="A2.T11.3.16.16.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A2.T11.3.16.16.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.17.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">ChemBERTa-2 <cite class="ltx_cite ltx_citemacro_citep">(Ahmad et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib2" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.17.17.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.047±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.17.17.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.889±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.17.17.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.798±0.00</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.17.17.5" style="padding-left:2.0pt;padding-right:2.0pt;">172.8±0.00</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T11.3.18.18.1" style="padding-left:2.0pt;padding-right:2.0pt;">MolPROP <cite class="ltx_cite ltx_citemacro_citep">(Rollins et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.12638v1#bib.bib73" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T11.3.18.18.2" style="padding-left:2.0pt;padding-right:2.0pt;">1.70±0.09</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.18.18.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.777±0.02</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.18.18.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.733±0.02</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.18.18.5" style="padding-left:2.0pt;padding-right:2.0pt;">151.8±10.0</td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T11.3.19.19.1" style="padding-left:2.0pt;padding-right:2.0pt;">MoLlama, ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.3.19.19.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.19.19.2.1">1.59±0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.3.19.19.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.19.19.3.1">0.740±0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.3.19.19.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.19.19.4.1">0.627±0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T11.3.19.19.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.19.19.5.1">63.5±1.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of incorporating MoLlama's pretrained 1D representations into DMT-B for 3D conformer prediction.  The experiments compare the performance of DMT-B alone against DMT-B enhanced with MoLlama's representations, evaluating on the GEOM-QM9 dataset.  The metrics used are Coverage (COV-R) and Average Minimum RMSD (AMR-R) for recall and COV-P and AMR-P for precision, showcasing the improved accuracy and coverage achieved by incorporating 1D information.
> <details>
> <summary>read the caption</summary>
> Table 12: Incorporating MoLlama’s 1D representations to improve DMT’s 3D conformer prediction.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T12.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T12.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T12.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T12.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T12.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">COV-R (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T12.1.1.1.m1.1"><semantics id="A2.T12.1.1.1.m1.1a"><mo id="A2.T12.1.1.1.m1.1.1" stretchy="false" xref="A2.T12.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T12.1.1.1.m1.1b"><ci id="A2.T12.1.1.1.m1.1.1.cmml" xref="A2.T12.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T12.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T12.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T12.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-R <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T12.2.2.2.m1.1"><semantics id="A2.T12.2.2.2.m1.1a"><mo id="A2.T12.2.2.2.m1.1.1" stretchy="false" xref="A2.T12.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T12.2.2.2.m1.1b"><ci id="A2.T12.2.2.2.m1.1.1.cmml" xref="A2.T12.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T12.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T12.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T12.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">COV-P (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T12.3.3.3.m1.1"><semantics id="A2.T12.3.3.3.m1.1a"><mo id="A2.T12.3.3.3.m1.1.1" stretchy="false" xref="A2.T12.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T12.3.3.3.m1.1b"><ci id="A2.T12.3.3.3.m1.1.1.cmml" xref="A2.T12.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T12.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T12.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T12.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">AMR-P <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T12.4.4.4.m1.1"><semantics id="A2.T12.4.4.4.m1.1a"><mo id="A2.T12.4.4.4.m1.1.1" stretchy="false" xref="A2.T12.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T12.4.4.4.m1.1b"><ci id="A2.T12.4.4.4.m1.1.1.cmml" xref="A2.T12.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T12.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T12.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="A2.T12.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T12.4.5.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Dataset</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T12.4.5.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.8" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T12.4.5.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">Median</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T12.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A2.T12.4.6.1.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A2.T12.4.6.1.1.1">GEOM-QM9</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T12.4.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">DMT-B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">95.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.6.1.4.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">0.090</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.6.1.6.1">0.036</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">93.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.6.1.8.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.9" style="padding-left:4.0pt;padding-right:4.0pt;">0.108</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T12.4.6.1.10" style="padding-left:4.0pt;padding-right:4.0pt;">0.049</td>
</tr>
<tr class="ltx_tr" id="A2.T12.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T12.4.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">+MoLlama</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.2.1">95.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.3.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.4.1">0.083</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.5.1">0.036</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.6.1">94.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.7.1">100.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.8.1">0.097</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T12.4.7.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T12.4.7.2.9.1">0.044</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of 3D conformer prediction experiments conducted on the GEOM-DRUGS dataset.  It compares the performance of the Diffusion Molecular Transformer (DMT) model using different predictor-corrector sampler settings (snr values). The metrics used to evaluate the model's performance are Coverage-Recall (COV-R), Average Minimum RMSD-Recall (AMR-R), Coverage-Precision (COV-P), and Average Minimum RMSD-Precision (AMR-P).  The table shows how the model's performance changes across different hyperparameters for the sampling process, allowing for a detailed analysis of the model's behavior in different scenarios.
> <details>
> <summary>read the caption</summary>
> Table 13: Performances of 3D conformer prediction on the GEOM-DRUGS dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T13.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T13.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T13.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T13.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">COV-R (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T13.1.1.1.m1.1"><semantics id="A2.T13.1.1.1.m1.1a"><mo id="A2.T13.1.1.1.m1.1.1" stretchy="false" xref="A2.T13.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T13.1.1.1.m1.1b"><ci id="A2.T13.1.1.1.m1.1.1.cmml" xref="A2.T13.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T13.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T13.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">AMR-R <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T13.2.2.2.m1.1"><semantics id="A2.T13.2.2.2.m1.1a"><mo id="A2.T13.2.2.2.m1.1.1" stretchy="false" xref="A2.T13.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T13.2.2.2.m1.1b"><ci id="A2.T13.2.2.2.m1.1.1.cmml" xref="A2.T13.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T13.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T13.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">COV-P (%)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T13.3.3.3.m1.1"><semantics id="A2.T13.3.3.3.m1.1a"><mo id="A2.T13.3.3.3.m1.1.1" stretchy="false" xref="A2.T13.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T13.3.3.3.m1.1b"><ci id="A2.T13.3.3.3.m1.1.1.cmml" xref="A2.T13.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T13.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T13.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">AMR-P <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T13.4.4.4.m1.1"><semantics id="A2.T13.4.4.4.m1.1a"><mo id="A2.T13.4.4.4.m1.1.1" stretchy="false" xref="A2.T13.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T13.4.4.4.m1.1b"><ci id="A2.T13.4.4.4.m1.1.1.cmml" xref="A2.T13.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T13.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T13.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="A2.T13.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T13.4.5.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">Median</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">Mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T13.4.5.1.9" style="padding-left:3.0pt;padding-right:3.0pt;">Median</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T13.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T13.4.6.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">DMT-B, PC samp., snr=0.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">85.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">91.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.398</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.372</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">66.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">69.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.633</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T13.4.6.1.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.560</td>
</tr>
<tr class="ltx_tr" id="A2.T13.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T13.4.7.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">DMT-B, PC samp., snr=0.3</th>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">85.5</td>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">91.2</td>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.396</td>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.370</td>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">67.6</td>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">71.5</td>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.623</td>
<td class="ltx_td ltx_align_center" id="A2.T13.4.7.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.546</td>
</tr>
<tr class="ltx_tr" id="A2.T13.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T13.4.8.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">DMT-B, PC samp., snr=0.4</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">79.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.535</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.501</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">68.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">0.621</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T13.4.8.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">0.548</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a study comparing the performance of a diffusion model for 3D conformer prediction using three different noise schedules during inference: linear, cosine, and polynomial.  The model, DMT-B, is evaluated on the GEOM-DRUGS dataset using metrics such as Coverage (COV-R and COV-P) and Average Minimum RMSD (AMR-R and AMR-P). The cosine schedule represents the original setting while the others represent variations applied during the inference phase, without re-training the model.  The results show how the choice of noise schedule affects the model's ability to accurately predict 3D conformers.
> <details>
> <summary>read the caption</summary>
> Table 14: DMT-B’s 3D conformer prediction performances on the GEOM-DRUGS dataset when using different noise schedulers at inference time.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T14.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T14.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T14.4.4.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T14.1.1.1">
<span class="ltx_text" id="A2.T14.1.1.1.1" style="color:#000000;">COV-R (%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T14.1.1.1.m1.1"><semantics id="A2.T14.1.1.1.m1.1a"><mo id="A2.T14.1.1.1.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T14.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T14.1.1.1.m1.1b"><ci id="A2.T14.1.1.1.m1.1.1.cmml" xref="A2.T14.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T14.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T14.2.2.2">
<span class="ltx_text" id="A2.T14.2.2.2.1" style="color:#000000;">AMR-R </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T14.2.2.2.m1.1"><semantics id="A2.T14.2.2.2.m1.1a"><mo id="A2.T14.2.2.2.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T14.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T14.2.2.2.m1.1b"><ci id="A2.T14.2.2.2.m1.1.1.cmml" xref="A2.T14.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T14.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T14.3.3.3">
<span class="ltx_text" id="A2.T14.3.3.3.1" style="color:#000000;">COV-P (%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T14.3.3.3.m1.1"><semantics id="A2.T14.3.3.3.m1.1a"><mo id="A2.T14.3.3.3.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T14.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T14.3.3.3.m1.1b"><ci id="A2.T14.3.3.3.m1.1.1.cmml" xref="A2.T14.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T14.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T14.4.4.4">
<span class="ltx_text" id="A2.T14.4.4.4.1" style="color:#000000;">AMR-P </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T14.4.4.4.m1.1"><semantics id="A2.T14.4.4.4.m1.1a"><mo id="A2.T14.4.4.4.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T14.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T14.4.4.4.m1.1b"><ci id="A2.T14.4.4.4.m1.1.1.cmml" xref="A2.T14.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T14.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T14.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="A2.T14.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T14.4.5.1.1"><span class="ltx_text" id="A2.T14.4.5.1.1.1" style="color:#000000;">Noise schedule</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.2"><span class="ltx_text" id="A2.T14.4.5.1.2.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.3"><span class="ltx_text" id="A2.T14.4.5.1.3.1" style="color:#000000;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.4"><span class="ltx_text" id="A2.T14.4.5.1.4.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.5"><span class="ltx_text" id="A2.T14.4.5.1.5.1" style="color:#000000;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.6"><span class="ltx_text" id="A2.T14.4.5.1.6.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.7"><span class="ltx_text" id="A2.T14.4.5.1.7.1" style="color:#000000;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.8"><span class="ltx_text" id="A2.T14.4.5.1.8.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T14.4.5.1.9"><span class="ltx_text" id="A2.T14.4.5.1.9.1" style="color:#000000;">Median</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T14.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T14.4.6.1.1"><span class="ltx_text" id="A2.T14.4.6.1.1.1" style="color:#000000;">linear</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.2"><span class="ltx_text" id="A2.T14.4.6.1.2.1" style="color:#000000;">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.3"><span class="ltx_text" id="A2.T14.4.6.1.3.1" style="color:#000000;">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.4"><span class="ltx_text" id="A2.T14.4.6.1.4.1" style="color:#000000;">0.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.5"><span class="ltx_text" id="A2.T14.4.6.1.5.1" style="color:#000000;">0.634</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.6"><span class="ltx_text" id="A2.T14.4.6.1.6.1" style="color:#000000;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.7"><span class="ltx_text" id="A2.T14.4.6.1.7.1" style="color:#000000;">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.8"><span class="ltx_text" id="A2.T14.4.6.1.8.1" style="color:#000000;">0.726</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T14.4.6.1.9"><span class="ltx_text" id="A2.T14.4.6.1.9.1" style="color:#000000;">0.624</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T14.4.7.2.1"><span class="ltx_text" id="A2.T14.4.7.2.1.1" style="color:#000000;">cosine, original</span></th>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.2"><span class="ltx_text" id="A2.T14.4.7.2.2.1" style="color:#000000;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.3"><span class="ltx_text" id="A2.T14.4.7.2.3.1" style="color:#000000;">92.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.4"><span class="ltx_text" id="A2.T14.4.7.2.4.1" style="color:#000000;">0.401</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.5"><span class="ltx_text" id="A2.T14.4.7.2.5.1" style="color:#000000;">0.375</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.6"><span class="ltx_text" id="A2.T14.4.7.2.6.1" style="color:#000000;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.7"><span class="ltx_text" id="A2.T14.4.7.2.7.1" style="color:#000000;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.8"><span class="ltx_text" id="A2.T14.4.7.2.8.1" style="color:#000000;">0.642</span></td>
<td class="ltx_td ltx_align_center" id="A2.T14.4.7.2.9"><span class="ltx_text" id="A2.T14.4.7.2.9.1" style="color:#000000;">0.577</span></td>
</tr>
<tr class="ltx_tr" id="A2.T14.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T14.4.8.3.1"><span class="ltx_text" id="A2.T14.4.8.3.1.1" style="color:#000000;">polynomial</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.2"><span class="ltx_text" id="A2.T14.4.8.3.2.1" style="color:#000000;">84.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.3"><span class="ltx_text" id="A2.T14.4.8.3.3.1" style="color:#000000;">91.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.4"><span class="ltx_text" id="A2.T14.4.8.3.4.1" style="color:#000000;">0.454</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.5"><span class="ltx_text" id="A2.T14.4.8.3.5.1" style="color:#000000;">0.421</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.6"><span class="ltx_text" id="A2.T14.4.8.3.6.1" style="color:#000000;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.7"><span class="ltx_text" id="A2.T14.4.8.3.7.1" style="color:#000000;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.8"><span class="ltx_text" id="A2.T14.4.8.3.8.1" style="color:#000000;">0.685</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T14.4.8.3.9"><span class="ltx_text" id="A2.T14.4.8.3.9.1" style="color:#000000;">0.619</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the effect of different batch sizes on the performance of the Diffusion Molecular Transformer (DMT-B) model for 3D conformer prediction using the GEOM-DRUGS dataset.  The metrics used to assess model performance include Coverage (COV-R, COV-P) and Average Minimum Root Mean Square Deviation (AMR-R, AMR-P), which measure the similarity between predicted and ground truth conformers.  The table shows the mean and median values of these metrics across multiple runs, providing a comprehensive evaluation of the impact of batch size on model accuracy and stability.
> <details>
> <summary>read the caption</summary>
> Table 15: DMT-B’s 3D conformer prediction performances on the GEOM-DRUGS dataset when using different batch sizes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T15.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T15.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T15.4.4.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T15.1.1.1">
<span class="ltx_text" id="A2.T15.1.1.1.1" style="color:#000000;">COV-R (%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T15.1.1.1.m1.1"><semantics id="A2.T15.1.1.1.m1.1a"><mo id="A2.T15.1.1.1.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T15.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T15.1.1.1.m1.1b"><ci id="A2.T15.1.1.1.m1.1.1.cmml" xref="A2.T15.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T15.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T15.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T15.2.2.2">
<span class="ltx_text" id="A2.T15.2.2.2.1" style="color:#000000;">AMR-R </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T15.2.2.2.m1.1"><semantics id="A2.T15.2.2.2.m1.1a"><mo id="A2.T15.2.2.2.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T15.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T15.2.2.2.m1.1b"><ci id="A2.T15.2.2.2.m1.1.1.cmml" xref="A2.T15.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T15.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T15.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T15.3.3.3">
<span class="ltx_text" id="A2.T15.3.3.3.1" style="color:#000000;">COV-P (%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T15.3.3.3.m1.1"><semantics id="A2.T15.3.3.3.m1.1a"><mo id="A2.T15.3.3.3.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T15.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T15.3.3.3.m1.1b"><ci id="A2.T15.3.3.3.m1.1.1.cmml" xref="A2.T15.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T15.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T15.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T15.4.4.4">
<span class="ltx_text" id="A2.T15.4.4.4.1" style="color:#000000;">AMR-P </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T15.4.4.4.m1.1"><semantics id="A2.T15.4.4.4.m1.1a"><mo id="A2.T15.4.4.4.m1.1.1" mathcolor="#000000" stretchy="false" xref="A2.T15.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T15.4.4.4.m1.1b"><ci id="A2.T15.4.4.4.m1.1.1.cmml" xref="A2.T15.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T15.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T15.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="A2.T15.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T15.4.5.1.1"><span class="ltx_text" id="A2.T15.4.5.1.1.1" style="color:#000000;">Batch size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.2"><span class="ltx_text" id="A2.T15.4.5.1.2.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.3"><span class="ltx_text" id="A2.T15.4.5.1.3.1" style="color:#000000;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.4"><span class="ltx_text" id="A2.T15.4.5.1.4.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.5"><span class="ltx_text" id="A2.T15.4.5.1.5.1" style="color:#000000;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.6"><span class="ltx_text" id="A2.T15.4.5.1.6.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.7"><span class="ltx_text" id="A2.T15.4.5.1.7.1" style="color:#000000;">Median</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.8"><span class="ltx_text" id="A2.T15.4.5.1.8.1" style="color:#000000;">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T15.4.5.1.9"><span class="ltx_text" id="A2.T15.4.5.1.9.1" style="color:#000000;">Median</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T15.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T15.4.6.1.1"><span class="ltx_text" id="A2.T15.4.6.1.1.1" style="color:#000000;">128</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.2"><span class="ltx_text" id="A2.T15.4.6.1.2.1" style="color:#000000;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.3"><span class="ltx_text" id="A2.T15.4.6.1.3.1" style="color:#000000;">92.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.4"><span class="ltx_text" id="A2.T15.4.6.1.4.1" style="color:#000000;">0.395</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.5"><span class="ltx_text" id="A2.T15.4.6.1.5.1" style="color:#000000;">0.366</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.6"><span class="ltx_text" id="A2.T15.4.6.1.6.1" style="color:#000000;">65.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.7"><span class="ltx_text" id="A2.T15.4.6.1.7.1" style="color:#000000;">68.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.8"><span class="ltx_text" id="A2.T15.4.6.1.8.1" style="color:#000000;">0.644</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T15.4.6.1.9"><span class="ltx_text" id="A2.T15.4.6.1.9.1" style="color:#000000;">0.575</span></td>
</tr>
<tr class="ltx_tr" id="A2.T15.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T15.4.7.2.1"><span class="ltx_text" id="A2.T15.4.7.2.1.1" style="color:#000000;">256, original</span></th>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.2"><span class="ltx_text" id="A2.T15.4.7.2.2.1" style="color:#000000;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.3"><span class="ltx_text" id="A2.T15.4.7.2.3.1" style="color:#000000;">92.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.4"><span class="ltx_text" id="A2.T15.4.7.2.4.1" style="color:#000000;">0.401</span></td>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.5"><span class="ltx_text" id="A2.T15.4.7.2.5.1" style="color:#000000;">0.375</span></td>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.6"><span class="ltx_text" id="A2.T15.4.7.2.6.1" style="color:#000000;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.7"><span class="ltx_text" id="A2.T15.4.7.2.7.1" style="color:#000000;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.8"><span class="ltx_text" id="A2.T15.4.7.2.8.1" style="color:#000000;">0.642</span></td>
<td class="ltx_td ltx_align_center" id="A2.T15.4.7.2.9"><span class="ltx_text" id="A2.T15.4.7.2.9.1" style="color:#000000;">0.577</span></td>
</tr>
<tr class="ltx_tr" id="A2.T15.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T15.4.8.3.1"><span class="ltx_text" id="A2.T15.4.8.3.1.1" style="color:#000000;">512</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.2"><span class="ltx_text" id="A2.T15.4.8.3.2.1" style="color:#000000;">85.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.3"><span class="ltx_text" id="A2.T15.4.8.3.3.1" style="color:#000000;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.4"><span class="ltx_text" id="A2.T15.4.8.3.4.1" style="color:#000000;">0.410</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.5"><span class="ltx_text" id="A2.T15.4.8.3.5.1" style="color:#000000;">0.377</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.6"><span class="ltx_text" id="A2.T15.4.8.3.6.1" style="color:#000000;">64.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.7"><span class="ltx_text" id="A2.T15.4.8.3.7.1" style="color:#000000;">67.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.8"><span class="ltx_text" id="A2.T15.4.8.3.8.1" style="color:#000000;">0.645</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T15.4.8.3.9"><span class="ltx_text" id="A2.T15.4.8.3.9.1" style="color:#000000;">0.582</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 16 presents the results of 3D molecule stability evaluation on two datasets, GEOM-DRUGS and QM9-2014.  The metric used is 'MolStable', representing molecular stability.  The table compares the performance of NEXT-Mol to several baselines, including EDM, JODO, MiDi, EQGAT-diff, G-SchNet, G-SphereNet, and MDM.  The results are shown separately for the two datasets, allowing for a direct comparison of performance across various methods. The asterisk (*) indicates that those particular results were reproduced by the authors of the paper using the original source code.
> <details>
> <summary>read the caption</summary>
> Table 16: 3D Molecule stability performances. * denotes our reproduced results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T16.st1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T16.st1.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T16.st1.3.1.1.1"><span class="ltx_text" id="A2.T16.st1.3.1.1.1.1" style="color:#000000;">3D-Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T16.st1.3.1.1.2"><span class="ltx_text" id="A2.T16.st1.3.1.1.2.1" style="color:#000000;">MolStable</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T16.st1.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T16.st1.3.2.1.1"><span class="ltx_text" id="A2.T16.st1.3.2.1.1.1" style="color:#808080;">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T16.st1.3.2.1.2"><span class="ltx_text" id="A2.T16.st1.3.2.1.2.1" style="color:#808080;">0.028</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st1.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st1.3.3.2.1"><span class="ltx_text" id="A2.T16.st1.3.3.2.1.1" style="color:#000000;">EDM</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st1.3.3.2.2"><span class="ltx_text" id="A2.T16.st1.3.3.2.2.1" style="color:#000000;">0.002</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st1.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st1.3.4.3.1"><span class="ltx_text" id="A2.T16.st1.3.4.3.1.1" style="color:#000000;">JODO</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st1.3.4.3.2"><span class="ltx_text" id="A2.T16.st1.3.4.3.2.1" style="color:#000000;">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st1.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st1.3.5.4.1"><span class="ltx_text" id="A2.T16.st1.3.5.4.1.1" style="color:#000000;">MiDi*</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st1.3.5.4.2"><span class="ltx_text" id="A2.T16.st1.3.5.4.2.1" style="color:#000000;">0.003</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st1.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st1.3.6.5.1"><span class="ltx_text" id="A2.T16.st1.3.6.5.1.1" style="color:#000000;">EQGAT</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st1.3.6.5.2"><span class="ltx_text" id="A2.T16.st1.3.6.5.2.1" style="color:#000000;">0.025</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st1.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T16.st1.3.7.6.1"><span class="ltx_text" id="A2.T16.st1.3.7.6.1.1" style="color:#000000;">NExT-Mol, ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T16.st1.3.7.6.2"><span class="ltx_text ltx_font_bold" id="A2.T16.st1.3.7.6.2.1" style="color:#000000;">0.027</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2(a) presents the performance of de novo 3D molecule generation on the GEOM-DRUGS dataset.  It evaluates multiple aspects of the generated molecules, including their validity (AtomStable, MolStable, V&C, V&U, V&U&N), distribution similarity (SNN, Frag, Scaf), and geometric similarity (FCD). The table compares the performance of NEXT-Mol with various baselines, providing a comprehensive evaluation of the model's ability to generate realistic and novel 3D molecular structures.
> <details>
> <summary>read the caption</summary>
> (a) GEOM-DRGUS dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T16.st2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T16.st2.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T16.st2.3.1.1.1"><span class="ltx_text" id="A2.T16.st2.3.1.1.1.1" style="color:#000000;">3D-Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T16.st2.3.1.1.2"><span class="ltx_text" id="A2.T16.st2.3.1.1.2.1" style="color:#000000;">MolStable</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T16.st2.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T16.st2.3.2.1.1"><span class="ltx_text" id="A2.T16.st2.3.2.1.1.1" style="color:#808080;">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T16.st2.3.2.1.2"><span class="ltx_text" id="A2.T16.st2.3.2.1.2.1" style="color:#808080;">0.953</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st2.3.3.2.1"><span class="ltx_text" id="A2.T16.st2.3.3.2.1.1" style="color:#000000;">G-SchNet</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st2.3.3.2.2"><span class="ltx_text" id="A2.T16.st2.3.3.2.2.1" style="color:#000000;">0.681</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st2.3.4.3.1"><span class="ltx_text" id="A2.T16.st2.3.4.3.1.1" style="color:#000000;">G-SphereNet</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st2.3.4.3.2"><span class="ltx_text" id="A2.T16.st2.3.4.3.2.1" style="color:#000000;">0.134</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st2.3.5.4.1"><span class="ltx_text" id="A2.T16.st2.3.5.4.1.1" style="color:#000000;">EDM</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st2.3.5.4.2"><span class="ltx_text" id="A2.T16.st2.3.5.4.2.1" style="color:#000000;">0.817</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st2.3.6.5.1"><span class="ltx_text" id="A2.T16.st2.3.6.5.1.1" style="color:#000000;">MDM</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st2.3.6.5.2"><span class="ltx_text" id="A2.T16.st2.3.6.5.2.1" style="color:#000000;">0.896</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st2.3.7.6.1"><span class="ltx_text" id="A2.T16.st2.3.7.6.1.1" style="color:#000000;">JODO</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st2.3.7.6.2"><span class="ltx_text" id="A2.T16.st2.3.7.6.2.1" style="color:#000000;">0.934</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st2.3.8.7.1"><span class="ltx_text" id="A2.T16.st2.3.8.7.1.1" style="color:#000000;">MiDi*</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st2.3.8.7.2"><span class="ltx_text" id="A2.T16.st2.3.8.7.2.1" style="color:#000000;">0.842</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T16.st2.3.9.8.1"><span class="ltx_text" id="A2.T16.st2.3.9.8.1.1" style="color:#000000;">EQGAT</span></th>
<td class="ltx_td ltx_align_center" id="A2.T16.st2.3.9.8.2"><span class="ltx_text" id="A2.T16.st2.3.9.8.2.1" style="color:#000000;">0.889</span></td>
</tr>
<tr class="ltx_tr" id="A2.T16.st2.3.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T16.st2.3.10.9.1"><span class="ltx_text" id="A2.T16.st2.3.10.9.1.1" style="color:#000000;">NExT-Mol, ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T16.st2.3.10.9.2"><span class="ltx_text ltx_font_bold" id="A2.T16.st2.3.10.9.2.1" style="color:#000000;">0.946</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of de novo 3D molecule generation on the QM9-2014 dataset.  The table shows various metrics evaluating the quality of the generated molecules.  These include measures of the molecule's validity (atom stability, molecule stability, validity and completeness), uniqueness (V&U, V&U&N), and similarity to known molecules (FCD, SNN, fragment, scaffold). The table compares the performance of the proposed NEXT-Mol model against several existing baselines.
> <details>
> <summary>read the caption</summary>
> (b) QM9-2014 dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_top" id="A2.F7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.F7.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.1.1.1" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.1.1.2" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.1.1.3" style="padding:-55pt 1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.F7.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.2.2.1" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.2.2.2" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.2.2.3" style="padding:-55pt 1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.F7.1.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.3.3.1" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.3.3.2" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.3.3.3" style="padding:-55pt 1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.F7.1.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.4.4.1" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.4.4.2" style="padding:-55pt 1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.F7.1.4.4.3" style="padding:-55pt 1.0pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the pretraining of the MoLlama language model.  It details settings for various aspects of the model architecture, training process, and optimization, including hidden layer sizes, activation functions, attention head counts, learning rates, weight decay, and gradient clipping.  These hyperparameters are crucial for controlling the model's capacity, training stability, and generalization performance.
> <details>
> <summary>read the caption</summary>
> Table 17: Hyperparameter for pretraining MoLlama.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T17.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T17.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A3.T17.1.1.1.1">hidden size</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T17.1.1.1.2">2048</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A3.T17.1.1.1.3">hidden act</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T17.1.1.1.4">silu</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.2.2.1">intermediate size</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.2.2.2">5632</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.2.2.3">batch size</th>
<td class="ltx_td ltx_align_center" id="A3.T17.1.2.2.4">512</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.3.3.1">max position embeddings</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.3.3.2">512</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.3.3.3">warmup steps</th>
<td class="ltx_td ltx_align_center" id="A3.T17.1.3.3.4">2000</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.4.4.1">num attention heads</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.4.4.2">32</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.4.4.3">min lr</th>
<td class="ltx_td ltx_align_center" id="A3.T17.1.4.4.4">4.00E-05</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.5.5.1">num hidden layers</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.5.5.2">22</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.5.5.3">init lr</th>
<td class="ltx_td ltx_align_center" id="A3.T17.1.5.5.4">4.00E-04</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.6.6.1">num key value heads</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.6.6.2">4</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T17.1.6.6.3">weight decay</th>
<td class="ltx_td ltx_align_center" id="A3.T17.1.6.6.4">1.00E-01</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T17.1.7.7.1">n query groups</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T17.1.7.7.2">4</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T17.1.7.7.3">grad clip</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T17.1.7.7.4">1.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the two diffusion molecular transformer (DMT) models: DMT-B and DMT-L.  It details the architecture configurations, including the number of layers, hidden layer sizes for both atom and pair representations, the number of attention heads, and the total number of parameters for each model.  These settings are crucial for understanding the differences in the complexity and performance between the two DMT models.
> <details>
> <summary>read the caption</summary>
> Table 18: Hyperparameters of the DMT-B and DMT-L models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.12638/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.12638/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}