---
title: "PhotoDoodle: Learning Artistic Image Editing from Few-Shot Pairwise Data"
summary: "PhotoDoodle: Mimicking artistic image editing with personalized decorative elements through learning from few-shot pairwise data."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 National University of Singapore",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14397 {{< /keyword >}}
{{< keyword icon="writer" >}} Shijie Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14397" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14397" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14397/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Photo Doodling involves artists adding decorative elements to enhance photographs. However, automating this process is challenging due to the need for seamless integration of elements, preservation of background consistency, and efficient style acquisition from limited data. Prevailing image editing methods fall short due to their focus on global style transfer or pixel-perfect user-defined masks, creating a gap in addressing the challenges. 



To address these issues, this paper introduces **PhotoDoodle**, an image editing framework designed to **learn artistic image editing from few-shot examples**. This method employs a two-stage training pipeline with EditLoRA and introduces a **PE Cloning strategy** to **enforce strict background consistency** through implicit feature alignment, facilitating precise and style-conscious decorative generation. Additionally, the authors provide a dedicated photo-doodle dataset. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces PhotoDoodle, a novel framework for artistic image editing, enabling the overlay of decorative elements on photographs with seamless integration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Employs a two-stage training strategy involving OmniEditor pre-training and EditLoRA fine-tuning to capture distinct editing styles from limited data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Releases a PhotoDoodle dataset with six high-quality styles, establishing a benchmark for customized image editing research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
PhotoDoodle enables artistic photo editing via few-shot learning, offering a new approach to personalized image manipulation and style transfer. It advances customized image creation and opens new avenues for artistic expression and automation.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14397/x2.png)

