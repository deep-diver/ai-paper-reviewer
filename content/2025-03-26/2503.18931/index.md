---
title: "CoMP: Continual Multimodal Pre-training for Vision Foundation Models"
summary: "COMP: Continually pre-training Vision Foundation Models for better vision and language alignment and arbitrary size inputs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Key Lab of Intell. Info. Processing, School of CS, Fudan University",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18931 {{< /keyword >}}
{{< keyword icon="writer" >}} Yitong Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18931" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18931" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18931/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Pre-trained Vision Foundation Models (VFMs) excel in visual tasks, but face challenges in handling varied input sizes and aligning with language representations. Current methods struggle with diverse input resolutions and rely heavily on text-based supervision, leading to representation gaps. To address these issues, this paper introduces a **Continual Multimodal Pre-training pipeline** for prevailing VFMs. 



The proposed pipeline leverages a **Continual Rotary Position Embedding** to accommodate different visual input resolutions, and an **Alignment Loss** to improve cross-modal alignment between visual and textual features. The resulting models achieve remarkable improvements in both multimodal understanding and traditional visual tasks, showcasing the effectiveness of the approach.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Continual Multimodal Pre-training enhances Vision Foundation Models (VFMs) for processing varying size visual inputs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Alignment Loss improves cross-modal alignment between visual and textual features, benefiting multimodal understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed COMP method achieves state-of-the-art performance on multimodal tasks while maintaining accuracy on traditional vision tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel continual multimodal pre-training** pipeline that enhances visual representations and cross-modal alignment. The findings are significant for researchers in computer vision and multimodal learning, enabling **better visual understanding and opening new avenues for building more effective vision-language models**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18931/x1.png)

> 🔼 The figure illustrates the CoMP (Continual Multimodal Pre-training) framework.  CoMP takes an image at its original resolution and its corresponding text as input. It then performs training in two ways: 1) standard next-token prediction using text decoding, and 2)  explicitly projects the visual features into the language space of a large language model (LLM) via an Alignment Loss. This dual-training approach aims to better align visual and textual representations, improving the model's performance on various tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of CoMP. Our method accepts an image at native resolution and its corresponding text. Then, in addition to training through text decoding in next-token prediction paradigm, we also explicitly project the visual features into the language space of LLM using Alignment Loss.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.5">
<tr class="ltx_tr" id="S3.T1.5.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.5.6.1" rowspan="2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="S3.T1.5.6.1.1">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.5.6.2" rowspan="2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="S3.T1.5.6.2.1">#PT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.5.6.3" rowspan="2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="S3.T1.5.6.3.1">#IT</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="4" id="S3.T1.5.6.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.5.6.4.1" style="color:#808080;">Text-rich and Fine-grained</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="5" id="S3.T1.5.6.5" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.5.6.5.1" style="color:#808080;">General and Real-world</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.4" style="padding-left:1.2pt;padding-right:1.2pt;">ChartQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1" style="padding-left:1.2pt;padding-right:1.2pt;">DocVQA<sup class="ltx_sup" id="S3.T1.1.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.5" style="padding-left:1.2pt;padding-right:1.2pt;">AI2D</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.6" style="padding-left:1.2pt;padding-right:1.2pt;">Inst-IT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.7" style="padding-left:1.2pt;padding-right:1.2pt;"> VQAv2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.8" style="padding-left:1.2pt;padding-right:1.2pt;">GQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2" style="padding-left:1.2pt;padding-right:1.2pt;">MMMU<sup class="ltx_sup" id="S3.T1.2.2.2.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3" style="padding-left:1.2pt;padding-right:1.2pt;">MMBench<sup class="ltx_sup" id="S3.T1.3.3.3.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.3.3.9" style="padding-left:1.2pt;padding-right:1.2pt;">RWQA</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="12" id="S3.T1.4.4.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.1"><semantics id="S3.T1.4.4.1.m1.1a"><mo id="S3.T1.4.4.1.m1.1.1" xref="S3.T1.4.4.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.1b"><csymbol cd="latexml" id="S3.T1.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text ltx_font_italic" id="S3.T1.4.4.1.1">1B models</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.7.1" style="padding-left:1.2pt;padding-right:1.2pt;">Deepseek-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.2" style="padding-left:1.2pt;padding-right:1.2pt;">3.75M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.3" style="padding-left:1.2pt;padding-right:1.2pt;">N/A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.4" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.5" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.6" style="padding-left:1.2pt;padding-right:1.2pt;">51.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.7" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.8" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.9" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.10" style="padding-left:1.2pt;padding-right:1.2pt;">32.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.11" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.7.12" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.8.1" style="padding-left:1.2pt;padding-right:1.2pt;">LLaVA-OV (SI) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.2" style="padding-left:1.2pt;padding-right:1.2pt;">4.6M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.3" style="padding-left:1.2pt;padding-right:1.2pt;">3.2M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.4" style="padding-left:1.2pt;padding-right:1.2pt;">61.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.5" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.8.5.1">75.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.6" style="padding-left:1.2pt;padding-right:1.2pt;">54.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.7" style="padding-left:1.2pt;padding-right:1.2pt;">44.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.8" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.9" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.10" style="padding-left:1.2pt;padding-right:1.2pt;">31.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.11" style="padding-left:1.2pt;padding-right:1.2pt;">43.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.8.12" style="padding-left:1.2pt;padding-right:1.2pt;">53.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.9.1" style="padding-left:1.2pt;padding-right:1.2pt;">LLaVA-OV <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.2" style="padding-left:1.2pt;padding-right:1.2pt;">4.6M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.3" style="padding-left:1.2pt;padding-right:1.2pt;">4.8M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.9.4.1">61.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.5" style="padding-left:1.2pt;padding-right:1.2pt;">73.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.6" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.9.6.1">57.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.7" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.9.7.1">47.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.8" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.9" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.10" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.9.10.1">31.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.11" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.9.11.1">52.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.9.12" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.9.12.1">55.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.10.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.10.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S3.T1.5.10.1.1.1" style="background-color:#F2F9FF;">-MM</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="S3.T1.5.10.2.1" style="background-color:#F2F9FF;">4.6M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="S3.T1.5.10.3.1" style="background-color:#F2F9FF;">3.2M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.4.1" style="background-color:#F2F9FF;">66.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.5" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.5.1" style="background-color:#F2F9FF;">75.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.6" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.6.1" style="background-color:#F2F9FF;">61.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.7" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.7.1" style="background-color:#F2F9FF;">50.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.8" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.8.1" style="background-color:#F2F9FF;">78.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.9" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.9.1" style="background-color:#F2F9FF;">60.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.10" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.10.1" style="background-color:#F2F9FF;">33.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.11" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.11.1" style="background-color:#F2F9FF;">56.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.10.12" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.12.1" style="background-color:#F2F9FF;">58.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="12" id="S3.T1.5.5.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<math alttext="\sim" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1"><semantics id="S3.T1.5.5.1.m1.1a"><mo id="S3.T1.5.5.1.m1.1.1" xref="S3.T1.5.5.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><csymbol cd="latexml" id="S3.T1.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text ltx_font_italic" id="S3.T1.5.5.1.1">7B models</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.11.1" style="padding-left:1.2pt;padding-right:1.2pt;">LLaVA-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.2" style="padding-left:1.2pt;padding-right:1.2pt;">558K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.3" style="padding-left:1.2pt;padding-right:1.2pt;">665K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.4" style="padding-left:1.2pt;padding-right:1.2pt;">18.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.5" style="padding-left:1.2pt;padding-right:1.2pt;">28.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.6" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.7" style="padding-left:1.2pt;padding-right:1.2pt;">32.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.8" style="padding-left:1.2pt;padding-right:1.2pt;">78.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.9" style="padding-left:1.2pt;padding-right:1.2pt;">62.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.10" style="padding-left:1.2pt;padding-right:1.2pt;">35.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.11" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.11.12" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.12.1" style="padding-left:1.2pt;padding-right:1.2pt;">LLaVA-NeXT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.2" style="padding-left:1.2pt;padding-right:1.2pt;">558K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.3" style="padding-left:1.2pt;padding-right:1.2pt;">765K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.4" style="padding-left:1.2pt;padding-right:1.2pt;">54.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.5" style="padding-left:1.2pt;padding-right:1.2pt;">74.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.6" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.7" style="padding-left:1.2pt;padding-right:1.2pt;">42.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.8" style="padding-left:1.2pt;padding-right:1.2pt;">81.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.9" style="padding-left:1.2pt;padding-right:1.2pt;">64.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.10" style="padding-left:1.2pt;padding-right:1.2pt;">35.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.11" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.12.12" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.13.1" style="padding-left:1.2pt;padding-right:1.2pt;">Deepseek-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.2" style="padding-left:1.2pt;padding-right:1.2pt;">3.75M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.3" style="padding-left:1.2pt;padding-right:1.2pt;">N/A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.4" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.5" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.6" style="padding-left:1.2pt;padding-right:1.2pt;">65.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.7" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.8" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.9" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.10" style="padding-left:1.2pt;padding-right:1.2pt;">36.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.11" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.13.12" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.14.1" style="padding-left:1.2pt;padding-right:1.2pt;">Cambrian-1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.2" style="padding-left:1.2pt;padding-right:1.2pt;">1.2M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.3" style="padding-left:1.2pt;padding-right:1.2pt;">7.0M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.4" style="padding-left:1.2pt;padding-right:1.2pt;">73.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.5" style="padding-left:1.2pt;padding-right:1.2pt;">77.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.6" style="padding-left:1.2pt;padding-right:1.2pt;">73.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.7" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.8" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.9" style="padding-left:1.2pt;padding-right:1.2pt;">64.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.10" style="padding-left:1.2pt;padding-right:1.2pt;">42.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.11" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.14.12" style="padding-left:1.2pt;padding-right:1.2pt;">64.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.15.1" style="padding-left:1.2pt;padding-right:1.2pt;">LLaVA-OV (SI) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.2" style="padding-left:1.2pt;padding-right:1.2pt;">4.6M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.3" style="padding-left:1.2pt;padding-right:1.2pt;">3.2M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.4" style="padding-left:1.2pt;padding-right:1.2pt;">78.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.5" style="padding-left:1.2pt;padding-right:1.2pt;">89.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.6" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.6.1">81.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.7" style="padding-left:1.2pt;padding-right:1.2pt;">61.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.8" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.9" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.10" style="padding-left:1.2pt;padding-right:1.2pt;">47.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.11" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.11.1">81.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.15.12" style="padding-left:1.2pt;padding-right:1.2pt;">65.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.5.16.1" style="padding-left:1.2pt;padding-right:1.2pt;">LLaVA-OV <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.2" style="padding-left:1.2pt;padding-right:1.2pt;">4.6M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.3" style="padding-left:1.2pt;padding-right:1.2pt;">4.8M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.16.4.1">80.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.5" style="padding-left:1.2pt;padding-right:1.2pt;">90.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.6" style="padding-left:1.2pt;padding-right:1.2pt;">81.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.7" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.16.7.1">71.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.8" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.9" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.10" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.16.10.1">48.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.11" style="padding-left:1.2pt;padding-right:1.2pt;">80.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.5.16.12" style="padding-left:1.2pt;padding-right:1.2pt;">66.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.17" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.5.17.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.5.17.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S3.T1.5.17.1.1.1" style="background-color:#F2F9FF;">-MM</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="S3.T1.5.17.2.1" style="background-color:#F2F9FF;">4.6M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="S3.T1.5.17.3.1" style="background-color:#F2F9FF;">3.2M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.17.4.1" style="background-color:#F2F9FF;">79.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.5" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.17.5.1" style="background-color:#F2F9FF;">91.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.6" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.17.6.1" style="background-color:#F2F9FF;">81.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.7" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.17.7.1" style="background-color:#F2F9FF;">65.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.8" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.17.8.1" style="background-color:#F2F9FF;">81.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.9" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.17.9.1" style="background-color:#F2F9FF;">65.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.10" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.17.10.1" style="background-color:#F2F9FF;">48.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.11" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.17.11.1" style="background-color:#F2F9FF;">81.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.5.17.12" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.17.12.1" style="background-color:#F2F9FF;">66.4</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of the COMP-MM model on various multimodal understanding benchmarks.  It compares the performance of COMP-MM against other state-of-the-art models, focusing on metrics for both text-rich and fine-grained tasks as well as general and real-world scenarios. The table shows the size of the pre-training (#PT) and instruction tuning (#IT) datasets used for each model. Note that results for some datasets are reported on validation sets (indicated by †).
> <details>
> <summary>read the caption</summary>
> Table 1:  Main results of CoMP-MM on multimodal understanding benchmarks. #PT indicates the size of pre-training dataset. #IT indicates the size of intrcution tuning dataset. N/A indicates the size is unknown. ††\dagger† denotes we report the performance on validation sets.
> </details>





### In-depth insights


#### Continual VFM
**Continual Vision Foundation Models (VFMs)** represent a paradigm shift in how we develop and deploy visual AI systems. Unlike traditional, static VFMs, continual VFMs are designed to **adapt and improve over time** as they encounter new data and tasks. This addresses a key limitation of standard VFMs, which can suffer from performance degradation when faced with distribution shifts or novel scenarios. The core idea involves a **continuous learning loop**, where the model is iteratively updated with new information without catastrophically forgetting previously learned knowledge. This requires sophisticated techniques such as **regularization strategies, memory replay, and architectural adaptations** to maintain stability and plasticity. The ability to **handle varying input resolutions and modalities** also becomes crucial for real-world deployment.  Continual VFMs pave the way for more robust, adaptable, and generalizable visual AI systems capable of thriving in dynamic environments.

