---
title: "Optimized Minimal 3D Gaussian Splatting"
summary: "OMG: optimized minimal 3D Gaussian splatting, enabling fast and efficient rendering with minimal storage."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Sungkyunkwan University",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16924 {{< /keyword >}}
{{< keyword icon="writer" >}} Joo Chan Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16924" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16924" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16924/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

3D Gaussian Splatting (3DGS) is a powerful technique for real-time rendering, but it requires significant storage and memory. Recent studies use fewer Gaussians with high-precision attributes, but existing compression methods still rely on many Gaussians. A smaller set of Gaussians becomes sensitive to lossy compression, leading to quality issues. Therefore, reducing the number of Gaussians is crucial as it directly affects computational costs.  



The paper introduces Optimized Minimal Gaussians representation (**OMG**), which reduces storage using minimal primitives. OMG determines distinct Gaussians from near ones, minimizing redundancy and preserving quality. It introduces a compact attribute representation, capturing continuity and irregularity. A sub-vector quantization technique enhances irregularity representation while maintaining fast training. OMG reduces storage by nearly 50% and enables 600+ FPS rendering, setting a new standard for efficient 3DGS.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OMG reduces storage requirements by nearly 50% compared to previous methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} OMG achieves 600+ FPS rendering while maintaining high rendering quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} OMG introduces a novel importance metric that incorporates color distinction among neighboring Gaussians, enabling more effective selection of essential primitives. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **OMG, which reduces storage overhead in 3D Gaussian Splatting while maintaining rendering quality and speed.** It is important for researchers because it addresses the critical challenge of efficient 3D scene representation, opening avenues for resource-constrained applications and inspiring further research into optimized rendering techniques. The study also demonstrates the significance of local distinctiveness and sub-vector quantization for achieving optimal compression and performance.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16924/x2.png)

> 🔼 Figure 1 demonstrates the effectiveness of the proposed Optimized Minimal Gaussian (OMG) representation for 3D scenes.  The left side shows qualitative results, comparing the visual quality of rendered scenes using OMG with other state-of-the-art methods. Note that the FPS values in parentheses were obtained using a more powerful NVIDIA RTX 4090 GPU. The right side presents a rate-distortion curve, illustrating the trade-off between storage size and PSNR (Peak Signal-to-Noise Ratio) achieved by OMG on the Mip-NeRF 360 benchmark dataset. This figure highlights OMG's ability to achieve high-quality rendering with significantly reduced storage requirements (under 5 MB) and high frame rates (over 600 FPS) by optimizing both the number of Gaussian primitives and the efficiency of their attribute representation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our approach focuses on minimizing storage requirements while using only a minimal number of Gaussian primitives. By proposing an efficient attribute representation, including sub-vector quantization, we achieve scene representations under 5 MB with 600+ FPS rendering. We visualize qualitative examples (left) and the rate-distortion curve evaluated on the Mip-NeRF 360 dataset (right). All rendering speeds were measured on an NVIDIA RTX 3090 GPU, with values in parentheses in the left visualizations measured using an NVIDIA RTX 4090 GPU.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.6.1">
<td class="ltx_td ltx_border_tt" id="S3.T1.5.6.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S3.T1.5.6.1.2">Mip-NeRF 360</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.5.5.6"><span class="ltx_text" id="S3.T1.5.5.6.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4">Size(MB) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5">FPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.7.2.1">3DGS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.7.2.2">27.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.7.2.3">0.813</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.7.2.4">0.218</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.7.2.5">822.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.7.2.6">127</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8.3">
<td class="ltx_td ltx_align_left" id="S3.T1.5.8.3.1">Scaffold-GS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.2">27.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.3">0.812</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.4">0.223</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.5">187.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.3.6">122</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.9.4.1">CompGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.4.2">27.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.4.3">0.804</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.4.4">0.243</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.4.5">22.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.4.6">236</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10.5">
<td class="ltx_td ltx_align_left" id="S3.T1.5.10.5.1">Compact-3DGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.2">26.95</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.3">0.797</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.4">0.244</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.5">26.31</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5.6">143</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11.6">
<td class="ltx_td ltx_align_left" id="S3.T1.5.11.6.1">C3DGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.2">27.09</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.3">0.802</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.4">0.237</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.5">29.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6.6">134</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12.7">
<td class="ltx_td ltx_align_left" id="S3.T1.5.12.7.1">LightGaussian <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.2">26.90</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.3">0.800</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.4">0.240</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.5">53.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7.6">244</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.13.8">
<td class="ltx_td ltx_align_left" id="S3.T1.5.13.8.1">EAGLES <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.2">27.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.3">0.807</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.4">0.234</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.5">59.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.13.8.6">155</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.14.9">
<td class="ltx_td ltx_align_left" id="S3.T1.5.14.9.1">SOG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.2">27.01</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.3">0.800</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.4">0.226</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.5">43.77</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.14.9.6">134</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.15.10">
<td class="ltx_td ltx_align_left" id="S3.T1.5.15.10.1">HAC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.10.2" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T1.5.15.10.2.1" style="background-color:#FFCCC9;">27.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.10.3">0.807</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.10.4">0.236</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.10.5">16.95</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.10.6">110</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.16.11">
<td class="ltx_td ltx_align_left" id="S3.T1.5.16.11.1">LocoGS-S <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.11.2">27.04</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.11.3">0.806</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.11.4">0.232</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.11.5">7.90</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.11.6" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T1.5.16.11.6.1" style="background-color:#FFCE93;">310</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.17.12">
<td class="ltx_td ltx_align_left" id="S3.T1.5.17.12.1">LocoGS-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.12.2" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T1.5.17.12.2.1" style="background-color:#FFFC9E;">27.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.12.3" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T1.5.17.12.3.1" style="background-color:#FFCE93;">0.814</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.12.4" style="background-color:#FFCC67;"><span class="ltx_text" id="S3.T1.5.17.12.4.1" style="background-color:#FFCC67;">0.219</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.12.5">13.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.12.6">270</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.18.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.18.13.1">OMG-XS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.18.13.2">27.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.18.13.3">0.807</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.18.13.4">0.243</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.18.13.5" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T1.5.18.13.5.1" style="background-color:#FFCCC9;">4.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.18.13.6" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T1.5.18.13.6.1" style="background-color:#FFCCC9;">350 (612)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.19.14">
<td class="ltx_td ltx_align_left" id="S3.T1.5.19.14.1">OMG-M</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.14.2">27.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.14.3" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T1.5.19.14.3.1" style="background-color:#FFCE93;">0.814</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.14.4" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T1.5.19.14.4.1" style="background-color:#FFFC9E;">0.229</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.14.5" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T1.5.19.14.5.1" style="background-color:#FFCE93;">5.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.19.14.6" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T1.5.19.14.6.1" style="background-color:#FFFC9E;">298 (511)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.20.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.5.20.15.1">OMG-XL</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.20.15.2" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T1.5.20.15.2.1" style="background-color:#FFCE93;">27.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.20.15.3" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T1.5.20.15.3.1" style="background-color:#FFCCC9;">0.819</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.20.15.4" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T1.5.20.15.4.1" style="background-color:#FFCCC9;">0.218</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.20.15.5" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T1.5.20.15.5.1" style="background-color:#FFFC9E;">6.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.20.15.6">251 (416)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the proposed Optimized Minimal Gaussians (OMG) method against several state-of-the-art 3D Gaussian splatting techniques for scene representation on the Mip-NeRF 360 dataset.  The table shows key metrics such as PSNR (Peak Signal-to-Noise Ratio), SSIM (Structural Similarity Index), LPIPS (Learned Perceptual Image Patch Similarity), model size in MB, and rendering speed in frames per second (FPS).  The results for OMG are presented for various model sizes (XS, M, XL), demonstrating its scalability.  Baseline values from the LocoGS paper are provided for comparison; the rendering performance reported in LocoGS was measured on an NVIDIA RTX 3090 GPU, and this table includes measurements on the same GPU plus additional measurements obtained with an NVIDIA RTX 4090 GPU for comparative purposes.  The best, second-best, and third-best results among the different compression methods are highlighted in the table to easily see how OMG compares against other approaches.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results of OMG evaluated on the Mip-NeRF 360 dataset. Baseline results are sourced from the LocoGS [50] paper, where the rendering results were obtained using an NVIDIA RTX 3090 GPU. Our rendering performance was measured using the same GPU, with the values in parentheses obtained from an NVIDIA RTX 4090 GPU. We highlight the results among compression methods by coloring the best, second-best, and third-best performances.
> </details>





