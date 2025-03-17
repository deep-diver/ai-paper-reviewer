---
title: "LightGen: Efficient Image Generation through Knowledge Distillation and Direct Preference Optimization"
summary: "LightGen: Efficient image generation via knowledge distillation and direct preference optimization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08619 {{< /keyword >}}
{{< keyword icon="writer" >}} Xianfeng Wu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08619" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08619" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08619/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent text-to-image models rely on massive datasets and huge architectures, limiting accessibility. To tackle this issue, the paper introduces LightGen, a new training paradigm. It draws from data knowledge distillation to transfer capabilities into a compact architecture.



LightGen uses knowledge distillation and direct preference optimization to achieve comparable quality with significantly reduced resources. The method uses a compact synthetic dataset of 2M images and a 0.7B parameter model. Experiments confirm LightGen's efficiency and quality.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Data diversity is more critical than data volume for text-to-image model performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Knowledge distillation and direct preference optimization enable efficient image generation with smaller models and datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The LightGen paradigm significantly reduces the computational resources needed for training high-quality image generation models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an efficient training method that reduces reliance on extensive datasets and computational resources, broadening access for researchers. It also shows the diversity of data outweighs data volume. The method's effectiveness opens new avenues for generative model development, especially in resource-constrained settings.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08619/x2.png)

