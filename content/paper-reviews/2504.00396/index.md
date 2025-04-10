---
title: "SPF-Portrait: Towards Pure Portrait Customization with Semantic Pollution-Free Fine-tuning"
summary: "SPF-Portrait: Pure portrait customization via semantic pollution-free fine-tuning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Shenzhen University",]
showSummary: true
date: 2025-04-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.00396 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiaole Xian et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.00396" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.00396" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.00396/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Fine-tuning T2I models for portrait attribute customization suffers from semantic pollution, where target semantics entangle with redundant features. This disrupts the original model's behavior. Existing methods struggle to maintain the model's original capabilities and achieve incremental learning, leading to undesirable changes in portrait identity, posture, and background. They often fail to isolate and control the specific attributes being customized. 



The paper introduces **SPF-Portrait**, a dual-path pipeline using the original model as a reference. It employs contrastive learning to adapt target attributes and align unrelated ones with the original portrait. A Semantic-Aware Fine Control Map guides alignment spatially, and a response enhancement mechanism reinforces target attribute performance. **SPF-Portrait** minimizes semantic pollution, preserves original model behavior, and improves customization.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SPF-Portrait is the first to customize attributes while eliminating semantic pollution in text-driven portrait customization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Semantic-Aware Fine Control alignment process is capable of preserving the original model's behavior while meticulously preventing over-alignment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Response enhancement mechanism improves effectiveness of target semantics while alleviating representation gaps in direct cross-modal supervision. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper matters because **SPF-Portrait** offers a refined method for portrait customization, which can maintain high-quality results and opens new research directions in personalized content generation, and disentangled representation learning. It also shows how to avoid semantic pollution in text-driven image editing.

------
#### Visual Insights



