---
title: "Neighboring Autoregressive Modeling for Efficient Visual Generation"
summary: "NAR: Neighboring Autoregressive Modeling for efficient visual generation by locality-preserved, parallel decoding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Zhejiang University, China",]
showSummary: true
date: 2025-03-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10696 {{< /keyword >}}
{{< keyword icon="writer" >}} Yefei He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10696" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10696" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10696/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current autoregressive models use a raster-order paradigm, overlooking spatial/temporal locality in visuals. Tokens correlate more strongly with adjacent ones. To address this, the paper introduces **Neighboring Autoregressive Modeling (NAR)**. It reframes generation as progressive outpainting using a near-to-far "next-neighbor prediction" mechanism. Tokens decode based on Manhattan distance from the initial token. 



NAR uses dimension-oriented decoding heads for parallel adjacent token prediction. All tokens adjacent to decoded tokens are processed in parallel during inference, cutting model forward steps. Experiments show that **NAR boosts throughput and improves FID/FVD scores for image/video tasks.** It also outperforms models with larger parameter counts while using less training data, showing the approach's efficiency and effectiveness.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Neighboring Autoregressive Modeling (NAR), a novel paradigm for visual generation based on a near-to-far "next-neighbor prediction" mechanism. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents dimension-oriented decoding heads, enabling parallel prediction of adjacent tokens and improving generation efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates superior generation quality and efficiency compared to existing autoregressive methods on image and video generation tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel autoregressive modeling paradigm, addressing limitations in existing visual generation methods and opens avenues for future research in efficient and high-quality image and video synthesis, pushing the boundaries of AI-driven creative tasks. **The NAR's efficiency and quality trade-offs provide valuable insights for researchers seeking to enhance visual content creation.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.10696/x2.png)