> 🔼 Figure 1 demonstrates LightGen's capabilities in image generation, zero-shot inpainting, and efficient resource utilization. The first row showcases images generated at 512x512 and 1024x1024 resolutions, highlighting LightGen's scalability. The second row presents zero-shot inpainting results, demonstrating its ability to seamlessly edit images. The third row compares LightGen's resource consumption (dataset size, model parameters, and GPU hours) against state-of-the-art models.  LightGen achieves comparable performance with significantly reduced resource requirements, showcasing its efficiency and cost-effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of LightGen’s capabilities in image generation, zero-shot inpainting, and resource usage. (First Row) Images generated at multiple resolutions (512×512512512512\times 512512 × 512 and 1024×1024102410241024\times 10241024 × 1024) illustrate the scalability of LightGen. (Second Row) Zero-shot inpainting results showcasing LightGen’s inherent editing ability. (Third Row) LightGen’s resource consumption with drastically reduced dataset size, model parameters, and GPU hours compared to state-of-the-art models, demonstrates significant cost reductions without sacrificing performance.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.1.1.1" rowspan="2">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.1.1">Model</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.2.1">#Params</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.3.1">Pre-train Data</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="7" id="S4.T1.6.1.1.1.4">
<span class="ltx_ERROR undefined" id="S4.T1.6.1.1.1.4.1">\adl@mkpream</span>c<span class="ltx_ERROR undefined" id="S4.T1.6.1.1.1.4.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="S4.T1.6.1.1.1.4.3">\@arstrut</span><span class="ltx_ERROR undefined" id="S4.T1.6.1.1.1.4.4">\@preamble</span><span class="ltx_text" id="S4.T1.6.1.1.1.4.5"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.1">Single Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.2">Two Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.3">Colors</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.4">Counting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.5">Position</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.6">Color Attri.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.2.2.7.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.3.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" colspan="10" id="S4.T1.6.1.3.3.1">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T1.6.1.3.3.1.1" style="background-color:#F2F2F2;">   <span class="ltx_ERROR undefined" id="S4.T1.6.1.3.3.1.1.1">\adl@mkpream</span>l<span class="ltx_ERROR undefined" id="S4.T1.6.1.3.3.1.1.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="S4.T1.6.1.3.3.1.1.3">\@arstrut</span><span class="ltx_ERROR undefined" id="S4.T1.6.1.3.3.1.1.4">\@preamble</span><span class="ltx_text" id="S4.T1.6.1.3.3.1.1.5"></span></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.4.4.1"><span class="ltx_text" id="S4.T1.6.1.4.4.1.1" style="background-color:#F2F2F2;">Stable Diffusion v1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.2"><span class="ltx_text" id="S4.T1.6.1.4.4.2.1" style="background-color:#F2F2F2;">0.9B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.3"><span class="ltx_text" id="S4.T1.6.1.4.4.3.1" style="background-color:#F2F2F2;">2B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.4"><span class="ltx_text" id="S4.T1.6.1.4.4.4.1" style="background-color:#F2F2F2;">0.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.5"><span class="ltx_text" id="S4.T1.6.1.4.4.5.1" style="background-color:#F2F2F2;">0.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.6"><span class="ltx_text" id="S4.T1.6.1.4.4.6.1" style="background-color:#F2F2F2;">0.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.7"><span class="ltx_text" id="S4.T1.6.1.4.4.7.1" style="background-color:#F2F2F2;">0.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.8"><span class="ltx_text" id="S4.T1.6.1.4.4.8.1" style="background-color:#F2F2F2;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.9"><span class="ltx_text" id="S4.T1.6.1.4.4.9.1" style="background-color:#F2F2F2;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4.10"><span class="ltx_text" id="S4.T1.6.1.4.4.10.1" style="background-color:#F2F2F2;">0.13</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.5.5.1">Stable Diffusion v2.1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.2">0.9B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.3">5B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.4">0.11</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.5">0.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.6">0.04</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.7">0.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.8">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.9">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5.10">0.02</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.6.6.1">Stable Diffusion XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.2">2.6B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.4">0.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.5">0.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.6">0.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.7">0.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.8">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.9">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6.10">0.01</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.7.7.1">Stable Diffusion 3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.4">0.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.7.7.5.1">0.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.6">0.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.7">0.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.8"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.7.7.8.1">0.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.9">0.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7.10">0.50</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.8.8.1">Flux <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.3">12B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.4">0.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.5">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.6">0.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.8.8.7.1">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.8">0.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.9"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.8.8.9.1">0.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8.10"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.8.8.10.1">0.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.9.9" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" colspan="10" id="S4.T1.6.1.9.9.1">
<span class="ltx_rule" style="width:100%;height:0.4pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T1.6.1.9.9.1.1" style="background-color:#F2F2F2;">   <span class="ltx_ERROR undefined" id="S4.T1.6.1.9.9.1.1.1">\adl@mkpream</span>l<span class="ltx_ERROR undefined" id="S4.T1.6.1.9.9.1.1.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="S4.T1.6.1.9.9.1.1.3">\@arstrut</span><span class="ltx_ERROR undefined" id="S4.T1.6.1.9.9.1.1.4">\@preamble</span><span class="ltx_text" id="S4.T1.6.1.9.9.1.1.5"></span></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.10.10.1"><span class="ltx_text" id="S4.T1.6.1.10.10.1.1" style="background-color:#F2F2F2;">Llamagen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.2"><span class="ltx_text" id="S4.T1.6.1.10.10.2.1" style="background-color:#F2F2F2;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.3"><span class="ltx_text" id="S4.T1.6.1.10.10.3.1" style="background-color:#F2F2F2;">50M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.4"><span class="ltx_text" id="S4.T1.6.1.10.10.4.1" style="background-color:#F2F2F2;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.5"><span class="ltx_text" id="S4.T1.6.1.10.10.5.1" style="background-color:#F2F2F2;">0.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.6"><span class="ltx_text" id="S4.T1.6.1.10.10.6.1" style="background-color:#F2F2F2;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.7"><span class="ltx_text" id="S4.T1.6.1.10.10.7.1" style="background-color:#F2F2F2;">0.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.8"><span class="ltx_text" id="S4.T1.6.1.10.10.8.1" style="background-color:#F2F2F2;">0.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.9"><span class="ltx_text" id="S4.T1.6.1.10.10.9.1" style="background-color:#F2F2F2;">0.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.10.10"><span class="ltx_text" id="S4.T1.6.1.10.10.10.1" style="background-color:#F2F2F2;">0.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.11.11.1">
<span class="ltx_rule" style="width:2.0pt;height:0.4pt;background:black;display:inline-block;"> </span> <span class="ltx_text" id="S4.T1.6.1.11.11.1.1"> <span class="ltx_rule" style="width:4.0pt;height:0.4pt;background:black;display:inline-block;"> </span> </span> <span class="ltx_rule" style="width:2.0pt;height:0.4pt;background:black;display:inline-block;"> </span>
</th>
<td class="ltx_td" id="S4.T1.6.1.11.11.2"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.3"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.4"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.5"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.6"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.7"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.8"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.9"></td>
<td class="ltx_td" id="S4.T1.6.1.11.11.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.12.12" style="background-color:#FFFFCC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.12.12.1.1" style="background-color:#FFFFCC;">LightGen w/o DPO (80k steps)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.2"><span class="ltx_text" id="S4.T1.6.1.12.12.2.1" style="background-color:#FFFFCC;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.3"><span class="ltx_text" id="S4.T1.6.1.12.12.3.1" style="background-color:#FFFFCC;">2M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.4"><span class="ltx_text" id="S4.T1.6.1.12.12.4.1" style="background-color:#FFFFCC;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.5"><span class="ltx_text" id="S4.T1.6.1.12.12.5.1" style="background-color:#FFFFCC;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.12.12.6.1" style="background-color:#FFFFCC;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.7"><span class="ltx_text" id="S4.T1.6.1.12.12.7.1" style="background-color:#FFFFCC;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.8"><span class="ltx_text" id="S4.T1.6.1.12.12.8.1" style="background-color:#FFFFCC;">0.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.9"><span class="ltx_text" id="S4.T1.6.1.12.12.9.1" style="background-color:#FFFFCC;">0.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.12.10"><span class="ltx_text" id="S4.T1.6.1.12.12.10.1" style="background-color:#FFFFCC;">0.49</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.13.13" style="background-color:#FFFFCC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.13.13.1.1" style="background-color:#FFFFCC;">LightGen w/o DPO</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.2"><span class="ltx_text" id="S4.T1.6.1.13.13.2.1" style="background-color:#FFFFCC;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.3"><span class="ltx_text" id="S4.T1.6.1.13.13.3.1" style="background-color:#FFFFCC;">2M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.13.13.4.1" style="background-color:#FFFFCC;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.5"><span class="ltx_text" id="S4.T1.6.1.13.13.5.1" style="background-color:#FFFFCC;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.6"><span class="ltx_text" id="S4.T1.6.1.13.13.6.1" style="background-color:#FFFFCC;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.7"><span class="ltx_text" id="S4.T1.6.1.13.13.7.1" style="background-color:#FFFFCC;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.8"><span class="ltx_text" id="S4.T1.6.1.13.13.8.1" style="background-color:#FFFFCC;">0.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.9"><span class="ltx_text" id="S4.T1.6.1.13.13.9.1" style="background-color:#FFFFCC;">0.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.13.10"><span class="ltx_text" id="S4.T1.6.1.13.13.10.1" style="background-color:#FFFFCC;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.1.14.14.1"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></th>
<td class="ltx_td" id="S4.T1.6.1.14.14.2"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.3"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.4"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.5"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.6"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.7"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.8"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.9"></td>
<td class="ltx_td" id="S4.T1.6.1.14.14.10"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of LightGen's performance against several state-of-the-art text-to-image generation models on the GenEval benchmark at a resolution of 256 x 256 pixels.  The models are evaluated across multiple aspects of image generation quality, including single object generation, two object generation, color accuracy, counting accuracy, positional accuracy, and color attribute accuracy.  LightGen's performance is compared to both diffusion-based and autoregressive models, highlighting its efficiency and competitive performance despite using significantly fewer parameters and a smaller training dataset.  The best performance in each category is shown in bold.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison in 256×256256256256\times 256256 × 256 on GenEval [15]. Best results are shown in bold.
> </details>





### In-depth insights


