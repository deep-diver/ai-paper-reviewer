---
title: "CCMNet: Leveraging Calibrated Color Correction Matrices for Cross-Camera Color Constancy"
summary: "CCMNet: Cross-camera color constancy via calibrated color correction matrices, generalizes to new cameras without retraining."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 Yonsei University",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07959 {{< /keyword >}}
{{< keyword icon="writer" >}} Dongyoung Kim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07959" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07959" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07959/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Achieving consistent colors across different cameras is challenging due to variations in their sensors and color responses. Existing color constancy methods often struggle to generalize to new cameras. They require retraining or additional images from the test camera, limiting their practical use. Current methods can be computationally heavy, and some rely on additional information which is not always available.



This paper introduces **CCMNet**, a learning-based method that leverages pre-calibrated color correction matrices (CCMs) available in camera ISPs to achieve cross-camera color constancy. **CCMNet** transforms predefined illumination colors into the test camera's raw space using CCMs, encoding them into a compact camera fingerprint embedding (CFE). It uses a data augmentation technique that interpolates between cameras and their CCMs, improving generalization and achieving state-of-the-art performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CCMNet leverages pre-calibrated CCMs from camera ISPs to encode camera-specific color characteristics, enabling adaptation to unseen cameras. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method introduces a novel imaginary camera augmentation technique to prevent overfitting and enhance generalization across diverse spectral sensitivities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework achieves state-of-the-art cross-camera color constancy while remaining lightweight and not requiring additional images from the test camera. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**CCMNet** offers a practical solution for cross-camera color constancy. The method's lightweight design and reliance on readily available data make it easy to integrate into existing ISP modules. This work opens avenues for enhancing image processing pipelines and improving color accuracy in diverse imaging scenarios.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07959/x2.png)

