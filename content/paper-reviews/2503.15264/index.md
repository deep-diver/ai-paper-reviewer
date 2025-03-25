---
title: "LEGION: Learning to Ground and Explain for Synthetic Image Detection"
summary: "LEGION: Grounding and explaining synthetic image detection and refinement via multimodal learning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15264 {{< /keyword >}}
{{< keyword icon="writer" >}} Hengrui Kang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15264" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15264" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15264/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generative technology's rapid advancements have led to powerful tools, along with social concerns. Current synthetic image detection methods lack artifact-level interpretability, are overly focused on image manipulation detection, and datasets have outdated generators and lack fine-grained annotations. To address these issues, this paper introduces SynthScars, a high-quality, diverse dataset consisting of fully synthetic images with human-expert annotations, featuring distinct image content types, categories of artifacts, and fine-grained annotations. 



To complement this, the paper presents LEGION, a multimodal large language model-based image forgery analysis framework that integrates artifact detection, segmentation, and explanation. Moreover, it uses LEGION as a controller, integrating it into image refinement pipelines to guide the generation of higher-quality and more realistic images. Extensive experiments demonstrate that LEGION outperforms existing methods, achieving new state-of-the-art results on multiple benchmarks. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SynthScars dataset: A new benchmark with high-quality, diverse synthetic images and detailed annotations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LEGION framework: Combines detection, segmentation, and explanation for in-depth forgery analysis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Image Refinement: LEGION as a controller guides image regeneration and inpainting for higher quality results. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper matters for researchers by introducing **SynthScars, a novel, high-quality dataset**, paired with **LEGION, an innovative forgery analysis framework.** It not only enhances the detection of synthetic images but also **paves the way for refining image generation processes**, fostering both defensive and generative advancements in AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15264/x1.png)

> 🔼 This figure compares LEGION with existing image forgery detection methods.  It highlights that unlike other methods which only perform detection (Defender), LEGION performs multi-task analysis (including detection, segmentation, and explanation) and also acts as a controller in the image generation process. This 'Controller' aspect is unique to LEGION and allows it to guide the generation of higher-quality and more realistic images, addressing issues of current generation technologies.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison with Existing Image Forgery Detection Methods. LEGION not only serves as a Defender, enabling multi-task forgery analysis, but also functions as a Controller, facilitating high-quality image generation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1" style="font-size:298%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1" style="font-size:298%;">Pixel-level Mask</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.3.1" style="font-size:298%;">Explanation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.4.1" style="font-size:298%;">Artifact Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.5.1" style="font-size:298%;">Annotator</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.6.1" style="font-size:298%;">Valid Sample</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.1.2.1">
<span class="ltx_text" id="S3.T1.2.1.2.1.1" style="font-size:298%;">CNNSpot </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.2.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S3.T1.2.1.2.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.2"><span class="ltx_text" id="S3.T1.2.1.2.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.3"><span class="ltx_text" id="S3.T1.2.1.2.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.4"><span class="ltx_text" id="S3.T1.2.1.2.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.5"><span class="ltx_text" id="S3.T1.2.1.2.5.1" style="font-size:298%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.6"><span class="ltx_text" id="S3.T1.2.1.2.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.3.1">
<span class="ltx_text" id="S3.T1.2.1.3.1.1" style="font-size:298%;">CIFAKE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.3.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S3.T1.2.1.3.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2"><span class="ltx_text" id="S3.T1.2.1.3.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.3"><span class="ltx_text" id="S3.T1.2.1.3.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.4"><span class="ltx_text" id="S3.T1.2.1.3.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.5"><span class="ltx_text" id="S3.T1.2.1.3.5.1" style="font-size:298%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.6"><span class="ltx_text" id="S3.T1.2.1.3.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.4.1">
<span class="ltx_text" id="S3.T1.2.1.4.1.1" style="font-size:298%;">UniFD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.4.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S3.T1.2.1.4.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.2"><span class="ltx_text" id="S3.T1.2.1.4.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3"><span class="ltx_text" id="S3.T1.2.1.4.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.4"><span class="ltx_text" id="S3.T1.2.1.4.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.5"><span class="ltx_text" id="S3.T1.2.1.4.5.1" style="font-size:298%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.6"><span class="ltx_text" id="S3.T1.2.1.4.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.5.1">
<span class="ltx_text" id="S3.T1.2.1.5.1.1" style="font-size:298%;">GenImage </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.5.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="S3.T1.2.1.5.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2"><span class="ltx_text" id="S3.T1.2.1.5.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.3"><span class="ltx_text" id="S3.T1.2.1.5.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.4"><span class="ltx_text" id="S3.T1.2.1.5.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.5"><span class="ltx_text" id="S3.T1.2.1.5.5.1" style="font-size:298%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.6"><span class="ltx_text" id="S3.T1.2.1.5.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.6.1">
<span class="ltx_text" id="S3.T1.2.1.6.1.1" style="font-size:298%;">Chamelon </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.6.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S3.T1.2.1.6.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.2"><span class="ltx_text" id="S3.T1.2.1.6.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.3"><span class="ltx_text" id="S3.T1.2.1.6.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.4"><span class="ltx_text" id="S3.T1.2.1.6.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.5"><span class="ltx_text" id="S3.T1.2.1.6.5.1" style="font-size:298%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.6"><span class="ltx_text" id="S3.T1.2.1.6.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.7.1">
<span class="ltx_text" id="S3.T1.2.1.7.1.1" style="font-size:298%;">AI-Face </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.7.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S3.T1.2.1.7.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2"><span class="ltx_text" id="S3.T1.2.1.7.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.3"><span class="ltx_text" id="S3.T1.2.1.7.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.4"><span class="ltx_text" id="S3.T1.2.1.7.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.5"><span class="ltx_text" id="S3.T1.2.1.7.5.1" style="font-size:298%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.6"><span class="ltx_text" id="S3.T1.2.1.7.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.8.1">
<span class="ltx_text" id="S3.T1.2.1.8.1.1" style="font-size:298%;">PAL4VST </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.8.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="S3.T1.2.1.8.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.2"><span class="ltx_text" id="S3.T1.2.1.8.2.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.3"><span class="ltx_text" id="S3.T1.2.1.8.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.4"><span class="ltx_text" id="S3.T1.2.1.8.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.5"><span class="ltx_text" id="S3.T1.2.1.8.5.1" style="font-size:298%;">Human</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.6"><span class="ltx_text" id="S3.T1.2.1.8.6.1" style="font-size:298%;">10168</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.9.1">
<span class="ltx_text" id="S3.T1.2.1.9.1.1" style="font-size:298%;">RichHF-18K </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.9.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S3.T1.2.1.9.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.2"><span class="ltx_text" id="S3.T1.2.1.9.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.3"><span class="ltx_text" id="S3.T1.2.1.9.3.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.4"><span class="ltx_text" id="S3.T1.2.1.9.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.5"><span class="ltx_text" id="S3.T1.2.1.9.5.1" style="font-size:298%;">Human</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.6"><span class="ltx_text" id="S3.T1.2.1.9.6.1" style="font-size:298%;">11140</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.10.1">
<span class="ltx_text" id="S3.T1.2.1.10.1.1" style="font-size:298%;">LOKI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.10.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S3.T1.2.1.10.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.2"><span class="ltx_text" id="S3.T1.2.1.10.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.3"><span class="ltx_text" id="S3.T1.2.1.10.3.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.4"><span class="ltx_text" id="S3.T1.2.1.10.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.5"><span class="ltx_text" id="S3.T1.2.1.10.5.1" style="font-size:298%;">Human</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.10.6"><span class="ltx_text" id="S3.T1.2.1.10.6.1" style="font-size:298%;">229</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.11.1">
<span class="ltx_text" id="S3.T1.2.1.11.1.1" style="font-size:298%;">MMTD-Set </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.11.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S3.T1.2.1.11.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.2"><span class="ltx_text" id="S3.T1.2.1.11.2.1" style="font-size:298%;color:#FF6321;">✔<span class="ltx_text" id="S3.T1.2.1.11.2.1.1" style="position:relative; bottom:14.8pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.2.1.11.2.1.1.1" style="width:21.9pt;height:23.6pt;vertical-align:-5.4pt;"><span class="ltx_transformed_inner" style="width:19.9pt;transform:translate(1.02pt,0pt) rotate(-125deg) ;">
<span class="ltx_p" id="S3.T1.2.1.11.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.11.2.1.1.1.1.1">–</span></span>
</span></span></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.3"><span class="ltx_text" id="S3.T1.2.1.11.3.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.4"><span class="ltx_text" id="S3.T1.2.1.11.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.5"><span class="ltx_text" id="S3.T1.2.1.11.5.1" style="font-size:298%;">GPT-4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.11.6"><span class="ltx_text" id="S3.T1.2.1.11.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.12.1">
<span class="ltx_text" id="S3.T1.2.1.12.1.1" style="font-size:298%;">FF-VQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.12.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S3.T1.2.1.12.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.2"><span class="ltx_text" id="S3.T1.2.1.12.2.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.3"><span class="ltx_text" id="S3.T1.2.1.12.3.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.4"><span class="ltx_text" id="S3.T1.2.1.12.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.5"><span class="ltx_text" id="S3.T1.2.1.12.5.1" style="font-size:298%;">GPT-4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.6"><span class="ltx_text" id="S3.T1.2.1.12.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.1.13.1">
<span class="ltx_text" id="S3.T1.2.1.13.1.1" style="font-size:298%;">SID-Set </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.13.1.2.1" style="font-size:298%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S3.T1.2.1.13.1.3.2" style="font-size:298%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.2"><span class="ltx_text" id="S3.T1.2.1.13.2.1" style="font-size:298%;color:#FF6321;">✔<span class="ltx_text" id="S3.T1.2.1.13.2.1.1" style="position:relative; bottom:14.8pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.2.1.13.2.1.1.1" style="width:21.9pt;height:23.6pt;vertical-align:-5.4pt;"><span class="ltx_transformed_inner" style="width:19.9pt;transform:translate(1.02pt,0pt) rotate(-125deg) ;">
<span class="ltx_p" id="S3.T1.2.1.13.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.13.2.1.1.1.1.1">–</span></span>
</span></span></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.3"><span class="ltx_text" id="S3.T1.2.1.13.3.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.4"><span class="ltx_text" id="S3.T1.2.1.13.4.1" style="font-size:298%;color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.5"><span class="ltx_text" id="S3.T1.2.1.13.5.1" style="font-size:298%;">GPT-4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.13.6"><span class="ltx_text" id="S3.T1.2.1.13.6.1" style="font-size:298%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.2.1.14.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.14.1.1" style="font-size:298%;">SynthScars</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.14.2"><span class="ltx_text" id="S3.T1.2.1.14.2.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.14.3"><span class="ltx_text" id="S3.T1.2.1.14.3.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.14.4"><span class="ltx_text" id="S3.T1.2.1.14.4.1" style="font-size:298%;color:#00FF00;">✔</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.14.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.14.5.1" style="font-size:298%;">Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.14.6"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.14.6.1" style="font-size:298%;">12236</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares SynthScars with other existing image forgery datasets, highlighting key differences in annotation quality and the types of synthetic images included.  SynthScars stands out with its focus on fully synthesized images generated by modern techniques, featuring realistic styles, and providing both pixel-level masks and textual explanations for artifacts.  In contrast, many previous datasets relied on older generators, resulting in lower-quality, easier-to-detect synthetic images, and lacked complete or detailed annotations (indicated by the '-' in the last column). The '✔' symbol indicates datasets with images fully generated by modern common generators and realistic styles.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with Existing Image Forgery Datasets. The last column shows the number of samples fully synthesized by common generators, with realistic style and valid masks. ✔  –  denotes that only masks of tampered images are provided.
> </details>