#### KD & DPO:Gen
**Knowledge Distillation (KD)** and **Direct Preference Optimization (DPO)** are powerful techniques. **KD** transfers knowledge from a large, complex model (teacher) to a smaller one (student). This can lead to efficient models. **DPO**, on the other hand, refines a model's behavior by directly optimizing it against a defined preference. In image generation, this could mean training the model to produce images that are visually appealing. Combining **KD** and **DPO** could create a workflow. First, **KD** is used to distill the knowledge of a complex image generator into a smaller generator. Second, **DPO** could fine-tune the distilled model's output to enhance visual quality.

#### MAR efficient
While the exact phrase "MAR efficient" doesn't appear in the provided text, it can be inferred that the paper discusses techniques for making Masked Autoregressive (MAR) models more efficient for image generation. The paper mentions using knowledge distillation (KD) and Direct Preference Optimization (DPO) to improve LightGen's performance, suggesting a focus on efficient training paradigms. MAR models often require significant computational resources, so improving their efficiency is crucial. **LightGen aims to reduce the dataset size, model parameters, and GPU hours needed for training, demonstrating its efficiency.** By leveraging synthetic datasets and DPO, LightGen addresses the limitations of MAR models, such as poor high-frequency details and spatial inaccuracies. **The post-processing with DPO enhances image quality and robustness, making LightGen a viable option for resource-constrained environments.** The efficiency gains achieved by LightGen stem from data distillation, synthetic data utilization, lightweight architecture design, and post-processing with DPO. **This enables comparable performance to SOTA image generation models with significantly reduced resource demands.

#### Data Diversity+
The concept of 'Data Diversity+' suggests a strategic emphasis beyond mere data volume in machine learning. It highlights the **importance of variety in training data**, encompassing a wide range of scenarios, styles, and contexts. This approach seeks to improve model generalization, enabling it to perform robustly across diverse real-world situations. By intentionally curating a dataset with **diverse examples**, the model is exposed to a broader spectrum of patterns and relationships, **reducing the risk of overfitting** to a narrow subset of the training data. This contrasts with simply increasing the amount of data, which may only reinforce existing biases. The '+' implies proactive augmentation and **thoughtful selection of data points** to maximize informational content and **representativeness**.

#### Synthetic Data+
Synthetic data generation is revolutionizing AI, particularly where real-world data is scarce or sensitive. It offers a pathway to create datasets that mirror the statistical properties of actual data, which is vital for training robust and generalizable models. Crucially, it addresses privacy concerns by sidestepping the use of personally identifiable information. **The quality and diversity of synthetic data are key determinants of its effectiveness; models trained on it should perform comparably to those trained on real data.** Techniques like generative adversarial networks (GANs) and variational autoencoders (VAEs) are pivotal in creating realistic synthetic instances. However, challenges remain in ensuring the data's fidelity and mitigating potential biases. **Further research is needed to refine synthetic data generation methodologies and establish robust evaluation metrics.**

#### LightGen+DPO
**LightGen+DPO** likely refers to a system combining a **LightGen** model with **Direct Preference Optimization (DPO)**. LightGen, presumably, is a more efficient or lightweight image generation model. DPO is then employed as a post-processing or fine-tuning step to refine LightGen's output. This combination likely aims to leverage the efficiency of LightGen while mitigating potential drawbacks through DPO, enhancing image fidelity, and spatial accuracy. This is an effective strategy to balance computational cost with high-quality output by focusing on **data diversity** and **positional accuracy**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08619/extracted/6271669/fig/figure3.png)

> 🔼 This figure illustrates the LightGen model's training and inference pipelines.  (a) Training:  The process begins by encoding images into tokens using a pre-trained tokenizer. Simultaneously, text embeddings are generated from a T5 encoder and refined using a trainable aligner to ensure alignment with the image content. A masked autoencoder then processes these text and image tokens, utilizing a cross-attention mechanism where text tokens serve as queries and values, and image tokens as keys. This cross-attention step helps to integrate textual context into the image generation process. Finally, a Diffusion Multi-Layer Perceptron (D-MLP) refines the generated tokens further. (b) Inference:  The inference pipeline takes as input a text prompt, which is processed as in the training stage. The model then iteratively predicts and refines tokens over N steps, with each step leveraging the previously generated tokens to progressively improve the image's quality. After the refinement stage, the tokens are decoded using the image tokenizer to produce the final generated image.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of LightGen efficient pretraining. (a) Training: Images are encoded into tokens via a pre-trained tokenizer, while text embeddings from a T5 encoder are refined by a trainable aligner. A masked autoencoder uses text tokens as queries/values and image tokens as keys for cross-attention, followed by refinement with a Diffusion MLP (D-MLP). (b) Inference: Tokens are predicted and iteratively refined over N𝑁Nitalic_N steps, then decoded by the image tokenizer to generate final images.
> </details>