![](https://arxiv.org/html/2504.00396/x1.png)

> 🔼 This figure visualizes attention maps, highlighting how the model focuses on different image regions when processing the text prompt. The example shows attention maps from different time steps during image generation when adding the text attribute “a hat”. Brighter areas in the attention map indicate stronger attention from the model. This visualization helps illustrate how the model focuses on the relevant areas for adding the hat attribute while minimizing impact on other elements in the image.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Visualization of the Attention Map. The salient regions directly reflect response intensity to the target text ”a hat”. Brighter regions indicate higher attention.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.11.11">
<tr class="ltx_tr" id="S3.T1.11.11.12">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.11.11.12.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S3.T1.11.11.12.2"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.2.1">Preservation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.11.11.12.3"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.3.1">Responsiveness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.11.11.12.4"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.12.4.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1">FID (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2">LPIPS (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3">ID (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4">CLIP-I (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.5">Seg-Cons (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.6">CLIP-T ( <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.6.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.7.7">HPSv2 (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.7.m1.1.1" stretchy="false" xref="S3.T1.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.m1.1d">↑</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.8">MPS(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.8.m1.1a"><mo id="S3.T1.8.8.8.8.m1.1.1" stretchy="false" xref="S3.T1.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.8.m1.1b"><ci id="S3.T1.8.8.8.8.m1.1.1.cmml" xref="S3.T1.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.8.m1.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.11.11.13.1">Naive Fine-Tuning <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00396v2#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.2">20.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.3">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.4">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.5">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.6">57.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.7">0.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.8">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.13.9">0.67</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.11.11.14.1">AdaLoRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00396v2#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.2">7.38</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.3">0.40</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.4">0.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.5">0.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.6">64.86</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.7">0.23</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.8">0.24</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.14.9">1.10</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.11.11.15.1">LoRA (Best Rank) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00396v2#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.2">9.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.3">0.38</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.4">0.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.5">0.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.6">58.37</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.7">0.27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.8">0.23</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.15.9">1.21</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.11.11.16.1">TokenCompose <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00396v2#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.2">10.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.3">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.4">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.5">0.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.6">40.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.7">0.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.8">0.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.16.9">0.71</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.11.11.17.1">Magnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00396v2#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.2">18.92</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.3">0.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.4">0.38</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.5">0.61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.6">32.87</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.7">0.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.8">0.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.17.9">0.97</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.18" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.11.11.18.1"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.1.1" style="background-color:#E6E6E6;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.2"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.2.1" style="background-color:#E6E6E6;">4.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.3"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.3.1" style="background-color:#E6E6E6;">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.4"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.4.1" style="background-color:#E6E6E6;">0.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.5"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.5.1" style="background-color:#E6E6E6;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.6"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.6.1" style="background-color:#E6E6E6;">75.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.7"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.7.1" style="background-color:#E6E6E6;">0.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.8"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.8.1" style="background-color:#E6E6E6;">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.18.9"><span class="ltx_text ltx_font_bold" id="S3.T1.11.11.18.9.1" style="background-color:#E6E6E6;">1.49</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.9" style="background-color:#ECECEC;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.9.9.9.1"><span class="ltx_text" id="S3.T1.9.9.9.1.1" style="background-color:#ECECEC;">Ours (w/o <math alttext="\mathcal{L}_{\mathrm{text-consistent}}" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.1.m1.1"><semantics id="S3.T1.9.9.9.1.1.m1.1a"><msub id="S3.T1.9.9.9.1.1.m1.1.1" xref="S3.T1.9.9.9.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.9.9.9.1.1.m1.1.1.2" mathbackground="#ECECEC" xref="S3.T1.9.9.9.1.1.m1.1.1.2.cmml">ℒ</mi><mrow id="S3.T1.9.9.9.1.1.m1.1.1.3" xref="S3.T1.9.9.9.1.1.m1.1.1.3.cmml"><mi id="S3.T1.9.9.9.1.1.m1.1.1.3.2" mathbackground="#ECECEC" xref="S3.T1.9.9.9.1.1.m1.1.1.3.2.cmml">text</mi><mo id="S3.T1.9.9.9.1.1.m1.1.1.3.1" mathbackground="#ECECEC" xref="S3.T1.9.9.9.1.1.m1.1.1.3.1.cmml">−</mo><mi id="S3.T1.9.9.9.1.1.m1.1.1.3.3" mathbackground="#ECECEC" xref="S3.T1.9.9.9.1.1.m1.1.1.3.3.cmml">consistent</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.1.m1.1b"><apply id="S3.T1.9.9.9.1.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.9.9.9.1.1.m1.1.1.1.cmml" xref="S3.T1.9.9.9.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.9.9.9.1.1.m1.1.1.2.cmml" xref="S3.T1.9.9.9.1.1.m1.1.1.2">ℒ</ci><apply id="S3.T1.9.9.9.1.1.m1.1.1.3.cmml" xref="S3.T1.9.9.9.1.1.m1.1.1.3"><minus id="S3.T1.9.9.9.1.1.m1.1.1.3.1.cmml" xref="S3.T1.9.9.9.1.1.m1.1.1.3.1"></minus><ci id="S3.T1.9.9.9.1.1.m1.1.1.3.2.cmml" xref="S3.T1.9.9.9.1.1.m1.1.1.3.2">text</ci><ci id="S3.T1.9.9.9.1.1.m1.1.1.3.3.cmml" xref="S3.T1.9.9.9.1.1.m1.1.1.3.3">consistent</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.1.m1.1c">\mathcal{L}_{\mathrm{text-consistent}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT roman_text - roman_consistent end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.2"><span class="ltx_text" id="S3.T1.9.9.9.2.1" style="background-color:#ECECEC;">4.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.3"><span class="ltx_text" id="S3.T1.9.9.9.3.1" style="background-color:#ECECEC;">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.4"><span class="ltx_text" id="S3.T1.9.9.9.4.1" style="background-color:#ECECEC;">0.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.5"><span class="ltx_text" id="S3.T1.9.9.9.5.1" style="background-color:#ECECEC;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.6"><span class="ltx_text" id="S3.T1.9.9.9.6.1" style="background-color:#ECECEC;">61.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.7"><span class="ltx_text" id="S3.T1.9.9.9.7.1" style="background-color:#ECECEC;">0.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.8"><span class="ltx_text" id="S3.T1.9.9.9.8.1" style="background-color:#ECECEC;">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.9.9.9.9"><span class="ltx_text" id="S3.T1.9.9.9.9.1" style="background-color:#ECECEC;">1.13</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.10.10.10.1"><span class="ltx_text" id="S3.T1.10.10.10.1.1" style="background-color:#F2F2F2;">Ours (w/o <math alttext="\mathcal{L}_{fine-grained}" class="ltx_Math" display="inline" id="S3.T1.10.10.10.1.1.m1.1"><semantics id="S3.T1.10.10.10.1.1.m1.1a"><msub id="S3.T1.10.10.10.1.1.m1.1.1" xref="S3.T1.10.10.10.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.10.10.10.1.1.m1.1.1.2" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.2.cmml">ℒ</mi><mrow id="S3.T1.10.10.10.1.1.m1.1.1.3" xref="S3.T1.10.10.10.1.1.m1.1.1.3.cmml"><mrow id="S3.T1.10.10.10.1.1.m1.1.1.3.2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.cmml"><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.2.2" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.2.cmml">f</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.2.1" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.2.3" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.3.cmml">i</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.2.1a" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.2.4" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.4.cmml">n</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.2.1b" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.2.5" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.5.cmml">e</mi></mrow><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.1" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.1.cmml">−</mo><mrow id="S3.T1.10.10.10.1.1.m1.1.1.3.3" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.cmml"><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.3.2" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.2.cmml">g</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.3.1" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.3.3" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.3.cmml">r</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.3.1a" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.3.4" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.4.cmml">a</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.3.1b" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.3.5" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.5.cmml">i</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.3.1c" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.3.6" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.6.cmml">n</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.3.1d" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.3.7" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.7.cmml">e</mi><mo id="S3.T1.10.10.10.1.1.m1.1.1.3.3.1e" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S3.T1.10.10.10.1.1.m1.1.1.3.3.8" mathbackground="#F2F2F2" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.8.cmml">d</mi></mrow></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.1.1.m1.1b"><apply id="S3.T1.10.10.10.1.1.m1.1.1.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.10.10.10.1.1.m1.1.1.1.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.10.10.10.1.1.m1.1.1.2.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.2">ℒ</ci><apply id="S3.T1.10.10.10.1.1.m1.1.1.3.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3"><minus id="S3.T1.10.10.10.1.1.m1.1.1.3.1.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.1"></minus><apply id="S3.T1.10.10.10.1.1.m1.1.1.3.2.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2"><times id="S3.T1.10.10.10.1.1.m1.1.1.3.2.1.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.1"></times><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.2.2.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.2">𝑓</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.2.3.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.3">𝑖</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.2.4.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.4">𝑛</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.2.5.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.2.5">𝑒</ci></apply><apply id="S3.T1.10.10.10.1.1.m1.1.1.3.3.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3"><times id="S3.T1.10.10.10.1.1.m1.1.1.3.3.1.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.1"></times><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.3.2.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.2">𝑔</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.3.3.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.3">𝑟</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.3.4.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.4">𝑎</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.3.5.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.5">𝑖</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.3.6.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.6">𝑛</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.3.7.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.7">𝑒</ci><ci id="S3.T1.10.10.10.1.1.m1.1.1.3.3.8.cmml" xref="S3.T1.10.10.10.1.1.m1.1.1.3.3.8">𝑑</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.1.1.m1.1c">\mathcal{L}_{fine-grained}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_f italic_i italic_n italic_e - italic_g italic_r italic_a italic_i italic_n italic_e italic_d end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.2"><span class="ltx_text" id="S3.T1.10.10.10.2.1" style="background-color:#F2F2F2;">6.74</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.3"><span class="ltx_text" id="S3.T1.10.10.10.3.1" style="background-color:#F2F2F2;">0.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.4"><span class="ltx_text" id="S3.T1.10.10.10.4.1" style="background-color:#F2F2F2;">0.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.5"><span class="ltx_text" id="S3.T1.10.10.10.5.1" style="background-color:#F2F2F2;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.6"><span class="ltx_text" id="S3.T1.10.10.10.6.1" style="background-color:#F2F2F2;">41.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.7"><span class="ltx_text" id="S3.T1.10.10.10.7.1" style="background-color:#F2F2F2;">0.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.8"><span class="ltx_text" id="S3.T1.10.10.10.8.1" style="background-color:#F2F2F2;">0.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.9"><span class="ltx_text" id="S3.T1.10.10.10.9.1" style="background-color:#F2F2F2;">1.22</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.11" style="background-color:#F6F6F6;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.11.11.11.1"><span class="ltx_text" id="S3.T1.11.11.11.1.1" style="background-color:#F6F6F6;">Ours (w/o <math alttext="\mathcal{L}_{enhanced}" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.1.m1.1"><semantics id="S3.T1.11.11.11.1.1.m1.1a"><msub id="S3.T1.11.11.11.1.1.m1.1.1" xref="S3.T1.11.11.11.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.11.11.11.1.1.m1.1.1.2" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.2.cmml">ℒ</mi><mrow id="S3.T1.11.11.11.1.1.m1.1.1.3" xref="S3.T1.11.11.11.1.1.m1.1.1.3.cmml"><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.2" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.2.cmml">e</mi><mo id="S3.T1.11.11.11.1.1.m1.1.1.3.1" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.3" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.3.cmml">n</mi><mo id="S3.T1.11.11.11.1.1.m1.1.1.3.1a" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.4" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.4.cmml">h</mi><mo id="S3.T1.11.11.11.1.1.m1.1.1.3.1b" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.5" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.5.cmml">a</mi><mo id="S3.T1.11.11.11.1.1.m1.1.1.3.1c" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.6" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.6.cmml">n</mi><mo id="S3.T1.11.11.11.1.1.m1.1.1.3.1d" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.7" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.7.cmml">c</mi><mo id="S3.T1.11.11.11.1.1.m1.1.1.3.1e" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.8" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.8.cmml">e</mi><mo id="S3.T1.11.11.11.1.1.m1.1.1.3.1f" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.1.m1.1.1.3.9" mathbackground="#F6F6F6" xref="S3.T1.11.11.11.1.1.m1.1.1.3.9.cmml">d</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.1.m1.1b"><apply id="S3.T1.11.11.11.1.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.11.11.11.1.1.m1.1.1.1.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.11.11.11.1.1.m1.1.1.2.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.2">ℒ</ci><apply id="S3.T1.11.11.11.1.1.m1.1.1.3.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3"><times id="S3.T1.11.11.11.1.1.m1.1.1.3.1.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.1"></times><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.2.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.2">𝑒</ci><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.3.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.3">𝑛</ci><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.4.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.4">ℎ</ci><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.5.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.5">𝑎</ci><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.6.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.6">𝑛</ci><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.7.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.7">𝑐</ci><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.8.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.8">𝑒</ci><ci id="S3.T1.11.11.11.1.1.m1.1.1.3.9.cmml" xref="S3.T1.11.11.11.1.1.m1.1.1.3.9">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.1.m1.1c">\mathcal{L}_{enhanced}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_e italic_n italic_h italic_a italic_n italic_c italic_e italic_d end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.2"><span class="ltx_text" id="S3.T1.11.11.11.2.1" style="background-color:#F6F6F6;">4.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.3"><span class="ltx_text" id="S3.T1.11.11.11.3.1" style="background-color:#F6F6F6;">0.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.4"><span class="ltx_text" id="S3.T1.11.11.11.4.1" style="background-color:#F6F6F6;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.5"><span class="ltx_text" id="S3.T1.11.11.11.5.1" style="background-color:#F6F6F6;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.6"><span class="ltx_text" id="S3.T1.11.11.11.6.1" style="background-color:#F6F6F6;">74.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.7"><span class="ltx_text" id="S3.T1.11.11.11.7.1" style="background-color:#F6F6F6;">0.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.8"><span class="ltx_text" id="S3.T1.11.11.11.8.1" style="background-color:#F6F6F6;">0.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.9"><span class="ltx_text" id="S3.T1.11.11.11.9.1" style="background-color:#F6F6F6;">1.40</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.19" style="background-color:#FAFAFA;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.11.11.19.1"><span class="ltx_text" id="S3.T1.11.11.19.1.1" style="background-color:#FAFAFA;">Ours (w/o SFCM)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.11.19.2.1" style="background-color:#FAFAFA;">4.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.11.19.3.1" style="background-color:#FAFAFA;">0.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.11.19.4.1" style="background-color:#FAFAFA;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.11.19.5.1" style="background-color:#FAFAFA;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.11.11.19.6.1" style="background-color:#FAFAFA;">80.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.7"><span class="ltx_text" id="S3.T1.11.11.19.7.1" style="background-color:#FAFAFA;">0.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.8"><span class="ltx_text" id="S3.T1.11.11.19.8.1" style="background-color:#FAFAFA;">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.11.11.19.9"><span class="ltx_text" id="S3.T1.11.11.19.9.1" style="background-color:#FAFAFA;">1.09</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of the proposed SPF-Portrait method with several state-of-the-art (SOTA) approaches and ablation studies.  The metrics used evaluate image fidelity (FID, LPIPS), identity preservation (ID, CLIP-I, Seg-Cons), responsiveness to target semantics (CLIP-T), and overall image quality (HPSv2, MPS). Lower FID values indicate better preservation of the original model's behavior.  The ablation study investigates the impact of each component of SPF-Portrait by removing them individually. Notably, the results for 'Ours (w/o SFCM)' show abnormally low values due to over-alignment of generated images with the original portraits, demonstrating the importance of the Semantic-Aware Fine Control Map (SFCM).
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative Comparisons Result. Rows with a gray background indicate our ablation experiments, while rows without it represent the state-of-the-art (SOTA) methods being compared. In our specific pairwise comparison, unlike general image generation, lower FID values reflect greater consistency with the original model’s behavior. It is notable that the underlined values in “Ours (w/o SFCM)” are abnormally low, as the generated portraits exhibit over-alignment with the original portraits.
> </details>





### In-depth insights


#### Semantic Purity
While the paper doesn't explicitly use the term "Semantic Purity," the core concept revolves around it. It focuses on customizing portrait attributes using text-to-image models while avoiding **'Semantic Pollution'**: the entanglement of target semantics with unwanted features**. The proposed SPF-Portrait tackles this by a dual-path approach, using a frozen original model as a reference and contrastive learning to align features. A key innovation is the **Semantic-Aware Fine Control Map (SFCM), guiding alignment to relevant regions**, preventing over-alignment. Also, a **response enhancement** addresses representation gaps. The goal is to achieve **pure understanding of customized semantics**.

#### Dual-Path FT
The Dual-Path Fine-Tuning (FT) approach, absent from the original paper, represents a sophisticated strategy in transfer learning, particularly within generative models. It involves maintaining two distinct pathways during fine-tuning: one dedicated to preserving pre-trained knowledge, and another for adapting to new tasks. The first path, often frozen or lightly tuned, acts as a **regularizer**, preventing catastrophic forgetting and ensuring the model retains its foundational capabilities. The second path, more aggressively tuned, learns task-specific features, enabling adaptation without compromising existing knowledge. The success hinges on effectively balancing the contributions of both paths, often through techniques like **loss weighting or adaptive learning rates**. This approach contrasts sharply with naive fine-tuning, where indiscriminate updating can lead to the loss of valuable pre-trained information. The dual-path approach is relevant for text-to-image customization since **semantic pollution** needs to be mitigated to purely understand customized semantics while eliminating semantic pollution in text-driven portrait customization. By carefully disentangling adaptation and preservation, dual-path FT offers a robust and efficient method for transferring knowledge to new domains. A carefully designed Semantic Aware Fine Control map can ensure **precise alignment** to balance between adaptation and preservation.

#### SFCM Alignment
Based on the document, the Semantic-Aware Fine Control Map (SFCM) likely addresses a crucial challenge in fine-tuning text-to-image models: **preventing over-alignment** to the original image while still achieving the desired target attributes. Standard alignment methods, while helpful in preserving the original model's characteristics, may inadvertently suppress the intensity of target attributes. This is because text semantics can be ambiguous, leading to inaccurate distinctions between desired modifications and unrelated features. Thus, the SFCM **spatially guides the alignment process**, focusing on appropriate regions and minimizing impact on the target response, ensuring that semantic pollution is avoided and the fine-tuning process selectively and accurately adjusts the desired attributes without compromising the underlying image characteristics. It contributes to a more precise and effective customization workflow.

#### Response Enhance
The concept of 'Response Enhancement' in the context of fine-tuning text-to-image models likely aims to **improve the model's sensitivity and accuracy in generating images that faithfully reflect the target semantics described in the text prompt**. This is particularly important because naive fine-tuning often results in the model learning redundant features or losing the ability to generate specific attributes. Response enhancement techniques could involve strategies such as **amplifying the gradients associated with target attributes during training**, using **attention mechanisms to focus on relevant image regions**, or **incorporating regularization terms to prevent the model from ignoring subtle but important textual cues**. By carefully calibrating the model's response to target semantics, 'Response Enhancement' helps to ensure that customized attributes are not only present in the generated images but also visually prominent and coherent with the overall scene.

#### Portrait SOTA
While the term "Portrait SOTA" isn't explicitly present, the paper addresses the challenge of customizing portraits using text-to-image models without sacrificing the original model's integrity. The authors introduce SPF-Portrait, aiming for **purely customized semantics without 'Semantic Pollution'**. This contrasts with existing methods struggling to maintain the original model's behavior while adding new attributes. SPF-Portrait's dual-path approach and Semantic-Aware Fine Control Map (SFCM) represent innovations. This addresses limitations of current fine-tuning techniques by disentangling target attributes from unrelated features, ensuring incremental learning. Experiments show SPF-Portrait achieves **state-of-the-art performance** in text-driven portrait customization by preserving original characteristics and avoiding over-alignment. Its dual-path pipeline with attention is key.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.00396/x2.png)

> 🔼 This figure illustrates the dual-path contrastive learning pipeline used in SPF-Portrait.  The pipeline processes text input in two parallel paths: a Reference Path and a Response Path.  The Reference Path uses only the 'Base text' as input and remains frozen, acting as a baseline to maintain the original model's behavior. The Response Path receives both the 'Base text' and the 'Target text,' enabling it to learn and generate images incorporating both original features and the desired customizations. The figure visually depicts the flow of information through both paths, showcasing the interaction between them to achieve pure semantic understanding without the negative effects of 'semantic pollution'.
> <details>
> <summary>read the caption</summary>
> Figure 2: The Dual-Path Contrastive Learning Pipeline of SPF-Portrait. The text in blue is the Base text, while those in red is the Target text. Reference Path takes only Base text as input, while Response Path takes complete text (Base text & Target text) as input.
> </details>



![](https://arxiv.org/html/2504.00396/x3.png)

> 🔼 Figure 3(a) demonstrates the problem of over-alignment in vanilla alignment methods during text-driven portrait customization.  Vanilla methods, by focusing solely on aligning the overall image generation, cause the model to overemphasize matching attributes unrelated to the target changes, resulting in an image that is too similar to the original.  In contrast, Figure 3(b) illustrates that reference image fine-tuning generates a more clearly defined area of response focused on the target attribute change.  This is a crucial difference in performance because it ensures that the alterations are localized and don't inadvertently affect other aspects of the portrait. This comparison highlights the superiority of the proposed approach in maintaining the original image's integrity while still successfully adapting it to the requested attributes.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Analysis of Alignment Process. (a) Vanilla aligning results in the over-alignment with original portrait. (b) For the same customization goal, reference image fine-tuning offers a more distinct target response region than T2I fine-tuning.
> </details>



![](https://arxiv.org/html/2504.00396/x4.png)

> 🔼 Figure 4 demonstrates a comparison between traditional image fidelity supervision methods and the proposed SPF-Portrait approach. Part (a) shows graphs illustrating the Image-Reward (IR) and CLIP Score (CLIP-T) metrics over multiple fine-tuning steps, showcasing how the model's image fidelity (IR) and alignment with text descriptions (CLIP-T) evolve during training.  Part (b) provides a visual comparison, presenting example images generated by a traditional approach alongside those produced by the SPF-Portrait method. This visual comparison directly illustrates the improvements in image fidelity and adherence to the text prompts achieved by the proposed technique.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Comparison with Traditional Supervision on Image Fidelity. (a) illustrates the trend of Image-Reward (IR) and CLIP Score (CLIP-T) across fine-tuning steps. Image-Reward [66] is a metric used to evaluate image fidelity. (b) displays samples from traditional method [2] and ours.
> </details>



![](https://arxiv.org/html/2504.00396/x5.png)

> 🔼 Figure 6 showcases a qualitative comparison of SPF-Portrait against several state-of-the-art (SOTA) methods for text-driven portrait customization.  The comparison includes naive fine-tuning as a baseline, along with prominent Parameter-Efficient Fine-Tuning (PEFT) approaches such as LoRA and AdaLoRA, and methods focused on decoupling text embeddings like TokenCompose and Magnet.  Each row represents a different portrait customization task, starting with an original image and caption. Subsequent columns display the results from each method, highlighting the differences in how well each method maintains the original portrait's identity and other attributes while incorporating the desired changes specified in the caption. The figure emphasizes the superior performance of SPF-Portrait in preserving the original model's behavior while accurately implementing the specified customizations. Detailed visual inspection is recommended for a thorough understanding of the results.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Comparisons with SOTA methods. We compare ours with naive fine-tuning [55], PEFT-based methods (LoRA [26], AdaLoRA [71] ) and the decoupled methods (Tokencompose [64], Magenet [74]). Please zoom in for more details.
> </details>



![](https://arxiv.org/html/2504.00396/x6.png)

> 🔼 This ablation study visually demonstrates the impact of individual components within the SPF-Portrait model. By removing either the text consistency loss, the fine-grained loss, the response enhancement loss, or the Semantic-Aware Fine Control Map (SFCM) mechanism, one at a time, we can observe how each component contributes to the overall performance.  The results show the effects on the generated images when specific parts of the model's training or alignment process are disabled.  This helps to isolate the effects of each module in terms of maintaining original image fidelity while also incorporating the desired target attributes.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative Ablation Study. We independently ablate the proposed loss and the SFCM mechanism.
> </details>



![](https://arxiv.org/html/2504.00396/x7.png)

> 🔼 This figure presents the results of a user study comparing SPF-Portrait with other state-of-the-art methods across three key aspects: Original Behavior Consistency (OBC), Target Attribute Responsiveness (TAR), and Aesthetic Preference (AP).  For each comparison, participants were shown pairs of images generated by different methods and asked to select the preferred image based on the evaluation criteria. The percentages shown in the bar chart within the figure represent the proportion of participants who selected each method as superior for each of the three criteria.  The figure visually demonstrates the relative strength of SPF-Portrait compared to the alternative methods in maintaining the original image characteristics while incorporating desired target attributes.
> <details>
> <summary>read the caption</summary>
> Figure 7: User Study Results. The percentages indicate the proportion of users who select the corresponding method.
> </details>



![](https://arxiv.org/html/2504.00396/x8.png)

> 🔼 This figure demonstrates the ability of SPF-Portrait to retain the original characteristics of a portrait when only the base text prompt is used for generation, even after fine-tuning with additional target attributes.  Three portraits are shown for each example, the first being the original image generated by the Stable Diffusion model using only the base text. The second shows the result of naive fine-tuning on a new dataset, highlighting its inability to maintain the original characteristics. The third image, generated using SPF-Portrait with the same base text, clearly shows that the model retains the original details and style while successfully adding the target attributes. This experiment illustrates SPF-Portrait’s ability to achieve incremental learning and prevent semantic pollution.
> <details>
> <summary>read the caption</summary>
> Figure 8: Reconstruction Results. The three portraits for each case are only generated by the same Base text.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.00396/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00396/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}