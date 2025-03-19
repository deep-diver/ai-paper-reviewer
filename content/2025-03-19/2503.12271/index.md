---
title: "Reflect-DiT: Inference-Time Scaling for Text-to-Image Diffusion Transformers via In-Context Reflection"
summary: "Reflect-DiT: Scaling Text-to-Image Diffusion Transformers via In-Context Reflection!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 UCLA",]
showSummary: true
date: 2025-03-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12271 {{< /keyword >}}
{{< keyword icon="writer" >}} Shufan Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12271" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12271" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12271/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Text-to-image generation usually relies on training larger models with more data, which is computationally expensive. There's growing interest in improving performance during inference, mainly through best-of-N sampling. This approach generates multiple images and selects the best, but it's not very efficient. The paper addresses the computation issues.



The paper introduces Reflect-DiT, which allows diffusion transformers to refine images using previous generations and feedback. Reflect-DiT improves performance by tailoring generations to address specific issues. Experiments show Reflect-DiT improves the GenEval benchmark and achieves a new state-of-the-art score with fewer samples compared to existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Reflect-DiT improves text-to-image generation with in-context reflection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It achieves state-of-the-art performance on the GenEval benchmark. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} This method reduces the computational cost. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel inference-time scaling method that **significantly improves the efficiency and performance of text-to-image diffusion models**. It is highly relevant to current trends in AI research, particularly in reducing the computational costs. This approach opens new avenues for further research into more efficient AI models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12271/x1.png)

