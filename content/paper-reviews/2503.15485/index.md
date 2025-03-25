---
title: "TULIP: Towards Unified Language-Image Pretraining"
summary: "TULIP enhances image-text pretraining by unifying generative data augmentation with contrastive learning, achieving state-of-the-art performance in visual understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 UC Berkeley",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15485 {{< /keyword >}}
{{< keyword icon="writer" >}} Zineng Tang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15485" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15485" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15485/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing image-text models often struggle with tasks needing high-fidelity visual understanding like fine-grained object recognition because they prioritize high-level semantics over visual details. Vision-focused models, while good at processing visual data, struggle with language, thus limiting its task flexibility. There is a need to improve existing models by enhancing general-purpose visual features and maintaining language strengths. 



This paper presents **TULIP**, a drop-in replacement for existing CLIP-like models, uses generative data augmentation, enhanced image-image and text-text contrastive learning, and reconstruction regularization to learn fine-grained visual features while preserving global semantic alignment. TULIP outperforms existing models, setting a new zero-shot performance record on ImageNet-1K and significantly improving performance on several vision-language benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TULIP, a new image-language pretraining framework, improves fine-grained visual feature encoding while maintaining language grounding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Generative data augmentation with diffusion models refines semantic grounding by creating challenging hard negatives. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Patch-level multi-crop augmentations and reconstruction objectives enhance spatial awareness and preserve local visual details. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for multimodal AI as it introduces a way to retain fine-grained details while keeping strong semantic alignment. TULIP paves the way for more adaptable models and pushes forward the capabilities and efficiency of vision-language understanding, **presenting new research directions**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15485/x1.png)

> 🔼 TULIP, a new image-text contrastive model, addresses the limitations of existing models like CLIP and SigLIP in high-fidelity visual understanding.  Existing methods struggle with fine-grained tasks due to a focus on high-level semantics rather than detailed visual information. TULIP improves performance by incorporating three key innovations: 1) Generative data augmentation creates diverse training examples, enhancing the model's ability to learn nuanced visual details and semantic relationships. 2) Global-local patch-wise image contrastive learning compares both global image representations and local image patches, capturing fine-grained visual features while maintaining semantic alignment. 3) Reconstruction-based feature regularization encourages the model to learn features that support accurate image reconstruction, leading to more robust visual representations and better grounding of language. This combined approach results in a model that excels at both high-level image-text understanding and fine-grained visual tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: TULIP Overview. Existing contrastive image-text models struggle with high-fidelity visual understanding. TULIP is a drop-in replacement for CLIP which leverages generative data augmentation, global-local patch-wise image contrastive learning, and reconstruction-based feature regularization to learn robust visual features and fine-grained language grounding.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.4.5.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.4.5.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.4.5.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.4.5.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T1.4.5.1.3" rowspan="2"><span class="ltx_text" id="S4.T1.4.5.1.3.1" style="font-size:90%;">Res.</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="S4.T1.4.5.1.4" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.5.1.4.1">
<span class="ltx_p" id="S4.T1.4.5.1.4.1.1"><span class="ltx_text" id="S4.T1.4.5.1.4.1.1.1" style="font-size:90%;">Seq.</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T1.4.5.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.5.1.5.1" style="font-size:90%;">Classification</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.4.5.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.5.1.6.1" style="font-size:90%;">COCO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.4.5.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.5.1.7.1" style="font-size:90%;">Flickr</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5"><span class="ltx_text" id="S4.T1.4.4.5.1" style="font-size:90%;">IN-val</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.6"><span class="ltx_text" id="S4.T1.4.4.6.1" style="font-size:90%;">IN-v2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7"><span class="ltx_text" id="S4.T1.4.4.7.1" style="font-size:90%;">IN-ReaL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.8"><span class="ltx_text" id="S4.T1.4.4.8.1" style="font-size:90%;">ObjNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.9"><span class="ltx_text" id="S4.T1.4.4.9.1" style="font-size:90%;">IN-10s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:90%;">T</span><math alttext="\to" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T1.1.1.1.2" style="font-size:90%;">I</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:90%;">I</span><math alttext="\to" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T1.2.2.2.2" style="font-size:90%;">T</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:90%;">T</span><math alttext="\to" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.2" style="font-size:90%;">I</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:90%;">I</span><math alttext="\to" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\to</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T1.4.4.4.2" style="font-size:90%;">T</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.6.2.1" rowspan="7"><span class="ltx_text" id="S4.T1.4.6.2.1.1" style="font-size:90%;">B/16</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.6.2.2"><span class="ltx_text" id="S4.T1.4.6.2.2.1" style="font-size:90%;">OpenAI CLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.6.2.3"><span class="ltx_text" id="S4.T1.4.6.2.3.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.6.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.6.2.4.1">
<span class="ltx_p" id="S4.T1.4.6.2.4.1.1"><span class="ltx_text" id="S4.T1.4.6.2.4.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.5"><span class="ltx_text" id="S4.T1.4.6.2.5.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.6"><span class="ltx_text" id="S4.T1.4.6.2.6.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.7"><span class="ltx_text" id="S4.T1.4.6.2.7.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.8"><span class="ltx_text" id="S4.T1.4.6.2.8.1" style="font-size:90%;">55.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.9"><span class="ltx_text" id="S4.T1.4.6.2.9.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.10"><span class="ltx_text" id="S4.T1.4.6.2.10.1" style="font-size:90%;">33.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.11"><span class="ltx_text" id="S4.T1.4.6.2.11.1" style="font-size:90%;">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.12"><span class="ltx_text" id="S4.T1.4.6.2.12.1" style="font-size:90%;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.2.13"><span class="ltx_text" id="S4.T1.4.6.2.13.1" style="font-size:90%;">81.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.7.3.1"><span class="ltx_text" id="S4.T1.4.7.3.1.1" style="font-size:90%;">Open CLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.7.3.2"><span class="ltx_text" id="S4.T1.4.7.3.2.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.7.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.7.3.3.1">
<span class="ltx_p" id="S4.T1.4.7.3.3.1.1"><span class="ltx_text" id="S4.T1.4.7.3.3.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.4"><span class="ltx_text" id="S4.T1.4.7.3.4.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.5"><span class="ltx_text" id="S4.T1.4.7.3.5.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.6"><span class="ltx_text" id="S4.T1.4.7.3.6.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.7"><span class="ltx_text" id="S4.T1.4.7.3.7.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.8"><span class="ltx_text" id="S4.T1.4.7.3.8.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.9"><span class="ltx_text" id="S4.T1.4.7.3.9.1" style="font-size:90%;">42.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.10"><span class="ltx_text" id="S4.T1.4.7.3.10.1" style="font-size:90%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.11"><span class="ltx_text" id="S4.T1.4.7.3.11.1" style="font-size:90%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3.12"><span class="ltx_text" id="S4.T1.4.7.3.12.1" style="font-size:90%;">86.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.8.4.1"><span class="ltx_text" id="S4.T1.4.8.4.1.1" style="font-size:90%;">MetaCLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.8.4.2"><span class="ltx_text" id="S4.T1.4.8.4.2.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.8.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.8.4.3.1">
<span class="ltx_p" id="S4.T1.4.8.4.3.1.1"><span class="ltx_text" id="S4.T1.4.8.4.3.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.4"><span class="ltx_text" id="S4.T1.4.8.4.4.1" style="font-size:90%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.5"><span class="ltx_text" id="S4.T1.4.8.4.5.1" style="font-size:90%;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.6"><span class="ltx_text" id="S4.T1.4.8.4.6.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.7"><span class="ltx_text" id="S4.T1.4.8.4.7.1" style="font-size:90%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.8"><span class="ltx_text" id="S4.T1.4.8.4.8.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.9"><span class="ltx_text" id="S4.T1.4.8.4.9.1" style="font-size:90%;">48.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.10"><span class="ltx_text" id="S4.T1.4.8.4.10.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.11"><span class="ltx_text" id="S4.T1.4.8.4.11.1" style="font-size:90%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.12"><span class="ltx_text" id="S4.T1.4.8.4.12.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.9.5.1"><span class="ltx_text" id="S4.T1.4.9.5.1.1" style="font-size:90%;">EVA CLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.9.5.2"><span class="ltx_text" id="S4.T1.4.9.5.2.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.9.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.9.5.3.1">
<span class="ltx_p" id="S4.T1.4.9.5.3.1.1"><span class="ltx_text" id="S4.T1.4.9.5.3.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.4"><span class="ltx_text" id="S4.T1.4.9.5.4.1" style="font-size:90%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.5"><span class="ltx_text" id="S4.T1.4.9.5.5.1" style="font-size:90%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.6"><span class="ltx_text" id="S4.T1.4.9.5.6.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.7"><span class="ltx_text" id="S4.T1.4.9.5.7.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.8"><span class="ltx_text" id="S4.T1.4.9.5.8.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.9"><span class="ltx_text" id="S4.T1.4.9.5.9.1" style="font-size:90%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.10"><span class="ltx_text" id="S4.T1.4.9.5.10.1" style="font-size:90%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.11"><span class="ltx_text" id="S4.T1.4.9.5.11.1" style="font-size:90%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.12"><span class="ltx_text" id="S4.T1.4.9.5.12.1" style="font-size:90%;">85.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.10.6.1"><span class="ltx_text" id="S4.T1.4.10.6.1.1" style="font-size:90%;">DFN</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.10.6.2"><span class="ltx_text" id="S4.T1.4.10.6.2.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.10.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.10.6.3.1">
<span class="ltx_p" id="S4.T1.4.10.6.3.1.1"><span class="ltx_text" id="S4.T1.4.10.6.3.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.4"><span class="ltx_text" id="S4.T1.4.10.6.4.1" style="font-size:90%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.5"><span class="ltx_text" id="S4.T1.4.10.6.5.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.6"><span class="ltx_text" id="S4.T1.4.10.6.6.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.7"><span class="ltx_text" id="S4.T1.4.10.6.7.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.8"><span class="ltx_text" id="S4.T1.4.10.6.8.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.9"><span class="ltx_text" id="S4.T1.4.10.6.9.1" style="font-size:90%;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.10"><span class="ltx_text" id="S4.T1.4.10.6.10.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.11"><span class="ltx_text" id="S4.T1.4.10.6.11.1" style="font-size:90%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.12"><span class="ltx_text" id="S4.T1.4.10.6.12.1" style="font-size:90%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.11.7.1"><span class="ltx_text" id="S4.T1.4.11.7.1.1" style="font-size:90%;">SigLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.11.7.2"><span class="ltx_text" id="S4.T1.4.11.7.2.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.11.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.11.7.3.1">
<span class="ltx_p" id="S4.T1.4.11.7.3.1.1"><span class="ltx_text" id="S4.T1.4.11.7.3.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.4"><span class="ltx_text" id="S4.T1.4.11.7.4.1" style="font-size:90%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.5"><span class="ltx_text" id="S4.T1.4.11.7.5.1" style="font-size:90%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.6"><span class="ltx_text" id="S4.T1.4.11.7.6.1" style="font-size:90%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.7"><span class="ltx_text" id="S4.T1.4.11.7.7.1" style="font-size:90%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.8"><span class="ltx_text" id="S4.T1.4.11.7.8.1" style="font-size:90%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.9"><span class="ltx_text" id="S4.T1.4.11.7.9.1" style="font-size:90%;">47.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.10"><span class="ltx_text" id="S4.T1.4.11.7.10.1" style="font-size:90%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.11"><span class="ltx_text" id="S4.T1.4.11.7.11.1" style="font-size:90%;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.12"><span class="ltx_text" id="S4.T1.4.11.7.12.1" style="font-size:90%;">89.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.12.8.1"><span class="ltx_text" id="S4.T1.4.12.8.1.1" style="font-size:90%;">SigLIP 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.12.8.2"><span class="ltx_text" id="S4.T1.4.12.8.2.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.12.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.12.8.3.1">
<span class="ltx_p" id="S4.T1.4.12.8.3.1.1"><span class="ltx_text" id="S4.T1.4.12.8.3.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.4"><span class="ltx_text" id="S4.T1.4.12.8.4.1" style="font-size:90%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.5"><span class="ltx_text" id="S4.T1.4.12.8.5.1" style="font-size:90%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.6"><span class="ltx_text" id="S4.T1.4.12.8.6.1" style="font-size:90%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.7"><span class="ltx_text" id="S4.T1.4.12.8.7.1" style="font-size:90%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.8"><span class="ltx_text" id="S4.T1.4.12.8.8.1" style="font-size:90%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.9"><span class="ltx_text" id="S4.T1.4.12.8.9.1" style="font-size:90%;">52.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.10"><span class="ltx_text" id="S4.T1.4.12.8.10.1" style="font-size:90%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.11"><span class="ltx_text" id="S4.T1.4.12.8.11.1" style="font-size:90%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.12"><span class="ltx_text" id="S4.T1.4.12.8.12.1" style="font-size:90%;">93.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.13.9">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T1.4.13.9.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.13.9.2"><span class="ltx_text" id="S4.T1.4.13.9.2.1" style="font-size:90%;">TULIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.13.9.3"><span class="ltx_text" id="S4.T1.4.13.9.3.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.13.9.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.13.9.4.1">
<span class="ltx_p" id="S4.T1.4.13.9.4.1.1"><span class="ltx_text" id="S4.T1.4.13.9.4.1.1.1" style="font-size:90%;">196</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.5.1" style="font-size:90%;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.6.1" style="font-size:90%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.7.1" style="font-size:90%;">86.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.8"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.8.1" style="font-size:90%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.9"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.9.1" style="font-size:90%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.10"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.10.1" style="font-size:90%;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.11"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.11.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.12"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.12.1" style="font-size:90%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.13"><span class="ltx_text ltx_font_bold" id="S4.T1.4.13.9.13.1" style="font-size:90%;">93.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.14.10.1" rowspan="5"><span class="ltx_text" id="S4.T1.4.14.10.1.1" style="font-size:90%;">So/14</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.14.10.2" rowspan="2"><span class="ltx_text" id="S4.T1.4.14.10.2.1" style="font-size:90%;">SigLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.14.10.3"><span class="ltx_text" id="S4.T1.4.14.10.3.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.14.10.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.14.10.4.1">
<span class="ltx_p" id="S4.T1.4.14.10.4.1.1"><span class="ltx_text" id="S4.T1.4.14.10.4.1.1.1" style="font-size:90%;">256</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.5"><span class="ltx_text" id="S4.T1.4.14.10.5.1" style="font-size:90%;">82.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.6"><span class="ltx_text" id="S4.T1.4.14.10.6.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.7"><span class="ltx_text" id="S4.T1.4.14.10.7.1" style="font-size:90%;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.8"><span class="ltx_text" id="S4.T1.4.14.10.8.1" style="font-size:90%;">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.9"><span class="ltx_text" id="S4.T1.4.14.10.9.1" style="font-size:90%;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.10"><span class="ltx_text" id="S4.T1.4.14.10.10.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.11"><span class="ltx_text" id="S4.T1.4.14.10.11.1" style="font-size:90%;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.12"><span class="ltx_text" id="S4.T1.4.14.10.12.1" style="font-size:90%;">76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.14.10.13"><span class="ltx_text" id="S4.T1.4.14.10.13.1" style="font-size:90%;">90.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.15.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.15.11.1"><span class="ltx_text" id="S4.T1.4.15.11.1.1" style="font-size:90%;">384</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.15.11.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.15.11.2.1">
<span class="ltx_p" id="S4.T1.4.15.11.2.1.1"><span class="ltx_text" id="S4.T1.4.15.11.2.1.1.1" style="font-size:90%;">729</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.3"><span class="ltx_text" id="S4.T1.4.15.11.3.1" style="font-size:90%;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.4"><span class="ltx_text" id="S4.T1.4.15.11.4.1" style="font-size:90%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.5"><span class="ltx_text" id="S4.T1.4.15.11.5.1" style="font-size:90%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.6"><span class="ltx_text" id="S4.T1.4.15.11.6.1" style="font-size:90%;">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.7"><span class="ltx_text" id="S4.T1.4.15.11.7.1" style="font-size:90%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.8"><span class="ltx_text" id="S4.T1.4.15.11.8.1" style="font-size:90%;">52.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.9"><span class="ltx_text" id="S4.T1.4.15.11.9.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.10"><span class="ltx_text" id="S4.T1.4.15.11.10.1" style="font-size:90%;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.11"><span class="ltx_text" id="S4.T1.4.15.11.11.1" style="font-size:90%;">93.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.16.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.16.12.1" rowspan="2"><span class="ltx_text" id="S4.T1.4.16.12.1.1" style="font-size:90%;">SigLIP 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.16.12.2"><span class="ltx_text" id="S4.T1.4.16.12.2.1" style="font-size:90%;">224</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.16.12.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.16.12.3.1">
<span class="ltx_p" id="S4.T1.4.16.12.3.1.1"><span class="ltx_text" id="S4.T1.4.16.12.3.1.1.1" style="font-size:90%;">256</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.4"><span class="ltx_text" id="S4.T1.4.16.12.4.1" style="font-size:90%;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.5"><span class="ltx_text" id="S4.T1.4.16.12.5.1" style="font-size:90%;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.6"><span class="ltx_text" id="S4.T1.4.16.12.6.1" style="font-size:90%;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.7"><span class="ltx_text" id="S4.T1.4.16.12.7.1" style="font-size:90%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.8"><span class="ltx_text" id="S4.T1.4.16.12.8.1" style="font-size:90%;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.9"><span class="ltx_text" id="S4.T1.4.16.12.9.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.10"><span class="ltx_text" id="S4.T1.4.16.12.10.1" style="font-size:90%;">71.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.11"><span class="ltx_text" id="S4.T1.4.16.12.11.1" style="font-size:90%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.12.12"><span class="ltx_text" id="S4.T1.4.16.12.12.1" style="font-size:90%;">94.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.17.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.17.13.1"><span class="ltx_text" id="S4.T1.4.17.13.1.1" style="font-size:90%;">384</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.17.13.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.17.13.2.1">
<span class="ltx_p" id="S4.T1.4.17.13.2.1.1"><span class="ltx_text" id="S4.T1.4.17.13.2.1.1.1" style="font-size:90%;">729</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.3"><span class="ltx_text" id="S4.T1.4.17.13.3.1" style="font-size:90%;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.4"><span class="ltx_text" id="S4.T1.4.17.13.4.1" style="font-size:90%;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.5"><span class="ltx_text" id="S4.T1.4.17.13.5.1" style="font-size:90%;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.6"><span class="ltx_text" id="S4.T1.4.17.13.6.1" style="font-size:90%;">86.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.7"><span class="ltx_text" id="S4.T1.4.17.13.7.1" style="font-size:90%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.8"><span class="ltx_text" id="S4.T1.4.17.13.8.1" style="font-size:90%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.9"><span class="ltx_text" id="S4.T1.4.17.13.9.1" style="font-size:90%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.10"><span class="ltx_text ltx_font_bold" id="S4.T1.4.17.13.10.1" style="font-size:90%;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.13.11"><span class="ltx_text" id="S4.T1.4.17.13.11.1" style="font-size:90%;">94.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.18.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.18.14.1"><span class="ltx_text" id="S4.T1.4.18.14.1.1" style="font-size:90%;">TULIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.18.14.2"><span class="ltx_text" id="S4.T1.4.18.14.2.1" style="font-size:90%;">384</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.18.14.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.18.14.3.1">
<span class="ltx_p" id="S4.T1.4.18.14.3.1.1"><span class="ltx_text" id="S4.T1.4.18.14.3.1.1.1" style="font-size:90%;">729</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.4.1" style="font-size:90%;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.5.1" style="font-size:90%;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.6.1" style="font-size:90%;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.7.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.8"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.8.1" style="font-size:90%;">80.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.9"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.9.1" style="font-size:90%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.10"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.10.1" style="font-size:90%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.11"><span class="ltx_text" id="S4.T1.4.18.14.11.1" style="font-size:90%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.18.14.12"><span class="ltx_text ltx_font_bold" id="S4.T1.4.18.14.12.1" style="font-size:90%;">95.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.19.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.4.19.15.1" rowspan="3"><span class="ltx_text" id="S4.T1.4.19.15.1.1" style="font-size:90%;">g/16</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.19.15.2" rowspan="2"><span class="ltx_text" id="S4.T1.4.19.15.2.1" style="font-size:90%;">SigLIP 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.19.15.3"><span class="ltx_text" id="S4.T1.4.19.15.3.1" style="font-size:90%;">256</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.19.15.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.19.15.4.1">
<span class="ltx_p" id="S4.T1.4.19.15.4.1.1"><span class="ltx_text" id="S4.T1.4.19.15.4.1.1.1" style="font-size:90%;">256</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.5"><span class="ltx_text" id="S4.T1.4.19.15.5.1" style="font-size:90%;">84.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.6"><span class="ltx_text" id="S4.T1.4.19.15.6.1" style="font-size:90%;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.7"><span class="ltx_text" id="S4.T1.4.19.15.7.1" style="font-size:90%;">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.8"><span class="ltx_text" id="S4.T1.4.19.15.8.1" style="font-size:90%;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.9"><span class="ltx_text" id="S4.T1.4.19.15.9.1" style="font-size:90%;">82.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.10"><span class="ltx_text" id="S4.T1.4.19.15.10.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.11"><span class="ltx_text" id="S4.T1.4.19.15.11.1" style="font-size:90%;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.12"><span class="ltx_text" id="S4.T1.4.19.15.12.1" style="font-size:90%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.19.15.13"><span class="ltx_text" id="S4.T1.4.19.15.13.1" style="font-size:90%;">95.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.20.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.4.20.16.1"><span class="ltx_text" id="S4.T1.4.20.16.1.1" style="font-size:90%;">384</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T1.4.20.16.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.20.16.2.1">
<span class="ltx_p" id="S4.T1.4.20.16.2.1.1"><span class="ltx_text" id="S4.T1.4.20.16.2.1.1.1" style="font-size:90%;">576</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.3"><span class="ltx_text" id="S4.T1.4.20.16.3.1" style="font-size:90%;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.4"><span class="ltx_text" id="S4.T1.4.20.16.4.1" style="font-size:90%;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.5"><span class="ltx_text" id="S4.T1.4.20.16.5.1" style="font-size:90%;">88.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.6"><span class="ltx_text" id="S4.T1.4.20.16.6.1" style="font-size:90%;">88.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.7"><span class="ltx_text" id="S4.T1.4.20.16.7.1" style="font-size:90%;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.8"><span class="ltx_text" id="S4.T1.4.20.16.8.1" style="font-size:90%;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.9"><span class="ltx_text" id="S4.T1.4.20.16.9.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.10"><span class="ltx_text" id="S4.T1.4.20.16.10.1" style="font-size:90%;">86.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.16.11"><span class="ltx_text" id="S4.T1.4.20.16.11.1" style="font-size:90%;">95.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.21.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.21.17.1"><span class="ltx_text" id="S4.T1.4.21.17.1.1" style="font-size:90%;">TULIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.21.17.2"><span class="ltx_text" id="S4.T1.4.21.17.2.1" style="font-size:90%;">384</span></th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.21.17.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.21.17.3.1">
<span class="ltx_p" id="S4.T1.4.21.17.3.1.1"><span class="ltx_text" id="S4.T1.4.21.17.3.1.1.1" style="font-size:90%;">576</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.4.1" style="font-size:90%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.5.1" style="font-size:90%;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.6.1" style="font-size:90%;">89.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.7.1" style="font-size:90%;">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.8"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.8.1" style="font-size:90%;">82.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.9"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.9.1" style="font-size:90%;">57.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.10"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.10.1" style="font-size:90%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.11"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.11.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.21.17.12"><span class="ltx_text ltx_font_bold" id="S4.T1.4.21.17.12.1" style="font-size:90%;">95.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of zero-shot classification performance and image-text retrieval capabilities across several state-of-the-art (SOTA) vision and language models, including TULIP.  The models are evaluated on various benchmark datasets: ImageNet-1K (validation set, ImageNet-V2, ImageNet-ReaL, and a 10-shot scenario), ObjectNet, COCO, and Flickr.  For each model and dataset, the table shows the percentage accuracy achieved in zero-shot classification and text-to-image/image-to-text retrieval.  This allows for a direct comparison of TULIP's performance against existing models in both high-level image understanding tasks and fine-grained visual recognition tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Zero-shot classification results (% accuracy) on ImageNet-1K (val, v2, ReaL, 10-shot), ObjectNet, and text-image/image-text retrieval for TULIP vs. several existing SOTA vision and language models.
> </details>





