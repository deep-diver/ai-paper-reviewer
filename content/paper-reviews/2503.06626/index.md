---
title: "DiffCLIP: Differential Attention Meets CLIP"
summary: "DiffCLIP:  Enhancing CLIP models by integrating differential attention, achieving superior performance with minimal overhead."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 KAUST",]
showSummary: true
date: 2025-03-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.06626 {{< /keyword >}}
{{< keyword icon="writer" >}} Hasan Abed Al Kader Hammoud et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.06626" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.06626" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.06626/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Vision-language models (VLMs)** have made significant strides in bridging the gap between visual and textual data, but their attention mechanisms often focus on irrelevant features, hampering fine-grained understanding. Recent language modeling research has introduced differential attention to amplify relevant context while canceling out noisy information. The question remains whether this can be adapted for vision-language models to meaningfully improve focus across modalities. This paper addresses this issue by proposing a novel approach to enhance VLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Differential attention can effectively reduce noise in vision-language models, leading to more precise alignment between images and text. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DiffCLIP consistently outperforms standard CLIP models on various tasks, including classification, retrieval, and robustness benchmarks, with negligible computational overhead. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Applying differential attention solely to the vision encoder can capture most of the benefits, offering a cost-effective path to improved multimodal learning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel, efficient approach to enhance vision-language models, improving performance across various tasks. It offers a practical solution for reducing attention noise and boosting model accuracy with minimal computational cost, making it valuable for researchers aiming to improve VLM performance and robustness.

------
#### Visual Insights



