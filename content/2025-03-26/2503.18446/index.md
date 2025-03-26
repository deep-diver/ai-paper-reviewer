---
title: "Latent Space Super-Resolution for Higher-Resolution Image Generation with Diffusion Models"
summary: "LSRNA: Super-resolution in latent space enhances image generation with diffusion models, achieving faster speeds and improved detail."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Yonsei University",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18446 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinho Jeong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18446" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18446" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18446/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models struggle with high-resolution image generation, often leading to distortions or content repetition. Reference-based methods guide generation using upsampled references but face issues: latent space upsampling causes manifold deviation, degrading quality, while RGB space upsampling produces overly smooth results. This requires novel frameworks to mitigate these problems.



LSRNA is introduced, combining Latent space SR (LSR) for manifold alignment with Region-wise Noise Addition (RNA) to enhance details. LSR maps low-resolution latent representations onto higher-resolution manifolds, and RNA adaptively injects Gaussian noise into upsampled reference latents. Experiments demonstrate that LSRNA outperforms state-of-the-art methods, preserves detail, and accelerates generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Latent space super-resolution is crucial for preserving sharpness and detail in high-resolution image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Region-wise noise addition adaptively enhances fine details, improving output quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The LSRNA framework eliminates the need for progressive upscaling, leading to faster generation speeds. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **LSRNA, which effectively combines latent space SR and region-wise noise addition**. It addresses the challenges of high-resolution image generation, offering faster speeds, detail enhancement, and manifold alignment, **paving the way for future advancements in diffusion models**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18446/x2.png)

> 🔼 This figure demonstrates the improved performance of the LSRNA framework in generating higher-resolution images compared to existing methods.  It shows four image pairs: two generated using reference-based methods (DemoFusion and Pixelsmith) without LSRNA, and two generated with the LSRNA framework integrated into DemoFusion and Pixelsmith. The LSRNA-enhanced images exhibit significantly improved detail and sharpness, exceeding the native 1024x1024 resolution of the SDXL diffusion model.  Furthermore, the generation times are considerably faster for the LSRNA-enhanced images.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparisons of 16×\times× image generation with and without LSRNA framework. Our proposed LSRNA framework improves reference-based higher-resolution image generation, enhancing detail and sharpness beyond the native resolution of SDXL [39] (10242superscript102421024^{2}1024 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT) while achieving faster generation speeds.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T1.6.6.7.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Resolution</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T1.6.6.7.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.6.7.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">FID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.6.7.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">KID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.6.7.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">pFID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.6.7.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">pKID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.6.7.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">IS (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T1.6.6.7.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">CLIP (↑)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.6.6.7.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">Time (sec)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDXL<math alttext="+" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><plus id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">+</annotation></semantics></math>BSRGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.32</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0080</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.71</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0090</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.11</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.303</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.1.1.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.1.1.1.9.1" style="color:#FF0000;">16</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.8.1">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.8.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.8.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDXL (Direct) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">113.19</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0222</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">64.20</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0198</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">19.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.8.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.294</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">80</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.9.2">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.9.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.9.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">ScaleCrafter <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">91.76</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0103</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">45.60</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0106</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">29.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.9.2.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.301</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">101</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.10.3">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.10.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.10.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">FouriScale <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">104.30</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0175</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">57.00</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0167</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">23.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.10.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.300</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">134</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.11.4">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.11.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.11.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">HiDiffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.23</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0106</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">43.76</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0099</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">27.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.11.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.299</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.11.4.9.1" style="color:#0000FF;">50</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.12.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.12.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S5.T1.6.6.12.5.1.1">\cdashline</span>2-9</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.12.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Self-Cascade <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.12.5.3.1" style="color:#FF0000;">83.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.12.5.4.1" style="color:#FF0000;">0.0064</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.12.5.5.1" style="color:#FF0000;">36.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.12.5.6.1" style="color:#0000FF;">0.0070</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">31.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.12.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.12.5.8.1" style="color:#FF0000;">0.305</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">90</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.13.6">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.13.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.13.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">DemoFusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.02</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0079</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">38.96</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0087</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.13.6.7.1" style="color:#FF0000;">32.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.13.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.302</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">205</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.14.7">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.14.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.14.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.14.7.2.1">LSRNA-DemoFusion (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.14.7.3.1" style="color:#0000FF;">83.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.14.7.4.1" style="color:#0000FF;">0.0077</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.14.7.5.1" style="color:#0000FF;">36.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.14.7.6.1" style="color:#FF0000;">0.0069</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.14.7.7.1" style="color:#0000FF;">31.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.14.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.303</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">115</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.15.8">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.15.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.15.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Pixelsmith <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.40</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0091</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.51</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0087</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.15.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.15.8.8.1" style="color:#0000FF;">0.304</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">126</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.1.1">2048<math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.2.2.2.1.1.m1.1"><semantics id="S5.T1.2.2.2.1.1.m1.1a"><mo id="S5.T1.2.2.2.1.1.m1.1.1" xref="S5.T1.2.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.1.1.m1.1b"><times id="S5.T1.2.2.2.1.1.m1.1.1.cmml" xref="S5.T1.2.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.1.1.m1.1d">×</annotation></semantics></math>2048</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.2.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.2.2.2.1">LSRNA-Pixelsmith (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.90</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0079</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">37.33</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0074</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.2.2.2.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.302</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">86</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.3">
<td class="ltx_td ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDXL<math alttext="+" class="ltx_Math" display="inline" id="S5.T1.3.3.3.1.m1.1"><semantics id="S5.T1.3.3.3.1.m1.1a"><mo id="S5.T1.3.3.3.1.m1.1.1" xref="S5.T1.3.3.3.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.1.m1.1b"><plus id="S5.T1.3.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.3.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.1.m1.1d">+</annotation></semantics></math>BSRGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.71</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0058</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.81</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0122</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">25.95</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.294</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.3.3.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.3.3.3.9.1" style="color:#FF0000;">17</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.16.9">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.16.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.16.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDXL (Direct) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">134.57</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0370</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">71.73</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0230</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">12.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.16.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.276</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">245</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.17.10">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.17.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.17.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">ScaleCrafter <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">93.32</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0142</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">43.35</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0130</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">23.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.17.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.288</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">419</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.18.11">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.18.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.18.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">HiDiffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">101.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0177</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">51.66</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0158</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.18.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.283</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.18.11.9.1" style="color:#0000FF;">129</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.19.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.19.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S5.T1.6.6.19.12.1.1">\cdashline</span>2-9</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.19.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Self-Cascade <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.19.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.19.12.3.1" style="color:#FF0000;">78.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.19.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.19.12.4.1" style="color:#FF0000;">0.0042</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.19.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">34.40</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.19.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0076</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.19.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">25.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.19.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.294</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.19.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">210</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.20.13">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.20.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.20.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">DemoFusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.20.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.63</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.20.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0072</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.20.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">38.64</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.20.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0082</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.20.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.20.13.7.1" style="color:#0000FF;">27.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.20.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.294</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.20.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">648</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.21.14">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.21.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.21.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.21.14.2.1">LSRNA-DemoFusion (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.21.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.53</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.21.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0057</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.21.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.21.14.5.1" style="color:#0000FF;">33.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.21.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.21.14.6.1" style="color:#0000FF;">0.0064</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.21.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">27.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.21.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.21.14.8.1" style="color:#FF0000;">0.297</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.21.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">223</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.22.15">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.22.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.22.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Pixelsmith <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.22.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.21</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.22.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0069</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.22.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">40.86</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.22.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0108</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.22.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">25.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.22.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.294</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.22.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">232</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.4.4.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.4.4.4.1.1">2048<math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.4.4.4.1.1.m1.1"><semantics id="S5.T1.4.4.4.1.1.m1.1a"><mo id="S5.T1.4.4.4.1.1.m1.1.1" xref="S5.T1.4.4.4.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.1.1.m1.1b"><times id="S5.T1.4.4.4.1.1.m1.1.1.cmml" xref="S5.T1.4.4.4.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.1.1.m1.1d">×</annotation></semantics></math>4096</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.4.4.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.4.2.1">LSRNA-Pixelsmith (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.4.4.4.3.1" style="color:#0000FF;">78.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.4.4.4.4.1" style="color:#0000FF;">0.0050</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.4.4.4.5.1" style="color:#FF0000;">32.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.4.4.4.6.1" style="color:#FF0000;">0.0062</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.4.4.4.7.1" style="color:#FF0000;">28.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.4.4.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.4.4.4.8.1" style="color:#0000FF;">0.295</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">157</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.5.5">
<td class="ltx_td ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDXL<math alttext="+" class="ltx_Math" display="inline" id="S5.T1.5.5.5.1.m1.1"><semantics id="S5.T1.5.5.5.1.m1.1a"><mo id="S5.T1.5.5.5.1.m1.1.1" xref="S5.T1.5.5.5.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.1.m1.1b"><plus id="S5.T1.5.5.5.1.m1.1.1.cmml" xref="S5.T1.5.5.5.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.1.m1.1d">+</annotation></semantics></math>BSRGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.5.5.5.3.1" style="color:#0000FF;">84.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0081</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">37.04</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0149</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.13</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.302</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S5.T1.5.5.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.5.5.5.9.1" style="color:#FF0000;">17</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.23.16">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.23.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.23.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">SDXL (Direct) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.23.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">217.88</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.23.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0976</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.23.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.05</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.23.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0468</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.23.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.23.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.270</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.23.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">786</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.24.17">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.24.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.24.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">ScaleCrafter <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.24.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">110.49</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.24.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0202</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.24.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">54.91</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.24.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.24.17.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.24.17.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.293</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.24.17.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">1351</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.25.18">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.25.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.25.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">HiDiffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.25.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">128.28</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.25.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0319</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.25.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.85</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.25.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0564</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.25.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">19.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.25.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.280</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.25.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.25.18.9.1" style="color:#0000FF;">240</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.26.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.26.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_ERROR undefined" id="S5.T1.6.6.26.19.1.1">\cdashline</span>2-9</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.26.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Self-Cascade <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.26.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.94</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.26.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0106</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.26.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">43.91</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.26.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0187</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.26.19.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">27.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.26.19.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.300</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.26.19.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">669</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.27.20">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.27.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.27.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">DemoFusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.27.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">87.29</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.27.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0089</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.27.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">32.89</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.27.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0102</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.27.20.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">29.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.27.20.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.300</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.27.20.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">1507</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.28.21">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.28.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.28.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.28.21.2.1">LSRNA-DemoFusion (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.28.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.03</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.28.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.28.21.4.1" style="color:#0000FF;">0.0077</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.28.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.28.21.5.1" style="color:#FF0000;">29.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.28.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.28.21.6.1" style="color:#FF0000;">0.0085</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.28.21.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.28.21.7.1" style="color:#0000FF;">31.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.28.21.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.28.21.8.1" style="color:#FF0000;">0.304</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.28.21.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">506</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.29.22">
<td class="ltx_td ltx_border_r" id="S5.T1.6.6.29.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.29.22.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Pixelsmith <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18446v2#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.29.22.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.75</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.29.22.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0086</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.29.22.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">32.34</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.29.22.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0111</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.29.22.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.29.22.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.29.22.8.1" style="color:#0000FF;">0.303</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.29.22.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">505</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.6.6.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.6.1.1">4096<math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.6.6.6.1.1.m1.1"><semantics id="S5.T1.6.6.6.1.1.m1.1a"><mo id="S5.T1.6.6.6.1.1.m1.1.1" xref="S5.T1.6.6.6.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.1.1.m1.1b"><times id="S5.T1.6.6.6.1.1.m1.1.1.cmml" xref="S5.T1.6.6.6.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.1.1.m1.1d">×</annotation></semantics></math>4096</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T1.6.6.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.6.2.1">LSRNA-Pixelsmith (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.6.3.1" style="color:#FF0000;">84.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.6.4.1" style="color:#FF0000;">0.0075</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.6.5.1" style="color:#0000FF;">29.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.6.6.1" style="color:#0000FF;">0.0090</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S5.T1.6.6.6.7.1" style="color:#FF0000;">31.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.6.6.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.302</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">313</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of various image generation methods' performance on the OpenImages-Test dataset.  The metrics used are FID, KID, pFID, pKID, IS, and CLIP, measuring different aspects of image quality and semantic alignment.  Performance is categorized by whether the method uses a reference image or not. Methods are compared at three different resolutions (2048x2048, 2048x4096, and 4096x4096).  The best and second-best results for each metric are highlighted for easy comparison. Due to memory limitations, the FouriScale method's results are not included for resolutions larger than 2K.
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative comparison results on OpenImages-Test. The best and second-best performances are highlighted in red and blue, respectively. Methods above the dashed line are non-reference-based, while those below are reference-based. FouriScale is not measured above 2K due to out-of-memory on our V100 GPU.
> </details>





### In-depth insights


#### Latent SR Insight
**Latent Space Super-Resolution (SR)** offers a compelling avenue for enhancing image generation with diffusion models. Unlike direct RGB space SR which often leads to overly smoothed outputs, latent SR operates within a compressed feature space, preserving high-level information crucial for detail and sharpness. By upsampling in the latent domain, methods can potentially leverage learned representations to better align with the target resolution's manifold, reducing artifacts and improving perceptual quality.  The challenge lies in effectively mapping low-resolution latent representations to their high-resolution counterparts without introducing manifold deviations.  Techniques like Region-wise Noise Addition (RNA) can further refine the process by selectively enhancing high-frequency details in the upsampled latent space.  This nuanced approach enables diffusion models to generate higher-resolution images with greater fidelity and visual appeal, while maintaining faster generation speeds.

#### RNA Detail Focus
RNA Detail Focus likely refers to a technique within the research to specifically enhance the finer details in generated images. Considering the context of diffusion models and super-resolution, this probably involves a targeted approach to add noise or refine the high-frequency components of the image. It's reasonable to assume that the method aims to address the common issue of diffusion models producing overly smooth or blurry results. **The core idea is to guide the model towards generating sharper textures, intricate patterns, and subtle details that contribute to a more realistic and visually appealing output.** This "RNA Detail Focus" would probably utilize edge detection or other methods to identify areas where detail enhancement is most needed, allowing for adaptive application and preventing unwanted artifacts or over-sharpening in less critical regions.

#### LSRNA Framework
The LSRNA framework, as proposed in the paper, represents a significant advancement in the field of high-resolution image generation using diffusion models. The core idea revolves around addressing the limitations of existing methods when scaling beyond the training resolution of these models. Existing methods often suffer from structural distortions or content repetition. The framework introduces two key components: the **Latent Space Super-Resolution (LSR)** module and the **Region-wise Noise Addition (RNA)** module. The LSR module aims to align low-resolution latent representations with the higher-resolution manifold, addressing manifold deviation issues caused by naive latent space upsampling. The **RNA module** enhances high-frequency details by adaptively injecting Gaussian noise into specific regions of the upsampled latent, guided by a Canny edge detection map. This combination allows for both manifold alignment and detailed texture generation, leading to improved image quality. The framework's effectiveness is demonstrated through integration with existing reference-based methods, showcasing its adaptability and potential to push the boundaries of high-resolution image generation.

#### Ablation Analyses
Ablation analyses are crucial for understanding the contribution of different components within a complex system like the proposed LSRNA framework. **By systematically removing or modifying parts of the system**, such as the Latent Space Super-Resolution (LSR) module or the Region-wise Noise Addition (RNA) module, researchers can isolate the impact of each component on overall performance. **These analyses help verify the necessity of each module** and whether they are truly contributing to the desired outcome of improved image quality and faster generation speeds. Furthermore, ablation studies can identify potential redundancies or areas where a component's effectiveness is limited. For instance, varying the parameters of RNA or the specific architecture of LSR can reveal optimal configurations and trade-offs. Analyzing the results with different metrics, like FID and KID scores, provides a comprehensive assessment. **The absence of a module and its impact on final results** is a key factor in deciding whether the said module is important or not. **These analyses show that the LSR module plays an important role**. Finally, **ablation studies help researchers gain a deeper understanding of the underlying mechanisms** and guide future research directions to develop improved methods.

#### Detail Preserving
In the context of image super-resolution and generation, detail preservation is a critical aspect that determines the visual fidelity and perceptual quality of the output. **Preserving intricate details** such as fine textures, sharp edges, and subtle color variations is essential for creating realistic and visually appealing images. Techniques like **Latent Space Super-Resolution (LSR)** aim to minimize manifold deviation during upsampling to retain structural coherence. Further enhancement through methods like Region-wise Noise Addition (RNA) can inject high-frequency details, helping to restore or even augment textures that might be lost during scaling. The challenge lies in balancing detail enhancement with the introduction of artifacts or noise, requiring careful calibration of parameters. The preservation of details often trades off against computational efficiency, where more aggressive methods can demand higher processing power.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18446/x3.png)