### In-depth insights


#### Generative Data
**Generative data augmentation** emerges as a powerful tool for enhancing datasets beyond traditional transformations. Instead of relying solely on fixed augmentations, generative models, particularly diffusion models, can create more diverse and realistic variations of existing data. This approach addresses limitations in standard data augmentation, which may not capture the full range of potential data distributions. **Diffusion models**, with their ability to perform semantic image edits and create entirely new, plausible examples, offer a promising avenue for augmenting datasets, particularly in scenarios with limited data or domain shifts. This allows for creating more accurate and robust models. Also, it provides more and more comprehensive data augmentation.

#### Patch-Level Details
**Patch-level details are crucial for high-fidelity image understanding**, often overlooked in contrastive models prioritizing global semantics. Addressing this requires incorporating methods like patch-level augmentations (e.g., multi-crop) and objectives inspired by iBOT and DINO. A **reconstruction objective** can further preserve high-frequency local visual details that contrastive learning might miss. By encoding information for reconstructing the image from its latent space, the model captures essential visual nuances (color, texture) while maintaining semantic invariance. This enhancement proves beneficial in downstream tasks demanding fine-grained detail, such as visual question answering, because the model doesn't only look at what is present but also how is the object presented in an image.

#### Spatial Awareness
**Spatial awareness** in AI, particularly in vision-language models, is crucial for tasks requiring precise localization and understanding of object relationships within an image. Current models often prioritize high-level semantic understanding over detailed spatial reasoning, leading to limitations in tasks like counting or depth estimation. Enhancing spatial awareness involves incorporating mechanisms that capture fine-grained details and spatial relationships, such as patch-level analysis and multi-crop augmentation. By doing so, AI systems can move beyond merely identifying objects to comprehending their position and arrangement, enabling more accurate and nuanced interpretations of visual scenes. Furthermore, this heightened awareness improves performance in tasks demanding compositional reasoning and visual perspective-taking.

#### Unified Learning
The concept of "Unified Learning" signifies a profound shift towards **integrating diverse data modalities**, such as image and text, into a cohesive learning framework. This approach aims to **overcome the limitations of unimodal systems**, enabling a model to leverage the synergistic relationship between different types of information.  By aligning visual and textual representations into a shared embedding space, unified learning facilitates **cross-modal understanding** which leads to improved performance across various tasks. Specifically, this unification allows models to **generalize better** by leveraging the complementary strengths inherent in different data formats. The ability to connect **high-level semantics with fine-grained visual details** leads to more robust and versatile AI systems. Ultimately, unified learning strives to create models that exhibit **human-like understanding**, capable of seamlessly processing and interpreting the multimodal world around us. Such models hold immense potential for applications ranging from **advanced image retrieval to sophisticated vision-language interactions**.

#### Visual Fidelity
While the provided research paper focuses on improving image-text pretraining (TULIP) for better vision and language understanding, the concept of "visual fidelity," though not explicitly a heading, is implicitly addressed throughout the document. **Visual fidelity refers to the degree to which a model preserves and understands the intricate details within an image**. The paper tackles the challenge of existing contrastive image-text models that, while good at high-level semantics, often struggle with tasks requiring fine-grained visual understanding. This is achieved through several key mechanisms: generative data augmentation, enabling the model to learn from varied perspectives and nuanced semantic alterations; enhanced image-image and text-text contrastive learning, forcing the model to discern subtle differences; and image/text reconstruction regularization, ensuring the model retains high-frequency visual details often overlooked in standard contrastive learning. By incorporating patch-level augmentations and reconstruction objectives, TULIP aims to capture both global semantic information and localized visual intricacies, thereby enhancing visual fidelity. The positive results across multiple benchmarks demonstrate the effectiveness of these techniques in improving performance on tasks demanding precise spatial reasoning and fine-grained object recognition, ultimately leading to a more complete and accurate visual representation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15485/x2.png)

> 🔼 The TULIP Image Encoder processes images using both traditional augmentation methods (like cropping and color jittering) and generative augmentations from GeCo.  GeCo uses large generative models to produce semantically similar or different versions of the input image. These varied image representations, along with the original image, are used in image-image and image-text contrastive learning.  A key addition is the inclusion of a masked autoencoder (MAE) reconstruction loss. This loss helps ensure that the model captures both high-level semantic understanding and fine-grained details from the image.
> <details>
> <summary>read the caption</summary>
> Figure 2: TULIP Image Encoder. Images undergo both traditional augmentations (such as cropping and color jittering) and generative augmentations via GeCo, which leverages large generative models to create semantically consistent or semantically altered views. These views are then used for image-image and image-text contrastive learning. Additionally, a masked autoencoder (MAE)-based reconstruction loss is applied to encourage the model to encode both semantic and fine-grained details.
> </details>