> 🔼 Reflect-DiT refines image generation iteratively.  A vision-language model (VLM) critiques each generated image, providing feedback.  A Diffusion Transformer (DiT) uses this feedback, along with previous generations, to improve subsequent generations.  This contrasts with standard best-of-N sampling, which passively selects from multiple independent generations. Reflect-DiT actively corrects errors (object count, position, attributes), leading to higher quality images with fewer samples.
> <details>
> <summary>read the caption</summary>
> Figure 1: \ours iteratively refines image generation by using a vision-language model (VLM) to critique generations and a Diffusion Transformer (DiT) to self-improve using past generations and feedback. Specifically, at each generation step N, feedback from previous iterations (N-3, N-2, N-1, …) are incorporated to progressively improve future generations. Unlike traditional best-of-N sampling, \ours actively corrects errors in object count, position, and attributes, enabling more precise generations with fewer samples.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.5.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.1.1">Generator</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.5.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.2.1">Params</span></td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.4.5.1.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.4.5.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.4.1">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.5.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.5.1">Single</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.5.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.6.1">Two</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.5.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.7.1">Counting</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.5.1.8"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.8.1">Color</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.5.1.9"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.9.1">Position</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.5.1.10"><span class="ltx_text ltx_font_bold" id="S3.T1.4.5.1.10.1">Attribution</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.6.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.2.1">SDXL<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12271v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.2">2.6B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r ltx_border_t" id="S3.T1.4.6.2.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.4.6.2.4">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.5">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.6">0.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.7">0.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.8">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.9">0.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.2.10">0.23</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.7.3.1">DALLE 3<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12271v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.2">-</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.4.7.3.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.4.7.3.4">0.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.5">0.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.6">0.87</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.7">0.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.8">0.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.9">0.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.3.10">0.45</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.8.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.8.4.1">SD3<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12271v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.2">8B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.4.8.4.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.4.8.4.4">0.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.5">0.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.6">0.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.7">0.72</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.8">0.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.9">0.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.8.4.10">0.60</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.9.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.9.5.1">Flux-Dev<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12271v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.2">12B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.4.9.5.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.4.9.5.4">0.68</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.5">0.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.6">0.85</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.7">0.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.8">0.79</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.9">0.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.9.5.10">0.48</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.10.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.10.6.1">Playground v3<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12271v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6.2">-</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.4.10.6.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.4.10.6.4">0.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6.5">0.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6.6">0.95</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6.7">0.72</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6.8">0.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6.9">0.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.10.6.10">0.54</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.1">SANA-1.5-4.8B<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12271v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite> <math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">‡</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2">4.8B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r ltx_border_t" id="S3.T1.1.1.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.4">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.5">0.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6">0.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7">0.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8">0.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9">0.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.10">0.54</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.2.1">+ Best-of-2048 <math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.1"><semantics id="S3.T1.2.2.1.m1.1a"><mo id="S3.T1.2.2.1.m1.1.1" xref="S3.T1.2.2.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.1b"><ci id="S3.T1.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.1d">‡</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2">4.8B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.2.2.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.2.2.4">0.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.5.1">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.6">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.7">0.77</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.8"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.8.1">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.9">0.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.10"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.10.1">0.74</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.1">SANA-1.0-1.6B <math alttext="{\dagger}" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.1"><semantics id="S3.T1.3.3.1.m1.1a"><mo id="S3.T1.3.3.1.m1.1.1" xref="S3.T1.3.3.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.1b"><ci id="S3.T1.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.1d">†</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12271v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.2">1.6B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r ltx_border_t" id="S3.T1.3.3.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.4">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.5">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6">0.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.7">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.8">0.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.9">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.10">0.37</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.11.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.11.7.1">+ Best-of-20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.2">1.6B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.4.11.7.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.4.11.7.4">0.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.5">0.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.6">0.87</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.7">0.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.8">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.9">0.54</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.11.7.10">0.55</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.12.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.12.8.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.12.8.1.1">+ <span class="ltx_ERROR undefined" id="S3.T1.4.12.8.1.1.1">\ours</span>(N=20)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.2">1.6B + 0.1B</td>
<td class="ltx_td ltx_nopad_r ltx_border_r" id="S3.T1.4.12.8.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_r" id="S3.T1.4.12.8.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.12.8.4.1">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.5">0.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.6"><span class="ltx_text ltx_font_bold" id="S3.T1.4.12.8.6.1">0.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.12.8.7.1">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.8">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.9"><span class="ltx_text ltx_font_bold" id="S3.T1.4.12.8.9.1">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.12.8.10">0.60</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.4.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.1.1">(<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T1.4.4.1.1.m1.1"><semantics id="S3.T1.4.4.1.1.m1.1a"><mi id="S3.T1.4.4.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.4.4.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.1.m1.1b"><ci id="S3.T1.4.4.1.1.m1.1.1.cmml" xref="S3.T1.4.4.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.1.m1.1d">roman_Δ</annotation></semantics></math> vs Baseline)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.4.4.2">-</td>
<td class="ltx_td ltx_nopad_r ltx_border_b ltx_border_r" id="S3.T1.4.4.3"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.1" style="color:#008000;">+0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.5.1" style="color:#808080;">+0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.4.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.6.1" style="color:#008000;">+0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.4.4.7"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.7.1" style="color:#008000;">+0.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.4.4.8"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.8.1" style="color:#008000;">+0.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.4.4.9"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.9.1" style="color:#008000;">+0.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.4.4.10"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.10.1" style="color:#008000;">+0.23</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of different text-to-image generation models on the GenEval benchmark. The key finding is that Reflect-DiT achieves state-of-the-art performance (0.81) using only 20 samples per prompt, significantly outperforming other models, even those with substantially more parameters.  Reflect-DiT shows consistent improvements across all evaluation metrics compared to its base model (SANA-1.0-1.6B), achieving a +0.19 overall gain.  The table highlights the efficiency of Reflect-DiT in contrast to SANA-1.5-4.8B, which, although achieving comparable performance, needs far greater computational resources and is not publicly available.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on the GenEval benchmark [13]. \ours achieves the highest overall score (0.81) with only 20 samples per prompt, outperforming all other models despite having significantly fewer parameters. Compared to the base SANA-1.0-1.6B, \ours demonstrates consistent improvements across all evaluation categories, with a notable overall gain of +0.19. While SANA-1.5-4.8B achieves competitive performance, it requires substantially more computational resources and is not open-sourced at the time of writing. ††{\dagger}† Evaluated using the released checkpoint of SANA-1.0. ‡‡{\ddagger}‡ SANA-1.5 is not open-sourced; results are reported from the original paper.
> </details>





### In-depth insights


#### In-Context Refine
**In-context refinement** is a compelling paradigm shift in how we approach generative models, moving beyond static, one-shot generation towards iterative refinement driven by contextual information. Instead of solely relying on initial prompts, the model leverages past generations and feedback to improve future outputs. This approach mirrors human creative processes, where we often refine our work based on critiques and self-reflection. **The key benefit** is the potential for higher quality outputs with fewer samples, as the model actively learns from its mistakes. By explicitly addressing shortcomings identified in previous generations, the model can tailor its subsequent outputs to meet specific requirements, leading to more precise and intentional results. This is particularly valuable for complex tasks with multiple constraints.

