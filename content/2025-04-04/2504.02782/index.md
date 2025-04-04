---
title: "GPT-ImgEval: A Comprehensive Benchmark for Diagnosing GPT4o in Image Generation"
summary: "GPT-ImgEval: Diagnosing GPT4o's Image Generation Prowess."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Peking University",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02782 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhiyuan Yan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02782" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02782" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02782/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

OpenAI's GPT4o shows excellent image generation & editing, sparking community excitement. Evaluating its capabilities systematically is critical due to its expanding use. This paper addresses the gap in assessing GPT4o's image generation by presenting GPT-ImgEval, a benchmark quantitatively and qualitatively diagnosing performance in generation quality, editing, & knowledge informed synthesis.



GPT-ImgEval diagnoses GPT-4o, revealing strengths in reasoning, control & knowledge, significantly surpassing existing methods. The study indicates the model employs an auto-regressive combined with a diffusion-based head. It identifies limitations & synthetic artifacts in image generation. Also, the study discusses safety implications and detectability by forensic models. This benchmark fosters reproducibility and accelerating innovation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GPT-4o achieves state-of-the-art performance in image generation, editing, and knowledge-informed synthesis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study suggests GPT-4o may internally use a diffusion head for image decoding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} GPT-ImgEval identifies limitations and artifacts in GPT-4o's image generation, guiding future improvements. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **valuable benchmark**, GPT-ImgEval, for assessing GPT-4o's image generation capabilities. It highlights its strengths and weaknesses, guiding future research and **accelerating innovation** in image generation and beyond. The analysis of GPT-4o’s architecture also provides insights for researchers.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/Structure.jpg)

> 🔼 This figure illustrates three common architectures for multimodal models capable of image generation and understanding.  These architectures differ in how they combine text and vision information: (a) uses an autoregressive (AR) model followed by a diffusion model, (b) uses a native AR model, and (c) combines a stitched or concatenated AR approach with a diffusion model. The figure also speculates on GPT-40's potential internal architecture, highlighting that it might utilize one of these or a variation thereof.  The complete speculation of GPT-40's architecture is detailed in Figure 7.
> <details>
> <summary>read the caption</summary>
> Figure 1: Commonly used pipelines for unified image generation and understanding, and potential decoder architectures of GPT4o’s image generation choice. The complete speculation architectures can be seen in the Figure 7.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.2.1">Architecture</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.3.1">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.4.1">Single Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.5.1">Two Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.6.1">Counting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.7.1">Colors</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.8.1">Position</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.9.1">Attr. Binding</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S2.T1.1.1.2.2.1"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.2.2.1.1">Frozen Text Encoder Mapping Methods</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.1.1.3.3.1">SDv1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.3.3.2">Diffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.3.3.3">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.3.4">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.3.5">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.3.6">0.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.3.7">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.3.8">0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3.3.9">0.06</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.4.4.1">SDv2.1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.2">Diffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.4.4.3">0.50</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4.4">0.98</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4.5">0.51</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4.6">0.44</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4.7">0.85</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4.8">0.07</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.4.9">0.17</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.5.5.1">SD-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib34" title="">34</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.2">Diffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5.3">0.55</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5.4">0.98</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5.5">0.74</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5.6">0.39</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5.7">0.85</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5.8">0.15</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.5.9">0.23</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.6.6.1">DALLE-2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib35" title="">35</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.2">Diffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.6.6.3">0.52</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6.4">0.94</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6.5">0.66</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6.6">0.49</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6.7">0.77</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6.8">0.10</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.6.9">0.19</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.7.7.1">SD3 (d=24) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.2">Diffusion</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.7.3">0.62</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7.4">0.98</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7.5">0.74</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7.6">0.63</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7.7">0.67</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7.8">0.34</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7.9">0.36</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S2.T1.1.1.8.8.1"><span class="ltx_text ltx_font_italic" id="S2.T1.1.1.8.8.1.1">LLMs/MLLMs Enhanced Methods</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S2.T1.1.1.9.9.1">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib39" title="">39</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.9.9.2">AR</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.9.9.3">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.9.9.4">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.9.9.5">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.9.9.6">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.9.9.7">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.9.9.8">0.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.9.9.9">0.04</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.10.10.1">Chameleon <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib41" title="">41</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.2">AR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.10.3">0.39</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10.5">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10.7">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10.8">-</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10.9">-</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.11.11.1">LWM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib27" title="">27</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.2">AR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.11.3">0.47</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11.4">0.93</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11.5">0.41</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11.6">0.46</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11.7">0.79</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11.8">0.09</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11.9">0.15</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.12.12.1">SEED-X <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib15" title="">15</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.12.12.2">AR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.12.12.3">0.49</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.12.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.12.5">0.58</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.12.6">0.26</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.12.7">0.80</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.12.8">0.19</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.12.9">0.14</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.13.13.1">Emu3-Gen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib48" title="">48</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.2">AR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.13.3">0.54</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13.4">0.98</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13.5">0.71</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13.6">0.34</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13.7">0.81</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13.8">0.17</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13.9">0.21</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.14.14.1">Janus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib50" title="">50</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.2">AR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.14.3">0.61</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14.5">0.68</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14.6">0.30</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14.7">0.84</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14.8">0.46</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14.9">0.42</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.15.15.1">JanusFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib29" title="">29</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.2">AR (Diffusion)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15.3">0.63</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.15.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.15.5">0.59</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.15.6">0.45</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.15.7">0.83</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.15.8">0.53</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.15.9">0.42</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S2.T1.1.1.16.16.1">GoT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib13" title="">13</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.16.16.2">AR+Diffusion Head</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.16.16.3">0.64</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.16.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.16.16.4.1">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.16.5">0.69</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.16.6">0.67</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.16.7">0.85</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.16.8">0.34</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.16.9">0.27</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.17.17.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.1.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.17.17.2">Unknown</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.17.17.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.3.1">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.17.17.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.4.1">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.17.17.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.5.1">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.17.17.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.6.1">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.17.17.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.7.1">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.17.17.8"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.8.1">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.17.17.9"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.17.17.9.1">0.61</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive quantitative evaluation of text-to-image generation capabilities using the GenEval benchmark.  It compares various models' performance across six key aspects: overall generation quality, and performance on single object generation, two-object generation, object counting, color recognition, spatial positioning, and attribute binding.  This allows for a detailed comparison of the strengths and weaknesses of different models, revealing their abilities to synthesize complex visual scenes and accurately render specified attributes.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation of text-to-image generation on GenEval [17]. Obj.: Object. Attr.: Attribution.
> </details>