![](https://arxiv.org/html/2503.06626/x1.png)

> 🔼 Figure 1 compares the performance of the original CLIP model and the proposed DiffCLIP model across six different vision-language tasks.  The tasks include linear probing, a few-shot classification setting, image retrieval, text retrieval, zero-shot classification on the ImageNet dataset, and zero-shot classification on out-of-distribution (OOD) data.  The results are presented using bar charts showing accuracy percentages.  The original CLIP model is represented in blue, and the DiffCLIP model is represented in pink. In every task, DiffCLIP outperforms the baseline CLIP model, demonstrating that integrating the differential attention mechanism significantly improves performance without adding any considerable computational cost (only 0.003% extra parameters).
> <details>
> <summary>read the caption</summary>
> Figure 1: CC3M Pretraining: CLIP vs. DiffCLIP Across Six Tasks. We compare standard CLIP (blue) and our DiffCLIP variant (pink) on linear probing, few-shot classification, image/text retrieval, zero-shot ImageNet, and zero-shot OOD. In each case, DiffCLIP consistently outperforms CLIP, highlighting the effectiveness of differential attention with only 0.003% extra parameters.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.5.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.1.1">Pretraining</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.5.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.3.1">Caltech-101</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.4.1">DTD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.5.1">Pets</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.6.1">Flowers</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.7.1">SUN397</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.8.1">Aircraft</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.9.1">CIFAR10</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.10.1">CIFAR100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.5.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.11.1">Food-101</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.12.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="11" id="S3.T1.5.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.2.2.1.1">Linear Probing</span></th>
<td class="ltx_td ltx_border_t" id="S3.T1.5.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">CC3M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">CLIP</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">72.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">58.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.5" style="padding-top:1pt;padding-bottom:1pt;">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.6" style="padding-top:1pt;padding-bottom:1pt;">85.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.7" style="padding-top:1pt;padding-bottom:1pt;">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.8" style="padding-top:1pt;padding-bottom:1pt;">35.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.9" style="padding-top:1pt;padding-bottom:1pt;">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.10" style="padding-top:1pt;padding-bottom:1pt;">63.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.1.3.3.11" style="padding-top:1pt;padding-bottom:1pt;">59.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.3.3.12" style="padding-top:1pt;padding-bottom:1pt;">63.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">CC3M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">DiffCLIP</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">76.2 <span class="ltx_text" id="S3.T1.5.1.4.4.3.1" style="font-size:70%;color:#008000;">(+3.7)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">60.2 <span class="ltx_text" id="S3.T1.5.1.4.4.4.1" style="font-size:70%;color:#008000;">(+1.5)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">62.2 <span class="ltx_text" id="S3.T1.5.1.4.4.5.1" style="font-size:70%;color:#008000;">(+1.2)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.6" style="padding-top:1pt;padding-bottom:1pt;">86.6 <span class="ltx_text" id="S3.T1.5.1.4.4.6.1" style="font-size:70%;color:#008000;">(+0.8)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.7" style="padding-top:1pt;padding-bottom:1pt;">56.2 <span class="ltx_text" id="S3.T1.5.1.4.4.7.1" style="font-size:70%;color:#008000;">(+2.1)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.8" style="padding-top:1pt;padding-bottom:1pt;">34.6 <span class="ltx_text" id="S3.T1.5.1.4.4.8.1" style="font-size:70%;color:#990000;">(-1.1)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.9" style="padding-top:1pt;padding-bottom:1pt;">83.9 <span class="ltx_text" id="S3.T1.5.1.4.4.9.1" style="font-size:70%;color:#008000;">(+0.4)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.10" style="padding-top:1pt;padding-bottom:1pt;">63.7 <span class="ltx_text" id="S3.T1.5.1.4.4.10.1" style="font-size:70%;color:#008000;">(+0.3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.1.4.4.11" style="padding-top:1pt;padding-bottom:1pt;">59.4 <span class="ltx_text" id="S3.T1.5.1.4.4.11.1" style="font-size:70%;color:#008000;">(+0.3)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.12" style="padding-top:1pt;padding-bottom:1pt;">64.8 <span class="ltx_text" id="S3.T1.5.1.4.4.12.1" style="font-size:70%;color:#008000;">(+1.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">CC12M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">CLIP</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">88.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">79.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.6" style="padding-top:1pt;padding-bottom:1pt;">92.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.7" style="padding-top:1pt;padding-bottom:1pt;">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.8" style="padding-top:1pt;padding-bottom:1pt;">48.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.9" style="padding-top:1pt;padding-bottom:1pt;">92.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.10" style="padding-top:1pt;padding-bottom:1pt;">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.1.5.5.11" style="padding-top:1pt;padding-bottom:1pt;">77.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.5.5.12" style="padding-top:1pt;padding-bottom:1pt;">77.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">CC12M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">DiffCLIP</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">89.5 <span class="ltx_text" id="S3.T1.5.1.6.6.3.1" style="font-size:70%;color:#008000;">(+1.2)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">71.8 <span class="ltx_text" id="S3.T1.5.1.6.6.4.1" style="font-size:70%;color:#008000;">(+0.6)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">83.0 <span class="ltx_text" id="S3.T1.5.1.6.6.5.1" style="font-size:70%;color:#008000;">(+3.5)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">93.5 <span class="ltx_text" id="S3.T1.5.1.6.6.6.1" style="font-size:70%;color:#008000;">(+0.9)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">69.4 <span class="ltx_text" id="S3.T1.5.1.6.6.7.1" style="font-size:70%;color:#008000;">(+1.1)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.8" style="padding-top:1pt;padding-bottom:1pt;">46.4 <span class="ltx_text" id="S3.T1.5.1.6.6.8.1" style="font-size:70%;color:#990000;">(-2.4)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.9" style="padding-top:1pt;padding-bottom:1pt;">90.7 <span class="ltx_text" id="S3.T1.5.1.6.6.9.1" style="font-size:70%;color:#990000;">(-1.3)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.10" style="padding-top:1pt;padding-bottom:1pt;">73.3 <span class="ltx_text" id="S3.T1.5.1.6.6.10.1" style="font-size:70%;color:#990000;">(-1.4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.1.6.6.11" style="padding-top:1pt;padding-bottom:1pt;">77.7 <span class="ltx_text" id="S3.T1.5.1.6.6.11.1" style="font-size:70%;color:#008000;">(+0.2)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.12" style="padding-top:1pt;padding-bottom:1pt;">77.3 <span class="ltx_text" id="S3.T1.5.1.6.6.12.1" style="font-size:70%;color:#008000;">(+0.3)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="11" id="S3.T1.5.1.7.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.7.7.1.1">Few-Shot</span></th>
<td class="ltx_td ltx_border_t" id="S3.T1.5.1.7.7.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.8.8.1" style="padding-top:1pt;padding-bottom:1pt;">CC3M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">CLIP</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">90.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">72.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">69.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.6" style="padding-top:1pt;padding-bottom:1pt;">92.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.7" style="padding-top:1pt;padding-bottom:1pt;">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.8" style="padding-top:1pt;padding-bottom:1pt;">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.9" style="padding-top:1pt;padding-bottom:1pt;">63.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.10" style="padding-top:1pt;padding-bottom:1pt;">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.1.8.8.11" style="padding-top:1pt;padding-bottom:1pt;">67.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.8.8.12" style="padding-top:1pt;padding-bottom:1pt;">73.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.9.9.1" style="padding-top:1pt;padding-bottom:1pt;">CC3M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.9.9.2" style="padding-top:1pt;padding-bottom:1pt;">DiffCLIP</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">91.6 <span class="ltx_text" id="S3.T1.5.1.9.9.3.1" style="font-size:70%;color:#008000;">(+1.2)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.4" style="padding-top:1pt;padding-bottom:1pt;">73.2 <span class="ltx_text" id="S3.T1.5.1.9.9.4.1" style="font-size:70%;color:#008000;">(+0.3)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.5" style="padding-top:1pt;padding-bottom:1pt;">71.6 <span class="ltx_text" id="S3.T1.5.1.9.9.5.1" style="font-size:70%;color:#008000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.6" style="padding-top:1pt;padding-bottom:1pt;">92.9 <span class="ltx_text" id="S3.T1.5.1.9.9.6.1" style="font-size:70%;color:#008000;">(+0.4)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.7" style="padding-top:1pt;padding-bottom:1pt;">92.8 <span class="ltx_text" id="S3.T1.5.1.9.9.7.1" style="font-size:70%;color:#008000;">(+1.0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.8" style="padding-top:1pt;padding-bottom:1pt;">45.4 <span class="ltx_text" id="S3.T1.5.1.9.9.8.1" style="font-size:70%;color:#008000;">(+0.8)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.9" style="padding-top:1pt;padding-bottom:1pt;">62.4 <span class="ltx_text" id="S3.T1.5.1.9.9.9.1" style="font-size:70%;color:#990000;">(-1.0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.10" style="padding-top:1pt;padding-bottom:1pt;">73.5 <span class="ltx_text" id="S3.T1.5.1.9.9.10.1" style="font-size:70%;color:#008000;">(+0.7)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.1.9.9.11" style="padding-top:1pt;padding-bottom:1pt;">68.3 <span class="ltx_text" id="S3.T1.5.1.9.9.11.1" style="font-size:70%;color:#008000;">(+1.3)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.12" style="padding-top:1pt;padding-bottom:1pt;">74.6 <span class="ltx_text" id="S3.T1.5.1.9.9.12.1" style="font-size:70%;color:#008000;">(+0.7)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.10.10.1" style="padding-top:1pt;padding-bottom:1pt;">CC12M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.10.10.2" style="padding-top:1pt;padding-bottom:1pt;">CLIP</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.3" style="padding-top:1pt;padding-bottom:1pt;">97.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.5" style="padding-top:1pt;padding-bottom:1pt;">86.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.6" style="padding-top:1pt;padding-bottom:1pt;">96.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.7" style="padding-top:1pt;padding-bottom:1pt;">96.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.8" style="padding-top:1pt;padding-bottom:1pt;">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.9" style="padding-top:1pt;padding-bottom:1pt;">81.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.10" style="padding-top:1pt;padding-bottom:1pt;">85.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.1.10.10.11" style="padding-top:1pt;padding-bottom:1pt;">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.10.10.12" style="padding-top:1pt;padding-bottom:1pt;">85.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.5.1.11.11.1" style="padding-top:1pt;padding-bottom:1pt;">CC12M</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.5.1.11.11.2" style="padding-top:1pt;padding-bottom:1pt;">DiffCLIP</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.3" style="padding-top:1pt;padding-bottom:1pt;">97.6 <span class="ltx_text" id="S3.T1.5.1.11.11.3.1" style="font-size:70%;color:#008000;">(+0.2)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.4" style="padding-top:1pt;padding-bottom:1pt;">82.2 <span class="ltx_text" id="S3.T1.5.1.11.11.4.1" style="font-size:70%;color:#008000;">(+0.3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.5" style="padding-top:1pt;padding-bottom:1pt;">88.2 <span class="ltx_text" id="S3.T1.5.1.11.11.5.1" style="font-size:70%;color:#008000;">(+1.9)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.6" style="padding-top:1pt;padding-bottom:1pt;">97.3 <span class="ltx_text" id="S3.T1.5.1.11.11.6.1" style="font-size:70%;color:#008000;">(+0.4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.7" style="padding-top:1pt;padding-bottom:1pt;">96.8 <span class="ltx_text" id="S3.T1.5.1.11.11.7.1" style="font-size:70%;color:#008000;">(+0.3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.8" style="padding-top:1pt;padding-bottom:1pt;">55.2 <span class="ltx_text" id="S3.T1.5.1.11.11.8.1" style="font-size:70%;color:#990000;">(-0.9)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.9" style="padding-top:1pt;padding-bottom:1pt;">80.3 <span class="ltx_text" id="S3.T1.5.1.11.11.9.1" style="font-size:70%;color:#990000;">(-1.0)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.10" style="padding-top:1pt;padding-bottom:1pt;">83.3 <span class="ltx_text" id="S3.T1.5.1.11.11.10.1" style="font-size:70%;color:#990000;">(-1.8)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.5.1.11.11.11" style="padding-top:1pt;padding-bottom:1pt;">87.5 <span class="ltx_text" id="S3.T1.5.1.11.11.11.1" style="font-size:70%;color:#008000;">(+1.5)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.11.11.12" style="padding-top:1pt;padding-bottom:1pt;">85.4 <span class="ltx_text" id="S3.T1.5.1.11.11.12.1" style="font-size:70%;color:#008000;">(+0.1)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of CLIP and DiffCLIP performance across nine image classification tasks.  Two different pre-training datasets were used (CC3M and CC12M). The results are split into two sections: linear probing accuracy (evaluating the model's ability to generalize with minimal fine-tuning) and few-shot learning accuracy (assessing performance with a small number of training examples). The numbers in parentheses show the difference in performance between DiffCLIP and CLIP for each task and dataset, indicating whether DiffCLIP improved or decreased accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Classification Performance (Linear Probing and Few-Shot). We compare CLIP and DiffCLIP on nine classification tasks with two pretraining sets (CC3M and CC12M). The top block reports linear probing accuracy, while the bottom block shows few-shot results. Numbers in parentheses indicate absolute gains or drops for DiffCLIP relative to CLIP.
> </details>





### In-depth insights


#### Attn Noise Reduce
The concept of reducing attention noise centers on improving model focus. Standard attention mechanisms, while effective, can distribute weight to irrelevant information, diluting the focus on key features. This is particularly detrimental in tasks requiring precision. Techniques to mitigate attention noise include differential attention, which learns complementary attention distributions and subtracts them, effectively canceling out spurious alignments. **Reducing attention noise enhances model performance** across various tasks, including image-text understanding and fine-grained visual understanding. Furthermore, it improves robustness to domain shifts, indicating that **cleaner attention patterns lead to more generalizable features**. Methods for noise reduction often involve minimal overhead, highlighting their efficiency in improving model focus.

#### DiffCLIP Details
Based on the paper, DiffCLIP enhances CLIP by integrating differential attention, originally for language models, into its dual encoder (image/text) framework. **Differential attention aims to amplify relevant context while suppressing noise.** In CLIP, this means focusing on salient features in both images and text. The paper likely details how differential attention is implemented within the CLIP architecture, including the specific modifications to the attention mechanism within the Transformer blocks of both the vision and text encoders. It probably discusses the learnable parameters involved in differential attention, such as the λ parameter that controls the subtraction of the second attention distribution. The details likely cover the computational overhead. It explores initializing differential attention parameter and vision encoder being differential attention. A dynamic adjustment scheme for the differential attention.

#### OOD robustness
The research investigates **out-of-distribution (OOD) robustness** by assessing performance on ImageNet variants (ImageNet-V2, A, R, Sketch). This is crucial because real-world applications often encounter domain shifts. **DiffCLIP** demonstrates a **notable improvement** in zero-shot performance across these OOD datasets, suggesting enhanced generalization. **Differential attention** potentially enables the model to focus on more robust features less susceptible to domain variations. This highlights the practical utility of DiffCLIP in scenarios where the data distribution differs from the training data, offering more reliable performance in unseen environments. The results suggest that by subtracting noisy attention patterns, the model learns feature representations that are more adaptable and less prone to overfitting to the specific characteristics of the training data.

#### Vision only enough?
The idea of a "Vision Only Enough?" paradigm is intriguing, suggesting an exploration into whether visual information alone can suffice for robust multimodal understanding. The paper's investigation into DiffCLIP†, a variant applying differential attention exclusively to the vision encoder, directly addresses this. The surprising result, where DiffCLIP† often matches or surpasses the full DiffCLIP model (with differential attention in both vision and text), implies that **visual feature extraction may be the bottleneck in CLIP-style models**. This highlights the potential of vision-focused improvements, streamlining the architecture for efficiency without sacrificing performance. Focusing solely on the vision pathway offers a more cost-effective way to boost multi-modal learning. In essence, the text encoder might already be sufficient, and the significant gains stem from enhanced visual processing. This insight presents a strong case for prioritizing advancements in visual representation learning within multi-modal frameworks.

#### Scaling DiffCLIP
While not explicitly titled 'Scaling DiffCLIP,' the paper touches upon aspects relevant to this hypothetical heading. The authors acknowledge the current computational cost of training CLIP models on the CC12M dataset, hinting at the resources needed for scaling. They propose **exploring larger architectures (ViT-L or ViT-H)** and **substantially bigger datasets (LAION-400M)** as a future direction. This suggests an awareness of the potential benefits of scaling DiffCLIP in terms of model capacity and data volume. The authors also hypothesize that performance gains observed with DiffCLIP might **persist or amplify with increased scale**, further underscoring its potential. However, the paper does not delve into the specific challenges or strategies related to scaling the differential attention mechanism itself. More research into how differential attention behaves with significantly larger models and datasets is needed to fully understand its scalability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.06626/extracted/6264640/figure/images.png)