#### DiT Reflection
The paper introduces "Reflect-DiT," a novel approach to enhance text-to-image diffusion models by incorporating an **in-context reflection** mechanism. This allows the Diffusion Transformer (DiT) to iteratively refine its generations by **leveraging past generations and textual feedback**. Unlike standard methods that rely on best-of-N sampling, Reflect-DiT enables models to explicitly learn from their mistakes and tailor future outputs, leading to more accurate and coherent images. **This method shows improvements on benchmark datasets**, highlighting its potential as a more efficient alternative to simple best-of-N sampling, making better use of **scarce inference resources**.

#### VLM as Feedback
The concept of using a Vision-Language Model (VLM) as feedback is intriguing. **VLMs can assess generated images and provide natural language descriptions of errors or areas for improvement.** This feedback guides iterative refinement, enhancing image quality beyond naive sampling. **The VLM's ability to understand both visual and textual data enables targeted corrections,** focusing on object attributes, spatial relationships, and overall scene coherence. This approach could significantly improve text-to-image generation by **providing explicit direction to the diffusion model,** steering it toward more accurate and visually appealing outputs. **However, biases and limitations inherited from the VLM could affect feedback quality.** Therefore, creating robust and unbiased VLMs is paramount for realizing the full potential of this feedback mechanism.

#### Iterative Scaling
**Iterative scaling** offers a compelling avenue for enhancing text-to-image diffusion models. Traditionally, improvements rely on computationally expensive training-time scaling. Iterative scaling provides a strategic alternative by refining generations during inference. Unlike naive best-of-N sampling, which passively selects from random outputs, this method actively improves images. It uses in-context learning, where models learn from past generations and textual feedback, enabling targeted enhancements. This approach explicitly addresses shortcomings, improving object count, position, and attributes. This approach could lead to significant gains in generation quality and efficiency, with fewer samples required to achieve state-of-the-art results. It potentially reduces the reliance on massive datasets and computational resources for training.

#### Aligning Objects
Object alignment in images is a fascinating challenge. The task demands robust understanding of **spatial relationships** and scene context. Models must accurately position objects relative to each other, adhering to constraints specified in the text. Achieving this requires sophisticated **reasoning capabilities** and precise control over the generation process. Furthermore, the ability to correct initial misalignments through iterative refinement demonstrates a powerful form of **self-correction**, mimicking human cognitive processes. The iterative aspect of the object alignment, as seen in this work, contributes significantly to enhancing the quality and coherence of generated images, making them more realistic and aligned with textual descriptions.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12271/x2.png)

> 🔼 Figure 2 illustrates the architecture of Reflect-DiT, a model that refines image generation iteratively using past generations and feedback.  The process begins with a prompt.  Past images are encoded into vision embeddings (V1, V2, etc.) using a vision encoder, while textual feedback is encoded into text embeddings (E1, E2, etc.). These embeddings are concatenated into a sequence (M) and passed through a Context Transformer to generate a refined context (M'). This refined context (M') is added to the standard prompt embeddings and fed into the cross-attention layers of a Diffusion Transformer (DiT). The DiT then produces a refined image, and the cycle repeats until the desired image quality is achieved.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architecture of \ours. Given a prompt, past images and feedback, we first encode the images into a set of vision embeddings [V1,V2,…]subscript𝑉1subscript𝑉2…[V_{1},V_{2},\dots][ italic_V start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_V start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , … ] using a vision encoder, and encode text feedback to a set of text embeddings [E1,E2⁢…]subscript𝐸1subscript𝐸2…[E_{1},E_{2}...][ italic_E start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_E start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT … ]. We then concatenate these embeddings into a single sequence M𝑀Mitalic_M, and pass it through the Context Transformer to obtain M′superscript𝑀′M^{\prime}italic_M start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT. The extra context M′superscript𝑀′M^{\prime}italic_M start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT is concatenated directly after the standard prompt embeddings and passed into the cross-attention layers of the Diffusion Transformer (DiT).
> </details>