> 🔼 Figure 1 presents image samples generated using the Neighboring Autoregressive Modeling (NAR) method.  The top row showcases examples of 512x512 pixel text-guided image generation, where the model creates images based on textual descriptions. The middle row displays 256x256 pixel images generated under class-conditional conditions, meaning the model produces images belonging to a specific predefined category.  The bottom row shows frames from 128x128 pixel videos generated using class-conditional video generation. This figure demonstrates the model's ability to generate various visual content across different resolutions and generation paradigms.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generated samples from NAR. Results are shown for 512×512512512512\times 512512 × 512 text-guided image generation (1st row), 256×256256256256\times 256256 × 256 class-conditional image generation (2nd row) and 128×128128128128\times 128128 × 128 class-conditional video generation (3rd row).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.9.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.8.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.4.4.5"><span class="ltx_text" id="S3.T1.8.4.4.5.1" style="font-size:90%;">Tokenizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.4.4.6"><span class="ltx_text" id="S3.T1.8.4.4.6.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.4.4.7"><span class="ltx_text" id="S3.T1.8.4.4.7.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.4.4.8"><span class="ltx_text" id="S3.T1.8.4.4.8.1" style="font-size:90%;">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.1.1">
<span class="ltx_text" id="S3.T1.5.1.1.1.1" style="font-size:90%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.5.1.1.1.m1.1"><semantics id="S3.T1.5.1.1.1.m1.1a"><mo id="S3.T1.5.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.1.1.1.m1.1b"><ci id="S3.T1.5.1.1.1.m1.1.1.cmml" xref="S3.T1.5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.2.2">
<span class="ltx_text" id="S3.T1.6.2.2.2.1" style="font-size:90%;">IS</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.2.2.2.m1.1"><semantics id="S3.T1.6.2.2.2.m1.1a"><mo id="S3.T1.6.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.2.2.2.m1.1b"><ci id="S3.T1.6.2.2.2.m1.1.1.cmml" xref="S3.T1.6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.3.3.3">
<span class="ltx_text" id="S3.T1.7.3.3.3.1" style="font-size:90%;">Precision</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.7.3.3.3.m1.1"><semantics id="S3.T1.7.3.3.3.m1.1a"><mo id="S3.T1.7.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.7.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.3.3.3.m1.1b"><ci id="S3.T1.7.3.3.3.m1.1.1.cmml" xref="S3.T1.7.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.4.4.4">
<span class="ltx_text" id="S3.T1.8.4.4.4.1" style="font-size:90%;">Recall</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.8.4.4.4.m1.1"><semantics id="S3.T1.8.4.4.4.m1.1a"><mo id="S3.T1.8.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T1.8.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.4.4.4.m1.1b"><ci id="S3.T1.8.4.4.4.m1.1.1.cmml" xref="S3.T1.8.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.4.4.9"><span class="ltx_text" id="S3.T1.8.4.4.9.1" style="font-size:90%;">Steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.4.4.10">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.8.4.4.10.1">
<tr class="ltx_tr" id="S3.T1.8.4.4.10.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.8.4.4.10.1.1.1"><span class="ltx_text" id="S3.T1.8.4.4.10.1.1.1.1" style="font-size:90%;">Throughput</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.4.4.10.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.8.4.4.10.1.2.1"><span class="ltx_text" id="S3.T1.8.4.4.10.1.2.1.1" style="font-size:90%;">(img/s)</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.6.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.1" rowspan="4"><span class="ltx_text" id="S3.T1.9.5.6.1.1.1" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.9.5.6.1.1.1.1">
<span class="ltx_tr" id="S3.T1.9.5.6.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.5.6.1.1.1.1.1.1">VQVAE-108M</span></span>
<span class="ltx_tr" id="S3.T1.9.5.6.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.5.6.1.1.1.1.2.1">(rFID=1.00)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.2" rowspan="4"><span class="ltx_text" id="S3.T1.9.5.6.1.2.1" style="font-size:90%;">VAR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.3"><span class="ltx_text" id="S3.T1.9.5.6.1.3.1" style="font-size:90%;">VAR-d16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.4"><span class="ltx_text" id="S3.T1.9.5.6.1.4.1" style="font-size:90%;">310M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.5"><span class="ltx_text" id="S3.T1.9.5.6.1.5.1" style="font-size:90%;">3.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.6"><span class="ltx_text" id="S3.T1.9.5.6.1.6.1" style="font-size:90%;">274.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.6.1.7.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.8"><span class="ltx_text" id="S3.T1.9.5.6.1.8.1" style="font-size:90%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.9"><span class="ltx_text" id="S3.T1.9.5.6.1.9.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.6.1.10"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.6.1.10.1" style="font-size:90%;">129.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.7.2">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.1"><span class="ltx_text" id="S3.T1.9.5.7.2.1.1" style="font-size:90%;">VAR-d20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.2"><span class="ltx_text" id="S3.T1.9.5.7.2.2.1" style="font-size:90%;">600M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.3"><span class="ltx_text" id="S3.T1.9.5.7.2.3.1" style="font-size:90%;">2.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.4"><span class="ltx_text" id="S3.T1.9.5.7.2.4.1" style="font-size:90%;">302.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.5"><span class="ltx_text" id="S3.T1.9.5.7.2.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.6"><span class="ltx_text" id="S3.T1.9.5.7.2.6.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.7"><span class="ltx_text" id="S3.T1.9.5.7.2.7.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.7.2.8"><span class="ltx_text" id="S3.T1.9.5.7.2.8.1" style="font-size:90%;">77.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.8.3">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.1"><span class="ltx_text" id="S3.T1.9.5.8.3.1.1" style="font-size:90%;">VAR-d24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.2"><span class="ltx_text" id="S3.T1.9.5.8.3.2.1" style="font-size:90%;">1.0B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.3"><span class="ltx_text" id="S3.T1.9.5.8.3.3.1" style="font-size:90%;">2.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.4"><span class="ltx_text" id="S3.T1.9.5.8.3.4.1" style="font-size:90%;">312.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.5"><span class="ltx_text" id="S3.T1.9.5.8.3.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.6"><span class="ltx_text" id="S3.T1.9.5.8.3.6.1" style="font-size:90%;">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.7"><span class="ltx_text" id="S3.T1.9.5.8.3.7.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.8.3.8"><span class="ltx_text" id="S3.T1.9.5.8.3.8.1" style="font-size:90%;">50.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.9.4">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.1"><span class="ltx_text" id="S3.T1.9.5.9.4.1.1" style="font-size:90%;">VAR-d30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.2"><span class="ltx_text" id="S3.T1.9.5.9.4.2.1" style="font-size:90%;">2.0B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.3"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.9.4.3.1" style="font-size:90%;">1.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.9.4.4.1" style="font-size:90%;">323.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.5"><span class="ltx_text" id="S3.T1.9.5.9.4.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.9.4.6.1" style="font-size:90%;">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.7"><span class="ltx_text" id="S3.T1.9.5.9.4.7.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.9.4.8"><span class="ltx_text" id="S3.T1.9.5.9.4.8.1" style="font-size:90%;">29.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.10.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.9.5.10.5.1" rowspan="13"><span class="ltx_text" id="S3.T1.9.5.10.5.1.1" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.9.5.10.5.1.1.1">
<span class="ltx_tr" id="S3.T1.9.5.10.5.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.5.10.5.1.1.1.1.1">VQVAE-72M</span></span>
<span class="ltx_tr" id="S3.T1.9.5.10.5.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.9.5.10.5.1.1.1.2.1">(rFID=2.19)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.2" rowspan="4"><span class="ltx_text" id="S3.T1.9.5.10.5.2.1" style="font-size:90%;">AR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.3"><span class="ltx_text" id="S3.T1.9.5.10.5.3.1" style="font-size:90%;">LlamaGen-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.4"><span class="ltx_text" id="S3.T1.9.5.10.5.4.1" style="font-size:90%;">111M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.5"><span class="ltx_text" id="S3.T1.9.5.10.5.5.1" style="font-size:90%;">5.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.6"><span class="ltx_text" id="S3.T1.9.5.10.5.6.1" style="font-size:90%;">193.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.7"><span class="ltx_text" id="S3.T1.9.5.10.5.7.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.8"><span class="ltx_text" id="S3.T1.9.5.10.5.8.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.9"><span class="ltx_text" id="S3.T1.9.5.10.5.9.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.10.5.10"><span class="ltx_text" id="S3.T1.9.5.10.5.10.1" style="font-size:90%;">117.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.11.6">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.1"><span class="ltx_text" id="S3.T1.9.5.11.6.1.1" style="font-size:90%;">LlamaGen-L</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.2"><span class="ltx_text" id="S3.T1.9.5.11.6.2.1" style="font-size:90%;">343M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.3"><span class="ltx_text" id="S3.T1.9.5.11.6.3.1" style="font-size:90%;">3.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.4"><span class="ltx_text" id="S3.T1.9.5.11.6.4.1" style="font-size:90%;">248.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.5"><span class="ltx_text" id="S3.T1.9.5.11.6.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.6"><span class="ltx_text" id="S3.T1.9.5.11.6.6.1" style="font-size:90%;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.7"><span class="ltx_text" id="S3.T1.9.5.11.6.7.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.11.6.8"><span class="ltx_text" id="S3.T1.9.5.11.6.8.1" style="font-size:90%;">47.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.12.7">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.1"><span class="ltx_text" id="S3.T1.9.5.12.7.1.1" style="font-size:90%;">LlamaGen-XL</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.2"><span class="ltx_text" id="S3.T1.9.5.12.7.2.1" style="font-size:90%;">775M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.3"><span class="ltx_text" id="S3.T1.9.5.12.7.3.1" style="font-size:90%;">3.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.4"><span class="ltx_text" id="S3.T1.9.5.12.7.4.1" style="font-size:90%;">227.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.5"><span class="ltx_text" id="S3.T1.9.5.12.7.5.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.6"><span class="ltx_text" id="S3.T1.9.5.12.7.6.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.7"><span class="ltx_text" id="S3.T1.9.5.12.7.7.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.12.7.8"><span class="ltx_text" id="S3.T1.9.5.12.7.8.1" style="font-size:90%;">23.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.13.8">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.1"><span class="ltx_text" id="S3.T1.9.5.13.8.1.1" style="font-size:90%;">LlamaGen-XXL</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.2"><span class="ltx_text" id="S3.T1.9.5.13.8.2.1" style="font-size:90%;">1.4B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.3"><span class="ltx_text" id="S3.T1.9.5.13.8.3.1" style="font-size:90%;">3.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.4"><span class="ltx_text" id="S3.T1.9.5.13.8.4.1" style="font-size:90%;">253.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.5"><span class="ltx_text" id="S3.T1.9.5.13.8.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.6"><span class="ltx_text" id="S3.T1.9.5.13.8.6.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.7"><span class="ltx_text" id="S3.T1.9.5.13.8.7.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.13.8.8"><span class="ltx_text" id="S3.T1.9.5.13.8.8.1" style="font-size:90%;">14.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.14.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.1" rowspan="4"><span class="ltx_text" id="S3.T1.9.5.14.9.1.1" style="font-size:90%;">PAR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.2"><span class="ltx_text" id="S3.T1.9.5.14.9.2.1" style="font-size:90%;">PAR-B-4X</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.3"><span class="ltx_text" id="S3.T1.9.5.14.9.3.1" style="font-size:90%;">111M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.4"><span class="ltx_text" id="S3.T1.9.5.14.9.4.1" style="font-size:90%;">6.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.5"><span class="ltx_text" id="S3.T1.9.5.14.9.5.1" style="font-size:90%;">204.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.6"><span class="ltx_text" id="S3.T1.9.5.14.9.6.1" style="font-size:90%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.7"><span class="ltx_text" id="S3.T1.9.5.14.9.7.1" style="font-size:90%;">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.8"><span class="ltx_text" id="S3.T1.9.5.14.9.8.1" style="font-size:90%;">67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.14.9.9"><span class="ltx_text" id="S3.T1.9.5.14.9.9.1" style="font-size:90%;">174.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.15.10">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.1"><span class="ltx_text" id="S3.T1.9.5.15.10.1.1" style="font-size:90%;">PAR-L-4X</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.2"><span class="ltx_text" id="S3.T1.9.5.15.10.2.1" style="font-size:90%;">343M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.3"><span class="ltx_text" id="S3.T1.9.5.15.10.3.1" style="font-size:90%;">4.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.4"><span class="ltx_text" id="S3.T1.9.5.15.10.4.1" style="font-size:90%;">189.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.5"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.15.10.5.1" style="font-size:90%;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.6"><span class="ltx_text" id="S3.T1.9.5.15.10.6.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.7"><span class="ltx_text" id="S3.T1.9.5.15.10.7.1" style="font-size:90%;">67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.15.10.8"><span class="ltx_text" id="S3.T1.9.5.15.10.8.1" style="font-size:90%;">93.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.16.11">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.1"><span class="ltx_text" id="S3.T1.9.5.16.11.1.1" style="font-size:90%;">PAR-XL-4X</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.2"><span class="ltx_text" id="S3.T1.9.5.16.11.2.1" style="font-size:90%;">775M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.3"><span class="ltx_text" id="S3.T1.9.5.16.11.3.1" style="font-size:90%;">3.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.4"><span class="ltx_text" id="S3.T1.9.5.16.11.4.1" style="font-size:90%;">234.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.5"><span class="ltx_text" id="S3.T1.9.5.16.11.5.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.6"><span class="ltx_text" id="S3.T1.9.5.16.11.6.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.7"><span class="ltx_text" id="S3.T1.9.5.16.11.7.1" style="font-size:90%;">67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.16.11.8"><span class="ltx_text" id="S3.T1.9.5.16.11.8.1" style="font-size:90%;">53.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.17.12">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.1"><span class="ltx_text" id="S3.T1.9.5.17.12.1.1" style="font-size:90%;">PAR-XXL-4X</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.2"><span class="ltx_text" id="S3.T1.9.5.17.12.2.1" style="font-size:90%;">1.4B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.3"><span class="ltx_text" id="S3.T1.9.5.17.12.3.1" style="font-size:90%;">3.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.4"><span class="ltx_text" id="S3.T1.9.5.17.12.4.1" style="font-size:90%;">288.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.5"><span class="ltx_text" id="S3.T1.9.5.17.12.5.1" style="font-size:90%;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.6"><span class="ltx_text" id="S3.T1.9.5.17.12.6.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.7"><span class="ltx_text" id="S3.T1.9.5.17.12.7.1" style="font-size:90%;">67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.17.12.8"><span class="ltx_text" id="S3.T1.9.5.17.12.8.1" style="font-size:90%;">33.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.18.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.9.5.18.13.1" rowspan="5"><span class="ltx_text" id="S3.T1.9.5.18.13.1.1" style="font-size:90%;">NAR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.2"><span class="ltx_text" id="S3.T1.9.5.18.13.2.1" style="font-size:90%;">NAR-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.3"><span class="ltx_text" id="S3.T1.9.5.18.13.3.1" style="font-size:90%;">130M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.4"><span class="ltx_text" id="S3.T1.9.5.18.13.4.1" style="font-size:90%;">4.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.5"><span class="ltx_text" id="S3.T1.9.5.18.13.5.1" style="font-size:90%;">212.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.6"><span class="ltx_text" id="S3.T1.9.5.18.13.6.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.7"><span class="ltx_text" id="S3.T1.9.5.18.13.7.1" style="font-size:90%;">0.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.8"><span class="ltx_text" id="S3.T1.9.5.18.13.8.1" style="font-size:90%;">31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.5.18.13.9"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.18.13.9.1" style="font-size:90%;">419.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.5">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.1">
<span class="ltx_text" id="S3.T1.9.5.5.1.1" style="font-size:90%;">NAR-M</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T1.9.5.5.1.m1.1"><semantics id="S3.T1.9.5.5.1.m1.1a"><mo id="S3.T1.9.5.5.1.m1.1.1" mathsize="90%" xref="S3.T1.9.5.5.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.5.5.1.m1.1b"><ci id="S3.T1.9.5.5.1.m1.1.1.cmml" xref="S3.T1.9.5.5.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.5.5.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.5.5.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.2"><span class="ltx_text" id="S3.T1.9.5.5.2.1" style="font-size:90%;">290M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.3"><span class="ltx_text" id="S3.T1.9.5.5.3.1" style="font-size:90%;">3.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.4"><span class="ltx_text" id="S3.T1.9.5.5.4.1" style="font-size:90%;">257.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.5"><span class="ltx_text" id="S3.T1.9.5.5.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.6"><span class="ltx_text" id="S3.T1.9.5.5.6.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.7"><span class="ltx_text" id="S3.T1.9.5.5.7.1" style="font-size:90%;">31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.8"><span class="ltx_text" id="S3.T1.9.5.5.8.1" style="font-size:90%;">248.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.19.14">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.1"><span class="ltx_text" id="S3.T1.9.5.19.14.1.1" style="font-size:90%;">NAR-L</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.2"><span class="ltx_text" id="S3.T1.9.5.19.14.2.1" style="font-size:90%;">372M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.3"><span class="ltx_text" id="S3.T1.9.5.19.14.3.1" style="font-size:90%;">3.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.4"><span class="ltx_text" id="S3.T1.9.5.19.14.4.1" style="font-size:90%;">263.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.5"><span class="ltx_text" id="S3.T1.9.5.19.14.5.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.6"><span class="ltx_text" id="S3.T1.9.5.19.14.6.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.7"><span class="ltx_text" id="S3.T1.9.5.19.14.7.1" style="font-size:90%;">31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.19.14.8"><span class="ltx_text" id="S3.T1.9.5.19.14.8.1" style="font-size:90%;">195.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.20.15">
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.1"><span class="ltx_text" id="S3.T1.9.5.20.15.1.1" style="font-size:90%;">NAR-XL</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.2"><span class="ltx_text" id="S3.T1.9.5.20.15.2.1" style="font-size:90%;">816M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.3"><span class="ltx_text" id="S3.T1.9.5.20.15.3.1" style="font-size:90%;">2.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.4"><span class="ltx_text" id="S3.T1.9.5.20.15.4.1" style="font-size:90%;">277.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.5"><span class="ltx_text" id="S3.T1.9.5.20.15.5.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.6"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.20.15.6.1" style="font-size:90%;">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.7"><span class="ltx_text" id="S3.T1.9.5.20.15.7.1" style="font-size:90%;">31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.20.15.8"><span class="ltx_text" id="S3.T1.9.5.20.15.8.1" style="font-size:90%;">98.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.21.16">
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.1"><span class="ltx_text" id="S3.T1.9.5.21.16.1.1" style="font-size:90%;">NAR-XXL</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.2"><span class="ltx_text" id="S3.T1.9.5.21.16.2.1" style="font-size:90%;">1.46B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.3"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.21.16.3.1" style="font-size:90%;">2.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.4"><span class="ltx_text ltx_font_bold" id="S3.T1.9.5.21.16.4.1" style="font-size:90%;">293.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.5"><span class="ltx_text" id="S3.T1.9.5.21.16.5.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.6"><span class="ltx_text" id="S3.T1.9.5.21.16.6.1" style="font-size:90%;">0.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.7"><span class="ltx_text" id="S3.T1.9.5.21.16.7.1" style="font-size:90%;">31</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.9.5.21.16.8"><span class="ltx_text" id="S3.T1.9.5.21.16.8.1" style="font-size:90%;">56.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of various autoregressive image generation models on the ImageNet 256x256 dataset.  Key metrics evaluated include FID (Fréchet Inception Distance), which measures the quality of generated images by comparing them to real images, and IS (Inception Score), indicating the diversity and quality of the generated images.  Other important metrics are Precision, Recall, the number of Steps (model forward passes) needed to generate a single image, and Throughput (images per second). The table includes results from different model sizes and variations of autoregressive approaches (e.g., Vanilla AR, VAR, PAR, NAR) allowing for a comprehensive analysis of generation efficiency and image quality. The reconstruction FID (rFID) of the visual tokenizers used is also reported, serving as an upper bound for the generation FID.  One model variation ('M') uses the same hidden dimension as its 'L' counterpart but with a reduced depth (6 fewer layers).
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative evaluation on the ImageNet 256×256256256256\times 256256 × 256 benchmark. “Step” denotes the number of model forward passes required to generate an image. The throughput is measured with the maximum batch size supported on a single A100 GPU. Classifier-free guidance is set to 2 for our method. We also report the reconstruction FID (rFID) of visual tokenizers for each method, which serves as an upper bound for generation FID. ††\dagger†: model denoted as M shares the same hidden dimension as the L model but is reduced by 6 layers in depth.
> </details>





