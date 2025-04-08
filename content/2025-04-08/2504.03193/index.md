---
title: "Mamba as a Bridge: Where Vision Foundation Models Meet Vision Language Models for Domain-Generalized Semantic Segmentation"
summary: "MFuser: A Mamba-based fusion framework efficiently combines Vision Foundation Models and Vision Language Models for enhanced Domain-Generalized Semantic Segmentation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 National University of Singapore",]
showSummary: true
date: 2025-04-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03193 {{< /keyword >}}
{{< keyword icon="writer" >}} Xin Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03193" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03193" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03193/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Vision Foundation Models (VFMs) and Vision-Language Models (VLMs) have shown promise in Domain Generalized Semantic Segmentation (DGSS)**, but current methods often use them separately. VFMs excel at capturing fine-grained features, while VLMs provide robust text alignment but struggle with granularity. Integrating VFMs and VLMs using attention mechanisms is difficult because increased patch tokens complicate long-sequence modeling. Thus, there is a need for new method to capture each strength. 



To address these challenges, this paper proposes **MFuser, a novel Mamba-based fusion framework that efficiently combines VFMs and VLMs**. MFuser includes MVFuser, a co-adapter that jointly fine-tunes the models and captures sequential and spatial dynamics, and MTEnhancer, a hybrid attention-Mamba module that refines text embeddings using image priors. This method achieves precise feature locality and strong text alignment without significant computational overhead, outperforming existing DGSS methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MFuser, a Mamba-based fusion framework, efficiently integrates VFMs and VLMs for DGSS. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The MVFuser co-adapter and MTEnhancer module enhance feature locality and text alignment, improving overall performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MFuser achieves state-of-the-art results on synthetic-to-real and real-to-real DGSS benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **introduces an efficient and effective framework for DGSS by innovatively combining VFMs and VLMs**. This has the potential to improve the robustness and accuracy of semantic segmentation models in real-world applications such as autonomous driving and robotic perception, advancing the field of domain generalization.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03193/extracted/6335383/figures/VFM_vs_VLM.png)

> 🔼 Figure 1 compares feature visualizations from a Vision Foundation Model (VFM), a Vision-Language Model (VLM), and the proposed MFuser model. The VFM visualization (DINOv2) uses PCA to project features into RGB channels, revealing detailed spatial information but lacking semantic context. The VLM visualization (EVA02-CLIP) shows a similarity map for the query 'car', demonstrating strong text alignment but poor localization. MFuser combines both models, resulting in features with both precise localization and strong text alignment, as shown quantitatively in the graph.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparative analysis of the VFM and the VLM features. VFM: Visualization of PCA-computed features from DINOv2 (the first three components of PCA, computed on the image features, serve as color channels), displaying fine-grained details but lacking text alignment. VLM: Image-text similarity map from EVA02-CLIP using the query ‘car’, demonstrating good alignment with text but insufficient localization of queried objects. MFuser: Our proposed fusion framework integrates VFM and VLM, resulting in unified features that exhibit both precise locality and robust text alignment. Quantitative results on synthetic-to-real DGSS benchmarks further validate our approach, with MFuser consistently achieving the highest mIoU scores across all tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.9.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.9.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.9.3.4.1.1" rowspan="2"><span class="ltx_text" id="S5.T1.9.3.4.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.9.3.4.1.2" rowspan="2"><span class="ltx_text" id="S5.T1.9.3.4.1.2.1">Backbone</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T1.9.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.9.3.4.1.3.1">synthetic-to-real</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.7.1.1.1">G<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T1.7.1.1.1.m1.1"><semantics id="S5.T1.7.1.1.1.m1.1a"><mo id="S5.T1.7.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.7.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.1.1.1.m1.1b"><ci id="S5.T1.7.1.1.1.m1.1.1.cmml" xref="S5.T1.7.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.1.1.1.m1.1d">→</annotation></semantics></math>C</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.8.2.2.2">G<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T1.8.2.2.2.m1.1"><semantics id="S5.T1.8.2.2.2.m1.1a"><mo id="S5.T1.8.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.8.2.2.2.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T1.8.2.2.2.m1.1b"><ci id="S5.T1.8.2.2.2.m1.1.1.cmml" xref="S5.T1.8.2.2.2.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.2.2.2.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.2.2.2.m1.1d">→</annotation></semantics></math>B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.3.3">G<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T1.9.3.3.3.m1.1"><semantics id="S5.T1.9.3.3.3.m1.1a"><mo id="S5.T1.9.3.3.3.m1.1.1" stretchy="false" xref="S5.T1.9.3.3.3.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T1.9.3.3.3.m1.1b"><ci id="S5.T1.9.3.3.3.m1.1.1.cmml" xref="S5.T1.9.3.3.3.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.3.3.3.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.3.3.3.m1.1d">→</annotation></semantics></math>M</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.3.4">Avg.</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.3.5.2.1">SAN-SAW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.3.5.2.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.5.2.3">45.33</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.5.2.4">41.18</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.5.2.5">40.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.3.5.2.6">42.43</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.6.3.1">WildNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.6.3.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.6.3.3">45.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.6.3.4">41.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.6.3.5">47.08</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.6.3.6">44.87</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.7.4.1">SHADE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.7.4.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.7.4.3">46.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.7.4.4">43.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.7.4.5">45.50</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.7.4.6">45.27</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.8.5.1">TLDR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.8.5.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.8.5.3">47.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.8.5.4">44.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.8.5.5">48.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.8.5.6">47.09</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.9.6.1">FAMix <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.9.6.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.9.6.3">49.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.9.6.4">46.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.9.6.5">51.97</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.9.6.6">49.28</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.3.10.7.1">SHADE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.3.10.7.2">MiT-B5</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.10.7.3">53.27</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.10.7.4">48.19</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.10.7.5">54.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.3.10.7.6">52.15</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.11.8.1">IBAFormer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.11.8.2">MiT-B5</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.11.8.3">56.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.11.8.4">49.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.11.8.5">58.26</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.11.8.6">54.79</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.12.9.1">VLTSeg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.12.9.2">CLIP-B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.12.9.3">47.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.12.9.4">45.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.12.9.5">54.30</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.12.9.6">49.17</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.3.13.10.1">CLOUDS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.3.13.10.2">ConvNeXt-L</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.13.10.3">60.20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.13.10.4">57.40</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.9.3.13.10.5">67.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.3.13.10.6">61.50</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.14.11.1">VLTSeg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.14.11.2">EVA02-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.14.11.3">65.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.14.11.4">58.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.14.11.5">66.50</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.14.11.6">63.50</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.15.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.15.12.1">Rein <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.15.12.2">EVA02-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.15.12.3">65.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.15.12.4">60.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.15.12.5">64.90</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.15.12.6">63.60</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.16.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.16.13.1">Rein <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.16.13.2">DINOv2-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.16.13.3">66.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.16.13.4">60.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.16.13.5">66.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.16.13.6">64.30</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.17.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.17.14.1">SET <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.17.14.2">DINOv2-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.17.14.3">68.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.17.14.4">61.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.17.14.5">67.68</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.17.14.6">65.79</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.18.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.18.15.1">tqdm <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.18.15.2">EVA02-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.18.15.3">68.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.18.15.4">59.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.18.15.5">70.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.18.15.6">66.05</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.19.16" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.19.16.1"><span class="ltx_text" id="S5.T1.9.3.19.16.1.1" style="background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.19.16.2"><span class="ltx_text" id="S5.T1.9.3.19.16.2.1" style="background-color:#E6E6E6;">CLIP-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.19.16.3"><span class="ltx_text ltx_font_bold" id="S5.T1.9.3.19.16.3.1" style="background-color:#E6E6E6;">71.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.19.16.4"><span class="ltx_text" id="S5.T1.9.3.19.16.4.1" style="background-color:#E6E6E6;">61.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.19.16.5"><span class="ltx_text" id="S5.T1.9.3.19.16.5.1" style="background-color:#E6E6E6;">71.14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.19.16.6"><span class="ltx_text" id="S5.T1.9.3.19.16.6.1" style="background-color:#E6E6E6;">67.82</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.20.17" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.20.17.1"><span class="ltx_text" id="S5.T1.9.3.20.17.1.1" style="background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.3.20.17.2"><span class="ltx_text" id="S5.T1.9.3.20.17.2.1" style="background-color:#E6E6E6;">SIGLIP-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.20.17.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.9.3.20.17.3.1" style="background-color:#E6E6E6;">71.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.20.17.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.9.3.20.17.4.1" style="background-color:#E6E6E6;">61.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.3.20.17.5"><span class="ltx_text ltx_font_bold" id="S5.T1.9.3.20.17.5.1" style="background-color:#E6E6E6;">71.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.3.20.17.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.9.3.20.17.6.1" style="background-color:#E6E6E6;">68.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.3.21.18" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.9.3.21.18.1"><span class="ltx_text" id="S5.T1.9.3.21.18.1.1" style="background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.9.3.21.18.2"><span class="ltx_text" id="S5.T1.9.3.21.18.2.1" style="background-color:#E6E6E6;">EVA02-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.9.3.21.18.3"><span class="ltx_text" id="S5.T1.9.3.21.18.3.1" style="background-color:#E6E6E6;">70.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.9.3.21.18.4"><span class="ltx_text ltx_font_bold" id="S5.T1.9.3.21.18.4.1" style="background-color:#E6E6E6;">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.9.3.21.18.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.9.3.21.18.5.1" style="background-color:#E6E6E6;">71.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.3.21.18.6"><span class="ltx_text ltx_font_bold" id="S5.T1.9.3.21.18.6.1" style="background-color:#E6E6E6;">68.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the mean Intersection over Union (mIoU) scores achieved by different semantic segmentation models on three synthetic-to-real domain generalization benchmarks (G→C, G→B, G→M).  The models are evaluated on their ability to transfer knowledge from a synthetic source domain to three distinct real-world target domains (C, B, M).  The table includes both conventional and recent foundation model-based methods.  The Vision Foundation Model (VFM) used is consistently DINOv2 [38] across all methods, with only the Vision Language Model (VLM) varying.  The results for the proposed MFuser method are highlighted in gray, with the top two performing models for each benchmark indicated in bold and underlined.
> <details>
> <summary>read the caption</summary>
> Table 1:  Performance comparison (mIoU in %) under the synthetic-to-real setting (G→→\rightarrow→{{\{{C, B, M}}\}}). DINOv2 [38] is used as the VFM for all MFuser variants, showing only the applied VLMs. Our method is marked in gray. The best and second-best results are highlighted in bold and underlined, respectively.
> </details>