> 🔼 Figure 1 showcases PhotoDoodle's ability to generate artistic photo edits.  It demonstrates the system's capacity to add decorative elements to photographs, mimicking the styles and techniques of human artists.  Crucially, the examples highlight PhotoDoodle's capability to seamlessly integrate these additions into the original photo, maintaining a consistent appearance between the before and after images. The edits range in style from adding cartoon elements and magical effects to incorporating hand-drawn lines and star decorations, illustrating the system's versatility.
> <details>
> <summary>read the caption</summary>
> Figure 1: PhotoDoodle can mimic the styles and techniques of human artists in creating photo doodles, adding decorative elements to photos while maintaining perfect consistency between the pre- and post-edit states.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.3.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.3.4.1">
<span class="ltx_p" id="S4.T1.3.3.4.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.4.1.1.1" style="font-size:80%;">Methods</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.1" style="width:42.7pt;"><math alttext="CLIP\ Score" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.2.cmml">C</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.3.cmml">L</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1a" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.4" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.4.cmml">I</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1b" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.5" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.5.cmml">P</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1c" lspace="0.400em" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.6" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.6.cmml">S</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1d" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.7" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.7.cmml">c</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1e" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.8" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.8.cmml">o</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1f" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.9" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.9.cmml">r</mi><mo id="S4.T1.1.1.1.1.1.m1.1.1.1g" xref="S4.T1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.1.m1.1.1.10" mathsize="80%" xref="S4.T1.1.1.1.1.1.m1.1.1.10.cmml">e</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1"><times id="S4.T1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.1"></times><ci id="S4.T1.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.2">𝐶</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.3">𝐿</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.4.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.4">𝐼</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.5.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.5">𝑃</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.6.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.6">𝑆</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.7.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.7">𝑐</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.8.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.8">𝑜</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.9.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.9">𝑟</ci><ci id="S4.T1.1.1.1.1.1.m1.1.1.10.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1.10">𝑒</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">CLIP\ Score</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">italic_C italic_L italic_I italic_P italic_S italic_c italic_o italic_r italic_e</annotation></semantics></math><span class="ltx_text" id="S4.T1.1.1.1.1.1.1" style="font-size:80%;">↑</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.2.2.2.1">
<span class="ltx_p" id="S4.T1.2.2.2.1.1" style="width:42.7pt;"><math alttext="GPT\ Score" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.1.m1.1"><semantics id="S4.T1.2.2.2.1.1.m1.1a"><mrow id="S4.T1.2.2.2.1.1.m1.1.1" xref="S4.T1.2.2.2.1.1.m1.1.1.cmml"><mi id="S4.T1.2.2.2.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.2.cmml">G</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.1.1.m1.1.1.3" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.3.cmml">P</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1a" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.1.1.m1.1.1.4" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.4.cmml">T</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1b" lspace="0.400em" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.1.1.m1.1.1.5" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.5.cmml">S</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1c" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.1.1.m1.1.1.6" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.6.cmml">c</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1d" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.1.1.m1.1.1.7" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.7.cmml">o</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1e" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.1.1.m1.1.1.8" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.8.cmml">r</mi><mo id="S4.T1.2.2.2.1.1.m1.1.1.1f" xref="S4.T1.2.2.2.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.1.1.m1.1.1.9" mathsize="80%" xref="S4.T1.2.2.2.1.1.m1.1.1.9.cmml">e</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.1.m1.1b"><apply id="S4.T1.2.2.2.1.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1"><times id="S4.T1.2.2.2.1.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.1"></times><ci id="S4.T1.2.2.2.1.1.m1.1.1.2.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.2">𝐺</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.3.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.3">𝑃</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.4.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.4">𝑇</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.5.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.5">𝑆</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.6.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.6">𝑐</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.7.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.7">𝑜</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.8.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.8">𝑟</ci><ci id="S4.T1.2.2.2.1.1.m1.1.1.9.cmml" xref="S4.T1.2.2.2.1.1.m1.1.1.9">𝑒</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.1.m1.1c">GPT\ Score</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.1.m1.1d">italic_G italic_P italic_T italic_S italic_c italic_o italic_r italic_e</annotation></semantics></math><span class="ltx_text" id="S4.T1.2.2.2.1.1.1" style="font-size:80%;">↑</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.3.3.1">
<span class="ltx_p" id="S4.T1.3.3.3.1.1" style="width:42.7pt;"><math alttext="CLIP_{img}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.1.1.m1.1"><semantics id="S4.T1.3.3.3.1.1.m1.1a"><mrow id="S4.T1.3.3.3.1.1.m1.1.1" xref="S4.T1.3.3.3.1.1.m1.1.1.cmml"><mi id="S4.T1.3.3.3.1.1.m1.1.1.2" mathsize="80%" xref="S4.T1.3.3.3.1.1.m1.1.1.2.cmml">C</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.1" xref="S4.T1.3.3.3.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.1.1.m1.1.1.3" mathsize="80%" xref="S4.T1.3.3.3.1.1.m1.1.1.3.cmml">L</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.1a" xref="S4.T1.3.3.3.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.1.1.m1.1.1.4" mathsize="80%" xref="S4.T1.3.3.3.1.1.m1.1.1.4.cmml">I</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.1b" xref="S4.T1.3.3.3.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S4.T1.3.3.3.1.1.m1.1.1.5" xref="S4.T1.3.3.3.1.1.m1.1.1.5.cmml"><mi id="S4.T1.3.3.3.1.1.m1.1.1.5.2" mathsize="80%" xref="S4.T1.3.3.3.1.1.m1.1.1.5.2.cmml">P</mi><mrow id="S4.T1.3.3.3.1.1.m1.1.1.5.3" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.cmml"><mi id="S4.T1.3.3.3.1.1.m1.1.1.5.3.2" mathsize="80%" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.2.cmml">i</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.5.3.1" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.1.1.m1.1.1.5.3.3" mathsize="80%" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.3.cmml">m</mi><mo id="S4.T1.3.3.3.1.1.m1.1.1.5.3.1a" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.1.1.m1.1.1.5.3.4" mathsize="80%" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.4.cmml">g</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.1.1.m1.1b"><apply id="S4.T1.3.3.3.1.1.m1.1.1.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1"><times id="S4.T1.3.3.3.1.1.m1.1.1.1.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.1"></times><ci id="S4.T1.3.3.3.1.1.m1.1.1.2.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.2">𝐶</ci><ci id="S4.T1.3.3.3.1.1.m1.1.1.3.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.3">𝐿</ci><ci id="S4.T1.3.3.3.1.1.m1.1.1.4.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.4">𝐼</ci><apply id="S4.T1.3.3.3.1.1.m1.1.1.5.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5"><csymbol cd="ambiguous" id="S4.T1.3.3.3.1.1.m1.1.1.5.1.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5">subscript</csymbol><ci id="S4.T1.3.3.3.1.1.m1.1.1.5.2.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5.2">𝑃</ci><apply id="S4.T1.3.3.3.1.1.m1.1.1.5.3.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3"><times id="S4.T1.3.3.3.1.1.m1.1.1.5.3.1.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.1"></times><ci id="S4.T1.3.3.3.1.1.m1.1.1.5.3.2.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.2">𝑖</ci><ci id="S4.T1.3.3.3.1.1.m1.1.1.5.3.3.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.3">𝑚</ci><ci id="S4.T1.3.3.3.1.1.m1.1.1.5.3.4.cmml" xref="S4.T1.3.3.3.1.1.m1.1.1.5.3.4">𝑔</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.1.1.m1.1c">CLIP_{img}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.1.1.m1.1d">italic_C italic_L italic_I italic_P start_POSTSUBSCRIPT italic_i italic_m italic_g end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.1.1.1" style="font-size:80%;">↑</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.3.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.3.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.4.1.1.1">
<span class="ltx_p" id="S4.T1.3.4.1.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T1.3.4.1.1.1.1.1" style="font-size:80%;">Instruct-Pix2Pix</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.3.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.4.1.2.1">
<span class="ltx_p" id="S4.T1.3.4.1.2.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.4.1.2.1.1.1" style="font-size:80%;">0.237</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.3.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.4.1.3.1">
<span class="ltx_p" id="S4.T1.3.4.1.3.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.4.1.3.1.1.1" style="font-size:80%;">38.201</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.3.4.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.4.1.4.1">
<span class="ltx_p" id="S4.T1.3.4.1.4.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.4.1.4.1.1.1" style="font-size:80%;">0.806</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.5.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.5.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.5.2.1.1">
<span class="ltx_p" id="S4.T1.3.5.2.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T1.3.5.2.1.1.1.1" style="font-size:80%;">Magic Brush</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.5.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.5.2.2.1">
<span class="ltx_p" id="S4.T1.3.5.2.2.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.5.2.2.1.1.1" style="font-size:80%;">0.234</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.5.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.5.2.3.1">
<span class="ltx_p" id="S4.T1.3.5.2.3.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.5.2.3.1.1.1" style="font-size:80%;">36.555</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.5.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.5.2.4.1">
<span class="ltx_p" id="S4.T1.3.5.2.4.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.5.2.4.1.1.1" style="font-size:80%;">0.811</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.6.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.6.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.6.3.1.1">
<span class="ltx_p" id="S4.T1.3.6.3.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T1.3.6.3.1.1.1.1" style="font-size:80%;">SDEdit(FLUX)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.6.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.6.3.2.1">
<span class="ltx_p" id="S4.T1.3.6.3.2.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.6.3.2.1.1.1" style="font-size:80%;">0.230</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.6.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.6.3.3.1">
<span class="ltx_p" id="S4.T1.3.6.3.3.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.6.3.3.1.1.1" style="font-size:80%;">34.329</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.3.6.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.6.3.4.1">
<span class="ltx_p" id="S4.T1.3.6.3.4.1.1" style="width:42.7pt;"><span class="ltx_text" id="S4.T1.3.6.3.4.1.1.1" style="font-size:80%;">0.704</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.7.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S4.T1.3.7.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.7.4.1.1">
<span class="ltx_p" id="S4.T1.3.7.4.1.1.1" style="width:56.9pt;"><span class="ltx_text" id="S4.T1.3.7.4.1.1.1.1" style="font-size:80%;">Ours</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S4.T1.3.7.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.7.4.2.1">
<span class="ltx_p" id="S4.T1.3.7.4.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.7.4.2.1.1.1" style="font-size:80%;">0.261</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S4.T1.3.7.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.7.4.3.1">
<span class="ltx_p" id="S4.T1.3.7.4.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.7.4.3.1.1.1" style="font-size:80%;">51.159</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S4.T1.3.7.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.7.4.4.1">
<span class="ltx_p" id="S4.T1.3.7.4.4.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.7.4.4.1.1.1" style="font-size:80%;">0.871</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for general image editing tasks.  The metrics used are CLIP Score, GPT Score, and CLIPimg, which assess the quality and alignment between generated images and text instructions.  The results are compared to several baseline methods, and the best performance for each metric is highlighted in bold, allowing for easy identification of the superior method among those tested.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison Results in General Image Editing Tasks. The best results are denoted as Bold.
> </details>