### In-depth insights


#### Locality Matters
**Locality matters** significantly impacts efficiency and quality in visual generation. Visual data exhibits strong correlations between spatially and temporally adjacent elements, unlike raster-scan approaches. Exploiting this locality through methods like neighboring autoregressive modeling (NAR) boosts performance. **NAR models** predict nearby tokens, preserving visual coherence and enabling parallel processing. Dimension-oriented decoding heads further optimize this by handling diverse dimensions. Such methods enhance throughput and reduce generation steps, **improving both speed and visual fidelity**. Prioritizing locality allows models to capture fine-grained details and global structures efficiently, leading to more coherent and aesthetically pleasing visual outputs.

#### NAR Paradigm
The Neighboring Autoregressive Modeling (NAR) paradigm introduces a novel approach to visual generation, contrasting with traditional raster-order methods. **It leverages spatial-temporal locality**, decoding tokens in a near-to-far manner, resembling an outpainting process.  Key to NAR is the use of dimension-oriented decoding heads, enabling **parallel prediction of adjacent tokens**, significantly speeding up the generation process.  This design addresses the limitations of standard next-token prediction by modeling distinct conditional distributions along orthogonal dimensions. NAR demonstrates superior efficiency and quality, achieving better FID/FVD scores with fewer generation steps.  The approach reduces training overhead, working well with existing tokenizers. **NAR represents a promising direction** for autoregressive visual generation.