### In-depth insights


#### VFM & VLM Synergy
**Combining Vision Foundation Models (VFMs) and Vision-Language Models (VLMs) offers immense potential**. VFMs excel at capturing detailed visual features, while VLMs provide strong text alignment and semantic understanding. A synergistic approach can overcome the limitations of relying solely on one type of model. **Effective integration is challenging due to increased complexity** in long-sequence modeling, requiring innovative fusion strategies. Addressing these challenges can lead to significant advancements in tasks like domain-generalized semantic segmentation, achieving **robust performance across diverse and unseen conditions** by leveraging complementary strengths.

#### Mamba Efficiently
**Mamba's efficiency** is a key factor driving its adoption in various domains. Its **linear complexity** allows it to process long sequences efficiently, which is crucial for tasks like semantic segmentation where context matters. Mamba's architecture, designed with hardware awareness, further optimizes performance. By carefully selecting and integrating relevant information, Mamba avoids the computational bottlenecks associated with traditional attention mechanisms. This efficiency makes it a viable alternative for resource-constrained environments and large-scale datasets. The speed and scalability of Mamba pave the way for developing more sophisticated and practical applications in areas like computer vision, natural language processing, and medical imaging. Moreover, Mamba's selective state space model enables effective memory management and reduces the need for extensive computational resources, making it a powerful and versatile tool for a wide range of applications. By reducing computational overhead, Mamba can be efficiently implemented and deployed.

#### MVFuser Details
Based on the provided text, **MVFuser** seems to be a core component of a novel framework designed for domain-generalized semantic segmentation (DGSS). It serves as a **Mamba-based co-adapter**, jointly fine-tuning Vision Foundation Models (VFMs) and Vision-Language Models (VLMs). A key aspect is its ability to capture both **sequential** and **spatial dynamics** from the concatenated patch tokens of the VFMs and VLMs in parallel. This enables effective interaction between the two feature types, improving the granularity of VLM features while reducing the number of trainable parameters. The architecture likely involves modifications to the original Mamba block to encourage separate branches to handle sequential dynamics and spatial relationships, followed by a gating mechanism for generalization. This design choice suggests a trade-off between capturing global dependencies (sequential) and local relationships (spatial), with the gating mechanism acting as a learned selector for the most relevant information.

#### Align Text & Vis
The research paper emphasizes the importance of aligning text and visual modalities for domain-generalized semantic segmentation (DGSS). Existing methods often rely exclusively on either Vision Foundation Models (VFMs) or Vision-Language Models (VLMs), overlooking their complementary strengths. **VFMs excel at capturing fine-grained features,** while **VLMs provide robust text alignment.** The paper proposes MFuser, a Mamba-based fusion framework, to address the challenge of effectively integrating VFMs and VLMs. MFuser aims to achieve precise feature locality and strong text alignment without significant computational overhead. By combining visual priors and textual semantics, MFuser enhances the model's ability to accurately identify and segment relevant regions within an image, leading to improved generalization across diverse and unseen conditions. The core idea is to bridge the gap between these models, leading to better performance.

#### DGSS Advance
Recent advancements in Domain Generalized Semantic Segmentation (DGSS) leverage **Vision Foundation Models (VFMs) and Vision-Language Models (VLMs)** for improved generalization capabilities. However, existing methods often rely solely on either VFMs or VLMs, neglecting their potential synergy. VFMs excel at capturing fine-grained visual features, while VLMs provide robust text alignment but struggle with coarse granularity. Effective integration of VFMs and VLMs using attention mechanisms is challenging due to the increased patch tokens complicating long-sequence modeling. Addressing this requires novel fusion frameworks that efficiently combine the strengths of both models while maintaining linear scalability. MFuser, a Mamba-based fusion framework, is introduced to capture both sequential and spatial dynamics through MVFuser, and refine text embeddings by incorporating image priors using MTEnhancer, achieving precise feature locality and strong text alignment with reduced computational overhead. The method's performance is validated on synthetic-to-real and real-to-real benchmarks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03193/extracted/6335383/figures/main_fig.png)

> 🔼 The figure illustrates the MFuser architecture, a framework that combines Vision Foundation Models (VFMs) and Vision Language Models (VLMs) for domain-generalized semantic segmentation.  It shows how features from each layer of both VFM and VLM encoders are concatenated and processed by the MVFuser module to capture both sequential and spatial dependencies.  The MVFuser output is then refined and fed back to the original feature streams. Additionally, the MTEnhancer module enhances the text embeddings by incorporating visual features using a hybrid attention-Mamba mechanism. These refined text embeddings serve as object queries for the Mask2Former decoder, which uses both multi-scale features and enhanced text embeddings to generate the final segmentation mask. A key aspect is that during training, only the MVFuser, MTEnhancer, and Mask2Former decoder are fine-tuned, while the VFMs and VLMs remain frozen to preserve their pre-trained knowledge and improve training efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall architecture of MFuser. MFuser takes inputs through both VFM and VLM visual encoders. Features from each encoder layer are concatenated and refined in MVFuser, which captures sequential and spatial dependencies in parallel. The refined features are then added back to the original features and passed to the next layer. MTEnhancer strengthens text embeddings of each class by integrating visual features through a hybrid attention-Mamba mechanism. The enhanced text embeddings serve as object queries for the Mask2Former decoder, alongside multi-scale visual features. During training, only MVFusers, MTEnhancers, and the segmentation decoder are trainable while the VFM and VLM remain frozen, preserving their generalization ability and enabling efficient training. Note that skip connections between each block of MTEnhancer are omitted for clarity.
> </details>



