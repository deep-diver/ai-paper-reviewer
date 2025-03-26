---
title: "Scaling Vision Pre-Training to 4K Resolution"
summary: "PS3 scales CLIP vision pre-training to 4K resolution with near-constant cost, achieving state-of-the-art performance in multi-modal LLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 UC Berkeley",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19903 {{< /keyword >}}
{{< keyword icon="writer" >}} Baifeng Shi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19903" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19903" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19903/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current vision pre-training is limited to low resolutions due to the high computational cost of processing larger images. This limitation hinders the perception of visual details crucial for many real-world tasks. To address this, the paper introduces PS3, a new approach that scales CLIP-style vision pre-training to 4K resolution while maintaining a near-constant cost. The key idea is to selectively process local regions and contrasting them with detailed captions, reducing the computational overhead significantly. 



PS3 enables the development of VILA-HD, an MLLM. Experiments show VILA-HD achieves better high-resolution visual perception using fewer tokens.  PS3 enables scaling properties of VILA-HD, including free resolution scaling & test-time compute scaling for better performance. The paper also introduces 4KPro, a new benchmark of image QA at 4K resolution, where VILA-HD outperforms existing MLLMs. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PS3 enables scaling CLIP-style vision pre-training to 4K resolution with near-constant cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VILA-HD, an MLLM using PS3, achieves state-of-the-art performance and efficiency in high-resolution visual perception tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The introduced 4KPro benchmark reveals the limitations of current benchmarks in requiring 4K-resolution perception. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces PS3 to achieve **high-resolution perception with near-constant cost**, scales CLIP-style pre-training to 4K, and achieves **better performance & efficiency**, which can inspire future research about MLLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19903/x1.png)

> 🔼 Figure 1 illustrates the core concept of PS3 and its application in VILA-HD, highlighting its advantages over existing methods. The left panel contrasts regular vision models (e.g. SigLIP), which process images at low resolution (378x378 pixels) insufficient for tasks like stop sign detection, with PS3's ability to process high-resolution (4K) images efficiently.  PS3 achieves this via top-down patch selection, focusing only on relevant regions as specified by a text prompt.  The top-right panel shows the difference in training approach.  SigLIP uses costly global image-caption contrasting, while PS3 leverages local region-caption contrasting at high-resolution, resulting in a 79x reduction in computational cost.  Finally, the bottom-right panel showcases VILA-HD (using PS3 as the vision encoder), demonstrating superior performance and 2.96x speedup over Qwen2-VL on the 4KPro benchmark by selectively processing high-resolution image regions as determined by user prompts.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: Regular vision models such as SigLIP processes images at a low resolution (e.g., 378 ×\times× 378 pixels), which is not enough for many daily tasks such as spotting the stop sign while driving. In contrast, \modelis able to both encode low-res features and efficiently process high-res information of 4K-resolution images via top-down patch selection, i.e., selectively processing relevant patches based on any text prompt. Top Right: SigLIP is pre-trained by contrasting global vision features and global captions, which is costly for high-resolution images. \modelis pre-trained with additional contrast between local high-res features with local captions, enabling pre-training at 4K resolution with 79×\times× less cost than SigLIP. Bottom Right: VILA-HD with \modelas the vision encoder is able to select high-res regions to process based on the user prompt. VILA-HD outperforms state-of-the-art MLLMs such as Qwen2-VL [93] on the proposed 4KPro benchmark while achieving 2.96×\times× speedup.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.8">
<tr class="ltx_tr" id="S4.T1.5.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.5.1.2">
<span class="ltx_text" id="S4.T1.5.1.2.1"></span><span class="ltx_text" id="S4.T1.5.1.2.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.2.2.1">
<span class="ltx_tr" id="S4.T1.5.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.2.2.1.1.1">Vision</span></span>
<span class="ltx_tr" id="S4.T1.5.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.2.2.1.2.1">Encoder</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.2.3"></span><span class="ltx_text" id="S4.T1.5.1.2.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.5.1.3">
<span class="ltx_text" id="S4.T1.5.1.3.1"></span><span class="ltx_text" id="S4.T1.5.1.3.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.3.2.1">
<span class="ltx_tr" id="S4.T1.5.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.3.2.1.1.1">Max</span></span>
<span class="ltx_tr" id="S4.T1.5.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.3.2.1.2.1">Res.</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.3.3"></span><span class="ltx_text" id="S4.T1.5.1.3.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T1.5.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.5.1.4.1">
<span class="ltx_p" id="S4.T1.5.1.4.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.5.1.4.1.1.1"></span><span class="ltx_text" id="S4.T1.5.1.4.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.4.1.1.2.1">
<span class="ltx_tr" id="S4.T1.5.1.4.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.4.1.1.2.1.1.1">#HR</span></span>
<span class="ltx_tr" id="S4.T1.5.1.4.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.4.1.1.2.1.2.1">Token</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.4.1.1.3"></span><span class="ltx_text" id="S4.T1.5.1.4.1.1.4" style="font-size:90%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T1.5.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.5.1.5.1">
<span class="ltx_p" id="S4.T1.5.1.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.5.1.5.1.1.1"></span><span class="ltx_text" id="S4.T1.5.1.5.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.5.1.1.2.1">
<span class="ltx_tr" id="S4.T1.5.1.5.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.5.1.1.2.1.1.1">Select</span></span>
<span class="ltx_tr" id="S4.T1.5.1.5.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.5.1.1.2.1.2.1">(Train)</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.5.1.1.3"></span><span class="ltx_text" id="S4.T1.5.1.5.1.1.4" style="font-size:90%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T1.5.1.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.5.1.6.1">
<span class="ltx_p" id="S4.T1.5.1.6.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.5.1.6.1.1.1"></span><span class="ltx_text" id="S4.T1.5.1.6.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.6.1.1.2.1">
<span class="ltx_tr" id="S4.T1.5.1.6.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.6.1.1.2.1.1.1">Select</span></span>
<span class="ltx_tr" id="S4.T1.5.1.6.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.1.6.1.1.2.1.2.1">(Test)</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.6.1.1.3"></span><span class="ltx_text" id="S4.T1.5.1.6.1.1.4" style="font-size:90%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.7">
<span class="ltx_text" id="S4.T1.5.1.7.1"></span><span class="ltx_text" id="S4.T1.5.1.7.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.5.1.7.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.7.3.1">
<span class="ltx_tr" id="S4.T1.5.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.7.3.1.1.1">Text</span></span>
<span class="ltx_tr" id="S4.T1.5.1.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.7.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.7.4"></span><span class="ltx_text" id="S4.T1.5.1.7.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.8">
<span class="ltx_text" id="S4.T1.5.1.8.1"></span><span class="ltx_text" id="S4.T1.5.1.8.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.5.1.8.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.8.3.1">
<span class="ltx_tr" id="S4.T1.5.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.8.3.1.1.1">Chart</span></span>
<span class="ltx_tr" id="S4.T1.5.1.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.8.3.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.8.4"></span><span class="ltx_text" id="S4.T1.5.1.8.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.9">
<span class="ltx_text" id="S4.T1.5.1.9.1"></span><span class="ltx_text" id="S4.T1.5.1.9.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.5.1.9.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.9.3.1">
<span class="ltx_tr" id="S4.T1.5.1.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.9.3.1.1.1">Doc</span></span>
<span class="ltx_tr" id="S4.T1.5.1.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.9.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.9.4"></span><span class="ltx_text" id="S4.T1.5.1.9.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.10">
<span class="ltx_text" id="S4.T1.5.1.10.1"></span><span class="ltx_text" id="S4.T1.5.1.10.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.5.1.10.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.10.3.1">
<span class="ltx_tr" id="S4.T1.5.1.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.10.3.1.1.1">Info</span></span>
<span class="ltx_tr" id="S4.T1.5.1.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.10.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.10.4"></span><span class="ltx_text" id="S4.T1.5.1.10.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.11">
<span class="ltx_text" id="S4.T1.5.1.11.1"></span><span class="ltx_text" id="S4.T1.5.1.11.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.5.1.11.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.11.3.1">
<span class="ltx_tr" id="S4.T1.5.1.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.11.3.1.1.1">OCR</span></span>
<span class="ltx_tr" id="S4.T1.5.1.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.11.3.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.11.4"></span><span class="ltx_text" id="S4.T1.5.1.11.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.1">
<span class="ltx_text" id="S4.T1.5.1.1.2"></span><span class="ltx_text" id="S4.T1.5.1.1.3" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.5.1.1.1" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.1.1.1">
<span class="ltx_tr" id="S4.T1.5.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.1.1.1.1.1">V<sup class="ltx_sup" id="S4.T1.5.1.1.1.1.1.1.1">∗</sup></span></span>
<span class="ltx_tr" id="S4.T1.5.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.1.1.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.1.4"></span><span class="ltx_text" id="S4.T1.5.1.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.12">
<span class="ltx_text" id="S4.T1.5.1.12.1"></span><span class="ltx_text" id="S4.T1.5.1.12.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T1.5.1.12.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.1.12.3.1">
<span class="ltx_tr" id="S4.T1.5.1.12.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.12.3.1.1.1">Real</span></span>
<span class="ltx_tr" id="S4.T1.5.1.12.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.1.12.3.1.2.1">World</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.1.12.4"></span><span class="ltx_text" id="S4.T1.5.1.12.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.1.13"><span class="ltx_text ltx_font_italic" id="S4.T1.5.1.13.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.5.1">
<span class="ltx_text" id="S4.T1.8.5.1.1" style="font-size:90%;">SigLIP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.8.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib110" title=""><span class="ltx_text" style="font-size:90%;">110</span></a><span class="ltx_text" id="S4.T1.8.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.5.2"><span class="ltx_text" id="S4.T1.8.5.2.1" style="font-size:90%;">378</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.8.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.5.3.1">
<span class="ltx_p" id="S4.T1.8.5.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.5.3.1.1.1" style="font-size:90%;">0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.8.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.5.4.1">
<span class="ltx_p" id="S4.T1.8.5.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.5.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.8.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.5.5.1">
<span class="ltx_p" id="S4.T1.8.5.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.5.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.6"><span class="ltx_text" id="S4.T1.8.5.6.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.7"><span class="ltx_text" id="S4.T1.8.5.7.1" style="font-size:90%;">56.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.8"><span class="ltx_text" id="S4.T1.8.5.8.1" style="font-size:90%;">51.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.9"><span class="ltx_text" id="S4.T1.8.5.9.1" style="font-size:90%;">30.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.10"><span class="ltx_text" id="S4.T1.8.5.10.1" style="font-size:90%;">387</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.11"><span class="ltx_text" id="S4.T1.8.5.11.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.12"><span class="ltx_text" id="S4.T1.8.5.12.1" style="font-size:90%;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.5.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.5.13.1" style="font-size:90%;">49.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.2">
<span class="ltx_text" id="S4.T1.6.2.2.1" style="font-size:90%;">AnyRes </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S4.T1.6.2.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.3"><span class="ltx_text" id="S4.T1.6.2.3.1" style="font-size:90%;">756</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.6.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.2.1.1">
<span class="ltx_p" id="S4.T1.6.2.1.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.6.2.1.1.1.1" style="font-size:90%;">784</span><sup class="ltx_sup" id="S4.T1.6.2.1.1.1.2"><span class="ltx_text" id="S4.T1.6.2.1.1.1.2.1" style="font-size:90%;">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.6.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.2.4.1">
<span class="ltx_p" id="S4.T1.6.2.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.6.2.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.6.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.2.5.1">
<span class="ltx_p" id="S4.T1.6.2.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.6.2.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.6"><span class="ltx_text" id="S4.T1.6.2.6.1" style="font-size:90%;">65.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.7"><span class="ltx_text" id="S4.T1.6.2.7.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.8"><span class="ltx_text" id="S4.T1.6.2.8.1" style="font-size:90%;">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.9"><span class="ltx_text" id="S4.T1.6.2.9.1" style="font-size:90%;">32.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.10"><span class="ltx_text" id="S4.T1.6.2.10.1" style="font-size:90%;">416</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.11"><span class="ltx_text" id="S4.T1.6.2.11.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.12"><span class="ltx_text" id="S4.T1.6.2.12.1" style="font-size:90%;">59.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.13"><span class="ltx_text ltx_font_italic" id="S4.T1.6.2.13.1" style="font-size:90%;">53.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.6">
<td class="ltx_td ltx_align_left" id="S4.T1.8.6.1">
<span class="ltx_ERROR undefined" id="S4.T1.8.6.1.1">\stwo</span><span class="ltx_text" id="S4.T1.8.6.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.8.6.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S4.T1.8.6.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.6.2"><span class="ltx_text" id="S4.T1.8.6.2.1" style="font-size:90%;">756</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.6.3.1">
<span class="ltx_p" id="S4.T1.8.6.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.6.3.1.1.1" style="font-size:90%;">729</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.6.4.1">
<span class="ltx_p" id="S4.T1.8.6.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.6.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.6.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.6.5.1">
<span class="ltx_p" id="S4.T1.8.6.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.6.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.6"><span class="ltx_text" id="S4.T1.8.6.6.1" style="font-size:90%;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.7"><span class="ltx_text" id="S4.T1.8.6.7.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.8"><span class="ltx_text" id="S4.T1.8.6.8.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.9"><span class="ltx_text" id="S4.T1.8.6.9.1" style="font-size:90%;">32.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.10"><span class="ltx_text" id="S4.T1.8.6.10.1" style="font-size:90%;">471</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.11"><span class="ltx_text" id="S4.T1.8.6.11.1" style="font-size:90%;">53.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.12"><span class="ltx_text" id="S4.T1.8.6.12.1" style="font-size:90%;">59.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.6.13.1" style="font-size:90%;">55.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.7">
<td class="ltx_td" id="S4.T1.8.7.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.7.2"><span class="ltx_text" id="S4.T1.8.7.2.1" style="font-size:90%;background-color:#FBE5D6;">756</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.7.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.7.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.7.3.1.1.1" style="font-size:90%;">320</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.7.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.7.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.7.4.1.1.1" style="font-size:90%;">44%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.7.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.7.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.7.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.7.5.1.1.1" style="font-size:90%;">44%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.6"><span class="ltx_text" id="S4.T1.8.7.6.1" style="font-size:90%;background-color:#FBE5D6;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.7"><span class="ltx_text" id="S4.T1.8.7.7.1" style="font-size:90%;background-color:#FBE5D6;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.8"><span class="ltx_text" id="S4.T1.8.7.8.1" style="font-size:90%;background-color:#FBE5D6;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.9"><span class="ltx_text" id="S4.T1.8.7.9.1" style="font-size:90%;background-color:#FBE5D6;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.10"><span class="ltx_text" id="S4.T1.8.7.10.1" style="font-size:90%;background-color:#FBE5D6;">460</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.11"><span class="ltx_text" id="S4.T1.8.7.11.1" style="font-size:90%;background-color:#FBE5D6;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.12"><span class="ltx_text" id="S4.T1.8.7.12.1" style="font-size:90%;background-color:#FBE5D6;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.7.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.7.13.1" style="font-size:90%;background-color:#FBE5D6;">55.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left" id="S4.T1.8.8.1"><span class="ltx_text" id="S4.T1.8.8.1.1" style="font-size:90%;background-color:#FBE5D6;"><span class="ltx_ERROR undefined" id="S4.T1.8.8.1.1.1">\model</span></span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.8.2"><span class="ltx_text" id="S4.T1.8.8.2.1" style="font-size:90%;background-color:#FBE5D6;">756</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.8.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.8.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.8.3.1.1.1" style="font-size:90%;">729</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.8.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.8.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.8.4.1.1.1" style="font-size:90%;">100%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.8.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.8.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.8.5.1.1.1" style="font-size:90%;">100%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.6"><span class="ltx_text" id="S4.T1.8.8.6.1" style="font-size:90%;background-color:#FBE5D6;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.7"><span class="ltx_text" id="S4.T1.8.8.7.1" style="font-size:90%;background-color:#FBE5D6;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8"><span class="ltx_text" id="S4.T1.8.8.8.1" style="font-size:90%;background-color:#FBE5D6;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.9"><span class="ltx_text" id="S4.T1.8.8.9.1" style="font-size:90%;background-color:#FBE5D6;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.10"><span class="ltx_text" id="S4.T1.8.8.10.1" style="font-size:90%;background-color:#FBE5D6;">462</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.11"><span class="ltx_text" id="S4.T1.8.8.11.1" style="font-size:90%;background-color:#FBE5D6;">56.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.12"><span class="ltx_text" id="S4.T1.8.8.12.1" style="font-size:90%;background-color:#FBE5D6;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.8.13.1" style="font-size:90%;background-color:#FBE5D6;">56.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.7.3.2">
<span class="ltx_text" id="S4.T1.7.3.2.1" style="font-size:90%;">AnyRes </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S4.T1.7.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.7.3.3"><span class="ltx_text" id="S4.T1.7.3.3.1" style="font-size:90%;">1512</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.7.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.7.3.1.1">
<span class="ltx_p" id="S4.T1.7.3.1.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.7.3.1.1.1.1" style="font-size:90%;">3136</span><sup class="ltx_sup" id="S4.T1.7.3.1.1.1.2"><span class="ltx_text" id="S4.T1.7.3.1.1.1.2.1" style="font-size:90%;">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.7.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.7.3.4.1">
<span class="ltx_p" id="S4.T1.7.3.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.7.3.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.7.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.7.3.5.1">
<span class="ltx_p" id="S4.T1.7.3.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.7.3.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.6"><span class="ltx_text" id="S4.T1.7.3.6.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.7"><span class="ltx_text" id="S4.T1.7.3.7.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.8"><span class="ltx_text" id="S4.T1.7.3.8.1" style="font-size:90%;">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.9"><span class="ltx_text" id="S4.T1.7.3.9.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.10"><span class="ltx_text" id="S4.T1.7.3.10.1" style="font-size:90%;">468</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.11"><span class="ltx_text" id="S4.T1.7.3.11.1" style="font-size:90%;">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.12"><span class="ltx_text" id="S4.T1.7.3.12.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.3.13"><span class="ltx_text ltx_font_italic" id="S4.T1.7.3.13.1" style="font-size:90%;">56.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.9">
<td class="ltx_td ltx_align_left" id="S4.T1.8.9.1">
<span class="ltx_ERROR undefined" id="S4.T1.8.9.1.1">\stwo</span><span class="ltx_text" id="S4.T1.8.9.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.8.9.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S4.T1.8.9.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.9.2"><span class="ltx_text" id="S4.T1.8.9.2.1" style="font-size:90%;">1512</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.9.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.9.3.1">
<span class="ltx_p" id="S4.T1.8.9.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.9.3.1.1.1" style="font-size:90%;">2916</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.9.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.9.4.1">
<span class="ltx_p" id="S4.T1.8.9.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.9.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.9.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.9.5.1">
<span class="ltx_p" id="S4.T1.8.9.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.9.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.6"><span class="ltx_text" id="S4.T1.8.9.6.1" style="font-size:90%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.7"><span class="ltx_text" id="S4.T1.8.9.7.1" style="font-size:90%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.8"><span class="ltx_text" id="S4.T1.8.9.8.1" style="font-size:90%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.9"><span class="ltx_text" id="S4.T1.8.9.9.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.10"><span class="ltx_text" id="S4.T1.8.9.10.1" style="font-size:90%;">526</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.11"><span class="ltx_text" id="S4.T1.8.9.11.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.12"><span class="ltx_text" id="S4.T1.8.9.12.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.9.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.9.13.1" style="font-size:90%;">60.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.10">
<td class="ltx_td" id="S4.T1.8.10.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.10.2"><span class="ltx_text" id="S4.T1.8.10.2.1" style="font-size:90%;background-color:#FBE5D6;">1512</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.10.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.10.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.10.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.10.3.1.1.1" style="font-size:90%;">729</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.10.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.10.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.10.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.10.4.1.1.1" style="font-size:90%;">20%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.10.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.10.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.10.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.10.5.1.1.1" style="font-size:90%;">20%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.6"><span class="ltx_text" id="S4.T1.8.10.6.1" style="font-size:90%;background-color:#FBE5D6;">67.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.7"><span class="ltx_text" id="S4.T1.8.10.7.1" style="font-size:90%;background-color:#FBE5D6;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.8"><span class="ltx_text" id="S4.T1.8.10.8.1" style="font-size:90%;background-color:#FBE5D6;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.9"><span class="ltx_text" id="S4.T1.8.10.9.1" style="font-size:90%;background-color:#FBE5D6;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.10"><span class="ltx_text" id="S4.T1.8.10.10.1" style="font-size:90%;background-color:#FBE5D6;">505</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.11"><span class="ltx_text" id="S4.T1.8.10.11.1" style="font-size:90%;background-color:#FBE5D6;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.12"><span class="ltx_text" id="S4.T1.8.10.12.1" style="font-size:90%;background-color:#FBE5D6;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.10.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.10.13.1" style="font-size:90%;background-color:#FBE5D6;">58.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.11">
<td class="ltx_td" id="S4.T1.8.11.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.11.2"><span class="ltx_text" id="S4.T1.8.11.2.1" style="font-size:90%;background-color:#FBE5D6;">1512</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.11.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.11.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.11.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.11.3.1.1.1" style="font-size:90%;">1600</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.11.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.11.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.11.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.11.4.1.1.1" style="font-size:90%;">20%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.11.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.11.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.11.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.11.5.1.1.1" style="font-size:90%;">44%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.6"><span class="ltx_text" id="S4.T1.8.11.6.1" style="font-size:90%;background-color:#FBE5D6;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.7"><span class="ltx_text" id="S4.T1.8.11.7.1" style="font-size:90%;background-color:#FBE5D6;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.8"><span class="ltx_text" id="S4.T1.8.11.8.1" style="font-size:90%;background-color:#FBE5D6;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.9"><span class="ltx_text" id="S4.T1.8.11.9.1" style="font-size:90%;background-color:#FBE5D6;">35.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.10"><span class="ltx_text" id="S4.T1.8.11.10.1" style="font-size:90%;background-color:#FBE5D6;">515</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.11"><span class="ltx_text" id="S4.T1.8.11.11.1" style="font-size:90%;background-color:#FBE5D6;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.12"><span class="ltx_text" id="S4.T1.8.11.12.1" style="font-size:90%;background-color:#FBE5D6;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.11.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.11.13.1" style="font-size:90%;background-color:#FBE5D6;">59.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.12">
<td class="ltx_td" id="S4.T1.8.12.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.12.2"><span class="ltx_text" id="S4.T1.8.12.2.1" style="font-size:90%;background-color:#FBE5D6;">1512</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.12.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.12.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.12.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.12.3.1.1.1" style="font-size:90%;">1600</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.12.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.12.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.12.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.12.4.1.1.1" style="font-size:90%;">44%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.12.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.12.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.12.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.12.5.1.1.1" style="font-size:90%;">44%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.6"><span class="ltx_text" id="S4.T1.8.12.6.1" style="font-size:90%;background-color:#FBE5D6;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.7"><span class="ltx_text" id="S4.T1.8.12.7.1" style="font-size:90%;background-color:#FBE5D6;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.8"><span class="ltx_text" id="S4.T1.8.12.8.1" style="font-size:90%;background-color:#FBE5D6;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.9"><span class="ltx_text" id="S4.T1.8.12.9.1" style="font-size:90%;background-color:#FBE5D6;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.10"><span class="ltx_text" id="S4.T1.8.12.10.1" style="font-size:90%;background-color:#FBE5D6;">509</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.11"><span class="ltx_text" id="S4.T1.8.12.11.1" style="font-size:90%;background-color:#FBE5D6;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.12"><span class="ltx_text" id="S4.T1.8.12.12.1" style="font-size:90%;background-color:#FBE5D6;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.12.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.12.13.1" style="font-size:90%;background-color:#FBE5D6;">61.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.13">
<td class="ltx_td" id="S4.T1.8.13.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.13.2"><span class="ltx_text" id="S4.T1.8.13.2.1" style="font-size:90%;background-color:#FBE5D6;">1512</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.13.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.13.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.13.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.13.3.1.1.1" style="font-size:90%;">3645</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.13.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.13.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.13.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.13.4.1.1.1" style="font-size:90%;">44%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.13.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.13.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.13.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.13.5.1.1.1" style="font-size:90%;">100%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.6"><span class="ltx_text" id="S4.T1.8.13.6.1" style="font-size:90%;background-color:#FBE5D6;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.7"><span class="ltx_text" id="S4.T1.8.13.7.1" style="font-size:90%;background-color:#FBE5D6;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.8"><span class="ltx_text" id="S4.T1.8.13.8.1" style="font-size:90%;background-color:#FBE5D6;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.9"><span class="ltx_text" id="S4.T1.8.13.9.1" style="font-size:90%;background-color:#FBE5D6;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.10"><span class="ltx_text" id="S4.T1.8.13.10.1" style="font-size:90%;background-color:#FBE5D6;">522</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.11"><span class="ltx_text" id="S4.T1.8.13.11.1" style="font-size:90%;background-color:#FBE5D6;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.12"><span class="ltx_text" id="S4.T1.8.13.12.1" style="font-size:90%;background-color:#FBE5D6;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.13.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.13.13.1" style="font-size:90%;background-color:#FBE5D6;">61.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.14" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left" id="S4.T1.8.14.1"><span class="ltx_text" id="S4.T1.8.14.1.1" style="font-size:90%;background-color:#FBE5D6;"><span class="ltx_ERROR undefined" id="S4.T1.8.14.1.1.1">\model</span></span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.14.2"><span class="ltx_text" id="S4.T1.8.14.2.1" style="font-size:90%;background-color:#FBE5D6;">1512</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.14.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.14.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.14.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.14.3.1.1.1" style="font-size:90%;">3645</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.14.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.14.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.14.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.14.4.1.1.1" style="font-size:90%;">100%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.14.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.14.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.14.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.14.5.1.1.1" style="font-size:90%;">100%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.6"><span class="ltx_text" id="S4.T1.8.14.6.1" style="font-size:90%;background-color:#FBE5D6;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.7"><span class="ltx_text" id="S4.T1.8.14.7.1" style="font-size:90%;background-color:#FBE5D6;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.8"><span class="ltx_text" id="S4.T1.8.14.8.1" style="font-size:90%;background-color:#FBE5D6;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.9"><span class="ltx_text" id="S4.T1.8.14.9.1" style="font-size:90%;background-color:#FBE5D6;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.10"><span class="ltx_text" id="S4.T1.8.14.10.1" style="font-size:90%;background-color:#FBE5D6;">534</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.11"><span class="ltx_text" id="S4.T1.8.14.11.1" style="font-size:90%;background-color:#FBE5D6;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.12"><span class="ltx_text" id="S4.T1.8.14.12.1" style="font-size:90%;background-color:#FBE5D6;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.14.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.14.13.1" style="font-size:90%;background-color:#FBE5D6;">63.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.4.2">
<span class="ltx_text" id="S4.T1.8.4.2.1" style="font-size:90%;">AnyRes </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.8.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S4.T1.8.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.8.4.3"><span class="ltx_text" id="S4.T1.8.4.3.1" style="font-size:90%;">3780</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.8.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.4.1.1">
<span class="ltx_p" id="S4.T1.8.4.1.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.4.1.1.1.1" style="font-size:90%;">19600</span><sup class="ltx_sup" id="S4.T1.8.4.1.1.1.2"><span class="ltx_text" id="S4.T1.8.4.1.1.1.2.1" style="font-size:90%;">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.8.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.4.4.1">
<span class="ltx_p" id="S4.T1.8.4.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.4.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.8.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.4.5.1">
<span class="ltx_p" id="S4.T1.8.4.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.4.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S4.T1.8.4.6"><span class="ltx_text" id="S4.T1.8.4.6.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.15">
<td class="ltx_td ltx_align_left" id="S4.T1.8.15.1">
<span class="ltx_ERROR undefined" id="S4.T1.8.15.1.1">\stwo</span><span class="ltx_text" id="S4.T1.8.15.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.8.15.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S4.T1.8.15.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.15.2"><span class="ltx_text" id="S4.T1.8.15.2.1" style="font-size:90%;">3780</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.15.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.15.3.1">
<span class="ltx_p" id="S4.T1.8.15.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.15.3.1.1.1" style="font-size:90%;">18225</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.15.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.15.4.1">
<span class="ltx_p" id="S4.T1.8.15.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.15.4.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.8.15.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.15.5.1">
<span class="ltx_p" id="S4.T1.8.15.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.15.5.1.1.1" style="font-size:90%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" colspan="8" id="S4.T1.8.15.6"><span class="ltx_text" id="S4.T1.8.15.6.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.16" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.8.16.1"><span class="ltx_ERROR undefined" id="S4.T1.8.16.1.1">\model</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.8.16.2"><span class="ltx_text" id="S4.T1.8.16.2.1" style="font-size:90%;background-color:#FBE5D6;">3780</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.8.16.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.16.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.16.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S4.T1.8.16.3.1.1.1" style="font-size:90%;">3840</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.8.16.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.16.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.16.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.16.4.1.1.1" style="font-size:90%;">18%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.8.16.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.16.5.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S4.T1.8.16.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S4.T1.8.16.5.1.1.1" style="font-size:90%;">18%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.6"><span class="ltx_text" id="S4.T1.8.16.6.1" style="font-size:90%;background-color:#FBE5D6;">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.7"><span class="ltx_text" id="S4.T1.8.16.7.1" style="font-size:90%;background-color:#FBE5D6;">70.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.8"><span class="ltx_text" id="S4.T1.8.16.8.1" style="font-size:90%;background-color:#FBE5D6;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.9"><span class="ltx_text" id="S4.T1.8.16.9.1" style="font-size:90%;background-color:#FBE5D6;">40.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.10"><span class="ltx_text" id="S4.T1.8.16.10.1" style="font-size:90%;background-color:#FBE5D6;">543</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.11"><span class="ltx_text" id="S4.T1.8.16.11.1" style="font-size:90%;background-color:#FBE5D6;">67.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.12"><span class="ltx_text" id="S4.T1.8.16.12.1" style="font-size:90%;background-color:#FBE5D6;">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.8.16.13"><span class="ltx_text ltx_font_italic" id="S4.T1.8.16.13.1" style="font-size:90%;background-color:#FBE5D6;">63.9</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive analysis of the scaling properties of the PS3 model within the VILA-HD framework. It examines various scaling scenarios by varying the pre-training resolution and the number of high-resolution patches selected during training and testing.  Key metrics include the number of high-resolution tokens fed into the multi-modal large language model (MLLM), the percentage of high-resolution patches selected during training and testing, and the average accuracy across multiple benchmarks.  The impact of different scaling strategies on overall performance and efficiency is evaluated, considering the trade-offs between resolution, compute cost, and accuracy. Note that due to the downsampling process in NVILA, the number of high-resolution tokens usually represents only a quarter of the selected patches.
> <details>
> <summary>read the caption</summary>
> Table 1: Full results of scaling properties of \modelon \vilamodel. #HR Token is the number of high-res tokens input to the MLLM. Select (Train) is the percentage of high-res patches \modelselects when training the MLLMs and Select (Test) is the selection ratio at test time. Note the number of HR tokens is usually 1/4 of the number of selected patches due to the 2×\times×2 downsampling connector in NVILA [61]. †#HR tokens for AnyRes depends on the input resolution and we report the maximum number of tokens.
> </details>