#### Parallel Decoding
**Parallel decoding** offers substantial gains in generation speed, addressing a key bottleneck in autoregressive models. This technique allows for the simultaneous generation of multiple image tokens. Models like SJD retain raster order but predict consecutive tokens. PAR divides image tokens and predicts tokens with spatial distance. VAR generates tokens from coarse to fine scales using a next-scale prediction. NAR uses a set of dimension-oriented decoding heads, each predicting the next token. NAR supports parallel decoding; once tokens are decoded, all adjacent tokens can be generated, thus improving generation efficiency by parallel processing for high-performance and efficient image generation.

#### Reduced Steps
The concept of "Reduced Steps" is paramount in the context of efficient visual generation, as autoregressive models traditionally require a large number of sequential steps to generate a high-resolution image. **Reducing these steps directly translates to faster generation times and lower computational costs.** Various strategies aim to achieve this, such as parallel decoding or predicting multiple tokens at once. However, the effectiveness of step reduction hinges on preserving spatial and temporal coherence within the generated content. Overly aggressive step reduction can lead to context loss and degraded image quality. The paradigm must strike a balance between computational efficiency and visual fidelity to ensure practical applicability.

#### Code Available
The authors make their code publicly available, which is a **crucial step for reproducibility and further research** in the field of efficient visual generation. By releasing the code, they are allowing other researchers and practitioners to **build upon their work, validate their findings, and explore new applications** of Neighboring Autoregressive Modeling (NAR). This open-source approach fosters **collaboration and accelerates advancements** in the domain. The link to the code repository is provided, enabling seamless access for anyone interested in experimenting with NAR. Having the code available is valuable, allowing other researchers to **understand the implementation details**, experiment with different parameters, and potentially **extend the method to other tasks** or datasets. This also facilitates the comparison with other autoregressive visual generation techniques. The released code will likely include the model architecture, training scripts, and evaluation metrics used in the paper, further enhancing its accessibility and impact.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10696/x3.png)

> 🔼 Figure 2 presents a comparison of the generation quality and efficiency of different visual generation models.  The models all have approximately 300 million parameters.  The comparison is based on results from the ImageNet 256x256 dataset. The figure shows that NAR-M achieves a balance between high image quality and high generation speed, outperforming other models.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Generation quality and efficiency comparisons between various visual generation methods. Data is collected from ImageNet 256×256256256256\times 256256 × 256 dataset over models with parameters around 300M.
> </details>