### In-depth insights


#### MLLM for Forgery
While the exact phrase "MLLM for Forgery" isn't present, the research leverages **Multimodal Large Language Models (MLLMs)** extensively for synthetic image detection. The paper addresses limitations of existing forgery detection methods by incorporating MLLMs to achieve **artifact-level interpretability**, a feature often lacking in traditional approaches. LEGION utilizes MLLMs for **forgery analysis**, including localization, explanation generation, and detection. The MLLM's prior knowledge, reasoning, and expression abilities are crucial for generalization across diverse domains and robustness to perturbations. Instead of just detecting forgeries like existing works, LEGION explores using forgery explanations as feedback to enhance image generation, positioning the MLLM as a **controller** to refine images iteratively via prompt revision and guided inpainting. This represents a shift from a defensive to a generative application of forgery analysis, capitalizing on MLLMs to produce more realistic images. The experimental results highlight superior performance in both forgery detection and artifact explanation generation, demonstrating the potential of MLLMs in advancing synthetic image analysis and controlled image creation.

#### SynthScars: Dataset
The SynthScars dataset addresses limitations in synthetic image detection. **It avoids outdated, low-quality images and cartoon styles**, featuring fine-grained annotations with irregular polygons for precise artifact outlining, alongside detailed classifications and explanations. This dual-layer annotation—**spatial and explanatory**—enhances the dataset's value for advancing image detection research. The dataset includes high-quality synthetic images with diverse content types, offering pixel-level artifact annotations with detailed textual explanations. It categorizes artifacts into three types: physics, distortion, and structure. By doing so, this enables more targeted analysis and model training. The SynthScars includes 12,236 fully synthesized images across diverse real-world scenarios, categorized into human, object, animal, and scene. The dataset features 26,566 artifact instances, annotated with irregular polygon masks and classified into physics-related, distortion and structural anomalies. 

#### LEGION: Controller
The concept of LEGION as a "Controller" marks a significant shift in synthetic image detection, moving beyond simple identification of AI-generated artifacts towards actively guiding image generation for enhanced realism. **Instead of only acting as a Defender against potentially harmful AI-generated images, LEGION leverages its understanding of forgery indicators to refine the image creation process.** By integrating with image regeneration and inpainting pipelines, LEGION provides valuable feedback, correcting structural inconsistencies and refining styles. This Controller role optimizes both the image itself and the generative prompts, leading to more natural and aesthetically pleasing outcomes. **LEGION's function enhances not just detection but also the artistic and practical applications of image synthesis.**

#### Artifact Refinement
The research paper explores the concept of 'Artifact Refinement' as a crucial step in enhancing the quality and realism of synthetically generated images. Instead of solely focusing on artifact detection, the paper advocates for leveraging detection insights to guide refinement. **This proactive approach transforms the role of artifact analysis from a defensive measure to a generative tool.** The paper introduces two refinement strategies: prompt revision for image regeneration and inpainting to selectively correct artifact regions. **Prompt revision iteratively refines textual prompts based on artifact explanations to guide image generation towards higher fidelity.** Conversely, inpainting utilizes artifact masks and explanations to selectively refine anomalous regions while preserving the integrity of non-artifact areas. These techniques demonstrate a move towards closed-loop systems where detection feeds directly into generation, **pushing the boundaries of both domains and highlighting the potential for AI to self-improve its outputs.**

#### Generative Advancing
The concept of "Generative Advancing" is intriguing, highlighting the **reciprocal relationship between generative AI models and detection techniques**. As generative models become more sophisticated, detection methods must evolve to identify increasingly subtle forgeries. This arms race fosters advancements on both sides. Generative Advancing means not just improving image synthesis, but also **leveraging detection insights to guide further refinements in generation**. For example, understanding which artifacts are easily detected informs the development of new techniques to mitigate these flaws. By using the outputs of models like LEGION as feedback to the generation process, **images can iteratively get refined**, moving closer to photorealism and evading detection. This is a **shift from simply identifying fakes to proactively improving image quality**. However, there is also a crucial ethical dimension. The advancements enabled by this could lead to easier manipulation of data which needs careful attention.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15264/x2.png)

> 🔼 Figure 2 visualizes the SynthScars dataset, highlighting its improvements over previous datasets.  Panel (a) showcases the diversity of image content within the dataset, displaying examples of human subjects, objects, animals, and scenes. Panel (b) illustrates the fine-grained artifact annotations, such as physical distortions, structural inconsistencies, and other types of image manipulation. Panel (c) summarizes the limitations of existing datasets, contrasting them with the superior characteristics of SynthScars, which include higher quality synthetic images, more comprehensive annotations, and a more diverse range of artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 2: SynthScars Datasets. (a) shows image cases across four diverse content types. (b) presents annotation cases across different fine-grained artifact types. (c) enumerates drawbacks of previous datasets, which SynthScars perfectly addresses.
> </details>