### In-depth insights


#### GPT-4o's Power
Given the paper's focus on evaluating OpenAI's GPT-4o for image generation and editing, we can infer thoughts regarding its 'power'. The paper highlights **GPT-4o's surprisingly good capabilities** in these areas, sparking community excitement. Its 'power' likely stems from a combination of factors: a sophisticated architecture that possibly blends autoregressive and diffusion-based approaches, **exceptional knowledge reasoning** allowing for nuanced semantic synthesis and accurate compositional reasoning, and fine-grained attribute control in image manipulation, evident in benchmark evaluations. Its ability to understand and generate images based on complex instructions and its performance across GenEval, Reason-Edit, and WISE datasets further showcases its 'power'. The paper investigates underlying architectures and the fact that the classifier consistently classifies GPT-4o images as diffusion-based provides evidence that it uses a diffusion head. All these capabilities combined reflect a substantial leap in image generation technology, thereby establishing GPT-4o's power in this domain.

#### Benchmarking T2I
**Benchmarking Text-to-Image (T2I) generation** is crucial for evaluating the progress of generative models. A robust benchmark should assess various aspects like image quality, text-image alignment, compositional understanding, and the ability to handle complex prompts. Current benchmarks often fall short in evaluating fine-grained details and instance-level analysis. A comprehensive benchmark should include diverse datasets covering various scenarios, including object co-occurrence, spatial arrangements, and attribute binding. Moreover, the benchmark should consider world knowledge and common-sense reasoning. It is important to establish clear evaluation metrics that can effectively capture both the quality of the generated images and their semantic alignment with the given text prompts. Such benchmarks facilitate quantitative comparisons between different models, identify their strengths and weaknesses, and guide future research in T2I generation.