### In-depth insights


#### PhotoDoodle
The "PhotoDoodle" research paper introduces a novel image editing framework, **PhotoDoodle**, designed for photo doodling. It allows artists to overlay decorative elements seamlessly onto photographs, maintaining background consistency. The approach uses a two-stage training strategy: first, pre-training a general-purpose image editing model (**OmniEditor**), and then fine-tuning it with **EditLoRA** using a small, artist-curated dataset. This process captures distinct editing styles and techniques. The paper focuses on maintaining clean latent conditioning and using position encoding cloning for consistency, aiming to balance artistic flexibility and strict background preservation. They also introduce a dataset with 300 high-quality pairs across 6 artistic styles. The framework can learn artistic image editing from few-shot examples, showing advanced performance and robustness. The problem is that the inserted elements must appear seamlessly integrated with the background, requiring realistic blending, perspective alignment, and contextual coherence. 

#### Artistic Editing
**Artistic image editing** is a nuanced field aiming to augment photographs with decorative elements while maintaining a seamless blend with the background. Challenges include perspective alignment, contextual coherence, and preserving the original content's integrity. **The goal is to capture an artist's unique style** efficiently, often from limited data, differentiating it from global style transfer or regional inpainting. This requires innovative approaches beyond traditional image editing paradigms to achieve realistic blending and harmonious integration of new elements, ultimately enabling personalized and expressive photo enhancements.