> 🔼 Figure 2 demonstrates the effects of different upsampling techniques on the quality of images generated using DemoFusion.  It compares three approaches: (a) directly upsampling the latent representation using bicubic interpolation, which results in artifacts and a degradation in image quality due to manifold deviation; (b) directly upsampling the image in RGB space using bicubic interpolation, which produces a smoother image with less detail; and (c) the authors' method, LSRNA, which learns a latent-space upsampling technique to align the manifold and generate sharp, high-quality images. The figure highlights the importance of latent-space upsampling for maintaining high-fidelity image generation.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Comparison of DemoFusion with different upsampling strategies. All methods are directly upsampled to 16×\times× resolution. (a) Latent space bicubic upsampling causes manifold deviation, degrading output quality. (b) RGB space bicubic upsampling produces outputs with reduced detail and sharpness. (c) Our learned latent-space upsampling aligns the manifold, resulting in sharp and detailed outputs. Best viewed ZOOMED-IN.
> </details>



![](https://arxiv.org/html/2503.18446/x4.png)

> 🔼 Figure 3 compares three different approaches to generating high-resolution images using diffusion models. (a) shows the traditional latent upsampling method, which progressively increases the resolution to reduce errors in mapping between different resolution manifolds. However, this method is slow. (b) demonstrates the alternative RGB upsampling method, which directly upsamples to the target resolution, but tends to result in smoother, less detailed output. (c) introduces the authors' proposed LSRNA framework, performing upsampling directly in the latent space without progressive steps. This greatly speeds up image generation, resulting in sharper, more detailed output.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Framework Comparison. (a) Existing latent upsampling framework rely on progressive upsampling to address manifold deviation. (b) Existing RGB upsampling framework can directly upsample (optionally progressively), but produce smooth output. (c) Our framework enables latent upsampling without progressive upscaling with much fewer denoising steps (Tc<Tsubscript𝑇𝑐𝑇T_{c}<Titalic_T start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT < italic_T) while producing detailed outputs (RNA omitted for simplicity). LR, MR, HR: low/mid/high resolution; DM: Diffusion Model.
> </details>



![](https://arxiv.org/html/2503.18446/x5.png)

> 🔼 The figure illustrates the LSRNA framework, which enhances reference-based image upscaling for higher-resolution generation using diffusion models.  It consists of two main modules: Latent Space Super-Resolution (LSR) and Region-wise Noise Addition (RNA). LSR maps a low-resolution latent representation to a high-resolution manifold, ensuring detail preservation during upsampling. RNA then adds region-specific noise guided by a Canny edge map to the upscaled latent, further enhancing high-frequency details during the subsequent diffusion process. This results in improved higher-resolution images that retain sharpness and detail. 
> <details>
> <summary>read the caption</summary>
> Figure 4:  Overview of LSRNA. The proposed LSRNA enhances reference upsampling with Latent space Super-Resolution (LSR) and Region-wise Noise Addition (RNA). LSR directly maps the low-resolution reference latent onto the high-resolution manifold. RNA then injects region-adaptive noise into the mapped reference, guided by a canny edge map. RNA facilitates detail generation in the higher-resolution generation stage.
> </details>



![](https://arxiv.org/html/2503.18446/x6.png)

> 🔼 This figure displays a qualitative comparison of different reference-based image generation methods at resolutions of 2K and 4K.  It showcases the outputs of these methods for generating images of an apple and a puppy. The goal is to demonstrate the visual differences in terms of detail, sharpness, and overall quality between the various approaches. The figure highlights the impact of different upsampling strategies (latent space vs. RGB space) and the role of denoising steps on the final image output.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Qualitative comparisons across reference-based methods at 2K and 4K resolutions.
> </details>



![](https://arxiv.org/html/2503.18446/x7.png)

> 🔼 This ablation study investigates the impact of varying the number of denoising steps on the performance of the DemoFusion model.  It compares the original DemoFusion model with two variations incorporating the LSRNA framework: one without RNA (Region-wise Noise Addition), and the full LSRNA model.  The plot likely shows how image quality metrics (like FID and pFID, which are discussed in the paper) change as the number of denoising steps increases for each model configuration, illustrating the effectiveness of LSRNA in reducing the necessary number of steps to achieve high-quality results.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation study of denoising steps with DemoFusion.
> </details>



![](https://arxiv.org/html/2503.18446/x8.png)

> 🔼 This figure demonstrates a comparison between Region-wise Noise Addition (RNA) and Uniform Noise Addition (UNA) methods. The left side shows RNA, effectively preserving low-frequency image regions while enhancing high-frequency details and textures. Conversely, the right side shows UNA, where introducing noise across various regions at higher levels leads to visual artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Qualitative comparison of Region-wise Noise Addition (RNA) and Uniform Noise Addition (UNA). RNA (left) effectively preserves low-frequency areas while enhancing high-frequency detail and texture. In contrast, UNA (right) introduce artifacts across various regions at higher noise levels.
> </details>



![](https://arxiv.org/html/2503.18446/x9.png)

> 🔼 This figure shows a qualitative comparison of the results obtained using region-wise noise addition (RNA) with two different edge detection methods: the Canny edge detector and the Scharr edge detector.  It visually demonstrates the impact of the edge detection method on the quality of the generated images. The Scharr edge detector produces less satisfactory results compared to the Canny edge detector, showing artifacts and less effective detail enhancement.
> <details>
> <summary>read the caption</summary>
> Figure A: Qualitative results of RNA using Scharr edge map.
> </details>



![](https://arxiv.org/html/2503.18446/x10.png)

> 🔼 This ablation study investigates the effect of varying the strength of Uniform Noise Addition (UNA) on image generation quality.  The experiment uses the DemoFusion model and the OpenImages-Valid dataset, which has been downsampled 9 times. The x-axis represents the strength of UNA, controlled by parameters *e<sub>min</sub>* and *e<sub>max</sub>*, both ranging from 0 to 1. The y-axis shows the resulting pFID (Patch-based Fréchet Inception Distance) scores, which are lower is better. The dotted line indicates the performance of the default Region-wise Noise Addition (RNA) settings from the main paper (*e<sub>min</sub>* = 0, *e<sub>max</sub>* = 1.2). The results of this experiment show how changing the strength of uniform noise impacts the generated image quality. The figure illustrates the comparison between uniform noise addition and the authors' proposed region-wise noise addition. 
> <details>
> <summary>read the caption</summary>
> Figure B: Ablation study of UNA (Uniform Noise Addition) strength on OpenImages-Valid (×9absent9\times 9× 9) with DemoFusion. Dotted line shows our default RNA setting (em⁢i⁢n=0subscript𝑒𝑚𝑖𝑛0e_{min}=0italic_e start_POSTSUBSCRIPT italic_m italic_i italic_n end_POSTSUBSCRIPT = 0 and em⁢a⁢x=1.2subscript𝑒𝑚𝑎𝑥1.2e_{max}=1.2italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT = 1.2).
> </details>



![](https://arxiv.org/html/2503.18446/x11.png)

> 🔼 This figure compares the results of three different upsampling methods used in DemoFusion, a technique for generating higher-resolution images.  The methods being compared are: bicubic upsampling in RGB space, super-resolution in RGB space, and the authors' proposed latent space super-resolution method (LSRNA). All three methods are used to upscale a low-resolution image to 16 times its original size. The prompt used to generate the images is: “the sun is setting over the ocean on a cloudy day”. The results demonstrate that the proposed LSRNA method produces images with superior sharpness and detail compared to upsampling directly in RGB space.
> <details>
> <summary>read the caption</summary>
> Figure C:  RGB vs. Latent Space Upsampling for DemoFusion on 16×\times×. Prompt used is 'the sun is setting over the ocean on a cloudy day'. Best viewed ZOOMED-IN.
> </details>



![](https://arxiv.org/html/2503.18446/x12.png)

> 🔼 This figure compares the results of three different upsampling methods used in the Pixelsmith model for generating 16 times higher resolution images of a sunset over the ocean.  The three methods are: RGB upsampling using bicubic interpolation (Pixelsmith-rgbLanc), RGB upsampling with a super-resolution network (Pixelsmith-rgbSR), and latent space upsampling using the proposed LSRNA framework (LSRNA-Pixelsmith). The images clearly demonstrate the superior quality and detail preservation capabilities of the latent space upsampling method, producing sharper and more visually appealing results compared to the RGB-based approaches. The comparison highlights the importance of latent space upsampling for achieving high-quality higher-resolution image generation with diffusion models.
> <details>
> <summary>read the caption</summary>
> Figure D:  RGB vs. Latent Space Upsampling for Pixelsmith on 16×\times×. Prompt used is 'the sun is setting over the ocean on a cloudy day'. Best viewed ZOOMED-IN.
> </details>



![](https://arxiv.org/html/2503.18446/x13.png)

> 🔼 This figure compares the results of generating a 64x upscaled image using DemoFusion with different upsampling methods.  It demonstrates the visual differences between upsampling in RGB space (using bicubic and super-resolution methods) versus upsampling directly in the latent space (using the LSRNA framework). The prompt used for image generation is: 'A mysterious forest with tall, ancient trees and beams of sunlight filtering through the mist, detailed moss-covered roots, 8k'. The latent space upsampling method is shown to produce sharper and more detailed results.
> <details>
> <summary>read the caption</summary>
> Figure E:  RGB vs. Latent Space Upsampling for DemoFusion on 64×\times×. Prompt used is 'A mysterious forest with tall, ancient trees and beams of sunlight filtering through the mist, detailed moss-covered roots, 8k'. Best viewed ZOOMED-IN.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.7.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T2.7.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">FID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">KID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">pFID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T2.7.1.1.1.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">pKID (↓)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.1.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">Time (sec)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.7.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.7.1.2.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">DemoFusion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.2.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.2.1.2.1">131.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.2.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.0064</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.2.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">38.75</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.7.1.2.1.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.0075</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.2.1.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">660</td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.7.1.3.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_ERROR undefined" id="S5.T2.7.1.3.2.1.1">\cdashline</span>1-6
LSRNA-DemoFusion (w/o RNA)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.3.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.65</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.3.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.0065</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.3.2.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">37.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.7.1.3.2.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.3.2.5.1">0.0057</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.3.2.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">272</td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T2.7.1.4.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">LSRNA-DemoFusion</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.4.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.4.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.4.3.3.1">0.0053</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.4.3.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.4.3.4.1">35.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.7.1.4.3.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.4.3.5.1">0.0057</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.4.3.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">272</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the LSRNA framework using the DemoFusion model.  The goal is to show the impact of each component of LSRNA (Latent Space Super-Resolution and Region-wise Noise Addition) on image generation quality.  The table shows FID, KID, pFID, pKID, and inference time for three scenarios: the baseline DemoFusion model, DemoFusion with only the LSR module, and the full LSRNA framework.  The metrics are evaluated on the OpenImages-Valid dataset, upscaled by a factor of 9. The best-performing configuration for each metric is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 2:  LSR & RNA ablation on OpenImages-Valid (×\times×9) with DemoFusion. The best results marked in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.11.11.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.8.8.6.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S6.4.4.2.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S6.3.3.1.1.1.m1.1"><semantics id="S6.3.3.1.1.1.m1.1a"><mo id="S6.3.3.1.1.1.m1.1.1" xref="S6.3.3.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.3.3.1.1.1.m1.1b"><times id="S6.3.3.1.1.1.m1.1.1.cmml" xref="S6.3.3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.3.3.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.3.3.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S6.4.4.2.2.2.1">4</span> (2048<math alttext="\times" class="ltx_Math" display="inline" id="S6.4.4.2.2.2.m2.1"><semantics id="S6.4.4.2.2.2.m2.1a"><mo id="S6.4.4.2.2.2.m2.1.1" xref="S6.4.4.2.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.4.4.2.2.2.m2.1b"><times id="S6.4.4.2.2.2.m2.1.1.cmml" xref="S6.4.4.2.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.4.4.2.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.4.4.2.2.2.m2.1d">×</annotation></semantics></math>2048)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S6.6.6.4.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S6.5.5.3.3.3.m1.1"><semantics id="S6.5.5.3.3.3.m1.1a"><mo id="S6.5.5.3.3.3.m1.1.1" xref="S6.5.5.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.5.5.3.3.3.m1.1b"><times id="S6.5.5.3.3.3.m1.1.1.cmml" xref="S6.5.5.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.5.5.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.5.5.3.3.3.m1.1d">×</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S6.6.6.4.4.4.1">9</span> (3072<math alttext="\times" class="ltx_Math" display="inline" id="S6.6.6.4.4.4.m2.1"><semantics id="S6.6.6.4.4.4.m2.1a"><mo id="S6.6.6.4.4.4.m2.1.1" xref="S6.6.6.4.4.4.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.6.6.4.4.4.m2.1b"><times id="S6.6.6.4.4.4.m2.1.1.cmml" xref="S6.6.6.4.4.4.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.6.6.4.4.4.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.6.6.4.4.4.m2.1d">×</annotation></semantics></math>3072)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S6.8.8.6.6.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S6.7.7.5.5.5.m1.1"><semantics id="S6.7.7.5.5.5.m1.1a"><mo id="S6.7.7.5.5.5.m1.1.1" xref="S6.7.7.5.5.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.7.7.5.5.5.m1.1b"><times id="S6.7.7.5.5.5.m1.1.1.cmml" xref="S6.7.7.5.5.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.7.7.5.5.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.7.7.5.5.5.m1.1d">×</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S6.8.8.6.6.6.1">16</span> (4096<math alttext="\times" class="ltx_Math" display="inline" id="S6.8.8.6.6.6.m2.1"><semantics id="S6.8.8.6.6.6.m2.1a"><mo id="S6.8.8.6.6.6.m2.1.1" xref="S6.8.8.6.6.6.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S6.8.8.6.6.6.m2.1b"><times id="S6.8.8.6.6.6.m2.1.1.cmml" xref="S6.8.8.6.6.6.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S6.8.8.6.6.6.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S6.8.8.6.6.6.m2.1d">×</annotation></semantics></math>4096)</td>
</tr>
<tr class="ltx_tr" id="S6.11.11.9.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.9.9.7.7.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><math alttext="e_{max}" class="ltx_Math" display="inline" id="S6.9.9.7.7.1.m1.1"><semantics id="S6.9.9.7.7.1.m1.1a"><msub id="S6.9.9.7.7.1.m1.1.1" xref="S6.9.9.7.7.1.m1.1.1.cmml"><mi id="S6.9.9.7.7.1.m1.1.1.2" xref="S6.9.9.7.7.1.m1.1.1.2.cmml">e</mi><mrow id="S6.9.9.7.7.1.m1.1.1.3" xref="S6.9.9.7.7.1.m1.1.1.3.cmml"><mi id="S6.9.9.7.7.1.m1.1.1.3.2" xref="S6.9.9.7.7.1.m1.1.1.3.2.cmml">m</mi><mo id="S6.9.9.7.7.1.m1.1.1.3.1" xref="S6.9.9.7.7.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.9.9.7.7.1.m1.1.1.3.3" xref="S6.9.9.7.7.1.m1.1.1.3.3.cmml">a</mi><mo id="S6.9.9.7.7.1.m1.1.1.3.1a" xref="S6.9.9.7.7.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.9.9.7.7.1.m1.1.1.3.4" xref="S6.9.9.7.7.1.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.9.9.7.7.1.m1.1b"><apply id="S6.9.9.7.7.1.m1.1.1.cmml" xref="S6.9.9.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S6.9.9.7.7.1.m1.1.1.1.cmml" xref="S6.9.9.7.7.1.m1.1.1">subscript</csymbol><ci id="S6.9.9.7.7.1.m1.1.1.2.cmml" xref="S6.9.9.7.7.1.m1.1.1.2">𝑒</ci><apply id="S6.9.9.7.7.1.m1.1.1.3.cmml" xref="S6.9.9.7.7.1.m1.1.1.3"><times id="S6.9.9.7.7.1.m1.1.1.3.1.cmml" xref="S6.9.9.7.7.1.m1.1.1.3.1"></times><ci id="S6.9.9.7.7.1.m1.1.1.3.2.cmml" xref="S6.9.9.7.7.1.m1.1.1.3.2">𝑚</ci><ci id="S6.9.9.7.7.1.m1.1.1.3.3.cmml" xref="S6.9.9.7.7.1.m1.1.1.3.3">𝑎</ci><ci id="S6.9.9.7.7.1.m1.1.1.3.4.cmml" xref="S6.9.9.7.7.1.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.9.9.7.7.1.m1.1c">e_{max}</annotation><annotation encoding="application/x-llamapun" id="S6.9.9.7.7.1.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.9.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">FID (↓)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.9.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">pFID (↓)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.10.10.8.8.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><math alttext="e_{max}" class="ltx_Math" display="inline" id="S6.10.10.8.8.2.m1.1"><semantics id="S6.10.10.8.8.2.m1.1a"><msub id="S6.10.10.8.8.2.m1.1.1" xref="S6.10.10.8.8.2.m1.1.1.cmml"><mi id="S6.10.10.8.8.2.m1.1.1.2" xref="S6.10.10.8.8.2.m1.1.1.2.cmml">e</mi><mrow id="S6.10.10.8.8.2.m1.1.1.3" xref="S6.10.10.8.8.2.m1.1.1.3.cmml"><mi id="S6.10.10.8.8.2.m1.1.1.3.2" xref="S6.10.10.8.8.2.m1.1.1.3.2.cmml">m</mi><mo id="S6.10.10.8.8.2.m1.1.1.3.1" xref="S6.10.10.8.8.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.10.10.8.8.2.m1.1.1.3.3" xref="S6.10.10.8.8.2.m1.1.1.3.3.cmml">a</mi><mo id="S6.10.10.8.8.2.m1.1.1.3.1a" xref="S6.10.10.8.8.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.10.10.8.8.2.m1.1.1.3.4" xref="S6.10.10.8.8.2.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.10.10.8.8.2.m1.1b"><apply id="S6.10.10.8.8.2.m1.1.1.cmml" xref="S6.10.10.8.8.2.m1.1.1"><csymbol cd="ambiguous" id="S6.10.10.8.8.2.m1.1.1.1.cmml" xref="S6.10.10.8.8.2.m1.1.1">subscript</csymbol><ci id="S6.10.10.8.8.2.m1.1.1.2.cmml" xref="S6.10.10.8.8.2.m1.1.1.2">𝑒</ci><apply id="S6.10.10.8.8.2.m1.1.1.3.cmml" xref="S6.10.10.8.8.2.m1.1.1.3"><times id="S6.10.10.8.8.2.m1.1.1.3.1.cmml" xref="S6.10.10.8.8.2.m1.1.1.3.1"></times><ci id="S6.10.10.8.8.2.m1.1.1.3.2.cmml" xref="S6.10.10.8.8.2.m1.1.1.3.2">𝑚</ci><ci id="S6.10.10.8.8.2.m1.1.1.3.3.cmml" xref="S6.10.10.8.8.2.m1.1.1.3.3">𝑎</ci><ci id="S6.10.10.8.8.2.m1.1.1.3.4.cmml" xref="S6.10.10.8.8.2.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.10.10.8.8.2.m1.1c">e_{max}</annotation><annotation encoding="application/x-llamapun" id="S6.10.10.8.8.2.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.9.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">FID (↓)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.9.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">pFID (↓)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.9.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><math alttext="e_{max}" class="ltx_Math" display="inline" id="S6.11.11.9.9.3.m1.1"><semantics id="S6.11.11.9.9.3.m1.1a"><msub id="S6.11.11.9.9.3.m1.1.1" xref="S6.11.11.9.9.3.m1.1.1.cmml"><mi id="S6.11.11.9.9.3.m1.1.1.2" xref="S6.11.11.9.9.3.m1.1.1.2.cmml">e</mi><mrow id="S6.11.11.9.9.3.m1.1.1.3" xref="S6.11.11.9.9.3.m1.1.1.3.cmml"><mi id="S6.11.11.9.9.3.m1.1.1.3.2" xref="S6.11.11.9.9.3.m1.1.1.3.2.cmml">m</mi><mo id="S6.11.11.9.9.3.m1.1.1.3.1" xref="S6.11.11.9.9.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.11.11.9.9.3.m1.1.1.3.3" xref="S6.11.11.9.9.3.m1.1.1.3.3.cmml">a</mi><mo id="S6.11.11.9.9.3.m1.1.1.3.1a" xref="S6.11.11.9.9.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.11.11.9.9.3.m1.1.1.3.4" xref="S6.11.11.9.9.3.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.11.11.9.9.3.m1.1b"><apply id="S6.11.11.9.9.3.m1.1.1.cmml" xref="S6.11.11.9.9.3.m1.1.1"><csymbol cd="ambiguous" id="S6.11.11.9.9.3.m1.1.1.1.cmml" xref="S6.11.11.9.9.3.m1.1.1">subscript</csymbol><ci id="S6.11.11.9.9.3.m1.1.1.2.cmml" xref="S6.11.11.9.9.3.m1.1.1.2">𝑒</ci><apply id="S6.11.11.9.9.3.m1.1.1.3.cmml" xref="S6.11.11.9.9.3.m1.1.1.3"><times id="S6.11.11.9.9.3.m1.1.1.3.1.cmml" xref="S6.11.11.9.9.3.m1.1.1.3.1"></times><ci id="S6.11.11.9.9.3.m1.1.1.3.2.cmml" xref="S6.11.11.9.9.3.m1.1.1.3.2">𝑚</ci><ci id="S6.11.11.9.9.3.m1.1.1.3.3.cmml" xref="S6.11.11.9.9.3.m1.1.1.3.3">𝑎</ci><ci id="S6.11.11.9.9.3.m1.1.1.3.4.cmml" xref="S6.11.11.9.9.3.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.11.11.9.9.3.m1.1c">e_{max}</annotation><annotation encoding="application/x-llamapun" id="S6.11.11.9.9.3.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.9.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">FID (↓)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.9.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">pFID (↓)</td>
</tr>
<tr class="ltx_tr" id="S6.11.11.9.10.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.10.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.10.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.27</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.10.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">53.40</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.10.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.10.1.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.65</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.10.1.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">37.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.11.11.9.10.1.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.10.1.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">135.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.11.11.9.10.1.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">34.00</td>
</tr>
<tr class="ltx_tr" id="S6.11.11.9.11.2">
<td class="ltx_td ltx_align_center" colspan="2" id="S6.11.11.9.11.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_ERROR undefined" id="S6.11.11.9.11.2.1.1">\cdashline</span>1-9
   0.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.11.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">131.87</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.11.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">53.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.11.2.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.11.2.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.68</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.11.2.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">36.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.11.2.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">0.8</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.11.2.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">135.29</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.11.11.9.11.2.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">33.62</td>
</tr>
<tr class="ltx_tr" id="S6.11.11.9.12.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.12.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.12.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.12.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">53.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.12.3.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.12.3.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.12.3.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">36.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.12.3.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.12.3.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">135.09</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.12.3.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">33.64</td>
</tr>
<tr class="ltx_tr" id="S6.11.11.9.13.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.13.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.13.4.1.1">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.13.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">131.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.13.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.13.4.3.1">52.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.13.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.13.4.4.1">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.13.4.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">132.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.13.4.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.13.4.6.1">35.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.11.11.9.13.4.7" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.13.4.7.1">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.13.4.8" style="padding-top:2.5pt;padding-bottom:2.5pt;">134.90</td>
<td class="ltx_td ltx_align_center" id="S6.11.11.9.13.4.9" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.13.4.9.1">33.35</span></td>
</tr>
<tr class="ltx_tr" id="S6.11.11.9.14.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.11.11.9.14.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">1.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.11.11.9.14.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.14.5.2.1">131.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.11.11.9.14.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">53.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.11.11.9.14.5.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">1.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.11.11.9.14.5.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.14.5.5.1">131.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.11.11.9.14.5.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">36.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.11.11.9.14.5.7" style="padding-top:2.5pt;padding-bottom:2.5pt;">1.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.11.11.9.14.5.8" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S6.11.11.9.14.5.8.1">134.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.11.11.9.14.5.9" style="padding-top:2.5pt;padding-bottom:2.5pt;">33.77</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different RNA (Region-wise Noise Addition) strengths on the quality of images generated using the DemoFusion model. The study varies the maximum value (emax) of the normalized edge map used to modulate Gaussian noise, while keeping the minimum value (emin) fixed at 0. The table evaluates the performance using FID and pFID metrics (Frechet Inception Distance and patch-based FID, respectively) at three different resolutions (2048x2048, 3072x3072, and 4096x4096). The goal is to determine the optimal RNA strength that balances detail enhancement and avoids over-generation.
> <details>
> <summary>read the caption</summary>
> Table 3:  Ablation study on RNA strength using OpenImages-Valid with DemoFusion. The best results are marked in bold. em⁢i⁢nsubscript𝑒𝑚𝑖𝑛e_{min}italic_e start_POSTSUBSCRIPT italic_m italic_i italic_n end_POSTSUBSCRIPT is set to 0.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.12.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.12.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S1.T1.12.1.1.1.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.12.1.1.1.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.1.1.2.1" style="font-size:144%;">FID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.12.1.1.1.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.1.1.3.1" style="font-size:144%;">KID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.12.1.1.1.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.1.1.4.1" style="font-size:144%;">pFID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.12.1.1.1.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.1.1.5.1" style="font-size:144%;">pKID (↓)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.12.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt ltx_border_tt" id="S1.T1.12.1.2.1.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.2.1.1.1" style="font-size:144%;">DemoFusion-rgbBic</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.12.1.2.1.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.2.1.2.1" style="font-size:144%;">134.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.12.1.2.1.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.2.1.3.1" style="font-size:144%;">0.0084</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.12.1.2.1.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.2.1.4.1" style="font-size:144%;">37.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S1.T1.12.1.2.1.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.2.1.5.1" style="font-size:144%;">0.0062</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.12.1.3.2.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.3.2.1.1" style="font-size:144%;">DemoFusion-rgbSR</span></th>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.3.2.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.3.2.2.1" style="font-size:144%;">134.55</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.3.2.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.3.2.3.1" style="font-size:144%;">0.0093</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.3.2.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.3.2.4.1" style="font-size:144%;">37.35</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.3.2.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.3.2.5.1" style="font-size:144%;">0.0061</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.12.1.4.3.1" style="padding-top:3.6pt;padding-bottom:3.6pt;">
<span class="ltx_ERROR undefined" id="S1.T1.12.1.4.3.1.1">\cdashline</span><span class="ltx_text" id="S1.T1.12.1.4.3.1.2" style="font-size:144%;">1-5
LSRNA-DemoFusion</span>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.4.3.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.4.3.2.1" style="font-size:144%;">132.01</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.4.3.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.4.3.3.1" style="font-size:144%;">0.0053</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.4.3.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.4.3.4.1" style="font-size:144%;">35.95</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.4.3.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.4.3.5.1" style="font-size:144%;">0.0057</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.12.1.5.4.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.5.4.1.1" style="font-size:144%;">Pixelsmith-rgbLanc</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.1.5.4.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.5.4.2.1" style="font-size:144%;">134.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.1.5.4.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.5.4.3.1" style="font-size:144%;">0.0095</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.1.5.4.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.5.4.4.1" style="font-size:144%;">40.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.12.1.5.4.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.5.4.5.1" style="font-size:144%;">0.0084</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.12.1.6.5.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.6.5.1.1" style="font-size:144%;">Pixelsmith-rgbSR</span></th>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.6.5.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.6.5.2.1" style="font-size:144%;">134.34</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.6.5.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.6.5.3.1" style="font-size:144%;">0.0102</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.6.5.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.6.5.4.1" style="font-size:144%;">44.41</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.1.6.5.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S1.T1.12.1.6.5.5.1" style="font-size:144%;">0.0110</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S1.T1.12.1.7.6.1" style="padding-top:3.6pt;padding-bottom:3.6pt;">
<span class="ltx_ERROR undefined" id="S1.T1.12.1.7.6.1.1">\cdashline</span><span class="ltx_text" id="S1.T1.12.1.7.6.1.2" style="font-size:144%;">1-5
LSRNA-Pixelsmith</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.12.1.7.6.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.7.6.2.1" style="font-size:144%;">132.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.12.1.7.6.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.7.6.3.1" style="font-size:144%;">0.0077</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.12.1.7.6.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.7.6.4.1" style="font-size:144%;">36.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.12.1.7.6.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.12.1.7.6.5.1" style="font-size:144%;">0.0057</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different image generation methods, categorized by whether they use RGB or latent space upsampling.  It shows the FID, KID, pFID, and pKID scores for each method, providing insights into how the choice of upsampling space affects the overall quality of the generated images, particularly regarding detail preservation.  Specifically, it compares standard methods (DemoFusion and Pixelsmith) to versions of those models that use bicubic upsampling or super-resolution upsampling in RGB space, and to the same models modified to use the authors' proposed latent-space upsampling techniques (LSRNA-DemoFusion and LSRNA-Pixelsmith). The results highlight the superiority of latent-space upsampling for achieving both higher quality and faster inference times. 
> <details>
> <summary>read the caption</summary>
> Table A:  RGB vs. Latent Space Upsampling on OpenImages-Valid (×\times×9). The best results marked in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.6.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.6.4.5.1.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.5.1.1.1" style="font-size:144%;">LSRNA-DemoFusion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.6.4.5.1.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.5.1.2.1" style="font-size:144%;">v1 (adpoted)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.6.4.5.1.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.5.1.3.1" style="font-size:144%;">v2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.6.4.5.1.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.5.1.4.1" style="font-size:144%;">v3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.6.4.5.1.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.5.1.5.1" style="font-size:144%;">v4</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.6.4.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt ltx_border_tt" id="S3.T2.6.4.6.1.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.6.1.1.1" style="font-size:144%;">Params</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S3.T2.6.4.6.1.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.6.1.2.1" style="font-size:144%;">1.29M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S3.T2.6.4.6.1.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.6.1.3.1" style="font-size:144%;">1.29M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S3.T2.6.4.6.1.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.6.1.4.1" style="font-size:144%;">1.29M</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S3.T2.6.4.6.1.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.6.1.5.1" style="font-size:144%;">15.64M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.7.2.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.7.2.1.1" style="font-size:144%;">Backbone</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.7.2.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.7.2.2.1" style="font-size:144%;">SwinIR (Light)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.7.2.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.7.2.3.1" style="font-size:144%;">SwinIR (Light)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.7.2.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.7.2.4.1" style="font-size:144%;">SwinIR (Light)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.7.2.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.7.2.5.1" style="font-size:144%;">RCAN</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.4.5" style="padding-top:3.6pt;padding-bottom:3.6pt;">
<span class="ltx_ERROR undefined" id="S3.T2.6.4.4.5.1">\cdashline</span><span class="ltx_text" id="S3.T2.6.4.4.5.2" style="font-size:144%;">1-5
Initial learning rate</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.3.1.1.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><math alttext="2\times 10^{-4}" class="ltx_Math" display="inline" id="S3.T2.3.1.1.1.m1.1"><semantics id="S3.T2.3.1.1.1.m1.1a"><mrow id="S3.T2.3.1.1.1.m1.1.1" xref="S3.T2.3.1.1.1.m1.1.1.cmml"><mn id="S3.T2.3.1.1.1.m1.1.1.2" mathsize="144%" xref="S3.T2.3.1.1.1.m1.1.1.2.cmml">2</mn><mo id="S3.T2.3.1.1.1.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="S3.T2.3.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S3.T2.3.1.1.1.m1.1.1.3" xref="S3.T2.3.1.1.1.m1.1.1.3.cmml"><mn id="S3.T2.3.1.1.1.m1.1.1.3.2" mathsize="144%" xref="S3.T2.3.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T2.3.1.1.1.m1.1.1.3.3" xref="S3.T2.3.1.1.1.m1.1.1.3.3.cmml"><mo id="S3.T2.3.1.1.1.m1.1.1.3.3a" mathsize="144%" xref="S3.T2.3.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.T2.3.1.1.1.m1.1.1.3.3.2" mathsize="144%" xref="S3.T2.3.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.3.1.1.1.m1.1b"><apply id="S3.T2.3.1.1.1.m1.1.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1"><times id="S3.T2.3.1.1.1.m1.1.1.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1.1"></times><cn id="S3.T2.3.1.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T2.3.1.1.1.m1.1.1.2">2</cn><apply id="S3.T2.3.1.1.1.m1.1.1.3.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.3.1.1.1.m1.1.1.3.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S3.T2.3.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T2.3.1.1.1.m1.1.1.3.2">10</cn><apply id="S3.T2.3.1.1.1.m1.1.1.3.3.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3.3"><minus id="S3.T2.3.1.1.1.m1.1.1.3.3.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3.3"></minus><cn id="S3.T2.3.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T2.3.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.1.1.1.m1.1c">2\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.1.1.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.2.2.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><math alttext="2\times 10^{-4}" class="ltx_Math" display="inline" id="S3.T2.4.2.2.2.m1.1"><semantics id="S3.T2.4.2.2.2.m1.1a"><mrow id="S3.T2.4.2.2.2.m1.1.1" xref="S3.T2.4.2.2.2.m1.1.1.cmml"><mn id="S3.T2.4.2.2.2.m1.1.1.2" mathsize="144%" xref="S3.T2.4.2.2.2.m1.1.1.2.cmml">2</mn><mo id="S3.T2.4.2.2.2.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="S3.T2.4.2.2.2.m1.1.1.1.cmml">×</mo><msup id="S3.T2.4.2.2.2.m1.1.1.3" xref="S3.T2.4.2.2.2.m1.1.1.3.cmml"><mn id="S3.T2.4.2.2.2.m1.1.1.3.2" mathsize="144%" xref="S3.T2.4.2.2.2.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T2.4.2.2.2.m1.1.1.3.3" xref="S3.T2.4.2.2.2.m1.1.1.3.3.cmml"><mo id="S3.T2.4.2.2.2.m1.1.1.3.3a" mathsize="144%" xref="S3.T2.4.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="S3.T2.4.2.2.2.m1.1.1.3.3.2" mathsize="144%" xref="S3.T2.4.2.2.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.4.2.2.2.m1.1b"><apply id="S3.T2.4.2.2.2.m1.1.1.cmml" xref="S3.T2.4.2.2.2.m1.1.1"><times id="S3.T2.4.2.2.2.m1.1.1.1.cmml" xref="S3.T2.4.2.2.2.m1.1.1.1"></times><cn id="S3.T2.4.2.2.2.m1.1.1.2.cmml" type="integer" xref="S3.T2.4.2.2.2.m1.1.1.2">2</cn><apply id="S3.T2.4.2.2.2.m1.1.1.3.cmml" xref="S3.T2.4.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.4.2.2.2.m1.1.1.3.1.cmml" xref="S3.T2.4.2.2.2.m1.1.1.3">superscript</csymbol><cn id="S3.T2.4.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S3.T2.4.2.2.2.m1.1.1.3.2">10</cn><apply id="S3.T2.4.2.2.2.m1.1.1.3.3.cmml" xref="S3.T2.4.2.2.2.m1.1.1.3.3"><minus id="S3.T2.4.2.2.2.m1.1.1.3.3.1.cmml" xref="S3.T2.4.2.2.2.m1.1.1.3.3"></minus><cn id="S3.T2.4.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T2.4.2.2.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.2.2.2.m1.1c">2\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.2.2.2.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.3.3.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="S3.T2.5.3.3.3.m1.1"><semantics id="S3.T2.5.3.3.3.m1.1a"><mrow id="S3.T2.5.3.3.3.m1.1.1" xref="S3.T2.5.3.3.3.m1.1.1.cmml"><mn id="S3.T2.5.3.3.3.m1.1.1.2" mathsize="144%" xref="S3.T2.5.3.3.3.m1.1.1.2.cmml">1</mn><mo id="S3.T2.5.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="S3.T2.5.3.3.3.m1.1.1.1.cmml">×</mo><msup id="S3.T2.5.3.3.3.m1.1.1.3" xref="S3.T2.5.3.3.3.m1.1.1.3.cmml"><mn id="S3.T2.5.3.3.3.m1.1.1.3.2" mathsize="144%" xref="S3.T2.5.3.3.3.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T2.5.3.3.3.m1.1.1.3.3" xref="S3.T2.5.3.3.3.m1.1.1.3.3.cmml"><mo id="S3.T2.5.3.3.3.m1.1.1.3.3a" mathsize="144%" xref="S3.T2.5.3.3.3.m1.1.1.3.3.cmml">−</mo><mn id="S3.T2.5.3.3.3.m1.1.1.3.3.2" mathsize="144%" xref="S3.T2.5.3.3.3.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.5.3.3.3.m1.1b"><apply id="S3.T2.5.3.3.3.m1.1.1.cmml" xref="S3.T2.5.3.3.3.m1.1.1"><times id="S3.T2.5.3.3.3.m1.1.1.1.cmml" xref="S3.T2.5.3.3.3.m1.1.1.1"></times><cn id="S3.T2.5.3.3.3.m1.1.1.2.cmml" type="integer" xref="S3.T2.5.3.3.3.m1.1.1.2">1</cn><apply id="S3.T2.5.3.3.3.m1.1.1.3.cmml" xref="S3.T2.5.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.5.3.3.3.m1.1.1.3.1.cmml" xref="S3.T2.5.3.3.3.m1.1.1.3">superscript</csymbol><cn id="S3.T2.5.3.3.3.m1.1.1.3.2.cmml" type="integer" xref="S3.T2.5.3.3.3.m1.1.1.3.2">10</cn><apply id="S3.T2.5.3.3.3.m1.1.1.3.3.cmml" xref="S3.T2.5.3.3.3.m1.1.1.3.3"><minus id="S3.T2.5.3.3.3.m1.1.1.3.3.1.cmml" xref="S3.T2.5.3.3.3.m1.1.1.3.3"></minus><cn id="S3.T2.5.3.3.3.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T2.5.3.3.3.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.3.3.3.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.3.3.3.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><math alttext="2\times 10^{-4}" class="ltx_Math" display="inline" id="S3.T2.6.4.4.4.m1.1"><semantics id="S3.T2.6.4.4.4.m1.1a"><mrow id="S3.T2.6.4.4.4.m1.1.1" xref="S3.T2.6.4.4.4.m1.1.1.cmml"><mn id="S3.T2.6.4.4.4.m1.1.1.2" mathsize="144%" xref="S3.T2.6.4.4.4.m1.1.1.2.cmml">2</mn><mo id="S3.T2.6.4.4.4.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="S3.T2.6.4.4.4.m1.1.1.1.cmml">×</mo><msup id="S3.T2.6.4.4.4.m1.1.1.3" xref="S3.T2.6.4.4.4.m1.1.1.3.cmml"><mn id="S3.T2.6.4.4.4.m1.1.1.3.2" mathsize="144%" xref="S3.T2.6.4.4.4.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T2.6.4.4.4.m1.1.1.3.3" xref="S3.T2.6.4.4.4.m1.1.1.3.3.cmml"><mo id="S3.T2.6.4.4.4.m1.1.1.3.3a" mathsize="144%" xref="S3.T2.6.4.4.4.m1.1.1.3.3.cmml">−</mo><mn id="S3.T2.6.4.4.4.m1.1.1.3.3.2" mathsize="144%" xref="S3.T2.6.4.4.4.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.6.4.4.4.m1.1b"><apply id="S3.T2.6.4.4.4.m1.1.1.cmml" xref="S3.T2.6.4.4.4.m1.1.1"><times id="S3.T2.6.4.4.4.m1.1.1.1.cmml" xref="S3.T2.6.4.4.4.m1.1.1.1"></times><cn id="S3.T2.6.4.4.4.m1.1.1.2.cmml" type="integer" xref="S3.T2.6.4.4.4.m1.1.1.2">2</cn><apply id="S3.T2.6.4.4.4.m1.1.1.3.cmml" xref="S3.T2.6.4.4.4.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T2.6.4.4.4.m1.1.1.3.1.cmml" xref="S3.T2.6.4.4.4.m1.1.1.3">superscript</csymbol><cn id="S3.T2.6.4.4.4.m1.1.1.3.2.cmml" type="integer" xref="S3.T2.6.4.4.4.m1.1.1.3.2">10</cn><apply id="S3.T2.6.4.4.4.m1.1.1.3.3.cmml" xref="S3.T2.6.4.4.4.m1.1.1.3.3"><minus id="S3.T2.6.4.4.4.m1.1.1.3.3.1.cmml" xref="S3.T2.6.4.4.4.m1.1.1.3.3"></minus><cn id="S3.T2.6.4.4.4.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T2.6.4.4.4.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.4.4.4.m1.1c">2\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.4.4.4.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.8.3.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.8.3.1.1" style="font-size:144%;">Batch size</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.8.3.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.8.3.2.1" style="font-size:144%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.8.3.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.8.3.3.1" style="font-size:144%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.8.3.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.8.3.4.1" style="font-size:144%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.8.3.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.8.3.5.1" style="font-size:144%;">32</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.9.4.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.9.4.1.1" style="font-size:144%;">Training iteration</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.9.4.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.9.4.2.1" style="font-size:144%;">200K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.9.4.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.9.4.3.1" style="font-size:144%;">1000K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.9.4.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.9.4.4.1" style="font-size:144%;">200K</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.9.4.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.9.4.5.1" style="font-size:144%;">200K</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.10.5.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.10.5.1.1" style="font-size:144%;">Training time</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.10.5.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.10.5.2.1" style="font-size:144%;">26h</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.10.5.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.10.5.3.1" style="font-size:144%;">129h</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.10.5.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.10.5.4.1" style="font-size:144%;">15h</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.10.5.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.10.5.5.1" style="font-size:144%;">26h</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.11.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.11.6.1" style="padding-top:3.6pt;padding-bottom:3.6pt;">
<span class="ltx_ERROR undefined" id="S3.T2.6.4.11.6.1.1">\cdashline</span><span class="ltx_text" id="S3.T2.6.4.11.6.1.2" style="font-size:144%;">1-5
FID (↓)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.11.6.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.11.6.2.1" style="font-size:144%;">134.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.11.6.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.11.6.3.1" style="font-size:144%;">134.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.11.6.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.11.6.4.1" style="font-size:144%;">134.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.11.6.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.11.6.5.1" style="font-size:144%;">134.25</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.12.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.12.7.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.12.7.1.1" style="font-size:144%;">KID (↓)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.12.7.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.12.7.2.1" style="font-size:144%;">0.0077</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.12.7.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.12.7.3.1" style="font-size:144%;">0.0077</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.12.7.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.12.7.4.1" style="font-size:144%;">0.0077</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.12.7.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.12.7.5.1" style="font-size:144%;">0.0074</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.13.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.13.8.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.13.8.1.1" style="font-size:144%;">pFID (↓)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.13.8.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.13.8.2.1" style="font-size:144%;">33.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.13.8.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.13.8.3.1" style="font-size:144%;">33.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.13.8.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.13.8.4.1" style="font-size:144%;">33.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.13.8.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.13.8.5.1" style="font-size:144%;">34.34</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.14.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.6.4.14.9.1" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.14.9.1.1" style="font-size:144%;">pKID (↓)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.6.4.14.9.2" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.14.9.2.1" style="font-size:144%;">0.0073</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.6.4.14.9.3" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.14.9.3.1" style="font-size:144%;">0.0072</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.6.4.14.9.4" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.14.9.4.1" style="font-size:144%;">0.0074</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.4.14.9.5" style="padding-top:3.6pt;padding-bottom:3.6pt;"><span class="ltx_text" id="S3.T2.6.4.14.9.5.1" style="font-size:144%;">0.0076</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table B presents a quantitative comparison of image generation results obtained using different configurations for training the Latent Space Super-Resolution (LSR) module. Four training variants (v1-v4) were compared, each utilizing different backbones (SwinIR [33] and RCAN [62]) and upsamplers (LIIF [8]). The training was performed on a single NVIDIA Tesla V100-SXM2 GPU using the OpenImages-Valid dataset (×9). The v1 configuration was selected based on its balance of training efficiency and performance. The table provides metrics (FID, KID, pFID, pKID) to evaluate the image quality for each variant.
> <details>
> <summary>read the caption</summary>
> Table B:  Quantitative comparison of image generation results by LSR training variants on OpenImages-Valid (×\times×9). All training is conducted on a single NVIDIA Tesla V100-SXM2 GPU, using SwinIR [33] and RCAN [62] as backbones with LIIF [8] as the upsampler. Based on a balance of training efficiency and performance, we adopt the v1 configuration.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.13.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.13.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.13.1.1.1.1"><span class="ltx_text" id="S4.T3.13.1.1.1.1.1" style="font-size:144%;">lower</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.13.1.1.1.2"><span class="ltx_text" id="S4.T3.13.1.1.1.2.1" style="font-size:144%;">upper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.13.1.1.1.3"><span class="ltx_text" id="S4.T3.13.1.1.1.3.1" style="font-size:144%;">FID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.13.1.1.1.4"><span class="ltx_text" id="S4.T3.13.1.1.1.4.1" style="font-size:144%;">KID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.13.1.1.1.5"><span class="ltx_text" id="S4.T3.13.1.1.1.5.1" style="font-size:144%;">pFID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.13.1.1.1.6"><span class="ltx_text" id="S4.T3.13.1.1.1.6.1" style="font-size:144%;">pKID (↓)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.13.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="S4.T3.13.1.2.1.1"><span class="ltx_text" id="S4.T3.13.1.2.1.1.1" style="font-size:144%;">0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt ltx_border_tt" id="S4.T3.13.1.2.1.2"><span class="ltx_text" id="S4.T3.13.1.2.1.2.1" style="font-size:144%;">255</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T3.13.1.2.1.3"><span class="ltx_text" id="S4.T3.13.1.2.1.3.1" style="font-size:144%;">132.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T3.13.1.2.1.4"><span class="ltx_text" id="S4.T3.13.1.2.1.4.1" style="font-size:144%;">0.0053</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T3.13.1.2.1.5"><span class="ltx_text" id="S4.T3.13.1.2.1.5.1" style="font-size:144%;">35.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T3.13.1.2.1.6"><span class="ltx_text" id="S4.T3.13.1.2.1.6.1" style="font-size:144%;">0.0057</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.13.1.3.2.1"><span class="ltx_text" id="S4.T3.13.1.3.2.1.1" style="font-size:144%;">30</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.13.1.3.2.2"><span class="ltx_text" id="S4.T3.13.1.3.2.2.1" style="font-size:144%;">180</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.3.2.3"><span class="ltx_text" id="S4.T3.13.1.3.2.3.1" style="font-size:144%;">132.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.3.2.4"><span class="ltx_text" id="S4.T3.13.1.3.2.4.1" style="font-size:144%;">0.0055</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.3.2.5"><span class="ltx_text" id="S4.T3.13.1.3.2.5.1" style="font-size:144%;">36.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.3.2.6"><span class="ltx_text" id="S4.T3.13.1.3.2.6.1" style="font-size:144%;">0.0057</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.13.1.4.3.1"><span class="ltx_text" id="S4.T3.13.1.4.3.1.1" style="font-size:144%;">50</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.13.1.4.3.2"><span class="ltx_text" id="S4.T3.13.1.4.3.2.1" style="font-size:144%;">200</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.4.3.3"><span class="ltx_text" id="S4.T3.13.1.4.3.3.1" style="font-size:144%;">132.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.4.3.4"><span class="ltx_text" id="S4.T3.13.1.4.3.4.1" style="font-size:144%;">0.0055</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.4.3.5"><span class="ltx_text" id="S4.T3.13.1.4.3.5.1" style="font-size:144%;">36.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.1.4.3.6"><span class="ltx_text" id="S4.T3.13.1.4.3.6.1" style="font-size:144%;">0.0057</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S4.T3.13.1.5.4.1"><span class="ltx_text" id="S4.T3.13.1.5.4.1.1" style="font-size:144%;">60</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T3.13.1.5.4.2"><span class="ltx_text" id="S4.T3.13.1.5.4.2.1" style="font-size:144%;">150</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.13.1.5.4.3"><span class="ltx_text" id="S4.T3.13.1.5.4.3.1" style="font-size:144%;">132.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.13.1.5.4.4"><span class="ltx_text" id="S4.T3.13.1.5.4.4.1" style="font-size:144%;">0.0055</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.13.1.5.4.5"><span class="ltx_text" id="S4.T3.13.1.5.4.5.1" style="font-size:144%;">36.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.13.1.5.4.6"><span class="ltx_text" id="S4.T3.13.1.5.4.6.1" style="font-size:144%;">0.0057</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table C presents a quantitative analysis of image generation results using the DemoFusion model.  The key variable manipulated is the threshold used in Canny edge detection, which is a crucial component of the Region-wise Noise Addition (RNA) module within the LSRNA framework.  The table shows how different Canny edge detection thresholds impact the quality of the generated images on the OpenImages-Valid dataset, specifically comparing metrics like FID, KID, pFID, and pKID at different resolution levels.  The results demonstrate the sensitivity of the image generation process to the choice of edge detection parameters within the RNA module and help to optimize this parameter for improved image quality.
> <details>
> <summary>read the caption</summary>
> Table C:  Quantitative comparison of image generation results by Canny edge detection thresholds on OpenImages-Valid (×9absent9\times 9× 9) with DemoFusion. em⁢a⁢xsubscript𝑒𝑚𝑎𝑥e_{max}italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT is set to 1.2 (default).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{min}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><msub id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.2" mathsize="144%" xref="S4.T4.1.1.1.1.m1.1.1.2.cmml">e</mi><mrow id="S4.T4.1.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.1.m1.1.1.3.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.3.2" mathsize="144%" xref="S4.T4.1.1.1.1.m1.1.1.3.2.cmml">m</mi><mo id="S4.T4.1.1.1.1.m1.1.1.3.1" xref="S4.T4.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.1.m1.1.1.3.3" mathsize="144%" xref="S4.T4.1.1.1.1.m1.1.1.3.3.cmml">i</mi><mo id="S4.T4.1.1.1.1.m1.1.1.3.1a" xref="S4.T4.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.1.m1.1.1.3.4" mathsize="144%" xref="S4.T4.1.1.1.1.m1.1.1.3.4.cmml">n</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2">𝑒</ci><apply id="S4.T4.1.1.1.1.m1.1.1.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3"><times id="S4.T4.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.1"></times><ci id="S4.T4.1.1.1.1.m1.1.1.3.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.2">𝑚</ci><ci id="S4.T4.1.1.1.1.m1.1.1.3.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.3">𝑖</ci><ci id="S4.T4.1.1.1.1.m1.1.1.3.4.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3.4">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">e_{min}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.2.2.2.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{max}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><msub id="S4.T4.2.2.2.2.m1.1.1" xref="S4.T4.2.2.2.2.m1.1.1.cmml"><mi id="S4.T4.2.2.2.2.m1.1.1.2" mathsize="144%" xref="S4.T4.2.2.2.2.m1.1.1.2.cmml">e</mi><mrow id="S4.T4.2.2.2.2.m1.1.1.3" xref="S4.T4.2.2.2.2.m1.1.1.3.cmml"><mi id="S4.T4.2.2.2.2.m1.1.1.3.2" mathsize="144%" xref="S4.T4.2.2.2.2.m1.1.1.3.2.cmml">m</mi><mo id="S4.T4.2.2.2.2.m1.1.1.3.1" xref="S4.T4.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.2.2.2.2.m1.1.1.3.3" mathsize="144%" xref="S4.T4.2.2.2.2.m1.1.1.3.3.cmml">a</mi><mo id="S4.T4.2.2.2.2.m1.1.1.3.1a" xref="S4.T4.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.2.2.2.2.m1.1.1.3.4" mathsize="144%" xref="S4.T4.2.2.2.2.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><apply id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.2.2.2.2.m1.1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T4.2.2.2.2.m1.1.1.2.cmml" xref="S4.T4.2.2.2.2.m1.1.1.2">𝑒</ci><apply id="S4.T4.2.2.2.2.m1.1.1.3.cmml" xref="S4.T4.2.2.2.2.m1.1.1.3"><times id="S4.T4.2.2.2.2.m1.1.1.3.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1.3.1"></times><ci id="S4.T4.2.2.2.2.m1.1.1.3.2.cmml" xref="S4.T4.2.2.2.2.m1.1.1.3.2">𝑚</ci><ci id="S4.T4.2.2.2.2.m1.1.1.3.3.cmml" xref="S4.T4.2.2.2.2.m1.1.1.3.3">𝑎</ci><ci id="S4.T4.2.2.2.2.m1.1.1.3.4.cmml" xref="S4.T4.2.2.2.2.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">e_{max}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.4.4.4.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.4.5.1" style="font-size:144%;">Non-edge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.4.4.4.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.4.6.1" style="font-size:144%;">Edge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.4.4.4.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.4.7.1" style="font-size:144%;">Gap</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.3.3.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{min}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><msub id="S4.T4.3.3.3.3.m1.1.1" xref="S4.T4.3.3.3.3.m1.1.1.cmml"><mi id="S4.T4.3.3.3.3.m1.1.1.2" mathsize="144%" xref="S4.T4.3.3.3.3.m1.1.1.2.cmml">e</mi><mrow id="S4.T4.3.3.3.3.m1.1.1.3" xref="S4.T4.3.3.3.3.m1.1.1.3.cmml"><mi id="S4.T4.3.3.3.3.m1.1.1.3.2" mathsize="144%" xref="S4.T4.3.3.3.3.m1.1.1.3.2.cmml">m</mi><mo id="S4.T4.3.3.3.3.m1.1.1.3.1" xref="S4.T4.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.3.3.3.3.m1.1.1.3.3" mathsize="144%" xref="S4.T4.3.3.3.3.m1.1.1.3.3.cmml">i</mi><mo id="S4.T4.3.3.3.3.m1.1.1.3.1a" xref="S4.T4.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.3.3.3.3.m1.1.1.3.4" mathsize="144%" xref="S4.T4.3.3.3.3.m1.1.1.3.4.cmml">n</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><apply id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.3.3.3.3.m1.1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T4.3.3.3.3.m1.1.1.2.cmml" xref="S4.T4.3.3.3.3.m1.1.1.2">𝑒</ci><apply id="S4.T4.3.3.3.3.m1.1.1.3.cmml" xref="S4.T4.3.3.3.3.m1.1.1.3"><times id="S4.T4.3.3.3.3.m1.1.1.3.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1.3.1"></times><ci id="S4.T4.3.3.3.3.m1.1.1.3.2.cmml" xref="S4.T4.3.3.3.3.m1.1.1.3.2">𝑚</ci><ci id="S4.T4.3.3.3.3.m1.1.1.3.3.cmml" xref="S4.T4.3.3.3.3.m1.1.1.3.3">𝑖</ci><ci id="S4.T4.3.3.3.3.m1.1.1.3.4.cmml" xref="S4.T4.3.3.3.3.m1.1.1.3.4">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">e_{min}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.4.4.4.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{max}" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><msub id="S4.T4.4.4.4.4.m1.1.1" xref="S4.T4.4.4.4.4.m1.1.1.cmml"><mi id="S4.T4.4.4.4.4.m1.1.1.2" mathsize="144%" xref="S4.T4.4.4.4.4.m1.1.1.2.cmml">e</mi><mrow id="S4.T4.4.4.4.4.m1.1.1.3" xref="S4.T4.4.4.4.4.m1.1.1.3.cmml"><mi id="S4.T4.4.4.4.4.m1.1.1.3.2" mathsize="144%" xref="S4.T4.4.4.4.4.m1.1.1.3.2.cmml">m</mi><mo id="S4.T4.4.4.4.4.m1.1.1.3.1" xref="S4.T4.4.4.4.4.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.4.4.4.4.m1.1.1.3.3" mathsize="144%" xref="S4.T4.4.4.4.4.m1.1.1.3.3.cmml">a</mi><mo id="S4.T4.4.4.4.4.m1.1.1.3.1a" xref="S4.T4.4.4.4.4.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.4.4.4.4.m1.1.1.3.4" mathsize="144%" xref="S4.T4.4.4.4.4.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><apply id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.4.4.4.4.m1.1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">subscript</csymbol><ci id="S4.T4.4.4.4.4.m1.1.1.2.cmml" xref="S4.T4.4.4.4.4.m1.1.1.2">𝑒</ci><apply id="S4.T4.4.4.4.4.m1.1.1.3.cmml" xref="S4.T4.4.4.4.4.m1.1.1.3"><times id="S4.T4.4.4.4.4.m1.1.1.3.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1.3.1"></times><ci id="S4.T4.4.4.4.4.m1.1.1.3.2.cmml" xref="S4.T4.4.4.4.4.m1.1.1.3.2">𝑚</ci><ci id="S4.T4.4.4.4.4.m1.1.1.3.3.cmml" xref="S4.T4.4.4.4.4.m1.1.1.3.3">𝑎</ci><ci id="S4.T4.4.4.4.4.m1.1.1.3.4.cmml" xref="S4.T4.4.4.4.4.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">e_{max}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.4.4.4.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.4.8.1" style="font-size:144%;">Non-edge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.4.4.4.9" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.4.9.1" style="font-size:144%;">Edge</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T4.4.4.4.10" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.4.10.1" style="font-size:144%;">Gap</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.1.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.2.1" style="font-size:144%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.3.1" style="font-size:144%;">1.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.4.1" style="font-size:144%;">3.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.5.1.5.1" style="font-size:144%;">2.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.6.1" style="font-size:144%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.7.1" style="font-size:144%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.8.1" style="font-size:144%;">6.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.9" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.9.1" style="font-size:144%;">9.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T4.4.4.5.1.10" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.5.1.10.1" style="font-size:144%;">3.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.6.2">
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.1.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.6.2.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.2.1" style="font-size:144%;">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.3.1" style="font-size:144%;">2.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.4.1" style="font-size:144%;">6.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.6.2.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.6.2.5.1" style="font-size:144%;">3.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.6.1" style="font-size:144%;">1.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.6.2.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.7.1" style="font-size:144%;">1.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.8.1" style="font-size:144%;">25.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.9" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.9.1" style="font-size:144%;">29.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.6.2.10" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.6.2.10.1" style="font-size:144%;">3.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.7.3">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.4.4.7.3.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.1.1" style="font-size:144%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.7.3.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.2.1" style="font-size:144%;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.4.4.7.3.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.3.1" style="font-size:144%;">4.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.4.4.7.3.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.4.1" style="font-size:144%;">10.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.7.3.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.7.3.5.1" style="font-size:144%;">6.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.4.4.7.3.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.6.1" style="font-size:144%;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.4.4.7.3.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.7.1" style="font-size:144%;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.4.4.7.3.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.8.1" style="font-size:144%;">39.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.4.4.7.3.9" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.9.1" style="font-size:144%;">39.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.4.4.7.3.10" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S4.T4.4.4.7.3.10.1" style="font-size:144%;">0.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the impact of RNA strength on pixel-wise image differences.  For each RNA strength level (specified by parameters 'emin' and 'emax'), the table shows the average difference in pixel values compared to an image generated without RNA.  Before computing differences, histogram matching was performed to ensure consistent brightness levels between the images.  The image differences are broken down for non-edge, edge, and gap regions to understand where the RNA has a greater impact.  The example used is from Figure 7 of the main paper, showing a train and scenery.
> <details>
> <summary>read the caption</summary>
> Table D:  Pixel-wise difference based on RNA strength. Differences are computed after applying RNA compared to no RNA. Histogram matching is applied before computing differences. The scene from the main Figure 7 is used.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T5.12.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.12.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T5.12.1.1.1.1" style="padding-top:4.3pt;padding-bottom:4.3pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.12.1.1.1.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.1.1.2.1" style="font-size:144%;">FID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.12.1.1.1.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.1.1.3.1" style="font-size:144%;">KID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.12.1.1.1.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.1.1.4.1" style="font-size:144%;">pFID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T5.12.1.1.1.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.1.1.5.1" style="font-size:144%;">pKID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.12.1.1.1.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.1.1.6.1" style="font-size:144%;">Time (sec)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.12.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt ltx_border_tt" id="S6.T5.12.1.2.1.1" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.2.1.1.1" style="font-size:144%;">DemoFusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S6.T5.12.1.2.1.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.2.1.2.1" style="font-size:144%;">131.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S6.T5.12.1.2.1.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.2.1.3.1" style="font-size:144%;">0.0064</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S6.T5.12.1.2.1.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.2.1.4.1" style="font-size:144%;">38.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S6.T5.12.1.2.1.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.2.1.5.1" style="font-size:144%;">0.0075</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S6.T5.12.1.2.1.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.2.1.6.1" style="font-size:144%;">660</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.12.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.12.1.3.2.1" style="padding-top:4.3pt;padding-bottom:4.3pt;">
<span class="ltx_ERROR undefined" id="S6.T5.12.1.3.2.1.1">\cdashline</span><span class="ltx_text" id="S6.T5.12.1.3.2.1.2" style="font-size:144%;">1-6
LSRNA-DemoFusion (w/o RNA)</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.3.2.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.3.2.2.1" style="font-size:144%;">132.65</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.3.2.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.3.2.3.1" style="font-size:144%;">0.0065</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.3.2.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.3.2.4.1" style="font-size:144%;">37.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.12.1.3.2.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.3.2.5.1" style="font-size:144%;">0.0057</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.3.2.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.3.2.6.1" style="font-size:144%;">272</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.12.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.12.1.4.3.1" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.4.3.1.1" style="font-size:144%;">LSRNA-DemoFusion</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.4.3.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.4.3.2.1" style="font-size:144%;">132.01</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.4.3.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.4.3.3.1" style="font-size:144%;">0.0053</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.4.3.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.4.3.4.1" style="font-size:144%;">35.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.12.1.4.3.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.4.3.5.1" style="font-size:144%;">0.0057</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.4.3.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.4.3.6.1" style="font-size:144%;">272</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.12.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T5.12.1.5.4.1" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.5.4.1.1" style="font-size:144%;">Pixelsmith</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.12.1.5.4.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.5.4.2.1" style="font-size:144%;">134.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.12.1.5.4.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.5.4.3.1" style="font-size:144%;">0.0095</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.12.1.5.4.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.5.4.4.1" style="font-size:144%;">40.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.12.1.5.4.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.5.4.5.1" style="font-size:144%;">0.0084</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.12.1.5.4.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.5.4.6.1" style="font-size:144%;">289</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.12.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.12.1.6.5.1" style="padding-top:4.3pt;padding-bottom:4.3pt;">
<span class="ltx_ERROR undefined" id="S6.T5.12.1.6.5.1.1">\cdashline</span><span class="ltx_text" id="S6.T5.12.1.6.5.1.2" style="font-size:144%;">1-6
Pixelsmith-latentBic</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.6.5.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.6.5.2.1" style="font-size:144%;">142.23</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.6.5.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.6.5.3.1" style="font-size:144%;">0.0155</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.6.5.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.6.5.4.1" style="font-size:144%;">67.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.12.1.6.5.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.6.5.5.1" style="font-size:144%;">0.0275</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.6.5.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.6.5.6.1" style="font-size:144%;">291</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.12.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T5.12.1.7.6.1" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.7.6.1.1" style="font-size:144%;">LSRNA-Pixelsmith (w/o RNA)</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.7.6.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.7.6.2.1" style="font-size:144%;">137.71</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.7.6.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.7.6.3.1" style="font-size:144%;">0.0116</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.7.6.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.7.6.4.1" style="font-size:144%;">46.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.12.1.7.6.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.7.6.5.1" style="font-size:144%;">0.0112</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.12.1.7.6.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.7.6.6.1" style="font-size:144%;">181</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.12.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S6.T5.12.1.8.7.1" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.8.7.1.1" style="font-size:144%;">LSRNA-Pixelsmith</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.12.1.8.7.2" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.8.7.2.1" style="font-size:144%;">132.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.12.1.8.7.3" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.8.7.3.1" style="font-size:144%;">0.0077</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.12.1.8.7.4" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.8.7.4.1" style="font-size:144%;">36.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T5.12.1.8.7.5" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.12.1.8.7.5.1" style="font-size:144%;">0.0057</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.12.1.8.7.6" style="padding-top:4.3pt;padding-bottom:4.3pt;"><span class="ltx_text" id="S6.T5.12.1.8.7.6.1" style="font-size:144%;">182</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results evaluating the impact of the Latent Space Super-Resolution (LSR) and Region-wise Noise Addition (RNA) modules on the image generation quality using the OpenImages-Valid dataset upscaled by a factor of 9.  It compares the performance of the baseline DemoFusion and Pixelsmith models against versions incorporating either just LSR, just RNA, or both LSR and RNA.  The FID, KID, pFID, pKID, and inference time are reported for each model variation to quantify the effect of LSR and RNA on image quality and computational efficiency.
> <details>
> <summary>read the caption</summary>
> Table E:  LSR & RNA ablation on OpenImages-Valid (×\times×9). The best results marked in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T6.6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T6.6.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T6.3.1.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{min}" class="ltx_Math" display="inline" id="S6.T6.3.1.1.1.m1.1"><semantics id="S6.T6.3.1.1.1.m1.1a"><msub id="S6.T6.3.1.1.1.m1.1.1" xref="S6.T6.3.1.1.1.m1.1.1.cmml"><mi id="S6.T6.3.1.1.1.m1.1.1.2" mathsize="144%" xref="S6.T6.3.1.1.1.m1.1.1.2.cmml">e</mi><mrow id="S6.T6.3.1.1.1.m1.1.1.3" xref="S6.T6.3.1.1.1.m1.1.1.3.cmml"><mi id="S6.T6.3.1.1.1.m1.1.1.3.2" mathsize="144%" xref="S6.T6.3.1.1.1.m1.1.1.3.2.cmml">m</mi><mo id="S6.T6.3.1.1.1.m1.1.1.3.1" xref="S6.T6.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.3.1.1.1.m1.1.1.3.3" mathsize="144%" xref="S6.T6.3.1.1.1.m1.1.1.3.3.cmml">i</mi><mo id="S6.T6.3.1.1.1.m1.1.1.3.1a" xref="S6.T6.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.3.1.1.1.m1.1.1.3.4" mathsize="144%" xref="S6.T6.3.1.1.1.m1.1.1.3.4.cmml">n</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T6.3.1.1.1.m1.1b"><apply id="S6.T6.3.1.1.1.m1.1.1.cmml" xref="S6.T6.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T6.3.1.1.1.m1.1.1.1.cmml" xref="S6.T6.3.1.1.1.m1.1.1">subscript</csymbol><ci id="S6.T6.3.1.1.1.m1.1.1.2.cmml" xref="S6.T6.3.1.1.1.m1.1.1.2">𝑒</ci><apply id="S6.T6.3.1.1.1.m1.1.1.3.cmml" xref="S6.T6.3.1.1.1.m1.1.1.3"><times id="S6.T6.3.1.1.1.m1.1.1.3.1.cmml" xref="S6.T6.3.1.1.1.m1.1.1.3.1"></times><ci id="S6.T6.3.1.1.1.m1.1.1.3.2.cmml" xref="S6.T6.3.1.1.1.m1.1.1.3.2">𝑚</ci><ci id="S6.T6.3.1.1.1.m1.1.1.3.3.cmml" xref="S6.T6.3.1.1.1.m1.1.1.3.3">𝑖</ci><ci id="S6.T6.3.1.1.1.m1.1.1.3.4.cmml" xref="S6.T6.3.1.1.1.m1.1.1.3.4">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.3.1.1.1.m1.1c">e_{min}</annotation><annotation encoding="application/x-llamapun" id="S6.T6.3.1.1.1.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T6.4.2.2.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{max}" class="ltx_Math" display="inline" id="S6.T6.4.2.2.2.m1.1"><semantics id="S6.T6.4.2.2.2.m1.1a"><msub id="S6.T6.4.2.2.2.m1.1.1" xref="S6.T6.4.2.2.2.m1.1.1.cmml"><mi id="S6.T6.4.2.2.2.m1.1.1.2" mathsize="144%" xref="S6.T6.4.2.2.2.m1.1.1.2.cmml">e</mi><mrow id="S6.T6.4.2.2.2.m1.1.1.3" xref="S6.T6.4.2.2.2.m1.1.1.3.cmml"><mi id="S6.T6.4.2.2.2.m1.1.1.3.2" mathsize="144%" xref="S6.T6.4.2.2.2.m1.1.1.3.2.cmml">m</mi><mo id="S6.T6.4.2.2.2.m1.1.1.3.1" xref="S6.T6.4.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.4.2.2.2.m1.1.1.3.3" mathsize="144%" xref="S6.T6.4.2.2.2.m1.1.1.3.3.cmml">a</mi><mo id="S6.T6.4.2.2.2.m1.1.1.3.1a" xref="S6.T6.4.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.4.2.2.2.m1.1.1.3.4" mathsize="144%" xref="S6.T6.4.2.2.2.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T6.4.2.2.2.m1.1b"><apply id="S6.T6.4.2.2.2.m1.1.1.cmml" xref="S6.T6.4.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S6.T6.4.2.2.2.m1.1.1.1.cmml" xref="S6.T6.4.2.2.2.m1.1.1">subscript</csymbol><ci id="S6.T6.4.2.2.2.m1.1.1.2.cmml" xref="S6.T6.4.2.2.2.m1.1.1.2">𝑒</ci><apply id="S6.T6.4.2.2.2.m1.1.1.3.cmml" xref="S6.T6.4.2.2.2.m1.1.1.3"><times id="S6.T6.4.2.2.2.m1.1.1.3.1.cmml" xref="S6.T6.4.2.2.2.m1.1.1.3.1"></times><ci id="S6.T6.4.2.2.2.m1.1.1.3.2.cmml" xref="S6.T6.4.2.2.2.m1.1.1.3.2">𝑚</ci><ci id="S6.T6.4.2.2.2.m1.1.1.3.3.cmml" xref="S6.T6.4.2.2.2.m1.1.1.3.3">𝑎</ci><ci id="S6.T6.4.2.2.2.m1.1.1.3.4.cmml" xref="S6.T6.4.2.2.2.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.4.2.2.2.m1.1c">e_{max}</annotation><annotation encoding="application/x-llamapun" id="S6.T6.4.2.2.2.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T6.6.4.4.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.4.5.1" style="font-size:144%;">FID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T6.6.4.4.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.4.6.1" style="font-size:144%;">pFID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T6.5.3.3.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{min}" class="ltx_Math" display="inline" id="S6.T6.5.3.3.3.m1.1"><semantics id="S6.T6.5.3.3.3.m1.1a"><msub id="S6.T6.5.3.3.3.m1.1.1" xref="S6.T6.5.3.3.3.m1.1.1.cmml"><mi id="S6.T6.5.3.3.3.m1.1.1.2" mathsize="144%" xref="S6.T6.5.3.3.3.m1.1.1.2.cmml">e</mi><mrow id="S6.T6.5.3.3.3.m1.1.1.3" xref="S6.T6.5.3.3.3.m1.1.1.3.cmml"><mi id="S6.T6.5.3.3.3.m1.1.1.3.2" mathsize="144%" xref="S6.T6.5.3.3.3.m1.1.1.3.2.cmml">m</mi><mo id="S6.T6.5.3.3.3.m1.1.1.3.1" xref="S6.T6.5.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.5.3.3.3.m1.1.1.3.3" mathsize="144%" xref="S6.T6.5.3.3.3.m1.1.1.3.3.cmml">i</mi><mo id="S6.T6.5.3.3.3.m1.1.1.3.1a" xref="S6.T6.5.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.5.3.3.3.m1.1.1.3.4" mathsize="144%" xref="S6.T6.5.3.3.3.m1.1.1.3.4.cmml">n</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T6.5.3.3.3.m1.1b"><apply id="S6.T6.5.3.3.3.m1.1.1.cmml" xref="S6.T6.5.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S6.T6.5.3.3.3.m1.1.1.1.cmml" xref="S6.T6.5.3.3.3.m1.1.1">subscript</csymbol><ci id="S6.T6.5.3.3.3.m1.1.1.2.cmml" xref="S6.T6.5.3.3.3.m1.1.1.2">𝑒</ci><apply id="S6.T6.5.3.3.3.m1.1.1.3.cmml" xref="S6.T6.5.3.3.3.m1.1.1.3"><times id="S6.T6.5.3.3.3.m1.1.1.3.1.cmml" xref="S6.T6.5.3.3.3.m1.1.1.3.1"></times><ci id="S6.T6.5.3.3.3.m1.1.1.3.2.cmml" xref="S6.T6.5.3.3.3.m1.1.1.3.2">𝑚</ci><ci id="S6.T6.5.3.3.3.m1.1.1.3.3.cmml" xref="S6.T6.5.3.3.3.m1.1.1.3.3">𝑖</ci><ci id="S6.T6.5.3.3.3.m1.1.1.3.4.cmml" xref="S6.T6.5.3.3.3.m1.1.1.3.4">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.5.3.3.3.m1.1c">e_{min}</annotation><annotation encoding="application/x-llamapun" id="S6.T6.5.3.3.3.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T6.6.4.4.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="e_{max}" class="ltx_Math" display="inline" id="S6.T6.6.4.4.4.m1.1"><semantics id="S6.T6.6.4.4.4.m1.1a"><msub id="S6.T6.6.4.4.4.m1.1.1" xref="S6.T6.6.4.4.4.m1.1.1.cmml"><mi id="S6.T6.6.4.4.4.m1.1.1.2" mathsize="144%" xref="S6.T6.6.4.4.4.m1.1.1.2.cmml">e</mi><mrow id="S6.T6.6.4.4.4.m1.1.1.3" xref="S6.T6.6.4.4.4.m1.1.1.3.cmml"><mi id="S6.T6.6.4.4.4.m1.1.1.3.2" mathsize="144%" xref="S6.T6.6.4.4.4.m1.1.1.3.2.cmml">m</mi><mo id="S6.T6.6.4.4.4.m1.1.1.3.1" xref="S6.T6.6.4.4.4.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.6.4.4.4.m1.1.1.3.3" mathsize="144%" xref="S6.T6.6.4.4.4.m1.1.1.3.3.cmml">a</mi><mo id="S6.T6.6.4.4.4.m1.1.1.3.1a" xref="S6.T6.6.4.4.4.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T6.6.4.4.4.m1.1.1.3.4" mathsize="144%" xref="S6.T6.6.4.4.4.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T6.6.4.4.4.m1.1b"><apply id="S6.T6.6.4.4.4.m1.1.1.cmml" xref="S6.T6.6.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S6.T6.6.4.4.4.m1.1.1.1.cmml" xref="S6.T6.6.4.4.4.m1.1.1">subscript</csymbol><ci id="S6.T6.6.4.4.4.m1.1.1.2.cmml" xref="S6.T6.6.4.4.4.m1.1.1.2">𝑒</ci><apply id="S6.T6.6.4.4.4.m1.1.1.3.cmml" xref="S6.T6.6.4.4.4.m1.1.1.3"><times id="S6.T6.6.4.4.4.m1.1.1.3.1.cmml" xref="S6.T6.6.4.4.4.m1.1.1.3.1"></times><ci id="S6.T6.6.4.4.4.m1.1.1.3.2.cmml" xref="S6.T6.6.4.4.4.m1.1.1.3.2">𝑚</ci><ci id="S6.T6.6.4.4.4.m1.1.1.3.3.cmml" xref="S6.T6.6.4.4.4.m1.1.1.3.3">𝑎</ci><ci id="S6.T6.6.4.4.4.m1.1.1.3.4.cmml" xref="S6.T6.6.4.4.4.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T6.6.4.4.4.m1.1c">e_{max}</annotation><annotation encoding="application/x-llamapun" id="S6.T6.6.4.4.4.m1.1d">italic_e start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T6.6.4.4.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.4.7.1" style="font-size:144%;">FID (↓)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T6.6.4.4.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.4.8.1" style="font-size:144%;">pFID (↓)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.6.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.1.1" style="font-size:144%;">0.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.2.1" style="font-size:144%;">0.0</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.3.1" style="font-size:144%;">137.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.4.1" style="font-size:144%;">46.45</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.5.1" style="font-size:144%;">0.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.6.1" style="font-size:144%;">1.2</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.7.1" style="font-size:144%;">133.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S6.T6.6.4.5.1.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.5.1.8.1" style="font-size:144%;">37.76</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.6.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.6.2.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.1.1" style="font-size:144%;">0.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.6.2.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.2.1" style="font-size:144%;">1.2</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.6.2.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.3.1" style="font-size:144%;">135.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.6.4.6.2.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.4.1" style="font-size:144%;">40.45</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.6.2.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.5.1" style="font-size:144%;">0.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.6.2.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.6.1" style="font-size:144%;">1.4</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.6.2.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.7.1" style="font-size:144%;">133.72</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.6.2.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.6.2.8.1" style="font-size:144%;">38.51</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.6.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.7.3.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.1.1" style="font-size:144%;">0.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.7.3.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.2.1" style="font-size:144%;">1.4</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.7.3.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.3.1" style="font-size:144%;">134.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.6.4.7.3.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.4.1" style="font-size:144%;">38.75</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.7.3.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.5.1" style="font-size:144%;">0.4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.7.3.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.6.1" style="font-size:144%;">0.6</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.7.3.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.7.1" style="font-size:144%;">132.18</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.7.3.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.7.3.8.1" style="font-size:144%;">37.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.6.4.8.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.8.4.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.8.4.1.1" style="font-size:144%;">0.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.8.4.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.8.4.2.1" style="font-size:144%;">1.6</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.8.4.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.8.4.3.1" style="font-size:144%;">134.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.6.4.8.4.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.8.4.4.1" style="font-size:144%;">38.74</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.8.4.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.8.4.5.1" style="font-size:144%;">0.4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T6.6.4.8.4.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.8.4.6.1" style="font-size:144%;">0.8</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.8.4.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.6.4.8.4.7.1" style="font-size:144%;">132.17</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.6.4.8.4.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.6.4.8.4.8.1" style="font-size:144%;">36.71</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.6.4.9.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S6.T6.6.4.9.5.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.1.1" style="font-size:144%;">0.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S6.T6.6.4.9.5.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.2.1" style="font-size:144%;">1.0</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.6.4.9.5.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.3.1" style="font-size:144%;">133.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.6.4.9.5.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.4.1" style="font-size:144%;">38.51</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S6.T6.6.4.9.5.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.5.1" style="font-size:144%;">0.4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S6.T6.6.4.9.5.6" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.6.1" style="font-size:144%;">1.0</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.6.4.9.5.7" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.7.1" style="font-size:144%;">132.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.6.4.9.5.8" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S6.T6.6.4.9.5.8.1" style="font-size:144%;">36.95</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different Region-wise Noise Addition (RNA) strengths on the performance of the Pixelsmith model for image generation.  The study uses the OpenImages-Valid dataset, upscaled by a factor of 9.  The table shows how varying the minimum (emin) and maximum (emax) values of the normalized edge map used to control the amount of noise affects FID and pFID scores.  The best performing RNA strength combination is highlighted in bold, demonstrating the optimal balance between enhancing image details and avoiding over-generation.
> <details>
> <summary>read the caption</summary>
> Table F:  Ablation Study on RNA strength with Pixelsmith on OpenImages-Valid (×\times×9). The best results marked in bold.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18446/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18446/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}