![](https://arxiv.org/html/2503.15264/x3.png)

> 🔼 Figure 3 illustrates the architecture of LEGION, a novel framework for image forgery analysis.  Panel (a) details LEGION's components: a global image encoder, a large language model (LLM), a grounding image encoder, and a pixel decoder. These components work together to perform deepfake detection, artifact localization, and explanation generation.  Panels (b) and (c) show two pipelines that utilize LEGION as a controller to guide the generation of higher-quality images through iterative refinement. Panel (b) depicts an image regeneration pipeline using text-to-image (T2I) models and iterative prompt refinement based on LEGION's analysis. Panel (c) illustrates an image inpainting pipeline that uses LEGION's artifact location and explanation information to guide region-by-region inpainting.
> <details>
> <summary>read the caption</summary>
> Figure 3: Architecture Overview. (a) Our proposed framework for image forgery analysis, LEGION. (b) and (c) shows two pipelines for image generation. T2I in (b) is short for text-to-image, and Loca. and Expla. in (c) denotes Location and Explanation, respectively.
> </details>



![](https://arxiv.org/html/2503.15264/x4.png)

> 🔼 Figure 4 presents a visual comparison of artifact segmentation and explanations generated by three different methods: PAL4VST, InternVL2-8B, and LEGION (the authors' proposed method).  It shows how each method identifies and describes artifacts within sample synthetic images.  The ground truth is included to provide a benchmark for evaluating the accuracy and quality of the generated segmentations and explanations. This comparison highlights LEGION's ability to more accurately identify and describe artifacts compared to other approaches, demonstrating its superior performance in synthetic image analysis.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of artifact segmentation and explanations across different methods: PAL4VST, InternVL2-8B, and our proposed LEGION, alongside the ground truth.
> </details>



![](https://arxiv.org/html/2503.15264/x5.png)

> 🔼 This figure showcases two examples of image regeneration using the LEGION framework. The top example demonstrates style distortion adjustment, where the model refines an image to correct inconsistencies in style, such as removing cartoonish elements and enhancing realism. The bottom example shows detailed structure reshaping, where the model fixes structural anomalies in an image, such as correcting a deformed hand and adding missing elements. Both examples highlight the LEGION framework's ability to guide image generation towards higher-quality and more realistic images by providing feedback based on its forgery analysis.
> <details>
> <summary>read the caption</summary>
> Figure 5: Case studies of Image Regeneration. (Top) Style Distortion Adjustment, (Bottom) Detailed Structure Reshape.
> </details>



![](https://arxiv.org/html/2503.15264/x6.png)

> 🔼 This figure showcases an example of the image inpainting pipeline.  It demonstrates how the LEGION model iteratively identifies and corrects artifacts in a synthetic image. The example focuses on correcting reflections on water that violate physical laws (mismatched color and unrealistic window shape).  Each iteration highlights the refined region with progressively reduced artifacts, showing how LEGION guides the inpainting process to produce a more realistic and natural image.
> <details>
> <summary>read the caption</summary>
> Figure 6: Case Study of Image Inpainting.
> </details>



![](https://arxiv.org/html/2503.15264/x7.png)

> 🔼 This figure provides a detailed qualitative comparison of the artifact segmentation masks and their corresponding explanations generated by the proposed LEGION model against the ground truth.  The top row displays the ground truth annotations, showcasing the precise location and extent of the artifacts.  The bottom row shows the corresponding results produced by the LEGION model, enabling a visual assessment of the model's accuracy and ability to pinpoint and describe the artifacts. This comparison allows for a direct evaluation of the model's performance in terms of both the localization and description of the identified artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 7: More Visualization of Artifact Segmentation Masks and Corresponding Explanations for Identified Artifacts. The figure illustrates a qualitative comparison between the ground truth (Top row) and the corresponding predictions obtained from our proposed model (Bottom row).
> </details>



![](https://arxiv.org/html/2503.15264/x8.png)

> 🔼 Figure 8 presents several examples where the LEGION model, designed for synthetic image artifact detection, encounters difficulties.  The failures are categorized into two main types: complex scenes and tiny, subtle artifacts. Complex scenes refer to images with multiple elements making it hard to pinpoint small artifacts. Tiny, subtle artifacts refer to imperfections so small that they are difficult to detect even for the human eye. Each case shows the ground truth (top row) and the model's prediction (bottom row), including segmentation masks and textual descriptions explaining the model's performance and the nature of the artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 8: Examples of failures in complex scenes and intricate small artifacts. Each case includes artifacts segmentation mask and corresponding explanations. The first row depicts the ground truth, while the second row shows the corresponding predictions generated by our model.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.9">
<tr class="ltx_tr" id="S4.T2.9.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.9.10.1" rowspan="3" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.10.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S4.T2.9.10.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.10.2.1">
<span class="ltx_p" id="S4.T2.9.10.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.10.2.1.1.1" style="font-size:80%;">Source</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="8" id="S4.T2.9.10.3" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.10.3.1" style="font-size:80%;">SynthScars</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.9.10.4" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.10.4.1" style="font-size:80%;">LOKI</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="2" id="S4.T2.9.10.5" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.10.5.1" style="font-size:80%;">RichHF-18K</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.9.11.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.11.1.1">
<span class="ltx_p" id="S4.T2.9.11.1.1.1" style="width:28.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top" colspan="2" id="S4.T2.9.11.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.11.2.1" style="font-size:80%;">Object</span></td>
<td class="ltx_td ltx_align_center ltx_align_top" colspan="2" id="S4.T2.9.11.3" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.11.3.1" style="font-size:80%;">Animal</span></td>
<td class="ltx_td ltx_align_center ltx_align_top" colspan="2" id="S4.T2.9.11.4" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.11.4.1" style="font-size:80%;">Human</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r" colspan="2" id="S4.T2.9.11.5" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.11.5.1" style="font-size:80%;">Scene</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.9.11.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.11.6.1">
<span class="ltx_p" id="S4.T2.9.11.6.1.1" style="width:19.9pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.9.11.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.11.7.1">
<span class="ltx_p" id="S4.T2.9.11.7.1.1" style="width:19.9pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.9.11.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.11.8.1">
<span class="ltx_p" id="S4.T2.9.11.8.1.1" style="width:19.9pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.9.11.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.11.9.1">
<span class="ltx_p" id="S4.T2.9.11.9.1.1" style="width:19.9pt;"></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.9.12.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.1.1">
<span class="ltx_p" id="S4.T2.9.12.1.1.1" style="width:28.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.2.1">
<span class="ltx_p" id="S4.T2.9.12.2.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.2.1.1.1" style="font-size:80%;">mIoU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.3.1">
<span class="ltx_p" id="S4.T2.9.12.3.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.3.1.1.1" style="font-size:80%;">F1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.4.1">
<span class="ltx_p" id="S4.T2.9.12.4.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.4.1.1.1" style="font-size:80%;">mIoU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.5.1">
<span class="ltx_p" id="S4.T2.9.12.5.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.5.1.1.1" style="font-size:80%;">F1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.6.1">
<span class="ltx_p" id="S4.T2.9.12.6.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.6.1.1.1" style="font-size:80%;">mIoU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.7.1">
<span class="ltx_p" id="S4.T2.9.12.7.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.7.1.1.1" style="font-size:80%;">F1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.8.1">
<span class="ltx_p" id="S4.T2.9.12.8.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.8.1.1.1" style="font-size:80%;">mIoU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.9.12.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.9.1">
<span class="ltx_p" id="S4.T2.9.12.9.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.9.1.1.1" style="font-size:80%;">F1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.10.1">
<span class="ltx_p" id="S4.T2.9.12.10.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.10.1.1.1" style="font-size:80%;">mIoU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.9.12.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.11.1">
<span class="ltx_p" id="S4.T2.9.12.11.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.11.1.1.1" style="font-size:80%;">F1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.12.1">
<span class="ltx_p" id="S4.T2.9.12.12.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.12.1.1.1" style="font-size:80%;">mIoU</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.9.12.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.12.13.1">
<span class="ltx_p" id="S4.T2.9.12.13.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.12.13.1.1.1" style="font-size:80%;">F1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:80%;">HiFi-Net</span><math alttext="{}^{\text{\faStarO}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><msup id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.m1.1.1a" xref="S4.T2.1.1.1.m1.1.1.cmml"></mi><mtext class="undefined" id="S4.T2.1.1.1.m1.1.1.1" mathsize="142%" xref="S4.T2.1.1.1.m1.1.1.1b.cmml"><span class="ltx_ERROR undefined" id="S4.T2.1.1.1.m1.1.1.1.1nest">\faStarO</span></mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"><ci id="S4.T2.1.1.1.m1.1.1.1b.cmml" xref="S4.T2.1.1.1.m1.1.1.1"><mtext class="undefined" id="S4.T2.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1.1"><span class="ltx_ERROR undefined" id="S4.T2.1.1.1.m1.1.1.1.1anest">\faStarO</span></mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">{}^{\text{\faStarO}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">start_FLOATSUPERSCRIPT end_FLOATSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.1.1.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="S4.T2.1.1.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.1">
<span class="ltx_p" id="S4.T2.1.1.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.1.1.2.1.1.1" style="font-size:80%;">CVPR23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.1">
<span class="ltx_p" id="S4.T2.1.1.3.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.1.1" style="font-size:80%;">43.74</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.1">
<span class="ltx_p" id="S4.T2.1.1.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.4.1.1.1" style="font-size:80%;">0.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.1">
<span class="ltx_p" id="S4.T2.1.1.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.5.1.1.1" style="font-size:80%;">45.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.1">
<span class="ltx_p" id="S4.T2.1.1.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.6.1.1.1" style="font-size:80%;">0.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.1">
<span class="ltx_p" id="S4.T2.1.1.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.7.1.1.1" style="font-size:80%;">46.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.1">
<span class="ltx_p" id="S4.T2.1.1.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.8.1.1.1" style="font-size:80%;">0.84</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.9.1">
<span class="ltx_p" id="S4.T2.1.1.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.9.1.1.1" style="font-size:80%;">45.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.10.1">
<span class="ltx_p" id="S4.T2.1.1.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.10.1.1.1" style="font-size:80%;">0.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.11.1">
<span class="ltx_p" id="S4.T2.1.1.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.11.1.1.1" style="font-size:80%;">39.60</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.12.1">
<span class="ltx_p" id="S4.T2.1.1.12.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.12.1.1.1" style="font-size:80%;">2.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.13.1">
<span class="ltx_p" id="S4.T2.1.1.13.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.13.1.1.1" style="font-size:80%;">44.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.14.1">
<span class="ltx_p" id="S4.T2.1.1.14.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.1.1.14.1.1.1" style="font-size:80%;">0.39</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S4.T2.2.2.1.1" style="font-size:80%;">TruFor</span><math alttext="{}^{\text{\faStarO}}" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><msup id="S4.T2.2.2.1.m1.1.1" xref="S4.T2.2.2.1.m1.1.1.cmml"><mi id="S4.T2.2.2.1.m1.1.1a" xref="S4.T2.2.2.1.m1.1.1.cmml"></mi><mtext class="undefined" id="S4.T2.2.2.1.m1.1.1.1" mathsize="142%" xref="S4.T2.2.2.1.m1.1.1.1b.cmml"><span class="ltx_ERROR undefined" id="S4.T2.2.2.1.m1.1.1.1.1nest">\faStarO</span></mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><apply id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1"><ci id="S4.T2.2.2.1.m1.1.1.1b.cmml" xref="S4.T2.2.2.1.m1.1.1.1"><mtext class="undefined" id="S4.T2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1.1"><span class="ltx_ERROR undefined" id="S4.T2.2.2.1.m1.1.1.1.1anest">\faStarO</span></mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">{}^{\text{\faStarO}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">start_FLOATSUPERSCRIPT end_FLOATSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T2.2.2.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.2.2.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S4.T2.2.2.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.2.2.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.2.1">
<span class="ltx_p" id="S4.T2.2.2.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.2.2.2.1.1.1" style="font-size:80%;">CVPR23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.3.1">
<span class="ltx_p" id="S4.T2.2.2.3.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.3.1.1.1" style="font-size:80%;">46.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.4.1">
<span class="ltx_p" id="S4.T2.2.2.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.4.1.1.1" style="font-size:80%;">14.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.5.1">
<span class="ltx_p" id="S4.T2.2.2.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.5.1.1.1" style="font-size:80%;">48.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.6.1">
<span class="ltx_p" id="S4.T2.2.2.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.6.1.1.1" style="font-size:80%;">17.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.7.1">
<span class="ltx_p" id="S4.T2.2.2.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.7.1.1.1" style="font-size:80%;">49.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.8.1">
<span class="ltx_p" id="S4.T2.2.2.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.8.1.1.1" style="font-size:80%;">15.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.9.1">
<span class="ltx_p" id="S4.T2.2.2.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.9.1.1.1" style="font-size:80%;">48.93</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.2.2.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.10.1">
<span class="ltx_p" id="S4.T2.2.2.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.10.1.1.1" style="font-size:80%;">12.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.11.1">
<span class="ltx_p" id="S4.T2.2.2.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.11.1.1.1" style="font-size:80%;">46.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.2.2.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.12.1">
<span class="ltx_p" id="S4.T2.2.2.12.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.12.1.1.1" style="font-size:80%;">16.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.13.1">
<span class="ltx_p" id="S4.T2.2.2.13.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.2.2.13.1.1.1" style="font-size:80%;">48.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.2.2.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.14.1">
<span class="ltx_p" id="S4.T2.2.2.14.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.14.1.1.1" style="font-size:80%;">18.03</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S4.T2.3.3.1.1" style="font-size:80%;">PAL4VST</span><math alttext="{}^{\text{\faStarO*}}" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><msup id="S4.T2.3.3.1.m1.1.1" xref="S4.T2.3.3.1.m1.1.1.cmml"><mi id="S4.T2.3.3.1.m1.1.1a" xref="S4.T2.3.3.1.m1.1.1.cmml"></mi><mrow id="S4.T2.3.3.1.m1.1.1.1" xref="S4.T2.3.3.1.m1.1.1.1d.cmml"><mtext class="undefined" id="S4.T2.3.3.1.m1.1.1.1a" mathsize="142%" xref="S4.T2.3.3.1.m1.1.1.1d.cmml"><span class="ltx_ERROR undefined" id="S4.T2.3.3.1.m1.1.1.1.1nest">\faStarO</span></mtext><mtext id="S4.T2.3.3.1.m1.1.1.1c" mathsize="80%" xref="S4.T2.3.3.1.m1.1.1.1d.cmml">*</mtext></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><apply id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1"><ci id="S4.T2.3.3.1.m1.1.1.1d.cmml" xref="S4.T2.3.3.1.m1.1.1.1"><mrow id="S4.T2.3.3.1.m1.1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1.1"><mtext class="undefined" id="S4.T2.3.3.1.m1.1.1.1a.cmml" xref="S4.T2.3.3.1.m1.1.1.1"><span class="ltx_ERROR undefined" id="S4.T2.3.3.1.m1.1.1.1.1anest">\faStarO</span></mtext><mtext id="S4.T2.3.3.1.m1.1.1.1c.cmml" mathsize="56%" xref="S4.T2.3.3.1.m1.1.1.1">*</mtext></mrow></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">{}^{\text{\faStarO*}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">start_FLOATSUPERSCRIPT * end_FLOATSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T2.3.3.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.3.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="S4.T2.3.3.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.3.3.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.1">
<span class="ltx_p" id="S4.T2.3.3.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.3.3.2.1.1.1" style="font-size:80%;">ICCV23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.3.1">
<span class="ltx_p" id="S4.T2.3.3.3.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.3.1.1.1" style="font-size:80%;">50.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.4.1">
<span class="ltx_p" id="S4.T2.3.3.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.3.3.4.1.1.1" style="font-size:80%;">19.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.5.1">
<span class="ltx_p" id="S4.T2.3.3.5.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.5.1.1.1" style="font-size:80%;">52.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.6.1">
<span class="ltx_p" id="S4.T2.3.3.6.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.6.1.1.1" style="font-size:80%;">21.61</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.7.1">
<span class="ltx_p" id="S4.T2.3.3.7.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.7.1.1.1" style="font-size:80%;">59.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.8.1">
<span class="ltx_p" id="S4.T2.3.3.8.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.8.1.1.1" style="font-size:80%;">35.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.9.1">
<span class="ltx_p" id="S4.T2.3.3.9.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.9.1.1.1" style="font-size:80%;">52.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.3.3.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.10.1">
<span class="ltx_p" id="S4.T2.3.3.10.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.10.1.1.1" style="font-size:80%;">19.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.11.1">
<span class="ltx_p" id="S4.T2.3.3.11.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.11.1.1.1" style="font-size:80%;">47.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.3.3.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.12.1">
<span class="ltx_p" id="S4.T2.3.3.12.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.3.3.12.1.1.1" style="font-size:80%;">11.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.13.1">
<span class="ltx_p" id="S4.T2.3.3.13.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.3.13.1.1.1" style="font-size:80%;">49.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.3.3.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.14.1">
<span class="ltx_p" id="S4.T2.3.3.14.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.3.3.14.1.1.1" style="font-size:80%;">14.78</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="S4.T2.4.4.1.1" style="font-size:80%;color:#808080;">Ferret<sup class="ltx_sup" id="S4.T2.4.4.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.4.4.1.1.1.1">□</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.4.4.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.2.1">
<span class="ltx_p" id="S4.T2.4.4.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.4.4.2.1.1.1" style="font-size:80%;color:#808080;">ICLR24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.3.1">
<span class="ltx_p" id="S4.T2.4.4.3.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.3.1.1.1" style="font-size:80%;color:#808080;">30.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.4.1">
<span class="ltx_p" id="S4.T2.4.4.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.4.1.1.1" style="font-size:80%;color:#808080;">20.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.5.1">
<span class="ltx_p" id="S4.T2.4.4.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.5.1.1.1" style="font-size:80%;color:#808080;">27.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.6.1">
<span class="ltx_p" id="S4.T2.4.4.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.6.1.1.1" style="font-size:80%;color:#808080;">15.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.7.1">
<span class="ltx_p" id="S4.T2.4.4.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.7.1.1.1" style="font-size:80%;color:#808080;">25.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.8.1">
<span class="ltx_p" id="S4.T2.4.4.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.8.1.1.1" style="font-size:80%;color:#808080;">13.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.9.1">
<span class="ltx_p" id="S4.T2.4.4.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.9.1.1.1" style="font-size:80%;color:#808080;">30.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.4.4.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.10.1">
<span class="ltx_p" id="S4.T2.4.4.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.10.1.1.1" style="font-size:80%;color:#808080;">13.79</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.11.1">
<span class="ltx_p" id="S4.T2.4.4.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.11.1.1.1" style="font-size:80%;color:#808080;">24.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.4.4.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.12.1">
<span class="ltx_p" id="S4.T2.4.4.12.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.12.1.1.1" style="font-size:80%;color:#808080;">18.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.13.1">
<span class="ltx_p" id="S4.T2.4.4.13.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.13.1.1.1" style="font-size:80%;color:#808080;">26.52</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.4.4.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.14.1">
<span class="ltx_p" id="S4.T2.4.4.14.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.4.4.14.1.1.1" style="font-size:80%;color:#808080;">16.22</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="S4.T2.5.5.1.1" style="font-size:80%;color:#808080;">Griffon<sup class="ltx_sup" id="S4.T2.5.5.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.5.5.1.1.1.1">□</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.5.5.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.2.1">
<span class="ltx_p" id="S4.T2.5.5.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.5.5.2.1.1.1" style="font-size:80%;color:#808080;">ECCV24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.3.1">
<span class="ltx_p" id="S4.T2.5.5.3.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.3.1.1.1" style="font-size:80%;color:#808080;">38.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.4.1">
<span class="ltx_p" id="S4.T2.5.5.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.4.1.1.1" style="font-size:80%;color:#808080;">23.40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.5.1">
<span class="ltx_p" id="S4.T2.5.5.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.5.1.1.1" style="font-size:80%;color:#808080;">27.76</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.6.1">
<span class="ltx_p" id="S4.T2.5.5.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.6.1.1.1" style="font-size:80%;color:#808080;">18.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.7.1">
<span class="ltx_p" id="S4.T2.5.5.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.7.1.1.1" style="font-size:80%;color:#808080;">23.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.8.1">
<span class="ltx_p" id="S4.T2.5.5.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.8.1.1.1" style="font-size:80%;color:#808080;">14.81</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.9.1">
<span class="ltx_p" id="S4.T2.5.5.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.9.1.1.1" style="font-size:80%;color:#808080;">35.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.5.5.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.10.1">
<span class="ltx_p" id="S4.T2.5.5.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.10.1.1.1" style="font-size:80%;color:#808080;">14.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.11.1">
<span class="ltx_p" id="S4.T2.5.5.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.11.1.1.1" style="font-size:80%;color:#808080;">21.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.5.5.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.12.1">
<span class="ltx_p" id="S4.T2.5.5.12.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.12.1.1.1" style="font-size:80%;color:#808080;">20.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.13.1">
<span class="ltx_p" id="S4.T2.5.5.13.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.13.1.1.1" style="font-size:80%;color:#808080;">28.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.14.1">
<span class="ltx_p" id="S4.T2.5.5.14.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.5.5.14.1.1.1" style="font-size:80%;color:#808080;">18.19</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S4.T2.6.6.1.1" style="font-size:80%;">LISA-v1-7B</span><math alttext="{}^{\text{\faStarO*}}" class="ltx_Math" display="inline" id="S4.T2.6.6.1.m1.1"><semantics id="S4.T2.6.6.1.m1.1a"><msup id="S4.T2.6.6.1.m1.1.1" xref="S4.T2.6.6.1.m1.1.1.cmml"><mi id="S4.T2.6.6.1.m1.1.1a" xref="S4.T2.6.6.1.m1.1.1.cmml"></mi><mrow id="S4.T2.6.6.1.m1.1.1.1" xref="S4.T2.6.6.1.m1.1.1.1d.cmml"><mtext class="undefined" id="S4.T2.6.6.1.m1.1.1.1a" mathsize="142%" xref="S4.T2.6.6.1.m1.1.1.1d.cmml"><span class="ltx_ERROR undefined" id="S4.T2.6.6.1.m1.1.1.1.1nest">\faStarO</span></mtext><mtext id="S4.T2.6.6.1.m1.1.1.1c" mathsize="80%" xref="S4.T2.6.6.1.m1.1.1.1d.cmml">*</mtext></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.1.m1.1b"><apply id="S4.T2.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.1.m1.1.1"><ci id="S4.T2.6.6.1.m1.1.1.1d.cmml" xref="S4.T2.6.6.1.m1.1.1.1"><mrow id="S4.T2.6.6.1.m1.1.1.1.cmml" xref="S4.T2.6.6.1.m1.1.1.1"><mtext class="undefined" id="S4.T2.6.6.1.m1.1.1.1a.cmml" xref="S4.T2.6.6.1.m1.1.1.1"><span class="ltx_ERROR undefined" id="S4.T2.6.6.1.m1.1.1.1.1anest">\faStarO</span></mtext><mtext id="S4.T2.6.6.1.m1.1.1.1c.cmml" mathsize="56%" xref="S4.T2.6.6.1.m1.1.1.1">*</mtext></mrow></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.1.m1.1c">{}^{\text{\faStarO*}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.1.m1.1d">start_FLOATSUPERSCRIPT * end_FLOATSUPERSCRIPT</annotation></semantics></math><span class="ltx_text" id="S4.T2.6.6.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.6.6.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S4.T2.6.6.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.6.6.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.2.1">
<span class="ltx_p" id="S4.T2.6.6.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.6.6.2.1.1.1" style="font-size:80%;">CVPR24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.3.1">
<span class="ltx_p" id="S4.T2.6.6.3.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.3.1.1.1" style="font-size:80%;">35.49</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.4.1">
<span class="ltx_p" id="S4.T2.6.6.4.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.4.1.1.1" style="font-size:80%;">23.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.5.1">
<span class="ltx_p" id="S4.T2.6.6.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.5.1.1.1" style="font-size:80%;">32.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.1">
<span class="ltx_p" id="S4.T2.6.6.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.6.1.1.1" style="font-size:80%;">18.77</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.7.1">
<span class="ltx_p" id="S4.T2.6.6.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.7.1.1.1" style="font-size:80%;">34.11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.8.1">
<span class="ltx_p" id="S4.T2.6.6.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.8.1.1.1" style="font-size:80%;">17.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.9.1">
<span class="ltx_p" id="S4.T2.6.6.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.9.1.1.1" style="font-size:80%;">37.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.6.6.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.10.1">
<span class="ltx_p" id="S4.T2.6.6.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.10.1.1.1" style="font-size:80%;">18.31</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.11.1">
<span class="ltx_p" id="S4.T2.6.6.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.11.1.1.1" style="font-size:80%;">31.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.6.6.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.12.1">
<span class="ltx_p" id="S4.T2.6.6.12.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.12.1.1.1" style="font-size:80%;">9.29</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.13.1">
<span class="ltx_p" id="S4.T2.6.6.13.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.6.6.13.1.1.1" style="font-size:80%;">35.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.6.6.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.14.1">
<span class="ltx_p" id="S4.T2.6.6.14.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.14.1.1.1" style="font-size:80%;">21.94</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.7.7.1" style="padding:0.9pt 4.0pt;">
<span class="ltx_text" id="S4.T2.7.7.1.1" style="font-size:80%;">InternVL2-8B</span><sup class="ltx_sup" id="S4.T2.7.7.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.7.7.1.2.1" style="font-size:80%;">□</span></sup><span class="ltx_text" id="S4.T2.7.7.1.3" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.7.7.1.4.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S4.T2.7.7.1.5.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.7.7.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.2.1">
<span class="ltx_p" id="S4.T2.7.7.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.7.7.2.1.1.1" style="font-size:80%;">CVPR24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.3.1">
<span class="ltx_p" id="S4.T2.7.7.3.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.3.1.1.1" style="font-size:80%;">41.08</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.4.1">
<span class="ltx_p" id="S4.T2.7.7.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.4.1.1.1" style="font-size:80%;">13.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.5.1">
<span class="ltx_p" id="S4.T2.7.7.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.5.1.1.1" style="font-size:80%;">41.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.6.1">
<span class="ltx_p" id="S4.T2.7.7.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.6.1.1.1" style="font-size:80%;">7.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.7.1">
<span class="ltx_p" id="S4.T2.7.7.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.7.1.1.1" style="font-size:80%;">41.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.8.1">
<span class="ltx_p" id="S4.T2.7.7.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.8.1.1.1" style="font-size:80%;">3.91</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.9.1">
<span class="ltx_p" id="S4.T2.7.7.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.9.1.1.1" style="font-size:80%;">41.68</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.7.7.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.10.1">
<span class="ltx_p" id="S4.T2.7.7.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.10.1.1.1" style="font-size:80%;">7.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.11.1">
<span class="ltx_p" id="S4.T2.7.7.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.11.1.1.1" style="font-size:80%;">42.03</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.7.7.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.12.1">
<span class="ltx_p" id="S4.T2.7.7.12.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.12.1.1.1" style="font-size:80%;">10.06</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.13.1">
<span class="ltx_p" id="S4.T2.7.7.13.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.13.1.1.1" style="font-size:80%;">39.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.7.7.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.7.7.14.1">
<span class="ltx_p" id="S4.T2.7.7.14.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.7.7.14.1.1.1" style="font-size:80%;">9.58</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="S4.T2.8.8.1.1" style="font-size:80%;color:#808080;">Qwen2-VL-72B<sup class="ltx_sup" id="S4.T2.8.8.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.8.8.1.1.1.1">□</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.8.8.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.2.1">
<span class="ltx_p" id="S4.T2.8.8.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T2.8.8.2.1.1.1" style="font-size:80%;color:#808080;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.3.1">
<span class="ltx_p" id="S4.T2.8.8.3.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.3.1.1.1" style="font-size:80%;color:#808080;">33.89</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.4.1">
<span class="ltx_p" id="S4.T2.8.8.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.4.1.1.1" style="font-size:80%;color:#808080;">23.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.5.1">
<span class="ltx_p" id="S4.T2.8.8.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.5.1.1.1" style="font-size:80%;color:#808080;">32.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.6.1">
<span class="ltx_p" id="S4.T2.8.8.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.6.1.1.1" style="font-size:80%;color:#808080;">21.98</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.7.1">
<span class="ltx_p" id="S4.T2.8.8.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.7.1.1.1" style="font-size:80%;color:#808080;">26.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.8.1">
<span class="ltx_p" id="S4.T2.8.8.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.8.1.1.1" style="font-size:80%;color:#808080;">14.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.9.1">
<span class="ltx_p" id="S4.T2.8.8.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.9.1.1.1" style="font-size:80%;color:#808080;">39.00</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.8.8.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.10.1">
<span class="ltx_p" id="S4.T2.8.8.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.10.1.1.1" style="font-size:80%;color:#808080;">18.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.11.1">
<span class="ltx_p" id="S4.T2.8.8.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.11.1.1.1" style="font-size:80%;color:#808080;">26.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.8.8.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.12.1">
<span class="ltx_p" id="S4.T2.8.8.12.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.12.1.1.1" style="font-size:80%;color:#808080;">20.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.13.1">
<span class="ltx_p" id="S4.T2.8.8.13.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.13.1.1.1" style="font-size:80%;color:#808080;">27.58</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.8.8.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.8.8.14.1">
<span class="ltx_p" id="S4.T2.8.8.14.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.8.8.14.1.1.1" style="font-size:80%;color:#808080;">19.02</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9" style="background-color:#EBFFEB;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.9.9.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.1.1" style="font-size:80%;background-color:#EBFFEB;">LEGION<math alttext="{}^{\text{\faStarO}}" class="ltx_Math" display="inline" id="S4.T2.9.9.1.1.m1.1" style="background-color:#EBFFEB;"><semantics id="S4.T2.9.9.1.1.m1.1a"><msup id="S4.T2.9.9.1.1.m1.1.1" xref="S4.T2.9.9.1.1.m1.1.1.cmml"><mi id="S4.T2.9.9.1.1.m1.1.1a" xref="S4.T2.9.9.1.1.m1.1.1.cmml"></mi><mtext class="undefined ltx_mathvariant_bold" id="S4.T2.9.9.1.1.m1.1.1.1" mathbackground="#EBFFEB" mathsize="114%" xref="S4.T2.9.9.1.1.m1.1.1.1b.cmml"><span class="ltx_ERROR undefined" id="S4.T2.9.9.1.1.m1.1.1.1.1nest">\faStarO</span></mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.1.1.m1.1b"><apply id="S4.T2.9.9.1.1.m1.1.1.cmml" xref="S4.T2.9.9.1.1.m1.1.1"><ci id="S4.T2.9.9.1.1.m1.1.1.1b.cmml" xref="S4.T2.9.9.1.1.m1.1.1.1"><mtext class="undefined ltx_mathvariant_bold" id="S4.T2.9.9.1.1.m1.1.1.1.cmml" mathbackground="#EBFFEB" xref="S4.T2.9.9.1.1.m1.1.1.1"><span class="ltx_ERROR undefined" id="S4.T2.9.9.1.1.m1.1.1.1.1anest">\faStarO</span></mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.1.1.m1.1c">{}^{\text{\faStarO}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.1.1.m1.1d">start_FLOATSUPERSCRIPT end_FLOATSUPERSCRIPT</annotation></semantics></math> (Ours)</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.9.9.2" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.2.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S4.T2.9.9.2.1.1.1" style="font-size:80%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.3" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.3.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.3.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.3.1.1.1" style="font-size:80%;">54.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.4" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.4.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.4.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.4.1.1.1" style="font-size:80%;">29.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.5" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.5.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.5.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.5.1.1.1" style="font-size:80%;">54.52</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.6" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.6.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.6.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.6.1.1.1" style="font-size:80%;">27.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.7" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.7.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.7.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.7.1.1.1" style="font-size:80%;">60.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.8" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.8.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.8.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.8.1.1.1" style="font-size:80%;">39.44</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.9" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.9.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.9.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.1.1.1" style="font-size:80%;">53.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.9.9.10" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.10.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.10.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.10.1.1.1" style="font-size:80%;">24.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.11" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.11.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.11.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.11.1.1.1" style="font-size:80%;">48.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.9.9.12" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.12.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.12.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.12.1.1.1" style="font-size:80%;">16.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.13" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.13.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.13.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.13.1.1.1" style="font-size:80%;">50.07</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.9.9.14" style="padding:0.9pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.9.9.14.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S4.T2.9.9.14.1.1" style="width:19.9pt;"><span class="ltx_text" id="S4.T2.9.9.14.1.1.1" style="font-size:80%;">17.41</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a performance comparison of different methods for artifact localization in synthetic images.  It evaluates these methods on three datasets: SynthScars (a new dataset introduced in the paper), LOKI, and RichHF-18K. The table shows the mean Intersection over Union (mIoU) and F1 score achieved by each method on each dataset, for three different categories of objects (human, animal, and scene).  Note that methods marked with a ∗ are fine-tuned on SynthScars, while others use pre-trained weights due to limitations in obtaining training code.  The symbols ☆ and □ indicate whether the model outputs segmentation masks or bounding boxes, respectively.  Rows in gray represent methods that incorrectly identify most of the image as artifacts and are thus excluded from the main comparison.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance Comparison of Artifact Localization on SynthScars and Two Benchmarks in Unseen Domains. ∗*∗ denotes methods fine-tuned on SynthScars, while others use pre-trained weights due to unavailable training code. \faStarO and □bold-□\bm{\square}bold_□ represent the models that output segmentation masks and bounding boxes, respectively. Grayed approaches predict most of the image as artifacts and are only for reference, not included in the comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.4.4">
<tr class="ltx_tr" id="S5.T3.4.4.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.4.4.5.1" rowspan="2" style="padding:1.2pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S5.T3.4.4.5.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.5.2.1">
<span class="ltx_p" id="S5.T3.4.4.5.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.2.1.1.1" style="font-size:80%;">Date</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S5.T3.4.4.5.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.5.3.1">
<span class="ltx_p" id="S5.T3.4.4.5.3.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.3.1.1.1" style="font-size:80%;">Params</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="S5.T3.4.4.5.4" style="padding:1.2pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.4.1" style="font-size:80%;">SynthScars</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top ltx_border_tt" colspan="2" id="S5.T3.4.4.5.5" style="padding:1.2pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.5.5.1" style="font-size:80%;">LOKI</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.4.5" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.4.5.1">
<span class="ltx_p" id="S5.T3.4.4.4.5.1.1" style="width:28.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.4.6" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.4.6.1">
<span class="ltx_p" id="S5.T3.4.4.4.6.1.1" style="width:28.5pt;"></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.1.1.1" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.1.1.1.1">
<span class="ltx_p" id="S5.T3.1.1.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1.1.1" style="font-size:80%;">ROUGE-L<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.2.2.2.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.2.2.2.1">
<span class="ltx_p" id="S5.T3.2.2.2.2.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.2.1.1.1" style="font-size:80%;">CSS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.1.1.1.m1.1"><semantics id="S5.T3.2.2.2.2.1.1.1.m1.1a"><mo id="S5.T3.2.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.1.1.1.m1.1b"><ci id="S5.T3.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S5.T3.2.2.2.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.3.3.3.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.3.3.3.3.1">
<span class="ltx_p" id="S5.T3.3.3.3.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.3.3.1.1.1" style="font-size:80%;">ROUGE-L<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.1.1.1.m1.1"><semantics id="S5.T3.3.3.3.3.1.1.1.m1.1a"><mo id="S5.T3.3.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.1.1.1.m1.1b"><ci id="S5.T3.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S5.T3.3.3.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.4.4.4" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.4.4.1">
<span class="ltx_p" id="S5.T3.4.4.4.4.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.4.1.1.1" style="font-size:80%;">CSS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.1.1.1.m1.1"><semantics id="S5.T3.4.4.4.4.1.1.1.m1.1a"><mo id="S5.T3.4.4.4.4.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.1.1.1.m1.1b"><ci id="S5.T3.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S5.T3.4.4.4.4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.4.4.6.1" style="padding:1.2pt 1.0pt;">
<span class="ltx_text" id="S5.T3.4.4.6.1.1" style="font-size:80%;">Qwen2-VL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.4.4.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S5.T3.4.4.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.4.4.6.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.6.2.1">
<span class="ltx_p" id="S5.T3.4.4.6.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.6.2.1.1.1" style="font-size:80%;">24.09</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.4.4.6.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.6.3.1">
<span class="ltx_p" id="S5.T3.4.4.6.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.6.3.1.1.1" style="font-size:80%;">72B</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.4.6.4" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.6.4.1">
<span class="ltx_p" id="S5.T3.4.4.6.4.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.6.4.1.1.1" style="font-size:80%;">25.84</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.4.4.6.5" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.6.5.1">
<span class="ltx_p" id="S5.T3.4.4.6.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.6.5.1.1.1" style="font-size:80%;">58.15</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.4.6.6" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.6.6.1">
<span class="ltx_p" id="S5.T3.4.4.6.6.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.6.6.1.1.1" style="font-size:80%;">11.80</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.4.4.6.7" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.6.7.1">
<span class="ltx_p" id="S5.T3.4.4.6.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.6.7.1.1.1" style="font-size:80%;">37.64</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.4.4.7.1" style="padding:1.2pt 1.0pt;">
<span class="ltx_text" id="S5.T3.4.4.7.1.1" style="font-size:80%;">LLaVA-v1.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.4.4.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S5.T3.4.4.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.7.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.7.2.1">
<span class="ltx_p" id="S5.T3.4.4.7.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.7.2.1.1.1" style="font-size:80%;">24.01</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.7.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.7.3.1">
<span class="ltx_p" id="S5.T3.4.4.7.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.7.3.1.1.1" style="font-size:80%;">7B</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.7.4" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.7.4.1">
<span class="ltx_p" id="S5.T3.4.4.7.4.1.1" style="width:42.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.7.4.1.1.1" style="font-size:80%;">29.61</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.7.5" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.7.5.1">
<span class="ltx_p" id="S5.T3.4.4.7.5.1.1" style="width:39.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.7.5.1.1.1" style="font-size:80%;">61.75</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.7.6" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.7.6.1">
<span class="ltx_p" id="S5.T3.4.4.7.6.1.1" style="width:42.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.7.6.1.1.1" style="font-size:80%;">16.07</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.7.7" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.7.7.1">
<span class="ltx_p" id="S5.T3.4.4.7.7.1.1" style="width:39.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.7.7.1.1.1" style="font-size:80%;">41.07</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.4.4.8.1" style="padding:1.2pt 1.0pt;">
<span class="ltx_text" id="S5.T3.4.4.8.1.1" style="font-size:80%;">InternVL2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.4.4.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S5.T3.4.4.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.8.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.8.2.1">
<span class="ltx_p" id="S5.T3.4.4.8.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.8.2.1.1.1" style="font-size:80%;">24.07</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.8.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.8.3.1">
<span class="ltx_p" id="S5.T3.4.4.8.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.8.3.1.1.1" style="font-size:80%;">8B</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.8.4" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.8.4.1">
<span class="ltx_p" id="S5.T3.4.4.8.4.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.8.4.1.1.1" style="font-size:80%;">25.93</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.8.5" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.8.5.1">
<span class="ltx_p" id="S5.T3.4.4.8.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.8.5.1.1.1" style="font-size:80%;">56.89</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.8.6" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.8.6.1">
<span class="ltx_p" id="S5.T3.4.4.8.6.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.8.6.1.1.1" style="font-size:80%;">10.10</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.8.7" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.8.7.1">
<span class="ltx_p" id="S5.T3.4.4.8.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.8.7.1.1.1" style="font-size:80%;">39.62</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.4.4.9.1" style="padding:1.2pt 1.0pt;">
<span class="ltx_text" id="S5.T3.4.4.9.1.1" style="font-size:80%;">Deepseek-VL2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.4.4.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="S5.T3.4.4.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.9.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.9.2.1">
<span class="ltx_p" id="S5.T3.4.4.9.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.9.2.1.1.1" style="font-size:80%;">24.12</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.9.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.9.3.1">
<span class="ltx_p" id="S5.T3.4.4.9.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.9.3.1.1.1" style="font-size:80%;">27B</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.9.4" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.9.4.1">
<span class="ltx_p" id="S5.T3.4.4.9.4.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.9.4.1.1.1" style="font-size:80%;">25.50</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.9.5" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.9.5.1">
<span class="ltx_p" id="S5.T3.4.4.9.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.9.5.1.1.1" style="font-size:80%;">47.77</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.9.6" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.9.6.1">
<span class="ltx_p" id="S5.T3.4.4.9.6.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.9.6.1.1.1" style="font-size:80%;">6.70</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.9.7" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.9.7.1">
<span class="ltx_p" id="S5.T3.4.4.9.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.9.7.1.1.1" style="font-size:80%;">28.76</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.4.4.10.1" style="padding:1.2pt 1.0pt;">
<span class="ltx_text" id="S5.T3.4.4.10.1.1" style="font-size:80%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.4.4.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T3.4.4.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.10.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.10.2.1">
<span class="ltx_p" id="S5.T3.4.4.10.2.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.10.2.1.1.1" style="font-size:80%;">24.12</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.10.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.10.3.1">
<span class="ltx_p" id="S5.T3.4.4.10.3.1.1" style="width:28.5pt;"><span class="ltx_text" id="S5.T3.4.4.10.3.1.1.1" style="font-size:80%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.10.4" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.10.4.1">
<span class="ltx_p" id="S5.T3.4.4.10.4.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.10.4.1.1.1" style="font-size:80%;">22.43</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_r" id="S5.T3.4.4.10.5" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.10.5.1">
<span class="ltx_p" id="S5.T3.4.4.10.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.10.5.1.1.1" style="font-size:80%;">53.55</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.10.6" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.10.6.1">
<span class="ltx_p" id="S5.T3.4.4.10.6.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.4.4.10.6.1.1.1" style="font-size:80%;">9.61</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T3.4.4.10.7" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.10.7.1">
<span class="ltx_p" id="S5.T3.4.4.10.7.1.1" style="width:39.8pt;"><span class="ltx_text" id="S5.T3.4.4.10.7.1.1.1" style="font-size:80%;">38.98</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.11" style="background-color:#EBFFEB;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.4.4.11.1" style="padding:1.2pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.11.1.1" style="font-size:80%;background-color:#EBFFEB;">LEGION (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T3.4.4.11.2" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.11.2.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S5.T3.4.4.11.2.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.11.2.1.1.1" style="font-size:80%;">25.03</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T3.4.4.11.3" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.11.3.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S5.T3.4.4.11.3.1.1" style="width:28.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.11.3.1.1.1" style="font-size:80%;">8B</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.4.4.11.4" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.11.4.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S5.T3.4.4.11.4.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.11.4.1.1.1" style="font-size:80%;">39.50</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S5.T3.4.4.11.5" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.11.5.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S5.T3.4.4.11.5.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.11.5.1.1.1" style="font-size:80%;">72.60</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.4.4.11.6" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.11.6.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S5.T3.4.4.11.6.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.11.6.1.1.1" style="font-size:80%;">18.55</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.4.4.11.7" style="padding:1.2pt 1.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.4.4.11.7.1" style="background-color:#EBFFEB;">
<span class="ltx_p" id="S5.T3.4.4.11.7.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.11.7.1.1.1" style="font-size:80%;">45.96</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of various multimodal models' performance in generating artifact explanations for synthetic images.  The models are evaluated using two metrics: ROUGE-L, assessing lexical overlap and semantic similarity, and Cosine Similarity Score (CSS), measuring the semantic similarity between generated explanations and ground truth. Scores are normalized to a 0-100 range for easier visual comparison and understanding.  The table allows for a direct assessment of how effectively these different models can provide detailed and accurate textual descriptions of identified image artifacts.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of Multimodal Models in Artifact Explanation Generation. Metrics are normalized to the range of 0–100 for better visualization and comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1">
<tr class="ltx_tr" id="S5.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.1.2.1" style="padding:0.6pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.1" style="font-size:80%;">HPS</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S5.T4.1.2.2" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.2.2.1">
<span class="ltx_p" id="S5.T4.1.2.2.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.2.1.1.1" style="font-size:80%;">Regeneration</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T4.1.2.3" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.2.3.1">
<span class="ltx_p" id="S5.T4.1.2.3.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.3.1.1.1" style="font-size:80%;">Inpainting</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.1.3.1" style="padding:0.6pt 2.5pt;"><span class="ltx_text" id="S5.T4.1.3.1.1" style="font-size:80%;">Pre-refined Score (Avg.)</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T4.1.3.2" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.3.2.1">
<span class="ltx_p" id="S5.T4.1.3.2.1.1" style="width:56.9pt;"><span class="ltx_text" id="S5.T4.1.3.2.1.1.1" style="font-size:80%;">31.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.3.3" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.3.3.1">
<span class="ltx_p" id="S5.T4.1.3.3.1.1" style="width:56.9pt;"><span class="ltx_text" id="S5.T4.1.3.3.1.1.1" style="font-size:80%;">29.57</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.4.1" style="padding:0.6pt 2.5pt;"><span class="ltx_text" id="S5.T4.1.4.1.1" style="font-size:80%;">Post-refined Score (Avg.)</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S5.T4.1.4.2" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.4.2.1">
<span class="ltx_p" id="S5.T4.1.4.2.1.1" style="width:56.9pt;"><span class="ltx_text" id="S5.T4.1.4.2.1.1.1" style="font-size:80%;">33.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.1.4.3" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.4.3.1">
<span class="ltx_p" id="S5.T4.1.4.3.1.1" style="width:56.9pt;"><span class="ltx_text" id="S5.T4.1.4.3.1.1.1" style="font-size:80%;">30.20</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.1.1.1" style="padding:0.6pt 2.5pt;">
<span class="ltx_text" id="S5.T4.1.1.1.1" style="font-size:80%;">Growth Rate </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S5.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.1.1.2" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.2.1">
<span class="ltx_p" id="S5.T4.1.1.2.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.1.1" style="font-size:80%;">6.98%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T4.1.1.3" style="padding:0.6pt 2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.3.1">
<span class="ltx_p" id="S5.T4.1.1.3.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.1.1" style="font-size:80%;">2.14%</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Human Preference Scores (HPS) for image quality before and after applying image refinement techniques.  Specifically, it shows the average HPS for images before refinement, after regeneration-based refinement, and after inpainting-based refinement. The HPS values are normalized to a 0-100 scale for easier comparison. The growth rate (percentage increase) in the average HPS after refinement is also provided, highlighting the effectiveness of the refinement methods in improving image quality.
> <details>
> <summary>read the caption</summary>
> Table 4: HPS Comparison Before and After Refinement in Regeneration and Inpainting. Scores are normalized to the range of 0–100 for better visualization and comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.2.1">
<tr class="ltx_tr" id="S5.T5.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.2.1.1.1" rowspan="2" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.2.1.1.2" rowspan="2" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.2.1" style="font-size:80%;">GANs</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.2.1.1.3" rowspan="2" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.3.1" style="font-size:80%;">Deepfakes</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.2.1.1.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.4.1" style="font-size:80%;">Perceptual Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S5.T5.2.1.1.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.5.1" style="font-size:80%;">Low Level Vision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.6" rowspan="2" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.6.1" style="font-size:80%;">Diffusion</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.2">
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.2.1" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.2.1.1" style="font-size:80%;">CRN</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.2.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.2.2.1" style="font-size:80%;">IMLE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.2.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.2.3.1" style="font-size:80%;">SITD</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.2.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.2.4.1" style="font-size:80%;">SAN</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.2.1.3.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.3.1.1" style="font-size:80%;">Co-occurence </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S5.T5.2.1.3.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.2.1.3.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.3.2.1" style="font-size:80%;">75.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.2.1.3.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.3.3.1" style="font-size:80%;">59.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.3.4.1" style="font-size:80%;">73.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.2.1.3.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.2.1.3.5.1" style="font-size:80%;">87.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.3.6.1" style="font-size:80%;">68.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.2.1.3.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.3.7.1" style="font-size:80%;">60.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.3.8.1" style="font-size:80%;">85.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.4.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.4.1.1" style="font-size:80%;">Freq-spec </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S5.T5.2.1.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.4.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.2.1.4.2.1" style="font-size:80%;">75.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.4.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.4.3.1" style="font-size:80%;">45.18</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.4.4.1" style="font-size:80%;">53.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.4.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.4.5.1" style="font-size:80%;">50.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.4.6.1" style="font-size:80%;">47.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.4.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.4.7.1" style="font-size:80%;">57.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.4.8.1" style="font-size:80%;">69.00</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.5.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.5.1.1" style="font-size:80%;">CNNSpot </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S5.T5.2.1.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.5.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.5.2.1" style="font-size:80%;">85.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.5.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.5.3.1" style="font-size:80%;">53.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.2.1.5.4.1" style="font-size:80%;">86.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.5.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.5.5.1" style="font-size:80%;">86.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.5.6.1" style="font-size:80%;">66.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.5.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.5.7.1" style="font-size:80%;">48.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.5.8.1" style="font-size:80%;">58.63</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.6.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.6.1.1" style="font-size:80%;">Patchfor </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S5.T5.2.1.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.6.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.6.2.1" style="font-size:80%;">69.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.6.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.6.3.1" style="font-size:80%;">75.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.6.4.1" style="font-size:80%;">72.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.6.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.6.5.1" style="font-size:80%;">55.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.6.6.1" style="font-size:80%;">75.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.6.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.6.7.1" style="font-size:80%;">75.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.6.8.1" style="font-size:80%;">72.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.7.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.7.1.1" style="font-size:80%;">UniFD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S5.T5.2.1.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.7.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.7.2.1" style="font-size:80%;">95.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.7.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.7.3.1" style="font-size:80%;">66.60</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.7.4.1" style="font-size:80%;">59.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.7.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.7.5.1" style="font-size:80%;">72.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.7.6.1" style="font-size:80%;">63.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.7.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.7.7.1" style="font-size:80%;">57.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.7.8.1" style="font-size:80%;">82.02</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.8.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.8.1.1" style="font-size:80%;">LDGard </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S5.T5.2.1.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.8.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.2.1" style="font-size:80%;">89.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.8.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.3.1" style="font-size:80%;">58.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.4.1" style="font-size:80%;">50.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.8.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.5.1" style="font-size:80%;">50.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.6.1" style="font-size:80%;">62.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.8.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.7.1" style="font-size:80%;">50.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.2.1.8.8.1" style="font-size:80%;">89.79</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.9.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.9.1.1" style="font-size:80%;">FreqNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S5.T5.2.1.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.9.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.9.2.1" style="font-size:80%;">94.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.9.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.9.3.1" style="font-size:80%;">97.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.9.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.9.4.1" style="font-size:80%;">71.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.9.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.9.5.1" style="font-size:80%;">67.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.9.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.9.6.1" style="font-size:80%;">88.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.9.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.9.7.1" style="font-size:80%;">59.04</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.9.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.9.8.1" style="font-size:80%;">83.34</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.10.1" style="padding:0.8pt 2.0pt;">
<span class="ltx_text" id="S5.T5.2.1.10.1.1" style="font-size:80%;">NPR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.1.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.15264v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S5.T5.2.1.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.10.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.10.2.1" style="font-size:80%;">94.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.10.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.2.1.10.3.1" style="font-size:80%;">76.89</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.10.4.1" style="font-size:80%;">50.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.10.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.10.5.1" style="font-size:80%;">50.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.10.6.1" style="font-size:80%;">66.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.2.1.10.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.10.7.1" style="font-size:80%;">98.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.10.8.1" style="font-size:80%;">94.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.11" style="background-color:#EBFFEB;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.2.1.11.1" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.11.1.1" style="font-size:80%;background-color:#EBFFEB;">LEGION (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.2.1.11.2" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.11.2.1" style="font-size:80%;background-color:#EBFFEB;">97.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.2.1.11.3" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.11.3.1" style="font-size:80%;background-color:#EBFFEB;">63.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.11.4" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.11.4.1" style="font-size:80%;background-color:#EBFFEB;">90.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.2.1.11.5" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.11.5.1" style="font-size:80%;background-color:#EBFFEB;">98.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.11.6" style="padding:0.8pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.2.1.11.6.1" style="font-size:80%;background-color:#EBFFEB;">79.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.2.1.11.7" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.11.7.1" style="font-size:80%;background-color:#EBFFEB;">57.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.11.8" style="padding:0.8pt 2.0pt;"><span class="ltx_text" id="S5.T5.2.1.11.8.1" style="font-size:80%;background-color:#EBFFEB;">83.10</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various methods for synthetic image detection, evaluated on the UniversalFakeDetect benchmark.  The performance of each method is shown across different generative models (GANs, CRN, IMLE, SITD, SAN, and SAS). All the models listed in the table were trained using ProGAN. This allows for an assessment of generalization capabilities of different approaches in detecting synthetic images generated from various sources.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of Synthetic Image Detection on UniversalFakeDetect Benchmark. All methods are trained on ProGAN.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.2.1">
<tr class="ltx_tr" id="A1.T6.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.1">Image Content</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.2.1">Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.3.1">Object</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.4.1">Animal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.2.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.5.1">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.6.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.2.1.1">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.2.2">6253</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.2.3">1940</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.2.4">1183</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.2.1.2.5">1860</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.2.6">11236</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.2.1.3.1"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.3.1.1">Test</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.1.3.2">587</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.1.3.3">162</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.1.3.4">134</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.2.1.3.5">117</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.1.3.6">1000</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T6.2.1.4.1"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.4.1.1">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.2">6840</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.3">2102</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.4">1317</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T6.2.1.4.5">1977</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.6">12236</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a statistical overview of the SynthScars dataset, highlighting the diversity of its image content. It shows the distribution of 12,236 fully synthetic images across four categories: Human, Object, Animal, and Scene.  The numbers indicate the count of images in each category within the training and test sets, and the total number across both sets. This table is crucial in demonstrating the comprehensiveness and realism of the SynthScars dataset, which includes images generated from various sources. The dataset's broad representation of real-world scenarios enhances its suitability for training robust and generalized synthetic image detection models.
> <details>
> <summary>read the caption</summary>
> Table 6: Statistics on Image Content. SynthScars encompasses a diverse range of real-world scenarios, including 12,236 fully synthesized images from different generators.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.2.1">
<tr class="ltx_tr" id="A1.T7.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T7.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.1">Artifact Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.2.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.2.1">Physics</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.2.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.3.1">Distortion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T7.2.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.4.1">Structure</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.2.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.5.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.2.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.1.1">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.2.2">1431</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.2.3">1249</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.2.1.2.4">21233</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.2.5">23913</td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.2.1.3.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.3.1.1">Test</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.3.2">111</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.3.3">136</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.2.1.3.4">2406</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.3.5">2653</td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T7.2.1.4.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.4.1.1">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.2.1.4.2">1542</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.2.1.4.3">1385</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T7.2.1.4.4">23639</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.2.1.4.5">26566</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a detailed breakdown of artifact types within the SynthScars dataset.  It shows the number of instances for each of the three fine-grained anomaly categories (Physics, Distortion, and Structure) in both the training and testing sets, totaling 26,566 artifact instances across the entire dataset. This table highlights the diversity and granularity of the annotations in SynthScars, emphasizing its value for evaluating and developing robust synthetic image detection models.
> <details>
> <summary>read the caption</summary>
> Table 7: Statistics on Artifact Types. SynthScars classifies artifacts into three fine-grained anomaly types, and contains a total of 26,566 artifact instances.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1.p1.pic1.1.1.1.1.1">
<tr class="ltx_tr" id="A2.T8.1.p1.pic1.1.1.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.p1.pic1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.p1.pic1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A2.T8.1.p1.pic1.1.1.1.1.1.1.1.1.1" style="width:472.0pt;"><span class="ltx_text ltx_font_typewriter" id="A2.T8.1.p1.pic1.1.1.1.1.1.1.1.1.1.1" style="font-size:90%;"></span><span class="ltx_text ltx_font_bold" id="A2.T8.1.p1.pic1.1.1.1.1.1.1.1.1.1.2">Artifact Definition</span></span>
</span>
</td>
<td class="ltx_td" id="A2.T8.1.p1.pic1.1.1.1.1.1.1.2"></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.p1.pic1.1.1.1.1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.p1.pic1.1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.p1.pic1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A2.T8.1.p1.pic1.1.1.1.1.1.2.1.1.1" style="width:472.0pt;">
<span class="ltx_enumerate" id="A2.I1">
<span class="ltx_item" id="A2.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">1.</span>
<span class="ltx_para" id="A2.I1.i1.p1">
<span class="ltx_p" id="A2.I1.i1.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i1.p1.1.1" style="font-size:90%;">Physics</span><span class="ltx_text" id="A2.I1.i1.p1.1.2" style="font-size:90%;"></span></span>
<span class="ltx_enumerate" id="A2.I1.i1.I1">
<span class="ltx_item" id="A2.I1.i1.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(a)</span>
<span class="ltx_para" id="A2.I1.i1.I1.i1.p1">
<span class="ltx_p" id="A2.I1.i1.I1.i1.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i1.I1.i1.p1.1.1" style="font-size:90%;">Optical Display</span><span class="ltx_text" id="A2.I1.i1.I1.i1.p1.1.2" style="font-size:90%;">: These artifacts arise from inconsistencies in the propagation and reflection of light, violating fundamental optical principles. They can occur across different objects and scenes, leading to unrealistic visual effects. Common cases include incorrect reflections, shadows, and light source positioning errors, causing synthetic images to deviate from real-world optical phenomena.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i1.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(b)</span>
<span class="ltx_para" id="A2.I1.i1.I1.i2.p1">
<span class="ltx_p" id="A2.I1.i1.I1.i2.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i1.I1.i2.p1.1.1" style="font-size:90%;">Physical Law Violations</span><span class="ltx_text" id="A2.I1.i1.I1.i2.p1.1.2" style="font-size:90%;">: These artifacts result from the failure to adhere to fundamental physical laws during image synthesis. They typically manifest as illogical scenes, such as water flowing upward or objects floating in mid-air, which contradict natural laws.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i1.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(c)</span>
<span class="ltx_para" id="A2.I1.i1.I1.i3.p1">
<span class="ltx_p" id="A2.I1.i1.I1.i3.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i1.I1.i3.p1.1.1" style="font-size:90%;">Space and Perspective</span><span class="ltx_text" id="A2.I1.i1.I1.i3.p1.1.2" style="font-size:90%;">: These artifacts stem from inaccuracies in object proportions and spatial relationships during image generation, leading to inconsistencies with real-world perspective rules. Examples include incorrect depth perception, mismatched object sizes, or spatial distortions that prevent accurate perspective alignment.</span></span>
</span></span>
</span>
</span></span>
<span class="ltx_item" id="A2.I1.i2" style="list-style-type:none;padding-top:1.0pt;"><span class="ltx_tag ltx_tag_item">2.</span>
<span class="ltx_para" id="A2.I1.i2.p1">
<span class="ltx_p" id="A2.I1.i2.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i2.p1.1.1" style="font-size:90%;">Structure</span><span class="ltx_text" id="A2.I1.i2.p1.1.2" style="font-size:90%;"></span></span>
<span class="ltx_enumerate" id="A2.I1.i2.I1">
<span class="ltx_item" id="A2.I1.i2.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(a)</span>
<span class="ltx_para" id="A2.I1.i2.I1.i1.p1">
<span class="ltx_p" id="A2.I1.i2.I1.i1.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i2.I1.i1.p1.1.1" style="font-size:90%;">Deformed Objects</span><span class="ltx_text" id="A2.I1.i2.I1.i1.p1.1.2" style="font-size:90%;">: These artifacts arise when the shape or structure of objects is distorted due to errors in the generative model. Contributing factors include geometric inconsistencies, texture mapping errors, and rendering issues.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i2.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(b)</span>
<span class="ltx_para" id="A2.I1.i2.I1.i2.p1">
<span class="ltx_p" id="A2.I1.i2.I1.i2.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i2.I1.i2.p1.1.1" style="font-size:90%;">Asymmetrical Objects</span><span class="ltx_text" id="A2.I1.i2.I1.i2.p1.1.2" style="font-size:90%;">: These artifacts occur when an object exhibits unnatural asymmetry, deviating from expected structural balance.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i2.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(c)</span>
<span class="ltx_para" id="A2.I1.i2.I1.i3.p1">
<span class="ltx_p" id="A2.I1.i2.I1.i3.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i2.I1.i3.p1.1.1" style="font-size:90%;">Incomplete/Redundant Structures</span><span class="ltx_text" id="A2.I1.i2.I1.i3.p1.1.2" style="font-size:90%;">: These artifacts appear as missing or excessive structural components, leading to unrealistic representations of objects.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i2.I1.i4" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(d)</span>
<span class="ltx_para" id="A2.I1.i2.I1.i4.p1">
<span class="ltx_p" id="A2.I1.i2.I1.i4.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i2.I1.i4.p1.1.1" style="font-size:90%;">Illogical Structures</span><span class="ltx_text" id="A2.I1.i2.I1.i4.p1.1.2" style="font-size:90%;">: These artifacts involve the generation of unrecognizable or non-existent objects, as well as the appearance of elements that should not logically exist within the given context.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i2.I1.i5" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(e)</span>
<span class="ltx_para" id="A2.I1.i2.I1.i5.p1">
<span class="ltx_p" id="A2.I1.i2.I1.i5.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i2.I1.i5.p1.1.1" style="font-size:90%;">Text Distortion and Illegibility</span><span class="ltx_text" id="A2.I1.i2.I1.i5.p1.1.2" style="font-size:90%;">: These artifacts include warped, irregular, or unrecognizable text, affecting the readability and coherence of textual content within the generated image.</span></span>
</span></span>
</span>
</span></span>
<span class="ltx_item" id="A2.I1.i3" style="list-style-type:none;padding-top:1.0pt;"><span class="ltx_tag ltx_tag_item">3.</span>
<span class="ltx_para" id="A2.I1.i3.p1">
<span class="ltx_p" id="A2.I1.i3.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i3.p1.1.1" style="font-size:90%;">Distortion</span><span class="ltx_text" id="A2.I1.i3.p1.1.2" style="font-size:90%;"></span></span>
<span class="ltx_enumerate" id="A2.I1.i3.I1">
<span class="ltx_item" id="A2.I1.i3.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(a)</span>
<span class="ltx_para" id="A2.I1.i3.I1.i1.p1">
<span class="ltx_p" id="A2.I1.i3.I1.i1.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i3.I1.i1.p1.1.1" style="font-size:90%;">Color and Texture</span><span class="ltx_text" id="A2.I1.i3.I1.i1.p1.1.2" style="font-size:90%;">: These artifacts result from errors in color rendering or color space conversion, leading to unnatural hues, inappropriate saturation, or other inconsistencies in color perception.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i3.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(b)</span>
<span class="ltx_para" id="A2.I1.i3.I1.i2.p1">
<span class="ltx_p" id="A2.I1.i3.I1.i2.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i3.I1.i2.p1.1.1" style="font-size:90%;">Noise and Blurring</span><span class="ltx_text" id="A2.I1.i3.I1.i2.p1.1.2" style="font-size:90%;">: These artifacts are associated with image noise reduction and clarity enhancement processes. They may arise when algorithms fail to effectively remove noise or introduce excessive blurring, causing local details to appear distorted or unnatural.</span></span>
</span></span>
<span class="ltx_item" id="A2.I1.i3.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">(c)</span>
<span class="ltx_para" id="A2.I1.i3.I1.i3.p1">
<span class="ltx_p" id="A2.I1.i3.I1.i3.p1.1"><span class="ltx_text ltx_font_bold" id="A2.I1.i3.I1.i3.p1.1.1" style="font-size:90%;">Artistic Style</span><span class="ltx_text" id="A2.I1.i3.I1.i3.p1.1.2" style="font-size:90%;">: These artifacts occur when synthetic images exhibit unintended stylization, such as cartoonish or painterly appearances that deviate from realistic textures. Such distortions are often caused by errors in style transfer or texture generation algorithms.</span></span>
</span></span>
</span>
</span></span>
</span></span>
</span>
</td>
<td class="ltx_td" id="A2.T8.1.p1.pic1.1.1.1.1.1.2.2"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a robustness analysis of the LEGION model and its competitor, PAL4VST, against various image distortions.  The distortions applied include JPEG compression at different quality factors (QF), Gaussian noise with varying standard deviations (σ), and Gaussian blur with different kernel sizes (Ksize). The table shows the performance (mIoU and F1 score) of both models under each distortion level. The values in parentheses represent the percentage change in performance relative to the original, undistorted image.  The model with a more robust performance under each distortion is highlighted in green, while the less robust one is in red.  The results demonstrate LEGION's superior robustness to various image perturbations compared to the expert model PAL4VST.
> <details>
> <summary>read the caption</summary>
> Table 10: Robustness Comparison Under Different Perturbations. LEGION significantly outperforms the strongest existing expert model under severe JPEG compression (denoted as JPEG Comp.), Gaussian noise, and Gaussian blur (Ksize represents kernel size). Values in parentheses indicate degradation ratios, with the more robust method highlighted in green, otherwise in red.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15264/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15264/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}