#### Few-shot Data
The paper addresses the challenge of **learning artistic image editing from limited data**, a scenario often termed "few-shot." This is crucial because acquiring extensive paired data for each artist's unique style is difficult and expensive. The approach, PhotoDoodle, focuses on **efficient style capture from minimal examples**, achieved by fine-tuning a pre-trained model (OmniEditor) with EditLoRA using only a small, artist-curated dataset. **Few-shot learning** enables adapting the model to new artistic styles quickly without extensive retraining. The framework leverages pre-training to build a strong foundation and implicit alignment strategies, like PE Cloning, to extract spatial correspondences and **ensure consistency** without adding training parameters.

#### Style Transfer
Style transfer, in the context of image editing, involves **modifying an image to adopt the visual characteristics of another**, be it another image or a particular artistic style, and plays a pivotal role in PhotoDoodle. The paper leverages EditLoRA module to efficiently capture and transfer unique artistic styles from few-shot examples by **fine-tuning a pre-trained diffusion model on artist-curated before-and-after image pairs**. This is achieved by training the EditLora steers the behaviour of the OmniEditor to the specified artist's style by generating Itar that reflects both the previously learned editing capabilities and the distinctive stylistic effects from the artist. The technique **ensures that transferred styles seamlessly integrate into the target image** while preserving the structural and contextual integrity of the original content.

#### EditLoRA
**EditLoRA** seems to be a crucial component for **style transfer** in the image editing framework, efficiently adapting the base model to specific artistic styles from limited data. It uses **Low-Rank Adaptation (LoRA)** to fine-tune a small subset of parameters, reducing overfitting risk while preserving the pre-trained model's capabilities. The **EditLoRA** training set differs from standard image generation, utilizing before-and-after image pairs and text instructions. It guides the **OmniEditor** to generate images reflecting both learned editing capabilities and distinctive stylistic effects, tailoring the model's behavior to the artist's unique style.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14397/x3.png)