> 🔼 This figure compares the attention mechanisms of CLIP and DiffCLIP models on two example images. Each image is processed with two different text queries. The heatmaps visualize where each model focuses its attention.  CLIP's attention is spread out, including irrelevant background details. In contrast, DiffCLIP's attention is more concentrated on the query-relevant objects, showcasing its ability to filter out noise and improve focus.  The text queries for the top row are 'Mug' and 'Lamp,' while the bottom row uses 'Flower' and 'Dog.'
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparing CLIP vs. DiffCLIP Attention Maps. For two images (rows), we visualize where CLIP and DiffCLIP attend when matching each image against two different textual queries. While CLIP allocates attention to irrelevant background regions, DiffCLIP more effectively centers on query-relevant objects, highlighting how differential attention can reduce noise and improve focus.  Queries: First Row: ‘Mug”, Lamp”; Second Row: Flower”, Dog”.
> </details>



![](https://arxiv.org/html/2503.06626/x2.png)

> 🔼 This figure compares the zero-shot performance of CLIP and DiffCLIP on various out-of-distribution (OOD) ImageNet datasets.  The datasets used are ImageNet, ImageNet-V2, ImageNet-A, ImageNet-R, and ImageNet-Sketch.  The performance is measured as zero-shot accuracy (%).  Two different pretraining datasets were used for the models: CC3M and CC12M.  Blue bars represent CLIP, and pink bars represent DiffCLIP. The numerical values above each bar represent the absolute difference in accuracy between DiffCLIP and CLIP for that specific dataset. The average accuracy across all datasets is also shown.  The results demonstrate that DiffCLIP generally improves the zero-shot accuracy compared to the standard CLIP model on these challenging OOD datasets.
> <details>
> <summary>read the caption</summary>
> Figure 3: OOD Zero-Shot ImageNet Performance. Comparison of zero-shot accuracy (%) on ImageNet, ImageNet-V2, ImageNet-A, ImageNet-R, and ImageNet-Sketch, plus the average. Bars show performance of CLIP (blue) versus DiffCLIP (pink), trained on CC3M (left) or CC12M (right). Numerical deltas above the bars indicate the absolute improvement or drop for DiffCLIP relative to CLIP. DiffCLIP improves on average the zero-shot performance on OOD ImageNet datasets as compared to CLIP.
> </details>



![](https://arxiv.org/html/2503.06626/x3.png)

> 🔼 The radar plot in Figure 4 compares the performance of CLIP and DiffCLIP on the MMVP-VLM benchmark, which assesses fine-grained visual understanding.  Each axis represents a different visual property: orientation, positional context, color and appearance, structural characteristics, presence of specific features, viewpoint and perspective, and distribution and quantity.  The plot shows that DiffCLIP (pink) consistently outperforms CLIP (blue), achieving an average score of 27.6% compared to CLIP's 21.9%. This improvement highlights DiffCLIP's superior ability to focus on subtle visual details relevant to the task, improving performance across multiple visual properties.
> <details>
> <summary>read the caption</summary>
> Figure 4: MMVP-VLM Benchmarking. Radar plot illustrating performance on different fine-grained visual categories. Both models (CLIP in blue, DiffCLIP in pink) are evaluated on properties like orientation, positional context, and color appearance. DiffCLIP (average 27.6%) consistently outperforms CLIP (average 21.9%), demonstrating more focused attention on subtle visual details.
> </details>



![](https://arxiv.org/html/2503.06626/x4.png)

> 🔼 Figure 5 compares the performance of four different CLIP variants across six tasks: linear probing, few-shot classification, image retrieval, text retrieval, ImageNet zero-shot classification, and out-of-distribution (OOD) zero-shot classification.  All models were pretrained on the Conceptual Captions 12M dataset. The variants are: 1) The baseline CLIP model (blue), 2) DiffCLIP with a fixed differential attention parameter (pink), 3) DiffCLIP with a dynamic schedule for the differential attention parameter (purple), and 4) DiffCLIP applying differential attention only to the vision encoder (yellow).  The figure visually represents the performance differences between these variants on each of the six tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparing Different DiffCLIP Variants. We evaluate four models on six tasks (linear probing, few-shot, image retrieval, text retrieval, ImageNet zero-shot, and zero-shot OOD), all pretrained on CC12M. CLIP (blue) is the baseline, DiffCLIP (pink) uses a fixed differential attention parameter, DiffCLIP∗ (purple) employs a dynamic schedule for differential attention, and DiffCLIP† (yellow) applies differential attention only to the vision encoder.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.1.1">Pretraining</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.2.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S3.T2.5.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.3.1">Image Retrieval (R@5)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S3.T2.5.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.4.1">Text Retrieval (R@5)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.5.1">Zero-Shot</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.2.2">
<th class="ltx_td ltx_th ltx_th_column" id="S3.T2.5.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S3.T2.5.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.3.1">Flickr30k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.2.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.4.1">Flickr8k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.2.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.5.1">MSCOCO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T2.5.1.2.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.6.1">Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.2.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.7.1">Flickr30k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.2.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.8.1">Flickr8k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.2.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.9.1">MSCOCO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T2.5.1.2.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.10.1">Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.1.2.2.11" style="padding-top:1pt;padding-bottom:1pt;">ImageNet</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.5.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.5.1.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">CC3M</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.5.1.3.1.2" style="padding-top:1pt;padding-bottom:1pt;">CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1.3" style="padding-top:1pt;padding-bottom:1pt;">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1.4" style="padding-top:1pt;padding-bottom:1pt;">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1.5" style="padding-top:1pt;padding-bottom:1pt;">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.3.1.6" style="padding-top:1pt;padding-bottom:1pt;">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1.7" style="padding-top:1pt;padding-bottom:1pt;">43.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1.8" style="padding-top:1pt;padding-bottom:1pt;">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1.9" style="padding-top:1pt;padding-bottom:1pt;">25.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.3.1.10" style="padding-top:1pt;padding-bottom:1pt;">38.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1.11" style="padding-top:1pt;padding-bottom:1pt;">13.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.4.2">
<td class="ltx_td ltx_align_left" id="S3.T2.5.1.4.2.1" style="padding-top:1pt;padding-bottom:1pt;">CC3M</td>
<td class="ltx_td ltx_align_left" id="S3.T2.5.1.4.2.2" style="padding-top:1pt;padding-bottom:1pt;">DiffCLIP</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2.3" style="padding-top:1pt;padding-bottom:1pt;">32.9 <span class="ltx_text" id="S3.T2.5.1.4.2.3.1" style="font-size:70%;color:#008000;">(+1.1)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2.4" style="padding-top:1pt;padding-bottom:1pt;">36.5 <span class="ltx_text" id="S3.T2.5.1.4.2.4.1" style="font-size:70%;color:#008000;">(+1.1)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2.5" style="padding-top:1pt;padding-bottom:1pt;">20.9 <span class="ltx_text" id="S3.T2.5.1.4.2.5.1" style="font-size:70%;color:#008000;">(+1.5)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.4.2.6" style="padding-top:1pt;padding-bottom:1pt;">30.1 <span class="ltx_text" id="S3.T2.5.1.4.2.6.1" style="font-size:70%;color:#008000;">(+1.2)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2.7" style="padding-top:1pt;padding-bottom:1pt;">44.7 <span class="ltx_text" id="S3.T2.5.1.4.2.7.1" style="font-size:70%;color:#008000;">(+1.3)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2.8" style="padding-top:1pt;padding-bottom:1pt;">47.8 <span class="ltx_text" id="S3.T2.5.1.4.2.8.1" style="font-size:70%;color:#008000;">(+1.6)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2.9" style="padding-top:1pt;padding-bottom:1pt;">27.6 <span class="ltx_text" id="S3.T2.5.1.4.2.9.1" style="font-size:70%;color:#008000;">(+2.2)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.4.2.10" style="padding-top:1pt;padding-bottom:1pt;">40.1 <span class="ltx_text" id="S3.T2.5.1.4.2.10.1" style="font-size:70%;color:#008000;">(+1.8)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2.11" style="padding-top:1pt;padding-bottom:1pt;">14.4 <span class="ltx_text" id="S3.T2.5.1.4.2.11.1" style="font-size:70%;color:#008000;">(+0.8)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.5.1.5.3.1" style="padding-top:1pt;padding-bottom:1pt;">CC12M</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.5.1.5.3.2" style="padding-top:1pt;padding-bottom:1pt;">CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.5.3.3" style="padding-top:1pt;padding-bottom:1pt;">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.5.3.4" style="padding-top:1pt;padding-bottom:1pt;">62.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.5.3.5" style="padding-top:1pt;padding-bottom:1pt;">41.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.5.3.6" style="padding-top:1pt;padding-bottom:1pt;">55.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.5.3.7" style="padding-top:1pt;padding-bottom:1pt;">76.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.5.3.8" style="padding-top:1pt;padding-bottom:1pt;">77.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.5.3.9" style="padding-top:1pt;padding-bottom:1pt;">53.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.5.3.10" style="padding-top:1pt;padding-bottom:1pt;">69.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.5.3.11" style="padding-top:1pt;padding-bottom:1pt;">31.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.5.1.6.4.1" style="padding-top:1pt;padding-bottom:1pt;">CC12M</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.5.1.6.4.2" style="padding-top:1pt;padding-bottom:1pt;">DiffCLIP</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.1.6.4.3" style="padding-top:1pt;padding-bottom:1pt;">62.2 <span class="ltx_text" id="S3.T2.5.1.6.4.3.1" style="font-size:70%;color:#990000;">(-0.3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.1.6.4.4" style="padding-top:1pt;padding-bottom:1pt;">61.5 <span class="ltx_text" id="S3.T2.5.1.6.4.4.1" style="font-size:70%;color:#990000;">(-0.6)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.1.6.4.5" style="padding-top:1pt;padding-bottom:1pt;">42.3 <span class="ltx_text" id="S3.T2.5.1.6.4.5.1" style="font-size:70%;color:#008000;">(+1.0)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.5.1.6.4.6" style="padding-top:1pt;padding-bottom:1pt;">55.3 <span class="ltx_text" id="S3.T2.5.1.6.4.6.1" style="font-size:70%;color:#008000;">(+0.0)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.1.6.4.7" style="padding-top:1pt;padding-bottom:1pt;">77.4 <span class="ltx_text" id="S3.T2.5.1.6.4.7.1" style="font-size:70%;color:#008000;">(+0.6)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.1.6.4.8" style="padding-top:1pt;padding-bottom:1pt;">77.4 <span class="ltx_text" id="S3.T2.5.1.6.4.8.1" style="font-size:70%;color:#990000;">(-0.3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.1.6.4.9" style="padding-top:1pt;padding-bottom:1pt;">55.5 <span class="ltx_text" id="S3.T2.5.1.6.4.9.1" style="font-size:70%;color:#008000;">(+1.7)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.5.1.6.4.10" style="padding-top:1pt;padding-bottom:1pt;">70.1 <span class="ltx_text" id="S3.T2.5.1.6.4.10.1" style="font-size:70%;color:#008000;">(+0.7)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.1.6.4.11" style="padding-top:1pt;padding-bottom:1pt;">33.8 <span class="ltx_text" id="S3.T2.5.1.6.4.11.1" style="font-size:70%;color:#008000;">(+2.0)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of CLIP and DiffCLIP's performance on zero-shot image and text retrieval tasks, as well as zero-shot ImageNet classification.  The results are broken down by the dataset used for pre-training (CC3M and CC12M), showing Recall@5 for retrieval and accuracy for ImageNet.  Parenthetical values indicate the performance difference between DiffCLIP and CLIP, showing improvements or decreases in performance for DiffCLIP compared to CLIP.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-Shot Retrieval and ImageNet Zero-shot Accuracy. We report image and text retrieval (Recall@5, %) and zero-shot ImageNet accuracy (%) for CLIP vs. DiffCLIP, using CC3M or CC12M as pretraining data. Values in parentheses reflect absolute gains or drops for DiffCLIP relative to CLIP.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.5.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.5.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T3.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.2.1">CLIP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.3.1">DiffCLIP</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T3.5.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.1.1">POPE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.2">Accuracy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.3">Precision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.5.1.2.2.4">Recall</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.5">Accuracy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.6">Precision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.7">Recall</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.3.1.1.1">Random</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.2">50.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.3">50.07</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.1.3.1.4">98.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.5">50.41 <span class="ltx_text" id="S4.T3.5.1.3.1.5.1" style="font-size:70%;color:#008000;">(+0.27)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.6">50.21 <span class="ltx_text" id="S4.T3.5.1.3.1.6.1" style="font-size:70%;color:#008000;">(+0.14)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.7">98.56 <span class="ltx_text" id="S4.T3.5.1.3.1.7.1" style="font-size:70%;color:#008000;">(+0.35)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.1.4.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.4.2.1.1">Popular</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.2">50.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.3">50.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.4.2.4">99.33</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.5">50.27 <span class="ltx_text" id="S4.T3.5.1.4.2.5.1" style="font-size:70%;color:#008000;">(+0.00)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.6">50.13 <span class="ltx_text" id="S4.T3.5.1.4.2.6.1" style="font-size:70%;color:#008000;">(+0.00)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.7">99.47 <span class="ltx_text" id="S4.T3.5.1.4.2.7.1" style="font-size:70%;color:#008000;">(+0.14)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.5.1.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.5.3.1.1">Adversarial</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.5.3.2">50.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.5.3.3">50.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.5.1.5.3.4">99.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.5.3.5">50.20 <span class="ltx_text" id="S4.T3.5.1.5.3.5.1" style="font-size:70%;color:#008000;">(+0.03)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.5.3.6">50.10 <span class="ltx_text" id="S4.T3.5.1.5.3.6.1" style="font-size:70%;color:#008000;">(+0.02)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.5.3.7">99.47 <span class="ltx_text" id="S4.T3.5.1.5.3.7.1" style="font-size:70%;color:#008000;">(+0.14)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of CLIP and DiffCLIP models on the POPE Hallucination Benchmark, a dataset designed to evaluate the tendency of vision-language models to generate hallucinations (incorrect or fabricated details) in their outputs.  The models are assessed across three distinct categories within the benchmark, with performance measured using three metrics: accuracy, precision, and recall.  The table shows the performance of each model in each category and highlights the absolute improvements achieved by DiffCLIP over the baseline CLIP model using parentheses.
> <details>
> <summary>read the caption</summary>
> Table 3: CLIP vs. DiffCLIP on POPE Hallucination Benchmark. We compare models across three POPE categories, showing accuracy, precision, and recall. Absolute improvements of DiffCLIP over CLIP are highlighted in parentheses.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.06626/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06626/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}