#### C-ROPE Adaption
**C-ROPE (Continual Rotary Position Embedding) adaption** addresses a core challenge in vision foundation models (VFMs): handling varying input resolutions. Existing methods often resize images, losing crucial details. C-ROPE innovatively integrates relative (RoPE-2D) and absolute positional embeddings. It leverages pre-trained knowledge and ensures smooth transition from pre-trained ViT models to arbitrary resolutions. This is achieved by interpolating the original positional embeddings. The main point is that visual transformers handle images with varying resolutions. **This is crucial for improving detail understanding.**

#### Aligning VFMs
**Aligning Vision Foundation Models (VFMs)** is a crucial aspect for enhancing multimodal understanding. The goal is to bridge the gap between VFMs and Large Language Models (LLMs), enabling seamless integration and improved performance.  This alignment addresses inconsistencies arising from distinct training objectives and data modalities. Effective alignment enables LLMs to better interpret visual inputs, requiring projecting VFM embeddings into the textual space of LLMs. **Current approaches are insufficient,** often relying solely on text-based supervision, which doesn't fully capture visual nuances. Explicit alignment strategies, such as cross-entropy loss between visual and textual features, are essential for better feature space mapping. Successfully aligned VFMs improve performance in multimodal tasks and also enhance generic classification and segmentation.

#### COMP-MM Results
Analyzing potential 'COMP-MM Results,' one anticipates significant performance gains in multimodal tasks. **COMP-MM** likely enhances existing Vision Foundation Models through continual multimodal pre-training. Results would demonstrate improved performance on benchmarks like ChartQA and DocVQA, validating the approach. A key aspect would be native resolution support, enabling better handling of fine-grained details in high-resolution inputs. The results may show remarkable performance compared to existing models on multimodal understanding.

#### Ablation Insights
Ablation studies offer vital insights into the effectiveness of individual components within a complex system like COMP. By selectively removing or modifying parts like **C-ROPE or the Alignment Loss**, we can discern their specific contributions. For instance, ablating C-ROPE would reveal its impact on handling variable resolution inputs, while removing the Alignment Loss would highlight its role in bridging the representation gap between visual and language models. Analyzing the resulting performance changes helps to validate design choices and pinpoint areas for further improvement. **Performance drops upon removal signify a component's importance**, while minimal changes suggest redundancy or the need for optimization. These insights guide future research by focusing efforts on the most impactful aspects of the architecture. Furthermore, ablations can uncover unexpected interactions between components, leading to a deeper understanding of the system as a whole. **The insights gained from ablation studies are crucial for refining and optimizing the COMP architecture**, leading to more efficient and effective multimodal pre-training. This meticulous approach ensures that each element contributes meaningfully to the overall performance.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18931/x2.png)

> 🔼 Figure 2 illustrates the architecture of the COMP (Continual Multimodal Pre-training) framework. Panel (a) provides a high-level overview of the entire pre-training pipeline, showcasing the integration of a Vision Foundation Model (VFM), a Large Language Model (LLM), and a newly proposed continual multimodal pre-training process.  It highlights the two key loss functions: the decoding loss for text generation and the alignment loss for aligning visual and textual representations.  Panel (b) focuses specifically on the Continual Rotary Position Embedding (C-ROPE) module, detailing how it handles variable-resolution visual inputs. For clarity, minor components like projection and scaling operations are omitted in the diagram.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Architecture of our CoMP. (a) Overview of our pre-training framework; (b) Detail of C-RoPE. For ease of visualization, the projection layers 𝒫⁢r⁢o⁢jq,k,v,o𝒫𝑟𝑜subscript𝑗𝑞𝑘𝑣𝑜\mathcal{P}roj_{q,k,v,o}caligraphic_P italic_r italic_o italic_j start_POSTSUBSCRIPT italic_q , italic_k , italic_v , italic_o end_POSTSUBSCRIPT and scale operators are omitted.
> </details>