> 🔼 Figure 1 demonstrates CCMNet, a novel framework for cross-camera color constancy.  It leverages pre-calibrated Color Correction Matrices (CCMs) from the camera's Image Signal Processor (ISP) to learn a camera's color characteristics.  An encoder is trained to create a Camera Fingerprint Embedding (CFE), enabling the system to generalize to unseen cameras.  The figure shows a comparison of CCMNet's results (C) to those of the C5 method (B).  The C5 method requires additional images from the test camera for adaptation, while CCMNet uses only the fixed CCMs from the ISP, achieving better generalization. (A) shows the input raw image.
> <details>
> <summary>read the caption</summary>
> Figure 1: This paper introduces CCMNet, a framework for cross-camera color constancy. CCMNet uses pre-calibrated color correction matrices (CCMs) from camera ISP hardware to train an encoder that generates a camera fingerprint embedding (CFE), capturing the testing camera’s color space. In (A), we show a raw image from a Canon 550D. In (B), we present C5 [6], which generalizes using randomly selected unlabeled images from the test camera—C5’s performance varies depending on the image set. In (C), we show our results, relying only on fixed CCMs in the ISP. Neither method used Canon 550D data during training. Gamma correction was applied for visualization.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.2">
<tr class="ltx_tr" id="S4.T1.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.2.2.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.1">Gehler-Shi <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.2.1">Mean</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.3.1">Med.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.4.1">Tri.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.5.1">B.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.2.3.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.6.1">W.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.3.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.7.1">Size(MB)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.2.2.4.1">2nd-order Gray-Edge <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.4.2">5.13</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.4.3">4.44</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.4.4">4.62</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.4.5">2.11</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.2.4.6">9.26</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.4.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.5">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.5.1">Shades-of-Gray <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5.2">4.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5.3">4.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5.4">4.23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5.5">1.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.5.6">10.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.6">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.6.1">PCA-based B/W Colors <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.2">3.52</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.3">2.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4">2.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.5">0.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.6">8.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.7">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.7.1">ASM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.2">3.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.3">2.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.4">2.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.8">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.8.1">Woo <span class="ltx_text ltx_font_italic" id="S4.T1.2.2.8.1.1">et al.</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.2">4.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.3">2.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.4">3.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.5">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.8.6">10.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.9">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.9.1">Grayness Index <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.2">3.07</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.3">1.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.4">2.16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.5">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.6">7.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.10">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.10.1">Cross-dataset CC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.2">2.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.3">2.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.11">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.11.1">Quasi-Unsupervised CC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.2">3.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.3">2.23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11.7">622</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.12">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.12.1">SIIE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.2">2.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.3">1.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.5">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.6">6.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.7">10.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.13">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.13.1">FFCC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.2">2.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.3">2.19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.4">2.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.5">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.13.6">6.75</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.7">0.22</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.1.1">C5 (<math alttext="m=7" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T1.1.1.1.1.m1.1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.m1.1.1.3.cmml">7</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"><eq id="S4.T1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.m1.1.1.2">𝑚</ci><cn id="S4.T1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.1.1.1.1.m1.1.1.3">7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">m=7</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">italic_m = 7</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.2">2.36</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.3">1.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.4">1.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.5">0.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.6">5.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.7">1.74</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.2.1">C5 (<math alttext="m=9" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><mrow id="S4.T1.2.2.2.1.m1.1.1" xref="S4.T1.2.2.2.1.m1.1.1.cmml"><mi id="S4.T1.2.2.2.1.m1.1.1.2" xref="S4.T1.2.2.2.1.m1.1.1.2.cmml">m</mi><mo id="S4.T1.2.2.2.1.m1.1.1.1" xref="S4.T1.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.2.2.2.1.m1.1.1.3" xref="S4.T1.2.2.2.1.m1.1.1.3.cmml">9</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><apply id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1"><eq id="S4.T1.2.2.2.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1.1"></eq><ci id="S4.T1.2.2.2.1.m1.1.1.2.cmml" xref="S4.T1.2.2.2.1.m1.1.1.2">𝑚</ci><cn id="S4.T1.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.2.2.2.1.m1.1.1.3">9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">m=9</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">italic_m = 9</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.2">2.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.3">1.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.4">2.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.5">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.2.6">5.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.7">2.09</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.2.2.14.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.1.1">CCMNet (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.14.2" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.2.1" style="background-color:#FFFC9E;">2.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.14.3" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.3.1" style="background-color:#FFFC9E;">1.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.14.4" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.4.1" style="background-color:#FFFC9E;">1.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.14.5" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.5.1" style="background-color:#FFFC9E;">0.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.2.14.6" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.6.1" style="background-color:#FFFC9E;">5.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.14.7">1.05</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of various color constancy algorithms on three benchmark datasets (Cube+, Gehler-Shi, and NUS-8).  The algorithms' performance is evaluated using four metrics: mean angular error, median angular error, tri-mean angular error, and the average of the top and bottom 25% of angular errors.  This allows for a comprehensive assessment of accuracy and robustness across different scenarios.  The table also includes results from a cross-sensor (CS) validation protocol, which tests the generalizability of the methods beyond the specific cameras used in training.  Results for the C5 model are shown for different numbers of images (m=7 and m=9), reflecting the impact of using additional images for improved adaptation.  CCMNet consistently outperforms other methods on all metrics across all datasets, demonstrating its superior accuracy and efficiency in cross-camera color constancy.
> <details>
> <summary>read the caption</summary>
> Table 1: Experimental results on three benchmark datasets. CCMNet achieves the best performance across all metrics on various datasets, including additional cross-sensor (CS) validation protocol. For C5 model, m𝑚mitalic_m represents the total number of images used, including both the query image and additional images.
> </details>





### In-depth insights


#### CCM-Guided CFE
While “CCM-Guided CFE” isn't explicitly present, the paper centers around leveraging **Color Correction Matrices (CCMs)** to create a **Camera Fingerprint Embedding (CFE)**. This suggests a strong guidance role for CCMs. The thought is that CCMs, being pre-calibrated within camera ISPs, offer a stable and device-specific representation of color characteristics. A “CCM-Guided CFE” would thus involve using CCM data to inform the generation of the CFE, effectively encoding the camera's color response and spectral sensitivities. It is achieved by transforming illuminant colors into the raw space of a testing camera using its respective calibrated CCMs. This transformation guides the hypernetwork to generate a specific CCC model tailored to the input image. The CFE is then trained and becomes instrumental in cross-camera color constancy by allowing the model to adapt to unseen cameras by capturing the unique color characteristics of each camera.

#### Imaginary Cameras
The concept of "Imaginary Cameras" introduces a fascinating approach to augmenting training data in cross-camera color constancy. This likely involves **synthesizing data by interpolating between real camera characteristics**, effectively expanding the diversity of the training set beyond the limitations of available hardware. This tackles the common issue of overfitting to specific camera models, enhancing the generalizability of algorithms to unseen devices. The method might involve **creating virtual camera spectral sensitivities or color correction matrices (CCMs)** through mathematical combinations of existing ones. The key would be ensuring that the synthesized camera characteristics remain physically plausible and representative of the broader spectrum of real-world imaging devices. The visual quality and realism of the synthesized images is crucial for effective training, thus, careful design of the interpolation and rendering processes is required. This contrasts with traditional data augmentation techniques that primarily focus on manipulating existing images (rotations, crops, color adjustments). 

#### Adaptable & Light
An "Adaptable & Light" approach to cross-camera color constancy is compelling. **Adaptability** ensures the algorithm generalizes well to unseen cameras, crucial in real-world scenarios where camera hardware varies. Leveraging readily available data, such as pre-calibrated CCMs in ISPs, offers an edge over methods needing retraining for new cameras. A **lightweight** model, as the paper states, is essential for practical integration into resource-constrained devices like smartphones. Smaller models imply faster computation and less power consumption. The CFE is fixed once the camera device is determined which shows the low computational cost of this architecture, hence **efficient resource utilization**.

#### No Retraining
The paper emphasizes a key advantage of their proposed CCMNet method: it doesn't require retraining for new cameras. This is a significant departure from many learning-based color constancy algorithms that often struggle to generalize across different camera sensors and spectral sensitivities. **The 'no retraining' aspect highlights the method's practical applicability in real-world scenarios**, where manufacturers constantly introduce new camera models. The reliance on pre-calibrated CCMs, readily available in camera ISPs, allows the network to adapt to unseen cameras without the need for fine-tuning or collecting new training data, reducing the time and resources needed when introducing a new camera. **This is achieved through the Camera Fingerprint Embedding (CFE) which appears to be the key to capturing each camera's unique color characteristics effectively**. Furthermore, the imaginary camera augmentation technique may also contribute to this generalization ability by expanding the diversity of camera characteristics seen during training, enabling the model to better adapt to new raw color spaces at test time. This aspect differentiates it from methods like DMCC, where retraining is necessary for each target camera and C5, where the need for specific images makes it less convenient.

#### ISP Leveraged
**Leveraging ISPs (Image Signal Processors) for color constancy presents a promising avenue**, given the wealth of pre-calibrated data they contain. Traditional color constancy algorithms often struggle with cross-camera generalization due to varying sensor characteristics. However, ISPs, being camera-specific, house crucial information like **color correction matrices (CCMs)** meticulously calibrated during manufacturing. These CCMs, which map raw sensor data to a standard color space, offer a readily available bridge to understand and normalize camera-specific color biases. **By utilizing these CCMs, algorithms can potentially learn camera 'fingerprints'** enabling better adaptation to unseen cameras without requiring additional test images or fine-tuning. This approach is particularly attractive as it **capitalizes on existing hardware calibrations**, reducing the need for complex and computationally intensive training processes for each new camera model, paving the way for robust and lightweight cross-camera color constancy solutions.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07959/x3.png)