### In-depth insights


#### Minimal Gaussian
The concept of "Minimal Gaussian" likely pertains to reducing the computational and storage burden associated with Gaussian representations, particularly in fields like 3D Gaussian Splatting (3DGS). The core idea revolves around **optimizing the number of Gaussian primitives used to represent a scene or object**. Instead of relying on a massive number of Gaussians, the focus shifts towards achieving comparable quality with a significantly smaller set. This necessitates efficient strategies for **determining the most informative Gaussians and eliminating redundancy**. Furthermore, it often involves employing compact and precise attribute representations to minimize the information required per Gaussian, ensuring that the reduced set can still accurately capture the complexity of the data. This involves **balancing fidelity and efficiency** to maintain visual quality while lowering computational costs.

#### OMG: Efficient 3D
**OMG: Efficient 3D** likely refers to the core contribution of a research paper focused on optimizing 3D data representation or processing. It suggests a method that prioritizes efficiency, potentially in terms of storage, computation, or both. The name implies a significant improvement over existing techniques, perhaps aiming for minimal resource usage while maintaining acceptable quality. The method could involve novel compression strategies, data structures, or algorithms tailored to 3D data. We might anticipate that the OMG method could excel in scenarios where resources are constrained, such as mobile devices or real-time applications where speed is critical. Benchmarks against established methods will likely demonstrate the gains from OMG, and the paper would thoroughly analyze the trade-offs between efficiency and fidelity achieved by the OMG. This method would be suitable for areas where quick rendering is important.

#### SVQ Quantization
**Sub-Vector Quantization (SVQ)** is introduced as a method to balance computational cost and storage efficiency. It partitions attribute vectors into sub-vectors, applying vector quantization separately to each. This allows for smaller codebooks and efficient lookups compared to standard vector quantization, which often requires large codebooks for high fidelity, leading to computational overhead. **SVQ is applied to geometric attributes (scale and rotation) and appearance features**, concatenating and splitting them as needed. **A fine-tuning strategy is used in the final training iterations**, freezing indices and fine-tuning codebooks to further improve efficiency. **By reducing the dimensionality of each quantized unit, SVQ is able to maintain the high-precision representation.**

#### Local Distinctness
**Local Distinctness** is a crucial enhancement, improving Gaussian pruning by incorporating local feature similarity. This leads to significant performance gains, especially with a smaller Gaussian set, showcasing effectiveness in sparse scenarios. The impact becomes prominent with lower target Gaussian numbers. Removing both spatial features and local features causes a significant performance drop. This shows the two parts works independently and are important to model performance and efficiency.

#### Low Storage NeRF
**Low-storage NeRF** aims to reduce the memory footprint of Neural Radiance Fields (NeRFs) without significantly sacrificing rendering quality. This involves techniques like **parameter compression**, **knowledge distillation**, and **efficient data structures**. The goal is to enable NeRFs on resource-constrained devices or to facilitate the storage and transmission of large-scale 3D scenes. The challenge lies in balancing compression with the need to preserve the intricate details and view-dependent effects captured by the original NeRF model. Approaches often involve **quantization**, **pruning redundant parameters**, or **representing the scene with a more compact set of basis functions**. Careful design is crucial to maintain visual fidelity and rendering speed while achieving significant storage savings.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16924/x3.png)