![](https://arxiv.org/html/2504.03193/extracted/6335383/figures/fea_PCA.png)

> 🔼 This figure shows a qualitative comparison of semantic segmentation results on unseen target domains (Cityscapes, BDD100k, Mapillary) using three different methods: MFuser (the proposed method), Rein [55], and tqdm [40].  The 'G→{C,B,M}' notation indicates that the models were trained on synthetic data (GTA V) and tested on the three real-world datasets. Each row represents a different real-world dataset, with several sample images.  The ground truth (GT) segmentation masks are provided for comparison, allowing visual assessment of the accuracy and detail captured by each method in diverse and challenging scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative results on unseen target domains under the G→→\rightarrow→{C, B, M} setting. MFuser is compared with Rein [55] and tqdm [40].
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.12.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.12.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.12.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T2.12.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.12.1.1.1.2" rowspan="2"><span class="ltx_text" id="S5.T2.12.1.1.1.2.1">Backbone</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.12.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.12.1.1.1.3.1">real-to-real</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.2.2.1">B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.2.2.2">M</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.2.2.3">Avg.</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.1.3.3.1">SAN-SAW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.1.3.3.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.1.3.3.3">54.73</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.1.3.3.4">61.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.1.3.3.5">58.00</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.4.4.1">WildNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.4.4.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.4.4.3">47.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.4.4.4">50.94</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.4.4.5">48.98</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.5.5.1">SHADE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.5.5.2">RN101</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.5.5.3">50.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.5.5.4">60.67</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.5.5.5">55.81</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.1.6.6.1">HGFormer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.12.1.6.6.2">Swin-L</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.1.6.6.3">61.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.1.6.6.4">72.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.1.6.6.5">66.80</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.7.7.1">VLTSeg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.7.7.2">EVA02-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.7.7.3">64.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.7.7.4">76.40</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.7.7.5">70.40</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.8.8.1">Rein <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.8.8.2">EVA02-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.8.8.3">64.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.8.8.4">69.50</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.8.8.5">66.80</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.9.9.1">Rein <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.9.9.2">DINOv2-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.9.9.3">65.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.9.9.4">72.30</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.9.9.5">68.65</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.10.10.1">SET <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.10.10.2">DINOv2-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.10.10.3">65.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.10.10.4">75.67</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.10.10.5">70.37</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.11.11.1">tqdm <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.11.11.2">EVA02-L</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.11.11.3">64.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.11.11.4">76.15</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.11.11.5">70.44</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.12.12" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.12.12.1"><span class="ltx_text" id="S5.T2.12.1.12.12.1.1" style="background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.12.12.2"><span class="ltx_text" id="S5.T2.12.1.12.12.2.1" style="background-color:#E6E6E6;">SIGLIP-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.12.12.3"><span class="ltx_text" id="S5.T2.12.1.12.12.3.1" style="background-color:#E6E6E6;">65.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.12.12.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.12.1.12.12.4.1" style="background-color:#E6E6E6;">77.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.12.12.5"><span class="ltx_text" id="S5.T2.12.1.12.12.5.1" style="background-color:#E6E6E6;">71.71</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.13.13" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.13.13.1"><span class="ltx_text" id="S5.T2.12.1.13.13.1.1" style="background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.12.1.13.13.2"><span class="ltx_text" id="S5.T2.12.1.13.13.2.1" style="background-color:#E6E6E6;">CLIP-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.13.13.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.12.1.13.13.3.1" style="background-color:#E6E6E6;">65.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.1.13.13.4"><span class="ltx_text ltx_font_bold" id="S5.T2.12.1.13.13.4.1" style="background-color:#E6E6E6;">78.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.1.13.13.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.12.1.13.13.5.1" style="background-color:#E6E6E6;">71.84</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.1.14.14" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.12.1.14.14.1"><span class="ltx_text" id="S5.T2.12.1.14.14.1.1" style="background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.12.1.14.14.2"><span class="ltx_text" id="S5.T2.12.1.14.14.2.1" style="background-color:#E6E6E6;">EVA02-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.12.1.14.14.3"><span class="ltx_text ltx_font_bold" id="S5.T2.12.1.14.14.3.1" style="background-color:#E6E6E6;">65.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.12.1.14.14.4"><span class="ltx_text" id="S5.T2.12.1.14.14.4.1" style="background-color:#E6E6E6;">77.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.1.14.14.5"><span class="ltx_text ltx_font_bold" id="S5.T2.12.1.14.14.5.1" style="background-color:#E6E6E6;">71.87</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the mean Intersection over Union (mIoU) scores achieved by various domain generalized semantic segmentation (DGSS) methods on real-to-real datasets.  The real-to-real setting specifically focuses on evaluating the model's ability to generalize from the Cityscapes dataset to the benchmark datasets B and M.  The Vision Foundation Model (VFM) DINOv2 [38] was consistently used as the visual feature extractor for all variants of the proposed MFuser method, while various Vision Language Models (VLMs) were tested.  The table highlights the best and second-best performing methods for each dataset, providing a clear overview of the relative performance of MFuser against existing state-of-the-art techniques in this domain.
> <details>
> <summary>read the caption</summary>
> Table 2:  Performance comparison (mIoU in %) under the real-to-real setting (C→→\rightarrow→{{\{{B, M}}\}}). DINOv2 [38] is used as the VFM for all MFuser variants, showing only the applied VLMs. Our method is marked in gray. The best and second-best results are highlighted in bold and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.F3.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.F3.4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.1" style="background-color:#804080;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.1.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.1.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.1.1.1.1" style="font-size:70%;color:#FFFFFF;">road</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.2" style="background-color:#F423E8;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.2.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.2.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.2.1.1.1" style="font-size:70%;">sidew.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.3" style="background-color:#464646;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.3.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.3.1.1.1" style="font-size:70%;color:#FFFFFF;">build.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.4" style="background-color:#66669C;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.4.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.4.1.1.1" style="font-size:70%;color:#FFFFFF;">wall</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.5" style="background-color:#BE9999;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.5.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.5.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.5.1.1.1" style="font-size:70%;">fence</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.6" style="background-color:#999999;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.6.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.6.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.6.1.1.1" style="font-size:70%;">pole</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.7" style="background-color:#FAAA1E;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.7.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.7.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.7.1.1.1" style="font-size:70%;">tr. light</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.8" style="background-color:#DCDC00;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.8.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.8.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.8.1.1.1" style="font-size:70%;">tr. sign</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.9" style="background-color:#6B8E23;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.9.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.9.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.9.1.1.1" style="font-size:70%;">veget.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.10" style="background-color:#98FB98;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.10.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.10.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.10.1.1.1" style="font-size:70%;">terrain</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.11" style="background-color:#4682B4;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.11.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.11.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.11.1.1.1" style="font-size:70%;">sky</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.12" style="background-color:#DC143C;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.12.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.12.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.12.1.1.1" style="font-size:70%;color:#FFFFFF;">person</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.13" style="background-color:#FC7EA2;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.13.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.13.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.13.1.1.1" style="font-size:70%;color:#000000;">rider</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.14" style="background-color:#00008E;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.14.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.14.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.14.1.1.1" style="font-size:70%;color:#FFFFFF;">car</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.15" style="background-color:#000046;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.15.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.15.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.15.1.1.1" style="font-size:70%;color:#FFFFFF;">truck</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.16" style="background-color:#003C64;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.16.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.16.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.16.1.1.1" style="font-size:70%;color:#FFFFFF;">bus</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.17" style="background-color:#006478;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.17.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.17.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.17.1.1.1" style="font-size:70%;color:#FFFFFF;">train</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.18" style="background-color:#0000E6;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.18.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.18.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.18.1.1.1" style="font-size:70%;color:#FFFFFF;">m.bike</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.19" style="background-color:#770B20;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.19.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.19.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.19.1.1.1" style="font-size:70%;color:#FFFFFF;">bike</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.F3.4.1.1.1.20" style="background-color:#000000;padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.F3.4.1.1.1.20.1">
<span class="ltx_p" id="S5.F3.4.1.1.1.20.1.1" style="width:19.5pt;"><span class="ltx_text" id="S5.F3.4.1.1.1.20.1.1.1" style="font-size:70%;color:#FFFFFF;">n/a.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the computational efficiency and performance of different adapter methods used in the MFuser model.  The adapters are designed to integrate vision foundation models (VFMs) and vision-language models (VLMs) for efficient domain generalization in semantic segmentation.  The experiments are performed using the DINOv2 VFM and the EVA02-CLIP VLM on three different target domains (C, B, M) from a synthetic source domain (G).  The table compares the number of parameters (in millions), floating point operations (in billions), and mean Intersection over Union (mIoU) scores for four different adapter designs: self-attention based adapters with concatenated or separate features, a bidirectional deformable attention adapter, and the proposed Mamba-based MVFuser. This analysis demonstrates the efficiency gains achieved by the Mamba-based MVFuser compared to other self-attention based methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Efficiency analysis. The experiments are conducted with DINOv2 and EVA02-CLIP models under the G→→\rightarrow→{C, B, M} settings. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.6.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.6.1.1.1.1" style="padding:-1pt 3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.1.1.1.2" style="padding:-1pt 3.0pt;">Params. (M)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.1.1.1.3" style="padding:-1pt 3.0pt;">FLOPs (G)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.1.1.1.4" style="padding:-1pt 3.0pt;">C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.1.1.1.5" style="padding:-1pt 3.0pt;">B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.1.1.1.6" style="padding:-1pt 3.0pt;">M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.6.1.1.1.7" style="padding:-1pt 3.0pt;">Avg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.6.1.2.1.1" style="padding:-1pt 3.0pt;">self-attn (concat.)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.1.2" style="padding:-1pt 3.0pt;">4.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.1.3" style="padding:-1pt 3.0pt;">98.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.1.4" style="padding:-1pt 3.0pt;">70.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.1.5" style="padding:-1pt 3.0pt;">62.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.1.6" style="padding:-1pt 3.0pt;">71.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.1.7" style="padding:-1pt 3.0pt;">67.89</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.1.3.2.1" style="padding:-1pt 3.0pt;">self-attn (separate)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.3.2.2" style="padding:-1pt 3.0pt;">8.40</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.3.2.3" style="padding:-1pt 3.0pt;">71.08</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.3.2.4" style="padding:-1pt 3.0pt;">69.68</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.3.2.5" style="padding:-1pt 3.0pt;">61.91</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.3.2.6" style="padding:-1pt 3.0pt;">70.85</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.3.2.7" style="padding:-1pt 3.0pt;">67.48</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.1.4.3.1" style="padding:-1pt 3.0pt;">bi-deform-attn</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.4.3.2" style="padding:-1pt 3.0pt;">3.35</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.4.3.3" style="padding:-1pt 3.0pt;">34.65</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.4.3.4" style="padding:-1pt 3.0pt;">69.46</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.4.3.5" style="padding:-1pt 3.0pt;">61.17</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.4.3.6" style="padding:-1pt 3.0pt;">70.11</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.4.3.7" style="padding:-1pt 3.0pt;">66.91</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.5.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.6.1.5.4.1" style="padding:-1pt 3.0pt;"><span class="ltx_text" id="S5.T3.6.1.5.4.1.1" style="background-color:#E6E6E6;">MVFuser</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.5.4.2" style="padding:-1pt 3.0pt;"><span class="ltx_text" id="S5.T3.6.1.5.4.2.1" style="background-color:#E6E6E6;">1.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.5.4.3" style="padding:-1pt 3.0pt;"><span class="ltx_text" id="S5.T3.6.1.5.4.3.1" style="background-color:#E6E6E6;">17.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.5.4.4" style="padding:-1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.5.4.4.1" style="background-color:#E6E6E6;">70.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.5.4.5" style="padding:-1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.5.4.5.1" style="background-color:#E6E6E6;">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.5.4.6" style="padding:-1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.5.4.6.1" style="background-color:#E6E6E6;">71.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.5.4.7" style="padding:-1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.5.4.7.1" style="background-color:#E6E6E6;">68.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different vision feature fusion methods on the performance of domain generalized semantic segmentation (DGSS).  The experiment uses DINOv2 as the vision foundation model (VFM) and EVA02-CLIP as the vision-language model (VLM). Four approaches are compared:  (1) No fine-tuning: simply concatenating features from both models; (2) Convolution: fusing features using convolutional layers; (3) Cross-attention: utilizing cross-attention mechanisms as described in reference [55]; (4) MVFuser (proposed method): the model's multi-level feature refinement module. The table shows the mean Intersection over Union (mIoU) scores achieved on three different target datasets (C, B, M) for each method, highlighting the superior performance of the proposed MVFuser.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation studies on the vision feature fusion under the G→→\rightarrow→{C, B, M} setting. DINOv2 and EVA02-CLIP are applied as the VFM and the VLM, respectively. w.o finetune: directly concatenate features of the two encoders; Conv: utilize convolution layers for fusion; Cross-Attention: implement cross-attention in [55] for fusion. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.6.1.1.1.1">Fusion Choice</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.6.1.1.1.2">C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.6.1.1.1.3">B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.6.1.1.1.4">M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.6.1.1.1.5">Avg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.6.1.2.1.1">VFM-only</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.6.1.2.1.2">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.6.1.2.1.3">60.82</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.6.1.2.1.4">66.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.1.2.1.5">65.13</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.3.2.1">VLM-only</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.3.2.2">68.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.3.2.3">60.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.3.2.4">70.18</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.3.2.5">66.15</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.4.3.1">w.o Fintune</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.4.3.2">66.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.4.3.3">58.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.4.3.4">68.25</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.4.3.5">64.70</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.5.4.1">Convolution</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.5.4.2">69.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.5.4.3">61.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.5.4.4">69.78</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.5.4.5">66.83</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.6.5.1">Cross-Attention</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.6.5.2">69.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.6.5.3">60.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.6.5.4">70.43</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.6.5.5">66.87</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.7.6.1">Sep. MVFuser</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.7.6.2">69.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.7.6.3">62.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.7.6.4">70.59</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.7.6.5">67.68</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.6.1.8.7.1">MVFuser</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.6.1.8.7.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.8.7.2.1">70.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.6.1.8.7.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.8.7.3.1">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.6.1.8.7.4"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.8.7.4.1">71.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.1.8.7.5"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.8.7.5.1">68.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the choice of foundation models used in the proposed MFuser framework.  It shows the mean Intersection over Union (mIoU) scores achieved on three benchmark datasets (Cityscapes, Berkeley DeepDrive, and Mapillary) for different combinations of Vision Foundation Models (VFMs) and Vision-Language Models (VLMs).  The 'VFM + VLM' row indicates that only the visual encoder of the VLM is utilized when the VLM is serving as the VFM.  The experiments were conducted on the synthetic-to-real domain generalization task (G→{C, B, M}). The best performing model for each setting is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation studies on the used foundation models. VFM + VLM: only the visual encoder is used when a VLM serve as the VFM. The experiments are conducted under the G→→\rightarrow→{C, B, M} setting. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T5.6.1.1.1.1">VFM + VLM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.6.1.1.1.2">C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.6.1.1.1.3">B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.6.1.1.1.4">M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.1.5">Avg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.6.1.2.1.1">SIGLIP + EVA02</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.6.1.2.1.2">68.48</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.6.1.2.1.3">60.98</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.6.1.2.1.4">69.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.2.1.5">66.24</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.3.2.1">CLIP + EVA02</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.3.2.2">68.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.3.2.3">61.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.3.2.4">70.21</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.3.2.5">66.72</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.4.3.1">DINOv2 + CLIP</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.4.3.2.1">71.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.4.3.3">61.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.4.3.4">71.14</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.4.3.5">67.82</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.5.4.1">DINOv2 + SIGLIP</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.5.4.2">71.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.5.4.3">61.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.5.4.4.1">71.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.5.4.5">68.00</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T5.6.1.6.5.1">DINOv2 + EVA02</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.6.1.6.5.2">70.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.6.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.6.5.3.1">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.6.1.6.5.4">71.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.6.5.5.1">68.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the effectiveness of enhancing text embeddings in the MFuser model.  The study uses the DINOv2 vision foundation model and the EVA02-CLIP vision-language model under the synthetic-to-real DGSS (domain generalized semantic segmentation) settings (G→{C, B, M}).  Different methods of text embedding enhancement are compared, including: no enhancement, removing the hybrid attention-Mamba module, using only cross-attention, and using the complete MTEnhancer module. The results, measured in mIoU (mean Intersection over Union), show how each enhancement technique impacts segmentation performance across three different target domains (C, B, M). The best performing method is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation studies on the text embeddings enhancement. Experiments use DINOv2 and EVA02-CLIP under the G→→\rightarrow→{C, B, M} settings. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T6.6.1.1.1.1">Enhancement Choice</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T6.6.1.1.1.2">C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T6.6.1.1.1.3">B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T6.6.1.1.1.4">M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.6.1.1.1.5">Avg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T6.6.1.2.1.1">w.o. Enhance</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.6.1.2.1.2">69.57</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.6.1.2.1.3">60.83</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.6.1.2.1.4">70.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.6.1.2.1.5">66.91</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.6.1.3.2.1">w.o. Hybrid</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.1.3.2.2">69.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.1.3.2.3">61.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.1.3.2.4">70.67</td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.1.3.2.5">67.40</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T6.6.1.4.3.1">Cross-Attention</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.1.4.3.2">69.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.1.4.3.3">61.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.6.1.4.3.4">70.78</td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.1.4.3.5">67.31</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T6.6.1.5.4.1">MTEnhancer</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.6.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S5.T6.6.1.5.4.2.1">70.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.6.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T6.6.1.5.4.3.1">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.6.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T6.6.1.5.4.4.1">71.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.6.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S5.T6.6.1.5.4.5.1">68.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of different Vision Foundation Models (VFMs) on the performance of a domain generalized semantic segmentation (DGSS) model.  The study uses EVA02-CLIP as the Vision Language Model (VLM).  The VFMs tested are BEiT2 and iBOT, both of the 'Large' size. The table shows the mean Intersection over Union (mIoU) scores achieved on three target domains (C, B, M) in a synthetic-to-real DGSS setting (G→{C, B, M}).  This allows for a comparison of how different VFMs impact the overall DGSS performance when combined with a consistent VLM.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation studies on more VFMs under the G→→\rightarrow→{C, B, M} setting. EVA02-CLIP is utilized as the VLM by default. BEiT2 [44] and iBOT [69] are evaluated as VFMs, respectively. Both are of Large types.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S7.T7.16.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T7.16.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S7.T7.16.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.16.1.1.1.2"><span class="ltx_text" id="S7.T7.16.1.1.1.2.1" style="font-size:144%;">C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.16.1.1.1.3"><span class="ltx_text" id="S7.T7.16.1.1.1.3.1" style="font-size:144%;">B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.16.1.1.1.4"><span class="ltx_text" id="S7.T7.16.1.1.1.4.1" style="font-size:144%;">M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T7.16.1.1.1.5"><span class="ltx_text" id="S7.T7.16.1.1.1.5.1" style="font-size:144%;">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T7.16.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S7.T7.16.1.2.1.1"><span class="ltx_text" id="S7.T7.16.1.2.1.1.1" style="font-size:144%;">VLM-only</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.16.1.2.1.2"><span class="ltx_text" id="S7.T7.16.1.2.1.2.1" style="font-size:144%;">68.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.16.1.2.1.3"><span class="ltx_text" id="S7.T7.16.1.2.1.3.1" style="font-size:144%;">60.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.16.1.2.1.4"><span class="ltx_text" id="S7.T7.16.1.2.1.4.1" style="font-size:144%;">70.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.16.1.2.1.5"><span class="ltx_text" id="S7.T7.16.1.2.1.5.1" style="font-size:144%;">66.15</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.16.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.T7.16.1.3.2.1"><span class="ltx_text" id="S7.T7.16.1.3.2.1.1" style="font-size:144%;">+ BEiT2-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.16.1.3.2.2"><span class="ltx_text" id="S7.T7.16.1.3.2.2.1" style="font-size:144%;">69.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.16.1.3.2.3"><span class="ltx_text" id="S7.T7.16.1.3.2.3.1" style="font-size:144%;">60.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.16.1.3.2.4"><span class="ltx_text" id="S7.T7.16.1.3.2.4.1" style="font-size:144%;">70.39</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.16.1.3.2.5"><span class="ltx_text" id="S7.T7.16.1.3.2.5.1" style="font-size:144%;">66.73</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.16.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S7.T7.16.1.4.3.1"><span class="ltx_text" id="S7.T7.16.1.4.3.1.1" style="font-size:144%;">+ iBOT-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.16.1.4.3.2"><span class="ltx_text" id="S7.T7.16.1.4.3.2.1" style="font-size:144%;">69.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.16.1.4.3.3"><span class="ltx_text" id="S7.T7.16.1.4.3.3.1" style="font-size:144%;">60.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S7.T7.16.1.4.3.4"><span class="ltx_text" id="S7.T7.16.1.4.3.4.1" style="font-size:144%;">70.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.16.1.4.3.5"><span class="ltx_text" id="S7.T7.16.1.4.3.5.1" style="font-size:144%;">66.89</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the mean Intersection over Union (mIoU) scores achieved by various domain generalized semantic segmentation (DGSS) methods on the Synthia-to-Real benchmark.  The Synthia dataset serves as the source domain, and results are reported for three target domains: Cityscapes (C), Berkeley DeepDrive (B), and Mapillary Vistas (M).  The comparison includes several state-of-the-art DGSS methods and the proposed method, MFuser.  The table highlights the superior performance of MFuser which uses DINOv2 as the Vision Foundation Model (VFM) and EVA02-CLIP as the Vision-Language Model (VLM). The best and second-best mIoU scores for each target domain are emphasized in bold and underlined.
> <details>
> <summary>read the caption</summary>
> Table 8:  Performance comparison (mIoU in %) under the synthetic-to-real setting (S→→\rightarrow→{{\{{C, B, M}}\}}). Note that we implement DINOv2 [38] as the VFM and EVA02-CLIP [16] as the VLM. Our method is marked in gray. The best and second-best results are highlighted in bold and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S8.T8.9.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T8.9.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S8.T8.9.3.4.1.1" rowspan="2"><span class="ltx_text" id="S8.T8.9.3.4.1.1.1" style="font-size:144%;">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S8.T8.9.3.4.1.2" rowspan="2"><span class="ltx_text" id="S8.T8.9.3.4.1.2.1" style="font-size:144%;">Backbone</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S8.T8.9.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S8.T8.9.3.4.1.3.1" style="font-size:144%;">synthetic-to-real</span></th>
</tr>
<tr class="ltx_tr" id="S8.T8.9.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S8.T8.7.1.1.1">
<span class="ltx_text" id="S8.T8.7.1.1.1.1" style="font-size:144%;">S</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S8.T8.7.1.1.1.m1.1"><semantics id="S8.T8.7.1.1.1.m1.1a"><mo id="S8.T8.7.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T8.7.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S8.T8.7.1.1.1.m1.1b"><ci id="S8.T8.7.1.1.1.m1.1.1.cmml" xref="S8.T8.7.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T8.7.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T8.7.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S8.T8.7.1.1.1.2" style="font-size:144%;">C</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S8.T8.8.2.2.2">
<span class="ltx_text" id="S8.T8.8.2.2.2.1" style="font-size:144%;">S</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S8.T8.8.2.2.2.m1.1"><semantics id="S8.T8.8.2.2.2.m1.1a"><mo id="S8.T8.8.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T8.8.2.2.2.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S8.T8.8.2.2.2.m1.1b"><ci id="S8.T8.8.2.2.2.m1.1.1.cmml" xref="S8.T8.8.2.2.2.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T8.8.2.2.2.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T8.8.2.2.2.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S8.T8.8.2.2.2.2" style="font-size:144%;">B</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S8.T8.9.3.3.3">
<span class="ltx_text" id="S8.T8.9.3.3.3.1" style="font-size:144%;">S</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S8.T8.9.3.3.3.m1.1"><semantics id="S8.T8.9.3.3.3.m1.1a"><mo id="S8.T8.9.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T8.9.3.3.3.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S8.T8.9.3.3.3.m1.1b"><ci id="S8.T8.9.3.3.3.m1.1.1.cmml" xref="S8.T8.9.3.3.3.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T8.9.3.3.3.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T8.9.3.3.3.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S8.T8.9.3.3.3.2" style="font-size:144%;">M</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S8.T8.9.3.3.4"><span class="ltx_text" id="S8.T8.9.3.3.4.1" style="font-size:144%;">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T8.9.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S8.T8.9.3.5.1.1">
<span class="ltx_text" id="S8.T8.9.3.5.1.1.1" style="font-size:144%;">SAN-SAW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T8.9.3.5.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S8.T8.9.3.5.1.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S8.T8.9.3.5.1.2"><span class="ltx_text" id="S8.T8.9.3.5.1.2.1" style="font-size:144%;">RN101</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T8.9.3.5.1.3"><span class="ltx_text" id="S8.T8.9.3.5.1.3.1" style="font-size:144%;">40.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T8.9.3.5.1.4"><span class="ltx_text" id="S8.T8.9.3.5.1.4.1" style="font-size:144%;">35.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T8.9.3.5.1.5"><span class="ltx_text" id="S8.T8.9.3.5.1.5.1" style="font-size:144%;">37.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.9.3.5.1.6"><span class="ltx_text" id="S8.T8.9.3.5.1.6.1" style="font-size:144%;">38.04</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.9.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.6.2.1">
<span class="ltx_text" id="S8.T8.9.3.6.2.1.1" style="font-size:144%;">TLDR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T8.9.3.6.2.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S8.T8.9.3.6.2.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.6.2.2"><span class="ltx_text" id="S8.T8.9.3.6.2.2.1" style="font-size:144%;">RN101</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.6.2.3"><span class="ltx_text" id="S8.T8.9.3.6.2.3.1" style="font-size:144%;">42.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.6.2.4"><span class="ltx_text" id="S8.T8.9.3.6.2.4.1" style="font-size:144%;">35.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.6.2.5"><span class="ltx_text" id="S8.T8.9.3.6.2.5.1" style="font-size:144%;">37.46</span></td>
<td class="ltx_td ltx_align_center" id="S8.T8.9.3.6.2.6"><span class="ltx_text" id="S8.T8.9.3.6.2.6.1" style="font-size:144%;">38.51</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.9.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.7.3.1">
<span class="ltx_text" id="S8.T8.9.3.7.3.1.1" style="font-size:144%;">IBAFormer </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T8.9.3.7.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S8.T8.9.3.7.3.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.7.3.2"><span class="ltx_text" id="S8.T8.9.3.7.3.2.1" style="font-size:144%;">MiT-B5</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.7.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T8.9.3.7.3.3.1" style="font-size:144%;">50.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.7.3.4"><span class="ltx_text" id="S8.T8.9.3.7.3.4.1" style="font-size:144%;">44.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.7.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T8.9.3.7.3.5.1" style="font-size:144%;">50.58</span></td>
<td class="ltx_td ltx_align_center" id="S8.T8.9.3.7.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T8.9.3.7.3.6.1" style="font-size:144%;">48.72</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.9.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.8.4.1">
<span class="ltx_text" id="S8.T8.9.3.8.4.1.1" style="font-size:144%;">Rein </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T8.9.3.8.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S8.T8.9.3.8.4.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.8.4.2"><span class="ltx_text" id="S8.T8.9.3.8.4.2.1" style="font-size:144%;">DINOv2-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.8.4.3"><span class="ltx_text" id="S8.T8.9.3.8.4.3.1" style="font-size:144%;">48.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.8.4.4"><span class="ltx_text" id="S8.T8.9.3.8.4.4.1" style="font-size:144%;">44.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.8.4.5"><span class="ltx_text" id="S8.T8.9.3.8.4.5.1" style="font-size:144%;">48.64</span></td>
<td class="ltx_td ltx_align_center" id="S8.T8.9.3.8.4.6"><span class="ltx_text" id="S8.T8.9.3.8.4.6.1" style="font-size:144%;">47.22</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.9.3.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.9.5.1">
<span class="ltx_text" id="S8.T8.9.3.9.5.1.1" style="font-size:144%;">SET </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T8.9.3.9.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S8.T8.9.3.9.5.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T8.9.3.9.5.2"><span class="ltx_text" id="S8.T8.9.3.9.5.2.1" style="font-size:144%;">DINOv2-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.9.5.3"><span class="ltx_text" id="S8.T8.9.3.9.5.3.1" style="font-size:144%;">49.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.9.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T8.9.3.9.5.4.1" style="font-size:144%;">45.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T8.9.3.9.5.5"><span class="ltx_text" id="S8.T8.9.3.9.5.5.1" style="font-size:144%;">49.45</span></td>
<td class="ltx_td ltx_align_center" id="S8.T8.9.3.9.5.6"><span class="ltx_text" id="S8.T8.9.3.9.5.6.1" style="font-size:144%;">48.18</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.9.3.10.6" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S8.T8.9.3.10.6.1"><span class="ltx_text" id="S8.T8.9.3.10.6.1.1" style="font-size:144%;background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S8.T8.9.3.10.6.2"><span class="ltx_text" id="S8.T8.9.3.10.6.2.1" style="font-size:144%;background-color:#E6E6E6;">EVA02-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T8.9.3.10.6.3"><span class="ltx_text ltx_font_bold" id="S8.T8.9.3.10.6.3.1" style="font-size:144%;background-color:#E6E6E6;">54.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T8.9.3.10.6.4"><span class="ltx_text ltx_font_bold" id="S8.T8.9.3.10.6.4.1" style="font-size:144%;background-color:#E6E6E6;">46.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T8.9.3.10.6.5"><span class="ltx_text ltx_font_bold" id="S8.T8.9.3.10.6.5.1" style="font-size:144%;background-color:#E6E6E6;">53.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T8.9.3.10.6.6"><span class="ltx_text ltx_font_bold" id="S8.T8.9.3.10.6.6.1" style="font-size:144%;background-color:#E6E6E6;">51.35</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a comparison of the performance (measured by mean Intersection over Union or mIoU) of different methods on two domain generalization scenarios: G→S (general to Synthia dataset) and C→S (Cityscapes to Synthia).  The specific models compared include the proposed MFuser (highlighted in gray) and other state-of-the-art methods.  DINOv2 and EVA02-CLIP are consistently used as the Vision Foundation Model (VFM) and Vision Language Model (VLM), respectively.  The best and second-best results for each scenario are shown in bold and underlined, respectively, to easily visualize the relative performance of each method.
> <details>
> <summary>read the caption</summary>
> Table 9:  Performance comparison (mIoU in %) under G→→\rightarrow→S and C→→\rightarrow→S. Note that we implement DINOv2 [38] as the VFM and EVA02-CLIP [16] as the VLM. Our method is marked in gray. The best and second-best results are highlighted in bold and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S8.T9.6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T9.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S8.T9.6.2.2.3"><span class="ltx_text" id="S8.T9.6.2.2.3.1" style="font-size:144%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S8.T9.6.2.2.4"><span class="ltx_text" id="S8.T9.6.2.2.4.1" style="font-size:144%;">Backbone</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S8.T9.5.1.1.1">
<span class="ltx_text" id="S8.T9.5.1.1.1.1" style="font-size:144%;">G</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S8.T9.5.1.1.1.m1.1"><semantics id="S8.T9.5.1.1.1.m1.1a"><mo id="S8.T9.5.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T9.5.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S8.T9.5.1.1.1.m1.1b"><ci id="S8.T9.5.1.1.1.m1.1.1.cmml" xref="S8.T9.5.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T9.5.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T9.5.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S8.T9.5.1.1.1.2" style="font-size:144%;">Synthia</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T9.6.2.2.2">
<span class="ltx_text" id="S8.T9.6.2.2.2.1" style="font-size:144%;">C</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S8.T9.6.2.2.2.m1.1"><semantics id="S8.T9.6.2.2.2.m1.1a"><mo id="S8.T9.6.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S8.T9.6.2.2.2.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S8.T9.6.2.2.2.m1.1b"><ci id="S8.T9.6.2.2.2.m1.1.1.cmml" xref="S8.T9.6.2.2.2.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S8.T9.6.2.2.2.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S8.T9.6.2.2.2.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S8.T9.6.2.2.2.2" style="font-size:144%;">Synthia</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T9.6.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S8.T9.6.2.3.1.1">
<span class="ltx_text" id="S8.T9.6.2.3.1.1.1" style="font-size:144%;">Rein </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T9.6.2.3.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S8.T9.6.2.3.1.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T9.6.2.3.1.2"><span class="ltx_text" id="S8.T9.6.2.3.1.2.1" style="font-size:144%;">DINOv2-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T9.6.2.3.1.3"><span class="ltx_text" id="S8.T9.6.2.3.1.3.1" style="font-size:144%;">48.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T9.6.2.3.1.4"><span class="ltx_text" id="S8.T9.6.2.3.1.4.1" style="font-size:144%;">48.56</span></td>
</tr>
<tr class="ltx_tr" id="S8.T9.6.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T9.6.2.4.2.1">
<span class="ltx_text" id="S8.T9.6.2.4.2.1.1" style="font-size:144%;">SET </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T9.6.2.4.2.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S8.T9.6.2.4.2.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.6.2.4.2.2"><span class="ltx_text" id="S8.T9.6.2.4.2.2.1" style="font-size:144%;">DINOv2-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.6.2.4.2.3"><span class="ltx_text" id="S8.T9.6.2.4.2.3.1" style="font-size:144%;">50.01</span></td>
<td class="ltx_td ltx_align_center" id="S8.T9.6.2.4.2.4"><span class="ltx_text" id="S8.T9.6.2.4.2.4.1" style="font-size:144%;">49.61</span></td>
</tr>
<tr class="ltx_tr" id="S8.T9.6.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S8.T9.6.2.5.3.1">
<span class="ltx_text" id="S8.T9.6.2.5.3.1.1" style="font-size:144%;">tqdm </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T9.6.2.5.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S8.T9.6.2.5.3.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.6.2.5.3.2"><span class="ltx_text" id="S8.T9.6.2.5.3.2.1" style="font-size:144%;">EVA02-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T9.6.2.5.3.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T9.6.2.5.3.3.1" style="font-size:144%;">53.32</span></td>
<td class="ltx_td ltx_align_center" id="S8.T9.6.2.5.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S8.T9.6.2.5.3.4.1" style="font-size:144%;">50.62</span></td>
</tr>
<tr class="ltx_tr" id="S8.T9.6.2.6.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S8.T9.6.2.6.4.1"><span class="ltx_text" id="S8.T9.6.2.6.4.1.1" style="font-size:144%;background-color:#E6E6E6;">MFuser</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T9.6.2.6.4.2"><span class="ltx_text" id="S8.T9.6.2.6.4.2.1" style="font-size:144%;background-color:#E6E6E6;">EVA02-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T9.6.2.6.4.3"><span class="ltx_text ltx_font_bold" id="S8.T9.6.2.6.4.3.1" style="font-size:144%;background-color:#E6E6E6;">54.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T9.6.2.6.4.4"><span class="ltx_text ltx_font_bold" id="S8.T9.6.2.6.4.4.1" style="font-size:144%;background-color:#E6E6E6;">54.13</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the mean Intersection over Union (mIoU) scores achieved by various domain generalization semantic segmentation (DGSS) methods on the Cityscapes to ACDC benchmark.  The ACDC dataset consists of images with adverse weather conditions (fog, night, rain, snow), making it a challenging test for generalization.  The table specifically uses DINOv2 as the Vision Foundation Model (VFM) and EVA02-CLIP as the Vision Language Model (VLM) for the MFuser method.  Results for other methods are included for comparison.  The best-performing methods for each adverse weather condition and overall average are highlighted in bold and underlined.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance comparison (mIoU in %) on Cityscapes→→\rightarrow→ACDC. Note that we implement DINOv2 [38] as the VFM and EVA02-CLIP [16] as the VLM. Our method is marked in gray. The best and second-best results are highlighted in bold and underlined, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S9.T10.6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S9.T10.6.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S9.T10.6.4.5.1.1" rowspan="2"><span class="ltx_text" id="S9.T10.6.4.5.1.1.1" style="font-size:144%;">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S9.T10.6.4.5.1.2" rowspan="2"><span class="ltx_text" id="S9.T10.6.4.5.1.2.1" style="font-size:144%;">Backbone</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S9.T10.6.4.5.1.3"><span class="ltx_text ltx_font_bold" id="S9.T10.6.4.5.1.3.1" style="font-size:144%;">clear-to-adverse-weather</span></th>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S9.T10.3.1.1.1">
<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S9.T10.3.1.1.1.m1.1"><semantics id="S9.T10.3.1.1.1.m1.1a"><mo id="S9.T10.3.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S9.T10.3.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S9.T10.3.1.1.1.m1.1b"><ci id="S9.T10.3.1.1.1.m1.1.1.cmml" xref="S9.T10.3.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T10.3.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S9.T10.3.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S9.T10.3.1.1.1.1" style="font-size:144%;">Fog</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S9.T10.4.2.2.2">
<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S9.T10.4.2.2.2.m1.1"><semantics id="S9.T10.4.2.2.2.m1.1a"><mo id="S9.T10.4.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S9.T10.4.2.2.2.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S9.T10.4.2.2.2.m1.1b"><ci id="S9.T10.4.2.2.2.m1.1.1.cmml" xref="S9.T10.4.2.2.2.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T10.4.2.2.2.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S9.T10.4.2.2.2.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S9.T10.4.2.2.2.1" style="font-size:144%;">Night</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S9.T10.5.3.3.3">
<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S9.T10.5.3.3.3.m1.1"><semantics id="S9.T10.5.3.3.3.m1.1a"><mo id="S9.T10.5.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S9.T10.5.3.3.3.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S9.T10.5.3.3.3.m1.1b"><ci id="S9.T10.5.3.3.3.m1.1.1.cmml" xref="S9.T10.5.3.3.3.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T10.5.3.3.3.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S9.T10.5.3.3.3.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S9.T10.5.3.3.3.1" style="font-size:144%;">Rain</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S9.T10.6.4.4.4">
<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S9.T10.6.4.4.4.m1.1"><semantics id="S9.T10.6.4.4.4.m1.1a"><mo id="S9.T10.6.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="S9.T10.6.4.4.4.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S9.T10.6.4.4.4.m1.1b"><ci id="S9.T10.6.4.4.4.m1.1.1.cmml" xref="S9.T10.6.4.4.4.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S9.T10.6.4.4.4.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S9.T10.6.4.4.4.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S9.T10.6.4.4.4.1" style="font-size:144%;">Snow</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S9.T10.6.4.4.5"><span class="ltx_text" id="S9.T10.6.4.4.5.1" style="font-size:144%;">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T10.6.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T10.6.4.6.1.1">
<span class="ltx_text" id="S9.T10.6.4.6.1.1.1" style="font-size:144%;">IBN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.6.1.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S9.T10.6.4.6.1.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T10.6.4.6.1.2"><span class="ltx_text" id="S9.T10.6.4.6.1.2.1" style="font-size:144%;">RN50</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.6.4.6.1.3"><span class="ltx_text" id="S9.T10.6.4.6.1.3.1" style="font-size:144%;">63.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.6.4.6.1.4"><span class="ltx_text" id="S9.T10.6.4.6.1.4.1" style="font-size:144%;">21.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.6.4.6.1.5"><span class="ltx_text" id="S9.T10.6.4.6.1.5.1" style="font-size:144%;">50.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T10.6.4.6.1.6"><span class="ltx_text" id="S9.T10.6.4.6.1.6.1" style="font-size:144%;">49.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T10.6.4.6.1.7"><span class="ltx_text" id="S9.T10.6.4.6.1.7.1" style="font-size:144%;">46.25</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.7.2.1">
<span class="ltx_text" id="S9.T10.6.4.7.2.1.1" style="font-size:144%;">IW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.7.2.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S9.T10.6.4.7.2.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.7.2.2"><span class="ltx_text" id="S9.T10.6.4.7.2.2.1" style="font-size:144%;">RN50</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.7.2.3"><span class="ltx_text" id="S9.T10.6.4.7.2.3.1" style="font-size:144%;">62.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.7.2.4"><span class="ltx_text" id="S9.T10.6.4.7.2.4.1" style="font-size:144%;">21.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.7.2.5"><span class="ltx_text" id="S9.T10.6.4.7.2.5.1" style="font-size:144%;">52.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.7.2.6"><span class="ltx_text" id="S9.T10.6.4.7.2.6.1" style="font-size:144%;">47.60</span></td>
<td class="ltx_td ltx_align_center" id="S9.T10.6.4.7.2.7"><span class="ltx_text" id="S9.T10.6.4.7.2.7.1" style="font-size:144%;">46.05</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.8.3.1">
<span class="ltx_text" id="S9.T10.6.4.8.3.1.1" style="font-size:144%;">ISW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.8.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S9.T10.6.4.8.3.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.8.3.2"><span class="ltx_text" id="S9.T10.6.4.8.3.2.1" style="font-size:144%;">RN50</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.8.3.3"><span class="ltx_text" id="S9.T10.6.4.8.3.3.1" style="font-size:144%;">64.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.8.3.4"><span class="ltx_text" id="S9.T10.6.4.8.3.4.1" style="font-size:144%;">24.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.8.3.5"><span class="ltx_text" id="S9.T10.6.4.8.3.5.1" style="font-size:144%;">56.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.8.3.6"><span class="ltx_text" id="S9.T10.6.4.8.3.6.1" style="font-size:144%;">49.80</span></td>
<td class="ltx_td ltx_align_center" id="S9.T10.6.4.8.3.7"><span class="ltx_text" id="S9.T10.6.4.8.3.7.1" style="font-size:144%;">48.60</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.9.4.1">
<span class="ltx_text" id="S9.T10.6.4.9.4.1.1" style="font-size:144%;">ISSA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.9.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S9.T10.6.4.9.4.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.9.4.2"><span class="ltx_text" id="S9.T10.6.4.9.4.2.1" style="font-size:144%;">MiT-B5</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.9.4.3"><span class="ltx_text" id="S9.T10.6.4.9.4.3.1" style="font-size:144%;">67.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.9.4.4"><span class="ltx_text" id="S9.T10.6.4.9.4.4.1" style="font-size:144%;">33.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.9.4.5"><span class="ltx_text" id="S9.T10.6.4.9.4.5.1" style="font-size:144%;">55.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.9.4.6"><span class="ltx_text" id="S9.T10.6.4.9.4.6.1" style="font-size:144%;">53.20</span></td>
<td class="ltx_td ltx_align_center" id="S9.T10.6.4.9.4.7"><span class="ltx_text" id="S9.T10.6.4.9.4.7.1" style="font-size:144%;">52.45</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.10.5.1">
<span class="ltx_text" id="S9.T10.6.4.10.5.1.1" style="font-size:144%;">CMFormer </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.10.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S9.T10.6.4.10.5.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.10.5.2"><span class="ltx_text" id="S9.T10.6.4.10.5.2.1" style="font-size:144%;">Swin-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.10.5.3"><span class="ltx_text" id="S9.T10.6.4.10.5.3.1" style="font-size:144%;">77.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.10.5.4"><span class="ltx_text" id="S9.T10.6.4.10.5.4.1" style="font-size:144%;">33.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.10.5.5"><span class="ltx_text" id="S9.T10.6.4.10.5.5.1" style="font-size:144%;">67.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.10.5.6"><span class="ltx_text" id="S9.T10.6.4.10.5.6.1" style="font-size:144%;">64.30</span></td>
<td class="ltx_td ltx_align_center" id="S9.T10.6.4.10.5.7"><span class="ltx_text" id="S9.T10.6.4.10.5.7.1" style="font-size:144%;">60.85</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.11.6.1">
<span class="ltx_text" id="S9.T10.6.4.11.6.1.1" style="font-size:144%;">Rein </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.11.6.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S9.T10.6.4.11.6.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.11.6.2"><span class="ltx_text" id="S9.T10.6.4.11.6.2.1" style="font-size:144%;">DINOv2-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.11.6.3"><span class="ltx_text" id="S9.T10.6.4.11.6.3.1" style="font-size:144%;">79.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.11.6.4"><span class="ltx_text" id="S9.T10.6.4.11.6.4.1" style="font-size:144%;">55.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.11.6.5"><span class="ltx_text" id="S9.T10.6.4.11.6.5.1" style="font-size:144%;">72.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.11.6.6"><span class="ltx_text" id="S9.T10.6.4.11.6.6.1" style="font-size:144%;">70.57</span></td>
<td class="ltx_td ltx_align_center" id="S9.T10.6.4.11.6.7"><span class="ltx_text" id="S9.T10.6.4.11.6.7.1" style="font-size:144%;">69.61</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.12.7.1">
<span class="ltx_text" id="S9.T10.6.4.12.7.1.1" style="font-size:144%;">SET </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.12.7.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S9.T10.6.4.12.7.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.12.7.2"><span class="ltx_text" id="S9.T10.6.4.12.7.2.1" style="font-size:144%;">DINOv2-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.12.7.3"><span class="ltx_text" id="S9.T10.6.4.12.7.3.1" style="font-size:144%;">80.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.12.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S9.T10.6.4.12.7.4.1" style="font-size:144%;">57.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.12.7.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S9.T10.6.4.12.7.5.1" style="font-size:144%;">74.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.12.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S9.T10.6.4.12.7.6.1" style="font-size:144%;">73.69</span></td>
<td class="ltx_td ltx_align_center" id="S9.T10.6.4.12.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S9.T10.6.4.12.7.7.1" style="font-size:144%;">71.46</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.13.8.1">
<span class="ltx_text" id="S9.T10.6.4.13.8.1.1" style="font-size:144%;">tqdm </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S9.T10.6.4.13.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.03193v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S9.T10.6.4.13.8.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T10.6.4.13.8.2"><span class="ltx_text" id="S9.T10.6.4.13.8.2.1" style="font-size:144%;">EVA02-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.13.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S9.T10.6.4.13.8.3.1" style="font-size:144%;">81.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.13.8.4"><span class="ltx_text" id="S9.T10.6.4.13.8.4.1" style="font-size:144%;">54.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.13.8.5"><span class="ltx_text" id="S9.T10.6.4.13.8.5.1" style="font-size:144%;">72.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T10.6.4.13.8.6"><span class="ltx_text" id="S9.T10.6.4.13.8.6.1" style="font-size:144%;">72.41</span></td>
<td class="ltx_td ltx_align_center" id="S9.T10.6.4.13.8.7"><span class="ltx_text" id="S9.T10.6.4.13.8.7.1" style="font-size:144%;">70.35</span></td>
</tr>
<tr class="ltx_tr" id="S9.T10.6.4.14.9" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S9.T10.6.4.14.9.1"><span class="ltx_text" id="S9.T10.6.4.14.9.1.1" style="font-size:144%;background-color:#E6E6E6;">MFuser</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S9.T10.6.4.14.9.2"><span class="ltx_text" id="S9.T10.6.4.14.9.2.1" style="font-size:144%;background-color:#E6E6E6;">EVA02-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S9.T10.6.4.14.9.3"><span class="ltx_text ltx_font_bold" id="S9.T10.6.4.14.9.3.1" style="font-size:144%;background-color:#E6E6E6;">82.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S9.T10.6.4.14.9.4"><span class="ltx_text ltx_font_bold" id="S9.T10.6.4.14.9.4.1" style="font-size:144%;background-color:#E6E6E6;">57.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S9.T10.6.4.14.9.5"><span class="ltx_text ltx_font_bold" id="S9.T10.6.4.14.9.5.1" style="font-size:144%;background-color:#E6E6E6;">78.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S9.T10.6.4.14.9.6"><span class="ltx_text ltx_font_bold" id="S9.T10.6.4.14.9.6.1" style="font-size:144%;background-color:#E6E6E6;">74.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T10.6.4.14.9.7"><span class="ltx_text ltx_font_bold" id="S9.T10.6.4.14.9.7.1" style="font-size:144%;background-color:#E6E6E6;">73.45</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of varying the number of MVFuser modules within the MFuser framework on the model's performance.  The experiment uses DINOv2 as the Vision Foundation Model (VFM) and EVA02-CLIP as the Vision-Language Model (VLM). The study evaluates performance across three target domains (C, B, M) representing different real-world scenarios, focusing on the mean Intersection over Union (mIoU) metric. Different configurations are tested, changing how many MVFuser blocks are included in the network. The results show the effect of the different numbers of MVFuser modules on the final performance. The goal is to find an optimal balance between performance and computational efficiency. 
> <details>
> <summary>read the caption</summary>
> Table 11: Ablation studies on the number of MVFusers under the G→→\rightarrow→{C, B, M} setting. Note that we implement DINOv2 [38] as the VFM and EVA02-CLIP [16] as the VLM.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03193/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03193/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}