![](https://arxiv.org/html/2503.08619/x3.png)

> 🔼 This figure illustrates the Direct Preference Optimization (DPO) post-processing stage in LightGen.  DPO aims to refine the quality of images generated by LightGen by minimizing the difference between the generated image and a high-quality reference image. The process involves adding noise to both the generated and reference images, then using a learned preference model to guide the refinement of the generated image towards the reference image.  The steps show the iterative process of adding noise, applying the MAR model, and then calculating the DPO loss to guide the optimization.  This process enhances image fidelity and positional accuracy, particularly addressing limitations inherent in synthetic data.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustrate of DPO Post-processing of LightGen.
> </details>



![](https://arxiv.org/html/2503.08619/extracted/6271669/fig/figure5.png)

> 🔼 Figure 4 presents sample images generated by the LightGen model, demonstrating its ability to produce high-quality outputs across various resolutions (256x256, 512x512, and 1024x1024 pixels) and artistic styles (realistic, animated, and virtual).  The diverse examples showcase the model's versatility and scalability in handling different image generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization Results. Sample outputs generated using LightGen, showcasing high-quality images at multiple resolutions (256×256256256256\times 256256 × 256, 512×512512512512\times 512512 × 512, 1024×1024102410241024\times 10241024 × 1024) and across diverse styles (realistic, animated, virtual, etc.), which demonstrate the versatility and scalability of our approach.
> </details>



![](https://arxiv.org/html/2503.08619/x4.png)

> 🔼 This figure showcases the inpainting capabilities of the LightGen model.  It demonstrates the model's ability to seamlessly fill in missing or damaged regions of an image while maintaining the overall context and style.  Multiple examples are shown to illustrate the versatility of the model in handling various types of images and levels of damage.
> <details>
> <summary>read the caption</summary>
> Figure 5: Image inpainting demonstrations.
> </details>



![](https://arxiv.org/html/2503.08619/x5.png)

> 🔼 Figure 6 presents the results of ablation studies conducted to analyze the impact of dataset size and training iterations on LightGen's performance.  Panel (a) shows the effect of varying the size of the pre-training dataset.  It demonstrates that model performance plateaus when the pre-training dataset reaches approximately 1 million images, suggesting that increasing data size beyond this point yields diminishing returns.  Panel (b) illustrates how different numbers of training iterations affect the model's performance. The results indicate the training efficiency of the model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation studies. (a) Pre-train in different data scales, we find it achieves the limitation when pre-train in 𝒪⁢(1⁢M)𝒪1𝑀\mathcal{O}(1M)caligraphic_O ( 1 italic_M ) data scale. (b) demonstrate different iteration results.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.1.1.1" rowspan="2">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.1.1">Model</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.2.1">#Params</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.3.1">Pre-train Data</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="7" id="S4.T2.5.1.1.1.4">
<span class="ltx_ERROR undefined" id="S4.T2.5.1.1.1.4.1">\adl@mkpream</span>c<span class="ltx_ERROR undefined" id="S4.T2.5.1.1.1.4.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="S4.T2.5.1.1.1.4.3">\@arstrut</span><span class="ltx_ERROR undefined" id="S4.T2.5.1.1.1.4.4">\@preamble</span><span class="ltx_text" id="S4.T2.5.1.1.1.4.5"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2.1">Single Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2.2">Two Obj.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2.3">Colors</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2.4">Counting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2.5">Position</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2.6">Color Attri.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.2.7.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.3.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" colspan="10" id="S4.T2.5.1.3.3.1">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T2.5.1.3.3.1.1" style="background-color:#F2F2F2;">   <span class="ltx_ERROR undefined" id="S4.T2.5.1.3.3.1.1.1">\adl@mkpream</span>l<span class="ltx_ERROR undefined" id="S4.T2.5.1.3.3.1.1.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="S4.T2.5.1.3.3.1.1.3">\@arstrut</span><span class="ltx_ERROR undefined" id="S4.T2.5.1.3.3.1.1.4">\@preamble</span><span class="ltx_text" id="S4.T2.5.1.3.3.1.1.5"></span></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.4.4.1"><span class="ltx_text" id="S4.T2.5.1.4.4.1.1" style="background-color:#F2F2F2;">Stable Diffusion v1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.2"><span class="ltx_text" id="S4.T2.5.1.4.4.2.1" style="background-color:#F2F2F2;">0.9B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.3"><span class="ltx_text" id="S4.T2.5.1.4.4.3.1" style="background-color:#F2F2F2;">2B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.4"><span class="ltx_text" id="S4.T2.5.1.4.4.4.1" style="background-color:#F2F2F2;">0.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.5"><span class="ltx_text" id="S4.T2.5.1.4.4.5.1" style="background-color:#F2F2F2;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.6"><span class="ltx_text" id="S4.T2.5.1.4.4.6.1" style="background-color:#F2F2F2;">0.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.7"><span class="ltx_text" id="S4.T2.5.1.4.4.7.1" style="background-color:#F2F2F2;">0.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.8"><span class="ltx_text" id="S4.T2.5.1.4.4.8.1" style="background-color:#F2F2F2;">0.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.9"><span class="ltx_text" id="S4.T2.5.1.4.4.9.1" style="background-color:#F2F2F2;">0.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.4.10"><span class="ltx_text" id="S4.T2.5.1.4.4.10.1" style="background-color:#F2F2F2;">0.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.5.5.1">Stable Diffusion v2.1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.2">0.9B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.3">2B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.4">0.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.5">0.24</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.6">0.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.7">0.14</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.8">0.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.9">0.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5.10">0.34</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.6.6.1">Stable Diffusion XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.2">2.6B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.3">5B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.4">0.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.5">0.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.6">0.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.7">0.12</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.8">0.04</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.9">0.05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.6.6.10">0.26</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.7.7.1">Stable Diffusion 3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.4">0.99</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.7.7.5.1">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.6">0.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.7">0.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.8"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.7.7.8.1">0.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.7.7.9.1">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.7.7.10"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.7.7.10.1">0.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.8.8.1">Flux <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.2">12B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.4">0.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.5">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.8.8.6.1">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.7">0.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.8">0.15</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.9">0.43</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8.10">0.61</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.9.9" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" colspan="10" id="S4.T2.5.1.9.9.1">
<span class="ltx_rule" style="width:100%;height:0.4pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T2.5.1.9.9.1.1" style="background-color:#F2F2F2;">   <span class="ltx_ERROR undefined" id="S4.T2.5.1.9.9.1.1.1">\adl@mkpream</span>l<span class="ltx_ERROR undefined" id="S4.T2.5.1.9.9.1.1.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="S4.T2.5.1.9.9.1.1.3">\@arstrut</span><span class="ltx_ERROR undefined" id="S4.T2.5.1.9.9.1.1.4">\@preamble</span><span class="ltx_text" id="S4.T2.5.1.9.9.1.1.5"></span></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.10.10.1"><span class="ltx_text" id="S4.T2.5.1.10.10.1.1" style="background-color:#F2F2F2;">Llamagen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.2"><span class="ltx_text" id="S4.T2.5.1.10.10.2.1" style="background-color:#F2F2F2;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.3"><span class="ltx_text" id="S4.T2.5.1.10.10.3.1" style="background-color:#F2F2F2;">50M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.4"><span class="ltx_text" id="S4.T2.5.1.10.10.4.1" style="background-color:#F2F2F2;">0.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.5"><span class="ltx_text" id="S4.T2.5.1.10.10.5.1" style="background-color:#F2F2F2;">0.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.6"><span class="ltx_text" id="S4.T2.5.1.10.10.6.1" style="background-color:#F2F2F2;">0.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.7"><span class="ltx_text" id="S4.T2.5.1.10.10.7.1" style="background-color:#F2F2F2;">0.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.8"><span class="ltx_text" id="S4.T2.5.1.10.10.8.1" style="background-color:#F2F2F2;">0.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.9"><span class="ltx_text" id="S4.T2.5.1.10.10.9.1" style="background-color:#F2F2F2;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.10.10.10"><span class="ltx_text" id="S4.T2.5.1.10.10.10.1" style="background-color:#F2F2F2;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.11.11.1">
<span class="ltx_rule" style="width:2.0pt;height:0.4pt;background:black;display:inline-block;"> </span> <span class="ltx_text" id="S4.T2.5.1.11.11.1.1"> <span class="ltx_rule" style="width:4.0pt;height:0.4pt;background:black;display:inline-block;"> </span> </span> <span class="ltx_rule" style="width:2.0pt;height:0.4pt;background:black;display:inline-block;"> </span>
</th>
<td class="ltx_td" id="S4.T2.5.1.11.11.2"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.3"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.4"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.5"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.6"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.7"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.8"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.9"></td>
<td class="ltx_td" id="S4.T2.5.1.11.11.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.12.12" style="background-color:#FFFFCC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.12.12.1.1" style="background-color:#FFFFCC;">LightGen w/o DPO</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.2"><span class="ltx_text" id="S4.T2.5.1.12.12.2.1" style="background-color:#FFFFCC;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.3"><span class="ltx_text" id="S4.T2.5.1.12.12.3.1" style="background-color:#FFFFCC;">2M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.4"><span class="ltx_text" id="S4.T2.5.1.12.12.4.1" style="background-color:#FFFFCC;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.5"><span class="ltx_text" id="S4.T2.5.1.12.12.5.1" style="background-color:#FFFFCC;">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.6"><span class="ltx_text" id="S4.T2.5.1.12.12.6.1" style="background-color:#FFFFCC;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.7"><span class="ltx_text" id="S4.T2.5.1.12.12.7.1" style="background-color:#FFFFCC;">0.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.8"><span class="ltx_text" id="S4.T2.5.1.12.12.8.1" style="background-color:#FFFFCC;">0.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.9"><span class="ltx_text" id="S4.T2.5.1.12.12.9.1" style="background-color:#FFFFCC;">0.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.12.12.10"><span class="ltx_text" id="S4.T2.5.1.12.12.10.1" style="background-color:#FFFFCC;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.13.13" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.13.13.1.1" style="background-color:#E6FFFF;">LightGen</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.2"><span class="ltx_text" id="S4.T2.5.1.13.13.2.1" style="background-color:#E6FFFF;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.3"><span class="ltx_text" id="S4.T2.5.1.13.13.3.1" style="background-color:#E6FFFF;">2M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.13.13.4.1" style="background-color:#E6FFFF;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.5"><span class="ltx_text" id="S4.T2.5.1.13.13.5.1" style="background-color:#E6FFFF;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.13.13.6.1" style="background-color:#E6FFFF;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.7"><span class="ltx_text" id="S4.T2.5.1.13.13.7.1" style="background-color:#E6FFFF;">0.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.8"><span class="ltx_text" id="S4.T2.5.1.13.13.8.1" style="background-color:#E6FFFF;">0.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.9"><span class="ltx_text" id="S4.T2.5.1.13.13.9.1" style="background-color:#E6FFFF;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.13.13.10"><span class="ltx_text" id="S4.T2.5.1.13.13.10.1" style="background-color:#E6FFFF;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.1.14.14.1"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></th>
<td class="ltx_td" id="S4.T2.5.1.14.14.2"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.3"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.4"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.5"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.6"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.7"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.8"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.9"></td>
<td class="ltx_td" id="S4.T2.5.1.14.14.10"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of LightGen's performance against several state-of-the-art (SOTA) text-to-image generation models on the GenEval benchmark at a resolution of 512x512 pixels.  The models are evaluated across various aspects of image generation quality, including the generation of single and multiple objects, color accuracy, counting ability, positional accuracy, and overall image quality.  The table shows the number of parameters and the size of the pre-training data used for each model.  LightGen's performance is compared to several diffusion-based models (Stable Diffusion versions 1.5, 2.1, XL, and 3; Flux) and to an autoregressive model (Llamagen). This allows for an assessment of LightGen's efficiency and effectiveness relative to existing methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison in 512×512512512512\times 512512 × 512 on GenEval [15].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A0.T3.9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T3.9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.1.1.1" rowspan="2">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A0.T3.9.1.1.1.1.1" style="font-size:144%;">
</span><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.1.1.1.2" style="font-size:144%;">Model</span>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.1.1.2.1" style="font-size:144%;">#Params</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.1.1.3.1" style="font-size:144%;">Pre-train Data</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" colspan="7" id="A0.T3.9.1.1.1.4">
<span class="ltx_ERROR undefined" id="A0.T3.9.1.1.1.4.1">\adl@mkpream</span><span class="ltx_text" id="A0.T3.9.1.1.1.4.2" style="font-size:144%;">c</span><span class="ltx_ERROR undefined" id="A0.T3.9.1.1.1.4.3">\@addtopreamble</span><span class="ltx_ERROR undefined" id="A0.T3.9.1.1.1.4.4">\@arstrut</span><span class="ltx_ERROR undefined" id="A0.T3.9.1.1.1.4.5">\@preamble</span><span class="ltx_text" id="A0.T3.9.1.1.1.4.6"></span>
</td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T3.9.1.2.2.1"><span class="ltx_text" id="A0.T3.9.1.2.2.1.1" style="font-size:144%;">Single Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T3.9.1.2.2.2"><span class="ltx_text" id="A0.T3.9.1.2.2.2.1" style="font-size:144%;">Two Obj.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T3.9.1.2.2.3"><span class="ltx_text" id="A0.T3.9.1.2.2.3.1" style="font-size:144%;">Colors</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T3.9.1.2.2.4"><span class="ltx_text" id="A0.T3.9.1.2.2.4.1" style="font-size:144%;">Counting</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T3.9.1.2.2.5"><span class="ltx_text" id="A0.T3.9.1.2.2.5.1" style="font-size:144%;">Position</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T3.9.1.2.2.6"><span class="ltx_text" id="A0.T3.9.1.2.2.6.1" style="font-size:144%;">Color Attri.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T3.9.1.2.2.7"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.2.2.7.1" style="font-size:144%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.3.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" colspan="10" id="A0.T3.9.1.3.3.1">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A0.T3.9.1.3.3.1.1" style="font-size:144%;background-color:#F2F2F2;">   <span class="ltx_ERROR undefined" id="A0.T3.9.1.3.3.1.1.1">\adl@mkpream</span>l<span class="ltx_ERROR undefined" id="A0.T3.9.1.3.3.1.1.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="A0.T3.9.1.3.3.1.1.3">\@arstrut</span><span class="ltx_ERROR undefined" id="A0.T3.9.1.3.3.1.1.4">\@preamble</span><span class="ltx_text" id="A0.T3.9.1.3.3.1.1.5"></span></span>
</th>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.4.4.1"><span class="ltx_text" id="A0.T3.9.1.4.4.1.1" style="font-size:144%;background-color:#F2F2F2;">Stable Diffusion v1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.2"><span class="ltx_text" id="A0.T3.9.1.4.4.2.1" style="font-size:144%;background-color:#F2F2F2;">0.9B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.3"><span class="ltx_text" id="A0.T3.9.1.4.4.3.1" style="font-size:144%;background-color:#F2F2F2;">2B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.4"><span class="ltx_text" id="A0.T3.9.1.4.4.4.1" style="font-size:144%;background-color:#F2F2F2;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.5"><span class="ltx_text" id="A0.T3.9.1.4.4.5.1" style="font-size:144%;background-color:#F2F2F2;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.6"><span class="ltx_text" id="A0.T3.9.1.4.4.6.1" style="font-size:144%;background-color:#F2F2F2;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.7"><span class="ltx_text" id="A0.T3.9.1.4.4.7.1" style="font-size:144%;background-color:#F2F2F2;">0.35</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.8"><span class="ltx_text" id="A0.T3.9.1.4.4.8.1" style="font-size:144%;background-color:#F2F2F2;">0.04</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.9"><span class="ltx_text" id="A0.T3.9.1.4.4.9.1" style="font-size:144%;background-color:#F2F2F2;">0.06</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.4.4.10"><span class="ltx_text" id="A0.T3.9.1.4.4.10.1" style="font-size:144%;background-color:#F2F2F2;">0.43</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.5.5.1">
<span class="ltx_text" id="A0.T3.9.1.5.5.1.1" style="font-size:144%;">Stable Diffusion v2.1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.5.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="A0.T3.9.1.5.5.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.2"><span class="ltx_text" id="A0.T3.9.1.5.5.2.1" style="font-size:144%;">0.9B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.3"><span class="ltx_text" id="A0.T3.9.1.5.5.3.1" style="font-size:144%;">2B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.4"><span class="ltx_text" id="A0.T3.9.1.5.5.4.1" style="font-size:144%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.5"><span class="ltx_text" id="A0.T3.9.1.5.5.5.1" style="font-size:144%;">0.51</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.6"><span class="ltx_text" id="A0.T3.9.1.5.5.6.1" style="font-size:144%;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.7"><span class="ltx_text" id="A0.T3.9.1.5.5.7.1" style="font-size:144%;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.8"><span class="ltx_text" id="A0.T3.9.1.5.5.8.1" style="font-size:144%;">0.07</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.9"><span class="ltx_text" id="A0.T3.9.1.5.5.9.1" style="font-size:144%;">0.17</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.5.5.10"><span class="ltx_text" id="A0.T3.9.1.5.5.10.1" style="font-size:144%;">0.50</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.6.6.1">
<span class="ltx_text" id="A0.T3.9.1.6.6.1.1" style="font-size:144%;">Stable Diffusion XL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.6.6.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="A0.T3.9.1.6.6.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.2"><span class="ltx_text" id="A0.T3.9.1.6.6.2.1" style="font-size:144%;">2.6B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.3"><span class="ltx_text" id="A0.T3.9.1.6.6.3.1" style="font-size:144%;">5B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.4"><span class="ltx_text" id="A0.T3.9.1.6.6.4.1" style="font-size:144%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.5"><span class="ltx_text" id="A0.T3.9.1.6.6.5.1" style="font-size:144%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.6"><span class="ltx_text" id="A0.T3.9.1.6.6.6.1" style="font-size:144%;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.7"><span class="ltx_text" id="A0.T3.9.1.6.6.7.1" style="font-size:144%;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.8"><span class="ltx_text" id="A0.T3.9.1.6.6.8.1" style="font-size:144%;">0.15</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.9"><span class="ltx_text" id="A0.T3.9.1.6.6.9.1" style="font-size:144%;">0.23</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.6.6.10"><span class="ltx_text" id="A0.T3.9.1.6.6.10.1" style="font-size:144%;">0.55</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.7.7.1">
<span class="ltx_text" id="A0.T3.9.1.7.7.1.1" style="font-size:144%;">DALLE 3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.7.7.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="A0.T3.9.1.7.7.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.2"><span class="ltx_text" id="A0.T3.9.1.7.7.2.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.3"><span class="ltx_text" id="A0.T3.9.1.7.7.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.4"><span class="ltx_text" id="A0.T3.9.1.7.7.4.1" style="font-size:144%;">0.96</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.5"><span class="ltx_text" id="A0.T3.9.1.7.7.5.1" style="font-size:144%;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.6"><span class="ltx_text" id="A0.T3.9.1.7.7.6.1" style="font-size:144%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.7"><span class="ltx_text" id="A0.T3.9.1.7.7.7.1" style="font-size:144%;">0.47</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.8"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.7.7.8.1" style="font-size:144%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.9"><span class="ltx_text" id="A0.T3.9.1.7.7.9.1" style="font-size:144%;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.7.7.10"><span class="ltx_text" id="A0.T3.9.1.7.7.10.1" style="font-size:144%;">0.67</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.8.8.1">
<span class="ltx_text" id="A0.T3.9.1.8.8.1.1" style="font-size:144%;">Stable Diffusion 3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.8.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="A0.T3.9.1.8.8.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.2"><span class="ltx_text" id="A0.T3.9.1.8.8.2.1" style="font-size:144%;">8B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.3"><span class="ltx_text" id="A0.T3.9.1.8.8.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.4"><span class="ltx_text" id="A0.T3.9.1.8.8.4.1" style="font-size:144%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.5"><span class="ltx_text" id="A0.T3.9.1.8.8.5.1" style="font-size:144%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.6"><span class="ltx_text" id="A0.T3.9.1.8.8.6.1" style="font-size:144%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.7"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.8.8.7.1" style="font-size:144%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.8"><span class="ltx_text" id="A0.T3.9.1.8.8.8.1" style="font-size:144%;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.9"><span class="ltx_text" id="A0.T3.9.1.8.8.9.1" style="font-size:144%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.8.8.10"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.8.8.10.1" style="font-size:144%;">0.68</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.9.9.1">
<span class="ltx_text" id="A0.T3.9.1.9.9.1.1" style="font-size:144%;">Flux </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.9.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="A0.T3.9.1.9.9.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.2"><span class="ltx_text" id="A0.T3.9.1.9.9.2.1" style="font-size:144%;">12B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.3"><span class="ltx_text" id="A0.T3.9.1.9.9.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.4"><span class="ltx_text" id="A0.T3.9.1.9.9.4.1" style="font-size:144%;">0.98</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.5"><span class="ltx_text" id="A0.T3.9.1.9.9.5.1" style="font-size:144%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.6"><span class="ltx_text" id="A0.T3.9.1.9.9.6.1" style="font-size:144%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.7"><span class="ltx_text" id="A0.T3.9.1.9.9.7.1" style="font-size:144%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.8"><span class="ltx_text" id="A0.T3.9.1.9.9.8.1" style="font-size:144%;">0.22</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.9"><span class="ltx_text" id="A0.T3.9.1.9.9.9.1" style="font-size:144%;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.9.9.10"><span class="ltx_text" id="A0.T3.9.1.9.9.10.1" style="font-size:144%;">0.66</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.10.10" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" colspan="10" id="A0.T3.9.1.10.10.1">
<span class="ltx_rule" style="width:100%;height:0.4pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A0.T3.9.1.10.10.1.1" style="font-size:144%;background-color:#F2F2F2;">   <span class="ltx_ERROR undefined" id="A0.T3.9.1.10.10.1.1.1">\adl@mkpream</span>l<span class="ltx_ERROR undefined" id="A0.T3.9.1.10.10.1.1.2">\@addtopreamble</span><span class="ltx_ERROR undefined" id="A0.T3.9.1.10.10.1.1.3">\@arstrut</span><span class="ltx_ERROR undefined" id="A0.T3.9.1.10.10.1.1.4">\@preamble</span><span class="ltx_text" id="A0.T3.9.1.10.10.1.1.5"></span></span>
</th>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.11.11.1"><span class="ltx_text" id="A0.T3.9.1.11.11.1.1" style="font-size:144%;background-color:#F2F2F2;">Llamagen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite></span></th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.2"><span class="ltx_text" id="A0.T3.9.1.11.11.2.1" style="font-size:144%;background-color:#F2F2F2;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.3"><span class="ltx_text" id="A0.T3.9.1.11.11.3.1" style="font-size:144%;background-color:#F2F2F2;">50M</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.4"><span class="ltx_text" id="A0.T3.9.1.11.11.4.1" style="font-size:144%;background-color:#F2F2F2;">0.19</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.5"><span class="ltx_text" id="A0.T3.9.1.11.11.5.1" style="font-size:144%;background-color:#F2F2F2;">0.16</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.6"><span class="ltx_text" id="A0.T3.9.1.11.11.6.1" style="font-size:144%;background-color:#F2F2F2;">0.10</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.7"><span class="ltx_text" id="A0.T3.9.1.11.11.7.1" style="font-size:144%;background-color:#F2F2F2;">0.03</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.8"><span class="ltx_text" id="A0.T3.9.1.11.11.8.1" style="font-size:144%;background-color:#F2F2F2;">0.09</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.9"><span class="ltx_text" id="A0.T3.9.1.11.11.9.1" style="font-size:144%;background-color:#F2F2F2;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.11.11.10"><span class="ltx_text" id="A0.T3.9.1.11.11.10.1" style="font-size:144%;background-color:#F2F2F2;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.12.12.1">
<span class="ltx_text" id="A0.T3.9.1.12.12.1.1" style="font-size:144%;">Chameleon </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.12.12.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="A0.T3.9.1.12.12.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.2"><span class="ltx_text" id="A0.T3.9.1.12.12.2.1" style="font-size:144%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.3"><span class="ltx_text" id="A0.T3.9.1.12.12.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.4"><span class="ltx_text" id="A0.T3.9.1.12.12.4.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.5"><span class="ltx_text" id="A0.T3.9.1.12.12.5.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.6"><span class="ltx_text" id="A0.T3.9.1.12.12.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.7"><span class="ltx_text" id="A0.T3.9.1.12.12.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.8"><span class="ltx_text" id="A0.T3.9.1.12.12.8.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.9"><span class="ltx_text" id="A0.T3.9.1.12.12.9.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.12.12.10"><span class="ltx_text" id="A0.T3.9.1.12.12.10.1" style="font-size:144%;">0.39</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.13.13.1">
<span class="ltx_text" id="A0.T3.9.1.13.13.1.1" style="font-size:144%;">SEED-X </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.13.13.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="A0.T3.9.1.13.13.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.2"><span class="ltx_text" id="A0.T3.9.1.13.13.2.1" style="font-size:144%;">17B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.3"><span class="ltx_text" id="A0.T3.9.1.13.13.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.4"><span class="ltx_text" id="A0.T3.9.1.13.13.4.1" style="font-size:144%;">0.96</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.5"><span class="ltx_text" id="A0.T3.9.1.13.13.5.1" style="font-size:144%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.6"><span class="ltx_text" id="A0.T3.9.1.13.13.6.1" style="font-size:144%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.7"><span class="ltx_text" id="A0.T3.9.1.13.13.7.1" style="font-size:144%;">0.31</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.8"><span class="ltx_text" id="A0.T3.9.1.13.13.8.1" style="font-size:144%;">0.18</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.9"><span class="ltx_text" id="A0.T3.9.1.13.13.9.1" style="font-size:144%;">0.14</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.13.13.10"><span class="ltx_text" id="A0.T3.9.1.13.13.10.1" style="font-size:144%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.14.14.1">
<span class="ltx_text" id="A0.T3.9.1.14.14.1.1" style="font-size:144%;">Show-o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A0.T3.9.1.14.14.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.08619v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="A0.T3.9.1.14.14.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.2"><span class="ltx_text" id="A0.T3.9.1.14.14.2.1" style="font-size:144%;">1.3B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.3"><span class="ltx_text" id="A0.T3.9.1.14.14.3.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.4"><span class="ltx_text" id="A0.T3.9.1.14.14.4.1" style="font-size:144%;">0.95</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.5"><span class="ltx_text" id="A0.T3.9.1.14.14.5.1" style="font-size:144%;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.6"><span class="ltx_text" id="A0.T3.9.1.14.14.6.1" style="font-size:144%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.7"><span class="ltx_text" id="A0.T3.9.1.14.14.7.1" style="font-size:144%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.8"><span class="ltx_text" id="A0.T3.9.1.14.14.8.1" style="font-size:144%;">0.11</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.9"><span class="ltx_text" id="A0.T3.9.1.14.14.9.1" style="font-size:144%;">0.28</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.14.14.10"><span class="ltx_text" id="A0.T3.9.1.14.14.10.1" style="font-size:144%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.15.15.1">
<span class="ltx_rule" style="width:2.0pt;height:0.4pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A0.T3.9.1.15.15.1.1" style="font-size:144%;"> </span><span class="ltx_text" id="A0.T3.9.1.15.15.1.2" style="font-size:144%;"> <span class="ltx_rule" style="width:4.0pt;height:0.4pt;background:black;display:inline-block;"> </span> </span><span class="ltx_text" id="A0.T3.9.1.15.15.1.3" style="font-size:144%;"> </span><span class="ltx_rule" style="width:2.0pt;height:0.4pt;background:black;display:inline-block;"> </span>
</th>
<td class="ltx_td" id="A0.T3.9.1.15.15.2"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.3"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.4"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.5"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.6"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.7"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.8"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.9"></td>
<td class="ltx_td" id="A0.T3.9.1.15.15.10"></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.16.16" style="background-color:#FFFFCC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.16.16.1">
<span class="ltx_text" id="A0.T3.9.1.16.16.1.1" style="font-size:144%;">  </span><span class="ltx_text" id="A0.T3.9.1.16.16.1.2" style="font-size:144%;background-color:#FFFFCC;">
<span class="ltx_text" id="A0.T3.9.1.16.16.1.2.1" style="background-color:#E6FFFF;">
<span class="ltx_text ltx_font_bold" id="A0.T3.9.1.16.16.1.2.1.1">LightGen</span></span></span>
</th>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.2"><span class="ltx_text" id="A0.T3.9.1.16.16.2.1" style="font-size:144%;background-color:#E6FFFF;">0.7B</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.3"><span class="ltx_text" id="A0.T3.9.1.16.16.3.1" style="font-size:144%;background-color:#E6FFFF;">2M</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.4"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.16.16.4.1" style="font-size:144%;background-color:#E6FFFF;">0.99</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.5"><span class="ltx_text" id="A0.T3.9.1.16.16.5.1" style="font-size:144%;background-color:#E6FFFF;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.6"><span class="ltx_text ltx_font_bold" id="A0.T3.9.1.16.16.6.1" style="font-size:144%;background-color:#E6FFFF;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.7"><span class="ltx_text" id="A0.T3.9.1.16.16.7.1" style="font-size:144%;background-color:#E6FFFF;">0.60</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.8"><span class="ltx_text" id="A0.T3.9.1.16.16.8.1" style="font-size:144%;background-color:#E6FFFF;">0.22</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.9"><span class="ltx_text" id="A0.T3.9.1.16.16.9.1" style="font-size:144%;background-color:#E6FFFF;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="A0.T3.9.1.16.16.10"><span class="ltx_text" id="A0.T3.9.1.16.16.10.1" style="font-size:144%;background-color:#E6FFFF;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="A0.T3.9.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T3.9.1.17.17.1"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></th>
<td class="ltx_td" id="A0.T3.9.1.17.17.2"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.3"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.4"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.5"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.6"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.7"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.8"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.9"></td>
<td class="ltx_td" id="A0.T3.9.1.17.17.10"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of LightGen's performance against several state-of-the-art (SOTA) text-to-image generation models on the GenEval benchmark [15].  The comparison includes both diffusion-based models (Stable Diffusion versions 1.5, 2.1, XL, and 3; Flux) and autoregressive models (Llamagen).  For each model, the table shows the number of parameters (#Params), the size of the pre-training dataset (Pre-train Data), and the GenEval scores across various metrics. These metrics assess the model's ability to generate images that accurately reflect different aspects of the input text prompt, including the presence of single or multiple objects, color accuracy, counting ability, positional accuracy, and overall attribute agreement. LightGen's performance is evaluated with and without the Direct Preference Optimization (DPO) post-processing step.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison with other work’s paper demonstrate on GenEval [15].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08619/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08619/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}