![](https://arxiv.org/html/2503.18931/x3.png)

> 🔼 The Alignment Loss in the figure is calculated using global visual features (Fv) and text features (Ft). These features are projected into the language space using a learned prototype (W), which is the word embedding of Large Language Models (LLMs).  The Sinkhorn-Knopp algorithm normalizes the projected features into probability distributions, and then cross-entropy is used to compute the loss, encouraging alignment between visual and textual representations.  To avoid information leakage from the image, text features are extracted without the image prefix.
> <details>
> <summary>read the caption</summary>
> Figure 3: Alignment Loss. We illustrate it in the case of one single pair of global vision and text features 𝐅vsubscript𝐅𝑣\mathbf{F}_{v}bold_F start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT and 𝐅tsubscript𝐅𝑡\mathbf{F}_{t}bold_F start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT for simplicity. 𝐅vsubscript𝐅𝑣\mathbf{F}_{v}bold_F start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT and 𝐅tsubscript𝐅𝑡\mathbf{F}_{t}bold_F start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT are mapped by frozen learned prototype 𝐖𝐖\mathbf{W}bold_W, i.e., the word embedding of LLMs. Then, they are converted into normalized probabilities using the Softmax function and iterative Sinkhorn-Knopp algorithm [12], respectively. Then, cross-entropy is applied as the loss. To prevent information leakage, the text features are extracted without image prefixes.
> </details>



![](https://arxiv.org/html/2503.18931/x4.png)

> 🔼 This figure analyzes how varying image resolution at inference time affects the performance of the CoMP-MM-1B model on two specific downstream tasks: DocVQA [47] and ChartQA [46].  DocVQA focuses on question answering about document images, while ChartQA involves understanding chart-related queries. Both tasks are sensitive to image resolution.  The graph shows that increased resolution leads to improved accuracy. This demonstrates CoMP-MM-1B's ability to handle high-resolution inputs effectively.
> <details>
> <summary>read the caption</summary>
> Figure 4: Varying the image resolution during inference. We investigate the impact of image resolution on DocVQA [47] and ChartQA [46] by our CoMP-MM-1B.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.2">
<tr class="ltx_tr" id="S3.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.2.2.3" style="padding:0.5pt 3.0pt;">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.4" style="padding:0.5pt 3.0pt;">ViT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.5" style="padding:0.5pt 3.0pt;">#Patches</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1" style="padding:0.5pt 3.0pt;">OKVQA<sup class="ltx_sup" id="S3.T2.1.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2" style="padding:0.5pt 3.0pt;">TextVQA<sup class="ltx_sup" id="S3.T2.2.2.2.1">†</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.6" style="padding:0.5pt 3.0pt;">DocVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.7" style="padding:0.5pt 3.0pt;">InfoVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.8" style="padding:0.5pt 3.0pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.9" style="padding:0.5pt 3.0pt;">SEED</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.10" style="padding:0.5pt 3.0pt;">MME</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.3.1" style="padding:0.5pt 3.0pt;">DINOv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.2" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.3" style="padding:0.5pt 3.0pt;">576</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.4" style="padding:0.5pt 3.0pt;">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.5" style="padding:0.5pt 3.0pt;">13.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.6" style="padding:0.5pt 3.0pt;">7.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.7" style="padding:0.5pt 3.0pt;">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.8" style="padding:0.5pt 3.0pt;">10.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.9" style="padding:0.5pt 3.0pt;">57.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.10" style="padding:0.5pt 3.0pt;">1345</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4">
<td class="ltx_td ltx_align_left" id="S3.T2.2.4.1" style="padding:0.5pt 3.0pt;">DINOv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.2" style="padding:0.5pt 3.0pt;">G/14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.3" style="padding:0.5pt 3.0pt;">3034</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.4" style="padding:0.5pt 3.0pt;">56.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.5" style="padding:0.5pt 3.0pt;">15.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.6" style="padding:0.5pt 3.0pt;">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.7" style="padding:0.5pt 3.0pt;">19.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.8" style="padding:0.5pt 3.0pt;">12.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.9" style="padding:0.5pt 3.0pt;">68.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.4.10" style="padding:0.5pt 3.0pt;">1423</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.5">
<td class="ltx_td ltx_align_left" id="S3.T2.2.5.1" style="padding:0.5pt 3.0pt;">CLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.2" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.3" style="padding:0.5pt 3.0pt;">576</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.4" style="padding:0.5pt 3.0pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.5" style="padding:0.5pt 3.0pt;">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.6" style="padding:0.5pt 3.0pt;">25.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.7" style="padding:0.5pt 3.0pt;">21.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.8" style="padding:0.5pt 3.0pt;">19.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.9" style="padding:0.5pt 3.0pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.5.10" style="padding:0.5pt 3.0pt;">1481</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.6">
<td class="ltx_td ltx_align_left" id="S3.T2.2.6.1" style="padding:0.5pt 3.0pt;">SigLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.2" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.3" style="padding:0.5pt 3.0pt;">576</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.4" style="padding:0.5pt 3.0pt;">59.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.5" style="padding:0.5pt 3.0pt;">44.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.6" style="padding:0.5pt 3.0pt;">16.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.7" style="padding:0.5pt 3.0pt;">20.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.8" style="padding:0.5pt 3.0pt;">14.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.9" style="padding:0.5pt 3.0pt;">66.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.6.10" style="padding:0.5pt 3.0pt;">1416</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.7">
<td class="ltx_td ltx_align_left" id="S3.T2.2.7.1" style="padding:0.5pt 3.0pt;">SigLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.2" style="padding:0.5pt 3.0pt;">So/14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.3" style="padding:0.5pt 3.0pt;">729</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.4" style="padding:0.5pt 3.0pt;">60.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.5" style="padding:0.5pt 3.0pt;">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.6" style="padding:0.5pt 3.0pt;">19.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.7" style="padding:0.5pt 3.0pt;">21.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.8" style="padding:0.5pt 3.0pt;">14.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.9" style="padding:0.5pt 3.0pt;">67.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.7.10" style="padding:0.5pt 3.0pt;">1433</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.8.1" style="padding:0.5pt 3.0pt;">AIMv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.2" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.3" style="padding:0.5pt 3.0pt;">576</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.4" style="padding:0.5pt 3.0pt;">60.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.5" style="padding:0.5pt 3.0pt;">53.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.6" style="padding:0.5pt 3.0pt;">26.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.7" style="padding:0.5pt 3.0pt;">22.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.8" style="padding:0.5pt 3.0pt;">19.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.9" style="padding:0.5pt 3.0pt;">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.8.10" style="padding:0.5pt 3.0pt;">1472</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.9">
<td class="ltx_td ltx_align_left" id="S3.T2.2.9.1" style="padding:0.5pt 3.0pt;">AIMv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.2" style="padding:0.5pt 3.0pt;">H/14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.3" style="padding:0.5pt 3.0pt;">576</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.9.4.1">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.2.9.5.1">55.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.2.9.6.1">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.2.9.7.1">23.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.8" style="padding:0.5pt 3.0pt;">19.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.9" style="padding:0.5pt 3.0pt;">72.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.9.10" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.9.10.1">1545</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.10" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.10.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.2.10.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S3.T2.2.10.1.1.1" style="background-color:#F2F9FF;">-DINOv2</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.10.2.1" style="background-color:#F2F9FF;">L/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.10.3.1" style="background-color:#F2F9FF;">576</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.10.4.1" style="background-color:#F2F9FF;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.10.5.1" style="background-color:#F2F9FF;">53.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.10.6.1" style="background-color:#F2F9FF;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.10.7.1" style="background-color:#F2F9FF;">22.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.8" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.2.10.8.1" style="background-color:#F2F9FF;">23.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.9" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.2.10.9.1" style="background-color:#F2F9FF;">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.10.10" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.10.10.1" style="background-color:#F2F9FF;">1484</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.11" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.2.11.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.2.11.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S3.T2.2.11.1.1.1" style="background-color:#F2F9FF;">-SigLIP</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.11.2.1" style="background-color:#F2F9FF;">So/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S3.T2.2.11.3.1" style="background-color:#F2F9FF;">576</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.2.11.4.1" style="background-color:#F2F9FF;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.11.5.1" style="background-color:#F2F9FF;">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.11.6.1" style="background-color:#F2F9FF;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.11.7.1" style="background-color:#F2F9FF;">26.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.8" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.11.8.1" style="background-color:#F2F9FF;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.9" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.11.9.1" style="background-color:#F2F9FF;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.11.10" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.2.11.10.1" style="background-color:#F2F9FF;">1543</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of the COMP (Continual Multimodal Pre-training) method on various multimodal understanding benchmarks.  The experiments were performed using two different Vision Foundation Models (VFMs), CoMP-SigLIP and CoMP-DINOv2, in conjunction with the LLaMA-3.0 8B language model.  The vision encoders were frozen, and only the language model was fine-tuned for a single epoch using the LLaVA SFT dataset. The table compares the performance of these models against other state-of-the-art approaches, highlighting the improvements achieved by COMP.  The '#Patches' column indicates the number of visual patches processed by the LLM, providing insight into the computational demands of each model. Performance is reported on both training and validation sets, as indicated by the † symbol.
> <details>
> <summary>read the caption</summary>
> Table 2:  Evaluation on multimodal understanding benchmarks. We conduct extenseive experiments on CoMP-SigLIP and CoMP-DINOv2 with LLaMA-3.0 8B [19], freezing the vision encoder and directly tuning on LLaVA SFT data [41] for one epoch. #Patches indicates the number of input visual patches for the LLM. ††\dagger† denotes we report the performance on validation sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.4">
<tr class="ltx_tr" id="S4.T3.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.5.1" style="padding:0.5pt 3.0pt;">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.5.2" style="padding:0.5pt 3.0pt;">ViT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.5.3" style="padding:0.5pt 3.0pt;">
<span class="ltx_text" id="S4.T3.4.5.3.1"></span> <span class="ltx_text" id="S4.T3.4.5.3.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.4.5.3.2.1">
<span class="ltx_tr" id="S4.T3.4.5.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.5.3.2.1.1.1" style="padding:0.5pt 3.0pt;">Pre-training</span></span>
<span class="ltx_tr" id="S4.T3.4.5.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.5.3.2.1.2.1" style="padding:0.5pt 3.0pt;">Res.</span></span>
</span></span><span class="ltx_text" id="S4.T3.4.5.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.5.4" style="padding:0.5pt 3.0pt;">224px</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.5.5" style="padding:0.5pt 3.0pt;">448px</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.6.1" style="padding:0.5pt 3.0pt;">AIMv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.6.2" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.6.3" style="padding:0.5pt 3.0pt;">224px</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.6.4" style="padding:0.5pt 3.0pt;">86.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.6.5" style="padding:0.5pt 3.0pt;">84.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7">
<td class="ltx_td ltx_align_left" id="S4.T3.4.7.1" style="padding:0.5pt 3.0pt;">AIMv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.2" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.3" style="padding:0.5pt 3.0pt;">448px</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.4" style="padding:0.5pt 3.0pt;">78.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.7.5" style="padding:0.5pt 3.0pt;">87.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.8">
<td class="ltx_td ltx_align_left" id="S4.T3.4.8.1" style="padding:0.5pt 3.0pt;">AIMv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.2" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.3" style="padding:0.5pt 3.0pt;">Native</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.4" style="padding:0.5pt 3.0pt;">86.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.8.5" style="padding:0.5pt 3.0pt;">87.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.9.1" style="padding:0.5pt 3.0pt;">MAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.2" style="padding:0.5pt 3.0pt;">H/14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.3" style="padding:0.5pt 3.0pt;">224px</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.4" style="padding:0.5pt 3.0pt;">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.9.5" style="padding:0.5pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.2" style="padding:0.5pt 3.0pt;">DINOv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1" style="padding:0.5pt 3.0pt;">224<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">→</annotation></semantics></math>518px</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4" style="padding:0.5pt 3.0pt;">86.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5" style="padding:0.5pt 3.0pt;">87.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.10" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left" id="S4.T3.4.10.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.4.10.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S4.T3.4.10.1.1.1" style="background-color:#F2F9FF;">-DINOv2</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.10.2.1" style="background-color:#F2F9FF;">L/14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.10.3.1" style="background-color:#F2F9FF;">Native</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.10.4.1" style="background-color:#F2F9FF;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.10.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.10.5.1" style="background-color:#F2F9FF;">86.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.2.2" style="padding:0.5pt 3.0pt;">CLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3" style="padding:0.5pt 3.0pt;">L/14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.1" style="padding:0.5pt 3.0pt;">224<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.1"><semantics id="S4.T3.2.2.1.m1.1a"><mo id="S4.T3.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.1b"><ci id="S4.T3.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.1d">→</annotation></semantics></math>336px</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4" style="padding:0.5pt 3.0pt;">84.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.5" style="padding:0.5pt 3.0pt;">83.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T3.3.3.2" style="padding:0.5pt 3.0pt;">SigLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3" style="padding:0.5pt 3.0pt;">So/14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.1" style="padding:0.5pt 3.0pt;">224<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mo id="S4.T3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><ci id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">→</annotation></semantics></math>384px</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.4" style="padding:0.5pt 3.0pt;">87.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5" style="padding:0.5pt 3.0pt;">88.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_left" id="S4.T3.4.4.2" style="padding:0.5pt 3.0pt;">LLaVA-SigLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3" style="padding:0.5pt 3.0pt;">So/14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.1" style="padding:0.5pt 3.0pt;">224<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><mo id="S4.T3.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><ci id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">→</annotation></semantics></math>384px</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4" style="padding:0.5pt 3.0pt;">83.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.5" style="padding:0.5pt 3.0pt;">84.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.11" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.11.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.4.11.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S4.T3.4.11.1.1.1" style="background-color:#F2F9FF;">-SigLIP</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.11.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.11.2.1" style="background-color:#F2F9FF;">So/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.11.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.11.3.1" style="background-color:#F2F9FF;">Native</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.11.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.11.4.1" style="background-color:#F2F9FF;">86.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.11.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.4.11.5.1" style="background-color:#F2F9FF;">87.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the results of image classification experiments conducted on the ImageNet-1K dataset [16].  The experiments utilized a 'frozen trunk' approach, meaning that only the final classification layers were trained while the pre-trained weights of the Vision Foundation Model (VFM) were kept unchanged. The performance of several VFMs (including those enhanced by the COMP method) is compared.  The classification accuracy is reported for two different input image resolutions: 224x224 pixels and 448x448 pixels.  Attentive pooling probing was used as the classification method.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation on frozen trunk classification. All experiments are conducted on ImageNet-1K [16] at 224px and 448px by utilizing attentive pooling probing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.2">
<tr class="ltx_tr" id="S4.T4.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">ViT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">504px</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">672px</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">InternViT-v2.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">6B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">53.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DINOv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">L/14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left" id="S4.T4.2.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.2.4.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S4.T4.2.4.1.1.1" style="background-color:#F2F9FF;">-DINOv2</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T4.2.4.2.1" style="background-color:#F2F9FF;">L/14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T4.2.4.3.1" style="background-color:#F2F9FF;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T4.2.4.4.1" style="background-color:#F2F9FF;">53.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SigLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">So/14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">31.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.6">
<td class="ltx_td ltx_align_left" id="S4.T4.2.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SigLIP 2 (NaFlex) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">So/16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">34.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.7">
<td class="ltx_td ltx_align_left" id="S4.T4.2.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">LLaVA-SigLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">So/14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">36.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.8" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.2.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.2.8.1.1" style="background-color:#F2F9FF;">CoMP<span class="ltx_text ltx_font_upright" id="S4.T4.2.8.1.1.1" style="background-color:#F2F9FF;">-SigLIP</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T4.2.8.2.1" style="background-color:#F2F9FF;">So/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T4.2.8.3.1" style="background-color:#F2F9FF;">49.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T4.2.8.4.1" style="background-color:#F2F9FF;">49.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of semantic segmentation experiments conducted on the ADE20K dataset.  The experiments involved training the UperNet head while keeping the backbone model frozen. Two different input resolutions (504px and 672px) were used for a comprehensive evaluation.  The table compares the performance of various Vision Foundation Models (VFMs) on this task, highlighting the impact of different pre-training methods and model architectures on segmentation accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4:  Evaluation on semantic segmentation. All experiments are conducted on ADE20K [82] at 504px and 672px by freezing the backbone and only train the UperNet [74] head.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.10">
<tr class="ltx_tr" id="S4.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.1.1.2" style="padding-left:8.0pt;padding-right:8.0pt;">#</td>
<td class="ltx_td ltx_border_tt" id="S4.T5.1.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.4" style="padding-left:8.0pt;padding-right:8.0pt;">AI2D</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.5" style="padding-left:8.0pt;padding-right:8.0pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.6" style="padding-left:8.0pt;padding-right:8.0pt;">DocVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T5.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.10.11.1" style="padding-left:8.0pt;padding-right:8.0pt;">1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.10.11.2" style="padding-left:8.0pt;padding-right:8.0pt;">Baseline Recipe</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.11.3" style="padding-left:8.0pt;padding-right:8.0pt;">50.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.11.4" style="padding-left:8.0pt;padding-right:8.0pt;">29.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.11.5" style="padding-left:8.0pt;padding-right:8.0pt;">24.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.11.6" style="padding-left:8.0pt;padding-right:8.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3" style="background-color:#FCFCFC;">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.3.3.3.1" style="color:#808080;background-color:#FCFCFC;">2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.2.2.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.2.2.1.1" style="background-color:#FCFCFC;">      <span class="ltx_text ltx_font_italic" id="S4.T5.2.2.1.1.1" style="color:#808080;">+ RoPE-2D from Stage-I<math alttext="{\dagger}" class="ltx_Math" display="inline" id="S4.T5.2.2.1.1.1.m1.1"><semantics id="S4.T5.2.2.1.1.1.m1.1a"><mo id="S4.T5.2.2.1.1.1.m1.1.1" mathbackground="#FCFCFC" mathcolor="#808080" xref="S4.T5.2.2.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.1.1.1.m1.1b"><ci id="S4.T5.2.2.1.1.1.m1.1.1.cmml" xref="S4.T5.2.2.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.1.1.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.1.1.1.m1.1d">†</annotation></semantics></math></span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T5.3.3.4.1" style="color:#808080;background-color:#FCFCFC;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T5.3.3.5.1" style="color:#808080;background-color:#FCFCFC;">11.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T5.3.3.6.1" style="color:#808080;background-color:#FCFCFC;">11.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.2" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.2.m1.1" style="background-color:#FCFCFC;"><semantics id="S4.T5.3.3.2.m1.1a"><mo id="S4.T5.3.3.2.m1.1.1" mathbackground="#FCFCFC" mathcolor="#808080" stretchy="false" xref="S4.T5.3.3.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.2.m1.1b"><ci id="S4.T5.3.3.2.m1.1.1.cmml" xref="S4.T5.3.3.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.2.m1.1d">↓</annotation></semantics></math><span class="ltx_text ltx_font_italic" id="S4.T5.3.3.2.1" style="color:#808080;background-color:#FCFCFC;"> 10.1</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4">
<td class="ltx_td ltx_align_left" id="S4.T5.4.4.2" style="padding-left:8.0pt;padding-right:8.0pt;">3</td>
<td class="ltx_td ltx_align_left" id="S4.T5.4.4.3" style="padding-left:8.0pt;padding-right:8.0pt;">      + RoPE-2D from Stage-II</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4" style="padding-left:8.0pt;padding-right:8.0pt;">55.4</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.5" style="padding-left:8.0pt;padding-right:8.0pt;">56.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.6" style="padding-left:8.0pt;padding-right:8.0pt;">61.6</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.1.m1.1"><semantics id="S4.T5.4.4.1.m1.1a"><mo id="S4.T5.4.4.1.m1.1.1" mathcolor="#00E000" stretchy="false" xref="S4.T5.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.1.m1.1b"><ci id="S4.T5.4.4.1.m1.1.1.cmml" xref="S4.T5.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T5.4.4.1.1" style="color:#00E000;"> 23.2</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5" style="background-color:#FCFCFC;">
<td class="ltx_td ltx_align_left" id="S4.T5.5.5.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.5.5.2.1" style="color:#808080;background-color:#FCFCFC;">4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.5.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.5.5.3.1" style="background-color:#FCFCFC;">      <span class="ltx_text ltx_font_italic" id="S4.T5.5.5.3.1.1" style="color:#808080;">+ Freezing LM in Stage-II</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T5.5.5.4.1" style="color:#808080;background-color:#FCFCFC;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T5.5.5.5.1" style="color:#808080;background-color:#FCFCFC;">55.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T5.5.5.6.1" style="color:#808080;background-color:#FCFCFC;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.5.5.1.m1.1" style="background-color:#FCFCFC;"><semantics id="S4.T5.5.5.1.m1.1a"><mo id="S4.T5.5.5.1.m1.1.1" mathbackground="#FCFCFC" mathcolor="#808080" stretchy="false" xref="S4.T5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.1.m1.1b"><ci id="S4.T5.5.5.1.m1.1.1.cmml" xref="S4.T5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text ltx_font_italic" id="S4.T5.5.5.1.1" style="color:#808080;background-color:#FCFCFC;"> 2.87</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6">
<td class="ltx_td ltx_align_left" id="S4.T5.6.6.2" style="padding-left:8.0pt;padding-right:8.0pt;">5</td>
<td class="ltx_td ltx_align_left" id="S4.T5.6.6.3" style="padding-left:8.0pt;padding-right:8.0pt;">      + Native Resolution Training</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.4" style="padding-left:8.0pt;padding-right:8.0pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.5" style="padding-left:8.0pt;padding-right:8.0pt;">59.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.6" style="padding-left:8.0pt;padding-right:8.0pt;">67.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.6.6.1.m1.1"><semantics id="S4.T5.6.6.1.m1.1a"><mo id="S4.T5.6.6.1.m1.1.1" mathcolor="#00E000" stretchy="false" xref="S4.T5.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.1.m1.1b"><ci id="S4.T5.6.6.1.m1.1.1.cmml" xref="S4.T5.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T5.6.6.1.1" style="color:#00E000;"> 3.33</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.7.7">
<td class="ltx_td ltx_align_left" id="S4.T5.7.7.2" style="padding-left:8.0pt;padding-right:8.0pt;">6</td>
<td class="ltx_td ltx_align_left" id="S4.T5.7.7.3" style="padding-left:8.0pt;padding-right:8.0pt;">      + Increase Resolution to 1024px in Stage-II</td>
<td class="ltx_td ltx_align_center" id="S4.T5.7.7.4" style="padding-left:8.0pt;padding-right:8.0pt;">56.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.7.7.5" style="padding-left:8.0pt;padding-right:8.0pt;">59.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.7.7.6" style="padding-left:8.0pt;padding-right:8.0pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="S4.T5.7.7.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.7.7.1.m1.1"><semantics id="S4.T5.7.7.1.m1.1a"><mo id="S4.T5.7.7.1.m1.1.1" mathcolor="#00E000" stretchy="false" xref="S4.T5.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.7.7.1.m1.1b"><ci id="S4.T5.7.7.1.m1.1.1.cmml" xref="S4.T5.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.7.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T5.7.7.1.1" style="color:#00E000;"> 0.33</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.8">
<td class="ltx_td ltx_align_left" id="S4.T5.8.8.2" style="padding-left:8.0pt;padding-right:8.0pt;">7</td>
<td class="ltx_td ltx_align_left" id="S4.T5.8.8.3" style="padding-left:8.0pt;padding-right:8.0pt;">      + Scale Up Training Data</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.4" style="padding-left:8.0pt;padding-right:8.0pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.5" style="padding-left:8.0pt;padding-right:8.0pt;">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.6" style="padding-left:8.0pt;padding-right:8.0pt;">75.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.8.8.1.m1.1"><semantics id="S4.T5.8.8.1.m1.1a"><mo id="S4.T5.8.8.1.m1.1.1" mathcolor="#00E000" stretchy="false" xref="S4.T5.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.8.8.1.m1.1b"><ci id="S4.T5.8.8.1.m1.1.1.cmml" xref="S4.T5.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.8.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T5.8.8.1.1" style="color:#00E000;"> 5.77</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.9.9" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left" id="S4.T5.9.9.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.9.9.2.1" style="background-color:#F2F9FF;">8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.9.9.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.9.9.3.1" style="background-color:#F2F9FF;">      + Alignment Loss</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.9.9.4.1" style="background-color:#F2F9FF;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.9.9.5.1" style="background-color:#F2F9FF;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.9.9.6.1" style="background-color:#F2F9FF;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.9.9.1.m1.1" style="background-color:#F2F9FF;"><semantics id="S4.T5.9.9.1.m1.1a"><mo id="S4.T5.9.9.1.m1.1.1" mathbackground="#F2F9FF" mathcolor="#00E000" stretchy="false" xref="S4.T5.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.9.9.1.m1.1b"><ci id="S4.T5.9.9.1.m1.1.1.cmml" xref="S4.T5.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.9.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T5.9.9.1.1" style="color:#00E000;background-color:#F2F9FF;"> 0.77</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.10.12.1" style="padding-left:8.0pt;padding-right:8.0pt;">9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.10.12.2" style="padding-left:8.0pt;padding-right:8.0pt;">Replace with DINOv2-Large in #7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.12.3" style="padding-left:8.0pt;padding-right:8.0pt;">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.12.4" style="padding-left:8.0pt;padding-right:8.0pt;">61.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.12.5" style="padding-left:8.0pt;padding-right:8.0pt;">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.10.12.6" style="padding-left:8.0pt;padding-right:8.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10" style="background-color:#F2F9FF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.10.10.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.10.10.2.1" style="background-color:#F2F9FF;">10</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.10.10.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.10.10.3.1" style="background-color:#F2F9FF;">      + Alignment Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.10.10.4.1" style="background-color:#F2F9FF;">59.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.10.10.5.1" style="background-color:#F2F9FF;">64.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T5.10.10.6.1" style="background-color:#F2F9FF;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.10.10.1.m1.1" style="background-color:#F2F9FF;"><semantics id="S4.T5.10.10.1.m1.1a"><mo id="S4.T5.10.10.1.m1.1.1" mathbackground="#F2F9FF" mathcolor="#00E000" stretchy="false" xref="S4.T5.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.10.10.1.m1.1b"><ci id="S4.T5.10.10.1.m1.1.1.cmml" xref="S4.T5.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.10.10.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T5.10.10.1.1" style="color:#00E000;background-color:#F2F9FF;"> 1.60</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the training recipe used in the paper.  It starts with a baseline three-stage training approach, using progressively higher image resolutions (384px, 576px, 768px).  Each stage involves different training strategies: In the first stage, only the adapter is trained while the rest of the model is frozen; subsequent stages fine-tune the entire model. The table then systematically varies aspects of this baseline recipe (e.g., when RoPE-2D is introduced, whether the language model is frozen, training data size, etc.), showing the impact of each change on the performance metrics (AI2D, ChartQA, DocVQA). The final, optimal recipe is highlighted in blue.  All experiments were conducted using the SigLIP-400M and Qwen2.5-0.5B models.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation on training recipe. The first row presents the baseline three-stage training recipe, with progressive resolutions of 384px, 576px, and 768px. In the first stage, only the adapter is unfrozen, while in the subsequent stages, the full model is fine-tuned. Each following row modifies strategy from the last non-italicized row, and our final recipe is highlighted in blue. Experiments are run using SigLIP-400M and Qwen2.5-0.5B. ††\dagger†: Unfreezing vision encoder for RoPE training; ΔΔ\Deltaroman_Δ: The average of the difference from previous row.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.2">
<tr class="ltx_tr" id="S4.T6.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T6.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">P.E.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Res.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">DocVQA</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Learned P.E.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">384px</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">22.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">24.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.3">
<td class="ltx_td ltx_align_left" id="S4.T6.2.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Learned P.E.</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">768px</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">29.9</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.4">
<td class="ltx_td ltx_align_left" id="S4.T6.2.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">RoPE-2D</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">768px</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">8.24</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">11.9</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T6.2.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T6.2.5.1.1">C-RoPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">768px</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">32.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.2.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">33.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of different positional embedding methods on the performance of a multimodal model.  Specifically, it compares the results of using learned positional embeddings at different resolutions (384px and 768px), using Rotary Position Embedding (ROPE)-2D at 768px, and finally using the proposed Continual Rotary Position Embedding (C-ROPE) at 768px. The experiment uses Qwen2-0.5B [76] and SigLIP-400M [80] models, fine-tuned for one epoch on LLaVA-NeXT-SFT [43] data.  The evaluation metrics are ChartQA and DocVQA scores.
> <details>
> <summary>read the caption</summary>
> Table 6:  Ablation on positional embeddings. We utilize Qwen2-0.5B [76] and SigLIP-400M [80] to be directly fine-tuned on LLaVA-NeXT-SFT [43] data for one epoch.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.2">
<tr class="ltx_tr" id="S4.T7.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T7.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Recipe</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">DocVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">MMMU</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">No Alignment loss</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">60.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">31.9</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.3">
<td class="ltx_td ltx_align_left" id="S4.T7.2.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Only fixed res.</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">59.6</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">68.4</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">31.8</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.2.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Both fixed &amp; native res.</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">60.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">32.9</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of the Alignment Loss component in the COMP model.  Specifically, it shows the performance of the COMP model on three benchmark tasks (ChartQA, DocVQA, and MMMU) under different configurations.  Two prominent vision foundation models, Qwen2-0.5B and DINOv2-Large, were used as backbones.  The training data consisted of LLaVA-NeXT-SFT for Stage-III. The variations explored were the presence or absence of Alignment Loss, offering a comparison of the model's performance with and without this crucial component.  The results demonstrate the impact of Alignment Loss on model accuracy for multimodal understanding.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation on the effectiveness of Alignment loss. We utilize Qwen2-0.5B [76] and DINOv2-Large [50], and employ LLaVA-NeXT-SFT [43] as training data of Stage-III.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T8.2">
<tr class="ltx_tr" id="S4.T8.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T8.2.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">DocVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">MMMU</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">SigLIP-Base <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">33.6</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.3">
<td class="ltx_td ltx_align_left" id="S4.T8.2.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">SigLIP-So400M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T8.2.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T8.2.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">75.9</td>
<td class="ltx_td ltx_align_center" id="S4.T8.2.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">33.0</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T8.2.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">DINOv2-Large <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18931v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.2.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">64.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.2.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.2.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">32.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of different vision encoders on the performance of the COMP model. It compares the results of using various vision encoders in terms of their size (Base vs. Large) and pretraining tasks (vision-only vs vision-language). The results are shown for three key metrics (ChartQA, DocVQA, MMMU) demonstrating how different choices for the vision encoder affect the overall performance of the multimodal understanding task.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation on vision encoders. We ablation the vision encoder of different model sizes and pretraining tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T9.17">
<tr class="ltx_tr" id="A1.T9.17.18">
<td class="ltx_td ltx_border_tt" id="A1.T9.17.18.1" rowspan="2" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.17.18.2" rowspan="2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="A1.T9.17.18.2.1">Stage-I</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T9.17.18.3" style="padding:0.5pt 2.0pt;">Stage-II</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.17.18.4" rowspan="2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="A1.T9.17.18.4.1">Stage-III</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.17.19">
<td class="ltx_td ltx_align_center" id="A1.T9.17.19.1" style="padding:0.5pt 2.0pt;">Fixed</td>
<td class="ltx_td ltx_align_center" id="A1.T9.17.19.2" style="padding:0.5pt 2.0pt;">Native</td>
</tr>
<tr class="ltx_tr" id="A1.T9.17.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T9.17.20.1" style="padding:0.5pt 2.0pt;">Trainable</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.17.20.2" style="padding:0.5pt 2.0pt;">Adapter</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.17.20.3" style="padding:0.5pt 2.0pt;">Full Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.17.20.4" style="padding:0.5pt 2.0pt;">Full Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.17.20.5" style="padding:0.5pt 2.0pt;">Full Model</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.4">
<td class="ltx_td ltx_align_left" id="A1.T9.4.4.5" style="padding:0.5pt 2.0pt;">Batch Size</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.1" style="padding:0.5pt 2.0pt;">32<math alttext="\times" class="ltx_Math" display="inline" id="A1.T9.1.1.1.m1.1"><semantics id="A1.T9.1.1.1.m1.1a"><mo id="A1.T9.1.1.1.m1.1.1" xref="A1.T9.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.1.1.1.m1.1b"><times id="A1.T9.1.1.1.m1.1.1.cmml" xref="A1.T9.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.1.1.1.m1.1d">×</annotation></semantics></math>8</td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.2.2" style="padding:0.5pt 2.0pt;">32<math alttext="\times" class="ltx_Math" display="inline" id="A1.T9.2.2.2.m1.1"><semantics id="A1.T9.2.2.2.m1.1a"><mo id="A1.T9.2.2.2.m1.1.1" xref="A1.T9.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.2.2.2.m1.1b"><times id="A1.T9.2.2.2.m1.1.1.cmml" xref="A1.T9.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.2.2.2.m1.1d">×</annotation></semantics></math>8</td>
<td class="ltx_td ltx_align_center" id="A1.T9.3.3.3" style="padding:0.5pt 2.0pt;">32<math alttext="\times" class="ltx_Math" display="inline" id="A1.T9.3.3.3.m1.1"><semantics id="A1.T9.3.3.3.m1.1a"><mo id="A1.T9.3.3.3.m1.1.1" xref="A1.T9.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.3.3.3.m1.1b"><times id="A1.T9.3.3.3.m1.1.1.cmml" xref="A1.T9.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.3.3.3.m1.1d">×</annotation></semantics></math>8</td>
<td class="ltx_td ltx_align_center" id="A1.T9.4.4.4" style="padding:0.5pt 2.0pt;">16<math alttext="\times" class="ltx_Math" display="inline" id="A1.T9.4.4.4.m1.1"><semantics id="A1.T9.4.4.4.m1.1a"><mo id="A1.T9.4.4.4.m1.1.1" xref="A1.T9.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T9.4.4.4.m1.1b"><times id="A1.T9.4.4.4.m1.1.1.cmml" xref="A1.T9.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T9.4.4.4.m1.1d">×</annotation></semantics></math>8</td>
</tr>
<tr class="ltx_tr" id="A1.T9.9.9">
<td class="ltx_td ltx_align_left" id="A1.T9.5.5.1" style="padding:0.5pt 2.0pt;">LR<sub class="ltx_sub" id="A1.T9.5.5.1.1"><span class="ltx_text ltx_font_italic" id="A1.T9.5.5.1.1.1">Adapter</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.6.6.2" style="padding:0.5pt 2.0pt;"><math alttext="1\times 10^{-3}" class="ltx_Math" display="inline" id="A1.T9.6.6.2.m1.1"><semantics id="A1.T9.6.6.2.m1.1a"><mrow id="A1.T9.6.6.2.m1.1.1" xref="A1.T9.6.6.2.m1.1.1.cmml"><mn id="A1.T9.6.6.2.m1.1.1.2" xref="A1.T9.6.6.2.m1.1.1.2.cmml">1</mn><mo id="A1.T9.6.6.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.6.6.2.m1.1.1.1.cmml">×</mo><msup id="A1.T9.6.6.2.m1.1.1.3" xref="A1.T9.6.6.2.m1.1.1.3.cmml"><mn id="A1.T9.6.6.2.m1.1.1.3.2" xref="A1.T9.6.6.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.6.6.2.m1.1.1.3.3" xref="A1.T9.6.6.2.m1.1.1.3.3.cmml"><mo id="A1.T9.6.6.2.m1.1.1.3.3a" xref="A1.T9.6.6.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.6.6.2.m1.1.1.3.3.2" xref="A1.T9.6.6.2.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.6.6.2.m1.1b"><apply id="A1.T9.6.6.2.m1.1.1.cmml" xref="A1.T9.6.6.2.m1.1.1"><times id="A1.T9.6.6.2.m1.1.1.1.cmml" xref="A1.T9.6.6.2.m1.1.1.1"></times><cn id="A1.T9.6.6.2.m1.1.1.2.cmml" type="integer" xref="A1.T9.6.6.2.m1.1.1.2">1</cn><apply id="A1.T9.6.6.2.m1.1.1.3.cmml" xref="A1.T9.6.6.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.6.6.2.m1.1.1.3.1.cmml" xref="A1.T9.6.6.2.m1.1.1.3">superscript</csymbol><cn id="A1.T9.6.6.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.6.6.2.m1.1.1.3.2">10</cn><apply id="A1.T9.6.6.2.m1.1.1.3.3.cmml" xref="A1.T9.6.6.2.m1.1.1.3.3"><minus id="A1.T9.6.6.2.m1.1.1.3.3.1.cmml" xref="A1.T9.6.6.2.m1.1.1.3.3"></minus><cn id="A1.T9.6.6.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.6.6.2.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.6.6.2.m1.1c">1\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.6.6.2.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T9.7.7.3" style="padding:0.5pt 2.0pt;"><math alttext="5\times 10^{-3}" class="ltx_Math" display="inline" id="A1.T9.7.7.3.m1.1"><semantics id="A1.T9.7.7.3.m1.1a"><mrow id="A1.T9.7.7.3.m1.1.1" xref="A1.T9.7.7.3.m1.1.1.cmml"><mn id="A1.T9.7.7.3.m1.1.1.2" xref="A1.T9.7.7.3.m1.1.1.2.cmml">5</mn><mo id="A1.T9.7.7.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.7.7.3.m1.1.1.1.cmml">×</mo><msup id="A1.T9.7.7.3.m1.1.1.3" xref="A1.T9.7.7.3.m1.1.1.3.cmml"><mn id="A1.T9.7.7.3.m1.1.1.3.2" xref="A1.T9.7.7.3.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.7.7.3.m1.1.1.3.3" xref="A1.T9.7.7.3.m1.1.1.3.3.cmml"><mo id="A1.T9.7.7.3.m1.1.1.3.3a" xref="A1.T9.7.7.3.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.7.7.3.m1.1.1.3.3.2" xref="A1.T9.7.7.3.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.7.7.3.m1.1b"><apply id="A1.T9.7.7.3.m1.1.1.cmml" xref="A1.T9.7.7.3.m1.1.1"><times id="A1.T9.7.7.3.m1.1.1.1.cmml" xref="A1.T9.7.7.3.m1.1.1.1"></times><cn id="A1.T9.7.7.3.m1.1.1.2.cmml" type="integer" xref="A1.T9.7.7.3.m1.1.1.2">5</cn><apply id="A1.T9.7.7.3.m1.1.1.3.cmml" xref="A1.T9.7.7.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.7.7.3.m1.1.1.3.1.cmml" xref="A1.T9.7.7.3.m1.1.1.3">superscript</csymbol><cn id="A1.T9.7.7.3.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.7.7.3.m1.1.1.3.2">10</cn><apply id="A1.T9.7.7.3.m1.1.1.3.3.cmml" xref="A1.T9.7.7.3.m1.1.1.3.3"><minus id="A1.T9.7.7.3.m1.1.1.3.3.1.cmml" xref="A1.T9.7.7.3.m1.1.1.3.3"></minus><cn id="A1.T9.7.7.3.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.7.7.3.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.7.7.3.m1.1c">5\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.7.7.3.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T9.8.8.4" style="padding:0.5pt 2.0pt;"><math alttext="5\times 10^{-3}" class="ltx_Math" display="inline" id="A1.T9.8.8.4.m1.1"><semantics id="A1.T9.8.8.4.m1.1a"><mrow id="A1.T9.8.8.4.m1.1.1" xref="A1.T9.8.8.4.m1.1.1.cmml"><mn id="A1.T9.8.8.4.m1.1.1.2" xref="A1.T9.8.8.4.m1.1.1.2.cmml">5</mn><mo id="A1.T9.8.8.4.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.8.8.4.m1.1.1.1.cmml">×</mo><msup id="A1.T9.8.8.4.m1.1.1.3" xref="A1.T9.8.8.4.m1.1.1.3.cmml"><mn id="A1.T9.8.8.4.m1.1.1.3.2" xref="A1.T9.8.8.4.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.8.8.4.m1.1.1.3.3" xref="A1.T9.8.8.4.m1.1.1.3.3.cmml"><mo id="A1.T9.8.8.4.m1.1.1.3.3a" xref="A1.T9.8.8.4.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.8.8.4.m1.1.1.3.3.2" xref="A1.T9.8.8.4.m1.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.8.8.4.m1.1b"><apply id="A1.T9.8.8.4.m1.1.1.cmml" xref="A1.T9.8.8.4.m1.1.1"><times id="A1.T9.8.8.4.m1.1.1.1.cmml" xref="A1.T9.8.8.4.m1.1.1.1"></times><cn id="A1.T9.8.8.4.m1.1.1.2.cmml" type="integer" xref="A1.T9.8.8.4.m1.1.1.2">5</cn><apply id="A1.T9.8.8.4.m1.1.1.3.cmml" xref="A1.T9.8.8.4.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.8.8.4.m1.1.1.3.1.cmml" xref="A1.T9.8.8.4.m1.1.1.3">superscript</csymbol><cn id="A1.T9.8.8.4.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.8.8.4.m1.1.1.3.2">10</cn><apply id="A1.T9.8.8.4.m1.1.1.3.3.cmml" xref="A1.T9.8.8.4.m1.1.1.3.3"><minus id="A1.T9.8.8.4.m1.1.1.3.3.1.cmml" xref="A1.T9.8.8.4.m1.1.1.3.3"></minus><cn id="A1.T9.8.8.4.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.8.8.4.m1.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.8.8.4.m1.1c">5\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.8.8.4.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T9.9.9.5" style="padding:0.5pt 2.0pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T9.9.9.5.m1.1"><semantics id="A1.T9.9.9.5.m1.1a"><mrow id="A1.T9.9.9.5.m1.1.1" xref="A1.T9.9.9.5.m1.1.1.cmml"><mn id="A1.T9.9.9.5.m1.1.1.2" xref="A1.T9.9.9.5.m1.1.1.2.cmml">1</mn><mo id="A1.T9.9.9.5.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.9.9.5.m1.1.1.1.cmml">×</mo><msup id="A1.T9.9.9.5.m1.1.1.3" xref="A1.T9.9.9.5.m1.1.1.3.cmml"><mn id="A1.T9.9.9.5.m1.1.1.3.2" xref="A1.T9.9.9.5.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.9.9.5.m1.1.1.3.3" xref="A1.T9.9.9.5.m1.1.1.3.3.cmml"><mo id="A1.T9.9.9.5.m1.1.1.3.3a" xref="A1.T9.9.9.5.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.9.9.5.m1.1.1.3.3.2" xref="A1.T9.9.9.5.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.9.9.5.m1.1b"><apply id="A1.T9.9.9.5.m1.1.1.cmml" xref="A1.T9.9.9.5.m1.1.1"><times id="A1.T9.9.9.5.m1.1.1.1.cmml" xref="A1.T9.9.9.5.m1.1.1.1"></times><cn id="A1.T9.9.9.5.m1.1.1.2.cmml" type="integer" xref="A1.T9.9.9.5.m1.1.1.2">1</cn><apply id="A1.T9.9.9.5.m1.1.1.3.cmml" xref="A1.T9.9.9.5.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.9.9.5.m1.1.1.3.1.cmml" xref="A1.T9.9.9.5.m1.1.1.3">superscript</csymbol><cn id="A1.T9.9.9.5.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.9.9.5.m1.1.1.3.2">10</cn><apply id="A1.T9.9.9.5.m1.1.1.3.3.cmml" xref="A1.T9.9.9.5.m1.1.1.3.3"><minus id="A1.T9.9.9.5.m1.1.1.3.3.1.cmml" xref="A1.T9.9.9.5.m1.1.1.3.3"></minus><cn id="A1.T9.9.9.5.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.9.9.5.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.9.9.5.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.9.9.5.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T9.13.13">
<td class="ltx_td ltx_align_left" id="A1.T9.10.10.1" style="padding:0.5pt 2.0pt;">LR<sub class="ltx_sub" id="A1.T9.10.10.1.1"><span class="ltx_text ltx_font_italic" id="A1.T9.10.10.1.1.1">VFM</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.13.13.5" style="padding:0.5pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="A1.T9.11.11.2" style="padding:0.5pt 2.0pt;"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T9.11.11.2.m1.1"><semantics id="A1.T9.11.11.2.m1.1a"><mrow id="A1.T9.11.11.2.m1.1.1" xref="A1.T9.11.11.2.m1.1.1.cmml"><mn id="A1.T9.11.11.2.m1.1.1.2" xref="A1.T9.11.11.2.m1.1.1.2.cmml">1</mn><mo id="A1.T9.11.11.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.11.11.2.m1.1.1.1.cmml">×</mo><msup id="A1.T9.11.11.2.m1.1.1.3" xref="A1.T9.11.11.2.m1.1.1.3.cmml"><mn id="A1.T9.11.11.2.m1.1.1.3.2" xref="A1.T9.11.11.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.11.11.2.m1.1.1.3.3" xref="A1.T9.11.11.2.m1.1.1.3.3.cmml"><mo id="A1.T9.11.11.2.m1.1.1.3.3a" xref="A1.T9.11.11.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.11.11.2.m1.1.1.3.3.2" xref="A1.T9.11.11.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.11.11.2.m1.1b"><apply id="A1.T9.11.11.2.m1.1.1.cmml" xref="A1.T9.11.11.2.m1.1.1"><times id="A1.T9.11.11.2.m1.1.1.1.cmml" xref="A1.T9.11.11.2.m1.1.1.1"></times><cn id="A1.T9.11.11.2.m1.1.1.2.cmml" type="integer" xref="A1.T9.11.11.2.m1.1.1.2">1</cn><apply id="A1.T9.11.11.2.m1.1.1.3.cmml" xref="A1.T9.11.11.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.11.11.2.m1.1.1.3.1.cmml" xref="A1.T9.11.11.2.m1.1.1.3">superscript</csymbol><cn id="A1.T9.11.11.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.11.11.2.m1.1.1.3.2">10</cn><apply id="A1.T9.11.11.2.m1.1.1.3.3.cmml" xref="A1.T9.11.11.2.m1.1.1.3.3"><minus id="A1.T9.11.11.2.m1.1.1.3.3.1.cmml" xref="A1.T9.11.11.2.m1.1.1.3.3"></minus><cn id="A1.T9.11.11.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.11.11.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.11.11.2.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.11.11.2.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T9.12.12.3" style="padding:0.5pt 2.0pt;"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T9.12.12.3.m1.1"><semantics id="A1.T9.12.12.3.m1.1a"><mrow id="A1.T9.12.12.3.m1.1.1" xref="A1.T9.12.12.3.m1.1.1.cmml"><mn id="A1.T9.12.12.3.m1.1.1.2" xref="A1.T9.12.12.3.m1.1.1.2.cmml">1</mn><mo id="A1.T9.12.12.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.12.12.3.m1.1.1.1.cmml">×</mo><msup id="A1.T9.12.12.3.m1.1.1.3" xref="A1.T9.12.12.3.m1.1.1.3.cmml"><mn id="A1.T9.12.12.3.m1.1.1.3.2" xref="A1.T9.12.12.3.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.12.12.3.m1.1.1.3.3" xref="A1.T9.12.12.3.m1.1.1.3.3.cmml"><mo id="A1.T9.12.12.3.m1.1.1.3.3a" xref="A1.T9.12.12.3.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.12.12.3.m1.1.1.3.3.2" xref="A1.T9.12.12.3.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.12.12.3.m1.1b"><apply id="A1.T9.12.12.3.m1.1.1.cmml" xref="A1.T9.12.12.3.m1.1.1"><times id="A1.T9.12.12.3.m1.1.1.1.cmml" xref="A1.T9.12.12.3.m1.1.1.1"></times><cn id="A1.T9.12.12.3.m1.1.1.2.cmml" type="integer" xref="A1.T9.12.12.3.m1.1.1.2">1</cn><apply id="A1.T9.12.12.3.m1.1.1.3.cmml" xref="A1.T9.12.12.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.12.12.3.m1.1.1.3.1.cmml" xref="A1.T9.12.12.3.m1.1.1.3">superscript</csymbol><cn id="A1.T9.12.12.3.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.12.12.3.m1.1.1.3.2">10</cn><apply id="A1.T9.12.12.3.m1.1.1.3.3.cmml" xref="A1.T9.12.12.3.m1.1.1.3.3"><minus id="A1.T9.12.12.3.m1.1.1.3.3.1.cmml" xref="A1.T9.12.12.3.m1.1.1.3.3"></minus><cn id="A1.T9.12.12.3.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.12.12.3.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.12.12.3.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.12.12.3.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T9.13.13.4" style="padding:0.5pt 2.0pt;"><math alttext="2\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T9.13.13.4.m1.1"><semantics id="A1.T9.13.13.4.m1.1a"><mrow id="A1.T9.13.13.4.m1.1.1" xref="A1.T9.13.13.4.m1.1.1.cmml"><mn id="A1.T9.13.13.4.m1.1.1.2" xref="A1.T9.13.13.4.m1.1.1.2.cmml">2</mn><mo id="A1.T9.13.13.4.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.13.13.4.m1.1.1.1.cmml">×</mo><msup id="A1.T9.13.13.4.m1.1.1.3" xref="A1.T9.13.13.4.m1.1.1.3.cmml"><mn id="A1.T9.13.13.4.m1.1.1.3.2" xref="A1.T9.13.13.4.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.13.13.4.m1.1.1.3.3" xref="A1.T9.13.13.4.m1.1.1.3.3.cmml"><mo id="A1.T9.13.13.4.m1.1.1.3.3a" xref="A1.T9.13.13.4.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.13.13.4.m1.1.1.3.3.2" xref="A1.T9.13.13.4.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.13.13.4.m1.1b"><apply id="A1.T9.13.13.4.m1.1.1.cmml" xref="A1.T9.13.13.4.m1.1.1"><times id="A1.T9.13.13.4.m1.1.1.1.cmml" xref="A1.T9.13.13.4.m1.1.1.1"></times><cn id="A1.T9.13.13.4.m1.1.1.2.cmml" type="integer" xref="A1.T9.13.13.4.m1.1.1.2">2</cn><apply id="A1.T9.13.13.4.m1.1.1.3.cmml" xref="A1.T9.13.13.4.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.13.13.4.m1.1.1.3.1.cmml" xref="A1.T9.13.13.4.m1.1.1.3">superscript</csymbol><cn id="A1.T9.13.13.4.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.13.13.4.m1.1.1.3.2">10</cn><apply id="A1.T9.13.13.4.m1.1.1.3.3.cmml" xref="A1.T9.13.13.4.m1.1.1.3.3"><minus id="A1.T9.13.13.4.m1.1.1.3.3.1.cmml" xref="A1.T9.13.13.4.m1.1.1.3.3"></minus><cn id="A1.T9.13.13.4.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.13.13.4.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.13.13.4.m1.1c">2\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.13.13.4.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T9.17.17">
<td class="ltx_td ltx_align_left" id="A1.T9.14.14.1" style="padding:0.5pt 2.0pt;">LR<sub class="ltx_sub" id="A1.T9.14.14.1.1"><span class="ltx_text ltx_font_italic" id="A1.T9.14.14.1.1.1">LLM</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.17.17.5" style="padding:0.5pt 2.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="A1.T9.15.15.2" style="padding:0.5pt 2.0pt;"><math alttext="2\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T9.15.15.2.m1.1"><semantics id="A1.T9.15.15.2.m1.1a"><mrow id="A1.T9.15.15.2.m1.1.1" xref="A1.T9.15.15.2.m1.1.1.cmml"><mn id="A1.T9.15.15.2.m1.1.1.2" xref="A1.T9.15.15.2.m1.1.1.2.cmml">2</mn><mo id="A1.T9.15.15.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.15.15.2.m1.1.1.1.cmml">×</mo><msup id="A1.T9.15.15.2.m1.1.1.3" xref="A1.T9.15.15.2.m1.1.1.3.cmml"><mn id="A1.T9.15.15.2.m1.1.1.3.2" xref="A1.T9.15.15.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.15.15.2.m1.1.1.3.3" xref="A1.T9.15.15.2.m1.1.1.3.3.cmml"><mo id="A1.T9.15.15.2.m1.1.1.3.3a" xref="A1.T9.15.15.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.15.15.2.m1.1.1.3.3.2" xref="A1.T9.15.15.2.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.15.15.2.m1.1b"><apply id="A1.T9.15.15.2.m1.1.1.cmml" xref="A1.T9.15.15.2.m1.1.1"><times id="A1.T9.15.15.2.m1.1.1.1.cmml" xref="A1.T9.15.15.2.m1.1.1.1"></times><cn id="A1.T9.15.15.2.m1.1.1.2.cmml" type="integer" xref="A1.T9.15.15.2.m1.1.1.2">2</cn><apply id="A1.T9.15.15.2.m1.1.1.3.cmml" xref="A1.T9.15.15.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.15.15.2.m1.1.1.3.1.cmml" xref="A1.T9.15.15.2.m1.1.1.3">superscript</csymbol><cn id="A1.T9.15.15.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.15.15.2.m1.1.1.3.2">10</cn><apply id="A1.T9.15.15.2.m1.1.1.3.3.cmml" xref="A1.T9.15.15.2.m1.1.1.3.3"><minus id="A1.T9.15.15.2.m1.1.1.3.3.1.cmml" xref="A1.T9.15.15.2.m1.1.1.3.3"></minus><cn id="A1.T9.15.15.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.15.15.2.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.15.15.2.m1.1c">2\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.15.15.2.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T9.16.16.3" style="padding:0.5pt 2.0pt;"><math alttext="2\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T9.16.16.3.m1.1"><semantics id="A1.T9.16.16.3.m1.1a"><mrow id="A1.T9.16.16.3.m1.1.1" xref="A1.T9.16.16.3.m1.1.1.cmml"><mn id="A1.T9.16.16.3.m1.1.1.2" xref="A1.T9.16.16.3.m1.1.1.2.cmml">2</mn><mo id="A1.T9.16.16.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.16.16.3.m1.1.1.1.cmml">×</mo><msup id="A1.T9.16.16.3.m1.1.1.3" xref="A1.T9.16.16.3.m1.1.1.3.cmml"><mn id="A1.T9.16.16.3.m1.1.1.3.2" xref="A1.T9.16.16.3.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.16.16.3.m1.1.1.3.3" xref="A1.T9.16.16.3.m1.1.1.3.3.cmml"><mo id="A1.T9.16.16.3.m1.1.1.3.3a" xref="A1.T9.16.16.3.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.16.16.3.m1.1.1.3.3.2" xref="A1.T9.16.16.3.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.16.16.3.m1.1b"><apply id="A1.T9.16.16.3.m1.1.1.cmml" xref="A1.T9.16.16.3.m1.1.1"><times id="A1.T9.16.16.3.m1.1.1.1.cmml" xref="A1.T9.16.16.3.m1.1.1.1"></times><cn id="A1.T9.16.16.3.m1.1.1.2.cmml" type="integer" xref="A1.T9.16.16.3.m1.1.1.2">2</cn><apply id="A1.T9.16.16.3.m1.1.1.3.cmml" xref="A1.T9.16.16.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.16.16.3.m1.1.1.3.1.cmml" xref="A1.T9.16.16.3.m1.1.1.3">superscript</csymbol><cn id="A1.T9.16.16.3.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.16.16.3.m1.1.1.3.2">10</cn><apply id="A1.T9.16.16.3.m1.1.1.3.3.cmml" xref="A1.T9.16.16.3.m1.1.1.3.3"><minus id="A1.T9.16.16.3.m1.1.1.3.3.1.cmml" xref="A1.T9.16.16.3.m1.1.1.3.3"></minus><cn id="A1.T9.16.16.3.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.16.16.3.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.16.16.3.m1.1c">2\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.16.16.3.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T9.17.17.4" style="padding:0.5pt 2.0pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T9.17.17.4.m1.1"><semantics id="A1.T9.17.17.4.m1.1a"><mrow id="A1.T9.17.17.4.m1.1.1" xref="A1.T9.17.17.4.m1.1.1.cmml"><mn id="A1.T9.17.17.4.m1.1.1.2" xref="A1.T9.17.17.4.m1.1.1.2.cmml">1</mn><mo id="A1.T9.17.17.4.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T9.17.17.4.m1.1.1.1.cmml">×</mo><msup id="A1.T9.17.17.4.m1.1.1.3" xref="A1.T9.17.17.4.m1.1.1.3.cmml"><mn id="A1.T9.17.17.4.m1.1.1.3.2" xref="A1.T9.17.17.4.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T9.17.17.4.m1.1.1.3.3" xref="A1.T9.17.17.4.m1.1.1.3.3.cmml"><mo id="A1.T9.17.17.4.m1.1.1.3.3a" xref="A1.T9.17.17.4.m1.1.1.3.3.cmml">−</mo><mn id="A1.T9.17.17.4.m1.1.1.3.3.2" xref="A1.T9.17.17.4.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T9.17.17.4.m1.1b"><apply id="A1.T9.17.17.4.m1.1.1.cmml" xref="A1.T9.17.17.4.m1.1.1"><times id="A1.T9.17.17.4.m1.1.1.1.cmml" xref="A1.T9.17.17.4.m1.1.1.1"></times><cn id="A1.T9.17.17.4.m1.1.1.2.cmml" type="integer" xref="A1.T9.17.17.4.m1.1.1.2">1</cn><apply id="A1.T9.17.17.4.m1.1.1.3.cmml" xref="A1.T9.17.17.4.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T9.17.17.4.m1.1.1.3.1.cmml" xref="A1.T9.17.17.4.m1.1.1.3">superscript</csymbol><cn id="A1.T9.17.17.4.m1.1.1.3.2.cmml" type="integer" xref="A1.T9.17.17.4.m1.1.1.3.2">10</cn><apply id="A1.T9.17.17.4.m1.1.1.3.3.cmml" xref="A1.T9.17.17.4.m1.1.1.3.3"><minus id="A1.T9.17.17.4.m1.1.1.3.3.1.cmml" xref="A1.T9.17.17.4.m1.1.1.3.3"></minus><cn id="A1.T9.17.17.4.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T9.17.17.4.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.17.17.4.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T9.17.17.4.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T9.17.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T9.17.21.1" style="padding:0.5pt 2.0pt;">Epoch</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.17.21.2" style="padding:0.5pt 2.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.17.21.3" style="padding:0.5pt 2.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.17.21.4" style="padding:0.5pt 2.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.17.21.5" style="padding:0.5pt 2.0pt;">1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 details the configurations used for each of the three training stages (Stage-I, Stage-II, and Stage-III) in the CoMP-MM model training process for both the CoMP-MM-1B and CoMP-MM-7B model variants.  It shows the hyperparameters for training the adapter, VFM, and LLM components, specifying details such as batch size, learning rates (for adapter, VFM, and LLM), and the number of epochs for each stage. The table highlights the differences in training configurations between the different stages and between the two model variants.
> <details>
> <summary>read the caption</summary>
> Table 9: Detailed configuration for each training stage of our CoMP-MM-1B and CoMP-MM-7B models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T10.3">
<tr class="ltx_tr" id="A1.T10.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T10.3.4.1" style="padding:0.5pt 8.0pt;">Training Config</td>
<td class="ltx_td ltx_border_tt" id="A1.T10.3.4.2" style="padding:0.5pt 8.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.5.1" style="padding:0.5pt 8.0pt;">Optimizer</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.3.5.2" style="padding:0.5pt 8.0pt;">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1">
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.2" style="padding:0.5pt 8.0pt;">Decoder peak learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T10.1.1.1" style="padding:0.5pt 8.0pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T10.1.1.1.m1.1"><semantics id="A1.T10.1.1.1.m1.1a"><mrow id="A1.T10.1.1.1.m1.1.1" xref="A1.T10.1.1.1.m1.1.1.cmml"><mn id="A1.T10.1.1.1.m1.1.1.2" xref="A1.T10.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A1.T10.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T10.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T10.1.1.1.m1.1.1.3" xref="A1.T10.1.1.1.m1.1.1.3.cmml"><mn id="A1.T10.1.1.1.m1.1.1.3.2" xref="A1.T10.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T10.1.1.1.m1.1.1.3.3" xref="A1.T10.1.1.1.m1.1.1.3.3.cmml"><mo id="A1.T10.1.1.1.m1.1.1.3.3a" xref="A1.T10.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T10.1.1.1.m1.1.1.3.3.2" xref="A1.T10.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T10.1.1.1.m1.1b"><apply id="A1.T10.1.1.1.m1.1.1.cmml" xref="A1.T10.1.1.1.m1.1.1"><times id="A1.T10.1.1.1.m1.1.1.1.cmml" xref="A1.T10.1.1.1.m1.1.1.1"></times><cn id="A1.T10.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T10.1.1.1.m1.1.1.2">1</cn><apply id="A1.T10.1.1.1.m1.1.1.3.cmml" xref="A1.T10.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T10.1.1.1.m1.1.1.3.1.cmml" xref="A1.T10.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T10.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T10.1.1.1.m1.1.1.3.2">10</cn><apply id="A1.T10.1.1.1.m1.1.1.3.3.cmml" xref="A1.T10.1.1.1.m1.1.1.3.3"><minus id="A1.T10.1.1.1.m1.1.1.3.3.1.cmml" xref="A1.T10.1.1.1.m1.1.1.3.3"></minus><cn id="A1.T10.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T10.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T10.1.1.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T10.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.2">
<td class="ltx_td ltx_align_left" id="A1.T10.2.2.2" style="padding:0.5pt 8.0pt;">Decoder peak learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T10.2.2.1" style="padding:0.5pt 8.0pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T10.2.2.1.m1.1"><semantics id="A1.T10.2.2.1.m1.1a"><mrow id="A1.T10.2.2.1.m1.1.1" xref="A1.T10.2.2.1.m1.1.1.cmml"><mn id="A1.T10.2.2.1.m1.1.1.2" xref="A1.T10.2.2.1.m1.1.1.2.cmml">1</mn><mo id="A1.T10.2.2.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T10.2.2.1.m1.1.1.1.cmml">×</mo><msup id="A1.T10.2.2.1.m1.1.1.3" xref="A1.T10.2.2.1.m1.1.1.3.cmml"><mn id="A1.T10.2.2.1.m1.1.1.3.2" xref="A1.T10.2.2.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T10.2.2.1.m1.1.1.3.3" xref="A1.T10.2.2.1.m1.1.1.3.3.cmml"><mo id="A1.T10.2.2.1.m1.1.1.3.3a" xref="A1.T10.2.2.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T10.2.2.1.m1.1.1.3.3.2" xref="A1.T10.2.2.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T10.2.2.1.m1.1b"><apply id="A1.T10.2.2.1.m1.1.1.cmml" xref="A1.T10.2.2.1.m1.1.1"><times id="A1.T10.2.2.1.m1.1.1.1.cmml" xref="A1.T10.2.2.1.m1.1.1.1"></times><cn id="A1.T10.2.2.1.m1.1.1.2.cmml" type="integer" xref="A1.T10.2.2.1.m1.1.1.2">1</cn><apply id="A1.T10.2.2.1.m1.1.1.3.cmml" xref="A1.T10.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T10.2.2.1.m1.1.1.3.1.cmml" xref="A1.T10.2.2.1.m1.1.1.3">superscript</csymbol><cn id="A1.T10.2.2.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T10.2.2.1.m1.1.1.3.2">10</cn><apply id="A1.T10.2.2.1.m1.1.1.3.3.cmml" xref="A1.T10.2.2.1.m1.1.1.3.3"><minus id="A1.T10.2.2.1.m1.1.1.3.3.1.cmml" xref="A1.T10.2.2.1.m1.1.1.3.3"></minus><cn id="A1.T10.2.2.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T10.2.2.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T10.2.2.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T10.2.2.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.2" style="padding:0.5pt 8.0pt;">Adapter peak learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T10.3.3.1" style="padding:0.5pt 8.0pt;"><math alttext="8\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T10.3.3.1.m1.1"><semantics id="A1.T10.3.3.1.m1.1a"><mrow id="A1.T10.3.3.1.m1.1.1" xref="A1.T10.3.3.1.m1.1.1.cmml"><mn id="A1.T10.3.3.1.m1.1.1.2" xref="A1.T10.3.3.1.m1.1.1.2.cmml">8</mn><mo id="A1.T10.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T10.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A1.T10.3.3.1.m1.1.1.3" xref="A1.T10.3.3.1.m1.1.1.3.cmml"><mn id="A1.T10.3.3.1.m1.1.1.3.2" xref="A1.T10.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T10.3.3.1.m1.1.1.3.3" xref="A1.T10.3.3.1.m1.1.1.3.3.cmml"><mo id="A1.T10.3.3.1.m1.1.1.3.3a" xref="A1.T10.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T10.3.3.1.m1.1.1.3.3.2" xref="A1.T10.3.3.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T10.3.3.1.m1.1b"><apply id="A1.T10.3.3.1.m1.1.1.cmml" xref="A1.T10.3.3.1.m1.1.1"><times id="A1.T10.3.3.1.m1.1.1.1.cmml" xref="A1.T10.3.3.1.m1.1.1.1"></times><cn id="A1.T10.3.3.1.m1.1.1.2.cmml" type="integer" xref="A1.T10.3.3.1.m1.1.1.2">8</cn><apply id="A1.T10.3.3.1.m1.1.1.3.cmml" xref="A1.T10.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T10.3.3.1.m1.1.1.3.1.cmml" xref="A1.T10.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A1.T10.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T10.3.3.1.m1.1.1.3.2">10</cn><apply id="A1.T10.3.3.1.m1.1.1.3.3.cmml" xref="A1.T10.3.3.1.m1.1.1.3.3"><minus id="A1.T10.3.3.1.m1.1.1.3.3.1.cmml" xref="A1.T10.3.3.1.m1.1.1.3.3"></minus><cn id="A1.T10.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T10.3.3.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T10.3.3.1.m1.1c">8\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T10.3.3.1.m1.1d">8 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.6">
<td class="ltx_td ltx_align_left" id="A1.T10.3.6.1" style="padding:0.5pt 8.0pt;">Minimum learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T10.3.6.2" style="padding:0.5pt 8.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.7">
<td class="ltx_td ltx_align_left" id="A1.T10.3.7.1" style="padding:0.5pt 8.0pt;">Learning rate schedule</td>
<td class="ltx_td ltx_align_center" id="A1.T10.3.7.2" style="padding:0.5pt 8.0pt;">cosine decay</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.8">
<td class="ltx_td ltx_align_left" id="A1.T10.3.8.1" style="padding:0.5pt 8.0pt;">Batch size</td>
<td class="ltx_td ltx_align_center" id="A1.T10.3.8.2" style="padding:0.5pt 8.0pt;">128</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.9">
<td class="ltx_td ltx_align_left" id="A1.T10.3.9.1" style="padding:0.5pt 8.0pt;">Iterations</td>
<td class="ltx_td ltx_align_center" id="A1.T10.3.9.2" style="padding:0.5pt 8.0pt;">5197</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.10">
<td class="ltx_td ltx_align_left" id="A1.T10.3.10.1" style="padding:0.5pt 8.0pt;">Warmup ratio</td>
<td class="ltx_td ltx_align_center" id="A1.T10.3.10.2" style="padding:0.5pt 8.0pt;">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T10.3.11.1" style="padding:0.5pt 8.0pt;">Transformations</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T10.3.11.2" style="padding:0.5pt 8.0pt;">PadToSquare, Resize</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents the hyperparameters used for instruction tuning of the CoMP-SigLIP and CoMP-DINOv2 models.  It details the optimizer, learning rates (peak and minimum), learning rate schedule, batch size, number of epochs, and warmup epochs.  Specific configurations are provided for the adapter and vision foundation model (VFM) components separately. Transformations applied during data augmentation are also listed.  This table provides a detailed breakdown of the training settings used to fine-tune the pre-trained vision models with instruction data for improved multimodal understanding.
> <details>
> <summary>read the caption</summary>
> Table 10: Detailed configuration of CoMP-SigLIP and CoMP-DINOv2 in instruction tuning for multimodal understanding.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T11.5">
<tr class="ltx_tr" id="A1.T11.5.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T11.5.6.1" style="padding:0.5pt 5.0pt;">Training Config</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T11.5.6.2" style="padding:0.5pt 5.0pt;">224px</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T11.5.6.3" style="padding:0.5pt 5.0pt;">448px</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.5.7.1" style="padding:0.5pt 5.0pt;">Optimizer</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T11.5.7.2" style="padding:0.5pt 5.0pt;">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T11.2.2">
<td class="ltx_td ltx_align_left" id="A1.T11.2.2.3" style="padding:0.5pt 5.0pt;">Peak learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.1" style="padding:0.5pt 5.0pt;"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T11.1.1.1.m1.1"><semantics id="A1.T11.1.1.1.m1.1a"><mrow id="A1.T11.1.1.1.m1.1.1" xref="A1.T11.1.1.1.m1.1.1.cmml"><mn id="A1.T11.1.1.1.m1.1.1.2" xref="A1.T11.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A1.T11.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T11.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T11.1.1.1.m1.1.1.3" xref="A1.T11.1.1.1.m1.1.1.3.cmml"><mn id="A1.T11.1.1.1.m1.1.1.3.2" xref="A1.T11.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T11.1.1.1.m1.1.1.3.3" xref="A1.T11.1.1.1.m1.1.1.3.3.cmml"><mo id="A1.T11.1.1.1.m1.1.1.3.3a" xref="A1.T11.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T11.1.1.1.m1.1.1.3.3.2" xref="A1.T11.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T11.1.1.1.m1.1b"><apply id="A1.T11.1.1.1.m1.1.1.cmml" xref="A1.T11.1.1.1.m1.1.1"><times id="A1.T11.1.1.1.m1.1.1.1.cmml" xref="A1.T11.1.1.1.m1.1.1.1"></times><cn id="A1.T11.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T11.1.1.1.m1.1.1.2">1</cn><apply id="A1.T11.1.1.1.m1.1.1.3.cmml" xref="A1.T11.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T11.1.1.1.m1.1.1.3.1.cmml" xref="A1.T11.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T11.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T11.1.1.1.m1.1.1.3.2">10</cn><apply id="A1.T11.1.1.1.m1.1.1.3.3.cmml" xref="A1.T11.1.1.1.m1.1.1.3.3"><minus id="A1.T11.1.1.1.m1.1.1.3.3.1.cmml" xref="A1.T11.1.1.1.m1.1.1.3.3"></minus><cn id="A1.T11.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T11.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.1.1.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T11.2.2.2" style="padding:0.5pt 5.0pt;"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T11.2.2.2.m1.1"><semantics id="A1.T11.2.2.2.m1.1a"><mrow id="A1.T11.2.2.2.m1.1.1" xref="A1.T11.2.2.2.m1.1.1.cmml"><mn id="A1.T11.2.2.2.m1.1.1.2" xref="A1.T11.2.2.2.m1.1.1.2.cmml">1</mn><mo id="A1.T11.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T11.2.2.2.m1.1.1.1.cmml">×</mo><msup id="A1.T11.2.2.2.m1.1.1.3" xref="A1.T11.2.2.2.m1.1.1.3.cmml"><mn id="A1.T11.2.2.2.m1.1.1.3.2" xref="A1.T11.2.2.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T11.2.2.2.m1.1.1.3.3" xref="A1.T11.2.2.2.m1.1.1.3.3.cmml"><mo id="A1.T11.2.2.2.m1.1.1.3.3a" xref="A1.T11.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T11.2.2.2.m1.1.1.3.3.2" xref="A1.T11.2.2.2.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T11.2.2.2.m1.1b"><apply id="A1.T11.2.2.2.m1.1.1.cmml" xref="A1.T11.2.2.2.m1.1.1"><times id="A1.T11.2.2.2.m1.1.1.1.cmml" xref="A1.T11.2.2.2.m1.1.1.1"></times><cn id="A1.T11.2.2.2.m1.1.1.2.cmml" type="integer" xref="A1.T11.2.2.2.m1.1.1.2">1</cn><apply id="A1.T11.2.2.2.m1.1.1.3.cmml" xref="A1.T11.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T11.2.2.2.m1.1.1.3.1.cmml" xref="A1.T11.2.2.2.m1.1.1.3">superscript</csymbol><cn id="A1.T11.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T11.2.2.2.m1.1.1.3.2">10</cn><apply id="A1.T11.2.2.2.m1.1.1.3.3.cmml" xref="A1.T11.2.2.2.m1.1.1.3.3"><minus id="A1.T11.2.2.2.m1.1.1.3.3.1.cmml" xref="A1.T11.2.2.2.m1.1.1.3.3"></minus><cn id="A1.T11.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T11.2.2.2.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.2.2.2.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.2.2.2.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.4">
<td class="ltx_td ltx_align_left" id="A1.T11.4.4.3" style="padding:0.5pt 5.0pt;">Minimum learning rate</td>
<td class="ltx_td ltx_align_center" id="A1.T11.3.3.1" style="padding:0.5pt 5.0pt;"><math alttext="2\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T11.3.3.1.m1.1"><semantics id="A1.T11.3.3.1.m1.1a"><mrow id="A1.T11.3.3.1.m1.1.1" xref="A1.T11.3.3.1.m1.1.1.cmml"><mn id="A1.T11.3.3.1.m1.1.1.2" xref="A1.T11.3.3.1.m1.1.1.2.cmml">2</mn><mo id="A1.T11.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T11.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A1.T11.3.3.1.m1.1.1.3" xref="A1.T11.3.3.1.m1.1.1.3.cmml"><mn id="A1.T11.3.3.1.m1.1.1.3.2" xref="A1.T11.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T11.3.3.1.m1.1.1.3.3" xref="A1.T11.3.3.1.m1.1.1.3.3.cmml"><mo id="A1.T11.3.3.1.m1.1.1.3.3a" xref="A1.T11.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T11.3.3.1.m1.1.1.3.3.2" xref="A1.T11.3.3.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T11.3.3.1.m1.1b"><apply id="A1.T11.3.3.1.m1.1.1.cmml" xref="A1.T11.3.3.1.m1.1.1"><times id="A1.T11.3.3.1.m1.1.1.1.cmml" xref="A1.T11.3.3.1.m1.1.1.1"></times><cn id="A1.T11.3.3.1.m1.1.1.2.cmml" type="integer" xref="A1.T11.3.3.1.m1.1.1.2">2</cn><apply id="A1.T11.3.3.1.m1.1.1.3.cmml" xref="A1.T11.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T11.3.3.1.m1.1.1.3.1.cmml" xref="A1.T11.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A1.T11.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T11.3.3.1.m1.1.1.3.2">10</cn><apply id="A1.T11.3.3.1.m1.1.1.3.3.cmml" xref="A1.T11.3.3.1.m1.1.1.3.3"><minus id="A1.T11.3.3.1.m1.1.1.3.3.1.cmml" xref="A1.T11.3.3.1.m1.1.1.3.3"></minus><cn id="A1.T11.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T11.3.3.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.3.3.1.m1.1c">2\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.3.3.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T11.4.4.2" style="padding:0.5pt 5.0pt;"><math alttext="5\times 10^{-6}" class="ltx_Math" display="inline" id="A1.T11.4.4.2.m1.1"><semantics id="A1.T11.4.4.2.m1.1a"><mrow id="A1.T11.4.4.2.m1.1.1" xref="A1.T11.4.4.2.m1.1.1.cmml"><mn id="A1.T11.4.4.2.m1.1.1.2" xref="A1.T11.4.4.2.m1.1.1.2.cmml">5</mn><mo id="A1.T11.4.4.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T11.4.4.2.m1.1.1.1.cmml">×</mo><msup id="A1.T11.4.4.2.m1.1.1.3" xref="A1.T11.4.4.2.m1.1.1.3.cmml"><mn id="A1.T11.4.4.2.m1.1.1.3.2" xref="A1.T11.4.4.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T11.4.4.2.m1.1.1.3.3" xref="A1.T11.4.4.2.m1.1.1.3.3.cmml"><mo id="A1.T11.4.4.2.m1.1.1.3.3a" xref="A1.T11.4.4.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T11.4.4.2.m1.1.1.3.3.2" xref="A1.T11.4.4.2.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T11.4.4.2.m1.1b"><apply id="A1.T11.4.4.2.m1.1.1.cmml" xref="A1.T11.4.4.2.m1.1.1"><times id="A1.T11.4.4.2.m1.1.1.1.cmml" xref="A1.T11.4.4.2.m1.1.1.1"></times><cn id="A1.T11.4.4.2.m1.1.1.2.cmml" type="integer" xref="A1.T11.4.4.2.m1.1.1.2">5</cn><apply id="A1.T11.4.4.2.m1.1.1.3.cmml" xref="A1.T11.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T11.4.4.2.m1.1.1.3.1.cmml" xref="A1.T11.4.4.2.m1.1.1.3">superscript</csymbol><cn id="A1.T11.4.4.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T11.4.4.2.m1.1.1.3.2">10</cn><apply id="A1.T11.4.4.2.m1.1.1.3.3.cmml" xref="A1.T11.4.4.2.m1.1.1.3.3"><minus id="A1.T11.4.4.2.m1.1.1.3.3.1.cmml" xref="A1.T11.4.4.2.m1.1.1.3.3"></minus><cn id="A1.T11.4.4.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T11.4.4.2.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.4.4.2.m1.1c">5\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.4.4.2.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.8">
<td class="ltx_td ltx_align_left" id="A1.T11.5.8.1" style="padding:0.5pt 5.0pt;">Learning rate schedule</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.8.2" style="padding:0.5pt 5.0pt;">cosine decay</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.9">
<td class="ltx_td ltx_align_left" id="A1.T11.5.9.1" style="padding:0.5pt 5.0pt;">Batch size</td>
<td class="ltx_td ltx_align_center" id="A1.T11.5.9.2" style="padding:0.5pt 5.0pt;">1024</td>
<td class="ltx_td ltx_align_center" id="A1.T11.5.9.3" style="padding:0.5pt 5.0pt;">256</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.10">
<td class="ltx_td ltx_align_left" id="A1.T11.5.10.1" style="padding:0.5pt 5.0pt;">Weight decay</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.10.2" style="padding:0.5pt 5.0pt;">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.11">
<td class="ltx_td ltx_align_left" id="A1.T11.5.11.1" style="padding:0.5pt 5.0pt;">Epochs</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.11.2" style="padding:0.5pt 5.0pt;">10</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.12">
<td class="ltx_td ltx_align_left" id="A1.T11.5.12.1" style="padding:0.5pt 5.0pt;">Warmup epochs</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.12.2" style="padding:0.5pt 5.0pt;">1</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.13">
<td class="ltx_td ltx_align_left" id="A1.T11.5.13.1" style="padding:0.5pt 5.0pt;">Augmentations:</td>
<td class="ltx_td" id="A1.T11.5.13.2" style="padding:0.5pt 5.0pt;"></td>
<td class="ltx_td" id="A1.T11.5.13.3" style="padding:0.5pt 5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.14">
<td class="ltx_td ltx_align_left" id="A1.T11.5.14.1" style="padding:0.5pt 5.0pt;">RandomResizedCrop</td>
<td class="ltx_td" id="A1.T11.5.14.2" style="padding:0.5pt 5.0pt;"></td>
<td class="ltx_td" id="A1.T11.5.14.3" style="padding:0.5pt 5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.15">
<td class="ltx_td ltx_align_left" id="A1.T11.5.15.1" style="padding:0.5pt 5.0pt;">       size</td>
<td class="ltx_td ltx_align_center" id="A1.T11.5.15.2" style="padding:0.5pt 5.0pt;">224px</td>
<td class="ltx_td ltx_align_center" id="A1.T11.5.15.3" style="padding:0.5pt 5.0pt;">448px</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.16">
<td class="ltx_td ltx_align_left" id="A1.T11.5.16.1" style="padding:0.5pt 5.0pt;">       scale</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.16.2" style="padding:0.5pt 5.0pt;">(0.08, 1.0)</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.17">
<td class="ltx_td ltx_align_left" id="A1.T11.5.17.1" style="padding:0.5pt 5.0pt;">       ratio</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.17.2" style="padding:0.5pt 5.0pt;">(0.75, 1.33)</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.18">
<td class="ltx_td ltx_align_left" id="A1.T11.5.18.1" style="padding:0.5pt 5.0pt;">       interpolation</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.18.2" style="padding:0.5pt 5.0pt;">Bicubic</td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.5">
<td class="ltx_td ltx_align_left" id="A1.T11.5.5.2" style="padding:0.5pt 5.0pt;">RandomHorizontalFlip</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T11.5.5.1" style="padding:0.5pt 5.0pt;"><math alttext="p=0.5" class="ltx_Math" display="inline" id="A1.T11.5.5.1.m1.1"><semantics id="A1.T11.5.5.1.m1.1a"><mrow id="A1.T11.5.5.1.m1.1.1" xref="A1.T11.5.5.1.m1.1.1.cmml"><mi id="A1.T11.5.5.1.m1.1.1.2" xref="A1.T11.5.5.1.m1.1.1.2.cmml">p</mi><mo id="A1.T11.5.5.1.m1.1.1.1" xref="A1.T11.5.5.1.m1.1.1.1.cmml">=</mo><mn id="A1.T11.5.5.1.m1.1.1.3" xref="A1.T11.5.5.1.m1.1.1.3.cmml">0.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T11.5.5.1.m1.1b"><apply id="A1.T11.5.5.1.m1.1.1.cmml" xref="A1.T11.5.5.1.m1.1.1"><eq id="A1.T11.5.5.1.m1.1.1.1.cmml" xref="A1.T11.5.5.1.m1.1.1.1"></eq><ci id="A1.T11.5.5.1.m1.1.1.2.cmml" xref="A1.T11.5.5.1.m1.1.1.2">𝑝</ci><cn id="A1.T11.5.5.1.m1.1.1.3.cmml" type="float" xref="A1.T11.5.5.1.m1.1.1.3">0.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.5.5.1.m1.1c">p=0.5</annotation><annotation encoding="application/x-llamapun" id="A1.T11.5.5.1.m1.1d">italic_p = 0.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.19">
<td class="ltx_td ltx_align_left" id="A1.T11.5.19.1" style="padding:0.5pt 5.0pt;">ToTensor</td>
<td class="ltx_td" id="A1.T11.5.19.2" style="padding:0.5pt 5.0pt;"></td>
<td class="ltx_td" id="A1.T11.5.19.3" style="padding:0.5pt 5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T11.5.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T11.5.20.1" style="padding:0.5pt 5.0pt;">Normalize</td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="A1.T11.5.20.2" style="padding:0.5pt 5.0pt;">follows SigLIP or DINOv2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents the hyperparameters used for the frozen trunk classification task on ImageNet-1K.  It details the optimizer (AdamW), learning rates (peak and minimum), learning rate schedule (cosine decay), batch size, and augmentations used for both CoMP-SigLIP and CoMP-DINOv2 models.  The table also specifies image resolutions (224px and 448px) and other training settings such as weight decay, epochs and warmup epochs.  This table allows for a clear comparison of the settings used for training these two models on the ImageNet-1K dataset with a focus on evaluating their performance using only the frozen trunk.
> <details>
> <summary>read the caption</summary>
> Table 11: Detailed configuration of CoMP-SigLIP and CoMP-DINOv2 for frozen trunk classification.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T12.2">
<tr class="ltx_tr" id="A1.T12.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T12.2.3.1" style="padding:0.5pt 5.0pt;">Training Config</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T12.2.3.2" style="padding:0.5pt 5.0pt;">504px</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T12.2.3.3" style="padding:0.5pt 5.0pt;">672px</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.2.4.1" style="padding:0.5pt 5.0pt;">Optimizer</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T12.2.4.2" style="padding:0.5pt 5.0pt;">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.5">
<td class="ltx_td ltx_align_left" id="A1.T12.2.5.1" style="padding:0.5pt 5.0pt;">Weight decay</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.2.5.2" style="padding:0.5pt 5.0pt;">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1">
<td class="ltx_td ltx_align_left" id="A1.T12.1.1.2" style="padding:0.5pt 5.0pt;">Peak learning rate</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.1.1.1" style="padding:0.5pt 5.0pt;"><math alttext="4\times 10^{-5}" class="ltx_Math" display="inline" id="A1.T12.1.1.1.m1.1"><semantics id="A1.T12.1.1.1.m1.1a"><mrow id="A1.T12.1.1.1.m1.1.1" xref="A1.T12.1.1.1.m1.1.1.cmml"><mn id="A1.T12.1.1.1.m1.1.1.2" xref="A1.T12.1.1.1.m1.1.1.2.cmml">4</mn><mo id="A1.T12.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T12.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A1.T12.1.1.1.m1.1.1.3" xref="A1.T12.1.1.1.m1.1.1.3.cmml"><mn id="A1.T12.1.1.1.m1.1.1.3.2" xref="A1.T12.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T12.1.1.1.m1.1.1.3.3" xref="A1.T12.1.1.1.m1.1.1.3.3.cmml"><mo id="A1.T12.1.1.1.m1.1.1.3.3a" xref="A1.T12.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T12.1.1.1.m1.1.1.3.3.2" xref="A1.T12.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T12.1.1.1.m1.1b"><apply id="A1.T12.1.1.1.m1.1.1.cmml" xref="A1.T12.1.1.1.m1.1.1"><times id="A1.T12.1.1.1.m1.1.1.1.cmml" xref="A1.T12.1.1.1.m1.1.1.1"></times><cn id="A1.T12.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T12.1.1.1.m1.1.1.2">4</cn><apply id="A1.T12.1.1.1.m1.1.1.3.cmml" xref="A1.T12.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T12.1.1.1.m1.1.1.3.1.cmml" xref="A1.T12.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A1.T12.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T12.1.1.1.m1.1.1.3.2">10</cn><apply id="A1.T12.1.1.1.m1.1.1.3.3.cmml" xref="A1.T12.1.1.1.m1.1.1.3.3"><minus id="A1.T12.1.1.1.m1.1.1.3.3.1.cmml" xref="A1.T12.1.1.1.m1.1.1.3.3"></minus><cn id="A1.T12.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T12.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.1.1.1.m1.1c">4\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A1.T12.1.1.1.m1.1d">4 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.6">
<td class="ltx_td ltx_align_left" id="A1.T12.2.6.1" style="padding:0.5pt 5.0pt;">Minimum learning rate</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.2.6.2" style="padding:0.5pt 5.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.7">
<td class="ltx_td ltx_align_left" id="A1.T12.2.7.1" style="padding:0.5pt 5.0pt;">Learning rate schedule</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.2.7.2" style="padding:0.5pt 5.0pt;">poly decay</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.8">
<td class="ltx_td ltx_align_left" id="A1.T12.2.8.1" style="padding:0.5pt 5.0pt;">Batch size</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.2.8.2" style="padding:0.5pt 5.0pt;">16</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.9">
<td class="ltx_td ltx_align_left" id="A1.T12.2.9.1" style="padding:0.5pt 5.0pt;">Iterations</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.2.9.2" style="padding:0.5pt 5.0pt;">80K</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.10">
<td class="ltx_td ltx_align_left" id="A1.T12.2.10.1" style="padding:0.5pt 5.0pt;">Warmup iters</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.2.10.2" style="padding:0.5pt 5.0pt;">1500</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.11">
<td class="ltx_td ltx_align_left" id="A1.T12.2.11.1" style="padding:0.5pt 5.0pt;">Augmentations:</td>
<td class="ltx_td" id="A1.T12.2.11.2" style="padding:0.5pt 5.0pt;"></td>
<td class="ltx_td" id="A1.T12.2.11.3" style="padding:0.5pt 5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.12">
<td class="ltx_td ltx_align_left" id="A1.T12.2.12.1" style="padding:0.5pt 5.0pt;">RandomResizedCrop</td>
<td class="ltx_td ltx_align_center" id="A1.T12.2.12.2" style="padding:0.5pt 5.0pt;">504px</td>
<td class="ltx_td ltx_align_center" id="A1.T12.2.12.3" style="padding:0.5pt 5.0pt;">672px</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.2">
<td class="ltx_td ltx_align_left" id="A1.T12.2.2.2" style="padding:0.5pt 5.0pt;">RandomFlip</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T12.2.2.1" style="padding:0.5pt 5.0pt;"><math alttext="p=0.5" class="ltx_Math" display="inline" id="A1.T12.2.2.1.m1.1"><semantics id="A1.T12.2.2.1.m1.1a"><mrow id="A1.T12.2.2.1.m1.1.1" xref="A1.T12.2.2.1.m1.1.1.cmml"><mi id="A1.T12.2.2.1.m1.1.1.2" xref="A1.T12.2.2.1.m1.1.1.2.cmml">p</mi><mo id="A1.T12.2.2.1.m1.1.1.1" xref="A1.T12.2.2.1.m1.1.1.1.cmml">=</mo><mn id="A1.T12.2.2.1.m1.1.1.3" xref="A1.T12.2.2.1.m1.1.1.3.cmml">0.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T12.2.2.1.m1.1b"><apply id="A1.T12.2.2.1.m1.1.1.cmml" xref="A1.T12.2.2.1.m1.1.1"><eq id="A1.T12.2.2.1.m1.1.1.1.cmml" xref="A1.T12.2.2.1.m1.1.1.1"></eq><ci id="A1.T12.2.2.1.m1.1.1.2.cmml" xref="A1.T12.2.2.1.m1.1.1.2">𝑝</ci><cn id="A1.T12.2.2.1.m1.1.1.3.cmml" type="float" xref="A1.T12.2.2.1.m1.1.1.3">0.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.2.2.1.m1.1c">p=0.5</annotation><annotation encoding="application/x-llamapun" id="A1.T12.2.2.1.m1.1d">italic_p = 0.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.13">
<td class="ltx_td ltx_align_left" id="A1.T12.2.13.1" style="padding:0.5pt 5.0pt;">PhotoMetricDistortion</td>
<td class="ltx_td" id="A1.T12.2.13.2" style="padding:0.5pt 5.0pt;"></td>
<td class="ltx_td" id="A1.T12.2.13.3" style="padding:0.5pt 5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T12.2.14.1" style="padding:0.5pt 5.0pt;">Normalize</td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="A1.T12.2.14.2" style="padding:0.5pt 5.0pt;">follows SigLIP or DINOv2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the specific hyperparameters used for semantic segmentation experiments on the ADE20K dataset, using two different vision foundation models: CoMP-SigLIP and CoMP-DINOv2.  It breaks down the optimization settings, including the optimizer used (AdamW), learning rate scheduling (poly decay), batch size, number of iterations, warmup iterations, and augmentation techniques (RandomResizedCrop, RandomFlip, PhotoMetricDistortion, and normalization).  The table provides a granular view of the training configurations for both models, enabling a comprehensive understanding of the experimental setup for this particular task.
> <details>
> <summary>read the caption</summary>
> Table 12: Detailed configuration of CoMP-SigLIP and CoMP-DINOv2 for semantic segmentation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18931/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18931/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}