#### AR vs Diffusion?
The paper delves into the architectural nuances of GPT-4o, particularly focusing on whether it leans towards an Autoregressive (AR) model, a Diffusion model, or a hybrid approach, given its impressive image generation capabilities. The exploration is significant because it aims to uncover the underlying mechanisms that enable GPT-4o's performance. **AR models** generate images sequentially, building upon previously generated parts, while **Diffusion models** start from noise and iteratively refine it into an image. A hybrid model would combine strengths of both. The paper uses a classification-model-based approach to test this, to determine what GPT-4o images are classified as. This is important to see if it leans one way or another. They found it was diffusion based, but this is just the head, and it might be AR in other ways. This investigation reveals how GPT-40 balances global coherence (often a strength of AR models) with detailed refinement (characteristic of Diffusion models). The analysis here offers valuable insights into the design principles that could inform future generative models.

#### Output Artifacts
While the paper doesn't have a section explicitly titled 'Output Artifacts,' it implicitly addresses this theme by discussing limitations and failure cases of GPT-4o in image generation. The paper highlights inconsistencies in image generation, such as subtle modifications to input images even when 'no changes' are specified, unpredictable aspect ratio changes, and automatic edge cropping. **These inconsistencies can be considered output artifacts** resulting from the model's imperfect replication abilities. It also points out biases toward super-resolution, even when low-resolution outputs are desired. Furthermore, the 'Brush Tool Limitations' section touches upon issues like global property changes during localized edits, indicating the emergence of unintended artifacts. The warm color bias, limitations in generating coherent multi-person scenes (leading to anatomical inaccuracies), and challenges in rendering non-English text (Chinese signage errors) are also discussed as forms of **model-specific output artifacts**. By identifying and categorizing these recurrent issues, the paper sheds light on the areas where GPT-4o falls short of expectations in terms of fidelity, consistency, and fine-grained control. In summary, it details how GPT-4o's particular architecture and training data can lead to unique, recognizable, and potentially undesirable output artifacts that researchers and practitioners should be aware of.

#### Safety Concerns
**A significant safety concern in image generation models lies in their potential for misuse, particularly in generating misleading or harmful content.** GPT-4o, despite its impressive capabilities, is not immune to this risk. The report mentions that GPT-40 implements safeguards to avoid generating content involving children, recognizable faces, or copyrighted material, aligning with OpenAI's safety policies. However, the effectiveness of these safeguards against sophisticated adversarial prompts remains a question. Additionally, the detectability of AI-generated images, while currently high, might decrease as models evolve, making it harder to discern between authentic and synthetic content, raising concerns about misinformation and deepfakes. It is important to ensure safety guidelines in Generative AI, with **emphasis on detecting image tampering**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/pipeline.jpg)

> 🔼 This figure illustrates the end-to-end workflow of the GPT-ImgEval benchmark.  It starts with GPT-40 image generation, using three core datasets: GenEval for image generation, Reason-Edit for image editing, and WISE for world knowledge-informed semantic synthesis. The generated images are then evaluated using these datasets' respective metrics. Finally, the results undergo a comprehensive analysis, including an investigation into GPT-40's architecture, identification of weaknesses, and a comparative analysis against Gemini 2.0 Flash.  The analysis provides insights into GPT-40's strengths, limitations, and potential architectural choices.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall workflow of our GPT-ImgEval, consisting the GPT-4o Image generation, Evaluation, and Analysis.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/GenEval_cases.jpg)

> 🔼 Figure 3 showcases GPT-40's image generation capabilities using the GenEval benchmark.  It presents six categories of example images.  These categories demonstrate GPT-40's ability to generate images with varying levels of complexity, correctly interpreting aspects such as single objects, multiple objects, counting objects, color specification, positional relationships between objects, and attribute binding. For example, the figure displays the model's ability to accurately generate the requested number of objects (e.g., 'three sports balls'), specify object colors (e.g., 'a blue TV'),  and precisely place objects relative to each other (e.g., 'a carrot left of an orange').  This visually demonstrates GPT-40's nuanced understanding of textual prompts and the ability to translate them into complex, visually accurate image outputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Examples of generation results of GPT4o using GenEval [17], covering single object, two objects, counting, colors, position, and attribute binding.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/EvalScore_bar.jpg)