> 🔼 PhotoDoodle's architecture involves a two-stage training process. First, a high-rank LoRA (Low-Rank Adaptation) trains the OmniEditor on a large dataset for general image editing and text-to-image generation.  Second, a low-rank LoRA fine-tunes the EditLoRA on a smaller dataset of artist-specific photo doodles (before-and-after pairs). This captures individual artists' unique styles. During inference, the original image is encoded as a condition token and concatenated with a noisy latent token. MMAttention (Multi-Modal Attention) controls the generation based on these inputs.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall architecture and training prodigim of photodoodle. The ominiEditor and EditLora all follow the lora training prodigm. We use a high rank lora for pre-training the OmniEditor on a large-scale dataset for general-purpose editing and text-following capabilities, and a low rank lora for fine-tuning EditLoRA on a small set of paired stylized images to capture individual artists’ specific styles and strategies for efficient customization. We encode the original image into a condition token and concatenate it with a noised latent token, controlling the generation outcome through MMAttention.
> </details>



![](https://arxiv.org/html/2502.14397/x4.png)

> 🔼 Figure 3 showcases the results of PhotoDoodle, demonstrating its ability to generate high-quality photo doodles that seamlessly blend artistic styles with original images.  The examples show how PhotoDoodle can mimic diverse artistic techniques, including adding decorative elements, applying stylized modifications, and maintaining contextual coherence. The figure highlights PhotoDoodle's capacity for instruction-driven image editing, where specific instructions guide the generation of personalized photo doodles, resulting in images consistent with both the user's request and the artist's style.
> <details>
> <summary>read the caption</summary>
> Figure 3: The generated results of PhotoDoodle. PhotoDoodle can mimic the manner and style of artists creating photo doodles, enabling instruction-driven high-quality image editing.
> </details>



![](https://arxiv.org/html/2502.14397/x5.png)

> 🔼 Figure 4 presents a qualitative comparison of PhotoDoodle against three baseline methods (InstructPix2Pix, MagicBrush, and SDEdit) in both universal and customized image editing tasks.  The top row showcases universal image editing, where the instruction is relatively simple and general. The bottom row depicts customized image editing with more complex and specific directives.  For each task and method, the input image, the result from each method, and the instruction are shown. The figure highlights PhotoDoodle's superior performance in accurately following instructions (instruction following), maintaining the original image's consistency (image consistency), and producing effective and high-quality edits (editing effectiveness).  PhotoDoodle produces results that are visually more pleasing and closely adhere to the instructions given, compared to the noticeably inferior results of the baselines.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Compared to baseline methods, PhotoDoodle demonstrates superior instruction following, image consistency, and editing effectiveness.
> </details>



![](https://arxiv.org/html/2502.14397/x6.png)

> 🔼 This ablation study analyzes the impact of different components of the PhotoDoodle model on its performance.  The figure shows that removing any key component significantly degrades the results.  Specifically:  * **No OmniEditor Pre-training:** Training EditLoRA alone significantly reduces the harmony between sketches and photos and impairs the model's ability to follow text instructions accurately. This highlights the importance of the OmniEditor's general-purpose image editing capabilities as a foundation. * **No Position Encoding Cloning:**  Removing this mechanism reduces output consistency and introduces unwanted background modifications. This demonstrates the crucial role of maintaining background consistency during the editing process. * **Only Pre-trained OmniEditor (No EditLoRA):** Using only the pre-trained model without fine-tuning it with EditLoRA significantly reduces the degree of stylization. This shows that EditLoRA is essential for learning and applying the unique editing styles of individual artists.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablation study results. Without OmniEditor pre-training, training EditLoRA directly reduces the harmony between sketches and photos and weakens text-following capabilities; removing Position Encoding Cloning decreases output consistency and introduces unwanted background changes; using only pre-trained OmniEditor without EditLoRA significantly reduces the degree of stylization.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14397/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14397/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}