![](https://arxiv.org/html/2503.15485/x3.png)

> 🔼 The TULIP Text Encoder processes text data using generative augmentation techniques, including paraphrasing and controlled semantic alterations. This is achieved using large language models to create pairs of text data – positive pairs that maintain the original meaning and negative pairs that subtly alter it.  These pairs are then fed into both text-text and image-text contrastive learning processes using a SigLIP objective function.  Similar to the image reconstruction process in TULIP, a causal decoder (based on the T5 architecture) reconstructs the original text, preserving both high-level semantics and fine-grained linguistic details.
> <details>
> <summary>read the caption</summary>
> Figure 3: TULIP Text Encoder. Text undergoes generative augmentation through paraphrasing and controlled semantic alterations using large language models, generating both positive and negative contrastive pairs. These pairs are used for both text-text and image-text contrastive learning with a SigLIP objective. Similar to image reconstruction, a causal decoder (based on T5) is used for text reconstruction, ensuring that the model retains both high-level semantics and fine-grained linguistic detail.
> </details>



![](https://arxiv.org/html/2503.15485/x4.png)

> 🔼 GeCo, a generative contrastive augmentation framework, uses large language models (LLaMa) and image editing models (InstructPix2Pix) to create diverse training data. For text, it generates paraphrases and semantically altered versions.  For images, it produces semantically consistent (positive) and inconsistent (negative) augmentations using soft prompting.  This diversification of views enhances the contrastive learning process, improving model robustness and fine-grained understanding.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview of GeCo. Our generative augmentation framework leverages large generative models to create diverse contrastive views by generating both positive and negative augmentations for images and text. For text augmentation, we use Llama-3.1-8B-Instruct to generate paraphrases and semantically altered text variations. For image augmentation, we fine-tune an instruction-based image editing model (e.g., InstructPix2Pix) fine-tuned using soft-prompting to generate semantically consistent (positive) and semantically altered (negative) views.
> </details>



![](https://arxiv.org/html/2503.15485/x5.png)

> 🔼 This figure illustrates the GeCo (Generative Contrastive view augmentation) process. The top part shows how GeCo generates both positive and negative augmentations for images and their corresponding texts.  Positive augmentations maintain the original semantic meaning, only changing visual aspects like viewpoint (e.g., different angle of the same bird). In contrast, negative augmentations alter the semantic meaning while maintaining some visual similarity. The bottom part of the figure shows how TULIP utilizes these augmentations during training. It assigns weights (+1 for positive pairs, -1 for negative pairs, and 0 to ignore certain pairs) to these augmented image-text pairs to guide the contrastive learning process.  The example shown uses a bird image and its text descriptions to demonstrate the positive and negative augmentation effects.
> <details>
> <summary>read the caption</summary>
> Figure 5: (Top) GeCo generates positive and negative augmentations of both images and text, (Bottom) TULIP uses these augmentations during training time with corresponding weights (+1 for positive pair, -1 for negative pair, 0 to ignore). Here, the generated positive image represents the same bird from a different viewpoint, while the negative image is a different bird (coloring, face structure) in the same physical location.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.1" style="font-size:70%;">Model</span></th>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.1.1.2.1">
<span class="ltx_p" id="S4.T2.6.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.2.1.1.1" style="font-size:70%;">IN-1k</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.1.1.3.1">
<span class="ltx_p" id="S4.T2.6.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.3.1.1.1" style="font-size:70%;">iNAT-18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.1.1.4.1">
<span class="ltx_p" id="S4.T2.6.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.4.1.1.1" style="font-size:70%;">Cifar 100</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.1.1.5.1">
<span class="ltx_p" id="S4.T2.6.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.5.1.1.1" style="font-size:70%;">RxRx1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.1.1.6.1">
<span class="ltx_p" id="S4.T2.6.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.6.1.1.1" style="font-size:70%;">fMoW</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.1.1.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.1.1.7.1">
<span class="ltx_p" id="S4.T2.6.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.7.1.1.1" style="font-size:70%;">Info</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.6.2.2.1"><span class="ltx_text" id="S4.T2.6.2.2.1.1" style="font-size:70%;">MAE</span></th>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.2.2.2.1">
<span class="ltx_p" id="S4.T2.6.2.2.2.1.1"><span class="ltx_text" id="S4.T2.6.2.2.2.1.1.1" style="font-size:70%;">82.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.2.2.3.1">
<span class="ltx_p" id="S4.T2.6.2.2.3.1.1"><span class="ltx_text" id="S4.T2.6.2.2.3.1.1.1" style="font-size:70%;">70.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.2.2.4.1">
<span class="ltx_p" id="S4.T2.6.2.2.4.1.1"><span class="ltx_text" id="S4.T2.6.2.2.4.1.1.1" style="font-size:70%;">87.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.2.2.5.1">
<span class="ltx_p" id="S4.T2.6.2.2.5.1.1"><span class="ltx_text" id="S4.T2.6.2.2.5.1.1.1" style="font-size:70%;">7.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.2.2.6.1">
<span class="ltx_p" id="S4.T2.6.2.2.6.1.1"><span class="ltx_text" id="S4.T2.6.2.2.6.1.1.1" style="font-size:70%;">60.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T2.6.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.2.2.7.1">
<span class="ltx_p" id="S4.T2.6.2.2.7.1.1"><span class="ltx_text" id="S4.T2.6.2.2.7.1.1.1" style="font-size:70%;">50.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.3.3.1"><span class="ltx_text" id="S4.T2.6.3.3.1.1" style="font-size:70%;">DINOv2 (L/16)</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.3.3.2.1">
<span class="ltx_p" id="S4.T2.6.3.3.2.1.1"><span class="ltx_text" id="S4.T2.6.3.3.2.1.1.1" style="font-size:70%;">87.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.3.3.3.1">
<span class="ltx_p" id="S4.T2.6.3.3.3.1.1"><span class="ltx_text" id="S4.T2.6.3.3.3.1.1.1" style="font-size:70%;">83.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.3.3.4.1">
<span class="ltx_p" id="S4.T2.6.3.3.4.1.1"><span class="ltx_text" id="S4.T2.6.3.3.4.1.1.1" style="font-size:70%;">95.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.3.3.5.1">
<span class="ltx_p" id="S4.T2.6.3.3.5.1.1"><span class="ltx_text" id="S4.T2.6.3.3.5.1.1.1" style="font-size:70%;">9.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.3.3.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.3.3.6.1">
<span class="ltx_p" id="S4.T2.6.3.3.6.1.1"><span class="ltx_text" id="S4.T2.6.3.3.6.1.1.1" style="font-size:70%;">65.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.3.3.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.3.3.7.1">
<span class="ltx_p" id="S4.T2.6.3.3.7.1.1"><span class="ltx_text" id="S4.T2.6.3.3.7.1.1.1" style="font-size:70%;">59.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.4.4.1"><span class="ltx_text" id="S4.T2.6.4.4.1.1" style="font-size:70%;">OAI CLIP (B/16)</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.4.4.2.1">
<span class="ltx_p" id="S4.T2.6.4.4.2.1.1"><span class="ltx_text" id="S4.T2.6.4.4.2.1.1.1" style="font-size:70%;">85.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.4.4.3.1">
<span class="ltx_p" id="S4.T2.6.4.4.3.1.1"><span class="ltx_text" id="S4.T2.6.4.4.3.1.1.1" style="font-size:70%;">73.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.4.4.4.1">
<span class="ltx_p" id="S4.T2.6.4.4.4.1.1"><span class="ltx_text" id="S4.T2.6.4.4.4.1.1.1" style="font-size:70%;">89.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.4.4.5.1">
<span class="ltx_p" id="S4.T2.6.4.4.5.1.1"><span class="ltx_text" id="S4.T2.6.4.4.5.1.1.1" style="font-size:70%;">5.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.4.4.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.4.4.6.1">
<span class="ltx_p" id="S4.T2.6.4.4.6.1.1"><span class="ltx_text" id="S4.T2.6.4.4.6.1.1.1" style="font-size:70%;">62.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.4.4.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.4.4.7.1">
<span class="ltx_p" id="S4.T2.6.4.4.7.1.1"><span class="ltx_text" id="S4.T2.6.4.4.7.1.1.1" style="font-size:70%;">66.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.5.5.1"><span class="ltx_text" id="S4.T2.6.5.5.1.1" style="font-size:70%;">FN-CLIP</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.5.5.2.1">
<span class="ltx_p" id="S4.T2.6.5.5.2.1.1"><span class="ltx_text" id="S4.T2.6.5.5.2.1.1.1" style="font-size:70%;">86.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.5.5.3.1">
<span class="ltx_p" id="S4.T2.6.5.5.3.1.1"><span class="ltx_text" id="S4.T2.6.5.5.3.1.1.1" style="font-size:70%;">76.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.5.5.4.1">
<span class="ltx_p" id="S4.T2.6.5.5.4.1.1"><span class="ltx_text" id="S4.T2.6.5.5.4.1.1.1" style="font-size:70%;">93.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.5.5.5.1">
<span class="ltx_p" id="S4.T2.6.5.5.5.1.1"><span class="ltx_text" id="S4.T2.6.5.5.5.1.1.1" style="font-size:70%;">6.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.5.5.6.1">
<span class="ltx_p" id="S4.T2.6.5.5.6.1.1"><span class="ltx_text" id="S4.T2.6.5.5.6.1.1.1" style="font-size:70%;">63.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.5.5.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.5.5.7.1">
<span class="ltx_p" id="S4.T2.6.5.5.7.1.1"><span class="ltx_text" id="S4.T2.6.5.5.7.1.1.1" style="font-size:70%;">68.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.6.1"><span class="ltx_text" id="S4.T2.6.6.6.1.1" style="font-size:70%;">SigLIP (So/14)</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.2.1">
<span class="ltx_p" id="S4.T2.6.6.6.2.1.1"><span class="ltx_text" id="S4.T2.6.6.6.2.1.1.1" style="font-size:70%;">87.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.3.1">
<span class="ltx_p" id="S4.T2.6.6.6.3.1.1"><span class="ltx_text" id="S4.T2.6.6.6.3.1.1.1" style="font-size:70%;">77.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.6.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.4.1">
<span class="ltx_p" id="S4.T2.6.6.6.4.1.1"><span class="ltx_text" id="S4.T2.6.6.6.4.1.1.1" style="font-size:70%;">91.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.6.6.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.5.1">
<span class="ltx_p" id="S4.T2.6.6.6.5.1.1"><span class="ltx_text" id="S4.T2.6.6.6.5.1.1.1" style="font-size:70%;">4.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.6.1">
<span class="ltx_p" id="S4.T2.6.6.6.6.1.1"><span class="ltx_text" id="S4.T2.6.6.6.6.1.1.1" style="font-size:70%;">64.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.6.6.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.7.1">
<span class="ltx_p" id="S4.T2.6.6.6.7.1.1"><span class="ltx_text" id="S4.T2.6.6.6.7.1.1.1" style="font-size:70%;">72.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.7.7.1"><span class="ltx_text" id="S4.T2.6.7.7.1.1" style="font-size:70%;">AIMv2 (H/14)</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.7.7.2.1">
<span class="ltx_p" id="S4.T2.6.7.7.2.1.1"><span class="ltx_text" id="S4.T2.6.7.7.2.1.1.1" style="font-size:70%;">87.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.7.7.3.1">
<span class="ltx_p" id="S4.T2.6.7.7.3.1.1"><span class="ltx_text" id="S4.T2.6.7.7.3.1.1.1" style="font-size:70%;">77.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.7.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.7.7.4.1">
<span class="ltx_p" id="S4.T2.6.7.7.4.1.1"><span class="ltx_text" id="S4.T2.6.7.7.4.1.1.1" style="font-size:70%;">93.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.7.7.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.7.7.5.1">
<span class="ltx_p" id="S4.T2.6.7.7.5.1.1"><span class="ltx_text" id="S4.T2.6.7.7.5.1.1.1" style="font-size:70%;">5.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.7.7.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.7.7.6.1">
<span class="ltx_p" id="S4.T2.6.7.7.6.1.1"><span class="ltx_text" id="S4.T2.6.7.7.6.1.1.1" style="font-size:70%;">62.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.7.7.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.7.7.7.1">
<span class="ltx_p" id="S4.T2.6.7.7.7.1.1"><span class="ltx_text" id="S4.T2.6.7.7.7.1.1.1" style="font-size:70%;">70.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.8.8.1"><span class="ltx_text" id="S4.T2.6.8.8.1.1" style="font-size:70%;">AIMv2 (3B,448px)</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.8.8.2.1">
<span class="ltx_p" id="S4.T2.6.8.8.2.1.1"><span class="ltx_text" id="S4.T2.6.8.8.2.1.1.1" style="font-size:70%;">89.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.8.8.3.1">
<span class="ltx_p" id="S4.T2.6.8.8.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.8.8.3.1.1.1" style="font-size:70%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.8.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.8.8.4.1">
<span class="ltx_p" id="S4.T2.6.8.8.4.1.1"><span class="ltx_text" id="S4.T2.6.8.8.4.1.1.1" style="font-size:70%;">94.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.8.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.8.8.5.1">
<span class="ltx_p" id="S4.T2.6.8.8.5.1.1"><span class="ltx_text" id="S4.T2.6.8.8.5.1.1.1" style="font-size:70%;">9.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.8.8.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.8.8.6.1">
<span class="ltx_p" id="S4.T2.6.8.8.6.1.1"><span class="ltx_text" id="S4.T2.6.8.8.6.1.1.1" style="font-size:70%;">66.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.8.8.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.8.8.7.1">
<span class="ltx_p" id="S4.T2.6.8.8.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.8.8.7.1.1.1" style="font-size:70%;">74.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.9.9.1"><span class="ltx_text" id="S4.T2.6.9.9.1.1" style="font-size:70%;">TULIP (B/16)</span></th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.6.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.9.9.2.1">
<span class="ltx_p" id="S4.T2.6.9.9.2.1.1"><span class="ltx_text" id="S4.T2.6.9.9.2.1.1.1" style="font-size:70%;">85.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.6.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.9.9.3.1">
<span class="ltx_p" id="S4.T2.6.9.9.3.1.1"><span class="ltx_text" id="S4.T2.6.9.9.3.1.1.1" style="font-size:70%;">81.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.6.9.9.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.9.9.4.1">
<span class="ltx_p" id="S4.T2.6.9.9.4.1.1"><span class="ltx_text" id="S4.T2.6.9.9.4.1.1.1" style="font-size:70%;">93.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.6.9.9.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.9.9.5.1">
<span class="ltx_p" id="S4.T2.6.9.9.5.1.1"><span class="ltx_text" id="S4.T2.6.9.9.5.1.1.1" style="font-size:70%;">7.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.6.9.9.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.9.9.6.1">
<span class="ltx_p" id="S4.T2.6.9.9.6.1.1"><span class="ltx_text" id="S4.T2.6.9.9.6.1.1.1" style="font-size:70%;">63.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T2.6.9.9.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.9.9.7.1">
<span class="ltx_p" id="S4.T2.6.9.9.7.1.1"><span class="ltx_text" id="S4.T2.6.9.9.7.1.1.1" style="font-size:70%;">69.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.10.10.1"><span class="ltx_text" id="S4.T2.6.10.10.1.1" style="font-size:70%;">TULIP (So/14, 384)</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.10.10.2.1">
<span class="ltx_p" id="S4.T2.6.10.10.2.1.1"><span class="ltx_text" id="S4.T2.6.10.10.2.1.1.1" style="font-size:70%;">89.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.10.10.3.1">
<span class="ltx_p" id="S4.T2.6.10.10.3.1.1"><span class="ltx_text" id="S4.T2.6.10.10.3.1.1.1" style="font-size:70%;">84.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.10.10.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.10.10.4.1">
<span class="ltx_p" id="S4.T2.6.10.10.4.1.1"><span class="ltx_text" id="S4.T2.6.10.10.4.1.1.1" style="font-size:70%;">96.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.10.10.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.10.10.5.1">
<span class="ltx_p" id="S4.T2.6.10.10.5.1.1"><span class="ltx_text" id="S4.T2.6.10.10.5.1.1.1" style="font-size:70%;">9.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.10.10.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.10.10.6.1">
<span class="ltx_p" id="S4.T2.6.10.10.6.1.1"><span class="ltx_text" id="S4.T2.6.10.10.6.1.1.1" style="font-size:70%;">65.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T2.6.10.10.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.10.10.7.1">
<span class="ltx_p" id="S4.T2.6.10.10.7.1.1"><span class="ltx_text" id="S4.T2.6.10.10.7.1.1.1" style="font-size:70%;">73.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.6.11.11.1"><span class="ltx_text" id="S4.T2.6.11.11.1.1" style="font-size:70%;">TULIP (g/16, 384)</span></th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.6.11.11.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.11.11.2.1">
<span class="ltx_p" id="S4.T2.6.11.11.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.11.2.1.1.1" style="font-size:70%;">89.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.6.11.11.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.11.11.3.1">
<span class="ltx_p" id="S4.T2.6.11.11.3.1.1"><span class="ltx_text" id="S4.T2.6.11.11.3.1.1.1" style="font-size:70%;">85.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.6.11.11.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.11.11.4.1">
<span class="ltx_p" id="S4.T2.6.11.11.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.11.4.1.1.1" style="font-size:70%;">96.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.6.11.11.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.11.11.5.1">
<span class="ltx_p" id="S4.T2.6.11.11.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.11.5.1.1.1" style="font-size:70%;">9.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.6.11.11.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.11.11.6.1">
<span class="ltx_p" id="S4.T2.6.11.11.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.11.6.1.1.1" style="font-size:70%;">66.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T2.6.11.11.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.11.11.7.1">
<span class="ltx_p" id="S4.T2.6.11.11.7.1.1"><span class="ltx_text" id="S4.T2.6.11.11.7.1.1.1" style="font-size:70%;">74.7</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of applying a linear probe to evaluate the quality of visual representations learned by various models, including TULIP and several state-of-the-art (SOTA) vision foundation models.  A linear probe is a simple classifier trained on top of the learned representations to assess their effectiveness for downstream tasks. The table shows the accuracy achieved on several benchmark datasets (ImageNet-1K, iNAT-18, CIFAR-100, RxRx1, fMoW, and Infographics), demonstrating TULIP's superior performance even when compared to significantly larger models.  The datasets are chosen to represent a wide range of visual tasks, showcasing TULIP's versatility and robustness.
> <details>
> <summary>read the caption</summary>
> Table 2: Results (% accuracy) of a linear probe applied to representations learned by existing representation models. TULIP performs strongly across all datasets, even outperforming significantly larger vision foundation models such as AIMv2 3B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="S4.T3.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.1.1.1.1">
<span class="ltx_p" id="S4.T3.4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.1.1.1.1.1" style="font-size:90%;">Model</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.1.2.1" style="font-size:90%;">Text</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.1.3.1" style="font-size:90%;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.1.4.1" style="font-size:90%;">Group</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.2">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.2.2.1.1">
<span class="ltx_p" id="S4.T3.4.2.2.1.1.1"><span class="ltx_text" id="S4.T3.4.2.2.1.1.1.1" style="font-size:90%;">MTurk Human</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.2.2"><span class="ltx_text" id="S4.T3.4.2.2.2.1" style="font-size:90%;">89.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.2.3"><span class="ltx_text" id="S4.T3.4.2.2.3.1" style="font-size:90%;">88.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.2.4"><span class="ltx_text" id="S4.T3.4.2.2.4.1" style="font-size:90%;">85.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.3.3">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.3.3.1.1">
<span class="ltx_p" id="S4.T3.4.3.3.1.1.1"><span class="ltx_text" id="S4.T3.4.3.3.1.1.1.1" style="font-size:90%;">Random Chance</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.3.2"><span class="ltx_text" id="S4.T3.4.3.3.2.1" style="font-size:90%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.3.3"><span class="ltx_text" id="S4.T3.4.3.3.3.1" style="font-size:90%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.3.4"><span class="ltx_text" id="S4.T3.4.3.3.4.1" style="font-size:90%;">16.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.4.1.1">
<span class="ltx_p" id="S4.T3.4.4.4.1.1.1"><span class="ltx_text" id="S4.T3.4.4.4.1.1.1.1" style="font-size:90%;">VinVL</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.2"><span class="ltx_text" id="S4.T3.4.4.4.2.1" style="font-size:90%;">37.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.3"><span class="ltx_text" id="S4.T3.4.4.4.3.1" style="font-size:90%;">17.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4"><span class="ltx_text" id="S4.T3.4.4.4.4.1" style="font-size:90%;">14.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5.5">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.5.5.1.1">
<span class="ltx_p" id="S4.T3.4.5.5.1.1.1"><span class="ltx_text" id="S4.T3.4.5.5.1.1.1.1" style="font-size:90%;">CLIP (ViT-B/32)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.5.2"><span class="ltx_text" id="S4.T3.4.5.5.2.1" style="font-size:90%;">30.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.5.3"><span class="ltx_text" id="S4.T3.4.5.5.3.1" style="font-size:90%;">10.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.5.4"><span class="ltx_text" id="S4.T3.4.5.5.4.1" style="font-size:90%;">8.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6.6">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.6.6.1.1">
<span class="ltx_p" id="S4.T3.4.6.6.1.1.1"><span class="ltx_text" id="S4.T3.4.6.6.1.1.1.1" style="font-size:90%;">SigLIP (ViT-so/14, 384)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.6.2"><span class="ltx_text" id="S4.T3.4.6.6.2.1" style="font-size:90%;">36.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.6.3"><span class="ltx_text" id="S4.T3.4.6.6.3.1" style="font-size:90%;">15.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.6.4"><span class="ltx_text" id="S4.T3.4.6.6.4.1" style="font-size:90%;">12.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7.7">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.4.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.7.7.1.1">
<span class="ltx_p" id="S4.T3.4.7.7.1.1.1"><span class="ltx_text" id="S4.T3.4.7.7.1.1.1.1" style="font-size:90%;">SigLIP 2 (ViT-so/14)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.7.2"><span class="ltx_text" id="S4.T3.4.7.7.2.1" style="font-size:90%;">38.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.7.3"><span class="ltx_text" id="S4.T3.4.7.7.3.1" style="font-size:90%;">19.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.7.4"><span class="ltx_text" id="S4.T3.4.7.7.4.1" style="font-size:90%;">16.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8.8">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.4.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.8.8.1.1">
<span class="ltx_p" id="S4.T3.4.8.8.1.1.1"><span class="ltx_text" id="S4.T3.4.8.8.1.1.1.1" style="font-size:90%;">SigLIP 2 (ViT-g/14)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.8.2"><span class="ltx_text" id="S4.T3.4.8.8.2.1" style="font-size:90%;">38.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.8.3"><span class="ltx_text" id="S4.T3.4.8.8.3.1" style="font-size:90%;">17.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.8.4"><span class="ltx_text" id="S4.T3.4.8.8.4.1" style="font-size:90%;">14.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.9.9">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.9.9.1.1">
<span class="ltx_p" id="S4.T3.4.9.9.1.1.1"><span class="ltx_text" id="S4.T3.4.9.9.1.1.1.1" style="font-size:90%;">TULIP (ViT-B/14)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.9.2"><span class="ltx_text" id="S4.T3.4.9.9.2.1" style="font-size:90%;">37.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.9.3"><span class="ltx_text" id="S4.T3.4.9.9.3.1" style="font-size:90%;">16.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.9.4"><span class="ltx_text" id="S4.T3.4.9.9.4.1" style="font-size:90%;">11.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.10.10">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.4.10.10.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.10.10.1.1">
<span class="ltx_p" id="S4.T3.4.10.10.1.1.1"><span class="ltx_text" id="S4.T3.4.10.10.1.1.1.1" style="font-size:90%;">TULIP (ViT-So/14, 384)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.10.2"><span class="ltx_text" id="S4.T3.4.10.10.2.1" style="font-size:90%;">42.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.10.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.10.10.3.1" style="font-size:90%;">20.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.10.4"><span class="ltx_text" id="S4.T3.4.10.10.4.1" style="font-size:90%;">17.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.11.11">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="S4.T3.4.11.11.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.11.11.1.1">
<span class="ltx_p" id="S4.T3.4.11.11.1.1.1"><span class="ltx_text" id="S4.T3.4.11.11.1.1.1.1" style="font-size:90%;">TULIP (ViT-G/16, 384)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.11.11.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.11.11.2.1" style="font-size:90%;">42.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.11.11.3"><span class="ltx_text" id="S4.T3.4.11.11.3.1" style="font-size:90%;">20.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.11.11.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.11.11.4.1" style="font-size:90%;">18.50</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various vision-language models on the Winoground dataset, a benchmark designed to evaluate compositional reasoning abilities. The dataset contains image-text pairs with subtly altered meanings, testing the models' ability to correctly match images and captions based on their compositional understanding.  The results are broken down by three scoring metrics: text accuracy, image accuracy, and group accuracy, reflecting the model's performance in understanding text, images, and the relationship between them.  The table highlights that TULIP is the only contrastive image-text (CIT) model that surpasses random chance on the group accuracy metric, indicating a superior ability to understand the complex relationships within the dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Results (% accuracy) on the Winoground dataset across the text, image and group score metrics. TULIP is the only CIT model to outperform random chance on the group score metric.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.1.1" style="font-size:70%;">Model</span></th>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.2.1">
<span class="ltx_p" id="S4.T4.3.4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.2.1.1.1" style="font-size:70%;">Overall</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.3.1">
<span class="ltx_p" id="S4.T4.3.4.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.3.1.1.1" style="font-size:70%;">Sim.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.4.1">
<span class="ltx_p" id="S4.T4.3.4.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.4.1.1.1" style="font-size:70%;">Count</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.5.1">
<span class="ltx_p" id="S4.T4.3.4.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.5.1.1.1" style="font-size:70%;">Depth</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.6.1">
<span class="ltx_p" id="S4.T4.3.4.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.6.1.1.1" style="font-size:70%;">Jigsaw</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.7.1">
<span class="ltx_p" id="S4.T4.3.4.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.7.1.1.1" style="font-size:70%;">Art</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.8.1">
<span class="ltx_p" id="S4.T4.3.4.1.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.8.1.1.1" style="font-size:70%;">Fun.-Corr.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.9.1">
<span class="ltx_p" id="S4.T4.3.4.1.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.9.1.1.1" style="font-size:70%;">Sem.-Corr.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.10.1">
<span class="ltx_p" id="S4.T4.3.4.1.10.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.10.1.1.1" style="font-size:70%;">Spatial</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.11.1">
<span class="ltx_p" id="S4.T4.3.4.1.11.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.11.1.1.1" style="font-size:70%;">Local.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.12.1">
<span class="ltx_p" id="S4.T4.3.4.1.12.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.12.1.1.1" style="font-size:70%;">Vis.-Corr.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.13.1">
<span class="ltx_p" id="S4.T4.3.4.1.13.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.13.1.1.1" style="font-size:70%;">Multi-view</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.14.1">
<span class="ltx_p" id="S4.T4.3.4.1.14.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.14.1.1.1" style="font-size:70%;">Reflect.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.15.1">
<span class="ltx_p" id="S4.T4.3.4.1.15.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.15.1.1.1" style="font-size:70%;">Forensic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.3.4.1.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.16.1">
<span class="ltx_p" id="S4.T4.3.4.1.16.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.16.1.1.1" style="font-size:70%;">IQ</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.5.2.1"><span class="ltx_text" id="S4.T4.3.5.2.1.1" style="font-size:70%;">Human</span></th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.2.1">
<span class="ltx_p" id="S4.T4.3.5.2.2.1.1"><span class="ltx_text" id="S4.T4.3.5.2.2.1.1.1" style="font-size:70%;">95.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.3.1">
<span class="ltx_p" id="S4.T4.3.5.2.3.1.1"><span class="ltx_text" id="S4.T4.3.5.2.3.1.1.1" style="font-size:70%;">96.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.4.1">
<span class="ltx_p" id="S4.T4.3.5.2.4.1.1"><span class="ltx_text" id="S4.T4.3.5.2.4.1.1.1" style="font-size:70%;">93.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.5.1">
<span class="ltx_p" id="S4.T4.3.5.2.5.1.1"><span class="ltx_text" id="S4.T4.3.5.2.5.1.1.1" style="font-size:70%;">99.19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.6.1">
<span class="ltx_p" id="S4.T4.3.5.2.6.1.1"><span class="ltx_text" id="S4.T4.3.5.2.6.1.1.1" style="font-size:70%;">99.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.7.1">
<span class="ltx_p" id="S4.T4.3.5.2.7.1.1"><span class="ltx_text" id="S4.T4.3.5.2.7.1.1.1" style="font-size:70%;">95.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.8.1">
<span class="ltx_p" id="S4.T4.3.5.2.8.1.1"><span class="ltx_text" id="S4.T4.3.5.2.8.1.1.1" style="font-size:70%;">80.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.9.1">
<span class="ltx_p" id="S4.T4.3.5.2.9.1.1"><span class="ltx_text" id="S4.T4.3.5.2.9.1.1.1" style="font-size:70%;">96.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.10.1">
<span class="ltx_p" id="S4.T4.3.5.2.10.1.1"><span class="ltx_text" id="S4.T4.3.5.2.10.1.1.1" style="font-size:70%;">98.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.11.1">
<span class="ltx_p" id="S4.T4.3.5.2.11.1.1"><span class="ltx_text" id="S4.T4.3.5.2.11.1.1.1" style="font-size:70%;">98.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.12.1">
<span class="ltx_p" id="S4.T4.3.5.2.12.1.1"><span class="ltx_text" id="S4.T4.3.5.2.12.1.1.1" style="font-size:70%;">99.42</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.13.1">
<span class="ltx_p" id="S4.T4.3.5.2.13.1.1"><span class="ltx_text" id="S4.T4.3.5.2.13.1.1.1" style="font-size:70%;">92.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.14.1">
<span class="ltx_p" id="S4.T4.3.5.2.14.1.1"><span class="ltx_text" id="S4.T4.3.5.2.14.1.1.1" style="font-size:70%;">95.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.15.1">
<span class="ltx_p" id="S4.T4.3.5.2.15.1.1"><span class="ltx_text" id="S4.T4.3.5.2.15.1.1.1" style="font-size:70%;">100.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.5.2.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.2.16.1">
<span class="ltx_p" id="S4.T4.3.5.2.16.1.1"><span class="ltx_text" id="S4.T4.3.5.2.16.1.1.1" style="font-size:70%;">80.00</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.6.3.1"><span class="ltx_text" id="S4.T4.3.6.3.1.1" style="font-size:70%;">Random Choice</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.2.1">
<span class="ltx_p" id="S4.T4.3.6.3.2.1.1"><span class="ltx_text" id="S4.T4.3.6.3.2.1.1.1" style="font-size:70%;">38.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.3.1">
<span class="ltx_p" id="S4.T4.3.6.3.3.1.1"><span class="ltx_text" id="S4.T4.3.6.3.3.1.1.1" style="font-size:70%;">50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.4.1">
<span class="ltx_p" id="S4.T4.3.6.3.4.1.1"><span class="ltx_text" id="S4.T4.3.6.3.4.1.1.1" style="font-size:70%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.5.1">
<span class="ltx_p" id="S4.T4.3.6.3.5.1.1"><span class="ltx_text" id="S4.T4.3.6.3.5.1.1.1" style="font-size:70%;">50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.6.1">
<span class="ltx_p" id="S4.T4.3.6.3.6.1.1"><span class="ltx_text" id="S4.T4.3.6.3.6.1.1.1" style="font-size:70%;">50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.7.1">
<span class="ltx_p" id="S4.T4.3.6.3.7.1.1"><span class="ltx_text" id="S4.T4.3.6.3.7.1.1.1" style="font-size:70%;">50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.8.1">
<span class="ltx_p" id="S4.T4.3.6.3.8.1.1"><span class="ltx_text" id="S4.T4.3.6.3.8.1.1.1" style="font-size:70%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.9.1">
<span class="ltx_p" id="S4.T4.3.6.3.9.1.1"><span class="ltx_text" id="S4.T4.3.6.3.9.1.1.1" style="font-size:70%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.10.1">
<span class="ltx_p" id="S4.T4.3.6.3.10.1.1"><span class="ltx_text" id="S4.T4.3.6.3.10.1.1.1" style="font-size:70%;">50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.11.1">
<span class="ltx_p" id="S4.T4.3.6.3.11.1.1"><span class="ltx_text" id="S4.T4.3.6.3.11.1.1.1" style="font-size:70%;">50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.12.1">
<span class="ltx_p" id="S4.T4.3.6.3.12.1.1"><span class="ltx_text" id="S4.T4.3.6.3.12.1.1.1" style="font-size:70%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.13.1">
<span class="ltx_p" id="S4.T4.3.6.3.13.1.1"><span class="ltx_text" id="S4.T4.3.6.3.13.1.1.1" style="font-size:70%;">50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.14.1">
<span class="ltx_p" id="S4.T4.3.6.3.14.1.1"><span class="ltx_text" id="S4.T4.3.6.3.14.1.1.1" style="font-size:70%;">33.33</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.15.1">
<span class="ltx_p" id="S4.T4.3.6.3.15.1.1"><span class="ltx_text" id="S4.T4.3.6.3.15.1.1.1" style="font-size:70%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.6.3.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.6.3.16.1">
<span class="ltx_p" id="S4.T4.3.6.3.16.1.1"><span class="ltx_text" id="S4.T4.3.6.3.16.1.1.1" style="font-size:70%;">25</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.7.4.1"><span class="ltx_text" id="S4.T4.3.7.4.1.1" style="font-size:70%;">GPT-4o</span></th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.2.1">
<span class="ltx_p" id="S4.T4.3.7.4.2.1.1"><span class="ltx_text" id="S4.T4.3.7.4.2.1.1.1" style="font-size:70%;">60.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.3.1">
<span class="ltx_p" id="S4.T4.3.7.4.3.1.1"><span class="ltx_text" id="S4.T4.3.7.4.3.1.1.1" style="font-size:70%;">72.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.4.1">
<span class="ltx_p" id="S4.T4.3.7.4.4.1.1"><span class="ltx_text" id="S4.T4.3.7.4.4.1.1.1" style="font-size:70%;">49.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.5.1">
<span class="ltx_p" id="S4.T4.3.7.4.5.1.1"><span class="ltx_text" id="S4.T4.3.7.4.5.1.1.1" style="font-size:70%;">74.19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.6.1">
<span class="ltx_p" id="S4.T4.3.7.4.6.1.1"><span class="ltx_text" id="S4.T4.3.7.4.6.1.1.1" style="font-size:70%;">55.33</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.7.1">
<span class="ltx_p" id="S4.T4.3.7.4.7.1.1"><span class="ltx_text" id="S4.T4.3.7.4.7.1.1.1" style="font-size:70%;">82.91</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.8.1">
<span class="ltx_p" id="S4.T4.3.7.4.8.1.1"><span class="ltx_text" id="S4.T4.3.7.4.8.1.1.1" style="font-size:70%;">40.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.9.1">
<span class="ltx_p" id="S4.T4.3.7.4.9.1.1"><span class="ltx_text" id="S4.T4.3.7.4.9.1.1.1" style="font-size:70%;">53.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.10.1">
<span class="ltx_p" id="S4.T4.3.7.4.10.1.1"><span class="ltx_text" id="S4.T4.3.7.4.10.1.1.1" style="font-size:70%;">69.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.11.1">
<span class="ltx_p" id="S4.T4.3.7.4.11.1.1"><span class="ltx_text" id="S4.T4.3.7.4.11.1.1.1" style="font-size:70%;">59.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.12.1">
<span class="ltx_p" id="S4.T4.3.7.4.12.1.1"><span class="ltx_text" id="S4.T4.3.7.4.12.1.1.1" style="font-size:70%;">75.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.13.1">
<span class="ltx_p" id="S4.T4.3.7.4.13.1.1"><span class="ltx_text" id="S4.T4.3.7.4.13.1.1.1" style="font-size:70%;">59.40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.14.1">
<span class="ltx_p" id="S4.T4.3.7.4.14.1.1"><span class="ltx_text" id="S4.T4.3.7.4.14.1.1.1" style="font-size:70%;">37.31</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.15.1">
<span class="ltx_p" id="S4.T4.3.7.4.15.1.1"><span class="ltx_text" id="S4.T4.3.7.4.15.1.1.1" style="font-size:70%;">79.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.7.4.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.7.4.16.1">
<span class="ltx_p" id="S4.T4.3.7.4.16.1.1"><span class="ltx_text" id="S4.T4.3.7.4.16.1.1.1" style="font-size:70%;">31.33</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.8.5.1"><span class="ltx_text" id="S4.T4.3.8.5.1.1" style="font-size:70%;">GPT-4 Turbo</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.2.1">
<span class="ltx_p" id="S4.T4.3.8.5.2.1.1"><span class="ltx_text" id="S4.T4.3.8.5.2.1.1.1" style="font-size:70%;">54.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.3.1">
<span class="ltx_p" id="S4.T4.3.8.5.3.1.1"><span class="ltx_text" id="S4.T4.3.8.5.3.1.1.1" style="font-size:70%;">80.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.4.1">
<span class="ltx_p" id="S4.T4.3.8.5.4.1.1"><span class="ltx_text" id="S4.T4.3.8.5.4.1.1.1" style="font-size:70%;">57.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.5.1">
<span class="ltx_p" id="S4.T4.3.8.5.5.1.1"><span class="ltx_text" id="S4.T4.3.8.5.5.1.1.1" style="font-size:70%;">66.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.6.1">
<span class="ltx_p" id="S4.T4.3.8.5.6.1.1"><span class="ltx_text" id="S4.T4.3.8.5.6.1.1.1" style="font-size:70%;">69.33</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.7.1">
<span class="ltx_p" id="S4.T4.3.8.5.7.1.1"><span class="ltx_text" id="S4.T4.3.8.5.7.1.1.1" style="font-size:70%;">79.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.8.1">
<span class="ltx_p" id="S4.T4.3.8.5.8.1.1"><span class="ltx_text" id="S4.T4.3.8.5.8.1.1.1" style="font-size:70%;">24.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.9.1">
<span class="ltx_p" id="S4.T4.3.8.5.9.1.1"><span class="ltx_text" id="S4.T4.3.8.5.9.1.1.1" style="font-size:70%;">30.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.10.1">
<span class="ltx_p" id="S4.T4.3.8.5.10.1.1"><span class="ltx_text" id="S4.T4.3.8.5.10.1.1.1" style="font-size:70%;">69.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.11.1">
<span class="ltx_p" id="S4.T4.3.8.5.11.1.1"><span class="ltx_text" id="S4.T4.3.8.5.11.1.1.1" style="font-size:70%;">52.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.12.1">
<span class="ltx_p" id="S4.T4.3.8.5.12.1.1"><span class="ltx_text" id="S4.T4.3.8.5.12.1.1.1" style="font-size:70%;">52.33</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.13.1">
<span class="ltx_p" id="S4.T4.3.8.5.13.1.1"><span class="ltx_text" id="S4.T4.3.8.5.13.1.1.1" style="font-size:70%;">52.63</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.14.1">
<span class="ltx_p" id="S4.T4.3.8.5.14.1.1"><span class="ltx_text" id="S4.T4.3.8.5.14.1.1.1" style="font-size:70%;">32.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.15.1">
<span class="ltx_p" id="S4.T4.3.8.5.15.1.1"><span class="ltx_text" id="S4.T4.3.8.5.15.1.1.1" style="font-size:70%;">63.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.8.5.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.8.5.16.1">
<span class="ltx_p" id="S4.T4.3.8.5.16.1.1"><span class="ltx_text" id="S4.T4.3.8.5.16.1.1.1" style="font-size:70%;">32.67</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.9.6.1"><span class="ltx_text" id="S4.T4.3.9.6.1.1" style="font-size:70%;">GPT-4V</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.2.1">
<span class="ltx_p" id="S4.T4.3.9.6.2.1.1"><span class="ltx_text" id="S4.T4.3.9.6.2.1.1.1" style="font-size:70%;">51.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.3.1">
<span class="ltx_p" id="S4.T4.3.9.6.3.1.1"><span class="ltx_text" id="S4.T4.3.9.6.3.1.1.1" style="font-size:70%;">78.52</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.4.1">
<span class="ltx_p" id="S4.T4.3.9.6.4.1.1"><span class="ltx_text" id="S4.T4.3.9.6.4.1.1.1" style="font-size:70%;">60.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.5.1">
<span class="ltx_p" id="S4.T4.3.9.6.5.1.1"><span class="ltx_text" id="S4.T4.3.9.6.5.1.1.1" style="font-size:70%;">59.68</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.6.1">
<span class="ltx_p" id="S4.T4.3.9.6.6.1.1"><span class="ltx_text" id="S4.T4.3.9.6.6.1.1.1" style="font-size:70%;">70.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.7.1">
<span class="ltx_p" id="S4.T4.3.9.6.7.1.1"><span class="ltx_text" id="S4.T4.3.9.6.7.1.1.1" style="font-size:70%;">79.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.8.1">
<span class="ltx_p" id="S4.T4.3.9.6.8.1.1"><span class="ltx_text" id="S4.T4.3.9.6.8.1.1.1" style="font-size:70%;">26.15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.9.1">
<span class="ltx_p" id="S4.T4.3.9.6.9.1.1"><span class="ltx_text" id="S4.T4.3.9.6.9.1.1.1" style="font-size:70%;">28.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.10.1">
<span class="ltx_p" id="S4.T4.3.9.6.10.1.1"><span class="ltx_text" id="S4.T4.3.9.6.10.1.1.1" style="font-size:70%;">72.73</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.11.1">
<span class="ltx_p" id="S4.T4.3.9.6.11.1.1"><span class="ltx_text" id="S4.T4.3.9.6.11.1.1.1" style="font-size:70%;">54.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.12.1">
<span class="ltx_p" id="S4.T4.3.9.6.12.1.1"><span class="ltx_text" id="S4.T4.3.9.6.12.1.1.1" style="font-size:70%;">33.72</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.13.1">
<span class="ltx_p" id="S4.T4.3.9.6.13.1.1"><span class="ltx_text" id="S4.T4.3.9.6.13.1.1.1" style="font-size:70%;">55.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.14.1">
<span class="ltx_p" id="S4.T4.3.9.6.14.1.1"><span class="ltx_text" id="S4.T4.3.9.6.14.1.1.1" style="font-size:70%;">38.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.15.1">
<span class="ltx_p" id="S4.T4.3.9.6.15.1.1"><span class="ltx_text" id="S4.T4.3.9.6.15.1.1.1" style="font-size:70%;">34.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.9.6.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.9.6.16.1">
<span class="ltx_p" id="S4.T4.3.9.6.16.1.1"><span class="ltx_text" id="S4.T4.3.9.6.16.1.1.1" style="font-size:70%;">22.67</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.10.7.1"><span class="ltx_text" id="S4.T4.3.10.7.1.1" style="font-size:70%;">LLaVA 1.6 34B</span></th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.2.1">
<span class="ltx_p" id="S4.T4.3.10.7.2.1.1"><span class="ltx_text" id="S4.T4.3.10.7.2.1.1.1" style="font-size:70%;">46.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.3.1">
<span class="ltx_p" id="S4.T4.3.10.7.3.1.1"><span class="ltx_text" id="S4.T4.3.10.7.3.1.1.1" style="font-size:70%;">48.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.4.1">
<span class="ltx_p" id="S4.T4.3.10.7.4.1.1"><span class="ltx_text" id="S4.T4.3.10.7.4.1.1.1" style="font-size:70%;">66.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.5.1">
<span class="ltx_p" id="S4.T4.3.10.7.5.1.1"><span class="ltx_text" id="S4.T4.3.10.7.5.1.1.1" style="font-size:70%;">67.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.6.1">
<span class="ltx_p" id="S4.T4.3.10.7.6.1.1"><span class="ltx_text" id="S4.T4.3.10.7.6.1.1.1" style="font-size:70%;">54.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.7.1">
<span class="ltx_p" id="S4.T4.3.10.7.7.1.1"><span class="ltx_text" id="S4.T4.3.10.7.7.1.1.1" style="font-size:70%;">43.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.8.1">
<span class="ltx_p" id="S4.T4.3.10.7.8.1.1"><span class="ltx_text" id="S4.T4.3.10.7.8.1.1.1" style="font-size:70%;">20.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.9.1">
<span class="ltx_p" id="S4.T4.3.10.7.9.1.1"><span class="ltx_text" id="S4.T4.3.10.7.9.1.1.1" style="font-size:70%;">23.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.10.1">
<span class="ltx_p" id="S4.T4.3.10.7.10.1.1"><span class="ltx_text" id="S4.T4.3.10.7.10.1.1.1" style="font-size:70%;">74.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.11.1">
<span class="ltx_p" id="S4.T4.3.10.7.11.1.1"><span class="ltx_text" id="S4.T4.3.10.7.11.1.1.1" style="font-size:70%;">59.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.12.1">
<span class="ltx_p" id="S4.T4.3.10.7.12.1.1"><span class="ltx_text" id="S4.T4.3.10.7.12.1.1.1" style="font-size:70%;">30.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.13.1">
<span class="ltx_p" id="S4.T4.3.10.7.13.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.10.7.13.1.1.1" style="font-size:70%;">62.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.14.1">
<span class="ltx_p" id="S4.T4.3.10.7.14.1.1"><span class="ltx_text" id="S4.T4.3.10.7.14.1.1.1" style="font-size:70%;">31.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.15.1">
<span class="ltx_p" id="S4.T4.3.10.7.15.1.1"><span class="ltx_text" id="S4.T4.3.10.7.15.1.1.1" style="font-size:70%;">44.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.3.10.7.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.10.7.16.1">
<span class="ltx_p" id="S4.T4.3.10.7.16.1.1"><span class="ltx_text" id="S4.T4.3.10.7.16.1.1.1" style="font-size:70%;">26.00</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.11.8.1"><span class="ltx_text" id="S4.T4.3.11.8.1.1" style="font-size:70%;">QwenVL-Max</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.2.1">
<span class="ltx_p" id="S4.T4.3.11.8.2.1.1"><span class="ltx_text" id="S4.T4.3.11.8.2.1.1.1" style="font-size:70%;">40.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.3.1">
<span class="ltx_p" id="S4.T4.3.11.8.3.1.1"><span class="ltx_text" id="S4.T4.3.11.8.3.1.1.1" style="font-size:70%;">51.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.4.1">
<span class="ltx_p" id="S4.T4.3.11.8.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.11.8.4.1.1.1" style="font-size:70%;">56.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.5.1">
<span class="ltx_p" id="S4.T4.3.11.8.5.1.1"><span class="ltx_text" id="S4.T4.3.11.8.5.1.1.1" style="font-size:70%;">58.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.6.1">
<span class="ltx_p" id="S4.T4.3.11.8.6.1.1"><span class="ltx_text" id="S4.T4.3.11.8.6.1.1.1" style="font-size:70%;">4.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.7.1">
<span class="ltx_p" id="S4.T4.3.11.8.7.1.1"><span class="ltx_text" id="S4.T4.3.11.8.7.1.1.1" style="font-size:70%;">38.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.8.1">
<span class="ltx_p" id="S4.T4.3.11.8.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.11.8.8.1.1.1" style="font-size:70%;">28.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.9.1">
<span class="ltx_p" id="S4.T4.3.11.8.9.1.1"><span class="ltx_text" id="S4.T4.3.11.8.9.1.1.1" style="font-size:70%;">23.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.10.1">
<span class="ltx_p" id="S4.T4.3.11.8.10.1.1"><span class="ltx_text" id="S4.T4.3.11.8.10.1.1.1" style="font-size:70%;">69.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.11.1">
<span class="ltx_p" id="S4.T4.3.11.8.11.1.1"><span class="ltx_text" id="S4.T4.3.11.8.11.1.1.1" style="font-size:70%;">48.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.12.1">
<span class="ltx_p" id="S4.T4.3.11.8.12.1.1"><span class="ltx_text" id="S4.T4.3.11.8.12.1.1.1" style="font-size:70%;">31.40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.13.1">
<span class="ltx_p" id="S4.T4.3.11.8.13.1.1"><span class="ltx_text" id="S4.T4.3.11.8.13.1.1.1" style="font-size:70%;">51.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.14.1">
<span class="ltx_p" id="S4.T4.3.11.8.14.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.11.8.14.1.1.1" style="font-size:70%;">36.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.15.1">
<span class="ltx_p" id="S4.T4.3.11.8.15.1.1"><span class="ltx_text" id="S4.T4.3.11.8.15.1.1.1" style="font-size:70%;">43.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.11.8.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.11.8.16.1">
<span class="ltx_p" id="S4.T4.3.11.8.16.1.1"><span class="ltx_text" id="S4.T4.3.11.8.16.1.1.1" style="font-size:70%;">21.33</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.12.9.1"><span class="ltx_text" id="S4.T4.3.12.9.1.1" style="font-size:70%;">Llama-3.2-11B</span></th>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.2"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.3"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.4"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.5"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.6"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.7"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.8"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.9"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.10"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.11"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.12"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.13"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.14"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.15"></td>
<td class="ltx_td ltx_align_justify" id="S4.T4.3.12.9.16"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.1">
<math alttext="\quad+" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="70%" xref="S4.T4.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><plus id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\quad+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:70%;"> SigLIP (So/14)</span>
</th>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.2.1">
<span class="ltx_p" id="S4.T4.1.1.2.1.1"><span class="ltx_text" id="S4.T4.1.1.2.1.1.1" style="font-size:70%;">48.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.3.1">
<span class="ltx_p" id="S4.T4.1.1.3.1.1"><span class="ltx_text" id="S4.T4.1.1.3.1.1.1" style="font-size:70%;">65.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.4.1">
<span class="ltx_p" id="S4.T4.1.1.4.1.1"><span class="ltx_text" id="S4.T4.1.1.4.1.1.1" style="font-size:70%;">55.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.5.1">
<span class="ltx_p" id="S4.T4.1.1.5.1.1"><span class="ltx_text" id="S4.T4.1.1.5.1.1.1" style="font-size:70%;">63.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.6.1">
<span class="ltx_p" id="S4.T4.1.1.6.1.1"><span class="ltx_text" id="S4.T4.1.1.6.1.1.1" style="font-size:70%;">53.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.7.1">
<span class="ltx_p" id="S4.T4.1.1.7.1.1"><span class="ltx_text" id="S4.T4.1.1.7.1.1.1" style="font-size:70%;">66.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.8.1">
<span class="ltx_p" id="S4.T4.1.1.8.1.1"><span class="ltx_text" id="S4.T4.1.1.8.1.1.1" style="font-size:70%;">25.16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.9.1">
<span class="ltx_p" id="S4.T4.1.1.9.1.1"><span class="ltx_text" id="S4.T4.1.1.9.1.1.1" style="font-size:70%;">24.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.10.1">
<span class="ltx_p" id="S4.T4.1.1.10.1.1"><span class="ltx_text" id="S4.T4.1.1.10.1.1.1" style="font-size:70%;">74.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.11.1">
<span class="ltx_p" id="S4.T4.1.1.11.1.1"><span class="ltx_text" id="S4.T4.1.1.11.1.1.1" style="font-size:70%;">57.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.12.1">
<span class="ltx_p" id="S4.T4.1.1.12.1.1"><span class="ltx_text" id="S4.T4.1.1.12.1.1.1" style="font-size:70%;">47.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.13.1">
<span class="ltx_p" id="S4.T4.1.1.13.1.1"><span class="ltx_text" id="S4.T4.1.1.13.1.1.1" style="font-size:70%;">40.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.14.1">
<span class="ltx_p" id="S4.T4.1.1.14.1.1"><span class="ltx_text" id="S4.T4.1.1.14.1.1.1" style="font-size:70%;">34.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.15.1">
<span class="ltx_p" id="S4.T4.1.1.15.1.1"><span class="ltx_text" id="S4.T4.1.1.15.1.1.1" style="font-size:70%;">46.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.1.1.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.16.1">
<span class="ltx_p" id="S4.T4.1.1.16.1.1"><span class="ltx_text" id="S4.T4.1.1.16.1.1.1" style="font-size:70%;">26.03</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.2.1">
<math alttext="\quad+" class="ltx_Math" display="inline" id="S4.T4.2.2.1.m1.1"><semantics id="S4.T4.2.2.1.m1.1a"><mo id="S4.T4.2.2.1.m1.1.1" mathsize="70%" xref="S4.T4.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.1.m1.1b"><plus id="S4.T4.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.1.m1.1c">\quad+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.1.1" style="font-size:70%;"> DINOv2 (L/16)</span>
</th>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.2.1">
<span class="ltx_p" id="S4.T4.2.2.2.1.1"><span class="ltx_text" id="S4.T4.2.2.2.1.1.1" style="font-size:70%;">49.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.3.1">
<span class="ltx_p" id="S4.T4.2.2.3.1.1"><span class="ltx_text" id="S4.T4.2.2.3.1.1.1" style="font-size:70%;">67.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.4.1">
<span class="ltx_p" id="S4.T4.2.2.4.1.1"><span class="ltx_text" id="S4.T4.2.2.4.1.1.1" style="font-size:70%;">53.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.5.1">
<span class="ltx_p" id="S4.T4.2.2.5.1.1"><span class="ltx_text" id="S4.T4.2.2.5.1.1.1" style="font-size:70%;">64.08</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.6.1">
<span class="ltx_p" id="S4.T4.2.2.6.1.1"><span class="ltx_text" id="S4.T4.2.2.6.1.1.1" style="font-size:70%;">56.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.7.1">
<span class="ltx_p" id="S4.T4.2.2.7.1.1"><span class="ltx_text" id="S4.T4.2.2.7.1.1.1" style="font-size:70%;">67.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.8.1">
<span class="ltx_p" id="S4.T4.2.2.8.1.1"><span class="ltx_text" id="S4.T4.2.2.8.1.1.1" style="font-size:70%;">23.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.9.1">
<span class="ltx_p" id="S4.T4.2.2.9.1.1"><span class="ltx_text" id="S4.T4.2.2.9.1.1.1" style="font-size:70%;">27.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.10.1">
<span class="ltx_p" id="S4.T4.2.2.10.1.1"><span class="ltx_text" id="S4.T4.2.2.10.1.1.1" style="font-size:70%;">75.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.11.1">
<span class="ltx_p" id="S4.T4.2.2.11.1.1"><span class="ltx_text" id="S4.T4.2.2.11.1.1.1" style="font-size:70%;">58.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.12.1">
<span class="ltx_p" id="S4.T4.2.2.12.1.1"><span class="ltx_text" id="S4.T4.2.2.12.1.1.1" style="font-size:70%;">46.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.13.1">
<span class="ltx_p" id="S4.T4.2.2.13.1.1"><span class="ltx_text" id="S4.T4.2.2.13.1.1.1" style="font-size:70%;">44.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.14.1">
<span class="ltx_p" id="S4.T4.2.2.14.1.1"><span class="ltx_text" id="S4.T4.2.2.14.1.1.1" style="font-size:70%;">33.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.15.1">
<span class="ltx_p" id="S4.T4.2.2.15.1.1"><span class="ltx_text" id="S4.T4.2.2.15.1.1.1" style="font-size:70%;">48.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.2.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.16.1">
<span class="ltx_p" id="S4.T4.2.2.16.1.1"><span class="ltx_text" id="S4.T4.2.2.16.1.1.1" style="font-size:70%;">28.08</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.3.3.1">
<math alttext="\quad+" class="ltx_Math" display="inline" id="S4.T4.3.3.1.m1.1"><semantics id="S4.T4.3.3.1.m1.1a"><mo id="S4.T4.3.3.1.m1.1.1" mathsize="70%" xref="S4.T4.3.3.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.1.m1.1b"><plus id="S4.T4.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.1.m1.1c">\quad+</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.1.m1.1d">+</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.1.1" style="font-size:70%;"> TULIP (So/14)</span>
</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.2.1">
<span class="ltx_p" id="S4.T4.3.3.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.2.1.1.1" style="font-size:70%;">50.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.3.1">
<span class="ltx_p" id="S4.T4.3.3.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.1.1.1" style="font-size:70%;">68.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.4.1">
<span class="ltx_p" id="S4.T4.3.3.4.1.1"><span class="ltx_text" id="S4.T4.3.3.4.1.1.1" style="font-size:70%;">55.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.5.1">
<span class="ltx_p" id="S4.T4.3.3.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.5.1.1.1" style="font-size:70%;">64.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.6.1">
<span class="ltx_p" id="S4.T4.3.3.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.6.1.1.1" style="font-size:70%;">57.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.7.1">
<span class="ltx_p" id="S4.T4.3.3.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.7.1.1.1" style="font-size:70%;">68.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.8.1">
<span class="ltx_p" id="S4.T4.3.3.8.1.1"><span class="ltx_text" id="S4.T4.3.3.8.1.1.1" style="font-size:70%;">25.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.9.1">
<span class="ltx_p" id="S4.T4.3.3.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.9.1.1.1" style="font-size:70%;">29.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.10.1">
<span class="ltx_p" id="S4.T4.3.3.10.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.10.1.1.1" style="font-size:70%;">76.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.11.1">
<span class="ltx_p" id="S4.T4.3.3.11.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.11.1.1.1" style="font-size:70%;">60.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.12.1">
<span class="ltx_p" id="S4.T4.3.3.12.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.12.1.1.1" style="font-size:70%;">48.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.13.1">
<span class="ltx_p" id="S4.T4.3.3.13.1.1"><span class="ltx_text" id="S4.T4.3.3.13.1.1.1" style="font-size:70%;">44.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.14.1">
<span class="ltx_p" id="S4.T4.3.3.14.1.1"><span class="ltx_text" id="S4.T4.3.3.14.1.1.1" style="font-size:70%;">35.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.15.1">
<span class="ltx_p" id="S4.T4.3.3.15.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.15.1.1.1" style="font-size:70%;">49.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.3.3.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.16.1">
<span class="ltx_p" id="S4.T4.3.3.16.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.16.1.1.1" style="font-size:70%;">28.38</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the performance of various models on the BLINK benchmark, a test designed to evaluate vision and language understanding.  The benchmark includes several sub-tasks categorized by the type of visual reasoning involved (e.g., counting, depth perception, spatial reasoning).  The results show TULIP's performance compared to other models (including GPT-4) on each subtask, highlighting its strengths in vision-centric tasks.  Overall accuracy and individual task scores are provided to show the model's proficiency in different types of visual understanding.
> <details>
> <summary>read the caption</summary>
> Table 4: Results (% accuracy) on the BLINK benchmark. TULIP demonstrates strong results across all categories, particularly excelling in vision-driven tasks, outperforming GPT-4o in some cases.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.4.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="S4.T5.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.1.1.1.1">
<span class="ltx_p" id="S4.T5.4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.1.1.1.1" style="font-size:90%;">Model</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.2.1" style="font-size:90%;">MMVP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.1.3.1" style="font-size:90%;">LLaVA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.2.2">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T5.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.2.2.1.1">
<span class="ltx_p" id="S4.T5.4.2.2.1.1.1"><span class="ltx_text" id="S4.T5.4.2.2.1.1.1.1" style="font-size:90%;">DINOv2 (ViT-L/16)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.2.2"><span class="ltx_text" id="S4.T5.4.2.2.2.1" style="font-size:90%;">16.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.2.3"><span class="ltx_text" id="S4.T5.4.2.2.3.1" style="font-size:90%;">68.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.3.3">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T5.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.3.3.1.1">
<span class="ltx_p" id="S4.T5.4.3.3.1.1.1"><span class="ltx_text" id="S4.T5.4.3.3.1.1.1.1" style="font-size:90%;">OpenAI CLIP (ViT-B/16)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.3.3.2"><span class="ltx_text" id="S4.T5.4.3.3.2.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.3.3.3"><span class="ltx_text" id="S4.T5.4.3.3.3.1" style="font-size:90%;">80.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T5.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.4.4.1.1">
<span class="ltx_p" id="S4.T5.4.4.4.1.1.1"><span class="ltx_text" id="S4.T5.4.4.4.1.1.1.1" style="font-size:90%;">SigLIP (Vit-So/14)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.2"><span class="ltx_text" id="S4.T5.4.4.4.2.1" style="font-size:90%;">5.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.3"><span class="ltx_text" id="S4.T5.4.4.4.3.1" style="font-size:90%;">81.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.5.5">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T5.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.5.5.1.1">
<span class="ltx_p" id="S4.T5.4.5.5.1.1.1"><span class="ltx_text" id="S4.T5.4.5.5.1.1.1.1" style="font-size:90%;">+I/I &amp; T/T Constrastive Learning</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.5.2"><span class="ltx_text" id="S4.T5.4.5.5.2.1" style="font-size:90%;">17.4 (+11.5)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.5.5.3"><span class="ltx_text" id="S4.T5.4.5.5.3.1" style="font-size:90%;">82.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.6.6">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T5.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.6.6.1.1">
<span class="ltx_p" id="S4.T5.4.6.6.1.1.1"><span class="ltx_text" id="S4.T5.4.6.6.1.1.1.1" style="font-size:90%;">+ Reconstruction</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.6.6.2"><span class="ltx_text" id="S4.T5.4.6.6.2.1" style="font-size:90%;">18.2 (+1.2)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.6.6.3"><span class="ltx_text" id="S4.T5.4.6.6.3.1" style="font-size:90%;">82.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.7.7">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T5.4.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.7.7.1.1">
<span class="ltx_p" id="S4.T5.4.7.7.1.1.1"><span class="ltx_text" id="S4.T5.4.7.7.1.1.1.1" style="font-size:90%;">+ GeCo (</span><span class="ltx_text ltx_font_bold" id="S4.T5.4.7.7.1.1.1.2" style="font-size:90%;">TULIP</span><span class="ltx_text" id="S4.T5.4.7.7.1.1.1.3" style="font-size:90%;">)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.7.2"><span class="ltx_text" id="S4.T5.4.7.7.2.1" style="font-size:90%;">20.3 (+2.1)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.7.3"><span class="ltx_text" id="S4.T5.4.7.7.3.1" style="font-size:90%;">81.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.8.8">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T5.4.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.8.8.1.1">
<span class="ltx_p" id="S4.T5.4.8.8.1.1.1"><span class="ltx_text" id="S4.T5.4.8.8.1.1.1.1" style="font-size:90%;">SigLIP (Vit-B/14)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.8.2"><span class="ltx_text" id="S4.T5.4.8.8.2.1" style="font-size:90%;">5.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.8.8.3"><span class="ltx_text" id="S4.T5.4.8.8.3.1" style="font-size:90%;">80.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.9.9">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T5.4.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.9.9.1.1">
<span class="ltx_p" id="S4.T5.4.9.9.1.1.1"><span class="ltx_text" id="S4.T5.4.9.9.1.1.1.1" style="font-size:90%;">+I/I &amp; T/T Constrastive Learning</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.9.9.2"><span class="ltx_text" id="S4.T5.4.9.9.2.1" style="font-size:90%;">14.4 (+9.2)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.9.9.3"><span class="ltx_text" id="S4.T5.4.9.9.3.1" style="font-size:90%;">81.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.10.10">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T5.4.10.10.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.10.10.1.1">
<span class="ltx_p" id="S4.T5.4.10.10.1.1.1"><span class="ltx_text" id="S4.T5.4.10.10.1.1.1.1" style="font-size:90%;">+ Reconstruction</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T5.4.10.10.2"><span class="ltx_text" id="S4.T5.4.10.10.2.1" style="font-size:90%;">15.8 (+1.4)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.10.10.3"><span class="ltx_text" id="S4.T5.4.10.10.3.1" style="font-size:90%;">80.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.11.11">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="S4.T5.4.11.11.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.4.11.11.1.1">
<span class="ltx_p" id="S4.T5.4.11.11.1.1.1"><span class="ltx_text" id="S4.T5.4.11.11.1.1.1.1" style="font-size:90%;">+ GeCo (</span><span class="ltx_text ltx_font_bold" id="S4.T5.4.11.11.1.1.1.2" style="font-size:90%;">TULIP</span><span class="ltx_text" id="S4.T5.4.11.11.1.1.1.3" style="font-size:90%;">)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.11.11.2"><span class="ltx_text" id="S4.T5.4.11.11.2.1" style="font-size:90%;">17.1 (+1.4)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.11.11.3"><span class="ltx_text" id="S4.T5.4.11.11.3.1" style="font-size:90%;">81.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning the Llama-3.2 11B language model with different vision models on two benchmark datasets: MMVP and LLaVA.  The MMVP benchmark focuses on evaluating the quality of visual representations, while LLaVA assesses the overall performance of the combined vision-language model. The table highlights how different vision models (DINOv2, CLIP, SigLIP, and TULIP) impact the performance of the language model on both benchmarks.  It shows that while the LLaVA performance may be constrained by the limitations of the language model architecture, MMVP scores directly reflect the visual representation quality provided by each vision model.  The table also includes ablation studies showing the effects of adding contrastive learning, reconstruction loss, and generative augmentation techniques to TULIP.
> <details>
> <summary>read the caption</summary>
> Table 5: Llama-3.2 11B finetuned with several vision models on the MMVP and LLaVA benchmarks. While the LLaVA bench performance is limited by the LLM/training architecture, the MMVP benchmark shows reliance on visual representation quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T1.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T1.4.5.1.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Hyperparameter</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="A5.T1.4.5.1.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.5.1.2.1">
<span class="ltx_p" id="A5.T1.4.5.1.2.1.1">ViT-G/16</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="A5.T1.4.5.1.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.5.1.3.1">
<span class="ltx_p" id="A5.T1.4.5.1.3.1.1">ViT-SO400M</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="A5.T1.4.5.1.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.5.1.4.1">
<span class="ltx_p" id="A5.T1.4.5.1.4.1.1">ViT-H-14</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="A5.T1.4.5.1.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.5.1.5.1">
<span class="ltx_p" id="A5.T1.4.5.1.5.1.1">ViT-B-16</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T1.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T1.4.6.1.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Embed Dim</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T1.4.6.1.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.6.1.2.1">
<span class="ltx_p" id="A5.T1.4.6.1.2.1.1">1536</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T1.4.6.1.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.6.1.3.1">
<span class="ltx_p" id="A5.T1.4.6.1.3.1.1">1152</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T1.4.6.1.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.6.1.4.1">
<span class="ltx_p" id="A5.T1.4.6.1.4.1.1">1152</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A5.T1.4.6.1.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.6.1.5.1">
<span class="ltx_p" id="A5.T1.4.6.1.5.1.1">768</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.7.2.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Init Logit Bias</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.7.2.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.7.2.2.1">
<span class="ltx_p" id="A5.T1.4.7.2.2.1.1">-10</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.7.2.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.7.2.3.1">
<span class="ltx_p" id="A5.T1.4.7.2.3.1.1">-10</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.7.2.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.7.2.4.1">
<span class="ltx_p" id="A5.T1.4.7.2.4.1.1">-10</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.7.2.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.7.2.5.1">
<span class="ltx_p" id="A5.T1.4.7.2.5.1.1">-10</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.8.3.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Image Size</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.8.3.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.8.3.2.1">
<span class="ltx_p" id="A5.T1.4.8.3.2.1.1">384</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.8.3.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.8.3.3.1">
<span class="ltx_p" id="A5.T1.4.8.3.3.1.1">384</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.8.3.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.8.3.4.1">
<span class="ltx_p" id="A5.T1.4.8.3.4.1.1">224</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.8.3.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.8.3.5.1">
<span class="ltx_p" id="A5.T1.4.8.3.5.1.1">224</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.9.4.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Patch Size</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.9.4.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.9.4.2.1">
<span class="ltx_p" id="A5.T1.4.9.4.2.1.1">16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.9.4.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.9.4.3.1">
<span class="ltx_p" id="A5.T1.4.9.4.3.1.1">14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.9.4.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.9.4.4.1">
<span class="ltx_p" id="A5.T1.4.9.4.4.1.1">14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.9.4.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.9.4.5.1">
<span class="ltx_p" id="A5.T1.4.9.4.5.1.1">16</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.10.5.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Layers (Vision)</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.10.5.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.10.5.2.1">
<span class="ltx_p" id="A5.T1.4.10.5.2.1.1">43</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.10.5.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.10.5.3.1">
<span class="ltx_p" id="A5.T1.4.10.5.3.1.1">27</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.10.5.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.10.5.4.1">
<span class="ltx_p" id="A5.T1.4.10.5.4.1.1">32</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.10.5.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.10.5.5.1">
<span class="ltx_p" id="A5.T1.4.10.5.5.1.1">12</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.11.6.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Width (Vision)</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.11.6.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.11.6.2.1">
<span class="ltx_p" id="A5.T1.4.11.6.2.1.1">1536768</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.11.6.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.11.6.3.1">
<span class="ltx_p" id="A5.T1.4.11.6.3.1.1">1152768</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.11.6.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.11.6.4.1">
<span class="ltx_p" id="A5.T1.4.11.6.4.1.1">1280</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.11.6.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.11.6.5.1">
<span class="ltx_p" id="A5.T1.4.11.6.5.1.1">768</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.12.7.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Head Width (Vision)</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.12.7.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.12.7.2.1">
<span class="ltx_p" id="A5.T1.4.12.7.2.1.1">64</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.12.7.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.12.7.3.1">
<span class="ltx_p" id="A5.T1.4.12.7.3.1.1">64</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.12.7.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.12.7.4.1">
<span class="ltx_p" id="A5.T1.4.12.7.4.1.1">80</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.12.7.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.12.7.5.1">
<span class="ltx_p" id="A5.T1.4.12.7.5.1.1">64</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.13.8.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">MLP Ratio</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.13.8.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.13.8.2.1">
<span class="ltx_p" id="A5.T1.4.13.8.2.1.1">3.7362</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.13.8.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.13.8.3.1">
<span class="ltx_p" id="A5.T1.4.13.8.3.1.1">3.7362</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.13.8.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.13.8.4.1">
<span class="ltx_p" id="A5.T1.4.13.8.4.1.1">3.7362</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.13.8.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.13.8.5.1">
<span class="ltx_p" id="A5.T1.4.13.8.5.1.1">4.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.14.9.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Pooling</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.14.9.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.14.9.2.1">
<span class="ltx_p" id="A5.T1.4.14.9.2.1.1">map</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.14.9.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.14.9.3.1">
<span class="ltx_p" id="A5.T1.4.14.9.3.1.1">map</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.14.9.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.14.9.4.1">
<span class="ltx_p" id="A5.T1.4.14.9.4.1.1">tok</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.14.9.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.14.9.5.1">
<span class="ltx_p" id="A5.T1.4.14.9.5.1.1">map</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.15.10.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Projection</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.15.10.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.15.10.2.1">
<span class="ltx_p" id="A5.T1.4.15.10.2.1.1">none</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.15.10.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.15.10.3.1">
<span class="ltx_p" id="A5.T1.4.15.10.3.1.1">none</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.15.10.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.15.10.4.1">
<span class="ltx_p" id="A5.T1.4.15.10.4.1.1">linear</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.15.10.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.15.10.5.1">
<span class="ltx_p" id="A5.T1.4.15.10.5.1.1">none</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.16.11.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Context Length</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.16.11.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.16.11.2.1">
<span class="ltx_p" id="A5.T1.4.16.11.2.1.1">70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.16.11.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.16.11.3.1">
<span class="ltx_p" id="A5.T1.4.16.11.3.1.1">70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.16.11.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.16.11.4.1">
<span class="ltx_p" id="A5.T1.4.16.11.4.1.1">70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.16.11.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.16.11.5.1">
<span class="ltx_p" id="A5.T1.4.16.11.5.1.1">70</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.17.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.17.12.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Vocab Size</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.17.12.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.17.12.2.1">
<span class="ltx_p" id="A5.T1.4.17.12.2.1.1">109871</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.17.12.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.17.12.3.1">
<span class="ltx_p" id="A5.T1.4.17.12.3.1.1">109871</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.17.12.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.17.12.4.1">
<span class="ltx_p" id="A5.T1.4.17.12.4.1.1">109871</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.17.12.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.17.12.5.1">
<span class="ltx_p" id="A5.T1.4.17.12.5.1.1">109871</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.18.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.18.13.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Tokenizer</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.18.13.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.18.13.2.1">
<span class="ltx_p" id="A5.T1.4.18.13.2.1.1">tulip-tokenizer</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.18.13.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.18.13.3.1">
<span class="ltx_p" id="A5.T1.4.18.13.3.1.1">tulip-tokenizer</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.18.13.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.18.13.4.1">
<span class="ltx_p" id="A5.T1.4.18.13.4.1.1">tulip-tokenizer</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.18.13.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.18.13.5.1">
<span class="ltx_p" id="A5.T1.4.18.13.5.1.1">tulip-tokenizer</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.19.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.19.14.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Width (Text)</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.19.14.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.19.14.2.1">
<span class="ltx_p" id="A5.T1.4.19.14.2.1.1">1152</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.19.14.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.19.14.3.1">
<span class="ltx_p" id="A5.T1.4.19.14.3.1.1">1152</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.19.14.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.19.14.4.1">
<span class="ltx_p" id="A5.T1.4.19.14.4.1.1">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.19.14.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.19.14.5.1">
<span class="ltx_p" id="A5.T1.4.19.14.5.1.1">768</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.20.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.20.15.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Heads</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.20.15.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.20.15.2.1">
<span class="ltx_p" id="A5.T1.4.20.15.2.1.1">16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.20.15.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.20.15.3.1">
<span class="ltx_p" id="A5.T1.4.20.15.3.1.1">16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.20.15.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.20.15.4.1">
<span class="ltx_p" id="A5.T1.4.20.15.4.1.1">16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.20.15.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.20.15.5.1">
<span class="ltx_p" id="A5.T1.4.20.15.5.1.1">12</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.21.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.21.16.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Layers (Text)</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.21.16.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.21.16.2.1">
<span class="ltx_p" id="A5.T1.4.21.16.2.1.1">27</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.21.16.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.21.16.3.1">
<span class="ltx_p" id="A5.T1.4.21.16.3.1.1">27</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.21.16.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.21.16.4.1">
<span class="ltx_p" id="A5.T1.4.21.16.4.1.1">24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.21.16.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.21.16.5.1">
<span class="ltx_p" id="A5.T1.4.21.16.5.1.1">12</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.22.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.22.17.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">No Causal Mask</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.22.17.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.22.17.2.1">
<span class="ltx_p" id="A5.T1.4.22.17.2.1.1">True</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.22.17.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.22.17.3.1">
<span class="ltx_p" id="A5.T1.4.22.17.3.1.1">True</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.22.17.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.22.17.4.1">
<span class="ltx_p" id="A5.T1.4.22.17.4.1.1">True</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.22.17.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.22.17.5.1">
<span class="ltx_p" id="A5.T1.4.22.17.5.1.1">True</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.23.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.23.18.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Projection Bias</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.23.18.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.23.18.2.1">
<span class="ltx_p" id="A5.T1.4.23.18.2.1.1">True</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.23.18.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.23.18.3.1">
<span class="ltx_p" id="A5.T1.4.23.18.3.1.1">True</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.23.18.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.23.18.4.1">
<span class="ltx_p" id="A5.T1.4.23.18.4.1.1">True</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.23.18.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.23.18.5.1">
<span class="ltx_p" id="A5.T1.4.23.18.5.1.1">True</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.24.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.24.19.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Pool Type</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.24.19.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.24.19.2.1">
<span class="ltx_p" id="A5.T1.4.24.19.2.1.1">last</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.24.19.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.24.19.3.1">
<span class="ltx_p" id="A5.T1.4.24.19.3.1.1">last</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.24.19.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.24.19.4.1">
<span class="ltx_p" id="A5.T1.4.24.19.4.1.1">last</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.24.19.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.24.19.5.1">
<span class="ltx_p" id="A5.T1.4.24.19.5.1.1">last</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.4.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">Norm Eps</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.1.1.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.1.1.1.1">
<span class="ltx_p" id="A5.T1.1.1.1.1.1"><math alttext="10^{-6}" class="ltx_Math" display="inline" id="A5.T1.1.1.1.1.1.m1.1"><semantics id="A5.T1.1.1.1.1.1.m1.1a"><msup id="A5.T1.1.1.1.1.1.m1.1.1" xref="A5.T1.1.1.1.1.1.m1.1.1.cmml"><mn id="A5.T1.1.1.1.1.1.m1.1.1.2" xref="A5.T1.1.1.1.1.1.m1.1.1.2.cmml">10</mn><mrow id="A5.T1.1.1.1.1.1.m1.1.1.3" xref="A5.T1.1.1.1.1.1.m1.1.1.3.cmml"><mo id="A5.T1.1.1.1.1.1.m1.1.1.3a" xref="A5.T1.1.1.1.1.1.m1.1.1.3.cmml">−</mo><mn id="A5.T1.1.1.1.1.1.m1.1.1.3.2" xref="A5.T1.1.1.1.1.1.m1.1.1.3.2.cmml">6</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="A5.T1.1.1.1.1.1.m1.1b"><apply id="A5.T1.1.1.1.1.1.m1.1.1.cmml" xref="A5.T1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A5.T1.1.1.1.1.1.m1.1.1.1.cmml" xref="A5.T1.1.1.1.1.1.m1.1.1">superscript</csymbol><cn id="A5.T1.1.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A5.T1.1.1.1.1.1.m1.1.1.2">10</cn><apply id="A5.T1.1.1.1.1.1.m1.1.1.3.cmml" xref="A5.T1.1.1.1.1.1.m1.1.1.3"><minus id="A5.T1.1.1.1.1.1.m1.1.1.3.1.cmml" xref="A5.T1.1.1.1.1.1.m1.1.1.3"></minus><cn id="A5.T1.1.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A5.T1.1.1.1.1.1.m1.1.1.3.2">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T1.1.1.1.1.1.m1.1c">10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A5.T1.1.1.1.1.1.m1.1d">10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.2.2.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.2.2.2.1">
<span class="ltx_p" id="A5.T1.2.2.2.1.1"><math alttext="10^{-6}" class="ltx_Math" display="inline" id="A5.T1.2.2.2.1.1.m1.1"><semantics id="A5.T1.2.2.2.1.1.m1.1a"><msup id="A5.T1.2.2.2.1.1.m1.1.1" xref="A5.T1.2.2.2.1.1.m1.1.1.cmml"><mn id="A5.T1.2.2.2.1.1.m1.1.1.2" xref="A5.T1.2.2.2.1.1.m1.1.1.2.cmml">10</mn><mrow id="A5.T1.2.2.2.1.1.m1.1.1.3" xref="A5.T1.2.2.2.1.1.m1.1.1.3.cmml"><mo id="A5.T1.2.2.2.1.1.m1.1.1.3a" xref="A5.T1.2.2.2.1.1.m1.1.1.3.cmml">−</mo><mn id="A5.T1.2.2.2.1.1.m1.1.1.3.2" xref="A5.T1.2.2.2.1.1.m1.1.1.3.2.cmml">6</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="A5.T1.2.2.2.1.1.m1.1b"><apply id="A5.T1.2.2.2.1.1.m1.1.1.cmml" xref="A5.T1.2.2.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A5.T1.2.2.2.1.1.m1.1.1.1.cmml" xref="A5.T1.2.2.2.1.1.m1.1.1">superscript</csymbol><cn id="A5.T1.2.2.2.1.1.m1.1.1.2.cmml" type="integer" xref="A5.T1.2.2.2.1.1.m1.1.1.2">10</cn><apply id="A5.T1.2.2.2.1.1.m1.1.1.3.cmml" xref="A5.T1.2.2.2.1.1.m1.1.1.3"><minus id="A5.T1.2.2.2.1.1.m1.1.1.3.1.cmml" xref="A5.T1.2.2.2.1.1.m1.1.1.3"></minus><cn id="A5.T1.2.2.2.1.1.m1.1.1.3.2.cmml" type="integer" xref="A5.T1.2.2.2.1.1.m1.1.1.3.2">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T1.2.2.2.1.1.m1.1c">10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A5.T1.2.2.2.1.1.m1.1d">10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.3.3.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.3.3.3.1">
<span class="ltx_p" id="A5.T1.3.3.3.1.1"><math alttext="10^{-6}" class="ltx_Math" display="inline" id="A5.T1.3.3.3.1.1.m1.1"><semantics id="A5.T1.3.3.3.1.1.m1.1a"><msup id="A5.T1.3.3.3.1.1.m1.1.1" xref="A5.T1.3.3.3.1.1.m1.1.1.cmml"><mn id="A5.T1.3.3.3.1.1.m1.1.1.2" xref="A5.T1.3.3.3.1.1.m1.1.1.2.cmml">10</mn><mrow id="A5.T1.3.3.3.1.1.m1.1.1.3" xref="A5.T1.3.3.3.1.1.m1.1.1.3.cmml"><mo id="A5.T1.3.3.3.1.1.m1.1.1.3a" xref="A5.T1.3.3.3.1.1.m1.1.1.3.cmml">−</mo><mn id="A5.T1.3.3.3.1.1.m1.1.1.3.2" xref="A5.T1.3.3.3.1.1.m1.1.1.3.2.cmml">6</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="A5.T1.3.3.3.1.1.m1.1b"><apply id="A5.T1.3.3.3.1.1.m1.1.1.cmml" xref="A5.T1.3.3.3.1.1.m1.1.1"><csymbol cd="ambiguous" id="A5.T1.3.3.3.1.1.m1.1.1.1.cmml" xref="A5.T1.3.3.3.1.1.m1.1.1">superscript</csymbol><cn id="A5.T1.3.3.3.1.1.m1.1.1.2.cmml" type="integer" xref="A5.T1.3.3.3.1.1.m1.1.1.2">10</cn><apply id="A5.T1.3.3.3.1.1.m1.1.1.3.cmml" xref="A5.T1.3.3.3.1.1.m1.1.1.3"><minus id="A5.T1.3.3.3.1.1.m1.1.1.3.1.cmml" xref="A5.T1.3.3.3.1.1.m1.1.1.3"></minus><cn id="A5.T1.3.3.3.1.1.m1.1.1.3.2.cmml" type="integer" xref="A5.T1.3.3.3.1.1.m1.1.1.3.2">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T1.3.3.3.1.1.m1.1c">10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A5.T1.3.3.3.1.1.m1.1d">10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.4.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.4.4.1">
<span class="ltx_p" id="A5.T1.4.4.4.1.1"><math alttext="10^{-6}" class="ltx_Math" display="inline" id="A5.T1.4.4.4.1.1.m1.1"><semantics id="A5.T1.4.4.4.1.1.m1.1a"><msup id="A5.T1.4.4.4.1.1.m1.1.1" xref="A5.T1.4.4.4.1.1.m1.1.1.cmml"><mn id="A5.T1.4.4.4.1.1.m1.1.1.2" xref="A5.T1.4.4.4.1.1.m1.1.1.2.cmml">10</mn><mrow id="A5.T1.4.4.4.1.1.m1.1.1.3" xref="A5.T1.4.4.4.1.1.m1.1.1.3.cmml"><mo id="A5.T1.4.4.4.1.1.m1.1.1.3a" xref="A5.T1.4.4.4.1.1.m1.1.1.3.cmml">−</mo><mn id="A5.T1.4.4.4.1.1.m1.1.1.3.2" xref="A5.T1.4.4.4.1.1.m1.1.1.3.2.cmml">6</mn></mrow></msup><annotation-xml encoding="MathML-Content" id="A5.T1.4.4.4.1.1.m1.1b"><apply id="A5.T1.4.4.4.1.1.m1.1.1.cmml" xref="A5.T1.4.4.4.1.1.m1.1.1"><csymbol cd="ambiguous" id="A5.T1.4.4.4.1.1.m1.1.1.1.cmml" xref="A5.T1.4.4.4.1.1.m1.1.1">superscript</csymbol><cn id="A5.T1.4.4.4.1.1.m1.1.1.2.cmml" type="integer" xref="A5.T1.4.4.4.1.1.m1.1.1.2">10</cn><apply id="A5.T1.4.4.4.1.1.m1.1.1.3.cmml" xref="A5.T1.4.4.4.1.1.m1.1.1.3"><minus id="A5.T1.4.4.4.1.1.m1.1.1.3.1.cmml" xref="A5.T1.4.4.4.1.1.m1.1.1.3"></minus><cn id="A5.T1.4.4.4.1.1.m1.1.1.3.2.cmml" type="integer" xref="A5.T1.4.4.4.1.1.m1.1.1.3.2">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T1.4.4.4.1.1.m1.1c">10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A5.T1.4.4.4.1.1.m1.1d">10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.25.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.25.20.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Activation Approx.</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.25.20.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.25.20.2.1">
<span class="ltx_p" id="A5.T1.4.25.20.2.1.1">tanh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.25.20.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.25.20.3.1">
<span class="ltx_p" id="A5.T1.4.25.20.3.1.1">tanh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.25.20.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.25.20.4.1">
<span class="ltx_p" id="A5.T1.4.25.20.4.1.1">tanh</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.25.20.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.25.20.5.1">
<span class="ltx_p" id="A5.T1.4.25.20.5.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.26.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.26.21.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Attentional Pool</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.26.21.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.26.21.2.1">
<span class="ltx_p" id="A5.T1.4.26.21.2.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.26.21.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.26.21.3.1">
<span class="ltx_p" id="A5.T1.4.26.21.3.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.26.21.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.26.21.4.1">
<span class="ltx_p" id="A5.T1.4.26.21.4.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.26.21.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.26.21.5.1">
<span class="ltx_p" id="A5.T1.4.26.21.5.1.1">False</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.27.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.27.22.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Attn Pooler Queries</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.27.22.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.27.22.2.1">
<span class="ltx_p" id="A5.T1.4.27.22.2.1.1">256</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.27.22.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.27.22.3.1">
<span class="ltx_p" id="A5.T1.4.27.22.3.1.1">256</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.27.22.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.27.22.4.1">
<span class="ltx_p" id="A5.T1.4.27.22.4.1.1">256</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.27.22.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.27.22.5.1">
<span class="ltx_p" id="A5.T1.4.27.22.5.1.1">256</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.28.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.28.23.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Attn Pooler Heads</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.28.23.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.28.23.2.1">
<span class="ltx_p" id="A5.T1.4.28.23.2.1.1">8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.28.23.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.28.23.3.1">
<span class="ltx_p" id="A5.T1.4.28.23.3.1.1">8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.28.23.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.28.23.4.1">
<span class="ltx_p" id="A5.T1.4.28.23.4.1.1">8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.28.23.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.28.23.5.1">
<span class="ltx_p" id="A5.T1.4.28.23.5.1.1">8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.29.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.29.24.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Pos Embed Type</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.29.24.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.29.24.2.1">
<span class="ltx_p" id="A5.T1.4.29.24.2.1.1">learnable</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.29.24.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.29.24.3.1">
<span class="ltx_p" id="A5.T1.4.29.24.3.1.1">learnable</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.29.24.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.29.24.4.1">
<span class="ltx_p" id="A5.T1.4.29.24.4.1.1">learnable</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.29.24.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.29.24.5.1">
<span class="ltx_p" id="A5.T1.4.29.24.5.1.1">learnable</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.30.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.30.25.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Final LN After Pool</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.30.25.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.30.25.2.1">
<span class="ltx_p" id="A5.T1.4.30.25.2.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.30.25.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.30.25.3.1">
<span class="ltx_p" id="A5.T1.4.30.25.3.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.30.25.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.30.25.4.1">
<span class="ltx_p" id="A5.T1.4.30.25.4.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.30.25.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.30.25.5.1">
<span class="ltx_p" id="A5.T1.4.30.25.5.1.1">False</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.31.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.31.26.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Output Tokens</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.31.26.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.31.26.2.1">
<span class="ltx_p" id="A5.T1.4.31.26.2.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.31.26.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.31.26.3.1">
<span class="ltx_p" id="A5.T1.4.31.26.3.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.31.26.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.31.26.4.1">
<span class="ltx_p" id="A5.T1.4.31.26.4.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.31.26.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.31.26.5.1">
<span class="ltx_p" id="A5.T1.4.31.26.5.1.1">False</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.32.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.32.27.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Timm Pool</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.32.27.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.32.27.2.1">
<span class="ltx_p" id="A5.T1.4.32.27.2.1.1">map</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.32.27.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.32.27.3.1">
<span class="ltx_p" id="A5.T1.4.32.27.3.1.1">map</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.32.27.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.32.27.4.1">
<span class="ltx_p" id="A5.T1.4.32.27.4.1.1">avg</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.32.27.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.32.27.5.1">
<span class="ltx_p" id="A5.T1.4.32.27.5.1.1">map</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.33.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.33.28.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Timm Proj</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.33.28.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.33.28.2.1">
<span class="ltx_p" id="A5.T1.4.33.28.2.1.1">none</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.33.28.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.33.28.3.1">
<span class="ltx_p" id="A5.T1.4.33.28.3.1.1">none</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.33.28.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.33.28.4.1">
<span class="ltx_p" id="A5.T1.4.33.28.4.1.1">linear</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.33.28.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.33.28.5.1">
<span class="ltx_p" id="A5.T1.4.33.28.5.1.1">none</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.34.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.34.29.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Timm Proj Bias</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.34.29.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.34.29.2.1">
<span class="ltx_p" id="A5.T1.4.34.29.2.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.34.29.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.34.29.3.1">
<span class="ltx_p" id="A5.T1.4.34.29.3.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.34.29.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.34.29.4.1">
<span class="ltx_p" id="A5.T1.4.34.29.4.1.1">False</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.34.29.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.34.29.5.1">
<span class="ltx_p" id="A5.T1.4.34.29.5.1.1">False</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.35.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T1.4.35.30.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Timm Drop</th>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.35.30.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.35.30.2.1">
<span class="ltx_p" id="A5.T1.4.35.30.2.1.1">0.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.35.30.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.35.30.3.1">
<span class="ltx_p" id="A5.T1.4.35.30.3.1.1">0.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.35.30.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.35.30.4.1">
<span class="ltx_p" id="A5.T1.4.35.30.4.1.1">0.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A5.T1.4.35.30.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.35.30.5.1">
<span class="ltx_p" id="A5.T1.4.35.30.5.1.1">0.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T1.4.36.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T1.4.36.31.1" style="padding-top:1.1pt;padding-bottom:1.1pt;">Timm Drop Path</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T1.4.36.31.2" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.36.31.2.1">
<span class="ltx_p" id="A5.T1.4.36.31.2.1.1">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T1.4.36.31.3" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.36.31.3.1">
<span class="ltx_p" id="A5.T1.4.36.31.3.1.1">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T1.4.36.31.4" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.36.31.4.1">
<span class="ltx_p" id="A5.T1.4.36.31.4.1.1">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A5.T1.4.36.31.5" style="padding-top:1.1pt;padding-bottom:1.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T1.4.36.31.5.1">
<span class="ltx_p" id="A5.T1.4.36.31.5.1.1">None</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for the Vision Transformer (ViT) models within different versions of the TULIP architecture.  It compares various settings across four ViT configurations (ViT-G/16, ViT-SO400M, ViT-H-14, and ViT-B-16), showing differences in embedding dimensions, image and patch sizes, the number of layers, attention head width, MLP ratio, and other key parameters of the model. This allows for a detailed comparison of the architectural choices made across different TULIP variants.
> <details>
> <summary>read the caption</summary>
> Table E.1: Comparison of Vision Transformer (ViT) Model Hyperparameters for different TULIP variants.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15485/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15485/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}