> 🔼 This bar chart displays a quantitative comparison of the performance of eight different image editing models on the Reason-Edit benchmark.  The models are evaluated based on a metric that considers both the accuracy of edits requested and the consistency of the unchanged regions in the edited image. GPT-40 shows significantly better performance compared to the other seven state-of-the-art (SOTA) models.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Quantitative results of model editing under the Reason-Edit benchmark [21]. We compare the performance of GPT4o with seven other SOTA image editing models. We see that GPT4o significantly outperforms other models.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/SmartEdit_case.jpg)

> 🔼 This figure displays a qualitative comparison of GPT-40's image editing capabilities against four other state-of-the-art (SOTA) models using the Reason-Edit benchmark.  Each row shows the results for a different editing task, presenting the original image, the results from each model (including GPT-40), and highlighting the successful and unsuccessful edits. The figure demonstrates GPT-40's superior performance in generating semantically accurate, visually coherent, and contextually aware edits compared to the other models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of model editing results. We visualize the qualitative results of GPT4o with the other four SOTA editing generation methods. We use the Reason-Edit [21] benchmark for evaluation.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/WISE.jpg)

> 🔼 Figure 6 showcases example outputs from GPT-4o on the WISE benchmark [31], which tests the model's ability to generate images grounded in world knowledge.  The figure visually demonstrates GPT-4o's performance across various subdomains of the WISE benchmark.  Each section shows the prompt given to the model and the resulting image generation, highlighting the model's ability to understand and incorporate factual information and nuanced contextual details when creating images.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visual examples of generation results on the WISE benchmark [31]. We visualize the qualitative results of GPT4o under different evaluation scenarios, following the WISE benchmark.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/complete_archi.png)

> 🔼 Figure 7 explores potential architectural designs for GPT-40's image generation capabilities.  It proposes four variations, each differing in the type of visual encoder used (semantic-only, pixel-only, pixel and segmentation, or a combination of pixel and segmentation encoders).  However, all four proposed architectures share a common feature: a diffusion-based decoder for generating the final image. This highlights the researchers' focus on the decoder component and its potential reliance on diffusion models while acknowledging the uncertainty surrounding the visual encoder.
> <details>
> <summary>read the caption</summary>
> Figure 7: We present a complete architectural speculation, proposing four possible candidates that differ in their choice of visual encoder while all share a diffusion-based head for image decoding.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/oai_cd.png)

> 🔼 Figure 8 shows an image from OpenAI's official documentation that illustrates their GPT-40 model's image generation pipeline.  It visually depicts the process as a sequence: tokens are converted to an intermediate representation by a transformer, then fed into a diffusion model, which produces the final pixel output (image). This directly supports Hypothesis 2 in the paper, which proposes that GPT-40 utilizes a hybrid architecture combining a transformer with a diffusion-based head for image generation.
> <details>
> <summary>read the caption</summary>
> Figure 8: An 'easter-egg' example officially provided by the OpenAI, which aligns the potential architecture-(a) in Figure 1.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/GPT_Structure_Detection.jpg)

> 🔼 This figure illustrates the process of using a model-based approach to differentiate between autoregressive (AR) and diffusion-based image generation models.  It starts with prompts from the GenEval benchmark that are used to generate images using both an AR model and a diffusion model. These generated images are then used to train a binary classifier to distinguish between the two types of generation methods. Finally, the trained classifier is applied to images generated by GPT-40 to determine whether its internal image generation mechanism is based on an AR or diffusion approach.  This helps in understanding GPT-40's underlying architecture.
> <details>
> <summary>read the caption</summary>
> Figure 9: The overall workflow of the proposed model-based discrimination method.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/bad-cases.jpg)

