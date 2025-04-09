---
title: "HiFlow: Training-free High-Resolution Image Generation with Flow-Aligned Guidance"
summary: "HiFlow: Unleashing high-resolution image generation via flow guidance, without training!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-04-08
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.06232 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiazi Bu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.06232" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.06232" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.06232/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating high-resolution images with text-to-image models is tough due to data scarcity and model complexity. Current models often lack detail and break down structurally when pushed to higher resolutions. Finetuning on high-res data is expensive, and existing training-free methods have limited architectural transferability.



This paper introduces HiFlow, a framework to improve resolution **without extra training**. HiFlow guides the image generation process using the natural flow of the image data, and the framework aligns guidance for low-frequency consistency, structural integrity, and detailed fidelity. The framework is model-agnostic and generalizable.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HiFlow is a training-free and model-agnostic framework for high-resolution image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It uses flow-aligned guidance to enhance image quality and detail. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} HiFlow demonstrates strong performance and versatility across different models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it provides a **novel, training-free**, and model-agnostic framework, enabling higher resolution image generation from existing models. It can **reduce the need for specialized training**, lowering costs and broadening accessibility to advanced image synthesis. The approach **opens new directions** in improving and adapting existing diffusion and flow models.

------
#### Visual Insights



![](https://arxiv.org/html/2504.06232/x1.png)

> 🔼 This figure showcases a gallery of images generated using HiFlow, a novel method for training-free high-resolution image generation. HiFlow enhances pre-trained text-to-image diffusion models, specifically the Flux.1.0-dev model in this case, allowing them to produce high-resolution outputs with significantly improved fidelity and detail.  The images demonstrate the diverse and high-quality results attainable using HiFlow without any additional training.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Gallery of HiFlow. The proposed HiFlow enables pre-trained text-to-image diffusion models (Flux.1.0-dev in this figure) to synthesize high-resolution images with high fidelity and rich details in a training-free manner. Best view zoomed in.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Resolution (height <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><times id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">×</annotation></semantics></math> width)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.6.6.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.7.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.3.1">FID<math alttext="{}_{\text{patch}}\downarrow" class="ltx_math_unparsed" display="inline" id="S4.T1.3.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.3.1.m1.1a"><mmultiscripts id="S4.T1.3.3.3.3.1.m1.1.1"><mo id="S4.T1.3.3.3.3.1.m1.1.1.2" stretchy="false">↓</mo><mprescripts id="S4.T1.3.3.3.3.1.m1.1.1a"></mprescripts><mtext class="ltx_mathvariant_bold" id="S4.T1.3.3.3.3.1.m1.1.1.3">patch</mtext><mrow id="S4.T1.3.3.3.3.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.1.m1.1b">{}_{\text{patch}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.1.m1.1c">start_FLOATSUBSCRIPT patch end_FLOATSUBSCRIPT ↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.4.1">IS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.1.m1.1b"><ci id="S4.T1.4.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.5.5.1">IS<math alttext="{}_{\text{patch}}\uparrow" class="ltx_math_unparsed" display="inline" id="S4.T1.5.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.5.1.m1.1a"><mmultiscripts id="S4.T1.5.5.5.5.1.m1.1.1"><mo id="S4.T1.5.5.5.5.1.m1.1.1.2" stretchy="false">↑</mo><mprescripts id="S4.T1.5.5.5.5.1.m1.1.1a"></mprescripts><mtext class="ltx_mathvariant_bold" id="S4.T1.5.5.5.5.1.m1.1.1.3">patch</mtext><mrow id="S4.T1.5.5.5.5.1.m1.1.1b"></mrow></mmultiscripts><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.1.m1.1b">{}_{\text{patch}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.1.m1.1c">start_FLOATSUBSCRIPT patch end_FLOATSUBSCRIPT ↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.6.1">CLIP Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.6.1.m1.1a"><mo id="S4.T1.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.1.m1.1b"><ci id="S4.T1.6.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.1" rowspan="5"><span class="ltx_text" id="S4.T1.7.7.7.1.1"><math alttext="\mathbf{2048\times 2048}\text{ (2K)}" class="ltx_Math" display="inline" id="S4.T1.7.7.7.1.1.m1.1"><semantics id="S4.T1.7.7.7.1.1.m1.1a"><mrow id="S4.T1.7.7.7.1.1.m1.1.1" xref="S4.T1.7.7.7.1.1.m1.1.1.cmml"><mrow id="S4.T1.7.7.7.1.1.m1.1.1.2" xref="S4.T1.7.7.7.1.1.m1.1.1.2.cmml"><mn id="S4.T1.7.7.7.1.1.m1.1.1.2.2" xref="S4.T1.7.7.7.1.1.m1.1.1.2.2.cmml">𝟐𝟎𝟒𝟖</mn><mo id="S4.T1.7.7.7.1.1.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T1.7.7.7.1.1.m1.1.1.2.1.cmml">×</mo><mn id="S4.T1.7.7.7.1.1.m1.1.1.2.3" xref="S4.T1.7.7.7.1.1.m1.1.1.2.3.cmml">𝟐𝟎𝟒𝟖</mn></mrow><mo id="S4.T1.7.7.7.1.1.m1.1.1.1" xref="S4.T1.7.7.7.1.1.m1.1.1.1.cmml">⁢</mo><mtext id="S4.T1.7.7.7.1.1.m1.1.1.3" xref="S4.T1.7.7.7.1.1.m1.1.1.3a.cmml"> (2K)</mtext></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.1.1.m1.1b"><apply id="S4.T1.7.7.7.1.1.m1.1.1.cmml" xref="S4.T1.7.7.7.1.1.m1.1.1"><times id="S4.T1.7.7.7.1.1.m1.1.1.1.cmml" xref="S4.T1.7.7.7.1.1.m1.1.1.1"></times><apply id="S4.T1.7.7.7.1.1.m1.1.1.2.cmml" xref="S4.T1.7.7.7.1.1.m1.1.1.2"><times id="S4.T1.7.7.7.1.1.m1.1.1.2.1.cmml" xref="S4.T1.7.7.7.1.1.m1.1.1.2.1"></times><cn id="S4.T1.7.7.7.1.1.m1.1.1.2.2.cmml" type="integer" xref="S4.T1.7.7.7.1.1.m1.1.1.2.2">2048</cn><cn id="S4.T1.7.7.7.1.1.m1.1.1.2.3.cmml" type="integer" xref="S4.T1.7.7.7.1.1.m1.1.1.2.3">2048</cn></apply><ci id="S4.T1.7.7.7.1.1.m1.1.1.3a.cmml" xref="S4.T1.7.7.7.1.1.m1.1.1.3"><mtext id="S4.T1.7.7.7.1.1.m1.1.1.3.cmml" xref="S4.T1.7.7.7.1.1.m1.1.1.3"> (2K)</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.1.1.m1.1c">\mathbf{2048\times 2048}\text{ (2K)}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.1.1.m1.1d">bold_2048 × bold_2048 (2K)</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.2">DemoFusion* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.7.7.3.1">56.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.4">51.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.5">27.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.6">13.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.7.7.7">35.05</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.9.1">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9.1.1">DiffuseHigh* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9.1.2">61.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9.1.3">50.25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9.1.4">26.76</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9.1.5">13.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9.1.6">34.83</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.10.2">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.10.2.1">I-Max <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.10.2.2">57.57</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.10.2.3">54.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.10.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.10.2.4.1">28.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.10.2.5">12.07</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.10.2.6">34.96</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.11.3">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.1">Flux + BSRGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.2">60.25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.3">52.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.4">25.85</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.5">13.39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11.3.6"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.11.3.6.1">35.34</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.12.4">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.1">UltraPixel <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.2">59.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.12.4.3.1">49.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.4">28.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.12.4.5.1">13.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12.4.6">35.16</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.13.5">
<td class="ltx_td" id="S4.T1.8.8.13.5.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.13.5.2" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.13.5.2.1" style="background-color:#F2F2F2;">HiFlow (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.13.5.3" style="background-color:#F2F2F2;"><span class="ltx_text" id="S4.T1.8.8.13.5.3.1" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.13.5.3.1.1">55.39</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.13.5.4" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.13.5.4.1" style="background-color:#F2F2F2;">47.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.13.5.5" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.13.5.5.1" style="background-color:#F2F2F2;">28.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.13.5.6" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.13.5.6.1" style="background-color:#F2F2F2;">13.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.13.5.7" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.13.5.7.1" style="background-color:#F2F2F2;">35.32</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.1" rowspan="5"><span class="ltx_text" id="S4.T1.8.8.8.1.1"><math alttext="\mathbf{4096\times 4096}\text{ (4K)}" class="ltx_Math" display="inline" id="S4.T1.8.8.8.1.1.m1.1"><semantics id="S4.T1.8.8.8.1.1.m1.1a"><mrow id="S4.T1.8.8.8.1.1.m1.1.1" xref="S4.T1.8.8.8.1.1.m1.1.1.cmml"><mrow id="S4.T1.8.8.8.1.1.m1.1.1.2" xref="S4.T1.8.8.8.1.1.m1.1.1.2.cmml"><mn id="S4.T1.8.8.8.1.1.m1.1.1.2.2" xref="S4.T1.8.8.8.1.1.m1.1.1.2.2.cmml">𝟒𝟎𝟗𝟔</mn><mo id="S4.T1.8.8.8.1.1.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T1.8.8.8.1.1.m1.1.1.2.1.cmml">×</mo><mn id="S4.T1.8.8.8.1.1.m1.1.1.2.3" xref="S4.T1.8.8.8.1.1.m1.1.1.2.3.cmml">𝟒𝟎𝟗𝟔</mn></mrow><mo id="S4.T1.8.8.8.1.1.m1.1.1.1" xref="S4.T1.8.8.8.1.1.m1.1.1.1.cmml">⁢</mo><mtext id="S4.T1.8.8.8.1.1.m1.1.1.3" xref="S4.T1.8.8.8.1.1.m1.1.1.3a.cmml"> (4K)</mtext></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.1.1.m1.1b"><apply id="S4.T1.8.8.8.1.1.m1.1.1.cmml" xref="S4.T1.8.8.8.1.1.m1.1.1"><times id="S4.T1.8.8.8.1.1.m1.1.1.1.cmml" xref="S4.T1.8.8.8.1.1.m1.1.1.1"></times><apply id="S4.T1.8.8.8.1.1.m1.1.1.2.cmml" xref="S4.T1.8.8.8.1.1.m1.1.1.2"><times id="S4.T1.8.8.8.1.1.m1.1.1.2.1.cmml" xref="S4.T1.8.8.8.1.1.m1.1.1.2.1"></times><cn id="S4.T1.8.8.8.1.1.m1.1.1.2.2.cmml" type="integer" xref="S4.T1.8.8.8.1.1.m1.1.1.2.2">4096</cn><cn id="S4.T1.8.8.8.1.1.m1.1.1.2.3.cmml" type="integer" xref="S4.T1.8.8.8.1.1.m1.1.1.2.3">4096</cn></apply><ci id="S4.T1.8.8.8.1.1.m1.1.1.3a.cmml" xref="S4.T1.8.8.8.1.1.m1.1.1.3"><mtext id="S4.T1.8.8.8.1.1.m1.1.1.3.cmml" xref="S4.T1.8.8.8.1.1.m1.1.1.3"> (4K)</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.1.1.m1.1c">\mathbf{4096\times 4096}\text{ (4K)}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.1.1.m1.1d">bold_4096 × bold_4096 (4K)</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.2">DemoFusion* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.3">56.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.4">49.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.5">21.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.6">8.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.8.8.7">35.27</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.14.6">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.1">DiffuseHigh* <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.2">62.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.3">50.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.4">20.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.5">8.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.14.6.6">34.98</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.15.7">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.1">I-Max <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.15.7.2.1">53.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.3">52.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.4">22.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.5">7.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.15.7.6">35.05</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.16.8">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.1">Flux + BSRGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.2">59.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.3">54.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.4">19.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.5">8.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.16.8.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.16.8.6.1">35.37</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.17.9">
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.17.9.1">UltraPixel <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.06232v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.17.9.2">60.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.17.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.17.9.3.1">47.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.17.9.4"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.17.9.4.1">24.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.17.9.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.17.9.5.1">9.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.17.9.6">35.01</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.18.10">
<td class="ltx_td ltx_border_bb" id="S4.T1.8.8.18.10.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.18.10.2" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.18.10.2.1" style="background-color:#F2F2F2;">HiFlow (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.18.10.3" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.18.10.3.1" style="background-color:#F2F2F2;">52.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.18.10.4" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.18.10.4.1" style="background-color:#F2F2F2;">45.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.18.10.5" style="background-color:#F2F2F2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.8.8.18.10.5.1" style="background-color:#F2F2F2;">24.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.18.10.6" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.18.10.6.1" style="background-color:#F2F2F2;">9.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.8.18.10.7" style="background-color:#F2F2F2;"><span class="ltx_text ltx_font_bold" id="S4.T1.8.8.18.10.7.1" style="background-color:#F2F2F2;">35.40</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of HiFlow with other state-of-the-art baselines for high-resolution image generation.  The metrics used for comparison include FID (Frechet Inception Distance), FID_patch (FID calculated on image patches), IS (Inception Score), IS_patch (IS calculated on image patches), and CLIP score.  Lower FID and FID_patch scores indicate better image quality, while higher IS, IS_patch, and CLIP scores represent better image quality and better alignment with the text prompt. The results are shown for two resolutions: 2048x2048 (2K) and 4096x4096 (4K).  Methods marked with an asterisk (*) were originally designed for U-Net architectures and adapted for this comparison.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison with other baselines. The best result is highlighted in bold, while the second-best result is underlined. * indicates methods migrated from U-Net architecture.
> </details>





### In-depth insights


#### Flow-Aligned T2I
**Flow-Aligned Text-to-Image (T2I)** generation represents a significant advancement in the field, addressing limitations of existing models, especially at high resolutions. The core idea revolves around guiding the image generation process using the inherent 'flow' of information learned by the model. This flow, often represented as vector fields, captures how the model transforms noise into a coherent image. By aligning the generation process with this pre-existing flow, the method seeks to improve image quality, detail, and structural integrity. A key challenge is that high-resolution image generation demands more than simply scaling up low-resolution outputs; it requires preserving fine details and complex relationships. Flow alignment attempts to solve this by establishing a virtual reference flow within the high-resolution space, which is informed by the characteristics of low-resolution flow information. This guidance is provided through key aspects such as initialization alignment, which ensures low-frequency consistency; direction alignment, which preserves structure; and acceleration alignment, which helps in maintaining high-fidelity details. Such method enhances the quality of high-resolution image synthesis of T2I models.

#### HiFlow Guidance
**HiFlow Guidance** is a pivotal component, orchestrating the high-resolution image generation process by leveraging a reference flow derived from the low-resolution sampling trajectory. This guidance is strategically implemented through three key mechanisms: **initialization alignment, direction alignment, and acceleration alignment.** Initialization alignment ensures consistency in low-frequency components by initiating the high-resolution sampling from a noise-adjusted version of the reference flow. Direction alignment preserves structural integrity by modifying the denoising direction based on the reference flow, effectively replacing low-frequency components with those from the reference. Finally, acceleration alignment enhances detail fidelity by synchronizing the model's content synthesis order with the reference flow, guiding detailed synthesis in both content and timing. This multi-faceted approach allows HiFlow to generate high-resolution images with both coherent structure and rich, realistic details, surpassing the limitations of existing methods that often struggle with either structural integrity or detail fidelity.

#### Virtual Ref. Flow
The concept of a "Virtual Reference Flow" (VRF) is intriguing within the context of image generation, particularly for high-resolution synthesis using flow-based generative models. The VRF likely serves as a **guidance mechanism**, operating in the latent space to steer the generation process toward more realistic and coherent outputs. Instead of directly manipulating the model's parameters or relying solely on data priors, the VRF could represent an **idealized or estimated flow field**, capturing the desired characteristics of the target image distribution. This flow field would then be used to influence the actual flow within the generative model, effectively imposing a **structured prior** on the generation process. The virtual flow will be constructed in the **high-resolution space** to fully characterise the information of low-resolution sampling trajectory. By aligning the model's flow with the VRF, it might be possible to achieve better control over the generated image's structure, details, and overall quality. The VRF can improve the **visual quality**. 

#### Cascade Details
**HiFlow employs a cascade generation paradigm** that first constructs a virtual reference flow in the high-resolution space based on step-wise estimated clean samples from a low-resolution sampling flow. This reference flow guides high-resolution synthesis through initialization alignment (low-frequency consistency), direction alignment (structure preservation), and acceleration alignment (detail fidelity). **This cascade approach facilitates merging structures synthesized at low-resolution with details synthesized at high-resolution**, resulting in superior generation and broad generalizability across different architectures. The method ensures consistency, preservation, and fidelity while synthesizing the high-resolution image.

#### Ablation Insight
**Ablation studies** are crucial for dissecting the contribution of individual components within a complex system like HiFlow. By systematically removing or altering specific elements, such as the initialization, direction, and acceleration alignment strategies, we can isolate their impact on overall performance. This allows us to understand which aspects are most critical for achieving high-resolution image generation with fidelity and coherence. Analyzing the resulting changes in image quality, structural integrity, and detail synthesis provides valuable insights into the inner workings of HiFlow and guides future improvements by focusing development efforts on the most influential factors. These insights validate the necessity of a holistic approach, confirming that superior performance comes from all these alignment strategies working in conjunction.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.06232/x2.png)

> 🔼 This figure visually demonstrates the significant reduction in image quality when using text-to-image (T2I) models to generate high-resolution images compared to their performance at lower resolutions.  It shows examples of several T2I models, including those using U-Net and DiT/Flow architectures, and illustrates how the image quality degrades as the resolution increases. The resolution of the generated images are explicitly stated for each model and resolution.
> <details>
> <summary>read the caption</summary>
> Figure 2:  T2I models suffer significant quality degradation in high-resolution generation.
> </details>



![](https://arxiv.org/html/2504.06232/x3.png)

> 🔼 Figure 3 illustrates the HiFlow pipeline, a method for generating high-resolution images.  It starts with a low-resolution sampling trajectory, from which a virtual reference flow is constructed in the high-resolution space. This reference flow guides the high-resolution generation process in three key ways:  1) **Initialization Alignment:** ensures consistency between low and high-resolution frequencies at the start of the process. 2) **Direction Alignment:** maintains structural integrity throughout the generation. 3) **Acceleration Alignment:** enhances fine detail and fidelity.  By aligning the actual high-resolution flow with this virtual reference flow, HiFlow produces higher-quality high-resolution images.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Pipeline of HiFlow. HiFlow constructs reference flow from low-resolution sampling trajectory to offer initiation alignment, direction alignment, and acceleration alignment, enabling flow-aligned high-resolution image generation.
> </details>



![](https://arxiv.org/html/2504.06232/x4.png)

> 🔼 Figure 4 demonstrates the impact of direction and acceleration alignment in HiFlow's high-resolution image generation. (a) shows the distribution discrepancies of predicted clean samples (X₀←ₜ) at different timesteps (t). (b) compares the results using constant versus time-dependent direction guidance, highlighting the artifacts produced by the former and the improved structure preservation achieved by the latter. (c) visualizes the acceleration component of the HiFlow model. Finally, (d) illustrates the effect of acceleration alignment on the generation of high-fidelity details.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Observations regarding direction and acceleration. (a) Distribution discrepancy of predicted clean sample X0←tsubscript𝑋←0𝑡X_{0\leftarrow t}italic_X start_POSTSUBSCRIPT 0 ← italic_t end_POSTSUBSCRIPT from different t𝑡titalic_t. (b) Comparison with constant and time-dependent direction guidance, in which the former exhibits notable artifacts while the latter demonstrates better structure preservation. (c) Visualization of acceleration. (d) Effect of acceleration alignment, validating its role in facilitating high-fidelity details generation.
> </details>



![](https://arxiv.org/html/2504.06232/x5.png)

> 🔼 Figure 5 presents a visual comparison of images generated at 2K (2048x2048 pixels) and 4K (4096x4096 pixels) resolutions using various methods.  The figure highlights the superior performance of the HiFlow model.  HiFlow-generated images exhibit significantly improved high-fidelity details and a more coherent overall structure compared to other approaches, even at the highest resolution.  The differences in detail and structural integrity are readily apparent when comparing HiFlow results to those produced by other methods, demonstrating HiFlow’s effectiveness in producing high-quality images at both resolutions.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Visual comparison of synthesized 2K and 4K images. The proposed HiFlow yields high-resolution images characterized by high-fidelity details and coherent structure. Best view zoomed in.
> </details>



![](https://arxiv.org/html/2504.06232/x6.png)

> 🔼 Figure 6 presents a qualitative comparison of images generated by HiFlow and three leading training-based text-to-image models: UltraPixel, DALL-E 3, and Flux-Pro.  The figure showcases example images produced by each model, highlighting HiFlow's ability to generate high-resolution images of comparable quality to those produced by the established, training-intensive methods. This visually demonstrates that HiFlow's training-free approach can achieve state-of-the-art results without the need for extensive training data.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Image qualitative comparison to training-based methods. HiFlow demonstrates the capability to generate high-resolution images with quality comparable to leading training-based models (UltraPixel, DALL·E 3, and Flux-Pro).
> </details>



![](https://arxiv.org/html/2504.06232/x7.png)

> 🔼 This figure shows the results of a sequential ablation study on the HiFlow model.  It demonstrates the impact of each component of HiFlow (initialization, direction, and acceleration alignment) on the generated high-resolution images. By sequentially removing these components, the figure visually illustrates their individual contributions to the overall image quality, specifically in detail preservation and structural coherence.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Sequential ablation experiment. Best view zoomed in.
> </details>



![](https://arxiv.org/html/2504.06232/x8.png)

> 🔼 Table 2 presents a comparison of the latency (time taken) for generating images at different resolutions using various methods.  It highlights the speed efficiency of HiFlow compared to other methods for high-resolution image generation. The table allows readers to quickly assess and compare the computational efficiency of the different approaches.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison in latency.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.06232/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06232/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}