### In-depth insights


#### 4K Vision Unlock
**4K Vision Unlock** signifies a pivotal advancement in computer vision, potentially mirroring the transformative impact of high-resolution displays on human perception.** Unlocking 4K vision** for AI models could revolutionize fields requiring detailed visual analysis, such as medical imaging, autonomous driving, and remote sensing. Models could discern finer patterns, leading to more accurate diagnoses, safer navigation, and more precise environmental monitoring. This leap necessitates overcoming significant computational hurdles, primarily the quadratic or quartic increase in processing cost for CNNs and ViTs respectively. Efficient architectures, selective processing, and novel training paradigms are crucial to realizing the full potential of **4K vision** in AI, promising enhanced capabilities and broadened applications. The challenge lies not only in achieving **4K resolution** but also in ensuring the extracted information is relevant and efficiently utilized for downstream tasks, maximizing both accuracy and computational efficiency.

#### Scale-Selective
**Scale-selective processing** is crucial for balancing detail and computational cost in vision. The ability to selectively focus on different scales (resolutions) depending on the task is key. A model should discern overall context at lower resolutions while extracting fine-grained details at higher resolutions only when needed. This mimics human visual processing, improving efficiency and enabling the processing of large images at a reasonable cost. The optimal balance varies by task; dense information tasks benefit from lower-resolution, large-scale views, while tasks requiring localized understanding prefer high-resolution details. This adaptive approach is vital for handling complex visual information in real-world applications.

#### 4K Pro Benchmark
The research introduces "4KPro," a novel benchmark designed to evaluate **visual perception specifically at 4K resolution**, addressing a gap in existing benchmarks that don't fully leverage 4K capabilities. Existing benchmarks contain high-res images, but **the resolution needed to answer questions (MRR) is mostly under 1K**. 4KPro contains questions solvable at 4K, reflecting real-world tasks in autonomous vehicles, households, gaming, and UI. It is made of multi-choice questions. PS3 outperforms other proprietary or open-source models due to the improved quality brought by the high-res pre-training.

#### High-Res + Lo-Cost
The idea of "High-Res + Lo-Cost" is compelling, particularly in the context of visual processing. **High-resolution images are data-rich but computationally expensive.** Balancing this trade-off is crucial for real-time or resource-constrained applications. A system achieving this could leverage techniques like adaptive sampling, where only salient regions are processed at full resolution. **This requires intelligent algorithms to identify and prioritize these areas.** Furthermore, efficient compression and encoding schemes would be vital to reduce the overall data footprint. The system may also consider using lower-precision arithmetic for certain processing stages to further reduce costs. **Successfully integrating these strategies would unlock many possibilities**, allowing for more detailed scene understanding without sacrificing performance.

#### Localized Vision
**Localized vision** is a crucial aspect of visual understanding, particularly in tasks requiring fine-grained detail recognition. It moves beyond simply processing an entire image at a low resolution; instead, it involves strategically focusing on smaller, relevant regions within a high-resolution scene. This approach mirrors human visual attention, where we selectively process areas of interest rather than every pixel. The benefits are twofold: reduced computational cost and improved accuracy in tasks like object detection or text recognition. By disentangling the region size from image resolution, models can scale to handle ultra-high-resolution images without a quadratic increase in compute. Successfully implementing localized vision hinges on effectively selecting which regions to attend to, potentially using mechanisms like saliency detection or prompt-based selection to guide the focus. This is important because not all parts of an image may be relevant, and in order to achieve better efficiency we can selectively choose important regions. Furthermore, training strategies that emphasize contrastive learning between local image regions and corresponding descriptions, while adding mechanisms for reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19903/x2.png)

> 🔼 This figure illustrates the process of creating training data for the PS3 model.  It begins with a high-resolution image.  The image is first segmented into various regions using a segmentation model. Salient regions, identified as areas with small or densely packed segments, are then selected. Finally, a multi-modal language model (MLLM) generates a caption describing each of these salient regions. This process of segmentation, selection, and captioning creates training pairs of high-resolution image regions and their corresponding textual descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Curation of bounding boxes and captions of salient regions in the pre-training data. For each high-resolution image, we segment all the masks, detect salient regions with small or dense masks, and use an MLLM to generate captions about the local regions.
> </details>