> 🔼 Figure 10 showcases instances where GPT-40's image generation capabilities fall short.  It highlights several key limitations and common artifacts observed in the generated outputs.  These include inconsistencies in image generation where minor unintended changes appear even when no edits are requested; issues with high-resolution and over-refinement, showing the model's tendency to enhance detail even when a less detailed image is requested; limitations of the brush tool, where edits don't remain localized and affect the entire image; difficulties generating complex scenes with multiple people or objects interacting naturally; and finally, limitations in generating text in non-English languages, specifically Chinese characters which are often incorrectly rendered.
> <details>
> <summary>read the caption</summary>
> Figure 10: Failure Cases and Limitations of GPT-4o. We identify several scenarios in which GPT-4o may fail, along with common artifacts present in its generated images.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/multi-turn2.jpg)

> 🔼 This figure displays a comparison of multi-round image generation between GPT-40 and Gemini 2.0 Flash.  It shows an input image and then the results of three consecutive editing rounds using prompts given to each model. The prompts aim to alter different aspects of the image (changing object color and presence).  The figure highlights the differences in the models' abilities to consistently apply edits and correctly understand instructions across multiple rounds.  The color-coded boxes indicate correctly and incorrectly edited images.
> <details>
> <summary>read the caption</summary>
> Figure 11: Multi-round generation comparison between GPT-4o and Gemini-2.0 Flash.
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/SmartEdit_Fig1.jpg)

> 🔼 This figure showcases qualitative examples of GPT-40's image editing capabilities using the Reason-Edit benchmark.  It demonstrates the model's ability to perform various editing operations such as replacing objects, removing objects, and changing object attributes. Each row presents a different editing task, showing the input image and the results generated by GPT-40. This provides a visual demonstration of the model's performance on complex image editing instructions.
> <details>
> <summary>read the caption</summary>
> Figure 12: Examples of generation results of GPT4o using Reason-Edit [21].
> </details>