![](https://arxiv.org/html/2503.10696/x4.png)

> 🔼 This figure compares different autoregressive visual generation methods, highlighting their generation processes.  It illustrates how traditional methods (AR, MAR, PAR, VAR) generate images in raster or random order, often lacking spatial coherence and efficiency. In contrast, the proposed NAR (Neighboring Autoregressive) method progressively generates the image like an 'outpainting', starting from an initial token and expanding outwards.  This approach is shown to improve efficiency and maintain spatial consistency, as adjacent pixels are generated before more distant pixels.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Comparisons of different autoregressive visual generation paradigm. The proposed NAR paradigm formulates the generation process as an outpainting procedure, progressively expanding the boundary of the decoded token region. This approach effectively preserves locality, as all tokens near the starting point are consistently decoded before the current token.
> </details>



![](https://arxiv.org/html/2503.10696/x5.png)

> 🔼 This figure illustrates the architecture of the dimension-oriented decoding heads in the Neighboring Autoregressive Modeling (NAR) framework.  Two heads process the input tokens in parallel. The horizontal head predicts the next token along the row dimension (horizontally), while the vertical head predicts the next token along the column dimension (vertically). Both heads utilize a backbone network consisting of L Transformer blocks, which process the input embeddings to generate the predictions. This parallel processing significantly speeds up inference by predicting multiple tokens simultaneously.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Illustration of the dimension-oriented decoding heads. The horizontal head and the vertical head are responsible for predicting the next token in the row and column dimensions, respectively. Here, L𝐿Litalic_L is the number of Transformer blocks in the backbone network.
> </details>



![](https://arxiv.org/html/2503.10696/x6.png)

> 🔼 This figure illustrates the attention masks used in the Neighboring Autoregressive Modeling (NAR) framework.  It highlights how the model handles spatial relationships between image tokens during parallel generation.  The different colors represent tokens generated simultaneously in the same step, demonstrating the parallel aspect of NAR.  The causal masking ensures the autoregressive property of the model, preventing future tokens from influencing the generation of past tokens.  Bidirectional attention within each step fosters consistency by allowing tokens within the same generation step to interact with each other, regardless of their position relative to the starting point.
> <details>
> <summary>read the caption</summary>
> Figure 5: Proximity-aware attention masks for the NAR paradigm. “Sn𝑛nitalic_n” denotes the n𝑛nitalic_n-th generation step. Tokens generated within the same step are represented by the same color. To maintain the autoregressive property, a causal mask is applied between tokens across different generation steps (aligned with Figure 3). Within each step, bidirectional attention is employed among the tokens to enhance consistency during parallel generation.
> </details>



![](https://arxiv.org/html/2503.10696/x7.png)

> 🔼 Figure 6 presents a comparison of the efficiency of three different autoregressive image generation methods: vanilla AR, VAR, and the proposed NAR.  The comparison is shown across three metrics: latency (the time it takes to generate an image), GPU memory usage, and throughput (images generated per second). For batch sizes exceeding 64, NAR demonstrates superior performance, achieving a lower FID (Fréchet Inception Distance, a measure of image quality), reduced latency, lower memory consumption, and substantially increased throughput.  This indicates that NAR offers a more efficient and effective approach to autoregressive image generation, especially when dealing with larger batch sizes.
> <details>
> <summary>read the caption</summary>
> Figure 6: Efficiency comparisons between vanilla AR, VAR and the proposed NAR paradigm for visual generation. With a batch size larger than 64, NAR achieves a lower FID with lower latency, lower memory usage and significantly higher throughput.
> </details>



![](https://arxiv.org/html/2503.10696/x8.png)

> 🔼 This figure visualizes video generation results from the NAR-XL model on the UCF-101 dataset. Each row presents a sequence of 16 frames from a short video, each frame sized at 128x128 pixels.  The videos represent diverse action categories, showcasing the model's ability to generate coherent and visually consistent videos across different actions.
> <details>
> <summary>read the caption</summary>
> Figure A:  Video generation samples on UCF-101 dataset. Each row shows sampled frames from a 16-frame, 128×128128128128\times 128128 × 128 resolution sequence generated by NAR-XL across various action categories.
> </details>



![](https://arxiv.org/html/2503.10696/x9.png)

> 🔼 This figure shows several example images generated by the NAR-XXL model, demonstrating its ability to generate images conditioned on a class label.  Each set of images shows different variations of the same object class generated from the same class label. The classes shown include siamese cat, coral reef, volcano, lesser panda, valley, great white shark, daisy, and geyser. This showcases the model's capacity to produce visually diverse outputs belonging to the same class.
> <details>
> <summary>read the caption</summary>
> Figure B:  Class-conditional image generation samples produced by NAR-XXL on ImageNet 256×256256256256\times 256256 × 256.
> </details>



![](https://arxiv.org/html/2503.10696/x10.png)

> 🔼 This figure showcases several examples of images generated by the NAR-XXL model (Neighboring Autoregressive Model, extra-large size).  Each example demonstrates the model's ability to generate high-quality, class-conditional images of 256x256 pixels.  The images are grouped by class (e.g., cheeseburger, ice cream, schooner), showing the variety and detail within each class that the model produces.
> <details>
> <summary>read the caption</summary>
> Figure C:  Class-conditional image generation samples produced by NAR-XXL on ImageNet 256×256256256256\times 256256 × 256.
> </details>



![](https://arxiv.org/html/2503.10696/x11.png)

> 🔼 This figure displays a comparison of image generation results between two models: LlamaGen-XL-Stage1 and NAR-XL-Stage1.  Both models generated 256x256 pixel images based on text prompts, but they employed different generation methods. LlamaGen-XL-Stage1 utilizes the standard 'next-token' prediction approach, sequentially predicting each pixel one by one. In contrast, NAR-XL-Stage1 employs a more efficient 'next-neighbor' prediction approach, which allows parallel processing and reduces the number of steps needed for generation. The figure visually showcases the differences in image quality and generation efficiency between these two methods.
> <details>
> <summary>read the caption</summary>
> Figure D:  256×256256256256\times 256256 × 256 text-guided image generation samples produced by LlamaGen-XL-Stage1 with next-token prediction paradigm and NAR-XL-Stage1 with next-neighbor prediction paradigm.
> </details>



![](https://arxiv.org/html/2503.10696/x12.png)

> 🔼 Figure E shows a comparison of image generation results between LlamaGen-XL-Stage2 (a model using the traditional next-token prediction approach) and NAR-XL-Stage2 (a model utilizing the novel next-neighbor prediction paradigm proposed in the paper).  Both models were tasked with generating 512x512 pixel images based on text prompts sourced from the Parti dataset. The figure visually demonstrates the differences in image quality and the efficiency of the two methods.
> <details>
> <summary>read the caption</summary>
> Figure E:  512×512512512512\times 512512 × 512 text-guided image generation samples produced by LlamaGen-XL-Stage2 with next-token prediction paradigm and NAR-XL-Stage2 with next-neighbor prediction paradigm. The text prompts are sampled from Parti prompts.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.8.4.4.10.1">
<tr class="ltx_tr" id="S3.T1.8.4.4.10.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.8.4.4.10.1.1.1"><span class="ltx_text" id="S3.T1.8.4.4.10.1.1.1.1" style="font-size:90%;">Throughput</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.4.4.10.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.8.4.4.10.1.2.1"><span class="ltx_text" id="S3.T1.8.4.4.10.1.2.1.1" style="font-size:90%;">(img/s)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of different class-conditional video generation methods evaluated on the UCF-101 benchmark.  The table focuses on the efficiency and quality of these methods.  Key metrics compared include the Frechet Video Distance (FVD), which measures the difference between generated and real videos, the number of steps required for video generation, and the total time taken for the process.  The table also includes model parameters for each method to contextualize the performance differences.  A note indicates that a particular model (LP) is a variant of the XL model, but it's smaller due to the removal of six layers, allowing for a comparison of performance with a reduced model size.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of class-conditional video generation methods on UCF-101 benchmark. Classifier-free guidance is set to 1.25 for all variants of our method. ††\dagger†: model denoted as LP shares the same hidden dimension as the XL model but is reduced by 6 layers in depth.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.3.1.2"><span class="ltx_text" id="S4.T2.3.1.2.1" style="font-size:70%;">Type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.3.1.3"><span class="ltx_text" id="S4.T2.3.1.3.1" style="font-size:70%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.3.1.4"><span class="ltx_text" id="S4.T2.3.1.4.1" style="font-size:70%;">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.3.1.1">
<span class="ltx_text" id="S4.T2.3.1.1.1" style="font-size:70%;">FVD</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.1.1.m1.1"><semantics id="S4.T2.3.1.1.m1.1a"><mo id="S4.T2.3.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T2.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.1.1.m1.1b"><ci id="S4.T2.3.1.1.m1.1.1.cmml" xref="S4.T2.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.3.1.5"><span class="ltx_text" id="S4.T2.3.1.5.1" style="font-size:70%;">Steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.6"><span class="ltx_text" id="S4.T2.3.1.6.1" style="font-size:70%;">Time (s)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.3.1.1" rowspan="3"><span class="ltx_text" id="S4.T2.4.3.1.1.1" style="font-size:70%;">Diffusion</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.3.1.2">
<span class="ltx_text" id="S4.T2.4.3.1.2.1" style="font-size:70%;">VideoFusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.3.1.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S4.T2.4.3.1.2.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.3.1.3"><span class="ltx_text" id="S4.T2.4.3.1.3.1" style="font-size:70%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.3.1.4"><span class="ltx_text" id="S4.T2.4.3.1.4.1" style="font-size:70%;">173</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.3.1.5"><span class="ltx_text" id="S4.T2.4.3.1.5.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.3.1.6"><span class="ltx_text" id="S4.T2.4.3.1.6.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.4.2.1">
<span class="ltx_text" id="S4.T2.4.4.2.1.1" style="font-size:70%;">Make-A-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.4.2.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S4.T2.4.4.2.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.2.2"><span class="ltx_text" id="S4.T2.4.4.2.2.1" style="font-size:70%;">N/A</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.2.3"><span class="ltx_text" id="S4.T2.4.4.2.3.1" style="font-size:70%;">81.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.2.4"><span class="ltx_text" id="S4.T2.4.4.2.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.2.5"><span class="ltx_text" id="S4.T2.4.4.2.5.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.5.3.1">
<span class="ltx_text" id="S4.T2.4.5.3.1.1" style="font-size:70%;">HPDM-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.5.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T2.4.5.3.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.5.3.2"><span class="ltx_text" id="S4.T2.4.5.3.2.1" style="font-size:70%;">725M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.5.3.3"><span class="ltx_text" id="S4.T2.4.5.3.3.1" style="font-size:70%;">66.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.5.3.4"><span class="ltx_text" id="S4.T2.4.5.3.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.5.3.5"><span class="ltx_text" id="S4.T2.4.5.3.5.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.6.4.1" rowspan="2"><span class="ltx_text" id="S4.T2.4.6.4.1.1" style="font-size:70%;">Masking</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.6.4.2">
<span class="ltx_text" id="S4.T2.4.6.4.2.1" style="font-size:70%;">MAGVIT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.6.4.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T2.4.6.4.2.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.6.4.3"><span class="ltx_text" id="S4.T2.4.6.4.3.1" style="font-size:70%;">306M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.6.4.4"><span class="ltx_text" id="S4.T2.4.6.4.4.1" style="font-size:70%;">76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.6.4.5"><span class="ltx_text" id="S4.T2.4.6.4.5.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.6.4.6"><span class="ltx_text" id="S4.T2.4.6.4.6.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.7.5.1">
<span class="ltx_text" id="S4.T2.4.7.5.1.1" style="font-size:70%;">MAGVIT-v2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.7.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S4.T2.4.7.5.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.7.5.2"><span class="ltx_text" id="S4.T2.4.7.5.2.1" style="font-size:70%;">840M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.7.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.7.5.3.1" style="font-size:70%;">58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.7.5.4"><span class="ltx_text" id="S4.T2.4.7.5.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.5.5"><span class="ltx_text" id="S4.T2.4.7.5.5.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.8.6.1" rowspan="8"><span class="ltx_text" id="S4.T2.4.8.6.1.1" style="font-size:70%;">AR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.8.6.2">
<span class="ltx_text" id="S4.T2.4.8.6.2.1" style="font-size:70%;">CogVideo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.8.6.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T2.4.8.6.2.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.8.6.3"><span class="ltx_text" id="S4.T2.4.8.6.3.1" style="font-size:70%;">9.4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.8.6.4"><span class="ltx_text" id="S4.T2.4.8.6.4.1" style="font-size:70%;">626</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.8.6.5"><span class="ltx_text" id="S4.T2.4.8.6.5.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.8.6.6"><span class="ltx_text" id="S4.T2.4.8.6.6.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.9.7.1">
<span class="ltx_text" id="S4.T2.4.9.7.1.1" style="font-size:70%;">TATS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.9.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T2.4.9.7.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.9.7.2"><span class="ltx_text" id="S4.T2.4.9.7.2.1" style="font-size:70%;">321M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.9.7.3"><span class="ltx_text" id="S4.T2.4.9.7.3.1" style="font-size:70%;">332</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.9.7.4"><span class="ltx_text" id="S4.T2.4.9.7.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.9.7.5"><span class="ltx_text" id="S4.T2.4.9.7.5.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.10.8.1">
<span class="ltx_text" id="S4.T2.4.10.8.1.1" style="font-size:70%;">OmniTokenizer </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.10.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S4.T2.4.10.8.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.10.8.2"><span class="ltx_text" id="S4.T2.4.10.8.2.1" style="font-size:70%;">650M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.10.8.3"><span class="ltx_text" id="S4.T2.4.10.8.3.1" style="font-size:70%;">191</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.10.8.4"><span class="ltx_text" id="S4.T2.4.10.8.4.1" style="font-size:70%;">5120</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.10.8.5"><span class="ltx_text" id="S4.T2.4.10.8.5.1" style="font-size:70%;">336.70</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.11.9.1">
<span class="ltx_text" id="S4.T2.4.11.9.1.1" style="font-size:70%;">MAGVIT-v2-AR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.11.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S4.T2.4.11.9.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.11.9.2"><span class="ltx_text" id="S4.T2.4.11.9.2.1" style="font-size:70%;">840M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.11.9.3"><span class="ltx_text" id="S4.T2.4.11.9.3.1" style="font-size:70%;">109</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.11.9.4"><span class="ltx_text" id="S4.T2.4.11.9.4.1" style="font-size:70%;">1280</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.11.9.5"><span class="ltx_text" id="S4.T2.4.11.9.5.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.12.10.1">
<span class="ltx_text" id="S4.T2.4.12.10.1.1" style="font-size:70%;">LARP-L-Long </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.12.10.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S4.T2.4.12.10.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.12.10.2"><span class="ltx_text" id="S4.T2.4.12.10.2.1" style="font-size:70%;">343M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.12.10.3"><span class="ltx_text" id="S4.T2.4.12.10.3.1" style="font-size:70%;">102</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.12.10.4"><span class="ltx_text" id="S4.T2.4.12.10.4.1" style="font-size:70%;">1280</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.12.10.5"><span class="ltx_text" id="S4.T2.4.12.10.5.1" style="font-size:70%;">44.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.13.11.1">
<span class="ltx_text" id="S4.T2.4.13.11.1.1" style="font-size:70%;">PAR-XL-1× </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.13.11.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T2.4.13.11.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.13.11.2"><span class="ltx_text" id="S4.T2.4.13.11.2.1" style="font-size:70%;">792M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.13.11.3"><span class="ltx_text" id="S4.T2.4.13.11.3.1" style="font-size:70%;">94.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.13.11.4"><span class="ltx_text" id="S4.T2.4.13.11.4.1" style="font-size:70%;">1280</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.13.11.5"><span class="ltx_text" id="S4.T2.4.13.11.5.1" style="font-size:70%;">43.30</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.14.12.1">
<span class="ltx_text" id="S4.T2.4.14.12.1.1" style="font-size:70%;">PAR-XL-4× </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.14.12.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T2.4.14.12.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.14.12.2"><span class="ltx_text" id="S4.T2.4.14.12.2.1" style="font-size:70%;">792M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.14.12.3"><span class="ltx_text" id="S4.T2.4.14.12.3.1" style="font-size:70%;">99.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.14.12.4"><span class="ltx_text" id="S4.T2.4.14.12.4.1" style="font-size:70%;">323</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.14.12.5"><span class="ltx_text" id="S4.T2.4.14.12.5.1" style="font-size:70%;">11.27</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.15.13.1">
<span class="ltx_text" id="S4.T2.4.15.13.1.1" style="font-size:70%;">PAR-XL-16× </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.4.15.13.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T2.4.15.13.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.15.13.2"><span class="ltx_text" id="S4.T2.4.15.13.2.1" style="font-size:70%;">792M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.15.13.3"><span class="ltx_text" id="S4.T2.4.15.13.3.1" style="font-size:70%;">103.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.15.13.4"><span class="ltx_text" id="S4.T2.4.15.13.4.1" style="font-size:70%;">95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.15.13.5"><span class="ltx_text" id="S4.T2.4.15.13.5.1" style="font-size:70%;">3.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.16.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.4.16.14.1" rowspan="2"><span class="ltx_text" id="S4.T2.4.16.14.1.1" style="font-size:70%;">Ours</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.4.16.14.2"><span class="ltx_text" id="S4.T2.4.16.14.2.1" style="font-size:70%;">NAR-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.16.14.3"><span class="ltx_text" id="S4.T2.4.16.14.3.1" style="font-size:70%;">369M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.16.14.4"><span class="ltx_text" id="S4.T2.4.16.14.4.1" style="font-size:70%;">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.16.14.5"><span class="ltx_text" id="S4.T2.4.16.14.5.1" style="font-size:70%;">34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.16.14.6"><span class="ltx_text ltx_font_bold" id="S4.T2.4.16.14.6.1" style="font-size:70%;">1.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.4.2.1">
<span class="ltx_text" id="S4.T2.4.2.1.1" style="font-size:70%;">NAR-LP</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T2.4.2.1.m1.1"><semantics id="S4.T2.4.2.1.m1.1a"><mo id="S4.T2.4.2.1.m1.1.1" mathsize="70%" xref="S4.T2.4.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.2.1.m1.1b"><ci id="S4.T2.4.2.1.m1.1.1.cmml" xref="S4.T2.4.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.2.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.2.1.m1.1d">†</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.4.2.2"><span class="ltx_text" id="S4.T2.4.2.2.1" style="font-size:70%;">694M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.4.2.3"><span class="ltx_text" id="S4.T2.4.2.3.1" style="font-size:70%;">71.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.4.2.4"><span class="ltx_text" id="S4.T2.4.2.4.1" style="font-size:70%;">34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.2.5"><span class="ltx_text" id="S4.T2.4.2.5.1" style="font-size:70%;">1.30</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a quantitative comparison of different models on the GenEval benchmark, a standardized evaluation for text-to-image generation.  The table shows how various models perform across different aspects of image generation, such as the ability to generate images corresponding to counts, objects (single and two), and colors specified in the text prompts.  It also reports overall performance scores, providing a comprehensive assessment of each model's accuracy and effectiveness in understanding and translating textual descriptions into visual representations. The results highlighted in this table are particularly useful for comparing the performance of different models on a diverse range of text-to-image generation tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative evaluation on the GenEval benchmark. ††\dagger† denotes the results are reported by [16].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.1"><span class="ltx_text" id="S4.T3.4.2.3.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.2"><span class="ltx_text" id="S4.T3.4.2.3.1.2.1" style="font-size:90%;">Params</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.3"><span class="ltx_text" id="S4.T3.4.2.3.1.3.1" style="font-size:90%;">Training Data</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.4"><span class="ltx_text" id="S4.T3.4.2.3.1.4.1" style="font-size:90%;">Counting</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.5"><span class="ltx_text" id="S4.T3.4.2.3.1.5.1" style="font-size:90%;">Two Object</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.6"><span class="ltx_text" id="S4.T3.4.2.3.1.6.1" style="font-size:90%;">Single Object</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.7"><span class="ltx_text" id="S4.T3.4.2.3.1.7.1" style="font-size:90%;">Colors</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.8"><span class="ltx_text" id="S4.T3.4.2.3.1.8.1" style="font-size:90%;">Overall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.2.3.1.9">
<table class="ltx_tabular ltx_align_middle" id="S4.T3.4.2.3.1.9.1">
<tr class="ltx_tr" id="S4.T3.4.2.3.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.2.3.1.9.1.1.1"><span class="ltx_text" id="S4.T3.4.2.3.1.9.1.1.1.1" style="font-size:90%;">Throughput</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.3.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.2.3.1.9.1.2.1"><span class="ltx_text" id="S4.T3.4.2.3.1.9.1.2.1.1" style="font-size:90%;">(img/s)</span></td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.1">
<span class="ltx_text" id="S4.T3.3.1.1.1.1" style="font-size:90%;">LlamaGen-XL</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T3.3.1.1.1.m1.1"><semantics id="S4.T3.3.1.1.1.m1.1a"><mo id="S4.T3.3.1.1.1.m1.1.1" mathsize="90%" xref="S4.T3.3.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.1.m1.1b"><ci id="S4.T3.3.1.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.1.m1.1d">†</annotation></semantics></math><span class="ltx_text" id="S4.T3.3.1.1.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.3.1.1.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S4.T3.3.1.1.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.2"><span class="ltx_text" id="S4.T3.3.1.1.2.1" style="font-size:90%;">0.8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.3"><span class="ltx_text" id="S4.T3.3.1.1.3.1" style="font-size:90%;">60M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.4"><span class="ltx_text" id="S4.T3.3.1.1.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.5"><span class="ltx_text" id="S4.T3.3.1.1.5.1" style="font-size:90%;">0.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.6"><span class="ltx_text" id="S4.T3.3.1.1.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.7"><span class="ltx_text" id="S4.T3.3.1.1.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.8"><span class="ltx_text" id="S4.T3.3.1.1.8.1" style="font-size:90%;">0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.1.9"><span class="ltx_text" id="S4.T3.3.1.1.9.1" style="font-size:90%;">3.40</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.2">
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.1">
<span class="ltx_text" id="S4.T3.4.2.2.1.1" style="font-size:90%;">Chameleon</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T3.4.2.2.1.m1.1"><semantics id="S4.T3.4.2.2.1.m1.1a"><mo id="S4.T3.4.2.2.1.m1.1.1" mathsize="90%" xref="S4.T3.4.2.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.2.1.m1.1b"><ci id="S4.T3.4.2.2.1.m1.1.1.cmml" xref="S4.T3.4.2.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.2.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.2.1.m1.1d">†</annotation></semantics></math><span class="ltx_text" id="S4.T3.4.2.2.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.2.2.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S4.T3.4.2.2.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.2"><span class="ltx_text" id="S4.T3.4.2.2.2.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.3"><span class="ltx_text" id="S4.T3.4.2.2.3.1" style="font-size:90%;">1.4B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.4"><span class="ltx_text" id="S4.T3.4.2.2.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.5"><span class="ltx_text" id="S4.T3.4.2.2.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.6"><span class="ltx_text" id="S4.T3.4.2.2.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.7"><span class="ltx_text" id="S4.T3.4.2.2.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.8"><span class="ltx_text" id="S4.T3.4.2.2.8.1" style="font-size:90%;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.2.9"><span class="ltx_text" id="S4.T3.4.2.2.9.1" style="font-size:90%;">0.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.4.1">
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.1">
<span class="ltx_text" id="S4.T3.4.2.4.1.1.1" style="font-size:90%;">SDv1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.4.2.4.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10696v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.T3.4.2.4.1.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.2"><span class="ltx_text" id="S4.T3.4.2.4.1.2.1" style="font-size:90%;">0.9B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.3"><span class="ltx_text" id="S4.T3.4.2.4.1.3.1" style="font-size:90%;">2B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.4.1.4.1" style="font-size:90%;">0.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.4.1.5.1" style="font-size:90%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.6"><span class="ltx_text" id="S4.T3.4.2.4.1.6.1" style="font-size:90%;">0.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.7"><span class="ltx_text" id="S4.T3.4.2.4.1.7.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.8"><span class="ltx_text" id="S4.T3.4.2.4.1.8.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.1.9"><span class="ltx_text" id="S4.T3.4.2.4.1.9.1" style="font-size:90%;">0.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.5.2">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.1"><span class="ltx_text" id="S4.T3.4.2.5.2.1.1" style="font-size:90%;">NAR-XL</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.2"><span class="ltx_text" id="S4.T3.4.2.5.2.2.1" style="font-size:90%;">0.8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.5.2.3.1" style="font-size:90%;">6M</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.4"><span class="ltx_text" id="S4.T3.4.2.5.2.4.1" style="font-size:90%;">0.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.5"><span class="ltx_text" id="S4.T3.4.2.5.2.5.1" style="font-size:90%;">0.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.5.2.6.1" style="font-size:90%;">0.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.5.2.7.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.5.2.8.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.4.2.5.2.9"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.5.2.9.1" style="font-size:90%;">15.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the effect of using dimension-oriented decoding heads in the NAR model for image generation.  It compares the performance of the NAR model with and without dimension-oriented decoding heads, evaluated on the ImageNet 256x256 benchmark. The results show the FID scores and the number of steps taken for generation.  The 'NTP' (next-token prediction) paradigm is used as a baseline for comparison. The comparison highlights the impact of the proposed dimension-oriented heads on the model's performance in terms of both image quality (FID) and efficiency (number of steps).
> <details>
> <summary>read the caption</summary>
> Table 4: The effect of dimension-oriented decoding heads evaluated on ImageNet 256×256256256256\times 256256 × 256 benchmark. Here, “NTP” denotes the next-token prediction paradigm.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.4.2.3.1.9.1">
<tr class="ltx_tr" id="S4.T3.4.2.3.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.2.3.1.9.1.1.1"><span class="ltx_text" id="S4.T3.4.2.3.1.9.1.1.1.1" style="font-size:90%;">Throughput</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.3.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.2.3.1.9.1.2.1"><span class="ltx_text" id="S4.T3.4.2.3.1.9.1.2.1.1" style="font-size:90%;">(img/s)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different configurations for decoding heads in the Neighboring Autoregressive Modeling (NAR) method, specifically focusing on their impact on the quality of image generation on the ImageNet 256x256 dataset.  The experiment uses a classifier-free guidance of 2.0.  The configurations vary in which decoding heads are used for overlapping tokens (i.e., tokens that are predicted by more than one head). The table shows the FID (Fréchet Inception Distance) and IS (Inception Score) for each configuration, lower FID indicating better quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison of various decoding head configurations on ImageNet 256×256256256256\times 256256 × 256. Here, “Head” denotes the decoding heads to use for the overlapped region. Results are obtained with a classifier-free guidance of 2.0.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10696/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10696/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}