> 🔼 This figure illustrates the process of color correction matrix (CCM) calibration and application.  Panel (A) shows the calibration process where CCMs are generated by mapping the CIE XYZ color values (representing standard illuminants at specific color temperatures, such as 2856K and 6504K) to the camera's raw RGB color space. Panel (B) demonstrates how these CCMs are used.  For illuminants other than the calibration points, CCM values are interpolated. This interpolation allows for the transformation of XYZ values into the camera's raw RGB color space under various lighting conditions.  The overall effect is that the CCMs capture each camera's unique color characteristics (spectral sensitivity and response biases), showing how that particular camera responds to different illuminants.
> <details>
> <summary>read the caption</summary>
> Figure 2: Example of CCM calibration (A) and application (B). CCMs are calibrated to transform between CIE XYZ chromaticity and camera-specific raw-RGB values under standard illuminants with predefined color temperatures (e.g., 2856K, 6504K). For other illuminants, the calibrated CCMs are interpolated. As a result, CCMs reflect the camera’s unique color characteristics, capturing how the camera perceives illuminants along the color temperature trajectory.
> </details>



![](https://arxiv.org/html/2504.07959/x4.png)

> 🔼 Figure 3 illustrates the architecture of CCMNet, a novel cross-camera color constancy method.  Panel (A) shows the overall system, highlighting how CCMNet leverages a convolutional color constancy (CCC) framework and integrates a camera fingerprint embedding (CFE). The CCC framework processes input image u-v histograms to generate filters and bias for illuminant estimation. The CFE acts as a guidance mechanism, enabling adaptation to various cameras and their unique spectral sensitivities. Panel (B) details the generation of the CFE.  For three example cameras (two real, one synthetically generated), the CFE is created by transforming predefined illuminant colors (along the Planckian locus, from 2500K to 7500K) from the CIE XYZ color space into each camera's raw RGB space, using camera-specific calibrated color correction matrices (CCMs).  These transformed color values are then represented as a 64x64 histogram and encoded into a compact one-dimensional vector.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the CCMNet architecture. (A) Based on CCC [12] and C5 [6], CCMNet includes a network f𝑓fitalic_f that generates filters and bias from the u⁢v𝑢𝑣uvitalic_u italic_v-histograms of the input image. To process query images from diverse camera domains with varying spectral sensitivities, CCMNet uses a camera fingerprint embedding (CFE) as guidance. (B) The CFE for three example cameras (A, B, V)—two real (A, B) and one imaginary (V)—is constructed by mapping predefined illuminants (2500K–7500K along the Planckian locus) from the CIE XYZ space to each camera’s native raw RGB space using calibrated CCMs. These values are converted into a 64×64646464\times 6464 × 64 histogram and encoded into a 1D vector via a lightweight encoder.
> </details>



![](https://arxiv.org/html/2504.07959/x5.png)

> 🔼 Figure 4 demonstrates the imaginary camera augmentation technique.  A white-balanced image from a Sony A57 camera is transformed from its raw RGB color space into the device-independent CIE XYZ color space using the ground truth illuminant. This XYZ representation is then mapped back into the raw color space of another camera. The figure shows two examples: one where the target is a real camera (Fujifilm XM1) and another where the target is a synthetic, imaginary camera.  Brightness levels have been adjusted for better visualization, enhancing the differences between the transformations. This technique helps the model generalize to unseen camera types during training.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of our imaginary camera augmentation process. An image from the Sony A57 is white-balanced using the ground-truth illuminant, converted to CIE XYZ space, and mapped to the target camera’s raw space. We illustrate two cases: mapping to the raw space of a real camera (Fujifilm XM1) and an imaginary camera. Brightness is adjusted for clarity.
> </details>



![](https://arxiv.org/html/2504.07959/x6.png)

> 🔼 Figure 5 presents a visual comparison of color constancy results obtained using three different methods: C5 (with varying additional image sets), and CCMNet (ours). The first column shows the input raw images. The second and third columns show the C5 results, demonstrating the impact of using different sets of additional images captured from the same camera as the test image.  The fourth column presents the CCMNet results.  This comparison highlights that C5's performance heavily depends on the quality and characteristics of the additional images used during inference, whereas CCMNet consistently achieves high accuracy because it relies only on a fixed camera fingerprint embedding (CFE).
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual comparison of the results from C5 [6] with different additional image sets (second, third column) and CCMNet (fourth column). While C5 relies on additional images, CCMNet is optimized for fixed CFE guidance, ensuring consistent performance.
> </details>



![](https://arxiv.org/html/2504.07959/x7.png)

> 🔼 Figure 6 illustrates the color transformations within a camera's image signal processor (ISP).  It shows how the Forward Matrix (FM) converts white-balanced raw image data from the camera's sensor into a standard color space (CIE XYZ). Conversely, the Color Matrix (CM) performs the reverse transformation, mapping CIE XYZ values (representing a standard light source like illuminant A or D65) back into the camera's specific raw color space.  The figure highlights that different matrices (FM1, CM1, FM2, CM2) are used depending on the specific illuminant (illuminant A at 2856K and D65 at 6504K) being used for calibration.
> <details>
> <summary>read the caption</summary>
> Figure 6: A schematic diagram illustrating the use of ColorMatrix and ForwardMatrix. The ForwardMatrix (FM) transforms white-balanced raw data into the CIE XYZ color space, while the ColorMatrix (CM) converts CIE XYZ values of a standard light source into the camera’s native raw color space. FM1 and CM1 are calibrated for standard illuminant A (2856K), and FM2 and CM2 are calibrated for the D65 illuminant (6504K).
> </details>



![](https://arxiv.org/html/2504.07959/x8.png)

> 🔼 Figure 7 illustrates the process of creating a Camera Fingerprint Embedding (CFE).  First, a range of standard illuminant colors (CIE XYZ), representing color temperatures from 2500K to 7500K along the Planckian locus, are transformed into each camera's specific raw RGB color space using its calibrated color correction matrix (CCM). This transformation maps the standard illuminant colors to how each camera uniquely perceives them. The resulting RGB values for each camera are then converted into a 64x64 uv-histogram, which represents the camera's color response characteristics to the illuminant variations in the uv plane. Finally, a convolutional neural network (CNN) encoder processes this histogram data, producing an 8-dimensional CFE vector. This CFE serves as a compact representation of the camera's unique spectral sensitivity, providing device-specific guidance information for accurate color constancy across various cameras.
> <details>
> <summary>read the caption</summary>
> Figure 7: Detailed visualization of CFE encoding process. As mentioned in the main paper, the camera’s fingerprint is derived by converting the reference CIE XYZ colors (locus) along the correlated color temperature (CCT) range of 2500K–7500K into the corresponding RGB locus as observed by each device, followed by an encoding process. Due to this characteristic, the CFE feature inherently reflects the color characteristics induced by each camera’s spectral sensitivity.
> </details>



![](https://arxiv.org/html/2504.07959/x9.png)

> 🔼 Figure 8 illustrates the camera-to-camera mapping process used for data augmentation.  It shows three key steps: (A) creating a device-independent XYZ image pool by white-balancing images from various cameras and transforming them using Forward Matrices; (B) sampling a reference image from this pool and an illumination color from the augmented illumination pool of its original camera, then mapping that illumination to a randomly chosen target camera's RGB space using a Color Matrix; and (C) transforming the XYZ image into the white-balanced RGB spaces of both the source and target cameras using inverse Forward Matrices, followed by simulating illumination by multiplying the images with the respective illumination RGB values.
> <details>
> <summary>read the caption</summary>
> Figure 8: Overall process of camera-to-camera mapping. In (A), subsets of images taken by different cameras from multiple datasets are white-balanced using the corresponding ground-truth illuminants, and the ForwardMatrix is used to convert them to the CIE XYZ space, creating the XYZ image pool. In (B), a reference image is sampled from the pool, and an illumination color is sampled from the augmented illumination pool of the source camera (Camera A) that originally captured the image. The sampled illumination is then mapped to the native RGB space of a randomly selected target camera (Camera B) using the ColorMatrix. Finally, in (C), the XYZ image is transformed into the white-balanced color space of Cameras A and B using the inverse of their respective ForwardMatrices, and illumination casting is applied by multiplying the images with the illumination RGB values of each camera space.
> </details>



![](https://arxiv.org/html/2504.07959/x10.png)

> 🔼 This figure demonstrates the results of imaginary camera augmentation, a data augmentation technique used to improve the model's generalization capabilities.  Each row shows a pair of real camera images (leftmost and rightmost) and three images generated by interpolating between those real cameras at ratios of 0.25, 0.5, and 0.75. The interpolation process involves both the image data and the corresponding Color Correction Matrices (CCMs), ensuring consistency. These synthesized images effectively expand the model's training data, leading to better performance on unseen cameras.
> <details>
> <summary>read the caption</summary>
> Figure 9: Results of our imaginary camera augmentation. In each row, the leftmost and rightmost images represent the source and target camera images generated using the method described in Sec. C, while the three middle images represent those produced by the imaginary camera, generated by interpolating between the two devices at ratios of 0.25, 0.5, and 0.75, respectively. As explained in Sec. 3.4 of the main paper, the CCMs of the imaginary cameras are interpolated using the same alpha values applied during image interpolation, and the resulting CFE embeddings are generated for training. Brightness is adjusted for visibility.
> </details>



![](https://arxiv.org/html/2504.07959/x11.png)

> 🔼 Figure 10 presents additional results obtained using the Canon EOS 1Ds Mark III camera.  The figure showcases CCMNet's performance on diverse scenes captured by this camera, which was never included in CCMNet's training data.  This highlights CCMNet's ability to generalize to unseen cameras and achieve superior performance without requiring any prior exposure to images or color correction matrices (CCMs) from that specific camera model.
> <details>
> <summary>read the caption</summary>
> Figure 10: Additional results for Canon EOS 1Ds Mark III. CCMNet demonstrates superior performance on various scenes captured by unseen camera. Notably, CCMNet has never been exposed to any images or the CCM of the Canon 1Ds Mark III during training.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.2">
<tr class="ltx_tr" id="S4.T1.4.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.2.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.3.1.1">Cube+ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.3.2.1">Mean</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.3.3.1">Med.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.3.4.1">Tri.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.3.5.1">B.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.3.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.3.6.1">W.25%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.2.4.1">Gray-world <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.4.2">3.52</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.4.3">2.55</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.4.4">2.82</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.4.5">0.60</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.4.6">7.98</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.5">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.5.1">1st-order Gray-Edge <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.5.2">3.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.5.3">2.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.5.4">2.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.5.5">0.55</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.5.6">7.22</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.6">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.6.1">2nd-order Gray-Edge <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.6.2">3.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.6.3">2.34</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.6.4">2.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.6.5">0.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.6.6">7.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.7">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.7.1">Shades-of-Gray <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.7.2">3.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.7.3">2.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.7.4">2.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.7.5">0.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.7.6">7.77</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.8">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.8.1">Cross-dataset CC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.8.2">2.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.8.3">1.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.8.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.8.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.8.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.9">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.9.1">Quasi-Unsupervised CC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.9.2">2.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.9.3">1.76</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.9.4">2.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.9.5">0.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.9.6">6.45</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.10">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.10.1">SIIE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.10.2">2.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.10.3">1.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.10.5">0.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.10.6">5.06</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.11">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.11.1">FFCC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.11.2">2.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.11.3">1.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.11.4">2.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.11.5">0.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.11.6">6.31</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.12">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.12.1">DMCC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.12.2">2.23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.12.3">1.63</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.12.4">1.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.12.5">0.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.12.6">4.95</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.1">
<td class="ltx_td ltx_align_left" id="S4.T1.3.1.1.1">C5 (<math alttext="m=7" class="ltx_Math" display="inline" id="S4.T1.3.1.1.1.m1.1"><semantics id="S4.T1.3.1.1.1.m1.1a"><mrow id="S4.T1.3.1.1.1.m1.1.1" xref="S4.T1.3.1.1.1.m1.1.1.cmml"><mi id="S4.T1.3.1.1.1.m1.1.1.2" xref="S4.T1.3.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T1.3.1.1.1.m1.1.1.1" xref="S4.T1.3.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.3.1.1.1.m1.1.1.3" xref="S4.T1.3.1.1.1.m1.1.1.3.cmml">7</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.1.1.1.m1.1b"><apply id="S4.T1.3.1.1.1.m1.1.1.cmml" xref="S4.T1.3.1.1.1.m1.1.1"><eq id="S4.T1.3.1.1.1.m1.1.1.1.cmml" xref="S4.T1.3.1.1.1.m1.1.1.1"></eq><ci id="S4.T1.3.1.1.1.m1.1.1.2.cmml" xref="S4.T1.3.1.1.1.m1.1.1.2">𝑚</ci><cn id="S4.T1.3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.3.1.1.1.m1.1.1.3">7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.1.1.1.m1.1c">m=7</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.1.1.1.m1.1d">italic_m = 7</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.1.2">1.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.1.3">1.27</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.1.4">1.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.1.5">0.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.1.1.6">4.36</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.2">
<td class="ltx_td ltx_align_left" id="S4.T1.4.2.2.1">C5 (<math alttext="m=9" class="ltx_Math" display="inline" id="S4.T1.4.2.2.1.m1.1"><semantics id="S4.T1.4.2.2.1.m1.1a"><mrow id="S4.T1.4.2.2.1.m1.1.1" xref="S4.T1.4.2.2.1.m1.1.1.cmml"><mi id="S4.T1.4.2.2.1.m1.1.1.2" xref="S4.T1.4.2.2.1.m1.1.1.2.cmml">m</mi><mo id="S4.T1.4.2.2.1.m1.1.1.1" xref="S4.T1.4.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.4.2.2.1.m1.1.1.3" xref="S4.T1.4.2.2.1.m1.1.1.3.cmml">9</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.2.2.1.m1.1b"><apply id="S4.T1.4.2.2.1.m1.1.1.cmml" xref="S4.T1.4.2.2.1.m1.1.1"><eq id="S4.T1.4.2.2.1.m1.1.1.1.cmml" xref="S4.T1.4.2.2.1.m1.1.1.1"></eq><ci id="S4.T1.4.2.2.1.m1.1.1.2.cmml" xref="S4.T1.4.2.2.1.m1.1.1.2">𝑚</ci><cn id="S4.T1.4.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.4.2.2.1.m1.1.1.3">9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.2.2.1.m1.1c">m=9</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.2.2.1.m1.1d">italic_m = 9</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.2.2">1.92</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.2.3">1.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.2.4">1.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.2.5">0.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.2.2.6">4.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.2.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.4.2.13.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.13.1.1">CCMNet (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.2.13.2" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.13.2.1" style="background-color:#FFFC9E;">1.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.2.13.3" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.13.3.1" style="background-color:#FFFC9E;">1.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.2.13.4" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.13.4.1" style="background-color:#FFFC9E;">1.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.2.13.5" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.13.5.1" style="background-color:#FFFC9E;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.2.13.6" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.2.13.6.1" style="background-color:#FFFC9E;">3.89</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the generalization capabilities of the CCMNet model when using the SIIE backbone.  It shows the mean angular error achieved on three different datasets (Cube+, Gehler-Shi, and NUS-8) using various model configurations:  SIIE alone, SIIE with Camera Fingerprint Embedding (CFE), SIIE with data augmentation, and SIIE with both CFE and augmentation. The comparison demonstrates how these additions improve the model's accuracy and generalization.
> <details>
> <summary>read the caption</summary>
> Table 2: Generalization with the SIIE [3] backbone. Reported results show the mean angular error.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.2">
<tr class="ltx_tr" id="S4.T1.6.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.6.2.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.3.1.1">NUS-8 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.3.2.1">Mean</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.3.3.1">Med.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.3.4.1">Tri.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.3.5.1">B.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.3.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.3.6.1">W.25%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.6.2.4.1">Gray-world <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.4.2">4.59</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.4.3">3.46</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.4.4">3.81</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.4.5">1.16</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.2.4.6">9.85</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.5">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.5.1">Shades-of-Gray <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.5.2">3.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.5.3">2.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.5.4">3.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.5.5">0.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.5.6">7.75</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.6">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.6.1">Local Surface Reflectance <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.6.2">3.45</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.6.3">2.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.6.4">2.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.6.5">0.98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.6.6">7.32</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.7">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.7.1">PCA-based B/W Colors <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.7.2">2.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.7.3">2.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.7.4">2.42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.7.5">0.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.7.6">6.13</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.8">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.8.1">Grayness Index <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.8.2">2.91</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.8.3">1.97</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.8.4">2.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.8.5">0.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.8.6">6.67</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.9">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.9.1">Cross-dataset CC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.9.2">3.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.9.3">2.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.9.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.9.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.9.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.10">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.10.1">Quasi-Unsupervised CC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.10.2">3.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.10.3">2.25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.10.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.10.6">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.11">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.11.1">FFCC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.11.2">2.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.11.3">2.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.11.4">2.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.11.5">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.11.6">6.23</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.1">
<td class="ltx_td ltx_align_left" id="S4.T1.5.1.1.1">C5 (<math alttext="m=7" class="ltx_Math" display="inline" id="S4.T1.5.1.1.1.m1.1"><semantics id="S4.T1.5.1.1.1.m1.1a"><mrow id="S4.T1.5.1.1.1.m1.1.1" xref="S4.T1.5.1.1.1.m1.1.1.cmml"><mi id="S4.T1.5.1.1.1.m1.1.1.2" xref="S4.T1.5.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T1.5.1.1.1.m1.1.1.1" xref="S4.T1.5.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.5.1.1.1.m1.1.1.3" xref="S4.T1.5.1.1.1.m1.1.1.3.cmml">7</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.5.1.1.1.m1.1b"><apply id="S4.T1.5.1.1.1.m1.1.1.cmml" xref="S4.T1.5.1.1.1.m1.1.1"><eq id="S4.T1.5.1.1.1.m1.1.1.1.cmml" xref="S4.T1.5.1.1.1.m1.1.1.1"></eq><ci id="S4.T1.5.1.1.1.m1.1.1.2.cmml" xref="S4.T1.5.1.1.1.m1.1.1.2">𝑚</ci><cn id="S4.T1.5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.5.1.1.1.m1.1.1.3">7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.1.1.1.m1.1c">m=7</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.1.1.1.m1.1d">italic_m = 7</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.1.2">2.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.1.3">2.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.1.4">2.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.1.5">0.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.1.6">5.90</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.2">
<td class="ltx_td ltx_align_left" id="S4.T1.6.2.2.1">C5 (<math alttext="m=9" class="ltx_Math" display="inline" id="S4.T1.6.2.2.1.m1.1"><semantics id="S4.T1.6.2.2.1.m1.1a"><mrow id="S4.T1.6.2.2.1.m1.1.1" xref="S4.T1.6.2.2.1.m1.1.1.cmml"><mi id="S4.T1.6.2.2.1.m1.1.1.2" xref="S4.T1.6.2.2.1.m1.1.1.2.cmml">m</mi><mo id="S4.T1.6.2.2.1.m1.1.1.1" xref="S4.T1.6.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.6.2.2.1.m1.1.1.3" xref="S4.T1.6.2.2.1.m1.1.1.3.cmml">9</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.6.2.2.1.m1.1b"><apply id="S4.T1.6.2.2.1.m1.1.1.cmml" xref="S4.T1.6.2.2.1.m1.1.1"><eq id="S4.T1.6.2.2.1.m1.1.1.1.cmml" xref="S4.T1.6.2.2.1.m1.1.1.1"></eq><ci id="S4.T1.6.2.2.1.m1.1.1.2.cmml" xref="S4.T1.6.2.2.1.m1.1.1.2">𝑚</ci><cn id="S4.T1.6.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.6.2.2.1.m1.1.1.3">9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.2.2.1.m1.1c">m=9</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.2.2.1.m1.1d">italic_m = 9</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07959v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.2">2.54</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.3">1.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.4">2.02</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.5">0.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.6">5.61</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.6.2.12.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.12.1.1">CCMNet (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.2.12.2" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.12.2.1" style="background-color:#FFFC9E;">2.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.2.12.3" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.12.3.1" style="background-color:#FFFC9E;">1.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.2.12.4" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.12.4.1" style="background-color:#FFFC9E;">1.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.2.12.5" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.12.5.1" style="background-color:#FFFC9E;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.2.12.6" style="background-color:#FFFC9E;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.12.6.1" style="background-color:#FFFC9E;">5.18</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of two key components of the CCMNet model: the Camera Fingerprint Embedding (CFE) encoder and the augmentation strategy.  The ablation studies compare the model's performance under three different training conditions:  1. **Without augmentation:** The model is trained without any data augmentation techniques. 2. **With augmentation (α = 1):** The model uses an augmentation technique where imaginary cameras are generated by linearly combining the properties of two real cameras (α controls the ratio of combination, and α=1 implies one real camera). 3. **With augmentation (0 < α < 1):** The model uses an augmentation technique where imaginary cameras are generated by linearly combining the properties of two real cameras using a random ratio (0 < α < 1).  For each training condition, the table reports the mean angular error (MAE) achieved on three benchmark datasets (Cube+, Gehler-Shi, and NUS-8). The MAE is a common metric used to evaluate the accuracy of color constancy algorithms. Lower MAE values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation studies on the impact of the CFE encoder and different augmentation strategies. The reported results are the mean angular error.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07959/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07959/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}