![](https://arxiv.org/html/2503.12271/x3.png)

> 🔼 This figure presents a qualitative comparison between Reflect-DiT and the traditional best-of-N sampling method for text-to-image generation.  It showcases three examples where Reflect-DiT's iterative refinement process, guided by feedback, leads to more accurate and visually coherent results than best-of-N. The first example illustrates Reflect-DiT's ability to correct object positioning, the second demonstrates its capacity to resolve multiple counting constraints, and the third highlights its potential for refining object shapes.  These examples demonstrate how Reflect-DiT actively addresses specific issues, converging towards more precise and aligned image generations compared to the passive selection approach of best-of-N.
> <details>
> <summary>read the caption</summary>
> Figure 3: Side-by-side qualitative comparison of \ours and best-of-N sampling. \ours leverages feedback to iteratively refine image generations, resulting in more accurate and visually coherent outputs. In the first example, \ours progressively adjusts object positions to better satisfy the prompt “a cup left of an umbrella,” achieving significantly better image-text alignment than best-of-N sampling. The second example demonstrates how \ours corrects multiple counting constraints (“five monarch butterflies” and “a single dandelion”) over successive iterations, gradually converging to the correct solution. Lastly, in the rightmost example, \ours uses in-context feedback to refine object shapes, producing a more precise and intentional design compared to best-of-N.
> </details>



![](https://arxiv.org/html/2503.12271/x4.png)

> 🔼 This figure compares Reflect-DiT's performance against other fine-tuning methods like Supervised Fine-Tuning (SFT) and Diffusion-DPO (DPO) on the GenEval benchmark.  The x-axis represents the number of samples used for image generation, and the y-axis shows the GenEval score.  The graph demonstrates that Reflect-DiT consistently achieves higher GenEval scores than SFT and DPO, even when using significantly fewer samples. Notably, with only 4 samples, Reflect-DiT surpasses the performance of SFT and DPO using 20 samples each.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of \ours with other finetuning methods. We find that \ours  is able to consistently outperform finetuning methods, like supervised finetuning (SFT) and Diffusion-DPO (DPO). Using only 4 samples, \ours can outperform related finetuning baselines using best-of-20 sampling.
> </details>



![](https://arxiv.org/html/2503.12271/x5.png)

> 🔼 This figure displays the results of a human evaluation study comparing Reflect-DiT's image generation capabilities to a traditional best-of-N sampling method.  The study used the PartiPrompts dataset, which focuses on more complex image generation tasks than the GenEval benchmark used in other parts of the paper. The win-rate represents the percentage of times human evaluators preferred images generated by Reflect-DiT over the best-of-N approach.  The results demonstrate a clear preference for Reflect-DiT, suggesting it produces images of higher quality and better alignment with the prompts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human evaluation win-rate (%) on PartiPrompts dataset. We perform a user study to evaluate the effectiveness of \ours in broadly improving text-to-image generation. Results show that human evaluators consistently prefer generations from \ours over best-of-N sampling.
> </details>



![](https://arxiv.org/html/2503.12271/x6.png)

> 🔼 Figure 6 showcases Reflect-DiT's iterative refinement process through three examples.  The first demonstrates correction of object positions and classifications within a complex scene (woman, tree, cat, dog). The second example shows iterative adjustment of object counts (seeds on a dandelion head). The third example highlights the model's ability to overcome initial misinterpretations of unusual spatial relationships (dog positioned relative to a tie). Each example demonstrates Reflect-DiT's ability to refine generations based on feedback, ultimately achieving alignment with the prompt's specifications.
> <details>
> <summary>read the caption</summary>
> Figure 6: Illustration of the iterative refinement process in \ours. \ours starts with an initial image generated from the prompt and progressively refines it based on textual feedback until the final output meets the desired criteria, demonstrating the effectiveness of our reflection-based approach. In the first sequence, \ours handles a complex scene by gradually repositioning multiple objects—“woman,” “tree,” “cat,” and “dog”—to achieve correct spatial alignment. Additionally, it recognizes subtle object misclassifications, such as changing the second “dog” to a “cat” based on feedback. The second example demonstrates a counting problem, where the model iteratively adjusts the number of detached seeds until it converges to the correct count. The final example presents a particularly challenging scenario: the prompt requires the “dog” to be positioned to the “right of a tie”, an unusual object to appear independently. Initially, the model misinterprets the instruction, generating a dog wearing a tie. However, through multiple refinement steps, \ours learns to separate the objects and ultimately produces the correct spatial arrangement.
> </details>



![](https://arxiv.org/html/2503.12271/x7.png)

> 🔼 Reflect-DiT, while generally effective, occasionally produces errors due to limitations in the feedback from its Vision-Language Model (VLM).  The first two examples show cases where the VLM misinterprets subtle details (lighting signifying sunset, color reflection ambiguity). The final two showcase more common failures where small or unusually shaped objects are overlooked, leading to inaccurate feedback and refinement.
> <details>
> <summary>read the caption</summary>
> Figure 7: Failure cases of \ours. Failure cases of \ours. While \ours demonstrates strong refinement capabilities, the generated feedback can occasionally introduce errors between iterations. In the first example, the model fails to recognize that the specific lighting conditions signify a “sunset”, leading to an incorrect adjustment. Similarly, in the second example, the model struggles to distinguish the color of the “dining table” because the purple hue from the “dog” reflects off the table, creating ambiguity. These cases highlight subjectivity in the VLM evaluation, where the model’s interpretation may still be reasonable. However, the final two examples illustrate more typical failure cases. In both images, objects (“boat” and “butterfly”) are completely overlooked by the feedback model. This issue likely arises because the objects are too small or unusually shaped, which makes them difficult to detect, resulting in incorrect evaluations.
> </details>



![](https://arxiv.org/html/2503.12271/x9.png)

> 🔼 This figure shows the user interface used in a human evaluation study to compare the quality of image generations from Reflect-DiT and a best-of-N baseline.  Users were presented with a prompt and two images, one from each method, and asked to select the image that best matched the prompt.  Additional space was provided for comments in cases of ambiguity or bugs.
> <details>
> <summary>read the caption</summary>
> Figure 8: User interface for human annotators.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T2.2.1.1.2">Number of Samples</th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.2.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.2.2.2">4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.2.2.3">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.2.2.4">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.2.2.5">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.2.2.6">20</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.3.1.1">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.1.2">0.705</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.1.3">0.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.1.4">0.743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.1.5">0.749</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.1.6">0.751</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.4.2.1">+SFT</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.2.2">0.736</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.2.3">0.754</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.2.4">0.760</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.2.5">0.767</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.2.6">0.767</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.5.3.1">+DPO</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.3.2">0.713</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.3.3">0.741</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.3.4">0.747</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.3.5">0.754</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.3.6">0.765</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.6.4.1">+Refl. DiT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.2.1">0.776</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.3.1">0.792</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.4.1">0.799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.6.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.5.1">0.799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.6.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.6.1">0.807</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Reflect-DiT against several baseline methods on the GenEval benchmark.  It demonstrates Reflect-DiT's superior performance across different numbers of inference samples.  The baselines include best-of-N sampling (a common inference-time scaling technique), supervised fine-tuning (SFT), and Diffusion-DPO. Reflect-DiT uses in-context reflection, while the baselines utilize best-of-N sampling.
> <details>
> <summary>read the caption</summary>
> Table 2: GenEval performance using different finetuning methods. Results show that \ours consistently outperforms supervised finetuning (SFT), and Diffusion-DPO (DPO) across a varying number of samples at inference. We use best-of-N sampling for the base model, SFT, and DPO baselines and in-context reflection for \ours.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T3.3.4.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T3.3.4.1.2">Number of Samples</th>
</tr>
<tr class="ltx_tr" id="S4.T3.3.5.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.3.5.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.3.5.2.2">4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.3.5.2.3">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.3.5.2.4">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.3.5.2.5">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.3.5.2.6">20</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.6.1.1">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.6.1.2">0.705</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.6.1.3">0.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.6.1.4">0.743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.6.1.5">0.749</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.6.1.6">0.751</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.1"><math alttext="K=1" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.m1.1.1.2.cmml">K</mi><mo id="S4.T3.1.1.1.m1.1.1.1" xref="S4.T3.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><eq id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1.1"></eq><ci id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2">𝐾</ci><cn id="S4.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">K=1</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_K = 1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.2">0.738</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3">0.755</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4">0.761</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5">0.772</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6">0.766</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.2.1"><math alttext="K=2" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.1"><semantics id="S4.T3.2.2.1.m1.1a"><mrow id="S4.T3.2.2.1.m1.1.1" xref="S4.T3.2.2.1.m1.1.1.cmml"><mi id="S4.T3.2.2.1.m1.1.1.2" xref="S4.T3.2.2.1.m1.1.1.2.cmml">K</mi><mo id="S4.T3.2.2.1.m1.1.1.1" xref="S4.T3.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.2.2.1.m1.1.1.3" xref="S4.T3.2.2.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.1b"><apply id="S4.T3.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1"><eq id="S4.T3.2.2.1.m1.1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1.1"></eq><ci id="S4.T3.2.2.1.m1.1.1.2.cmml" xref="S4.T3.2.2.1.m1.1.1.2">𝐾</ci><cn id="S4.T3.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.2.2.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.1c">K=2</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.1d">italic_K = 2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2">0.743</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.3">0.765</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.4">0.765</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5">0.774</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6">0.781</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.3.1"><math alttext="K=3" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mrow id="S4.T3.3.3.1.m1.1.1" xref="S4.T3.3.3.1.m1.1.1.cmml"><mi id="S4.T3.3.3.1.m1.1.1.2" xref="S4.T3.3.3.1.m1.1.1.2.cmml">K</mi><mo id="S4.T3.3.3.1.m1.1.1.1" xref="S4.T3.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.3.3.1.m1.1.1.3" xref="S4.T3.3.3.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><apply id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1"><eq id="S4.T3.3.3.1.m1.1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1.1"></eq><ci id="S4.T3.3.3.1.m1.1.1.2.cmml" xref="S4.T3.3.3.1.m1.1.1.2">𝐾</ci><cn id="S4.T3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">K=3</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">italic_K = 3</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.2.1">0.776</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.1">0.792</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1">0.799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.1">0.799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.6.1">0.807</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of varying the number of in-context image-feedback pairs (K) on the performance of the Reflect-DiT model.  The study examines how changing the amount of past image generations and feedback used to refine subsequent generations affects the overall quality of the generated images. The results are likely shown across different numbers of samples used in inference to understand the effect of different compute budgets.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on the number of in-context image-feedback pairs (K).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T4.2.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T4.2.1.1.2">Number of Samples</th>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T4.2.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.2.2.2">4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.2.2.3">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.2.2.4">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.2.2.5">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.2.2.6">20</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.3.1.1">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.2">0.705</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.3">0.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.4">0.743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.5">0.749</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.1.6">0.751</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.4.2.1">+1 Layer</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.2">0.769</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.3">0.790</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.4">0.797</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.2.4.2.5.1">0.801</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2.6">0.804</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.2.5.3.1">+2 Layers</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.5.3.2.1">0.776</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.5.3.3.1">0.792</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.5.3.4.1">0.799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.5">0.799</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.5.3.6"><span class="ltx_text ltx_font_bold" id="S4.T4.2.5.3.6.1">0.807</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of varying the number of transformer layers within the context transformer of the Reflect-DiT model.  It shows how the GenEval benchmark scores change as the number of transformer layers increases, for different sample sizes (4, 8, 12, 16, and 20). The goal is to determine the optimal number of layers for balancing model performance and computational cost.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on number of Transformer layers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T5.3.4.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T5.3.4.1.2">Number of Samples</th>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T5.3.5.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.3.5.2.2">4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.3.5.2.3">8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.3.5.2.4">12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.3.5.2.5">16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.3.5.2.6">20</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.3.6.1.1">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.6.1.2">0.705</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.6.1.3">0.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.6.1.4">0.743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.6.1.5">0.749</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.6.1.6">0.751</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.1"><math alttext="4\times 4" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mrow id="S4.T5.1.1.1.m1.1.1" xref="S4.T5.1.1.1.m1.1.1.cmml"><mn id="S4.T5.1.1.1.m1.1.1.2" xref="S4.T5.1.1.1.m1.1.1.2.cmml">4</mn><mo id="S4.T5.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T5.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S4.T5.1.1.1.m1.1.1.3" xref="S4.T5.1.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><apply id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1"><times id="S4.T5.1.1.1.m1.1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1.1"></times><cn id="S4.T5.1.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T5.1.1.1.m1.1.1.2">4</cn><cn id="S4.T5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.1.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">4\times 4</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">4 × 4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.2">0.770</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.3">0.779</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4">0.783</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5">0.786</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6">0.786</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.2.2.1"><math alttext="6\times 6" class="ltx_Math" display="inline" id="S4.T5.2.2.1.m1.1"><semantics id="S4.T5.2.2.1.m1.1a"><mrow id="S4.T5.2.2.1.m1.1.1" xref="S4.T5.2.2.1.m1.1.1.cmml"><mn id="S4.T5.2.2.1.m1.1.1.2" xref="S4.T5.2.2.1.m1.1.1.2.cmml">6</mn><mo id="S4.T5.2.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T5.2.2.1.m1.1.1.1.cmml">×</mo><mn id="S4.T5.2.2.1.m1.1.1.3" xref="S4.T5.2.2.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.1.m1.1b"><apply id="S4.T5.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.1.m1.1.1"><times id="S4.T5.2.2.1.m1.1.1.1.cmml" xref="S4.T5.2.2.1.m1.1.1.1"></times><cn id="S4.T5.2.2.1.m1.1.1.2.cmml" type="integer" xref="S4.T5.2.2.1.m1.1.1.2">6</cn><cn id="S4.T5.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.2.2.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.1.m1.1c">6\times 6</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.1.m1.1d">6 × 6</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2">0.752</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.3">0.781</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4">0.795</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.5">0.795</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.6">0.801</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.3.3.1"><math alttext="8\times 8" class="ltx_Math" display="inline" id="S4.T5.3.3.1.m1.1"><semantics id="S4.T5.3.3.1.m1.1a"><mrow id="S4.T5.3.3.1.m1.1.1" xref="S4.T5.3.3.1.m1.1.1.cmml"><mn id="S4.T5.3.3.1.m1.1.1.2" xref="S4.T5.3.3.1.m1.1.1.2.cmml">8</mn><mo id="S4.T5.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T5.3.3.1.m1.1.1.1.cmml">×</mo><mn id="S4.T5.3.3.1.m1.1.1.3" xref="S4.T5.3.3.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.1.m1.1b"><apply id="S4.T5.3.3.1.m1.1.1.cmml" xref="S4.T5.3.3.1.m1.1.1"><times id="S4.T5.3.3.1.m1.1.1.1.cmml" xref="S4.T5.3.3.1.m1.1.1.1"></times><cn id="S4.T5.3.3.1.m1.1.1.2.cmml" type="integer" xref="S4.T5.3.3.1.m1.1.1.2">8</cn><cn id="S4.T5.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T5.3.3.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.1.m1.1c">8\times 8</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.1.m1.1d">8 × 8</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.2.1">0.776</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.1">0.792</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.4.1">0.799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.5.1">0.799</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.6"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.6.1">0.807</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of varying the dimensionality of image embeddings on the performance of Reflect-DiT.  It shows how changing the spatial resolution of the image features used for context (4x4, 6x6, 8x8 pixels) affects the GenEval scores achieved by the model with different numbers of samples.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on the size of image embeddings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.2.3.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="A1.T6.2.3.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r" id="A1.T6.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.3.1.2.1">Parm.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.2.3.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.2.3.1.3.1">All</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.2.3.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.2.3.1.4.1">Hard-246</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.2.3.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.2.3.1.5.1">Hard-56</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.2.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.4.1.1">SD3-Medium</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.4.1.2">2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.4.1.3">84.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.4.1.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.4.1.5">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.5.2.1">DALLE 3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.5.2.2">-</th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.5.2.3">83.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.5.2.4">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.5.2.5">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.6.3.1">FLUX-dev</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.6.3.2">12B</th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.6.3.3">84.0</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.6.3.4">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.6.3.5">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.1.1.1">SANA-1.5 <math alttext="{\dagger}" class="ltx_Math" display="inline" id="A1.T6.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.m1.1a"><mo id="A1.T6.1.1.1.m1.1.1" xref="A1.T6.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.m1.1b"><ci id="A1.T6.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.m1.1d">†</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.1.1.2">4.8B</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3">85.0</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4">-</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.7.4.1">SANA-1.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.2.7.4.2">1.6B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.7.4.3">84.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.7.4.4">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.7.4.5">24.2</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.8.5.1">+Best-of-20</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.8.5.2">1.6B</th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.8.5.3">85.6</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.8.5.4">63.4</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.8.5.5">41.0</td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.9.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.9.6.1">+<span class="ltx_ERROR undefined" id="A1.T6.2.9.6.1.1">\ours</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T6.2.9.6.2">1.7B</th>
<td class="ltx_td ltx_align_center" id="A1.T6.2.9.6.3"><span class="ltx_text ltx_font_bold" id="A1.T6.2.9.6.3.1">86.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.9.6.4"><span class="ltx_text ltx_font_bold" id="A1.T6.2.9.6.4.1">69.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.9.6.5"><span class="ltx_text ltx_font_bold" id="A1.T6.2.9.6.5.1">51.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T6.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T6.2.2.1.1">(<math alttext="\Delta" class="ltx_Math" display="inline" id="A1.T6.2.2.1.1.m1.1"><semantics id="A1.T6.2.2.1.1.m1.1a"><mi id="A1.T6.2.2.1.1.m1.1.1" mathvariant="normal" xref="A1.T6.2.2.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.1.1.m1.1b"><ci id="A1.T6.2.2.1.1.m1.1.1.cmml" xref="A1.T6.2.2.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.1.1.m1.1d">roman_Δ</annotation></semantics></math> vs Base.)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T6.2.2.2">-</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T6.2.2.3.1" style="color:#008000;">+2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.2.2.4"><span class="ltx_text ltx_font_bold" id="A1.T6.2.2.4.1" style="color:#008000;">+13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.2.2.5"><span class="ltx_text ltx_font_bold" id="A1.T6.2.2.5.1" style="color:#008000;">+27.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of different text-to-image generation models' performance on the DPG-Bench benchmark.  It focuses on the performance of Reflect-DiT compared to other models, including SANA baselines and best-of-N sampling approaches, showcasing its robustness and generalizability.  The table includes scores on the overall DPG-Bench and also on two challenging subsets of prompts (Hard-246 and Hard-56) where the baseline models underperform. This highlights Reflect-DiT's improvement, especially on difficult prompts. The footnote clarifies that results for SANA-1.5 are from the original paper because that model's inference-time scaling results are not publicly available, and the single-sample results are used instead for comparison.
> <details>
> <summary>read the caption</summary>
> Table 6: Additional quantitative results on DPG-Bench [18] ††{\dagger}† SANA-1.5 only reported inference-time scaling (best-of-2048) on GenEval benchmark and has not been open sourced. We cite their single-sample result here.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T7.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.2.1.1.1.1">
<span class="ltx_p" id="A3.T7.2.1.1.1.1.1" style="width:390.3pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.2.1.1.1.1.1.1">VLM Training Data Template</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_border_t" id="A3.T7.2.1.1.2"></td>
</tr>
<tr class="ltx_tr" id="A3.T7.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A3.T7.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.2.2.2.1.1">
<span class="ltx_p" id="A3.T7.2.2.2.1.1.1" style="width:390.3pt;"><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.1">{ </span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.2">"from": "human",</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.3">"value": "&lt;image&gt;\n</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.4">Please evaluate this generated image based on the following prompt: [[prompt]].</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.5">Focus on text alignment and compositionality."</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.6">},</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.7">{</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.8">"from": "gpt",</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.9">"value": "[[feedback_text]]"</span>
<br class="ltx_break"/><span class="ltx_text ltx_font_typewriter" id="A3.T7.2.2.2.1.1.1.10">}</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_border_b ltx_border_t" id="A3.T7.2.2.2.2"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the template used for training the Vision-Language Model (VLM) in the Reflect-DiT framework.  The VLM acts as a judge, providing feedback on generated images. The training data consists of image-feedback pairs formatted as JSON, structured with 'from' and 'value' fields. The 'from' field specifies the source (human or the language model), and the 'value' field contains the image data or feedback text, respectively.
> <details>
> <summary>read the caption</summary>
> Table 7: VLM Training Data Template
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T8.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T8.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T8.2.1.1.1.1">Hyperparameters</span></th>
<td class="ltx_td ltx_align_center" id="A3.T8.2.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T8.2.1.1.2.1">VLM Judge</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.1.1.3"><span class="ltx_ERROR undefined" id="A3.T8.2.1.1.3.1">\ours</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T8.2.1.1.4.1">SFT</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T8.2.1.1.5.1">Diffusion-DPO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T8.2.2.2.1">Learning Rate</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.2">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.3">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.4">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.2.2.2.5">1e-5</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T8.2.3.3.1">Batch Size</th>
<td class="ltx_td ltx_align_center" id="A3.T8.2.3.3.2">48</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.3.3.3">48</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.3.3.4">48</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.3.3.5">(24, 24)*</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T8.2.4.4.1">Weight Decay</th>
<td class="ltx_td ltx_align_center" id="A3.T8.2.4.4.2">0.1</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.4.4.3">0</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.4.4.4">0</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.4.4.5">0</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T8.2.5.5.1">Optimizer</th>
<td class="ltx_td ltx_align_center" id="A3.T8.2.5.5.2">AdamW</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.5.5.3">CAME</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.5.5.4">CAME</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.5.5.5">CAME</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T8.2.6.6.1">Schedule</th>
<td class="ltx_td ltx_align_center" id="A3.T8.2.6.6.2">1 epoch</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.6.6.3">5k step</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.6.6.4">5k step</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.6.6.5">5k step</td>
</tr>
<tr class="ltx_tr" id="A3.T8.2.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T8.2.7.7.1">Warmup steps</th>
<td class="ltx_td ltx_align_center" id="A3.T8.2.7.7.2">0.03 epoch</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.7.7.3">500 step</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.7.7.4">500 step</td>
<td class="ltx_td ltx_align_center" id="A3.T8.2.7.7.5">500 step</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the training process for different components of the Reflect-DiT model and its baselines.  It shows the learning rate, batch size, weight decay, optimizer used (AdamW or CAME), and the number of warmup steps for the VLM judge, Reflect-DiT model itself, the supervised finetuning (SFT) baseline, and the Diffusion-DPO baseline.  Note that for the Diffusion-DPO baseline, the batch size is a tuple indicating the number of positive and negative samples used per batch (24 positive and 24 negative samples).
> <details>
> <summary>read the caption</summary>
> Table 8: Hyperparameters used for each experiment. * We use 24 positive samples and 24 negative samples per batch.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12271/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12271/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}