![](https://arxiv.org/html/2503.19903/x3.png)

> 🔼 Figure 3 shows an example of the pre-training data used for PS3. Each instance in the dataset contains a high-resolution image (up to 4K resolution), bounding boxes highlighting the salient regions within the image, and detailed captions describing the contents of those specific regions.  The captions focus on the details present within the identified regions, such as text or small objects, rather than a general description of the entire image. This illustrates the core principle of PS3: focusing on relevant local details rather than processing the whole image, even at high resolutions, to reduce computational cost.
> <details>
> <summary>read the caption</summary>
> Figure 3: Pre-training data example. Each instance contains an image with resolution up to 4K, bounding boxes of the salient regions in the image, and captions about details in the regions such as text or small objects.
> </details>



![](https://arxiv.org/html/2503.19903/x4.png)

> 🔼 This figure illustrates the architecture of the PS3 model, which consists of three stages. Stage 1 involves encoding global low-resolution image features using a vision transformer (ViT). Stage 2 performs patch selection. It uses both the low-resolution features from Stage 1 and auxiliary high-resolution features (extracted by a lightweight encoder) to identify important regions. These regions are selected based on either their relevance to a text prompt (top-down selection) or their inherent saliency (bottom-up selection).  Stage 3 processes multi-scale high-resolution patches from the selected regions using the same ViT encoder as in Stage 1. Key-Value (KV) cache from the low-resolution tokens in Stage 1 is incorporated into the self-attention layers to provide a global context for encoding the local high-resolution details.
> <details>
> <summary>read the caption</summary>
> Figure 4: Model architecture of \model. The model consists of 3 stages. In Stage 1, the model encodes global low-resolution features. In Stage 2, based on the low-resolution features as well as auxiliary high-resolution features extracted by a light-weight encoder, the model selects local regions that are either relevant to a text prompt (top-down selection) or salient by themselves (bottom-up selection). In Stage 3, the model processes multi-scale high-res patches from the selected regions with the same encoder from Stage 1. KV cache from the low-res tokens in Stage 1 is added to the self-attention layers to provide a global context for local high-res encoding.
> </details>



![](https://arxiv.org/html/2503.19903/x5.png)

> 🔼 Figure 5 illustrates the pre-training algorithm of the PS3 model.  Panel (a) shows the contrastive learning process where high-resolution features from selected local image regions are contrasted against their corresponding local captions. To maintain the quality of low-resolution features, the model also incorporates pairs of low-resolution features and global captions within each batch. Both high-resolution and low-resolution feature extractions follow the architecture depicted in Figure 4. Panel (b) details the supervision method for top-down patch selection, which uses ground truth score maps derived from bounding boxes to guide the selection process.  Panel (c) shows the supervision mechanism for bottom-up patch selection; this is similar to top-down selection, but the ground truth selection score is derived from all labeled bounding boxes within the image.
> <details>
> <summary>read the caption</summary>
> Figure 5: Pre-training algorithm of \model. (a) During training, \modelextracts the high-res features from the labeled local regions and contrasts them with embeddings of the local captions. To maintain the low-res feature quality, we also mix pairs of low-res features and global caption embedding in each batch. Both high-res and low-res features are extracted in the same way as Figure 4. (b) The top-down patch selection score is supervised by ground-truth score map generated from the bounding box corresponding to the local caption. (c) The supervision for bottom-up selection is similar to top-down selection, except that the ground-truth selection score is generated from all the labeled bounding boxes of the image.
> </details>



![](https://arxiv.org/html/2503.19903/x6.png)

> 🔼 Figure 6 showcases the patch selection mechanism of the PS3 model. The left panel demonstrates both bottom-up and top-down selection methods. Bottom-up selection identifies salient regions within an image without any textual guidance, while top-down selection focuses on regions relevant to a given caption.  The middle and right panels illustrate how the model's patch selection capabilities are fine-tuned when integrated with a multi-modal large language model (MLLM). Here, the model selects patches based on specific questions pertaining to localized image regions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative examples of patch selection. Left: \modelis pre-trained to perform bottom-up selection based on image saliency (denoted by ∅\varnothing∅) or top-down selection based on local captions. The selection process is detailed in Figure 4 and Section 2.2. Middle & Right: We fine-tune \modelwith MLLM to select patches based on questions about local regions (Figure 7 and Section 3.1).
> </details>



![](https://arxiv.org/html/2503.19903/x7.png)

> 🔼 The figure illustrates the architecture of the VILA-HD model, which enhances high-resolution visual perception in multi-modal LLMs.  VILA-HD uses PS3 as its vision encoder. First, it extracts low-resolution global image features using PS3 and sends these features, along with text tokens from the user's prompt, to the LLM. The LLM's final-layer embedding from the last token guides PS3 in selecting high-resolution image patches. PS3 then extracts features from these selected patches, adds positional embeddings, and sends them to the LLM for further processing.  Importantly, while PS3's processing is limited to 2560 high-resolution patches at once, the patch selection and feature extraction can be repeated multiple times (N) to incorporate a larger number of patches—up to 2560N.
> <details>
> <summary>read the caption</summary>
> Figure 7: Model design of \vilamodel. For any input image and text prompt, \vilamodelfirst extracts the low-res image features using \modeland sends them along with the text tokens to the LLM. The last-layer embedding of the last token is used to select high-res patches in \model, whose features are then extracted by \model, added with additional positional embedding, and sent to the LLM. Although \modelonly processes at most 2560 high-res patches at a time, one can run the patch selection and high-res feature extraction for N times (N can be an arbitrary number) to encode up to 2560×\times×N high-res patches.
> </details>



![](https://arxiv.org/html/2503.19903/x8.png)

> 🔼 Figure 8 illustrates the two types of additional fine-tuning data used to improve the performance of multi-modal large language models (MLLMs) incorporating the PS3 vision encoder.  The left panel shows data for fine-tuning the top-down patch selection mechanism. This data consists of high-resolution images, a question specifically targeting a local region within the image, and the bounding box coordinates of that region. This data is created by converting the local captions from the PS3 pre-training data into questions using the LLaMA-3.1 language model. The right panel details the data used for aligning the high-resolution visual features extracted by PS3 with the textual representations within the LLM. This involves taking existing low-resolution image question-answering (QA) pairs and enlarging the image by pasting it onto a larger background canvas, creating a new high-resolution image while keeping the original question and answer unchanged. This process ensures that the model learns to leverage high-resolution details for accurate answers.
> <details>
> <summary>read the caption</summary>
> Figure 8: Additional fine-tuning data for MLLMs with \model. Left: To fine-tune top-down patch selection, we generate data with pairs of high-res image, question about a local region, and the bounding box of the region. This is generated by taking the \modelpre-training data and retargeting the local captions into questions using LLaMA-3.1. Right: To align the \modelhigh-res features to the LLM text space, it requires fine-tuning data that contains QA pairs on high-res images. We generate this by taking regular low-res image QA data and pasting the image onto a large-size background to get the new high-res image while the question and answer are inherited.
> </details>



![](https://arxiv.org/html/2503.19903/x9.png)

> 🔼 Figure 9 demonstrates the scaling properties of the PS3 model when integrated with the VILA-HD multi-modal large language model.  It showcases how performance changes across several factors related to resolution and computational cost. Panel (a) shows performance scaling with the increase of the input image resolution when all high-resolution patches are used.  A comparison with baselines highlights PS3's superiority. Panel (b) examines performance when a fixed number of high-resolution patches are used, regardless of resolution, demonstrating PS3's ability to maintain or even improve performance at higher resolutions with similar compute. Panel (c) illustrates a trade-off between compute and performance at a fixed resolution: using more high-resolution patches increases performance but demands more computation. Finally, panel (d) shows that increasing the number of high-resolution patches at test time, even after training with fewer patches, further boosts performance.
> <details>
> <summary>read the caption</summary>
> Figure 9: Scaling properties of \modelon \vilamodel. (Left) Overall results. We report average performance of the MLLM on seven benchmarks under different maximum input resolution. The size of each data point indicates the number of high-res vision tokens input to the LLM. (a) When selecting all high-res patches for MLLM, the performance of \modelscales better with the resolution than the baselines without high-resolution pre-training. (b) \modelis able to process higher resolution and improve performance while selecting a fixed number of high-res patches for MLLM. (c) Within the same resolution, \modelis able to trade compute for performance by selecting more high-res patches. (d) \modelcan select more high-res patches at test time even if its selects a fixed number of high-res patches during MLLM training.
> </details>



![](https://arxiv.org/html/2503.19903/x10.png)

> 🔼 Figure 10 illustrates the relationship between image resolution and the minimum resolution required to accurately answer associated questions (MRR) across various benchmark datasets.  Existing vision-language benchmarks, while employing high-resolution images, often have questions answerable at resolutions significantly lower than 4K (mostly under 1K). This is in stark contrast to the proposed 4KPro benchmark, where questions are specifically designed to be answerable only at a 4K resolution. This highlights the fact that many existing benchmarks do not truly test high-resolution visual perception capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 10: Image resolution and MRR of different benchmarks. Existing benchmarks contain high-res images but the resolution required to answer the questions (MRR) is mostly under 1K. In contrast, 4KPro contains questions only solvable at 4K resolution.
> </details>



![](https://arxiv.org/html/2503.19903/x11.png)

> 🔼 Figure 11 presents four examples from the 4KPro benchmark dataset, each representing one of four categories: Autonomous Vehicle, Household, Gaming, and UI Understanding.  Each example shows a high-resolution image (4K) and a multiple-choice question that requires a high level of visual detail to answer accurately.  The figure compares the performance of the VILA-HD model (with PS3 as the vision encoder) against other state-of-the-art large language models (LLMs), such as GPT-4 and Qwen2-VL, demonstrating that VILA-HD achieves significantly higher accuracy in answering the 4KPro questions that demand high-resolution visual understanding. The results highlight the effectiveness of PS3 in enabling LLMs to handle high-resolution image data and achieve superior performance compared to baselines that do not utilize this approach.
> <details>
> <summary>read the caption</summary>
> Figure 11: Examples from 4KPro and comparison of different models. Each example corresponds to one out of four categories (Autonomous Vehicle, Household, Gaming, and UI Understanding) and each question can only be answered without ambiguity under 4K resolution. VILA-\modelimproves the accuracy over the state-of-the-art MLLMs such as GPT-4o and Qwen2-VL.
> </details>



![](https://arxiv.org/html/2503.19903/x12.png)

> 🔼 Figure 12 presents a graph illustrating the scaling properties of the VILA-HD model, specifically its performance on the 4KPro benchmark as the resolution of the PS3 vision encoder increases.  The graph shows VILA-HD's accuracy consistently improves as the resolution scales up to 4K, significantly surpassing the performance of baselines that lack high-resolution vision pre-training. This visualization demonstrates the effectiveness of PS3 in achieving superior performance at high resolution.
> <details>
> <summary>read the caption</summary>
> Figure 12: Scaling properties of \modelon 4KPro. \modelshows consistently improved performance by scaling to 4K resolution and greatly outperforms the baselines.
> </details>



![](https://arxiv.org/html/2503.19903/x13.png)

> 🔼 This table presents an ablation study analyzing the impact of various design choices on the performance of the PS3 model and its integration within the MLLM.  It shows the average performance change (ΔΔ Δ) across seven benchmark datasets after including or excluding specific design elements. These elements cover PS3's pre-training algorithm, model architecture, and the MLLM's design.  The results quantify the contribution of each component, enabling a better understanding of their individual importance to the overall model effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation of PS3 pre-training, model, and MLLM designs. ΔΔ\Deltaroman_Δ is the change of the average performance on the seven benchmarks after adding the design.
> </details>



![](https://arxiv.org/html/2503.19903/x14.png)

> 🔼 This table presents an ablation study on the effects of different patch selection methods on the performance of a vision model.  Specifically, it compares the performance using random, bottom-up (saliency-based), and top-down (prompt-guided) patch selection approaches. The table shows the percentage of high-resolution patches selected during training and testing, along with the recall rate (the proportion of ground truth patches successfully selected). This analysis helps determine the impact of different selection strategies on both training efficiency and the model's ability to accurately identify relevant image regions.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation of top-down and bottom-up patch selection. Select (Train) and Select (Test) are the percentage of high-res patches \modelselects at training and test time. Recall is the recall rate of how many patches in the ground-truth regions are selected at test time.
> </details>



![](https://arxiv.org/html/2503.19903/x15.png)

> 🔼 Figure 13 illustrates the flexible approach of PS3 in handling different image resolutions for various downstream tasks.  It demonstrates the trade-off between using different image scales (756 and 1512 pixels) to achieve optimal performance.  The x-axis represents the percentage of patches selected at each resolution during testing, showing different optimal ratios for various tasks.  The y-axis shows the resulting accuracy on each benchmark.  This highlights PS3's adaptability to balance the need for detailed information (higher resolution) with computational efficiency (fewer patches).
> <details>
> <summary>read the caption</summary>
> Figure 13: Trade-off between image scales for different benchmarks. Select @ 756/1512 are the percentage of selected patches at 756 and 1512 scales at test time, respectively. \modelcan flexibly adjust token selection ratios at different image scales to achieve the best performance for different downstream tasks.
> </details>



![](https://arxiv.org/html/2503.19903/x16.png)

> 🔼 Figure 14 presents a Principal Component Analysis (PCA) visualization comparing the visual features extracted by PS3 and two baseline methods (S2 and AnyRes) at 4K resolution.  The PCA reduces the dimensionality of the high-dimensional feature vectors, allowing for a visual comparison of the feature representations. The image shows that the baselines, S2 and AnyRes, produce either noisy or blurry features at this high resolution, hindering their ability to capture fine details. In contrast, PS3 generates extremely fine-grained features, showcasing a remarkable capacity to extract and represent even subtle details, such as small text on banners, illustrating its superior performance in high-resolution visual perception.
> <details>
> <summary>read the caption</summary>
> Figure 14: PCA visualization of visual features. The baselines, \stwoand AnyRes, have either noisy or blurry features at 4K resolution, while \modelshows extremely fine-grained features that highlight details such as small texts on the banners.
> </details>



![](https://arxiv.org/html/2503.19903/x17.png)

> 🔼 Figure 15 presents examples from the PS3 pre-training dataset. Each image showcases four salient regions, outlined with different colored bounding boxes.  Accompanying each box is a detailed caption generated by the Qwen2-VL model, which describes the contents of the respective cropped image region. While these captions are generally accurate, they occasionally exhibit hallucinations (i.e., descriptions of things that are not actually present in the image). The figure highlights the type of data used to train PS3 to perceive and understand high-resolution visual details.
> <details>
> <summary>read the caption</summary>
> Figure 15: Examples of pre-training data with natural images. Here each image is labeled with bounding boxes of four salient regions (highlighted by different colors), together with the local captions of each region. The local captions, generated by Qwen2-VL, contains details in the crops although there are still occasional hallucinations.
> </details>



![](https://arxiv.org/html/2503.19903/x18.png)

> 🔼 Figure 16 showcases examples from the PS3 pre-training dataset that includes document images. Each document image has four regions highlighted with different colors, and each region is accompanied by a caption extracted via OCR (Optical Character Recognition).  This demonstrates PS3's ability to handle and label text within various regions of a document image to create localized image-text pairs for training.
> <details>
> <summary>read the caption</summary>
> Figure 16: Examples of pre-training data with document images. Here each image is labeled with four bounding boxes (highlighted by different colors), together with the OCR results as the captions of each region.
> </details>



![](https://arxiv.org/html/2503.19903/x19.png)

> 🔼 Figure 17 showcases qualitative examples illustrating the model's patch selection capabilities on natural images.  For each example, a question is posed, and the model highlights the specific image regions most relevant to answering the question. This demonstrates the model's ability to focus on the most pertinent details within the image rather than processing the entire image, thus enhancing efficiency and accuracy.  The highlighted areas visually represent the patches selected by the model, showing its selective attention mechanism in action.
> <details>
> <summary>read the caption</summary>
> Figure 17: Qualitative examples of patch selection on natural images. \modelis able to locate different parts of the image that are relevant to the question.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S5.F12.fig1.1">
<tr class="ltx_tr" id="S5.F12.fig1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.F12.fig1.1.1.1"><span class="ltx_text" id="S5.F12.fig1.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F12.fig1.1.1.2"><span class="ltx_text" id="S5.F12.fig1.1.1.2.1" style="font-size:90%;">Select</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F12.fig1.1.1.3"><span class="ltx_text" id="S5.F12.fig1.1.1.3.1" style="font-size:90%;">Latency</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F12.fig1.1.1.4"><span class="ltx_text" id="S5.F12.fig1.1.1.4.1" style="font-size:90%;">Acc.</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.F12.fig1.1.2.1">
<span class="ltx_text" id="S5.F12.fig1.1.2.1.1" style="font-size:90%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S5.F12.fig1.1.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.2.2"><span class="ltx_text" id="S5.F12.fig1.1.2.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.2.3"><span class="ltx_text" id="S5.F12.fig1.1.2.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.2.4"><span class="ltx_text" id="S5.F12.fig1.1.2.4.1" style="font-size:90%;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.3">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.3.1">
<span class="ltx_text" id="S5.F12.fig1.1.3.1.1" style="font-size:90%;">Claude 3.5 Sonnet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S5.F12.fig1.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.3.2"><span class="ltx_text" id="S5.F12.fig1.1.3.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.3.3"><span class="ltx_text" id="S5.F12.fig1.1.3.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.3.4"><span class="ltx_text" id="S5.F12.fig1.1.3.4.1" style="font-size:90%;">29.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.4">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.4.1">
<span class="ltx_text" id="S5.F12.fig1.1.4.1.1" style="font-size:90%;">Gemini-1.5-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S5.F12.fig1.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.4.2"><span class="ltx_text" id="S5.F12.fig1.1.4.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.4.3"><span class="ltx_text" id="S5.F12.fig1.1.4.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.4.4"><span class="ltx_text" id="S5.F12.fig1.1.4.4.1" style="font-size:90%;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.F12.fig1.1.5.1">
<span class="ltx_text" id="S5.F12.fig1.1.5.1.1" style="font-size:90%;">NVILA-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S5.F12.fig1.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.5.2"><span class="ltx_text" id="S5.F12.fig1.1.5.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.5.3"><span class="ltx_text" id="S5.F12.fig1.1.5.3.1" style="font-size:90%;">0.82s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.5.4"><span class="ltx_text" id="S5.F12.fig1.1.5.4.1" style="font-size:90%;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.6">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.6.1">
<span class="ltx_text" id="S5.F12.fig1.1.6.1.1" style="font-size:90%;">Cambrian-1-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="S5.F12.fig1.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.6.2"><span class="ltx_text" id="S5.F12.fig1.1.6.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.6.3"><span class="ltx_text" id="S5.F12.fig1.1.6.3.1" style="font-size:90%;">2.78s</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.6.4"><span class="ltx_text" id="S5.F12.fig1.1.6.4.1" style="font-size:90%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.7">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.7.1">
<span class="ltx_text" id="S5.F12.fig1.1.7.1.1" style="font-size:90%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="S5.F12.fig1.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.7.2"><span class="ltx_text" id="S5.F12.fig1.1.7.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.7.3"><span class="ltx_text" id="S5.F12.fig1.1.7.3.1" style="font-size:90%;">1.65s</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.7.4"><span class="ltx_text" id="S5.F12.fig1.1.7.4.1" style="font-size:90%;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.8">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.8.1">
<span class="ltx_text" id="S5.F12.fig1.1.8.1.1" style="font-size:90%;">IXC-2.5-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib112" title=""><span class="ltx_text" style="font-size:90%;">112</span></a><span class="ltx_text" id="S5.F12.fig1.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.8.2"><span class="ltx_text" id="S5.F12.fig1.1.8.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.8.3"><span class="ltx_text" id="S5.F12.fig1.1.8.3.1" style="font-size:90%;">2.11s</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.8.4"><span class="ltx_text" id="S5.F12.fig1.1.8.4.1" style="font-size:90%;">32.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.9">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.9.1">
<span class="ltx_text" id="S5.F12.fig1.1.9.1.1" style="font-size:90%;">LLaVA-OneVision-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S5.F12.fig1.1.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.9.2"><span class="ltx_text" id="S5.F12.fig1.1.9.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.9.3"><span class="ltx_text" id="S5.F12.fig1.1.9.3.1" style="font-size:90%;">1.75s</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.9.4"><span class="ltx_text" id="S5.F12.fig1.1.9.4.1" style="font-size:90%;">67.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.10">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.10.1">
<span class="ltx_text" id="S5.F12.fig1.1.10.1.1" style="font-size:90%;">Qwen2-VL-7B-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.F12.fig1.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a><span class="ltx_text" id="S5.F12.fig1.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.10.2"><span class="ltx_text" id="S5.F12.fig1.1.10.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.10.3"><span class="ltx_text" id="S5.F12.fig1.1.10.3.1" style="font-size:90%;">3.61s</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.10.4"><span class="ltx_text" id="S5.F12.fig1.1.10.4.1" style="font-size:90%;">71.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.11" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.F12.fig1.1.11.1">
<span class="ltx_ERROR undefined" id="S5.F12.fig1.1.11.1.1">\vilamodel</span><span class="ltx_text" id="S5.F12.fig1.1.11.1.2" style="font-size:90%;background-color:#FBE5D6;">-1.5K</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.11.2"><span class="ltx_text" id="S5.F12.fig1.1.11.2.1" style="font-size:90%;background-color:#FBE5D6;">44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.11.3"><span class="ltx_text" id="S5.F12.fig1.1.11.3.1" style="font-size:90%;background-color:#FBE5D6;">0.61s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.11.4"><span class="ltx_text" id="S5.F12.fig1.1.11.4.1" style="font-size:90%;background-color:#FBE5D6;">53.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.12" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left" id="S5.F12.fig1.1.12.1">
<span class="ltx_ERROR undefined" id="S5.F12.fig1.1.12.1.1">\vilamodel</span><span class="ltx_text" id="S5.F12.fig1.1.12.1.2" style="font-size:90%;background-color:#FBE5D6;">-1.5K</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.12.2"><span class="ltx_text" id="S5.F12.fig1.1.12.2.1" style="font-size:90%;background-color:#FBE5D6;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.12.3"><span class="ltx_text" id="S5.F12.fig1.1.12.3.1" style="font-size:90%;background-color:#FBE5D6;">1.20s</span></td>
<td class="ltx_td ltx_align_center" id="S5.F12.fig1.1.12.4"><span class="ltx_text" id="S5.F12.fig1.1.12.4.1" style="font-size:90%;background-color:#FBE5D6;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.13" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.F12.fig1.1.13.1">
<span class="ltx_ERROR undefined" id="S5.F12.fig1.1.13.1.1">\vilamodel</span><span class="ltx_text" id="S5.F12.fig1.1.13.1.2" style="font-size:90%;background-color:#FBE5D6;">-4K</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.13.2"><span class="ltx_text" id="S5.F12.fig1.1.13.2.1" style="font-size:90%;background-color:#FBE5D6;">18%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.13.3"><span class="ltx_text" id="S5.F12.fig1.1.13.3.1" style="font-size:90%;background-color:#FBE5D6;">1.22s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F12.fig1.1.13.4"><span class="ltx_text" id="S5.F12.fig1.1.13.4.1" style="font-size:90%;background-color:#FBE5D6;">72.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.F12.fig1.1.14" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.F12.fig1.1.14.1">
<span class="ltx_ERROR undefined" id="S5.F12.fig1.1.14.1.1">\vilamodel</span><span class="ltx_text" id="S5.F12.fig1.1.14.1.2" style="font-size:90%;background-color:#FBE5D6;">-4K</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F12.fig1.1.14.2"><span class="ltx_text" id="S5.F12.fig1.1.14.2.1" style="font-size:90%;background-color:#FBE5D6;">35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F12.fig1.1.14.3"><span class="ltx_text" id="S5.F12.fig1.1.14.3.1" style="font-size:90%;background-color:#FBE5D6;">1.91s</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F12.fig1.1.14.4"><span class="ltx_text ltx_font_bold" id="S5.F12.fig1.1.14.4.1" style="font-size:90%;background-color:#FBE5D6;">74.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of the VILA-HD model (which uses the PS3 vision pre-training approach) against other state-of-the-art Multimodal Large Language Models (MLLMs) on the 4KPro benchmark.  The 4KPro benchmark is specifically designed to evaluate high-resolution visual perception capabilities. The table highlights VILA-HD's superior accuracy compared to the previously best-performing model (Qwen2-VL) while also demonstrating a lower inference latency.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparing \vilamodelto state-of-the-art MLLMs on 4KPro. \vilamodeloutperforms Qwen2-VL which has the best performance among existing MLLMs while having a lower latency.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.3">
<tr class="ltx_tr" id="S6.T3.3.1">
<td class="ltx_td ltx_border_tt" id="S6.T3.3.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S6.T3.3.1.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.1.3.1">
<span class="ltx_p" id="S6.T3.3.1.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.1.3.1.1.1" style="font-size:70%;">Res.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S6.T3.3.1.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.1.4.1">
<span class="ltx_p" id="S6.T3.3.1.4.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.1.4.1.1.1" style="font-size:70%;">Select</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S6.T3.3.1.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.1.5.1">
<span class="ltx_p" id="S6.T3.3.1.5.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.1.5.1.1.1" style="font-size:70%;">#Token</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.6.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.6.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.6.1.1.1"><span class="ltx_text" id="S6.T3.3.1.6.1.1.1.1" style="font-size:70%;">ChartQA</span></p>
<p class="ltx_p" id="S6.T3.3.1.6.1.1.2"><span class="ltx_text" id="S6.T3.3.1.6.1.1.2.1" style="font-size:70%;">(test)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.7">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.7.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.7.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.7.1.1.1"><span class="ltx_text" id="S6.T3.3.1.7.1.1.1.1" style="font-size:70%;">DocVQA</span></p>
<p class="ltx_p" id="S6.T3.3.1.7.1.1.2"><span class="ltx_text" id="S6.T3.3.1.7.1.1.2.1" style="font-size:70%;">(test)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.8">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.8.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.8.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.8.1.1.1"><span class="ltx_text" id="S6.T3.3.1.8.1.1.1.1" style="font-size:70%;">InfoVQA</span></p>
<p class="ltx_p" id="S6.T3.3.1.8.1.1.2"><span class="ltx_text" id="S6.T3.3.1.8.1.1.2.1" style="font-size:70%;">(test)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.9">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.9.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.9.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.9.1.1.1"><span class="ltx_text" id="S6.T3.3.1.9.1.1.1.1" style="font-size:70%;">MathVista</span></p>
<p class="ltx_p" id="S6.T3.3.1.9.1.1.2"><span class="ltx_text" id="S6.T3.3.1.9.1.1.2.1" style="font-size:70%;">(testmini)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.10">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.10.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.10.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.10.1.1.1"><span class="ltx_text" id="S6.T3.3.1.10.1.1.1.1" style="font-size:70%;">MMBench</span></p>
<p class="ltx_p" id="S6.T3.3.1.10.1.1.2"><span class="ltx_text" id="S6.T3.3.1.10.1.1.2.1" style="font-size:70%;">(en-dev)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.11">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.11.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.11.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.11.1.1.1"><span class="ltx_text" id="S6.T3.3.1.11.1.1.1.1" style="font-size:70%;">MMMU-Pro</span></p>
<p class="ltx_p" id="S6.T3.3.1.11.1.1.2"><span class="ltx_text" id="S6.T3.3.1.11.1.1.2.1" style="font-size:70%;">(standard)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.12">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.12.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.12.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.12.1.1.1"><span class="ltx_text" id="S6.T3.3.1.12.1.1.1.1" style="font-size:70%;">OCRBench</span></p>
<p class="ltx_p" id="S6.T3.3.1.12.1.1.2"><span class="ltx_text" id="S6.T3.3.1.12.1.1.2.1" style="font-size:70%;">(test)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.1.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.1.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.1.1.1.1"><span class="ltx_text" id="S6.T3.3.1.1.1.1.1.1" style="font-size:70%;">V</span><sup class="ltx_sup" id="S6.T3.3.1.1.1.1.1.2"><span class="ltx_text" id="S6.T3.3.1.1.1.1.1.2.1" style="font-size:70%;">∗</span></sup><span class="ltx_text" id="S6.T3.3.1.1.1.1.1.3" style="font-size:70%;">Bench</span></p>
<p class="ltx_p" id="S6.T3.3.1.1.1.1.2"><span class="ltx_text" id="S6.T3.3.1.1.1.1.2.1" style="font-size:70%;">(test)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.13">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.13.1" style="width:31.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-5.84pt,0.69pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.13.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.13.1.1.1"><span class="ltx_text" id="S6.T3.3.1.13.1.1.1.1" style="font-size:70%;">RealWorldQA</span></p>
<p class="ltx_p" id="S6.T3.3.1.13.1.1.2"><span class="ltx_text" id="S6.T3.3.1.13.1.1.2.1" style="font-size:70%;">(test)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.14">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.14.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.14.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.14.1.1.1"><span class="ltx_text" id="S6.T3.3.1.14.1.1.1.1" style="font-size:70%;">TextVQA</span></p>
<p class="ltx_p" id="S6.T3.3.1.14.1.1.2"><span class="ltx_text" id="S6.T3.3.1.14.1.1.2.1" style="font-size:70%;">(val)</span></p>
</div>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.1.15">
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T3.3.1.15.1" style="width:19.0pt;height:42.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:42.7pt;transform:translate(-11.84pt,-8.31pt) rotate(-90deg) ;">
<div class="ltx_block ltx_parbox ltx_align_middle" id="S6.T3.3.1.15.1.1" style="width:42.7pt;">
<p class="ltx_p" id="S6.T3.3.1.15.1.1.1"><span class="ltx_text" id="S6.T3.3.1.15.1.1.1.1" style="font-size:70%;">4KPro</span></p>
<p class="ltx_p" id="S6.T3.3.1.15.1.1.2"><span class="ltx_text" id="S6.T3.3.1.15.1.1.2.1" style="font-size:70%;">(test)</span></p>
</div>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.3.2.1"><span class="ltx_text ltx_font_italic" id="S6.T3.3.2.1.1" style="font-size:70%;">Proprietary</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.2.3"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.2.4"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.5"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.6"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.7"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.8"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.9"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.10"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.11"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.12"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.13"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.14"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.2.15"></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3">
<td class="ltx_td ltx_align_left" id="S6.T3.3.3.1">
<span class="ltx_text" id="S6.T3.3.3.1.1" style="font-size:70%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S6.T3.3.3.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.3.2.1">
<span class="ltx_p" id="S6.T3.3.3.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.3.2.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.3.3.1">
<span class="ltx_p" id="S6.T3.3.3.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.3.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.3.4.1">
<span class="ltx_p" id="S6.T3.3.3.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.3.4.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.5"><span class="ltx_text" id="S6.T3.3.3.5.1" style="font-size:70%;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.6"><span class="ltx_text" id="S6.T3.3.3.6.1" style="font-size:70%;">92.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.7"><span class="ltx_text" id="S6.T3.3.3.7.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.8"><span class="ltx_text" id="S6.T3.3.3.8.1" style="font-size:70%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.9"><span class="ltx_text" id="S6.T3.3.3.9.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.10"><span class="ltx_text" id="S6.T3.3.3.10.1" style="font-size:70%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.11"><span class="ltx_text" id="S6.T3.3.3.11.1" style="font-size:70%;">736</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.12"><span class="ltx_text" id="S6.T3.3.3.12.1" style="font-size:70%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.13"><span class="ltx_text" id="S6.T3.3.3.13.1" style="font-size:70%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.14"><span class="ltx_text" id="S6.T3.3.3.14.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.15"><span class="ltx_text" id="S6.T3.3.3.15.1" style="font-size:70%;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.4">
<td class="ltx_td ltx_align_left" id="S6.T3.3.4.1">
<span class="ltx_text" id="S6.T3.3.4.1.1" style="font-size:70%;">Claude 3.5 Sonnet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.4.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S6.T3.3.4.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.4.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.4.2.1">
<span class="ltx_p" id="S6.T3.3.4.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.4.2.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.4.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.4.3.1">
<span class="ltx_p" id="S6.T3.3.4.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.4.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.4.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.4.4.1">
<span class="ltx_p" id="S6.T3.3.4.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.4.4.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.5"><span class="ltx_text" id="S6.T3.3.4.5.1" style="font-size:70%;">90.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.6"><span class="ltx_text" id="S6.T3.3.4.6.1" style="font-size:70%;">95.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.7"><span class="ltx_text" id="S6.T3.3.4.7.1" style="font-size:70%;">49.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.8"><span class="ltx_text" id="S6.T3.3.4.8.1" style="font-size:70%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.9"><span class="ltx_text" id="S6.T3.3.4.9.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.10"><span class="ltx_text" id="S6.T3.3.4.10.1" style="font-size:70%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.11"><span class="ltx_text" id="S6.T3.3.4.11.1" style="font-size:70%;">788</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.12"><span class="ltx_text" id="S6.T3.3.4.12.1" style="font-size:70%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.13"><span class="ltx_text" id="S6.T3.3.4.13.1" style="font-size:70%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.14"><span class="ltx_text" id="S6.T3.3.4.14.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.4.15"><span class="ltx_text" id="S6.T3.3.4.15.1" style="font-size:70%;">29.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.5">
<td class="ltx_td ltx_align_left" id="S6.T3.3.5.1">
<span class="ltx_text" id="S6.T3.3.5.1.1" style="font-size:70%;">Gemini-1.5-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.5.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S6.T3.3.5.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.5.2.1">
<span class="ltx_p" id="S6.T3.3.5.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.5.2.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.5.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.5.3.1">
<span class="ltx_p" id="S6.T3.3.5.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.5.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.5.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.5.4.1">
<span class="ltx_p" id="S6.T3.3.5.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.5.4.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.5"><span class="ltx_text" id="S6.T3.3.5.5.1" style="font-size:70%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.6"><span class="ltx_text" id="S6.T3.3.5.6.1" style="font-size:70%;">93.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.7"><span class="ltx_text" id="S6.T3.3.5.7.1" style="font-size:70%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.8"><span class="ltx_text" id="S6.T3.3.5.8.1" style="font-size:70%;">63.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.9"><span class="ltx_text" id="S6.T3.3.5.9.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.10"><span class="ltx_text" id="S6.T3.3.5.10.1" style="font-size:70%;">49.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.11"><span class="ltx_text" id="S6.T3.3.5.11.1" style="font-size:70%;">754</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.12"><span class="ltx_text" id="S6.T3.3.5.12.1" style="font-size:70%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.13"><span class="ltx_text" id="S6.T3.3.5.13.1" style="font-size:70%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.14"><span class="ltx_text" id="S6.T3.3.5.14.1" style="font-size:70%;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.5.15"><span class="ltx_text" id="S6.T3.3.5.15.1" style="font-size:70%;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.3.6.1"><span class="ltx_text ltx_font_italic" id="S6.T3.3.6.1.1" style="font-size:70%;">Open-source</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.6.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.6.3"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.6.4"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.5"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.6"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.7"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.8"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.9"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.10"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.11"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.12"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.13"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.14"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.3.6.15"></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.7">
<td class="ltx_td ltx_align_left" id="S6.T3.3.7.1">
<span class="ltx_text" id="S6.T3.3.7.1.1" style="font-size:70%;">VILA-1.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S6.T3.3.7.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.7.2.1">
<span class="ltx_p" id="S6.T3.3.7.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.7.2.1.1.1" style="font-size:70%;">336</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.7.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.7.3.1">
<span class="ltx_p" id="S6.T3.3.7.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.7.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.7.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.7.4.1">
<span class="ltx_p" id="S6.T3.3.7.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.7.4.1.1.1" style="font-size:70%;">576</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.5"><span class="ltx_text" id="S6.T3.3.7.5.1" style="font-size:70%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.6"><span class="ltx_text" id="S6.T3.3.7.6.1" style="font-size:70%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.7"><span class="ltx_text" id="S6.T3.3.7.7.1" style="font-size:70%;">25.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.8"><span class="ltx_text" id="S6.T3.3.7.8.1" style="font-size:70%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.9"><span class="ltx_text" id="S6.T3.3.7.9.1" style="font-size:70%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.10"><span class="ltx_text" id="S6.T3.3.7.10.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.11"><span class="ltx_text" id="S6.T3.3.7.11.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.12"><span class="ltx_text" id="S6.T3.3.7.12.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.13"><span class="ltx_text" id="S6.T3.3.7.13.1" style="font-size:70%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.14"><span class="ltx_text" id="S6.T3.3.7.14.1" style="font-size:70%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.15"><span class="ltx_text" id="S6.T3.3.7.15.1" style="font-size:70%;">33.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.8">
<td class="ltx_td ltx_align_left" id="S6.T3.3.8.1">
<span class="ltx_text" id="S6.T3.3.8.1.1" style="font-size:70%;">Cambrian-1-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.8.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="S6.T3.3.8.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.8.2.1">
<span class="ltx_p" id="S6.T3.3.8.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.8.2.1.1.1" style="font-size:70%;">1024</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.8.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.8.3.1">
<span class="ltx_p" id="S6.T3.3.8.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.8.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.8.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.8.4.1">
<span class="ltx_p" id="S6.T3.3.8.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.8.4.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.5"><span class="ltx_text" id="S6.T3.3.8.5.1" style="font-size:70%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.6"><span class="ltx_text" id="S6.T3.3.8.6.1" style="font-size:70%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.7"><span class="ltx_text" id="S6.T3.3.8.7.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.8"><span class="ltx_text" id="S6.T3.3.8.8.1" style="font-size:70%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.9"><span class="ltx_text" id="S6.T3.3.8.9.1" style="font-size:70%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.10"><span class="ltx_text" id="S6.T3.3.8.10.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.11"><span class="ltx_text" id="S6.T3.3.8.11.1" style="font-size:70%;">624</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.12"><span class="ltx_text" id="S6.T3.3.8.12.1" style="font-size:70%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.13"><span class="ltx_text" id="S6.T3.3.8.13.1" style="font-size:70%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.14"><span class="ltx_text" id="S6.T3.3.8.14.1" style="font-size:70%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.15"><span class="ltx_text" id="S6.T3.3.8.15.1" style="font-size:70%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.9">
<td class="ltx_td ltx_align_left" id="S6.T3.3.9.1">
<span class="ltx_text" id="S6.T3.3.9.1.1" style="font-size:70%;">NVILA-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.9.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S6.T3.3.9.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.9.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.9.2.1">
<span class="ltx_p" id="S6.T3.3.9.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.9.2.1.1.1" style="font-size:70%;">1552</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.9.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.9.3.1">
<span class="ltx_p" id="S6.T3.3.9.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.9.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.9.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.9.4.1">
<span class="ltx_p" id="S6.T3.3.9.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.9.4.1.1.1" style="font-size:70%;">3072</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.5"><span class="ltx_text ltx_font_bold" id="S6.T3.3.9.5.1" style="font-size:70%;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.6"><span class="ltx_text" id="S6.T3.3.9.6.1" style="font-size:70%;">93.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.7"><span class="ltx_text" id="S6.T3.3.9.7.1" style="font-size:70%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.8"><span class="ltx_text" id="S6.T3.3.9.8.1" style="font-size:70%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.9"><span class="ltx_text" id="S6.T3.3.9.9.1" style="font-size:70%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.10"><span class="ltx_text" id="S6.T3.3.9.10.1" style="font-size:70%;">33.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.11"><span class="ltx_text" id="S6.T3.3.9.11.1" style="font-size:70%;">794</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.12"><span class="ltx_text" id="S6.T3.3.9.12.1" style="font-size:70%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.13"><span class="ltx_text" id="S6.T3.3.9.13.1" style="font-size:70%;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.14"><span class="ltx_text" id="S6.T3.3.9.14.1" style="font-size:70%;">80.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.9.15"><span class="ltx_text" id="S6.T3.3.9.15.1" style="font-size:70%;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.10">
<td class="ltx_td ltx_align_left" id="S6.T3.3.10.1">
<span class="ltx_text" id="S6.T3.3.10.1.1" style="font-size:70%;">MM1.5-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.10.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib111" title=""><span class="ltx_text" style="font-size:90%;">111</span></a><span class="ltx_text" id="S6.T3.3.10.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.10.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.10.2.1">
<span class="ltx_p" id="S6.T3.3.10.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.10.2.1.1.1" style="font-size:70%;">2016</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.10.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.10.3.1">
<span class="ltx_p" id="S6.T3.3.10.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.10.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.10.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.10.4.1">
<span class="ltx_p" id="S6.T3.3.10.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.10.4.1.1.1" style="font-size:70%;">5184</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.5"><span class="ltx_text" id="S6.T3.3.10.5.1" style="font-size:70%;">78.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.6"><span class="ltx_text" id="S6.T3.3.10.6.1" style="font-size:70%;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.7"><span class="ltx_text" id="S6.T3.3.10.7.1" style="font-size:70%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.8"><span class="ltx_text" id="S6.T3.3.10.8.1" style="font-size:70%;">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.9"><span class="ltx_text" id="S6.T3.3.10.9.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.10"><span class="ltx_text" id="S6.T3.3.10.10.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.11"><span class="ltx_text" id="S6.T3.3.10.11.1" style="font-size:70%;">635</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.12"><span class="ltx_text" id="S6.T3.3.10.12.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.13"><span class="ltx_text" id="S6.T3.3.10.13.1" style="font-size:70%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.14"><span class="ltx_text" id="S6.T3.3.10.14.1" style="font-size:70%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.10.15"><span class="ltx_text" id="S6.T3.3.10.15.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.11">
<td class="ltx_td ltx_align_left" id="S6.T3.3.11.1">
<span class="ltx_text" id="S6.T3.3.11.1.1" style="font-size:70%;">LLaVA-OV-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.11.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S6.T3.3.11.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.11.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.11.2.1">
<span class="ltx_p" id="S6.T3.3.11.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.11.2.1.1.1" style="font-size:70%;">2304</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.11.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.11.3.1">
<span class="ltx_p" id="S6.T3.3.11.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.11.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.11.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.11.4.1">
<span class="ltx_p" id="S6.T3.3.11.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.11.4.1.1.1" style="font-size:70%;">7252</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.5"><span class="ltx_text" id="S6.T3.3.11.5.1" style="font-size:70%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.6"><span class="ltx_text" id="S6.T3.3.11.6.1" style="font-size:70%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.7"><span class="ltx_text" id="S6.T3.3.11.7.1" style="font-size:70%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.8"><span class="ltx_text" id="S6.T3.3.11.8.1" style="font-size:70%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.9"><span class="ltx_text" id="S6.T3.3.11.9.1" style="font-size:70%;">80.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.10"><span class="ltx_text" id="S6.T3.3.11.10.1" style="font-size:70%;">29.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.11"><span class="ltx_text" id="S6.T3.3.11.11.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.12"><span class="ltx_text" id="S6.T3.3.11.12.1" style="font-size:70%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.13"><span class="ltx_text" id="S6.T3.3.11.13.1" style="font-size:70%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.14"><span class="ltx_text" id="S6.T3.3.11.14.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.11.15"><span class="ltx_text" id="S6.T3.3.11.15.1" style="font-size:70%;">67.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.12">
<td class="ltx_td ltx_align_left" id="S6.T3.3.12.1">
<span class="ltx_text" id="S6.T3.3.12.1.1" style="font-size:70%;">IXC2-4KHD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.12.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S6.T3.3.12.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.12.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.12.2.1">
<span class="ltx_p" id="S6.T3.3.12.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.12.2.1.1.1" style="font-size:70%;">2479</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.12.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.12.3.1">
<span class="ltx_p" id="S6.T3.3.12.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.12.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.12.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.12.4.1">
<span class="ltx_p" id="S6.T3.3.12.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.12.4.1.1.1" style="font-size:70%;">7920</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.5"><span class="ltx_text" id="S6.T3.3.12.5.1" style="font-size:70%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.6"><span class="ltx_text" id="S6.T3.3.12.6.1" style="font-size:70%;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.7"><span class="ltx_text" id="S6.T3.3.12.7.1" style="font-size:70%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.8"><span class="ltx_text" id="S6.T3.3.12.8.1" style="font-size:70%;">57.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.9"><span class="ltx_text" id="S6.T3.3.12.9.1" style="font-size:70%;">80.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.10"><span class="ltx_text" id="S6.T3.3.12.10.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.11"><span class="ltx_text" id="S6.T3.3.12.11.1" style="font-size:70%;">675</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.12"><span class="ltx_text" id="S6.T3.3.12.12.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.13"><span class="ltx_text" id="S6.T3.3.12.13.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.14"><span class="ltx_text" id="S6.T3.3.12.14.1" style="font-size:70%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.12.15"><span class="ltx_text" id="S6.T3.3.12.15.1" style="font-size:70%;">42.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.13">
<td class="ltx_td ltx_align_left" id="S6.T3.3.13.1">
<span class="ltx_text" id="S6.T3.3.13.1.1" style="font-size:70%;">IXC-2.5-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.13.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib112" title=""><span class="ltx_text" style="font-size:90%;">112</span></a><span class="ltx_text" id="S6.T3.3.13.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.13.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.13.2.1">
<span class="ltx_p" id="S6.T3.3.13.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.13.2.1.1.1" style="font-size:70%;">2743</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.13.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.13.3.1">
<span class="ltx_p" id="S6.T3.3.13.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.13.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.13.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.13.4.1">
<span class="ltx_p" id="S6.T3.3.13.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.13.4.1.1.1" style="font-size:70%;">10000</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.5"><span class="ltx_text" id="S6.T3.3.13.5.1" style="font-size:70%;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.6"><span class="ltx_text" id="S6.T3.3.13.6.1" style="font-size:70%;">90.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.7"><span class="ltx_text" id="S6.T3.3.13.7.1" style="font-size:70%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.8"><span class="ltx_text" id="S6.T3.3.13.8.1" style="font-size:70%;">59.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.9"><span class="ltx_text" id="S6.T3.3.13.9.1" style="font-size:70%;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.10"><span class="ltx_text" id="S6.T3.3.13.10.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.11"><span class="ltx_text" id="S6.T3.3.13.11.1" style="font-size:70%;">690</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.12"><span class="ltx_text" id="S6.T3.3.13.12.1" style="font-size:70%;">45.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.13"><span class="ltx_text" id="S6.T3.3.13.13.1" style="font-size:70%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.14"><span class="ltx_text" id="S6.T3.3.13.14.1" style="font-size:70%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.13.15"><span class="ltx_text" id="S6.T3.3.13.15.1" style="font-size:70%;">32.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.14">
<td class="ltx_td ltx_align_left" id="S6.T3.3.14.1">
<span class="ltx_text" id="S6.T3.3.14.1.1" style="font-size:70%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.14.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="S6.T3.3.14.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.14.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.14.2.1">
<span class="ltx_p" id="S6.T3.3.14.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.14.2.1.1.1" style="font-size:70%;">2833</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.14.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.14.3.1">
<span class="ltx_p" id="S6.T3.3.14.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.14.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.14.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.14.4.1">
<span class="ltx_p" id="S6.T3.3.14.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.14.4.1.1.1" style="font-size:70%;">10496</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.5"><span class="ltx_text" id="S6.T3.3.14.5.1" style="font-size:70%;">83.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.6"><span class="ltx_text" id="S6.T3.3.14.6.1" style="font-size:70%;">91.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.7"><span class="ltx_text" id="S6.T3.3.14.7.1" style="font-size:70%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.8"><span class="ltx_text" id="S6.T3.3.14.8.1" style="font-size:70%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.9"><span class="ltx_text" id="S6.T3.3.14.9.1" style="font-size:70%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.10"><span class="ltx_text" id="S6.T3.3.14.10.1" style="font-size:70%;">32.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.11"><span class="ltx_text" id="S6.T3.3.14.11.1" style="font-size:70%;">794</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.12"><span class="ltx_text" id="S6.T3.3.14.12.1" style="font-size:70%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.13"><span class="ltx_text" id="S6.T3.3.14.13.1" style="font-size:70%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.14"><span class="ltx_text" id="S6.T3.3.14.14.1" style="font-size:70%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.14.15"><span class="ltx_text" id="S6.T3.3.14.15.1" style="font-size:70%;">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.15">
<td class="ltx_td ltx_align_left" id="S6.T3.3.15.1">
<span class="ltx_text" id="S6.T3.3.15.1.1" style="font-size:70%;">Qwen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.3.15.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a><span class="ltx_text" id="S6.T3.3.15.1.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.15.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.15.2.1">
<span class="ltx_p" id="S6.T3.3.15.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.15.2.1.1.1" style="font-size:70%;">3584</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.15.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.15.3.1">
<span class="ltx_p" id="S6.T3.3.15.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.15.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.15.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.15.4.1">
<span class="ltx_p" id="S6.T3.3.15.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.15.4.1.1.1" style="font-size:70%;">16384</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.5"><span class="ltx_text" id="S6.T3.3.15.5.1" style="font-size:70%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.6"><span class="ltx_text ltx_font_bold" id="S6.T3.3.15.6.1" style="font-size:70%;">94.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.7"><span class="ltx_text ltx_font_bold" id="S6.T3.3.15.7.1" style="font-size:70%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.8"><span class="ltx_text" id="S6.T3.3.15.8.1" style="font-size:70%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.9"><span class="ltx_text" id="S6.T3.3.15.9.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.10"><span class="ltx_text" id="S6.T3.3.15.10.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.11"><span class="ltx_text ltx_font_bold" id="S6.T3.3.15.11.1" style="font-size:70%;">866</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.12"><span class="ltx_text" id="S6.T3.3.15.12.1" style="font-size:70%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.13"><span class="ltx_text" id="S6.T3.3.15.13.1" style="font-size:70%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.14"><span class="ltx_text ltx_font_bold" id="S6.T3.3.15.14.1" style="font-size:70%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.15.15"><span class="ltx_text" id="S6.T3.3.15.15.1" style="font-size:70%;">71.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.16">
<td class="ltx_td ltx_border_t" id="S6.T3.3.16.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.16.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.16.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.16.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.16.2.1.1.1" style="font-size:70%;">1512</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.16.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.16.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.16.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.16.3.1.1.1" style="font-size:70%;">33%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T3.3.16.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.16.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.16.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.16.4.1.1.1" style="font-size:70%;">1411</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.5"><span class="ltx_text" id="S6.T3.3.16.5.1" style="font-size:70%;background-color:#FBE5D6;">81.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.6"><span class="ltx_text" id="S6.T3.3.16.6.1" style="font-size:70%;background-color:#FBE5D6;">88.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.7"><span class="ltx_text" id="S6.T3.3.16.7.1" style="font-size:70%;background-color:#FBE5D6;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.8"><span class="ltx_text" id="S6.T3.3.16.8.1" style="font-size:70%;background-color:#FBE5D6;">65.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.9"><span class="ltx_text" id="S6.T3.3.16.9.1" style="font-size:70%;background-color:#FBE5D6;">91.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.10"><span class="ltx_text" id="S6.T3.3.16.10.1" style="font-size:70%;background-color:#FBE5D6;">35.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.11"><span class="ltx_text" id="S6.T3.3.16.11.1" style="font-size:70%;background-color:#FBE5D6;">768</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.12"><span class="ltx_text" id="S6.T3.3.16.12.1" style="font-size:70%;background-color:#FBE5D6;">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.13"><span class="ltx_text" id="S6.T3.3.16.13.1" style="font-size:70%;background-color:#FBE5D6;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.14"><span class="ltx_text" id="S6.T3.3.16.14.1" style="font-size:70%;background-color:#FBE5D6;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.16.15"><span class="ltx_text" id="S6.T3.3.16.15.1" style="font-size:70%;background-color:#FBE5D6;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.17">
<td class="ltx_td" id="S6.T3.3.17.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.17.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.17.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.17.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.17.2.1.1.1" style="font-size:70%;">1512</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.17.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.17.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.17.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.17.3.1.1.1" style="font-size:70%;">67%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.17.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.17.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.17.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.17.4.1.1.1" style="font-size:70%;">2626</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.5"><span class="ltx_text" id="S6.T3.3.17.5.1" style="font-size:70%;background-color:#FBE5D6;">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.6"><span class="ltx_text" id="S6.T3.3.17.6.1" style="font-size:70%;background-color:#FBE5D6;">91.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.7"><span class="ltx_text" id="S6.T3.3.17.7.1" style="font-size:70%;background-color:#FBE5D6;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.8"><span class="ltx_text ltx_font_bold" id="S6.T3.3.17.8.1" style="font-size:70%;background-color:#FBE5D6;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.9"><span class="ltx_text" id="S6.T3.3.17.9.1" style="font-size:70%;background-color:#FBE5D6;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.10"><span class="ltx_text ltx_font_bold" id="S6.T3.3.17.10.1" style="font-size:70%;background-color:#FBE5D6;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.11"><span class="ltx_text" id="S6.T3.3.17.11.1" style="font-size:70%;background-color:#FBE5D6;">776</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.12"><span class="ltx_text" id="S6.T3.3.17.12.1" style="font-size:70%;background-color:#FBE5D6;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.13"><span class="ltx_text" id="S6.T3.3.17.13.1" style="font-size:70%;background-color:#FBE5D6;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.14"><span class="ltx_text" id="S6.T3.3.17.14.1" style="font-size:70%;background-color:#FBE5D6;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.17.15"><span class="ltx_text" id="S6.T3.3.17.15.1" style="font-size:70%;background-color:#FBE5D6;">53.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.18" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left" id="S6.T3.3.18.1"><span class="ltx_text" id="S6.T3.3.18.1.1" style="font-size:70%;background-color:#FBE5D6;"><span class="ltx_ERROR undefined" id="S6.T3.3.18.1.1.1">\vilamodel</span>-1.5K-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.18.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.18.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.18.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.18.2.1.1.1" style="font-size:70%;">1512</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.18.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.18.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.18.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.18.3.1.1.1" style="font-size:70%;">100%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.18.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.18.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.18.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.18.4.1.1.1" style="font-size:70%;">3841</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.5"><span class="ltx_text" id="S6.T3.3.18.5.1" style="font-size:70%;background-color:#FBE5D6;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.6"><span class="ltx_text" id="S6.T3.3.18.6.1" style="font-size:70%;background-color:#FBE5D6;">92.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.7"><span class="ltx_text" id="S6.T3.3.18.7.1" style="font-size:70%;background-color:#FBE5D6;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.8"><span class="ltx_text" id="S6.T3.3.18.8.1" style="font-size:70%;background-color:#FBE5D6;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.9"><span class="ltx_text ltx_font_bold" id="S6.T3.3.18.9.1" style="font-size:70%;background-color:#FBE5D6;">92.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.10"><span class="ltx_text" id="S6.T3.3.18.10.1" style="font-size:70%;background-color:#FBE5D6;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.11"><span class="ltx_text" id="S6.T3.3.18.11.1" style="font-size:70%;background-color:#FBE5D6;">782</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.12"><span class="ltx_text" id="S6.T3.3.18.12.1" style="font-size:70%;background-color:#FBE5D6;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.13"><span class="ltx_text" id="S6.T3.3.18.13.1" style="font-size:70%;background-color:#FBE5D6;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.14"><span class="ltx_text" id="S6.T3.3.18.14.1" style="font-size:70%;background-color:#FBE5D6;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.18.15"><span class="ltx_text" id="S6.T3.3.18.15.1" style="font-size:70%;background-color:#FBE5D6;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.19">
<td class="ltx_td ltx_border_t" id="S6.T3.3.19.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.19.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.19.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.19.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.19.2.1.1.1" style="font-size:70%;">3780</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T3.3.19.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.19.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.19.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.19.3.1.1.1" style="font-size:70%;">6%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T3.3.19.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.19.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.19.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.19.4.1.1.1" style="font-size:70%;">1476</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.5"><span class="ltx_text" id="S6.T3.3.19.5.1" style="font-size:70%;background-color:#FBE5D6;">82.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.6"><span class="ltx_text" id="S6.T3.3.19.6.1" style="font-size:70%;background-color:#FBE5D6;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.7"><span class="ltx_text" id="S6.T3.3.19.7.1" style="font-size:70%;background-color:#FBE5D6;">57.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.8"><span class="ltx_text" id="S6.T3.3.19.8.1" style="font-size:70%;background-color:#FBE5D6;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.9"><span class="ltx_text" id="S6.T3.3.19.9.1" style="font-size:70%;background-color:#FBE5D6;">90.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.10"><span class="ltx_text" id="S6.T3.3.19.10.1" style="font-size:70%;background-color:#FBE5D6;">34.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.11"><span class="ltx_text" id="S6.T3.3.19.11.1" style="font-size:70%;background-color:#FBE5D6;">753</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.12"><span class="ltx_text" id="S6.T3.3.19.12.1" style="font-size:70%;background-color:#FBE5D6;">68.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.13"><span class="ltx_text" id="S6.T3.3.19.13.1" style="font-size:70%;background-color:#FBE5D6;">66.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.14"><span class="ltx_text" id="S6.T3.3.19.14.1" style="font-size:70%;background-color:#FBE5D6;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.19.15"><span class="ltx_text" id="S6.T3.3.19.15.1" style="font-size:70%;background-color:#FBE5D6;">62.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.20">
<td class="ltx_td" id="S6.T3.3.20.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.20.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.20.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.20.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.20.2.1.1.1" style="font-size:70%;">3780</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T3.3.20.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.20.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.20.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.20.3.1.1.1" style="font-size:70%;">12%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S6.T3.3.20.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.20.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.20.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.20.4.1.1.1" style="font-size:70%;">2756</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.5"><span class="ltx_text" id="S6.T3.3.20.5.1" style="font-size:70%;background-color:#FBE5D6;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.6"><span class="ltx_text" id="S6.T3.3.20.6.1" style="font-size:70%;background-color:#FBE5D6;">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.7"><span class="ltx_text" id="S6.T3.3.20.7.1" style="font-size:70%;background-color:#FBE5D6;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.8"><span class="ltx_text" id="S6.T3.3.20.8.1" style="font-size:70%;background-color:#FBE5D6;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.9"><span class="ltx_text" id="S6.T3.3.20.9.1" style="font-size:70%;background-color:#FBE5D6;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.10"><span class="ltx_text" id="S6.T3.3.20.10.1" style="font-size:70%;background-color:#FBE5D6;">34.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.11"><span class="ltx_text" id="S6.T3.3.20.11.1" style="font-size:70%;background-color:#FBE5D6;">773</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.12"><span class="ltx_text" id="S6.T3.3.20.12.1" style="font-size:70%;background-color:#FBE5D6;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.13"><span class="ltx_text" id="S6.T3.3.20.13.1" style="font-size:70%;background-color:#FBE5D6;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.14"><span class="ltx_text" id="S6.T3.3.20.14.1" style="font-size:70%;background-color:#FBE5D6;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.20.15"><span class="ltx_text" id="S6.T3.3.20.15.1" style="font-size:70%;background-color:#FBE5D6;">68.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.21" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T3.3.21.1"><span class="ltx_text" id="S6.T3.3.21.1.1" style="font-size:70%;background-color:#FBE5D6;"><span class="ltx_ERROR undefined" id="S6.T3.3.21.1.1.1">\vilamodel</span>-4K-8B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S6.T3.3.21.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.21.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.21.2.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.21.2.1.1.1" style="font-size:70%;">3780</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S6.T3.3.21.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.21.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.21.3.1.1" style="width:13.0pt;"><span class="ltx_text" id="S6.T3.3.21.3.1.1.1" style="font-size:70%;">18%</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S6.T3.3.21.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T3.3.21.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T3.3.21.4.1.1" style="width:21.7pt;"><span class="ltx_text" id="S6.T3.3.21.4.1.1.1" style="font-size:70%;">4036</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.5"><span class="ltx_text" id="S6.T3.3.21.5.1" style="font-size:70%;background-color:#FBE5D6;">84.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.6"><span class="ltx_text" id="S6.T3.3.21.6.1" style="font-size:70%;background-color:#FBE5D6;">91.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.7"><span class="ltx_text" id="S6.T3.3.21.7.1" style="font-size:70%;background-color:#FBE5D6;">65.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.8"><span class="ltx_text" id="S6.T3.3.21.8.1" style="font-size:70%;background-color:#FBE5D6;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.9"><span class="ltx_text" id="S6.T3.3.21.9.1" style="font-size:70%;background-color:#FBE5D6;">91.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.10"><span class="ltx_text" id="S6.T3.3.21.10.1" style="font-size:70%;background-color:#FBE5D6;">33.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.11"><span class="ltx_text" id="S6.T3.3.21.11.1" style="font-size:70%;background-color:#FBE5D6;">774</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.12"><span class="ltx_text ltx_font_bold" id="S6.T3.3.21.12.1" style="font-size:70%;background-color:#FBE5D6;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.13"><span class="ltx_text ltx_font_bold" id="S6.T3.3.21.13.1" style="font-size:70%;background-color:#FBE5D6;">70.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.14"><span class="ltx_text" id="S6.T3.3.21.14.1" style="font-size:70%;background-color:#FBE5D6;">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.21.15"><span class="ltx_text ltx_font_bold" id="S6.T3.3.21.15.1" style="font-size:70%;background-color:#FBE5D6;">72.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the VILA-HD model to other state-of-the-art Multimodal Large Language Models (MLLMs) on various benchmarks.  It provides key details for each model, including its maximum supported image resolution (considering models that handle various aspect ratios), the percentage of high-resolution patches selected by the PS3 model at test time, the total number of visual tokens used, and finally, the performance of each model on several benchmarks.  The table highlights that the VILA-HD-4K model achieves top performance on high-resolution benchmarks such as the V*Bench and 4KPro.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparing \vilamodelto state-of-the-art MLLMs. Res. is the maximum resolution each model supports. Some models (e.g., Qwen2-VL, InternVL2) can accept input images of different aspect ratios, for which the resolution is calculated as square root of the maximum number of pixels the model can take in. Select is the high-res patch selection ratio of \modelat test time. #Token is the total number of visual tokens fed into LLM under the maximum input resolution. \vilamodel-4K achieves state-of-the-art performance on high-resolution benchmarks such as V∗Bench and 4KPro.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.1">
<tr class="ltx_tr" id="S6.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.1.1.2"><span class="ltx_text" id="S6.T4.1.1.2.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.1.1.3">
<span class="ltx_text" id="S6.T4.1.1.3.1"></span><span class="ltx_text" id="S6.T4.1.1.3.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.3.2.1">
<span class="ltx_tr" id="S6.T4.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T4.1.1.3.2.1.1.1">Select</span></span>
<span class="ltx_tr" id="S6.T4.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T4.1.1.3.2.1.2.1">(Test)</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.3.3"></span><span class="ltx_text" id="S6.T4.1.1.3.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.4">
<span class="ltx_text" id="S6.T4.1.1.4.1"></span><span class="ltx_text" id="S6.T4.1.1.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.4.3.1">
<span class="ltx_tr" id="S6.T4.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.4.3.1.1.1">ViT</span></span>
<span class="ltx_tr" id="S6.T4.1.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.4.3.1.2.1">Latency</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.4.4"></span><span class="ltx_text" id="S6.T4.1.1.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.5">
<span class="ltx_text" id="S6.T4.1.1.5.1"></span><span class="ltx_text" id="S6.T4.1.1.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.5.3.1">
<span class="ltx_tr" id="S6.T4.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.5.3.1.1.1">LLM</span></span>
<span class="ltx_tr" id="S6.T4.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.5.3.1.2.1">Latency</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.5.4"></span><span class="ltx_text" id="S6.T4.1.1.5.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.6">
<span class="ltx_text" id="S6.T4.1.1.6.1"></span><span class="ltx_text" id="S6.T4.1.1.6.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.6.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.6.3.1">
<span class="ltx_tr" id="S6.T4.1.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.6.3.1.1.1">Text</span></span>
<span class="ltx_tr" id="S6.T4.1.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.6.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.6.4"></span><span class="ltx_text" id="S6.T4.1.1.6.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.7">
<span class="ltx_text" id="S6.T4.1.1.7.1"></span><span class="ltx_text" id="S6.T4.1.1.7.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.7.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.7.3.1">
<span class="ltx_tr" id="S6.T4.1.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.7.3.1.1.1">Chart</span></span>
<span class="ltx_tr" id="S6.T4.1.1.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.7.3.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.7.4"></span><span class="ltx_text" id="S6.T4.1.1.7.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.8">
<span class="ltx_text" id="S6.T4.1.1.8.1"></span><span class="ltx_text" id="S6.T4.1.1.8.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.8.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.8.3.1">
<span class="ltx_tr" id="S6.T4.1.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.8.3.1.1.1">Doc</span></span>
<span class="ltx_tr" id="S6.T4.1.1.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.8.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.8.4"></span><span class="ltx_text" id="S6.T4.1.1.8.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.9">
<span class="ltx_text" id="S6.T4.1.1.9.1"></span><span class="ltx_text" id="S6.T4.1.1.9.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.9.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.9.3.1">
<span class="ltx_tr" id="S6.T4.1.1.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.9.3.1.1.1">Info</span></span>
<span class="ltx_tr" id="S6.T4.1.1.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.9.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.9.4"></span><span class="ltx_text" id="S6.T4.1.1.9.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.10">
<span class="ltx_text" id="S6.T4.1.1.10.1"></span><span class="ltx_text" id="S6.T4.1.1.10.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.10.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.10.3.1">
<span class="ltx_tr" id="S6.T4.1.1.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.10.3.1.1.1">OCR</span></span>
<span class="ltx_tr" id="S6.T4.1.1.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.10.3.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.10.4"></span><span class="ltx_text" id="S6.T4.1.1.10.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.1">
<span class="ltx_text" id="S6.T4.1.1.1.2"></span><span class="ltx_text" id="S6.T4.1.1.1.3" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.1.1" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.1.1.1">
<span class="ltx_tr" id="S6.T4.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.1.1.1.1.1">V<sup class="ltx_sup" id="S6.T4.1.1.1.1.1.1.1.1">∗</sup></span></span>
<span class="ltx_tr" id="S6.T4.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.1.1.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.1.4"></span><span class="ltx_text" id="S6.T4.1.1.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.11">
<span class="ltx_text" id="S6.T4.1.1.11.1"></span><span class="ltx_text" id="S6.T4.1.1.11.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T4.1.1.11.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T4.1.1.11.3.1">
<span class="ltx_tr" id="S6.T4.1.1.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.11.3.1.1.1">Real</span></span>
<span class="ltx_tr" id="S6.T4.1.1.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.1.1.11.3.1.2.1">World</span></span>
</span></span><span class="ltx_text" id="S6.T4.1.1.11.4"></span><span class="ltx_text" id="S6.T4.1.1.11.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.1.12.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="12" id="S6.T4.1.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.2.1.1" style="font-size:90%;color:#808080;background-color:#E6E6E6;">1512 Resolution</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.3">
<td class="ltx_td ltx_align_left" id="S6.T4.1.3.1"><span class="ltx_text" id="S6.T4.1.3.1.1" style="font-size:90%;">Full</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.3.2"><span class="ltx_text" id="S6.T4.1.3.2.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3"><span class="ltx_text" id="S6.T4.1.3.3.1" style="font-size:90%;">0.286s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.4"><span class="ltx_text" id="S6.T4.1.3.4.1" style="font-size:90%;">0.375s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.5"><span class="ltx_text" id="S6.T4.1.3.5.1" style="font-size:90%;">78.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.6"><span class="ltx_text" id="S6.T4.1.3.6.1" style="font-size:90%;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.7"><span class="ltx_text" id="S6.T4.1.3.7.1" style="font-size:90%;">92.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.8"><span class="ltx_text" id="S6.T4.1.3.8.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.9"><span class="ltx_text" id="S6.T4.1.3.9.1" style="font-size:90%;">787</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.10"><span class="ltx_text" id="S6.T4.1.3.10.1" style="font-size:90%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.11"><span class="ltx_text" id="S6.T4.1.3.11.1" style="font-size:90%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.3.12.1" style="font-size:90%;">77.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.4.1">
<span class="ltx_text" id="S6.T4.1.4.1.1" style="font-size:90%;">ToMe </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S6.T4.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.4.2"><span class="ltx_text" id="S6.T4.1.4.2.1" style="font-size:90%;">50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.3"><span class="ltx_text" id="S6.T4.1.4.3.1" style="font-size:90%;">0.286s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.4"><span class="ltx_text" id="S6.T4.1.4.4.1" style="font-size:90%;">0.260s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.5"><span class="ltx_text" id="S6.T4.1.4.5.1" style="font-size:90%;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.6"><span class="ltx_text" id="S6.T4.1.4.6.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.7"><span class="ltx_text" id="S6.T4.1.4.7.1" style="font-size:90%;">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.8"><span class="ltx_text" id="S6.T4.1.4.8.1" style="font-size:90%;">47.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.9"><span class="ltx_text" id="S6.T4.1.4.9.1" style="font-size:90%;">622</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.10"><span class="ltx_text" id="S6.T4.1.4.10.1" style="font-size:90%;">66.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.11"><span class="ltx_text" id="S6.T4.1.4.11.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.4.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.4.12.1" style="font-size:90%;">63.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.5">
<td class="ltx_td ltx_align_left" id="S6.T4.1.5.1">
<span class="ltx_text" id="S6.T4.1.5.1.1" style="font-size:90%;">FastV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S6.T4.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.5.2"><span class="ltx_text" id="S6.T4.1.5.2.1" style="font-size:90%;">50%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.3"><span class="ltx_text" id="S6.T4.1.5.3.1" style="font-size:90%;">0.286s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.4"><span class="ltx_text" id="S6.T4.1.5.4.1" style="font-size:90%;">0.264s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.5"><span class="ltx_text ltx_font_bold" id="S6.T4.1.5.5.1" style="font-size:90%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.6"><span class="ltx_text" id="S6.T4.1.5.6.1" style="font-size:90%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.7"><span class="ltx_text ltx_font_bold" id="S6.T4.1.5.7.1" style="font-size:90%;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.8"><span class="ltx_text" id="S6.T4.1.5.8.1" style="font-size:90%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.9"><span class="ltx_text" id="S6.T4.1.5.9.1" style="font-size:90%;">769</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.10"><span class="ltx_text" id="S6.T4.1.5.10.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.11"><span class="ltx_text" id="S6.T4.1.5.11.1" style="font-size:90%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.5.12.1" style="font-size:90%;">74.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.6">
<td class="ltx_td ltx_align_left" id="S6.T4.1.6.1">
<span class="ltx_text" id="S6.T4.1.6.1.1" style="font-size:90%;">VisionZip </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib106" title=""><span class="ltx_text" style="font-size:90%;">106</span></a><span class="ltx_text" id="S6.T4.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.6.2"><span class="ltx_text" id="S6.T4.1.6.2.1" style="font-size:90%;">50%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.3"><span class="ltx_text" id="S6.T4.1.6.3.1" style="font-size:90%;">0.286s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.4"><span class="ltx_text" id="S6.T4.1.6.4.1" style="font-size:90%;">0.260s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.5"><span class="ltx_text" id="S6.T4.1.6.5.1" style="font-size:90%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.6"><span class="ltx_text" id="S6.T4.1.6.6.1" style="font-size:90%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.7"><span class="ltx_text" id="S6.T4.1.6.7.1" style="font-size:90%;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.8"><span class="ltx_text" id="S6.T4.1.6.8.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.9"><span class="ltx_text" id="S6.T4.1.6.9.1" style="font-size:90%;">722</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.10"><span class="ltx_text" id="S6.T4.1.6.10.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.11"><span class="ltx_text" id="S6.T4.1.6.11.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.6.12.1" style="font-size:90%;">70.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.7" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.7.1"><span class="ltx_ERROR undefined" id="S6.T4.1.7.1.1">\model</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.7.2"><span class="ltx_text" id="S6.T4.1.7.2.1" style="font-size:90%;background-color:#FBE5D6;">50%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.7.3.1" style="font-size:90%;background-color:#FBE5D6;">0.167s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.4"><span class="ltx_text" id="S6.T4.1.7.4.1" style="font-size:90%;background-color:#FBE5D6;">0.260s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.5"><span class="ltx_text" id="S6.T4.1.7.5.1" style="font-size:90%;background-color:#FBE5D6;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.6"><span class="ltx_text ltx_font_bold" id="S6.T4.1.7.6.1" style="font-size:90%;background-color:#FBE5D6;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.7"><span class="ltx_text" id="S6.T4.1.7.7.1" style="font-size:90%;background-color:#FBE5D6;">89.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.8"><span class="ltx_text ltx_font_bold" id="S6.T4.1.7.8.1" style="font-size:90%;background-color:#FBE5D6;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.9"><span class="ltx_text ltx_font_bold" id="S6.T4.1.7.9.1" style="font-size:90%;background-color:#FBE5D6;">774</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.10"><span class="ltx_text ltx_font_bold" id="S6.T4.1.7.10.1" style="font-size:90%;background-color:#FBE5D6;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.11"><span class="ltx_text ltx_font_bold" id="S6.T4.1.7.11.1" style="font-size:90%;background-color:#FBE5D6;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.12"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.7.12.1" style="font-size:90%;background-color:#FBE5D6;">75.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.8.1">
<span class="ltx_text" id="S6.T4.1.8.1.1" style="font-size:90%;">ToMe </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S6.T4.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.8.2"><span class="ltx_text" id="S6.T4.1.8.2.1" style="font-size:90%;">25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.3"><span class="ltx_text" id="S6.T4.1.8.3.1" style="font-size:90%;">0.286s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.4"><span class="ltx_text" id="S6.T4.1.8.4.1" style="font-size:90%;">0.180s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.5"><span class="ltx_text" id="S6.T4.1.8.5.1" style="font-size:90%;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.6"><span class="ltx_text" id="S6.T4.1.8.6.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.7"><span class="ltx_text" id="S6.T4.1.8.7.1" style="font-size:90%;">51.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.8"><span class="ltx_text" id="S6.T4.1.8.8.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.9"><span class="ltx_text" id="S6.T4.1.8.9.1" style="font-size:90%;">61.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.10"><span class="ltx_text" id="S6.T4.1.8.10.1" style="font-size:90%;">62.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.11"><span class="ltx_text" id="S6.T4.1.8.11.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.8.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.8.12.1" style="font-size:90%;">59.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.9">
<td class="ltx_td ltx_align_left" id="S6.T4.1.9.1">
<span class="ltx_text" id="S6.T4.1.9.1.1" style="font-size:90%;">FastV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S6.T4.1.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.9.2"><span class="ltx_text" id="S6.T4.1.9.2.1" style="font-size:90%;">25%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.3"><span class="ltx_text" id="S6.T4.1.9.3.1" style="font-size:90%;">0.286s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.4"><span class="ltx_text" id="S6.T4.1.9.4.1" style="font-size:90%;">0.185s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.5"><span class="ltx_text" id="S6.T4.1.9.5.1" style="font-size:90%;">76.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.6"><span class="ltx_text" id="S6.T4.1.9.6.1" style="font-size:90%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.7"><span class="ltx_text" id="S6.T4.1.9.7.1" style="font-size:90%;">78.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.8"><span class="ltx_text" id="S6.T4.1.9.8.1" style="font-size:90%;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.9"><span class="ltx_text" id="S6.T4.1.9.9.1" style="font-size:90%;">651</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.10"><span class="ltx_text" id="S6.T4.1.9.10.1" style="font-size:90%;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.11"><span class="ltx_text" id="S6.T4.1.9.11.1" style="font-size:90%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.9.12.1" style="font-size:90%;">66.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.10">
<td class="ltx_td ltx_align_left" id="S6.T4.1.10.1">
<span class="ltx_text" id="S6.T4.1.10.1.1" style="font-size:90%;">VisionZip </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib106" title=""><span class="ltx_text" style="font-size:90%;">106</span></a><span class="ltx_text" id="S6.T4.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.10.2"><span class="ltx_text" id="S6.T4.1.10.2.1" style="font-size:90%;">25%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.3"><span class="ltx_text" id="S6.T4.1.10.3.1" style="font-size:90%;">0.286s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.4"><span class="ltx_text" id="S6.T4.1.10.4.1" style="font-size:90%;">0.180s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.5"><span class="ltx_text" id="S6.T4.1.10.5.1" style="font-size:90%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.6"><span class="ltx_text" id="S6.T4.1.10.6.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.7"><span class="ltx_text" id="S6.T4.1.10.7.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.8"><span class="ltx_text" id="S6.T4.1.10.8.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.9"><span class="ltx_text" id="S6.T4.1.10.9.1" style="font-size:90%;">694</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.10"><span class="ltx_text" id="S6.T4.1.10.10.1" style="font-size:90%;">62.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.11"><span class="ltx_text" id="S6.T4.1.10.11.1" style="font-size:90%;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.10.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.10.12.1" style="font-size:90%;">67.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.11" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.11.1"><span class="ltx_ERROR undefined" id="S6.T4.1.11.1.1">\model</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.11.2"><span class="ltx_text" id="S6.T4.1.11.2.1" style="font-size:90%;background-color:#FBE5D6;">25%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.3.1" style="font-size:90%;background-color:#FBE5D6;">0.096s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.4"><span class="ltx_text" id="S6.T4.1.11.4.1" style="font-size:90%;background-color:#FBE5D6;">0.180s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.5"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.5.1" style="font-size:90%;background-color:#FBE5D6;">76.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.6"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.6.1" style="font-size:90%;background-color:#FBE5D6;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.7"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.7.1" style="font-size:90%;background-color:#FBE5D6;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.8"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.8.1" style="font-size:90%;background-color:#FBE5D6;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.9"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.9.1" style="font-size:90%;background-color:#FBE5D6;">738</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.10"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.10.1" style="font-size:90%;background-color:#FBE5D6;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.11"><span class="ltx_text ltx_font_bold" id="S6.T4.1.11.11.1" style="font-size:90%;background-color:#FBE5D6;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.12"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.11.12.1" style="font-size:90%;background-color:#FBE5D6;">71.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.12" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="12" id="S6.T4.1.12.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.12.1.1" style="font-size:90%;color:#808080;background-color:#E6E6E6;">3780 Resolution</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.13">
<td class="ltx_td ltx_align_left" id="S6.T4.1.13.1"><span class="ltx_text" id="S6.T4.1.13.1.1" style="font-size:90%;">Full</span></td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.13.2"><span class="ltx_text" id="S6.T4.1.13.2.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.3"><span class="ltx_text" id="S6.T4.1.13.3.1" style="font-size:90%;">1.812s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.4"><span class="ltx_text" id="S6.T4.1.13.4.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.5"><span class="ltx_text" id="S6.T4.1.13.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.6"><span class="ltx_text" id="S6.T4.1.13.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.7"><span class="ltx_text" id="S6.T4.1.13.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.8"><span class="ltx_text" id="S6.T4.1.13.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.9"><span class="ltx_text" id="S6.T4.1.13.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.10"><span class="ltx_text" id="S6.T4.1.13.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.11"><span class="ltx_text" id="S6.T4.1.13.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.12"><span class="ltx_text" id="S6.T4.1.13.12.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.14.1">
<span class="ltx_text" id="S6.T4.1.14.1.1" style="font-size:90%;">ToMe </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S6.T4.1.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.14.2"><span class="ltx_text" id="S6.T4.1.14.2.1" style="font-size:90%;">20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.3"><span class="ltx_text" id="S6.T4.1.14.3.1" style="font-size:90%;">1.812s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.4"><span class="ltx_text" id="S6.T4.1.14.4.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.5"><span class="ltx_text" id="S6.T4.1.14.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.6"><span class="ltx_text" id="S6.T4.1.14.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.7"><span class="ltx_text" id="S6.T4.1.14.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.8"><span class="ltx_text" id="S6.T4.1.14.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.9"><span class="ltx_text" id="S6.T4.1.14.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.10"><span class="ltx_text" id="S6.T4.1.14.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.11"><span class="ltx_text" id="S6.T4.1.14.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.14.12"><span class="ltx_text" id="S6.T4.1.14.12.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.15">
<td class="ltx_td ltx_align_left" id="S6.T4.1.15.1">
<span class="ltx_text" id="S6.T4.1.15.1.1" style="font-size:90%;">FastV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S6.T4.1.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.15.2"><span class="ltx_text" id="S6.T4.1.15.2.1" style="font-size:90%;">20%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.3"><span class="ltx_text" id="S6.T4.1.15.3.1" style="font-size:90%;">1.812s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.4"><span class="ltx_text" id="S6.T4.1.15.4.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.5"><span class="ltx_text" id="S6.T4.1.15.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.6"><span class="ltx_text" id="S6.T4.1.15.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.7"><span class="ltx_text" id="S6.T4.1.15.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.8"><span class="ltx_text" id="S6.T4.1.15.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.9"><span class="ltx_text" id="S6.T4.1.15.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.10"><span class="ltx_text" id="S6.T4.1.15.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.11"><span class="ltx_text" id="S6.T4.1.15.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.12"><span class="ltx_text" id="S6.T4.1.15.12.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.16">
<td class="ltx_td ltx_align_left" id="S6.T4.1.16.1">
<span class="ltx_text" id="S6.T4.1.16.1.1" style="font-size:90%;">VisionZip </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.1.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib106" title=""><span class="ltx_text" style="font-size:90%;">106</span></a><span class="ltx_text" id="S6.T4.1.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.1.16.2"><span class="ltx_text" id="S6.T4.1.16.2.1" style="font-size:90%;">20%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.3"><span class="ltx_text" id="S6.T4.1.16.3.1" style="font-size:90%;">1.812s</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.4"><span class="ltx_text" id="S6.T4.1.16.4.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.5"><span class="ltx_text" id="S6.T4.1.16.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.6"><span class="ltx_text" id="S6.T4.1.16.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.7"><span class="ltx_text" id="S6.T4.1.16.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.8"><span class="ltx_text" id="S6.T4.1.16.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.9"><span class="ltx_text" id="S6.T4.1.16.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.10"><span class="ltx_text" id="S6.T4.1.16.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.11"><span class="ltx_text" id="S6.T4.1.16.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.12"><span class="ltx_text" id="S6.T4.1.16.12.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.17" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.1.17.1"><span class="ltx_ERROR undefined" id="S6.T4.1.17.1.1">\model</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.1.17.2"><span class="ltx_text" id="S6.T4.1.17.2.1" style="font-size:90%;background-color:#FBE5D6;">20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.17.3.1" style="font-size:90%;background-color:#FBE5D6;">0.417s</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.4"><span class="ltx_text" id="S6.T4.1.17.4.1" style="font-size:90%;background-color:#FBE5D6;">0.383s</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.5"><span class="ltx_text" id="S6.T4.1.17.5.1" style="font-size:90%;background-color:#FBE5D6;">77.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.6"><span class="ltx_text" id="S6.T4.1.17.6.1" style="font-size:90%;background-color:#FBE5D6;">83.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.7"><span class="ltx_text" id="S6.T4.1.17.7.1" style="font-size:90%;background-color:#FBE5D6;">91.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.8"><span class="ltx_text" id="S6.T4.1.17.8.1" style="font-size:90%;background-color:#FBE5D6;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.9"><span class="ltx_text" id="S6.T4.1.17.9.1" style="font-size:90%;background-color:#FBE5D6;">773</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.10"><span class="ltx_text" id="S6.T4.1.17.10.1" style="font-size:90%;background-color:#FBE5D6;">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.11"><span class="ltx_text" id="S6.T4.1.17.11.1" style="font-size:90%;background-color:#FBE5D6;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.17.12"><span class="ltx_text ltx_font_italic" id="S6.T4.1.17.12.1" style="font-size:90%;background-color:#FBE5D6;">76.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of the proposed PS3 model against existing state-of-the-art token pruning methods for Multimodal Large Language Models (MLLMs).  The comparison focuses on two key aspects: the latency of the Vision Transformer (ViT) component and the overall performance of the MLLM on several benchmark datasets.  A notable advantage of PS3 is its significantly lower ViT latency compared to the other methods.  Furthermore, PS3 uniquely supports processing images with 4K resolution, a capability not shared by any of the other models.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparing \modelto state-of-the-art token pruning methods. \modelhas consistently lower ViT latency and achieve better performances than previous methods. \modelis also the only method that can handle 4K resolution images.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T5.1">
<tr class="ltx_tr" id="S6.T5.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S6.T5.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.1.2.1">
<span class="ltx_p" id="S6.T5.1.1.2.1.1" style="width:82.4pt;"><span class="ltx_text" id="S6.T5.1.1.2.1.1.1"></span><span class="ltx_text" id="S6.T5.1.1.2.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.2.1.1.2.1">
<span class="ltx_tr" id="S6.T5.1.1.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.2.1.1.2.1.1.1">Vision</span></span>
<span class="ltx_tr" id="S6.T5.1.1.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.2.1.1.2.1.2.1">Encoder</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.2.1.1.3"></span><span class="ltx_text" id="S6.T5.1.1.2.1.1.4" style="font-size:90%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S6.T5.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.1.3.1">
<span class="ltx_p" id="S6.T5.1.1.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.1.3.1.1.1"></span><span class="ltx_text" id="S6.T5.1.1.3.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.3.1.1.2.1">
<span class="ltx_tr" id="S6.T5.1.1.3.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.3.1.1.2.1.1.1">#Param</span></span>
<span class="ltx_tr" id="S6.T5.1.1.3.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.3.1.1.2.1.2.1">of ViT</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.3.1.1.3"></span><span class="ltx_text" id="S6.T5.1.1.3.1.1.4" style="font-size:90%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S6.T5.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.1.4.1">
<span class="ltx_p" id="S6.T5.1.1.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.1.4.1.1.1"></span><span class="ltx_text" id="S6.T5.1.1.4.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.4.1.1.2.1">
<span class="ltx_tr" id="S6.T5.1.1.4.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.4.1.1.2.1.1.1">Max</span></span>
<span class="ltx_tr" id="S6.T5.1.1.4.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.4.1.1.2.1.2.1">Res.</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.4.1.1.3"></span><span class="ltx_text" id="S6.T5.1.1.4.1.1.4" style="font-size:90%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S6.T5.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.1.5.1">
<span class="ltx_p" id="S6.T5.1.1.5.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.1.5.1.1.1"></span><span class="ltx_text" id="S6.T5.1.1.5.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.5.1.1.2.1">
<span class="ltx_tr" id="S6.T5.1.1.5.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.5.1.1.2.1.1.1">Max</span></span>
<span class="ltx_tr" id="S6.T5.1.1.5.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T5.1.1.5.1.1.2.1.2.1">#Tok</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.5.1.1.3"></span><span class="ltx_text" id="S6.T5.1.1.5.1.1.4" style="font-size:90%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.6">
<span class="ltx_text" id="S6.T5.1.1.6.1"></span><span class="ltx_text" id="S6.T5.1.1.6.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T5.1.1.6.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.6.3.1">
<span class="ltx_tr" id="S6.T5.1.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.6.3.1.1.1">Text</span></span>
<span class="ltx_tr" id="S6.T5.1.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.6.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.6.4"></span><span class="ltx_text" id="S6.T5.1.1.6.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.7">
<span class="ltx_text" id="S6.T5.1.1.7.1"></span><span class="ltx_text" id="S6.T5.1.1.7.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T5.1.1.7.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.7.3.1">
<span class="ltx_tr" id="S6.T5.1.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.7.3.1.1.1">Chart</span></span>
<span class="ltx_tr" id="S6.T5.1.1.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.7.3.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.7.4"></span><span class="ltx_text" id="S6.T5.1.1.7.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.8">
<span class="ltx_text" id="S6.T5.1.1.8.1"></span><span class="ltx_text" id="S6.T5.1.1.8.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T5.1.1.8.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.8.3.1">
<span class="ltx_tr" id="S6.T5.1.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.8.3.1.1.1">Doc</span></span>
<span class="ltx_tr" id="S6.T5.1.1.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.8.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.8.4"></span><span class="ltx_text" id="S6.T5.1.1.8.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.9">
<span class="ltx_text" id="S6.T5.1.1.9.1"></span><span class="ltx_text" id="S6.T5.1.1.9.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T5.1.1.9.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.9.3.1">
<span class="ltx_tr" id="S6.T5.1.1.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.9.3.1.1.1">Info</span></span>
<span class="ltx_tr" id="S6.T5.1.1.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.9.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.9.4"></span><span class="ltx_text" id="S6.T5.1.1.9.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.10">
<span class="ltx_text" id="S6.T5.1.1.10.1"></span><span class="ltx_text" id="S6.T5.1.1.10.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T5.1.1.10.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.10.3.1">
<span class="ltx_tr" id="S6.T5.1.1.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.10.3.1.1.1">OCR</span></span>
<span class="ltx_tr" id="S6.T5.1.1.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.10.3.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.10.4"></span><span class="ltx_text" id="S6.T5.1.1.10.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.1">
<span class="ltx_text" id="S6.T5.1.1.1.2"></span><span class="ltx_text" id="S6.T5.1.1.1.3" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T5.1.1.1.1" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.1.1.1">
<span class="ltx_tr" id="S6.T5.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.1.1.1.1.1">V<sup class="ltx_sup" id="S6.T5.1.1.1.1.1.1.1.1">∗</sup></span></span>
<span class="ltx_tr" id="S6.T5.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.1.1.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.1.4"></span><span class="ltx_text" id="S6.T5.1.1.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.11">
<span class="ltx_text" id="S6.T5.1.1.11.1"></span><span class="ltx_text" id="S6.T5.1.1.11.2" style="font-size:90%;"> </span><span class="ltx_text" id="S6.T5.1.1.11.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S6.T5.1.1.11.3.1">
<span class="ltx_tr" id="S6.T5.1.1.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.11.3.1.1.1">Real</span></span>
<span class="ltx_tr" id="S6.T5.1.1.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.1.11.3.1.2.1">World</span></span>
</span></span><span class="ltx_text" id="S6.T5.1.1.11.4"></span><span class="ltx_text" id="S6.T5.1.1.11.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T5.1.1.12"><span class="ltx_text ltx_font_italic" id="S6.T5.1.1.12.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.2.1.1">
<span class="ltx_p" id="S6.T5.1.2.1.1.1" style="width:82.4pt;"><span class="ltx_text" id="S6.T5.1.2.1.1.1.1" style="font-size:90%;">SigLIP-SO400M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T5.1.2.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib110" title=""><span class="ltx_text" style="font-size:90%;">110</span></a><span class="ltx_text" id="S6.T5.1.2.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.2.2.1">
<span class="ltx_p" id="S6.T5.1.2.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.2.2.1.1.1" style="font-size:90%;">400M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.2.3.1">
<span class="ltx_p" id="S6.T5.1.2.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.2.3.1.1.1" style="font-size:90%;">378</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.2.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.2.4.1">
<span class="ltx_p" id="S6.T5.1.2.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.2.4.1.1.1" style="font-size:90%;">196</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.5"><span class="ltx_text" id="S6.T5.1.2.5.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.6"><span class="ltx_text" id="S6.T5.1.2.6.1" style="font-size:90%;">56.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.7"><span class="ltx_text" id="S6.T5.1.2.7.1" style="font-size:90%;">51.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.8"><span class="ltx_text" id="S6.T5.1.2.8.1" style="font-size:90%;">30.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.9"><span class="ltx_text" id="S6.T5.1.2.9.1" style="font-size:90%;">387</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.10"><span class="ltx_text" id="S6.T5.1.2.10.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.11"><span class="ltx_text" id="S6.T5.1.2.11.1" style="font-size:90%;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.12"><span class="ltx_text ltx_font_italic" id="S6.T5.1.2.12.1" style="font-size:90%;">49.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.3.1.1">
<span class="ltx_p" id="S6.T5.1.3.1.1.1" style="width:82.4pt;"><span class="ltx_text" id="S6.T5.1.3.1.1.1.1" style="font-size:90%;">  + AnyRes </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T5.1.3.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S6.T5.1.3.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.3.2.1">
<span class="ltx_p" id="S6.T5.1.3.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.3.2.1.1.1" style="font-size:90%;">400M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.3.3.1">
<span class="ltx_p" id="S6.T5.1.3.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.3.3.1.1.1" style="font-size:90%;">1512</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.3.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.3.4.1">
<span class="ltx_p" id="S6.T5.1.3.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.3.4.1.1.1" style="font-size:90%;">3332</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.5"><span class="ltx_text" id="S6.T5.1.3.5.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.6"><span class="ltx_text" id="S6.T5.1.3.6.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.7"><span class="ltx_text" id="S6.T5.1.3.7.1" style="font-size:90%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.8"><span class="ltx_text" id="S6.T5.1.3.8.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.9"><span class="ltx_text" id="S6.T5.1.3.9.1" style="font-size:90%;">468</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.10"><span class="ltx_text" id="S6.T5.1.3.10.1" style="font-size:90%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.11"><span class="ltx_text" id="S6.T5.1.3.11.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.12"><span class="ltx_text ltx_font_italic" id="S6.T5.1.3.12.1" style="font-size:90%;">56.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.4.1.1">
<span class="ltx_p" id="S6.T5.1.4.1.1.1" style="width:82.4pt;"><span class="ltx_text" id="S6.T5.1.4.1.1.1.1" style="font-size:90%;">  + </span><span class="ltx_ERROR undefined" id="S6.T5.1.4.1.1.1.2">\stwo</span><span class="ltx_text" id="S6.T5.1.4.1.1.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T5.1.4.1.1.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S6.T5.1.4.1.1.1.5.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.4.2.1">
<span class="ltx_p" id="S6.T5.1.4.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.4.2.1.1.1" style="font-size:90%;">400M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.4.3.1">
<span class="ltx_p" id="S6.T5.1.4.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.4.3.1.1.1" style="font-size:90%;">1512</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.4.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.4.4.1">
<span class="ltx_p" id="S6.T5.1.4.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.4.4.1.1.1" style="font-size:90%;">2916</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.5"><span class="ltx_text" id="S6.T5.1.4.5.1" style="font-size:90%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.6"><span class="ltx_text" id="S6.T5.1.4.6.1" style="font-size:90%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.7"><span class="ltx_text" id="S6.T5.1.4.7.1" style="font-size:90%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.8"><span class="ltx_text" id="S6.T5.1.4.8.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.9"><span class="ltx_text" id="S6.T5.1.4.9.1" style="font-size:90%;">526</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.10"><span class="ltx_text" id="S6.T5.1.4.10.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.11"><span class="ltx_text" id="S6.T5.1.4.11.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.12"><span class="ltx_text ltx_font_italic" id="S6.T5.1.4.12.1" style="font-size:90%;">60.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.5" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.5.1.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.5.1.1.1" style="width:82.4pt;"><span class="ltx_ERROR undefined" id="S6.T5.1.5.1.1.1.1">\model</span><span class="ltx_text" id="S6.T5.1.5.1.1.1.2" style="font-size:90%;">-SigLIP-SO400M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.5.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.5.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.5.2.1.1.1" style="font-size:90%;">400M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.5.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.5.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.5.3.1.1.1" style="font-size:90%;">1512</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.5.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.5.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.5.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.5.4.1.1.1" style="font-size:90%;">3841</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.5.1" style="font-size:90%;background-color:#FBE5D6;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.6"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.6.1" style="font-size:90%;background-color:#FBE5D6;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.7"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.7.1" style="font-size:90%;background-color:#FBE5D6;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.8"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.8.1" style="font-size:90%;background-color:#FBE5D6;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.9"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.9.1" style="font-size:90%;background-color:#FBE5D6;">534</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.10"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.10.1" style="font-size:90%;background-color:#FBE5D6;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.11"><span class="ltx_text ltx_font_bold" id="S6.T5.1.5.11.1" style="font-size:90%;background-color:#FBE5D6;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.5.12"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T5.1.5.12.1" style="font-size:90%;background-color:#FBE5D6;">63.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.6.1.1">
<span class="ltx_p" id="S6.T5.1.6.1.1.1" style="width:82.4pt;"><span class="ltx_text" id="S6.T5.1.6.1.1.1.1" style="font-size:90%;">C-RADIO-v2-L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T5.1.6.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S6.T5.1.6.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.6.2.1">
<span class="ltx_p" id="S6.T5.1.6.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.6.2.1.1.1" style="font-size:90%;">320M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.6.3.1">
<span class="ltx_p" id="S6.T5.1.6.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.6.3.1.1.1" style="font-size:90%;">384</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S6.T5.1.6.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.6.4.1">
<span class="ltx_p" id="S6.T5.1.6.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.6.4.1.1.1" style="font-size:90%;">144</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.5"><span class="ltx_text" id="S6.T5.1.6.5.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.6"><span class="ltx_text" id="S6.T5.1.6.6.1" style="font-size:90%;">58.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.7"><span class="ltx_text" id="S6.T5.1.6.7.1" style="font-size:90%;">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.8"><span class="ltx_text" id="S6.T5.1.6.8.1" style="font-size:90%;">30.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.9"><span class="ltx_text" id="S6.T5.1.6.9.1" style="font-size:90%;">405</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.10"><span class="ltx_text" id="S6.T5.1.6.10.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.11"><span class="ltx_text" id="S6.T5.1.6.11.1" style="font-size:90%;">57.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.6.12"><span class="ltx_text ltx_font_italic" id="S6.T5.1.6.12.1" style="font-size:90%;">51.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.7.1.1">
<span class="ltx_p" id="S6.T5.1.7.1.1.1" style="width:82.4pt;"><span class="ltx_text" id="S6.T5.1.7.1.1.1.1" style="font-size:90%;">  + AnyRes </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T5.1.7.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S6.T5.1.7.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.7.2.1">
<span class="ltx_p" id="S6.T5.1.7.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.7.2.1.1.1" style="font-size:90%;">320M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.7.3.1">
<span class="ltx_p" id="S6.T5.1.7.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.7.3.1.1.1" style="font-size:90%;">1536</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.7.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.7.4.1">
<span class="ltx_p" id="S6.T5.1.7.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.7.4.1.1.1" style="font-size:90%;">2448</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.5"><span class="ltx_text" id="S6.T5.1.7.5.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6"><span class="ltx_text" id="S6.T5.1.7.6.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.7"><span class="ltx_text" id="S6.T5.1.7.7.1" style="font-size:90%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.8"><span class="ltx_text" id="S6.T5.1.7.8.1" style="font-size:90%;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.9"><span class="ltx_text" id="S6.T5.1.7.9.1" style="font-size:90%;">497</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.10"><span class="ltx_text" id="S6.T5.1.7.10.1" style="font-size:90%;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.11"><span class="ltx_text" id="S6.T5.1.7.11.1" style="font-size:90%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.12"><span class="ltx_text ltx_font_italic" id="S6.T5.1.7.12.1" style="font-size:90%;">59.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.8.1.1">
<span class="ltx_p" id="S6.T5.1.8.1.1.1" style="width:82.4pt;"><span class="ltx_text" id="S6.T5.1.8.1.1.1.1" style="font-size:90%;">  + </span><span class="ltx_ERROR undefined" id="S6.T5.1.8.1.1.1.2">\stwo</span><span class="ltx_text" id="S6.T5.1.8.1.1.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T5.1.8.1.1.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S6.T5.1.8.1.1.1.5.2" style="font-size:90%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.8.2.1">
<span class="ltx_p" id="S6.T5.1.8.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.8.2.1.1.1" style="font-size:90%;">320M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.8.3.1">
<span class="ltx_p" id="S6.T5.1.8.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.8.3.1.1.1" style="font-size:90%;">1536</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S6.T5.1.8.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.8.4.1">
<span class="ltx_p" id="S6.T5.1.8.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.8.4.1.1.1" style="font-size:90%;">2304</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.5"><span class="ltx_text" id="S6.T5.1.8.5.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.6"><span class="ltx_text" id="S6.T5.1.8.6.1" style="font-size:90%;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.7"><span class="ltx_text" id="S6.T5.1.8.7.1" style="font-size:90%;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.8"><span class="ltx_text" id="S6.T5.1.8.8.1" style="font-size:90%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.9"><span class="ltx_text" id="S6.T5.1.8.9.1" style="font-size:90%;">542</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.10"><span class="ltx_text" id="S6.T5.1.8.10.1" style="font-size:90%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.11"><span class="ltx_text" id="S6.T5.1.8.11.1" style="font-size:90%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.8.12"><span class="ltx_text ltx_font_italic" id="S6.T5.1.8.12.1" style="font-size:90%;">62.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.9" style="background-color:#FBE5D6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S6.T5.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.9.1.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.9.1.1.1" style="width:82.4pt;"><span class="ltx_ERROR undefined" id="S6.T5.1.9.1.1.1.1">\model</span><span class="ltx_text" id="S6.T5.1.9.1.1.1.2" style="font-size:90%;">-C-RADIO-v2-L</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S6.T5.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.9.2.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.9.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="S6.T5.1.9.2.1.1.1" style="font-size:90%;">320M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S6.T5.1.9.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.9.3.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.9.3.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.9.3.1.1.1" style="font-size:90%;">1536</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S6.T5.1.9.4">
<span class="ltx_inline-block ltx_align_top" id="S6.T5.1.9.4.1" style="background-color:#FBE5D6;">
<span class="ltx_p" id="S6.T5.1.9.4.1.1" style="width:19.5pt;"><span class="ltx_text" id="S6.T5.1.9.4.1.1.1" style="font-size:90%;">3024</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.5.1" style="font-size:90%;background-color:#FBE5D6;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.6"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.6.1" style="font-size:90%;background-color:#FBE5D6;">72.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.7"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.7.1" style="font-size:90%;background-color:#FBE5D6;">83.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.8"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.8.1" style="font-size:90%;background-color:#FBE5D6;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.9"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.9.1" style="font-size:90%;background-color:#FBE5D6;">569</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.10"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.10.1" style="font-size:90%;background-color:#FBE5D6;">68.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.11"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.11.1" style="font-size:90%;background-color:#FBE5D6;">61.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.9.12"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T5.1.9.12.1" style="font-size:90%;background-color:#FBE5D6;">64.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table demonstrates the generalizability of the PS3 pre-training method by showing its performance when applied to various state-of-the-art vision encoders.  It compares the results of using PS3 pre-training with the baseline performance of these encoders (without PS3) as well as two other high-resolution scaling approaches (AnyRes and S2). The table highlights key metrics such as the number of parameters in the ViT backbone (#Param), the maximum resolution processed by each model in the multi-modal large language model (MLLM) (Max Res.), the maximum number of vision tokens used in the MLLM (Max #Tok), and the average accuracy across various benchmark datasets.  All model configurations using PS3 in this table are set to use all of the available high-resolution patches.
> <details>
> <summary>read the caption</summary>
> Table 5: Generalizability of \modelpre-training to state-of-the-art vision encoders. #Param of ViT is the number of parameters of the ViT backbone. Max Res. is the maximum resolution each model processes in MLLM. Max #Tok is the maximum number of vision tokens in MLLM. All the \modelmodels select all the high-res patches.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T7.3.3">
<tr class="ltx_tr" id="S7.T7.3.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T7.3.3.1.2"><span class="ltx_text" id="S7.T7.3.3.1.2.1" style="font-size:90%;">Training and Model Design Choices</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.3.3.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S7.T7.3.3.1.1.m1.1"><semantics id="S7.T7.3.3.1.1.m1.1a"><mi id="S7.T7.3.3.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S7.T7.3.3.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S7.T7.3.3.1.1.m1.1b"><ci id="S7.T7.3.3.1.1.m1.1.1.cmml" xref="S7.T7.3.3.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S7.T7.3.3.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S7.T7.3.3.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.3.3.2.1"><span class="ltx_text ltx_font_italic" id="S7.T7.3.3.2.1.1" style="font-size:90%;">Pre-training algorithm designs  <span class="ltx_text" id="S7.T7.3.3.2.1.1.1" style="color:#808080;">(Section <a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#S2.SS3" title="2.3 Pre-Training Algorithm of \model ‣ 2 \model: Vision Pre-Training at 4K Resolution ‣ Scaling Vision Pre-Training to 4K Resolution"><span class="ltx_text ltx_ref_tag">2.3</span></a>)</span></span></td>
<td class="ltx_td ltx_border_t" id="S7.T7.3.3.2.2"></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.3">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.3.1"><span class="ltx_text" id="S7.T7.3.3.3.1.1" style="font-size:90%;">- using ground truth selection score</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.3.3.3.2"><span class="ltx_text" id="S7.T7.3.3.3.2.1" style="font-size:90%;">+5.1</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.4">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.4.1"><span class="ltx_text" id="S7.T7.3.3.4.1.1" style="font-size:90%;">- pooling only tokens in ground-truth boxes</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.3.3.4.2"><span class="ltx_text" id="S7.T7.3.3.4.2.1" style="font-size:90%;">+3.7</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.5">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.5.1"><span class="ltx_text" id="S7.T7.3.3.5.1.1" style="font-size:90%;">- mixing global and local contrast</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.3.3.5.2"><span class="ltx_text" id="S7.T7.3.3.5.2.1" style="font-size:90%;">+1.0</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.6">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.6.1"><span class="ltx_text" id="S7.T7.3.3.6.1.1" style="font-size:90%;">- w/o intra-image contrast</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.3.3.6.2"><span class="ltx_text" id="S7.T7.3.3.6.2.1" style="font-size:90%;">+5.3</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.7">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.7.1">
<span class="ltx_ERROR undefined" id="S7.T7.3.3.7.1.1">\model</span><span class="ltx_text ltx_font_italic" id="S7.T7.3.3.7.1.2" style="font-size:90%;">model designs  <span class="ltx_text" id="S7.T7.3.3.7.1.2.1" style="color:#808080;">(Section <a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#S2.SS2" title="2.2 Model Design of \model ‣ 2 \model: Vision Pre-Training at 4K Resolution ‣ Scaling Vision Pre-Training to 4K Resolution"><span class="ltx_text ltx_ref_tag">2.2</span></a>)</span></span>
</td>
<td class="ltx_td" id="S7.T7.3.3.7.2"></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.8">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.8.1"><span class="ltx_text" id="S7.T7.3.3.8.1.1" style="font-size:90%;">- multi-scale feature extraction</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.3.3.8.2"><span class="ltx_text" id="S7.T7.3.3.8.2.1" style="font-size:90%;">+1.0</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.9">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.9.1"><span class="ltx_text" id="S7.T7.3.3.9.1.1" style="font-size:90%;">- scale-aware pos. emb.</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.3.3.9.2"><span class="ltx_text" id="S7.T7.3.3.9.2.1" style="font-size:90%;">+0.8</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.10">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.10.1"><span class="ltx_text" id="S7.T7.3.3.10.1.1" style="font-size:90%;">- low-res KV cache</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.3.3.10.2"><span class="ltx_text" id="S7.T7.3.3.10.2.1" style="font-size:90%;">+8.8</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.11">
<td class="ltx_td ltx_align_left" id="S7.T7.3.3.11.1"><span class="ltx_text ltx_font_italic" id="S7.T7.3.3.11.1.1" style="font-size:90%;">MLLM model design  <span class="ltx_text" id="S7.T7.3.3.11.1.1.1" style="color:#808080;">(Section <a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#S3.SS1" title="3.1 Building \vilamodelwith \model ‣ 3 \vilamodel: Enabling High-Resolution MLLM with \model ‣ Scaling Vision Pre-Training to 4K Resolution"><span class="ltx_text ltx_ref_tag">3.1</span></a>)</span></span></td>
<td class="ltx_td" id="S7.T7.3.3.11.2"></td>
</tr>
<tr class="ltx_tr" id="S7.T7.3.3.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S7.T7.3.3.12.1"><span class="ltx_text" id="S7.T7.3.3.12.1.1" style="font-size:90%;">- additional vision pos. emb.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T7.3.3.12.2"><span class="ltx_text" id="S7.T7.3.3.12.2.1" style="font-size:90%;">+0.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of high-resolution, self-supervised fine-tuning (SFT) data on the performance of multi-modal large language models (MLLMs).  The study specifically investigates the effect of adding high-resolution data on the MLLMs' ability to perceive and understand high-resolution visual details, particularly in natural images.  By comparing MLLMs trained with and without this supplemental high-resolution data, the table quantifies the performance improvements across various benchmark tasks.  It shows that incorporating high-resolution SFT data leads to improved performance across many evaluation metrics, most notably in scenarios involving natural images where high-resolution detail is crucial.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation of MLLM SFT data for high-resolution feature alignment. The high-resolution SFT data (HR Data) generally improves high-resolution perception, especially on natural images.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T7.fig1.8">
<tr class="ltx_tr" id="S7.T7.fig1.8.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T7.fig1.8.1.1">
<span class="ltx_text" id="S7.T7.fig1.8.1.1.1"></span><span class="ltx_text" id="S7.T7.fig1.8.1.1.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T7.fig1.8.1.1.2.1">
<span class="ltx_tr" id="S7.T7.fig1.8.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T7.fig1.8.1.1.2.1.1.1">Patch</span></span>
<span class="ltx_tr" id="S7.T7.fig1.8.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T7.fig1.8.1.1.2.1.2.1">Selection</span></span>
</span></span><span class="ltx_text" id="S7.T7.fig1.8.1.1.3"></span><span class="ltx_text" id="S7.T7.fig1.8.1.1.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.fig1.8.1.2">
<span class="ltx_text" id="S7.T7.fig1.8.1.2.1"></span><span class="ltx_text" id="S7.T7.fig1.8.1.2.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T7.fig1.8.1.2.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T7.fig1.8.1.2.3.1">
<span class="ltx_tr" id="S7.T7.fig1.8.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T7.fig1.8.1.2.3.1.1.1">Select</span></span>
<span class="ltx_tr" id="S7.T7.fig1.8.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T7.fig1.8.1.2.3.1.2.1">(Train)</span></span>
</span></span><span class="ltx_text" id="S7.T7.fig1.8.1.2.4"></span><span class="ltx_text" id="S7.T7.fig1.8.1.2.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.fig1.8.1.3">
<span class="ltx_text" id="S7.T7.fig1.8.1.3.1"></span><span class="ltx_text" id="S7.T7.fig1.8.1.3.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T7.fig1.8.1.3.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T7.fig1.8.1.3.3.1">
<span class="ltx_tr" id="S7.T7.fig1.8.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T7.fig1.8.1.3.3.1.1.1">Select</span></span>
<span class="ltx_tr" id="S7.T7.fig1.8.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T7.fig1.8.1.3.3.1.2.1">(Test)</span></span>
</span></span><span class="ltx_text" id="S7.T7.fig1.8.1.3.4"></span><span class="ltx_text" id="S7.T7.fig1.8.1.3.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.fig1.8.1.4">
<span class="ltx_text" id="S7.T7.fig1.8.1.4.1"></span><span class="ltx_text" id="S7.T7.fig1.8.1.4.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T7.fig1.8.1.4.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T7.fig1.8.1.4.3.1">
<span class="ltx_tr" id="S7.T7.fig1.8.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T7.fig1.8.1.4.3.1.1.1">Recall</span></span>
<span class="ltx_tr" id="S7.T7.fig1.8.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T7.fig1.8.1.4.3.1.2.1">(Test)</span></span>
</span></span><span class="ltx_text" id="S7.T7.fig1.8.1.4.4"></span><span class="ltx_text" id="S7.T7.fig1.8.1.4.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T7.fig1.8.1.5"><span class="ltx_text" id="S7.T7.fig1.8.1.5.1" style="font-size:90%;">Avg. Acc.</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.fig1.8.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.fig1.8.2.1"><span class="ltx_text" id="S7.T7.fig1.8.2.1.1" style="font-size:90%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.2.2"><span class="ltx_text" id="S7.T7.fig1.8.2.2.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.2.3"><span class="ltx_text" id="S7.T7.fig1.8.2.3.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.2.4"><span class="ltx_text" id="S7.T7.fig1.8.2.4.1" style="font-size:90%;">43.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.2.5"><span class="ltx_text" id="S7.T7.fig1.8.2.5.1" style="font-size:90%;">52.3</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.fig1.8.3">
<td class="ltx_td ltx_align_left" id="S7.T7.fig1.8.3.1"><span class="ltx_text" id="S7.T7.fig1.8.3.1.1" style="font-size:90%;">Bottom-up</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.3.2"><span class="ltx_text" id="S7.T7.fig1.8.3.2.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.3.3"><span class="ltx_text" id="S7.T7.fig1.8.3.3.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.3.4"><span class="ltx_text" id="S7.T7.fig1.8.3.4.1" style="font-size:90%;">87.4%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.3.5"><span class="ltx_text" id="S7.T7.fig1.8.3.5.1" style="font-size:90%;">59.7 (+7.4)</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.fig1.8.4">
<td class="ltx_td ltx_align_left" id="S7.T7.fig1.8.4.1"><span class="ltx_text" id="S7.T7.fig1.8.4.1.1" style="font-size:90%;">Top-down</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.4.2"><span class="ltx_text" id="S7.T7.fig1.8.4.2.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.4.3"><span class="ltx_text" id="S7.T7.fig1.8.4.3.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.4.4"><span class="ltx_text" id="S7.T7.fig1.8.4.4.1" style="font-size:90%;">91.2%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.4.5"><span class="ltx_text" id="S7.T7.fig1.8.4.5.1" style="font-size:90%;">61.0 (+8.7)</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.fig1.8.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T7.fig1.8.5.1"><span class="ltx_text" id="S7.T7.fig1.8.5.1.1" style="font-size:90%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.5.2"><span class="ltx_text" id="S7.T7.fig1.8.5.2.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.5.3"><span class="ltx_text" id="S7.T7.fig1.8.5.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.5.4"><span class="ltx_text" id="S7.T7.fig1.8.5.4.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T7.fig1.8.5.5"><span class="ltx_text" id="S7.T7.fig1.8.5.5.1" style="font-size:90%;">56.5</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.fig1.8.6">
<td class="ltx_td ltx_align_left" id="S7.T7.fig1.8.6.1"><span class="ltx_text" id="S7.T7.fig1.8.6.1.1" style="font-size:90%;">Bottom-up</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.6.2"><span class="ltx_text" id="S7.T7.fig1.8.6.2.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.6.3"><span class="ltx_text" id="S7.T7.fig1.8.6.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.6.4"><span class="ltx_text" id="S7.T7.fig1.8.6.4.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.6.5"><span class="ltx_text" id="S7.T7.fig1.8.6.5.1" style="font-size:90%;">61.1 (+4.6)</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.fig1.8.7">
<td class="ltx_td ltx_align_left" id="S7.T7.fig1.8.7.1"><span class="ltx_text" id="S7.T7.fig1.8.7.1.1" style="font-size:90%;">Top-down</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.7.2"><span class="ltx_text" id="S7.T7.fig1.8.7.2.1" style="font-size:90%;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.7.3"><span class="ltx_text" id="S7.T7.fig1.8.7.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.7.4"><span class="ltx_text" id="S7.T7.fig1.8.7.4.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S7.T7.fig1.8.7.5"><span class="ltx_text" id="S7.T7.fig1.8.7.5.1" style="font-size:90%;">61.9 (+5.4)</span></td>
</tr>
<tr class="ltx_tr" id="S7.T7.fig1.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S7.T7.fig1.8.8.1"><span class="ltx_text" id="S7.T7.fig1.8.8.1.1" style="font-size:90%;">Top-down</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.fig1.8.8.2"><span class="ltx_text" id="S7.T7.fig1.8.8.2.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.fig1.8.8.3"><span class="ltx_text" id="S7.T7.fig1.8.8.3.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.fig1.8.8.4"><span class="ltx_text" id="S7.T7.fig1.8.8.4.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S7.T7.fig1.8.8.5"><span class="ltx_text" id="S7.T7.fig1.8.8.5.1" style="font-size:90%;">63.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 provides a detailed breakdown of the data used for pre-training the PS3 model.  It shows the sources of the 75 million high-resolution images (1K to 4K resolution) used, along with the number of images and bounding boxes from each source.  Furthermore, it indicates the total number of bounding boxes (282 million) and detailed captions associated with salient local regions within those images. This table is crucial in understanding the scale and composition of the training data used for the high-resolution vision pre-training.
> <details>
> <summary>read the caption</summary>
> Table 9: Data sources and statistics. We collect in total 75M images with 1K - 4K resolution and 282M pairs of bounding boxes and detailed captions about salient local regions in the images.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T8.1">
<tr class="ltx_tr" id="S7.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T8.1.1.2">
<span class="ltx_text" id="S7.T8.1.1.2.1"></span><span class="ltx_text" id="S7.T8.1.1.2.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.2.2.1">
<span class="ltx_tr" id="S7.T8.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T8.1.1.2.2.1.1.1">Vision</span></span>
<span class="ltx_tr" id="S7.T8.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T8.1.1.2.2.1.2.1">Encoder</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.2.3"></span><span class="ltx_text" id="S7.T8.1.1.2.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T8.1.1.3">
<span class="ltx_text" id="S7.T8.1.1.3.1"></span><span class="ltx_text" id="S7.T8.1.1.3.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.3.2.1">
<span class="ltx_tr" id="S7.T8.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T8.1.1.3.2.1.1.1">Max</span></span>
<span class="ltx_tr" id="S7.T8.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T8.1.1.3.2.1.2.1">Res.</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.3.3"></span><span class="ltx_text" id="S7.T8.1.1.3.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S7.T8.1.1.4">
<span class="ltx_text" id="S7.T8.1.1.4.1"></span><span class="ltx_text" id="S7.T8.1.1.4.2" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.4.2.1">
<span class="ltx_tr" id="S7.T8.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T8.1.1.4.2.1.1.1">HR</span></span>
<span class="ltx_tr" id="S7.T8.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S7.T8.1.1.4.2.1.2.1">Data</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.4.3"></span><span class="ltx_text" id="S7.T8.1.1.4.4" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.5">
<span class="ltx_text" id="S7.T8.1.1.5.1"></span><span class="ltx_text" id="S7.T8.1.1.5.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T8.1.1.5.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.5.3.1">
<span class="ltx_tr" id="S7.T8.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.5.3.1.1.1">Text</span></span>
<span class="ltx_tr" id="S7.T8.1.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.5.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.5.4"></span><span class="ltx_text" id="S7.T8.1.1.5.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.6">
<span class="ltx_text" id="S7.T8.1.1.6.1"></span><span class="ltx_text" id="S7.T8.1.1.6.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T8.1.1.6.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.6.3.1">
<span class="ltx_tr" id="S7.T8.1.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.6.3.1.1.1">Chart</span></span>
<span class="ltx_tr" id="S7.T8.1.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.6.3.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.6.4"></span><span class="ltx_text" id="S7.T8.1.1.6.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.7">
<span class="ltx_text" id="S7.T8.1.1.7.1"></span><span class="ltx_text" id="S7.T8.1.1.7.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T8.1.1.7.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.7.3.1">
<span class="ltx_tr" id="S7.T8.1.1.7.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.7.3.1.1.1">Doc</span></span>
<span class="ltx_tr" id="S7.T8.1.1.7.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.7.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.7.4"></span><span class="ltx_text" id="S7.T8.1.1.7.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.8">
<span class="ltx_text" id="S7.T8.1.1.8.1"></span><span class="ltx_text" id="S7.T8.1.1.8.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T8.1.1.8.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.8.3.1">
<span class="ltx_tr" id="S7.T8.1.1.8.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.8.3.1.1.1">Info</span></span>
<span class="ltx_tr" id="S7.T8.1.1.8.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.8.3.1.2.1">VQA</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.8.4"></span><span class="ltx_text" id="S7.T8.1.1.8.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.9">
<span class="ltx_text" id="S7.T8.1.1.9.1"></span><span class="ltx_text" id="S7.T8.1.1.9.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T8.1.1.9.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.9.3.1">
<span class="ltx_tr" id="S7.T8.1.1.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.9.3.1.1.1">OCR</span></span>
<span class="ltx_tr" id="S7.T8.1.1.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.9.3.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.9.4"></span><span class="ltx_text" id="S7.T8.1.1.9.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.1">
<span class="ltx_text" id="S7.T8.1.1.1.2"></span><span class="ltx_text" id="S7.T8.1.1.1.3" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T8.1.1.1.1" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.1.1.1">
<span class="ltx_tr" id="S7.T8.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.1.1.1.1.1">V<sup class="ltx_sup" id="S7.T8.1.1.1.1.1.1.1.1">∗</sup></span></span>
<span class="ltx_tr" id="S7.T8.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.1.1.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.1.4"></span><span class="ltx_text" id="S7.T8.1.1.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.10">
<span class="ltx_text" id="S7.T8.1.1.10.1"></span><span class="ltx_text" id="S7.T8.1.1.10.2" style="font-size:90%;"> </span><span class="ltx_text" id="S7.T8.1.1.10.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S7.T8.1.1.10.3.1">
<span class="ltx_tr" id="S7.T8.1.1.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.10.3.1.1.1">Real</span></span>
<span class="ltx_tr" id="S7.T8.1.1.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S7.T8.1.1.10.3.1.2.1">World</span></span>
</span></span><span class="ltx_text" id="S7.T8.1.1.10.4"></span><span class="ltx_text" id="S7.T8.1.1.10.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S7.T8.1.1.11"><span class="ltx_text ltx_font_italic" id="S7.T8.1.1.11.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T8.1.2.1"><span class="ltx_ERROR undefined" id="S7.T8.1.2.1.1">\model</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T8.1.2.2"><span class="ltx_text" id="S7.T8.1.2.2.1" style="font-size:90%;">1512</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T8.1.2.3"><span class="ltx_text" id="S7.T8.1.2.3.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.4"><span class="ltx_text" id="S7.T8.1.2.4.1" style="font-size:90%;">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.5"><span class="ltx_text" id="S7.T8.1.2.5.1" style="font-size:90%;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.6"><span class="ltx_text" id="S7.T8.1.2.6.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.7"><span class="ltx_text" id="S7.T8.1.2.7.1" style="font-size:90%;">39.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.8"><span class="ltx_text" id="S7.T8.1.2.8.1" style="font-size:90%;">535</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.9"><span class="ltx_text" id="S7.T8.1.2.9.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.10"><span class="ltx_text" id="S7.T8.1.2.10.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S7.T8.1.2.11"><span class="ltx_text ltx_font_italic" id="S7.T8.1.2.11.1" style="font-size:90%;">62.4</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.1.3">
<td class="ltx_td ltx_align_left" id="S7.T8.1.3.1"><span class="ltx_ERROR undefined" id="S7.T8.1.3.1.1">\model</span></td>
<td class="ltx_td ltx_align_left" id="S7.T8.1.3.2"><span class="ltx_text" id="S7.T8.1.3.2.1" style="font-size:90%;">1512</span></td>
<td class="ltx_td ltx_align_left" id="S7.T8.1.3.3"><span class="ltx_text" id="S7.T8.1.3.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.4"><span class="ltx_text" id="S7.T8.1.3.4.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.5"><span class="ltx_text" id="S7.T8.1.3.5.1" style="font-size:90%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.6"><span class="ltx_text" id="S7.T8.1.3.6.1" style="font-size:90%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.7"><span class="ltx_text" id="S7.T8.1.3.7.1" style="font-size:90%;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.8"><span class="ltx_text" id="S7.T8.1.3.8.1" style="font-size:90%;">534</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.9"><span class="ltx_text" id="S7.T8.1.3.9.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.10"><span class="ltx_text" id="S7.T8.1.3.10.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S7.T8.1.3.11"><span class="ltx_text ltx_font_italic" id="S7.T8.1.3.11.1" style="font-size:90%;">63.2</span></td>
</tr>
<tr class="ltx_tr" id="S7.T8.1.4">
<td class="ltx_td ltx_border_bb" id="S7.T8.1.4.1"></td>
<td class="ltx_td ltx_border_bb" id="S7.T8.1.4.2"></td>
<td class="ltx_td ltx_border_bb" id="S7.T8.1.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.4"><span class="ltx_text" id="S7.T8.1.4.4.1" style="font-size:90%;">(+0.5)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.5"><span class="ltx_text" id="S7.T8.1.4.5.1" style="font-size:90%;">(-0.1)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.6"><span class="ltx_text" id="S7.T8.1.4.6.1" style="font-size:90%;">(-0.2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.7"><span class="ltx_text" id="S7.T8.1.4.7.1" style="font-size:90%;">(+1.7)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.8"><span class="ltx_text" id="S7.T8.1.4.8.1" style="font-size:90%;">(-0.1)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.9"><span class="ltx_text" id="S7.T8.1.4.9.1" style="font-size:90%;">(+3.1)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.10"><span class="ltx_text" id="S7.T8.1.4.10.1" style="font-size:90%;">(+0.9)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S7.T8.1.4.11"><span class="ltx_text ltx_font_italic" id="S7.T8.1.4.11.1" style="font-size:90%;">(+0.8)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the EfficientViT-SAM model for generating segmentation masks during the PS3 pre-training data curation.  These parameters control aspects of the mask generation process, such as the number of points sampled per side and batch, the number of layers in the cropping process, the downscaling factor for points, and the thresholds for prediction IOU and stability scores. These settings influence the density and detail of the generated masks, ultimately impacting the quality and effectiveness of the PS3 pre-training data.
> <details>
> <summary>read the caption</summary>
> Table 10: Arguments for EfficientViT-SAM mask generation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T9.7">
<tr class="ltx_tr" id="A1.T9.7.8">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T9.7.8.1" rowspan="2"><span class="ltx_text" id="A1.T9.7.8.1.1" style="font-size:70%;">Data Source</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="3" id="A1.T9.7.8.2"><span class="ltx_text" id="A1.T9.7.8.2.1" style="font-size:70%;">1K - 2K Res.</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="3" id="A1.T9.7.8.3"><span class="ltx_text" id="A1.T9.7.8.3.1" style="font-size:70%;">2K - 4K Res.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.7.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.9.1.1">
<span class="ltx_p" id="A1.T9.7.9.1.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.7.9.1.1.1.1" style="font-size:70%;">#Img</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.7.9.2"><span class="ltx_text" id="A1.T9.7.9.2.1" style="font-size:70%;">#Box</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.9.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.9.3.1">
<span class="ltx_p" id="A1.T9.7.9.3.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.7.9.3.1.1.1"></span><span class="ltx_text" id="A1.T9.7.9.3.1.1.2" style="font-size:70%;"> </span><span class="ltx_text ltx_align_center" id="A1.T9.7.9.3.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A1.T9.7.9.3.1.1.3.1">
<span class="ltx_tr" id="A1.T9.7.9.3.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T9.7.9.3.1.1.3.1.1.1">Avg.</span></span>
<span class="ltx_tr" id="A1.T9.7.9.3.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T9.7.9.3.1.1.3.1.2.1">Box size</span></span>
</span></span><span class="ltx_text ltx_align_center" id="A1.T9.7.9.3.1.1.4"></span><span class="ltx_text" id="A1.T9.7.9.3.1.1.5" style="font-size:70%;"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.9.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.9.4.1">
<span class="ltx_p" id="A1.T9.7.9.4.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.7.9.4.1.1.1" style="font-size:70%;">#Img</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.7.9.5"><span class="ltx_text" id="A1.T9.7.9.5.1" style="font-size:70%;">#Box</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.9.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.9.6.1">
<span class="ltx_p" id="A1.T9.7.9.6.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.7.9.6.1.1.1"></span><span class="ltx_text" id="A1.T9.7.9.6.1.1.2" style="font-size:70%;"> </span><span class="ltx_text ltx_align_center" id="A1.T9.7.9.6.1.1.3" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="A1.T9.7.9.6.1.1.3.1">
<span class="ltx_tr" id="A1.T9.7.9.6.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T9.7.9.6.1.1.3.1.1.1">Avg.</span></span>
<span class="ltx_tr" id="A1.T9.7.9.6.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T9.7.9.6.1.1.3.1.2.1">Box size</span></span>
</span></span><span class="ltx_text ltx_align_center" id="A1.T9.7.9.6.1.1.4"></span><span class="ltx_text" id="A1.T9.7.9.6.1.1.5" style="font-size:70%;"></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.7.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="A1.T9.7.10.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.7.10.1.1" style="font-size:70%;">Natural images</em></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.7.10.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.7.10.3"></td>
<td class="ltx_td ltx_border_t" id="A1.T9.7.10.4"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.7.10.5"></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.2">
<td class="ltx_td ltx_align_left" id="A1.T9.2.2.3">
<span class="ltx_text" id="A1.T9.2.2.3.1" style="font-size:70%;">DataComp </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T9.2.2.3.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="A1.T9.2.2.3.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.2.2.4.1">
<span class="ltx_p" id="A1.T9.2.2.4.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.2.2.4.1.1.1" style="font-size:70%;">18M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.2.5"><span class="ltx_text" id="A1.T9.2.2.5.1" style="font-size:70%;">54M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.1.1.1">
<span class="ltx_p" id="A1.T9.1.1.1.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.1.1.1.1.1.1" style="font-size:70%;">424</span><math alttext="\times" class="ltx_centering" display="inline" id="A1.T9.1.1.1.1.1.m1.1"><semantics id="A1.T9.1.1.1.1.1.m1.1a"><mo id="A1.T9.1.1.1.1.1.m1.1.1" mathsize="70%" xref="A1.T9.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.1.1.1.1.1.m1.1b"><times id="A1.T9.1.1.1.1.1.m1.1.1.cmml" xref="A1.T9.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.1.1.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A1.T9.1.1.1.1.1.2" style="font-size:70%;">438</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.2.2.6.1">
<span class="ltx_p" id="A1.T9.2.2.6.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.2.2.6.1.1.1" style="font-size:70%;">9M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.2.7"><span class="ltx_text" id="A1.T9.2.2.7.1" style="font-size:70%;">36M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.2.2.2.1">
<span class="ltx_p" id="A1.T9.2.2.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.2.2.2.1.1.1" style="font-size:70%;">562</span><math alttext="\times" class="ltx_centering" display="inline" id="A1.T9.2.2.2.1.1.m1.1"><semantics id="A1.T9.2.2.2.1.1.m1.1a"><mo id="A1.T9.2.2.2.1.1.m1.1.1" mathsize="70%" xref="A1.T9.2.2.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.2.2.2.1.1.m1.1b"><times id="A1.T9.2.2.2.1.1.m1.1.1.cmml" xref="A1.T9.2.2.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.2.2.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.2.2.2.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A1.T9.2.2.2.1.1.2" style="font-size:70%;">578</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.3.3">
<td class="ltx_td ltx_align_left" id="A1.T9.3.3.2">
<span class="ltx_text" id="A1.T9.3.3.2.1" style="font-size:70%;">SA-1B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T9.3.3.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="A1.T9.3.3.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.3.3.3.1">
<span class="ltx_p" id="A1.T9.3.3.3.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.3.3.3.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.3.3.4"><span class="ltx_text" id="A1.T9.3.3.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.3.3.5.1">
<span class="ltx_p" id="A1.T9.3.3.5.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.3.3.5.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.3.3.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.3.3.6.1">
<span class="ltx_p" id="A1.T9.3.3.6.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.3.3.6.1.1.1" style="font-size:70%;">11M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.3.3.7"><span class="ltx_text" id="A1.T9.3.3.7.1" style="font-size:70%;">44M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.3.3.1.1">
<span class="ltx_p" id="A1.T9.3.3.1.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.3.3.1.1.1.1" style="font-size:70%;">302</span><math alttext="\times" class="ltx_centering" display="inline" id="A1.T9.3.3.1.1.1.m1.1"><semantics id="A1.T9.3.3.1.1.1.m1.1a"><mo id="A1.T9.3.3.1.1.1.m1.1.1" mathsize="70%" xref="A1.T9.3.3.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.3.3.1.1.1.m1.1b"><times id="A1.T9.3.3.1.1.1.m1.1.1.cmml" xref="A1.T9.3.3.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.3.3.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.3.3.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A1.T9.3.3.1.1.1.2" style="font-size:70%;">312</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.7.11">
<td class="ltx_td ltx_align_left" colspan="3" id="A1.T9.7.11.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.7.11.1.1" style="font-size:70%;">Documents</em></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.11.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.11.3"></td>
<td class="ltx_td" id="A1.T9.7.11.4"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.11.5"></td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.5">
<td class="ltx_td ltx_align_left" id="A1.T9.5.5.3">
<span class="ltx_text" id="A1.T9.5.5.3.1" style="font-size:70%;">IDL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T9.5.5.3.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="A1.T9.5.5.3.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.5.5.4.1">
<span class="ltx_p" id="A1.T9.5.5.4.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.5.5.4.1.1.1" style="font-size:70%;">12M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.5"><span class="ltx_text" id="A1.T9.5.5.5.1" style="font-size:70%;">48M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.4.4.1.1">
<span class="ltx_p" id="A1.T9.4.4.1.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.4.4.1.1.1.1" style="font-size:70%;">28</span><math alttext="\times" class="ltx_centering" display="inline" id="A1.T9.4.4.1.1.1.m1.1"><semantics id="A1.T9.4.4.1.1.1.m1.1a"><mo id="A1.T9.4.4.1.1.1.m1.1.1" mathsize="70%" xref="A1.T9.4.4.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.4.4.1.1.1.m1.1b"><times id="A1.T9.4.4.1.1.1.m1.1.1.cmml" xref="A1.T9.4.4.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.4.4.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.4.4.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A1.T9.4.4.1.1.1.2" style="font-size:70%;">286</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.5.5.6.1">
<span class="ltx_p" id="A1.T9.5.5.6.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.5.5.6.1.1.1" style="font-size:70%;">7M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.5.7"><span class="ltx_text" id="A1.T9.5.5.7.1" style="font-size:70%;">28M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.5.5.2.1">
<span class="ltx_p" id="A1.T9.5.5.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.5.5.2.1.1.1" style="font-size:70%;">30</span><math alttext="\times" class="ltx_centering" display="inline" id="A1.T9.5.5.2.1.1.m1.1"><semantics id="A1.T9.5.5.2.1.1.m1.1a"><mo id="A1.T9.5.5.2.1.1.m1.1.1" mathsize="70%" xref="A1.T9.5.5.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.5.5.2.1.1.m1.1b"><times id="A1.T9.5.5.2.1.1.m1.1.1.cmml" xref="A1.T9.5.5.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.5.5.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.5.5.2.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A1.T9.5.5.2.1.1.2" style="font-size:70%;">330</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.7.7">
<td class="ltx_td ltx_align_left" id="A1.T9.7.7.3">
<span class="ltx_text" id="A1.T9.7.7.3.1" style="font-size:70%;">PDFA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T9.7.7.3.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.19903v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="A1.T9.7.7.3.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.7.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.7.4.1">
<span class="ltx_p" id="A1.T9.7.7.4.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.7.7.4.1.1.1" style="font-size:70%;">12M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.7.7.5"><span class="ltx_text" id="A1.T9.7.7.5.1" style="font-size:70%;">48M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.6.6.1.1">
<span class="ltx_p" id="A1.T9.6.6.1.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.6.6.1.1.1.1" style="font-size:70%;">80</span><math alttext="\times" class="ltx_centering" display="inline" id="A1.T9.6.6.1.1.1.m1.1"><semantics id="A1.T9.6.6.1.1.1.m1.1a"><mo id="A1.T9.6.6.1.1.1.m1.1.1" mathsize="70%" xref="A1.T9.6.6.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.6.6.1.1.1.m1.1b"><times id="A1.T9.6.6.1.1.1.m1.1.1.cmml" xref="A1.T9.6.6.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.6.6.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.6.6.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A1.T9.6.6.1.1.1.2" style="font-size:70%;">461</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.7.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.7.6.1">
<span class="ltx_p" id="A1.T9.7.7.6.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.7.7.6.1.1.1" style="font-size:70%;">6M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.7.7.7"><span class="ltx_text" id="A1.T9.7.7.7.1" style="font-size:70%;">24M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T9.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.7.2.1">
<span class="ltx_p" id="A1.T9.7.7.2.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.7.7.2.1.1.1" style="font-size:70%;">84</span><math alttext="\times" class="ltx_centering" display="inline" id="A1.T9.7.7.2.1.1.m1.1"><semantics id="A1.T9.7.7.2.1.1.m1.1a"><mo id="A1.T9.7.7.2.1.1.m1.1.1" mathsize="70%" xref="A1.T9.7.7.2.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.7.7.2.1.1.m1.1b"><times id="A1.T9.7.7.2.1.1.m1.1.1.cmml" xref="A1.T9.7.7.2.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.7.7.2.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.7.7.2.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="A1.T9.7.7.2.1.1.2" style="font-size:70%;">569</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.7.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T9.7.12.1"><span class="ltx_text" id="A1.T9.7.12.1.1" style="font-size:70%;">Agg.</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T9.7.12.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.12.2.1">
<span class="ltx_p" id="A1.T9.7.12.2.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.7.12.2.1.1.1" style="font-size:70%;">42M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.7.12.3"><span class="ltx_text" id="A1.T9.7.12.3.1" style="font-size:70%;">150M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T9.7.12.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.12.4.1">
<span class="ltx_p" id="A1.T9.7.12.4.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.7.12.4.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T9.7.12.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.12.5.1">
<span class="ltx_p" id="A1.T9.7.12.5.1.1" style="width:10.8pt;"><span class="ltx_text" id="A1.T9.7.12.5.1.1.1" style="font-size:70%;">33M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.7.12.6"><span class="ltx_text" id="A1.T9.7.12.6.1" style="font-size:70%;">132M</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T9.7.12.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.7.12.7.1">
<span class="ltx_p" id="A1.T9.7.12.7.1.1" style="width:23.8pt;"><span class="ltx_text" id="A1.T9.7.12.7.1.1.1" style="font-size:70%;">-</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the pre-training phase of the PS3 model.  It details the values set for various parameters influencing the training process, such as the number of epochs, batch size, learning rate, and optimization settings.
> <details>
> <summary>read the caption</summary>
> Table 11: Hyperparameters of \modelpre-training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T10.5">
<tr class="ltx_tr" id="A1.T10.5.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T10.5.1.1"><span class="ltx_text" id="A1.T10.5.1.1.1" style="font-size:90%;">Argument</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T10.5.1.2"><span class="ltx_text" id="A1.T10.5.1.2.1" style="font-size:90%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.5.2.1"><span class="ltx_text ltx_font_typewriter" id="A1.T10.5.2.1.1" style="font-size:90%;">points_per_side</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.2.2"><span class="ltx_text" id="A1.T10.5.2.2.1" style="font-size:90%;">24</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.3">
<td class="ltx_td ltx_align_left" id="A1.T10.5.3.1"><span class="ltx_text ltx_font_typewriter" id="A1.T10.5.3.1.1" style="font-size:90%;">points_per_batch</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.3.2"><span class="ltx_text" id="A1.T10.5.3.2.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.4">
<td class="ltx_td ltx_align_left" id="A1.T10.5.4.1"><span class="ltx_text ltx_font_typewriter" id="A1.T10.5.4.1.1" style="font-size:90%;">crop_n_layers</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.4.2"><span class="ltx_text" id="A1.T10.5.4.2.1" style="font-size:90%;">1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.5">
<td class="ltx_td ltx_align_left" id="A1.T10.5.5.1"><span class="ltx_text ltx_font_typewriter" id="A1.T10.5.5.1.1" style="font-size:90%;">crop_n_points_downscale_factor</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.5.2"><span class="ltx_text" id="A1.T10.5.5.2.1" style="font-size:90%;">1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.6">
<td class="ltx_td ltx_align_left" id="A1.T10.5.6.1"><span class="ltx_text ltx_font_typewriter" id="A1.T10.5.6.1.1" style="font-size:90%;">pred_iou_thresh</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.6.2"><span class="ltx_text" id="A1.T10.5.6.2.1" style="font-size:90%;">0.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.7">
<td class="ltx_td ltx_align_left" id="A1.T10.5.7.1"><span class="ltx_text ltx_font_typewriter" id="A1.T10.5.7.1.1" style="font-size:90%;">stability_score_thresh</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.7.2"><span class="ltx_text" id="A1.T10.5.7.2.1" style="font-size:90%;">0.85</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T10.5.8.1"><span class="ltx_text ltx_font_typewriter" id="A1.T10.5.8.1.1" style="font-size:90%;">min_mask_region_area</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T10.5.8.2"><span class="ltx_text" id="A1.T10.5.8.2.1" style="font-size:90%;">0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of PS3's scaling properties when evaluated on the 4KPro benchmark. It details the performance of VILA-HD (a multi-modal large language model using PS3 as its vision encoder) across various resolutions (756, 1512, and 3780 pixels) and with different numbers of high-resolution (HR) tokens used.  The results showcase how performance changes when scaling the resolution while maintaining a constant cost, modifying the number of patches at a fixed resolution, or adjusting the number of patches during testing. This table provides key insights into the efficiency and effectiveness of PS3 in handling high-resolution images.
> <details>
> <summary>read the caption</summary>
> Table 12: Full results of scaling properties of PS3 on 4KPro.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19903/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19903/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}