![](https://arxiv.org/html/2504.02782/extracted/6334205/figures/multi-turn.jpg)

> 🔼 This figure displays a comparison of multi-round image generation between GPT-40 and Gemini 2.0 Flash.  It shows an initial image and then three rounds of edits applied to that image by both models.  Each round presents a new instruction, and the resulting images from both models are shown side-by-side, allowing for a visual comparison of their ability to maintain consistency across multiple editing rounds and their understanding and execution of the provided instructions. The edits are varied, showing examples of adding elements, removing elements, and modifying existing elements.
> <details>
> <summary>read the caption</summary>
> Figure 13: Multi-round generation comparison between GPT-4o and Gemini-2.0 Flash.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T2.1.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T2.1.1.1.1.2">Architecture</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.3">Cultural</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.4">Time</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.5">Space</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.6">Biology</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.7">Physics</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S2.T2.1.1.1.1.8">Chemistry</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.9.1">Overall</span></th>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="8" id="S2.T2.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.2.1.1">Dedicated T2I</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.1.2.2.2"></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.1.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T2.1.1.3.1.1">FLUX.1-dev <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib23" title="">23</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T2.1.1.3.1.2">Diffusion</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.3.1.3">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.3.1.4"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.3.1.4.1">0.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.3.1.5"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.3.1.5.1">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.3.1.6">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.3.1.7">0.51</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.1.1.3.1.8"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.3.1.8.1">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.3.1.9"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.3.1.9.1">0.50</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.4.2.1">FLUX.1-schnell <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib23" title="">23</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.4.2.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.4.2.3">0.39</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.4.2.4">0.44</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.4.2.5">0.50</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.4.2.6">0.31</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.4.2.7">0.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.4.2.8">0.26</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.4.2.9">0.40</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.5.3.1">PixArt-Alpha <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib3" title="">3</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.5.3.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.3.3">0.45</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.3.4">0.50</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.3.5">0.48</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.3.6"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.5.3.6.1">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.3.7"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.5.3.7.1">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.5.3.8">0.34</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.3.9">0.47</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.6.4.1">playground-v2.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib24" title="">24</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.6.4.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.6.4.3.1">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.6.4.4">0.58</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.6.4.5">0.55</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.6.4.6">0.43</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.6.4.7">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.6.4.8">0.33</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.6.4.9">0.49</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.7.5.1">SD-v1-5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib36" title="">36</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.7.5.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.7.5.3">0.34</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.7.5.4">0.35</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.7.5.5">0.32</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.7.5.6">0.28</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.7.5.7">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.7.5.8">0.21</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.7.5.9">0.32</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.8.6.1">SD-2-1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib36" title="">36</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.8.6.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.8.6.3">0.30</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.8.6.4">0.38</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.8.6.5">0.35</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.8.6.6">0.33</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.8.6.7">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.8.6.8">0.21</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.8.6.9">0.32</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.9.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.9.7.1">SD-XL-base-0.9 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib34" title="">34</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.9.7.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.9.7.3">0.43</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.9.7.4">0.48</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.9.7.5">0.47</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.9.7.6">0.44</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.9.7.7">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.9.7.8">0.27</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.9.7.9">0.43</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.10.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.10.8.1">SD-3-medium <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib10" title="">10</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.10.8.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.10.8.3">0.42</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.10.8.4">0.44</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.10.8.5">0.48</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.10.8.6">0.39</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.10.8.7">0.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.10.8.8">0.29</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.10.8.9">0.42</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.11.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.11.9.1">SD-3.5-medium <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib10" title="">10</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.11.9.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.11.9.3">0.43</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.11.9.4">0.50</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.11.9.5">0.52</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.11.9.6">0.41</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.11.9.7">0.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.11.9.8">0.33</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.11.9.9">0.45</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.12.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.12.10.1">SD-3.5-large <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib10" title="">10</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.12.10.2">Diffusion</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.12.10.3">0.44</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.12.10.4">0.50</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.12.10.5">0.58</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.12.10.6">0.44</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.12.10.7">0.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.12.10.8">0.31</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.12.10.9">0.46</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.13.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S2.T2.1.1.13.11.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.13.11.1.1">Unify MLLM</span></th>
<td class="ltx_td ltx_border_t" id="S2.T2.1.1.13.11.2"></td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.14.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T2.1.1.14.12.1">Emu3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib48" title="">48</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T2.1.1.14.12.2">AR</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.14.12.3">0.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.14.12.4">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.14.12.5">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.14.12.6">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.14.12.7">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T2.1.1.14.12.8">0.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.14.12.9">0.39</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.15.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.15.13.1">Janus-1.3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib50" title="">50</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.15.13.2">AR</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.15.13.3">0.16</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.15.13.4">0.26</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.15.13.5">0.35</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.15.13.6">0.28</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.15.13.7">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.15.13.8">0.14</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.15.13.9">0.23</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.16.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.16.14.1">JanusFlow-1.3B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib29" title="">29</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.16.14.2">AR (Diffusion)</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.16.14.3">0.13</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.16.14.4">0.26</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.16.14.5">0.28</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.16.14.6">0.20</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.16.14.7">0.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.16.14.8">0.11</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.16.14.9">0.18</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.17.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.17.15.1">Janus-Pro-1B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib6" title="">6</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.17.15.2">AR</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.17.15.3">0.20</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.17.15.4">0.28</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.17.15.5">0.45</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.17.15.6">0.24</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.17.15.7">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.17.15.8">0.16</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.17.15.9">0.26</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.18.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.18.16.1">Janus-Pro-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib6" title="">6</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.18.16.2">AR</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.18.16.3">0.30</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.18.16.4">0.37</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.18.16.5">0.49</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.18.16.6">0.36</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.18.16.7">0.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.18.16.8">0.26</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.18.16.9">0.35</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.19.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.19.17.1">Orthus-7B-base <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib22" title="">22</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.19.17.2">AR+Diffusion Head</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.19.17.3">0.07</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.19.17.4">0.10</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.19.17.5">0.12</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.19.17.6">0.15</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.19.17.7">0.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.19.17.8">0.10</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.19.17.9">0.10</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.20.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.20.18.1">Orthus-7B-instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib22" title="">22</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.20.18.2">AR+Diffusion Head</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.20.18.3">0.23</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.20.18.4">0.31</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.20.18.5">0.38</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.20.18.6">0.28</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.20.18.7">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.20.18.8">0.20</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.20.18.9">0.27</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.21.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.21.19.1">show-o-demo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib52" title="">52</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.21.19.2">AR (Diffusion)</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.21.19.3">0.28</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.21.19.4">0.36</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.21.19.5">0.40</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.21.19.6">0.23</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.21.19.7">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.21.19.8">0.22</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.21.19.9">0.30</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.22.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.22.20.1">show-o-demo-512 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib52" title="">52</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.22.20.2">AR (Diffusion)</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.22.20.3">0.28</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.22.20.4">0.40</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.22.20.5">0.48</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.22.20.6">0.30</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.22.20.7">0.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.22.20.8">0.30</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.22.20.9">0.35</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.23.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.23.21.1">vila-u-7b-256 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib51" title="">51</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S2.T2.1.1.23.21.2">AR</th>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.23.21.3">0.26</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.23.21.4">0.33</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.23.21.5">0.37</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.23.21.6">0.35</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.23.21.7">0.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T2.1.1.23.21.8">0.23</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.23.21.9">0.31</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.24.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.1.1.24.22.1">GPT4o*</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.1.1.24.22.2">Unknown</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.24.22.3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.24.22.3.1">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.24.22.4"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.24.22.4.1">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.24.22.5"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.24.22.5.1">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.24.22.6"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.24.22.6.1">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.24.22.7"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.24.22.7.1">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.1.1.24.22.8"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.24.22.8.1">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.24.22.9"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.24.22.9.1">0.89</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different models' performance on the WISE benchmark, which evaluates world knowledge-informed semantic synthesis in image generation.  The WiScore is a normalized metric reflecting the overall quality of image generation considering various aspects of world knowledge understanding.  Because of constraints, results are shown for only 200 out of the total prompts in the WISE benchmark for GPT-40. The authors plan to update the table with complete results in a future version.
> <details>
> <summary>read the caption</summary>
> Table 2: Normalized WiScore of different models. Due to limited resources, we only select 200 prompts from WISE [31] for GPT4o* evaluation. We will update the full results later.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.3.1.1.2">Detection Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.3">CNN-spot <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib47" title="">47</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.4">UnivFD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib32" title="">32</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.5">CLIP (LoRA)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.6">DRCT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib2" title="">2</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.7">NPR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib40" title="">40</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.1">FakeVLM<math alttext="*" class="ltx_Math" display="inline" id="S5.T3.3.1.1.1.m1.1"><semantics id="S5.T3.3.1.1.1.m1.1a"><mo id="S5.T3.3.1.1.1.m1.1.1" xref="S5.T3.3.1.1.1.m1.1.1.cmml">∗</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.1.1.1.m1.1b"><times id="S5.T3.3.1.1.1.m1.1.1.cmml" xref="S5.T3.3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.1.1.1.m1.1c">*</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.1.1.1.m1.1d">∗</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib49" title="">49</a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.3.1.1.8">Effort <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.02782v1#bib.bib53" title="">53</a>]</cite>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.4.2.2.1">Accuracy (<math alttext="\%" class="ltx_Math" display="inline" id="S5.T3.4.2.2.1.m1.1"><semantics id="S5.T3.4.2.2.1.m1.1a"><mo id="S5.T3.4.2.2.1.m1.1.1" xref="S5.T3.4.2.2.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.2.2.1.m1.1b"><csymbol cd="latexml" id="S5.T3.4.2.2.1.m1.1.1.cmml" xref="S5.T3.4.2.2.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.2.2.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.2.2.1.m1.1d">%</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.2.2">73.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.2.3">75.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.2.4">77.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.2.5">88.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.2.6">78.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.2.7">99.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.2.2.8">94.75</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the performance of various AI-generated image detection models on identifying images created by GPT-40.  The test set includes GPT-40 generated images created using prompts from the GenEval dataset [17] and authentic images from source [54].  Most of the detection models were trained using the GenImage dataset [59], with one exception (*), which used a training set from source [49]. The table shows the accuracy of each model in distinguishing between real and fake images.
> <details>
> <summary>read the caption</summary>
> Table 3: Detection results on GPT4o-generated images. The tested fake images are generated using the prompts in GenEval [17], and the real ones are from [54]. Most detection models are trained on the GenImage dataset [59]. ∗*∗ that the training set is from [49].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02782/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02782/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}