> 🔼 This figure illustrates the architecture of the Optimized Minimal Gaussians (OMG) model.  The OMG model efficiently represents 3D scenes using a minimal number of Gaussian primitives. It learns both geometric (position, scale, rotation) and appearance (static and view-dependent color, opacity) features for each Gaussian.  These features are then compressed using Sub-Vector Quantization (SVQ) to reduce storage. The geometric attributes (after SVQ) are used directly for rendering. A novel spatial feature, derived from the Gaussian's position, is incorporated into the appearance features to improve rendering quality, particularly in areas with sparse Gaussians. This combination balances the need for compact representation with accurate rendering.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall architecture of our proposed OMG. OMG learns per-Gaussian geometric and appearance features, applying Sub-Vector Quantization (SVQ) to all of them. The SVQ-applied geometric attributes are used for rendering, while the space feature based on the Gaussian center position is integrated into the appearance features to define the final appearance.
> </details>



![](https://arxiv.org/html/2503.16924/x4.png)

> 🔼 This figure illustrates three different vector quantization methods used for compressing Gaussian attributes in 3D Gaussian splatting.  (a) shows standard vector quantization, where the entire attribute vector is encoded using a single codebook.  (b) depicts residual vector quantization, which involves multiple stages of encoding where the residuals from previous stages are encoded.  (c) presents sub-vector quantization, which partitions the attribute vector into multiple sub-vectors and uses separate codebooks for each, reducing the computational complexity of large codebooks while maintaining precision. The '+' symbol represents element-wise summation, and the '⊕' symbol denotes vector concatenation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Conceptual diagram of (a) vector quantization, (b) residual vector quantization, and (c) sub-vector quantization. + and ⊕direct-sum\oplus⊕ denote the element-wise summation and the vector concatenation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.10.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.10.10.11.1">
<td class="ltx_td ltx_border_tt" id="S3.T2.10.10.11.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S3.T2.10.10.11.1.2">Tank&amp;Temples</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S3.T2.10.10.11.1.3">Deep Blending</th>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T2.10.10.10.11"><span class="ltx_text" id="S3.T2.10.10.10.11.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.1.1.1.1">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.2.2.2.2">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.3.3.3">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.4.4.4.4">Size <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.5.5.5">FPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.5.m1.1a"><mo id="S3.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m1.1b"><ci id="S3.T2.5.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.6.6.6.6">PSNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.6.m1.1a"><mo id="S3.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S3.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.6.m1.1b"><ci id="S3.T2.6.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.7.7.7.7">SSIM <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.7.m1.1"><semantics id="S3.T2.7.7.7.7.m1.1a"><mo id="S3.T2.7.7.7.7.m1.1.1" stretchy="false" xref="S3.T2.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.7.m1.1b"><ci id="S3.T2.7.7.7.7.m1.1.1.cmml" xref="S3.T2.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.8.8.8.8">LPIPS <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.8.8.8.8.m1.1"><semantics id="S3.T2.8.8.8.8.m1.1a"><mo id="S3.T2.8.8.8.8.m1.1.1" stretchy="false" xref="S3.T2.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.8.m1.1b"><ci id="S3.T2.8.8.8.8.m1.1.1.cmml" xref="S3.T2.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.9.9.9">Size <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.9.9.9.9.m1.1"><semantics id="S3.T2.9.9.9.9.m1.1a"><mo id="S3.T2.9.9.9.9.m1.1.1" stretchy="false" xref="S3.T2.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.9.m1.1b"><ci id="S3.T2.9.9.9.9.m1.1.1.cmml" xref="S3.T2.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.10.10.10.10">FPS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.10.10.10.10.m1.1"><semantics id="S3.T2.10.10.10.10.m1.1a"><mo id="S3.T2.10.10.10.10.m1.1.1" stretchy="false" xref="S3.T2.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.10.10.m1.1b"><ci id="S3.T2.10.10.10.10.m1.1.1.cmml" xref="S3.T2.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.12.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.10.10.12.2.1">3DGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.2">23.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.3">0.844</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.4">0.179</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.5">452.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.6">175</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.7">29.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.8">0.900</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.9">0.246</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.10">692.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.12.2.11">134</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.13.3">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.13.3.1">Scaffold-GS  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.2">24.11</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.3">0.855</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.4">0.165</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.5">154.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.6">109</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.7">30.28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.8">0.907</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.9">0.243</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.10">121.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.13.3.11">194</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.14.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.10.10.14.4.1">CompGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.2">23.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.3">0.835</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.4">0.201</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.5">14.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.6">329</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.7" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.14.4.7.1" style="background-color:#FFFC9E;">29.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.8" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.14.4.8.1" style="background-color:#FFFC9E;">0.907</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.9">0.253</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.10">15.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.14.4.11">301</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.15.5">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.15.5.1">Compact-3DGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.2">23.33</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.3">0.831</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.4">0.202</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.5">18.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.6">199</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.7">29.71</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.8">0.901</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.9">0.257</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.10">21.75</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.15.5.11">184</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.16.6">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.16.6.1">C3DGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.2">23.52</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.3">0.837</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.4">0.188</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.5">18.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.6">166</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.7">29.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.8">0.899</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.9">0.254</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.10">24.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.16.6.11">143</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.17.7">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.17.7.1">LightGaussian <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.2">23.32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.3">0.829</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.4">0.204</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.5">29.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.6" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.17.7.6.1" style="background-color:#FFFC9E;">379</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.7">29.12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.8">0.895</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.9">0.262</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.10">45.25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.17.7.11">287</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.18.8">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.18.8.1">EAGLES <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.2">23.14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.3">0.833</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.4">0.203</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.5">30.18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.6">244</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.7">29.72</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.8">0.906</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.9" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.18.8.9.1" style="background-color:#FFCE93;">0.249</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.10">54.45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.18.8.11">137</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.19.9">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.19.9.1">SOG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.2">23.54</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.3">0.833</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.4">0.188</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.5">24.42</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.6">222</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.7">29.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.8">0.891</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.9">0.271</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.10">19.32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.19.9.11">224</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.20.10">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.20.10.1">HAC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.2" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.20.10.2.1" style="background-color:#FFCCC9;">24.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.3" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.20.10.3.1" style="background-color:#FFCE93;">0.846</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.4" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.20.10.4.1" style="background-color:#FFFC9E;">0.186</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.5">8.42</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.6">129</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.7" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.20.10.7.1" style="background-color:#FFCE93;">29.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.8">0.902</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.9">0.268</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.10" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.20.10.10.1" style="background-color:#FFCE93;">4.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.20.10.11">235</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.21.11">
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.21.11.1">LocoGS-S <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16924v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.2" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.21.11.2.1" style="background-color:#FFCE93;">23.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.3" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.21.11.3.1" style="background-color:#FFCCC9;">0.847</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.4" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.21.11.4.1" style="background-color:#FFCCC9;">0.169</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.5" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.21.11.5.1" style="background-color:#FFFC9E;">6.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.6">333</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.7" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.21.11.7.1" style="background-color:#FFCCC9;">30.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.8">0.904</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.9" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.21.11.9.1" style="background-color:#FFCE93;">0.249</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.10">7.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.21.11.11" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.21.11.11.1" style="background-color:#FFFC9E;">334</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.22.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.10.10.22.12.1">OMG-M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.2">23.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.3">0.842</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.4">0.189</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.5" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.22.12.5.1" style="background-color:#FFCCC9;">3.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.6" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.22.12.6.1" style="background-color:#FFCCC9;">555 (887)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.7">29.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.8" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.22.12.8.1" style="background-color:#FFCE93;">0.908</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.9">0.253</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.10" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.22.12.10.1" style="background-color:#FFCCC9;">4.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.22.12.11" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.22.12.11.1" style="background-color:#FFCCC9;">524 (894)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.10.23.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.10.10.23.13.1">OMG-L</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.2" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.23.13.2.1" style="background-color:#FFFC9E;">23.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.3" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.23.13.3.1" style="background-color:#FFCE93;">0.846</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.4" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.23.13.4.1" style="background-color:#FFCE93;">0.181</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.5" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.23.13.5.1" style="background-color:#FFCE93;">3.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.6" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.23.13.6.1" style="background-color:#FFCE93;">478 (770)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.7">29.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.8" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.23.13.8.1" style="background-color:#FFCCC9;">0.910</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.9" style="background-color:#FFCCC9;"><span class="ltx_text" id="S3.T2.10.10.23.13.9.1" style="background-color:#FFCCC9;">0.247</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.10" style="background-color:#FFFC9E;"><span class="ltx_text" id="S3.T2.10.10.23.13.10.1" style="background-color:#FFFC9E;">5.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.10.23.13.11" style="background-color:#FFCE93;"><span class="ltx_text" id="S3.T2.10.10.23.13.11.1" style="background-color:#FFCE93;">479 (810)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of the Optimized Minimal Gaussians (OMG) method against several baseline methods on two datasets: Tanks & Temples and Deep Blending.  The metrics used for comparison include PSNR, SSIM, LPIPS, size (in MB), and FPS.  For each method, the table shows the results obtained using an NVIDIA RTX 3090 GPU, which is consistent with the LocoGS [50] paper used as a baseline.  Additionally, to provide a more comprehensive evaluation, the table also includes performance results measured using a higher-performance NVIDIA RTX 4090 GPU, which is indicated by values in parentheses.  This allows for better understanding of the relative performance gains across different hardware.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results of OMG evaluated on the Tanks&Temples and Deep Blending datasets. Baseline results are sourced from the LocoGS [50] paper, where the rendering results were obtained using an NVIDIA RTX 3090 GPU. Our rendering performance was measured using the same GPU, with the values in parentheses obtained from an NVIDIA RTX 4090 GPU.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.2.1.1">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.2.1.2">Training</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.2.1.3">#Gauss</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.2.1.4">Size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.2.1.5">PSNR</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.2.1.6">SSIM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.2.1.7">LPIPS</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.1.2">LocoGS-S</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T3.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.1.1.1.1.1">
<span class="ltx_tr" id="S4.T3.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.1.1.1.1.1.1"><math alttext="\approx" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml">≈</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.1.1.1.m1.1b"><approx id="S4.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.1.1.1.m1.1.1"></approx></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.1.1.1.m1.1c">\approx</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.1.1.1.m1.1d">≈</annotation></semantics></math>1h</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.3">1.09M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.4">7.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.5">27.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.6">0.806</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.7">0.232</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.3.2.1">LocoGS-L</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.2">1.32M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.3">13.89</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.4">27.33</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.5">0.814</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.6">0.219</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.4.3.1">OMG-XS</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.3.2">20m 15s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.3.3">427K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.3.4">4.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.3.5">27.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.3.6">0.807</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.3.7">0.243</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.5.4.1">OMG-S</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.2">20m 57s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.3">501K</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.4">4.75</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.5">27.14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.6">0.811</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.7">0.235</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.6.5.1">OMG-M</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.2">21m 10s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.3">563K</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.4">5.31</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.5">27.21</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.6">0.814</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5.7">0.229</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.7.6.1">OMG-L</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.2">21m 32s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.3">696K</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.4">6.52</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.5">27.28</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.6">0.818</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6.7">0.220</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.1.8.7.1">OMG-XL</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.7.2">22m 26s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.7.3">727K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.7.4">6.82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.7.5">27.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.7.6">0.819</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.7.7">0.218</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the efficiency of different variants of the Optimized Minimal Gaussians (OMG) representation with the state-of-the-art LocoGS method on the Mip-NeRF 360 dataset.  It shows a comparison of training time, the number of Gaussian primitives used, the resulting storage size, and the rendering quality (PSNR, SSIM, LPIPS) for each method.  This allows for a quantitative assessment of the trade-offs between model complexity, storage efficiency, and rendering quality.
> <details>
> <summary>read the caption</summary>
> Table 3: Efficiency comparison of OMG variants compared to LocoGS evaluated on the Mip-NeRF 360 dataset. We present training time, the number of Gaussians, and the storage requirement with rendering quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.4.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.1.1.1.2">PSNR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.1.1.1.3">SSIM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.1.1.1.4">LPIPS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.1.1.1.5">#Gauss</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.1.1.1.6">Size</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.1.2.1.1">OMG-M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.1.2">27.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.1.3">0.814</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.1.4">0.229</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.1.5">0.56M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.1.6">5.31</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.1.3.2.1">w/o Space feature</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.2.2">26.96</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.2.3">0.811</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.2.4">0.232</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.2.5">0.59M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.2.6">5.58</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.1.4.3.1">w/o LD scoring</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.4.3.2">27.09</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.4.3.3">0.813</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.4.3.4">0.230</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.4.3.5">0.57M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.4.3.6">5.36</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.1.5.4.1">w/o Both</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.4.2">26.81</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.4.3">0.809</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.4.4">0.234</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.4.5">0.59M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.4.6">5.59</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.4.1.6.5.1">OMG-XS</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.5.2">27.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.5.3">0.807</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.5.4">0.243</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.5.5">0.43M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.5.6">4.06</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.1.7.6.1">w/o Space feature</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.6.2">26.85</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.6.3">0.804</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.6.4">0.246</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.6.5">0.44M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.6.6">4.17</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.1.8.7.1">w/o LD scoring</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.8.7.2">26.83</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.8.7.3">0.804</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.8.7.4">0.246</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.8.7.5">0.43M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.8.7.6">4.12</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.4.1.9.8.1">w/o Both</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.8.2">26.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.8.3">0.798</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.8.4">0.252</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.8.5">0.45M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.8.6">4.24</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the Optimized Minimal Gaussians (OMG) model, specifically examining the impact of two key components: the space feature integration and the local distinctiveness (LD) scoring.  It uses the Mip-NeRF 360 dataset for evaluation and shows the PSNR, SSIM, LPIPS metrics, the number of Gaussians, and the model size for different configurations of OMG.  The configurations vary based on the inclusion or exclusion of the space feature and LD scoring, allowing for a quantitative assessment of their individual contributions to the overall performance of the OMG model.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study of OMG using the Mip-NeRF 360 dataset. We evaluate the contribution of the space feature integration and local distinctiveness (LD) scoring.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.2.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.2.1.2">Training</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.2.1.3">#Gauss</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.2.1.4">Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.2.1.5">PSNR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.2.1.6">SSIM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.2.1.7">LPIPS</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.1.3.1.1">OMG-XS</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.2">20m 15s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.3">427K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.4">4.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.5">27.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.6">0.807</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1.7">0.243</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.1.1.1">SVQ <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">→</annotation></semantics></math> VQ</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.1.2">21m 22s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.1.3">426K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.1.4">3.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.1.5">26.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.1.6">0.805</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.1.7">0.245</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of using Sub-Vector Quantization (SVQ) versus Vector Quantization (VQ) in the Optimized Minimal Gaussians (OMG) model.  The experiment focuses on the Mip-NeRF 360 dataset.  The table compares performance metrics (Training time, number of Gaussians, model Size, PSNR, SSIM, LPIPS) for OMG-XS with SVQ and the same model but with SVQ replaced by VQ. This allows for a direct comparison of the two quantization methods and reveals the effects on model performance and training efficiency.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on SVQ using the Mip-NeRF 360 dataset. We substitute SVQ to VQ.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T6.4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T6.4.1.1.1">G-PCC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S6.T6.4.1.1.2">Huffman</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T6.4.1.1.3">Size (MB)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.4.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.2.1.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.2.1.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.2.1.3">5.82</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.3.2">
<td class="ltx_td ltx_align_center" id="S6.T6.4.3.2.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.3.2.2">-</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.3.2.3">4.30</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.4.3">
<td class="ltx_td ltx_align_center" id="S6.T6.4.4.3.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.4.3.2">✓</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.4.3.3">5.58</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S6.T6.4.5.4.1">OMG-XS</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.5.4.2">4.06</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.6.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.6.5.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.6.5.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.6.5.3">6.83</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.7.6">
<td class="ltx_td ltx_align_center" id="S6.T6.4.7.6.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.7.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.7.6.3">5.04</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.8.7">
<td class="ltx_td ltx_align_center" id="S6.T6.4.8.7.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.8.7.2">✓</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.8.7.3">6.54</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.9.8">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S6.T6.4.9.8.1">OMG-S</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.9.8.2">4.75</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.10.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.10.9.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.10.9.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.10.9.3">7.66</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.11.10">
<td class="ltx_td ltx_align_center" id="S6.T6.4.11.10.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.11.10.2">-</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.11.10.3">5.64</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.12.11">
<td class="ltx_td ltx_align_center" id="S6.T6.4.12.11.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.12.11.2">✓</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.12.11.3">7.33</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.13.12">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S6.T6.4.13.12.1">OMG-M</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.13.12.2">5.31</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.14.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.14.13.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.14.13.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.14.13.3">9.47</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.15.14">
<td class="ltx_td ltx_align_center" id="S6.T6.4.15.14.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.15.14.2">-</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.15.14.3">6.92</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.16.15">
<td class="ltx_td ltx_align_center" id="S6.T6.4.16.15.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.16.15.2">✓</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.16.15.3">9.08</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.17.16">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S6.T6.4.17.16.1">OMG-L</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.17.16.2">6.52</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.18.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.18.17.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.4.18.17.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.4.18.17.3">9.89</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.19.18">
<td class="ltx_td ltx_align_center" id="S6.T6.4.19.18.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.19.18.2">-</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.19.18.3">7.25</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.20.19">
<td class="ltx_td ltx_align_center" id="S6.T6.4.20.19.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.4.20.19.2">✓</td>
<td class="ltx_td ltx_align_center" id="S6.T6.4.20.19.3">9.46</td>
</tr>
<tr class="ltx_tr" id="S6.T6.4.21.20">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" colspan="2" id="S6.T6.4.21.20.1">OMG-XL</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.4.21.20.2">6.82</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different post-processing techniques on the overall size of the Optimized Minimal Gaussians (OMG) model.  It shows the model sizes resulting from using various combinations of G-PCC compression, Huffman coding, and LZMA compression.  This allows assessment of the effectiveness of each compression method independently and in combination.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study on the post-processing methods applied in OMG.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S7.T7.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S7.T7.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S7.T7.4.1.1.1">Attribute</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.4.1.1.2">XS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.4.1.1.3">S</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.4.1.1.4">M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S7.T7.4.1.1.5">L</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S7.T7.4.1.1.6">XL</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S7.T7.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S7.T7.4.2.1.1">Position</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.2.1.2">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.2.1.3">1.08</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.2.1.4">1.20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.2.1.5">1.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.4.2.1.6">1.52</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.T7.4.3.2.1">Scale</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.3.2.2">0.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.3.2.3">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.3.2.4">1.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.3.2.5">1.33</td>
<td class="ltx_td ltx_align_center" id="S7.T7.4.3.2.6">1.41</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.T7.4.4.3.1">Rotation</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.4.3.2">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.4.3.3">1.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.4.3.4">1.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.4.3.5">1.40</td>
<td class="ltx_td ltx_align_center" id="S7.T7.4.4.3.6">1.49</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.T7.4.5.4.1">Appearance</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.5.4.2">1.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.5.4.3">1.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.5.4.4">1.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.5.4.5">2.22</td>
<td class="ltx_td ltx_align_center" id="S7.T7.4.5.4.6">2.35</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S7.T7.4.6.5.1">MLPs</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.6.5.2">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.6.5.3">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.6.5.4">0.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S7.T7.4.6.5.5">0.03</td>
<td class="ltx_td ltx_align_center" id="S7.T7.4.6.5.6">0.03</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S7.T7.4.7.6.1">Total</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.7.6.2">4.04</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.7.6.3">4.73</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.7.6.4">5.29</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S7.T7.4.7.6.5">6.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.4.7.6.6">6.80</td>
</tr>
<tr class="ltx_tr" id="S7.T7.4.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S7.T7.4.8.7.1">Actual size</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.T7.4.8.7.2">4.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.T7.4.8.7.3">4.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.T7.4.8.7.4">5.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S7.T7.4.8.7.5">6.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.4.8.7.6">6.82</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the average storage used by each component (position, scale, rotation, appearance features, and MLPs) within the Optimized Minimal Gaussians (OMG) model.  Different versions of the OMG model (XS, S, M, L, XL) are compared, showing how storage needs vary with model complexity. The 'Actual size' column represents the total file size for each model variant, encompassing all components.
> <details>
> <summary>read the caption</summary>
> Table 7: The average storage allocation for each component across OMG variants. ‘Actual size’ refers to the total size of a single file containing all components.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S9.T8.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T8.4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S9.T8.4.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S9.T8.4.1.1.1.2">Metric</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.3">bicycle</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.4">bonsai</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.5">counter</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.6">flowers</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.7">garden</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.8">kitchen</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.9">room</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.10">stump</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.11">treehill</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S9.T8.4.1.1.1.12">Avg.</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.2.2.1" rowspan="7"><span class="ltx_text" id="S9.T8.4.1.2.2.1.1">OMG-XS</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.2.2.2">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.3">24.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.4">30.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.5">28.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.6">21.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.7">26.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.8">30.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.9">31.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.10">27.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.11">22.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.2.2.12">27.06</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.3.3.1">SSIM</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.2">0.743</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.3">0.932</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.4">0.899</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.5">0.596</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.6">0.818</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.7">0.919</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.8">0.918</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.9">0.788</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.10">0.647</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.3.3.11">0.807</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.4.4.1">LPIPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.2">0.276</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.3">0.202</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.4">0.206</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.5">0.368</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.6">0.190</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.7">0.137</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.8">0.208</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.9">0.247</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.10">0.357</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.4.4.11">0.243</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.5.5.1">Train</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.2">18:03</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.3">20:30</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.4">24:44</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.5">19:18</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.6">18:02</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.7">23:45</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.8">20:30</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.9">17:49</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.10">19:40</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.5.5.11">20:15</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.6.6.1">#Gauss</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.2">480772</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.3">263892</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.4">310056</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.5">543034</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.6">607254</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.7">356752</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.8">281236</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.9">523821</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.10">479520</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.6.6.11">427371</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.7.7.1">Size</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.2">4.61</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.3">2.53</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.4">2.95</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.5">5.24</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.6">5.65</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.7">3.33</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.8">2.67</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.9">4.95</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.10">4.64</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.7.7.11">4.06</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.8.8.1">FPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.2">682</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.3">648</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.4">433</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.5">616</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.6">615</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.7">498</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.8">648</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.9">708</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.10">658</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.8.8.11">612</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.9.9.1" rowspan="7"><span class="ltx_text" id="S9.T8.4.1.9.9.1.1">OMG-S</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.9.9.2">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.3">25.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.4">31.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.5">28.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.6">21.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.7">26.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.8">30.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.9">31.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.10">27.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.11">22.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.9.9.12">27.14</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.10.10.1">SSIM</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.2">0.750</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.3">0.936</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.4">0.903</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.5">0.602</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.6">0.826</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.7">0.921</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.8">0.922</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.9">0.792</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.10">0.650</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.10.10.11">0.811</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.11.11.1">LPIPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.2">0.264</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.3">0.195</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.4">0.199</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.5">0.358</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.6">0.177</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.7">0.132</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.8">0.201</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.9">0.239</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.10">0.347</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.11.11.11">0.235</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.12.12.1">Train</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.2">19:01</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.3">21:09</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.4">25:19</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.5">20:13</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.6">18:41</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.7">24:12</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.8">21:38</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.9">18:29</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.10">19:55</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.12.12.11">20:57</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.13.13.1">#Gauss</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.2">573126</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.3">310096</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.4">360930</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.5">633607</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.6">691441</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.7">412126</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.8">338884</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.9">619734</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.10">573425</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.13.13.11">501485</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.14.14.1">Size</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.2">5.46</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.3">2.94</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.4">3.41</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.5">6.10</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.6">6.43</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.7">3.83</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.8">3.19</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.9">5.83</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.10">5.54</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.14.14.11">4.75</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.15.15.1">FPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.2">601</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.3">585</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.4">401</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.5">555</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.6">556</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.7">462</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.8">620</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.9">601</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.10">588</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.15.15.11">552</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.16.16.1" rowspan="7"><span class="ltx_text" id="S9.T8.4.1.16.16.1.1">OMG-M</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.16.16.2">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.3">25.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.4">31.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.5">28.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.6">21.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.7">26.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.8">31.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.9">31.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.10">27.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.11">22.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.16.16.12">27.21</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.17.17.1">SSIM</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.2">0.756</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.3">0.938</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.4">0.905</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.5">0.606</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.6">0.832</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.7">0.923</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.8">0.923</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.9">0.794</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.10">0.652</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.17.17.11">0.814</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.18.18.1">LPIPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.2">0.256</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.3">0.190</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.4">0.195</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.5">0.351</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.6">0.169</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.7">0.129</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.8">0.198</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.9">0.233</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.10">0.339</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.18.18.11">0.229</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.19.19.1">Train</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.2">18:58</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.3">21:01</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.4">25:44</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.5">20:35</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.6">18:51</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.7">24:18</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.8">22:14</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.9">18:31</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.10">20:22</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.19.19.11">21:10</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.20.20.1">#Gauss</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.2">646191</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.3">350999</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.4">400442</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.5">708074</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.6">772338</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.7">454908</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.8">375520</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.9">704907</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.10">649157</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.20.20.11">562504</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.21.21.1">Size</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.2">6.15</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.3">3.33</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.4">3.76</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.5">6.79</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.6">7.18</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.7">4.21</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.8">3.53</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.9">6.61</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.10">6.24</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.21.21.11">5.31</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.22.22.1">FPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.2">562</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.3">536</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.4">371</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.5">510</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.6">522</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.7">440</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.8">566</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.9">566</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.10">525</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.22.22.11">511</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.23.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.23.23.1" rowspan="7"><span class="ltx_text" id="S9.T8.4.1.23.23.1.1">OMG-L</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.23.23.2">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.3">25.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.4">31.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.5">28.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.6">21.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.7">26.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.8">31.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.9">31.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.10">27.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.11">22.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.23.23.12">27.28</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.24.24.1">SSIM</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.2">0.762</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.3">0.941</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.4">0.907</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.5">0.613</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.6">0.837</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.7">0.924</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.8">0.926</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.9">0.795</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.10">0.653</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.24.24.11">0.818</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.25.25.1">LPIPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.2">0.241</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.3">0.183</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.4">0.189</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.5">0.338</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.6">0.160</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.7">0.126</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.8">0.191</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.9">0.226</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.10">0.329</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.25.25.11">0.220</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.26.26.1">Train</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.2">19:25</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.3">21:16</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.4">26:06</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.5">20:50</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.6">19:14</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.7">24:20</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.8">22:05</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.9">19:22</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.10">21:14</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.26.26.11">21:32</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.27.27.1">#Gauss</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.2">813561</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.3">463285</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.4">480133</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.5">859963</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.6">909961</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.7">524457</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.8">524457</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.9">869388</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.10">819435</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.27.27.11">696071</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.28.28.1">Size</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.2">7.69</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.3">4.32</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.4">4.48</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.5">8.23</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.6">8.42</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.7">4.82</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.8">4.82</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.9">8.14</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.10">7.81</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.28.28.11">6.52</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.29.29.1">FPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.2">476</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.3">492</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.4">332</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.5">422</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.6">422</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.7">405</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.8">539</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.9">468</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.10">414</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.29.29.11">441</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.30.30">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S9.T8.4.1.30.30.1" rowspan="7"><span class="ltx_text" id="S9.T8.4.1.30.30.1.1">OMG-XL</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S9.T8.4.1.30.30.2">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.3">25.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.4">31.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.5">28.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.6">21.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.7">26.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.8">31.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.9">31.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.10">27.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.11">22.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T8.4.1.30.30.12">27.34</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.31.31.1">SSIM</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.2">0.764</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.3">0.942</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.4">0.908</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.5">0.614</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.6">0.839</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.7">0.925</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.8">0.926</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.9">0.796</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.10">0.655</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.31.31.11">0.819</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.32.32.1">LPIPS</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.2">0.239</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.3">0.182</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.4">0.187</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.5">0.334</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.6">0.157</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.7">0.126</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.8">0.191</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.9">0.224</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.10">0.324</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.32.32.11">0.218</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.33.33.1">Train</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.2">20:43</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.3">21:54</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.4">26:21</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.5">22:09</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.6">20:23</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.7">24:56</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.8">22:37</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.9">20:22</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.10">22:33</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.33.33.11">22:26</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.34.34.1">#Gauss</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.2">864124</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.3">450246</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.4">507473</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.5">922061</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.6">953050</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.7">547636</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.8">493754</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.9">920589</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.10">885229</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.34.34.11">727129</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S9.T8.4.1.35.35.1">Size</th>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.2">8.15</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.3">4.22</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.4">4.72</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.5">8.81</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.6">8.82</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.7">5.02</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.8">4.58</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.9">8.59</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.10">8.44</td>
<td class="ltx_td ltx_align_center" id="S9.T8.4.1.35.35.11">6.82</td>
</tr>
<tr class="ltx_tr" id="S9.T8.4.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S9.T8.4.1.36.36.1">FPS</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.2">430</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.3">465</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.4">324</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.5">379</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.6">422</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.7">397</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.8">512</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.9">435</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.10">384</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T8.4.1.36.36.11">416</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive breakdown of the per-scene performance metrics obtained from evaluating the Optimized Minimal Gaussians (OMG) model on the Mip-NeRF 360 dataset.  It details the PSNR, SSIM, and LPIPS values for various scenes (bicycle, bonsai, counter, flowers, garden, kitchen, room, stump, treehill) across different configurations of the OMG model (OMG-XS, OMG-S, OMG-M, OMG-L, OMG-XL).  In addition to the image quality metrics, the table includes the training time, the number of Gaussians used, the model size (in MB), and the rendering FPS for each scene and model variant.  This allows for a detailed comparison of the trade-offs between model size, computational cost, and visual fidelity across different scenes and OMG configurations.
> <details>
> <summary>read the caption</summary>
> Table 8: Per-scene results evaluated on the Mip-NeRF 360 [2] dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S9.T9.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T9.4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S9.T9.4.1.1.1" rowspan="2"><span class="ltx_text" id="S9.T9.4.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S9.T9.4.1.1.2" rowspan="2"><span class="ltx_text" id="S9.T9.4.1.1.2.1">Metric</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S9.T9.4.1.1.3">Tank&amp;Temples</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S9.T9.4.1.1.4">Deep Blending</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.2.2.1">Train</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.2.2.2">Truck</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.4.2.2.3">Avg.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.2.2.4">drjohnson</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.2.2.5">Playroom</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.2.2.6">Avg.</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S9.T9.4.3.3.1" rowspan="7"><span class="ltx_text" id="S9.T9.4.3.3.1.1">OMG-M</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T9.4.3.3.2">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.3.3.3">21.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.3.3.4">25.25</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.4.3.3.5">23.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.3.3.6">29.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.3.3.7">30.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.3.3.8">29.77</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.4.4.1">SSIM</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.4.4.2">0.806</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.4.4.3">0.878</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.4.4.4">0.842</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.4.4.5">0.905</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.4.4.6">0.910</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.4.4.7">0.908</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.5.5.1">LPIPS</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.5.5.2">0.233</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.5.5.3">0.144</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.5.5.4">0.189</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.5.5.5">0.253</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.5.5.6">0.253</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.5.5.7">0.253</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.6.6.1">Train</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.6.6.2">12:12</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.6.6.3">11:30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.6.6.4">11:51</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.6.6.5">17:18</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.6.6.6">14:51</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.6.6.7">16:05</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.7.7.1">#Gauss</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.7.7.2">303187</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.7.7.3">257649</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.7.7.4">330418</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.7.7.5">520385</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.7.7.6">404237</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.7.7.7">462311</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.8.8.1">Size</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.8.8.2">2.95</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.8.8.3">3.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.8.8.4">3.22</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.8.8.5">4.87</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.8.8.6">3.82</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.8.8.7">4.34</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.9.9.1">FPS</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.9.9.2">861</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.9.9.3">913</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.9.9.4">887</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.9.9.5">829</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.9.9.6">959</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.9.9.7">894</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S9.T9.4.10.10.1" rowspan="7"><span class="ltx_text" id="S9.T9.4.10.10.1.1">OMG-L</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T9.4.10.10.2">PSNR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.10.10.3">21.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.10.10.4">25.36</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T9.4.10.10.5">23.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.10.10.6">29.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.10.10.7">30.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T9.4.10.10.8">29.88</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.11.11.1">SSIM</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.11.11.2">0.811</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.11.11.3">0.881</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.11.11.4">0.846</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.11.11.5">0.907</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.11.11.6">0.912</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.11.11.7">0.910</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.12.12.1">LPIPS</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.12.12.2">0.225</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.12.12.3">0.136</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.12.12.4">0.181</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.12.12.5">0.247</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.12.12.6">0.247</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.12.12.7">0.247</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.13.13.1">Train</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.13.13.2">12:12</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.13.13.3">11:39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.13.13.4">11:56</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.13.13.5">17:39</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.13.13.6">14:58</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.13.13.7">16:19</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.14.14.1">#Gauss</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.14.14.2">369440</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.14.14.3">442359</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.14.14.4">405900</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.14.14.5">627868</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.14.14.6">485329</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.14.14.7">556599</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S9.T9.4.15.15.1">Size</th>
<td class="ltx_td ltx_align_center" id="S9.T9.4.15.15.2">3.58</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.15.15.3">4.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S9.T9.4.15.15.4">3.93</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.15.15.5">5.86</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.15.15.6">4.55</td>
<td class="ltx_td ltx_align_center" id="S9.T9.4.15.15.7">5.21</td>
</tr>
<tr class="ltx_tr" id="S9.T9.4.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S9.T9.4.16.16.1">FPS</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T9.4.16.16.2">760</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T9.4.16.16.3">780</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S9.T9.4.16.16.4">770</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T9.4.16.16.5">745</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T9.4.16.16.6">874</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S9.T9.4.16.16.7">810</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of the Optimized Minimal Gaussians (OMG) model on a per-scene basis for two datasets: Tanks & Temples and Deep Blending.  For each scene within each dataset, the table provides key metrics such as PSNR, SSIM, and LPIPS, offering a comprehensive evaluation of the visual quality achieved by the model.  Additionally, the training time, the number of Gaussians utilized, the overall file size, and the frames per second (FPS) achieved during rendering are reported, providing a complete picture of both the model's accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 9: Per-scene results evaluated on the Tank&Temples [28] and Deep Blending [21] datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16924/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16924/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}