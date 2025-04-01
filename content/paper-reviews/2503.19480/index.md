---
title: "GenHancer: Imperfect Generative Models are Secretly Strong Vision-Centric Enhancers"
summary: "Visually perfect generations aren't always optimal! GenHancer finds that subtly imperfect generations can greatly improve vision-centric tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 ARC Lab, Tencent PCG",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19480 {{< /keyword >}}
{{< keyword icon="writer" >}} Shijie Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19480" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19480" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19480/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Contrastive Language-Image Pre-Training (CLIP)** is good at high-level semantics but lacks in fine-grained visual details. To fix this, generative models use CLIP's visual features for reconstruction. However, the underlying principle remains underexplored. The authors found that visually perfect generations aren't always optimal for enhancement. Effective extraction of fine-grained knowledge while reducing irrelevant info is key. They found that even small local tokens can cause training collapse, leading to the conclusion that only global visual tokens are most effective. 



To address this, the authors introduce **GenHancer**, a two-stage training strategy prioritizing useful visual knowledge, using lightweight denoisers, showing that end-to-end training introduces extraneous information. They validate their method using both continuous and discrete denoisers and present an effective method (GenHancer) that consistently outperforms prior methods on the MMVP-VLM benchmark. Enhanced CLIP leads to vision-centric performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Perfect generative reconstruction isn't necessary for enhancing visual representations; prioritizing useful knowledge is key. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Conditioning mechanisms, denoising configurations, and generation paradigms significantly impact the effectiveness of generative models as visual enhancers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The GenHancer method, leveraging lightweight denoisers and a two-stage training approach, consistently outperforms existing methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **GenHancer**, a novel method enhancing vision-centric tasks by improving how generative models extract and transfer knowledge to discriminative models like CLIP. The insights on conditioning, denoising, & model design offer pathways for **boosting multimodal models** & visual understanding.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19480/x2.png)

> 🔼 Figure 1 explores the relationship between perfect image generation and the quality of resulting visual representations.  Panel (a) illustrates the method: a generative model reconstructs an image conditioned on visual tokens.  Panel (b) shows experiments varying four factors: training iterations, denoiser size, the proportion of local tokens used for conditioning, and whether a pre-trained denoiser was used.  The evaluation metrics were CLIP score (higher is better, indicating better generation) and MMVP-VLM score (higher is better, indicating better visual representation). The results demonstrate that while increasing training iterations, adding denoiser blocks, using more local tokens, and using pre-trained denoisers improve generation quality (CLIP score), this does not guarantee improved visual representation quality (MMVP-VLM score).  In other words, perfect image reconstruction does not always lead to better visual features.
> <details>
> <summary>read the caption</summary>
> Figure 1: Perfect generation (reconstruction) does not always yield desirable visual representations. (a) Pipeline of fine-grained visual enhancements, where generative models take visual tokens as conditions and perform reconstruction. (b) Experiments across four dimensions, i.e., training iterations, denoiser size, ratio of local tokens as conditions, and whether to use pre-trained denoisers. We measure generation (CLIP score ↑↑\uparrow↑) and visual representations (MMVP-VLM ↑↑\uparrow↑) performance. As the results demonstrate, although increasing the number of training iterations, adding more denoiser blocks, using a larger ratio of local tokens as conditions, and employing pre-trained denoisers lead to better generation results, the performance of visual representations does not always improve. Best viewed zoomed in.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.6.6">
<tr class="ltx_tr" id="S5.T1.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.6.6.7.1" style="padding:-0.5pt 4.0pt;">CLIP Backbone</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.2" style="padding:-0.5pt 4.0pt;">#Params (M)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.3" style="padding:-0.5pt 4.0pt;">Resolution</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T1.6.6.7.4" style="padding:-0.5pt 4.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.5" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.5.1">\faCompass</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.6" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.6.1">\faSearch</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.7" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.7.1">\faSync</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.8" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.8.1">\faSortNumericUp</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.9" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.9.1">\faMapPin</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.10" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.10.1">\faPalette</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.11" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.11.1">\faCogs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.12" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.12.1">\faFont</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.6.6.7.13" style="padding:-0.5pt 4.0pt;"><span class="ltx_ERROR undefined" id="S5.T1.6.6.7.13.1">\faCamera</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T1.6.6.7.14" style="padding:-0.5pt 4.0pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.1.1.2" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.1.1.1.2.1">OpenAI ViT-L-14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.3" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.1.1.1.3.1">427.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.1" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.1.1.1.1.1">224<sup class="ltx_sup" id="S5.T1.1.1.1.1.1.1">2</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.1.1.1.4" style="padding:-0.5pt 4.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.5" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.6" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.7" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.8" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.9" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.10" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.11" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.12" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.1.1.13" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.1.1.1.14" style="padding:-0.5pt 4.0pt;">19.3</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.8.1" style="padding:-0.5pt 4.0pt;">+ DIVA</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.2" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.3" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.4" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.5" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.6" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.7" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.8" style="padding:-0.5pt 4.0pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.8.9" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.8.10" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.8.11" style="padding:-0.5pt 4.0pt;">25.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.9.1" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.1.1" style="background-color:#ECF4F9;">+ Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.2" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.2.1" style="background-color:#ECF4F9;">13.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.3" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.3.1" style="background-color:#ECF4F9;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.4" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.4.1" style="background-color:#ECF4F9;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.5" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.5.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.6" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.6.1" style="background-color:#ECF4F9;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.7" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.7.1" style="background-color:#ECF4F9;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.8" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.8.1" style="background-color:#ECF4F9;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.9.9" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.9.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.9.10" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.9.10.1" style="background-color:#ECF4F9;">40.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.9.11" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.9.11.1" style="background-color:#ECF4F9;">31.9<span class="ltx_text ltx_font_medium" id="S5.T1.6.6.9.11.1.1"> </span><span class="ltx_text" id="S5.T1.6.6.9.11.1.2" style="font-size:90%;color:#00FF00;">(+6.0)</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.2.2.2.2" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.2.2.2.2.1">OpenAI ViT-L-14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.3" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.2.2.2.3.1">427.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.1" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.2.2.2.1.1">336<sup class="ltx_sup" id="S5.T1.2.2.2.1.1.1">2</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.2.2.2.4" style="padding:-0.5pt 4.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.5" style="padding:-0.5pt 4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.6" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.7" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.8" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.9" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.10" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.11" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.12" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.2.2.2.13" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.2.2.2.14" style="padding:-0.5pt 4.0pt;">20.0</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.10.1" style="padding:-0.5pt 4.0pt;">+ DIVA</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.2" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.3" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.4" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.5" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.6" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.7" style="padding:-0.5pt 4.0pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.8" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.10.9" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.10.10" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.10.11" style="padding:-0.5pt 4.0pt;">25.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.11.1" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.1.1" style="background-color:#ECF4F9;">+ Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.2" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.2.1" style="background-color:#ECF4F9;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.3" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.3.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.4" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.4.1" style="background-color:#ECF4F9;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.5" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.5.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.6" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.6.1" style="background-color:#ECF4F9;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.7" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.7.1" style="background-color:#ECF4F9;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.8" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.8.1" style="background-color:#ECF4F9;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.11.9" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.9.1" style="background-color:#ECF4F9;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.11.10" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.11.10.1" style="background-color:#ECF4F9;">26.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.11.11" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.11.11.1" style="background-color:#ECF4F9;">29.6<span class="ltx_text ltx_font_medium" id="S5.T1.6.6.11.11.1.1"> </span><span class="ltx_text" id="S5.T1.6.6.11.11.1.2" style="font-size:90%;color:#00FF00;">(+4.4)</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.3.3.3.2" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.3.3.3.2.1">MetaCLIP ViT-L-14</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.3" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.3.3.3.3.1">427.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.1" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.3.3.3.1.1">224<sup class="ltx_sup" id="S5.T1.3.3.3.1.1.1">2</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T1.3.3.3.4" style="padding:-0.5pt 4.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.5" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.6" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.7" style="padding:-0.5pt 4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.8" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.9" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.10" style="padding:-0.5pt 4.0pt;">46.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.11" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.12" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.3.3.3.13" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T1.3.3.3.14" style="padding:-0.5pt 4.0pt;">23.7</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.12.1" style="padding:-0.5pt 4.0pt;">+ DIVA</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.2" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.3" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.4" style="padding:-0.5pt 4.0pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.5" style="padding:-0.5pt 4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.6" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.7" style="padding:-0.5pt 4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.8" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.12.9" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.12.10" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.12.11" style="padding:-0.5pt 4.0pt;">27.4</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.13.1" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.1.1" style="background-color:#ECF4F9;">+ Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.2" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.2.1" style="background-color:#ECF4F9;">13.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.3" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.3.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.4" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.4.1" style="background-color:#ECF4F9;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.5" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.5.1" style="background-color:#ECF4F9;">13.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.6" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.6.1" style="background-color:#ECF4F9;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.7" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.7.1" style="background-color:#ECF4F9;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.8" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.8.1" style="background-color:#ECF4F9;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.13.9" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.9.1" style="background-color:#ECF4F9;">13.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.13.10" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.13.10.1" style="background-color:#ECF4F9;">33.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.13.11" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.13.11.1" style="background-color:#ECF4F9;">31.9<span class="ltx_text ltx_font_medium" id="S5.T1.6.6.13.11.1.1"> </span><span class="ltx_text" id="S5.T1.6.6.13.11.1.2" style="font-size:90%;color:#00FF00;">(+4.5)</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.4.4.4.2" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.4.4.4.2.1">MetaCLIP ViT-H-14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.3" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.4.4.4.3.1">986.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.1" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.4.4.4.1.1">224<sup class="ltx_sup" id="S5.T1.4.4.4.1.1.1">2</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.4.4.4.4" style="padding:-0.5pt 4.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.5" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.6" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.7" style="padding:-0.5pt 4.0pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.8" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.9" style="padding:-0.5pt 4.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.10" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.11" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.12" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.4.4.4.13" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.4.4.4.14" style="padding:-0.5pt 4.0pt;">25.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.14.1" style="padding:-0.5pt 4.0pt;">+ DIVA</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.2" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.3" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.4" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.5" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.6" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.7" style="padding:-0.5pt 4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.8" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.14.9" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.14.10" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.14.11" style="padding:-0.5pt 4.0pt;">31.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.15.1" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.1.1" style="background-color:#ECF4F9;">+ Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.2" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.2.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.3" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.3.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.4" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.4.1" style="background-color:#ECF4F9;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.5" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.5.1" style="background-color:#ECF4F9;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.6" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.6.1" style="background-color:#ECF4F9;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.7" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.7.1" style="background-color:#ECF4F9;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.8" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.8.1" style="background-color:#ECF4F9;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.15.9" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.9.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.15.10" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.15.10.1" style="background-color:#ECF4F9;">53.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.15.11" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.15.11.1" style="background-color:#ECF4F9;">37.0<span class="ltx_text ltx_font_medium" id="S5.T1.6.6.15.11.1.1"> </span><span class="ltx_text" id="S5.T1.6.6.15.11.1.2" style="font-size:90%;color:#00FF00;">(+5.1)</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.5.5.5.2" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.5.5.5.2.1">SigLIP ViT-SO-14</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.3" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.5.5.5.3.1">877.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.1" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.5.5.5.1.1">224<sup class="ltx_sup" id="S5.T1.5.5.5.1.1.1">2</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T1.5.5.5.4" style="padding:-0.5pt 4.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.5" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.6" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.7" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.8" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.9" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.10" style="padding:-0.5pt 4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.11" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.12" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.5.5.5.13" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T1.5.5.5.14" style="padding:-0.5pt 4.0pt;">37.8</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.16.1" style="padding:-0.5pt 4.0pt;">+ DIVA</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.2" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.3" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.4" style="padding:-0.5pt 4.0pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.5" style="padding:-0.5pt 4.0pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.6" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.7" style="padding:-0.5pt 4.0pt;">73.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.8" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.16.9" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.16.10" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.16.11" style="padding:-0.5pt 4.0pt;">40.7</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.17.1" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.1.1" style="background-color:#ECF4F9;">+ Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.2" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.2.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.3" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.3.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.4" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.4.1" style="background-color:#ECF4F9;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.5" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.5.1" style="background-color:#ECF4F9;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.6" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.6.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.7" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.7.1" style="background-color:#ECF4F9;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.8" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.8.1" style="background-color:#ECF4F9;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.17.9" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.9.1" style="background-color:#ECF4F9;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.17.10" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.17.10.1" style="background-color:#ECF4F9;">53.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.17.11" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.17.11.1" style="background-color:#ECF4F9;">42.2<span class="ltx_text ltx_font_medium" id="S5.T1.6.6.17.11.1.1"> </span><span class="ltx_text" id="S5.T1.6.6.17.11.1.2" style="font-size:90%;color:#00FF00;">(+1.5)</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T1.6.6.6.2" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.6.2.1">SigLIP ViT-SO-14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.6.6.6.3" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.6.3.1">878.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.6.6.6.1" rowspan="3" style="padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.6.1.1">384<sup class="ltx_sup" id="S5.T1.6.6.6.1.1.1">2</sup></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T1.6.6.6.4" style="padding:-0.5pt 4.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.5" style="padding:-0.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.6" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.7" style="padding:-0.5pt 4.0pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.8" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.9" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.10" style="padding:-0.5pt 4.0pt;">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.11" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.12" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.6.6.6.13" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.6.6.6.14" style="padding:-0.5pt 4.0pt;">37.0</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T1.6.6.18.1" style="padding:-0.5pt 4.0pt;">+ DIVA</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.2" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.3" style="padding:-0.5pt 4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.4" style="padding:-0.5pt 4.0pt;">53.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.5" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.6" style="padding:-0.5pt 4.0pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.7" style="padding:-0.5pt 4.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.8" style="padding:-0.5pt 4.0pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.18.9" style="padding:-0.5pt 4.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.18.10" style="padding:-0.5pt 4.0pt;">46.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.6.6.18.11" style="padding:-0.5pt 4.0pt;">38.5</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.19">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T1.6.6.19.1" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.1.1" style="background-color:#ECF4F9;">+ Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.2" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.2.1" style="background-color:#ECF4F9;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.3" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.3.1" style="background-color:#ECF4F9;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.4" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.4.1" style="background-color:#ECF4F9;">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.5" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.5.1" style="background-color:#ECF4F9;">33.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.6" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.6.1" style="background-color:#ECF4F9;">13.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.7" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.7.1" style="background-color:#ECF4F9;">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.8" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.8.1" style="background-color:#ECF4F9;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.9" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.9.1" style="background-color:#ECF4F9;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.6.6.19.10" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text" id="S5.T1.6.6.19.10.1" style="background-color:#ECF4F9;">46.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T1.6.6.19.11" style="background-color:#ECF4F9;padding:-0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.19.11.1" style="background-color:#ECF4F9;">40.0<span class="ltx_text ltx_font_medium" id="S5.T1.6.6.19.11.1.1"> </span><span class="ltx_text" id="S5.T1.6.6.19.11.1.2" style="font-size:90%;color:#00FF00;">(+1.5)</span></span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive evaluation of various CLIP backbones (OpenAI ViT-L, MetaCLIP ViT-L/H, and SigLIP ViT-SO) using the MMVP-VLM benchmark.  The table compares the performance of the original CLIP models against those enhanced using both DIVA and the proposed GenHancer method.  The results highlight GenHancer's consistent superiority across different visual patterns (orientation, feature presence, state/condition, quantity, spatial context, color/appearance, physical characteristics, text, and viewpoint), showcasing its effectiveness in improving fine-grained visual perception capabilities. The use of a continuous denoiser in GenHancer is specified in the caption.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of various CLIP backbones in MMVP-VLM benchmark. Here, we report our results using the continuous denoiser. The enhanced CLIP consistently outperforms prior methods across various visual patterns. The visual patterns are symbolized as: \faCompass: Orientation and Direction, \faSearch: Presence of Specific Features, \faSync: State and Condition, \faSortNumericUp: Quantity and Count, \faMapPin: Positional and Relational Context, \faPalette: Color and Appearance, \faCogs: Structural and Physical Characteristics, \faFont: Texts, \faCamera: Viewpoint and Perspective.
> </details>





### In-depth insights


#### GenHancer Intro
The introduction of 'GenHancer' likely sets the stage by **highlighting the evolving synergy between generative and discriminative models**, recognizing their individual strengths: discriminative models like CLIP excel in high-level semantics, while generative models capture low-level visual details. The intro **motivates the need to enhance representations** by leveraging generative models for reconstruction tasks, taking CLIP's visual features as conditions. The paper challenges the assumption that perfect generations are always optimal, suggesting an exploration of the underlying principles for effective enhancement. It is expected to outline the key aspects investigated: **conditioning mechanisms, denoising configurations, and generation paradigms**, eventually leading to the introduction of 'GenHancer' as a novel and effective method.

#### Vision Enhancement
**Vision enhancement** through generative models is an emerging field that leverages the strengths of both discriminative and generative networks. Generative models excel at capturing low-level visual details, which discriminative models sometimes miss. By using generative models to reconstruct visual features extracted by models like CLIP, we can imbue discriminative models with a finer-grained understanding of images. **The key idea** is that by forcing the discriminative model to learn to generate accurate reconstructions, it is forced to pay attention to and encode these fine-grained details. However, perfect reconstruction isn't always optimal; there is a balance to be struck between fidelity and capturing relevant features. **Effective vision enhancement** necessitates extracting valuable knowledge from generative models while filtering out irrelevant information. Furthermore, the way visual information is conditioned, the denoising configuration and the generation paradigm all play key roles in improving the visual representational power of the original visual models.

#### Models Comparison
When comparing models, several factors must be taken into account, including **accuracy, computational efficiency, and generalizability**. Evaluating models on multiple datasets can provide a more robust understanding of their performance and highlight potential biases or limitations. It's crucial to consider the **trade-offs between model complexity and performance**, as more complex models may not always lead to better results. Another important aspect is the **interpretability of the models**, which can be crucial for understanding their behavior and identifying potential issues. Additionally, the **robustness of the models** to noisy or incomplete data should be evaluated. Also, to evaluate the models, the number of parameters must be considered. 

#### Conditional Tokens
In generative models, **conditional tokens play a crucial role in guiding the generation process**. The choice of these tokens significantly impacts the model's ability to capture relevant information and produce desired outputs. Using the right conditional tokens can effectively steer the generative model towards specific features or characteristics, enhancing its control and precision. **Appropriate token selection is paramount for achieving high-quality and tailored generations**, avoiding irrelevant or noisy information that might hinder the desired outcome. Therefore, thoughtful consideration must be given to the design and implementation of conditional token strategies in generative models, as they directly influence the model's capacity to produce targeted and meaningful results. The design should be such that extracted knowledge is useful and mitigates extraneous information.

#### Future MLLMs work
Future work in Multimodal Large Language Models (MLLMs) could focus on **improving fine-grained visual understanding**, addressing current limitations in perceiving details like color, orientation, and quantity.  Research should explore **more efficient generative models** and training strategies, such as the proposed two-stage approach, to enhance visual representations within MLLMs without relying on computationally expensive, pre-trained denoisers. Another avenue involves investigating the **synergy between continuous and discrete generative models** to optimize visual feature extraction. Further research could also focus on **integrating these enhanced vision encoders into various MLLM architectures** to evaluate the broad applicability and impact on diverse multimodal tasks. Finally, developing more comprehensive **vision-centric benchmarks** to better assess the performance improvements in fine-grained visual understanding will be crucial for guiding future progress in this area.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19480/x3.png)

> 🔼 Figure 2 demonstrates the efficiency and effectiveness of the proposed GenHancer method compared to the existing DIVA [46] method.  Subfigure (a) highlights that GenHancer only requires a lightweight denoiser, unlike DIVA which relies on heavy, pre-trained generative models.  Subfigure (b) shows that despite its simplicity, GenHancer achieves superior performance in terms of visual representation quality, as measured by the MMVP-VLM benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison with prior method [46]. (a) We only need a lightweight denoiser, but (b) achieve stronger performance than DIVA [46], which relies on pre-trained heavy generative models.
> </details>



![](https://arxiv.org/html/2503.19480/x4.png)

> 🔼 Figure 3 illustrates the two-stage training process used to enhance visual representations.  Panel (a) shows the overall pipeline, starting with noisy input and resulting in enhanced representations. Panel (b) details the continuous generative model (denoiser) which uses a lightweight FLUX-like diffusion transformer (DiT) with fewer blocks than the original, minimizing computational cost.  A regression loss based on flow matching is used for training this denoiser.  Panel (c) presents the discrete generative model (denoiser) which uses a lightweight Perceiver architecture. This model employs a cross-entropy loss function to predict masked tokens during training.
> <details>
> <summary>read the caption</summary>
> Figure 3: The two-stage post-training framework for visual enhancements. (a) Overall training pipeline. (b) Continuous generative model as the denoiser. We employ a lightweight FLUX-like DiT [22] (but with fewer blocks) and employ a regression loss of flow matching. (c) Discrete generative model as the denoiser. We choose a lightweight Perceiver [17] and employ cross-entropy loss to predict masked tokens.
> </details>



![](https://arxiv.org/html/2503.19480/x5.png)

> 🔼 Figure 4 presents a qualitative comparison of image reconstruction and captioning results between the proposed GenHancer method and the DIVA method.  Both methods aim to improve CLIP's fine-grained visual understanding. While DIVA achieves visually superior image reconstructions, it fails to accurately differentiate between subtle visual details, such as a minion's tongue being out or not. GenHancer, conversely, shows better performance in distinguishing these fine-grained differences, highlighting its ability to enhance CLIP's capacity for precise visual comprehension.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results. Although DIVA achieves better reconstructions of input images, it fails to perceive fine-grained visual details between ‘tongue out’ and ‘without tongue out’.
> </details>



![](https://arxiv.org/html/2503.19480/x6.png)

> 🔼 This figure displays the performance of CLIP (Contrastive Language–Image Pre-training) models on the MMVP-VLM (Multimodal Visual Perception Visual-Linguistic Benchmark) when different combinations of visual tokens are used as input. Specifically, it shows how the model's performance changes when using the [CLS] token (representing the class or global image information) in conjunction with varying percentages (0%, 10%, 20%, 50%, 80%, 100%) of [LOCAL] tokens (representing local image features). The x-axis indicates the percentage of local tokens included, and the y-axis represents the MMVP-VLM score, which measures the model's performance in terms of fine-grained visual understanding.  Separate bars indicate results for both continuous and discrete generative models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance of CLIP across various conditional visual tokens on MMVP-VLM, i.e., [CLS] + n%percent𝑛n\%italic_n % [LOCAL].
> </details>



![](https://arxiv.org/html/2503.19480/x7.png)

> 🔼 This figure compares the performance of CLIP (Contrastive Language-Image Pre-training) models trained using two different methods: end-to-end training and a proposed two-stage training approach.  The comparison is done on the MMVP-VLM benchmark, which evaluates fine-grained visual perception abilities. The results are shown separately for models using continuous and discrete generative denoisers.  The abbreviations O and S represent OpenAICLIP and SigLIP, respectively, indicating different CLIP model architectures.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of CLIP with end-to-end and the proposed two-stage training on MMVP-VLM. Here, Cont. and Disc. denote continuous and discrete denoisers. O: OpenAICLIP. S: SigLIP.
> </details>



![](https://arxiv.org/html/2503.19480/x8.png)

> 🔼 This figure displays the probability density functions for several different timestamp sampling distributions used in the continuous generative model.  These distributions control how frequently different timestamps are sampled during the training process.  The figure shows the distributions for uniform sampling and several variations of scaled Logit-Normal sampling, with different scale parameters (s = 0.1, 0.5, 1, 5, 10).  The Logit-Normal distributions allow for more focused sampling around the midpoint (t=0.5) of the interval, as opposed to uniform sampling which gives equal weight to all timestamps.
> <details>
> <summary>read the caption</summary>
> Figure 7: Probability density function of different distributions.
> </details>



![](https://arxiv.org/html/2503.19480/x9.png)

> 🔼 This figure compares the performance of CLIP models enhanced using LoRA (Low-Rank Adaptation) with those trained without LoRA.  It showcases the results across various CLIP backbones (OpenAI, MetaCLIP). The graph likely illustrates that employing LoRA improves the fine-grained visual representation learning of the CLIP model by preventing overfitting during the training process, thus achieving better performance compared to training without LoRA.
> <details>
> <summary>read the caption</summary>
> Figure 8: The effect of LoRA on several CLIP backbones.
> </details>



![](https://arxiv.org/html/2503.19480/x10.png)

> 🔼 This figure compares the performance of updating only the visual encoder (CLIP ViT) versus updating both the visual encoder and the generative model components (denoiser and projector) during the second stage of training.  The results show that only updating the visual encoder yields better performance on the MMVP-VLM benchmark, suggesting that additional updates to the generative model components are not beneficial in this stage.
> <details>
> <summary>read the caption</summary>
> Figure 9: The performance of whether to update the denoiser and the projector in Stage-2.
> </details>



![](https://arxiv.org/html/2503.19480/x11.png)

> 🔼 Figure 10 presents a qualitative comparison of the original CLIP model and the enhanced CLIP model's performance on the MMVP-VLM benchmark.  The images showcase several examples where the original CLIP model struggles with fine-grained visual details, such as color, quantity, and orientation. The enhanced CLIP model, however, demonstrates a significantly improved ability to perceive and correctly identify these fine-grained details, overcoming the visual shortcomings of the original model. This improvement highlights the effectiveness of the proposed method in enhancing the visual understanding capabilities of CLIP.
> <details>
> <summary>read the caption</summary>
> Figure 10: Qualitative results of CLIP on MMVP-VLM benchmark. The enhanced CLIP overcomes original visual shortcomings in fine-grained details.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.7.3">
<tr class="ltx_tr" id="S5.T2.7.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.7.3.4.1" rowspan="3" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.7.3.4.1.1">LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.7.3.4.2" rowspan="3" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.7.3.4.2.1">CLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="S5.T2.7.3.4.3" style="padding:-0.5pt 3.0pt;">Vision-Centric Benchmarks</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S5.T2.7.3.4.4" style="padding:-0.5pt 3.0pt;">Conventional MLLM Benchmarks</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.1.2" rowspan="2" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.5.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.5.1.1.2.1.1">
<span class="ltx_tr" id="S5.T2.5.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.2.1.1.1.1" style="padding:-0.5pt 3.0pt;">MMVP-</span></span>
<span class="ltx_tr" id="S5.T2.5.1.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.2.1.1.2.1" style="padding:-0.5pt 3.0pt;">MLLM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19480v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T2.5.1.1.1" style="padding:-0.5pt 3.0pt;">NaturalBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19480v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite><sup class="ltx_sup" id="S5.T2.5.1.1.1.1">‡</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T2.5.1.1.3" style="padding:-0.5pt 3.0pt;">CV-Bench 2D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19480v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.1.4" rowspan="2" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.5.1.1.4.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.5.1.1.4.1.1">
<span class="ltx_tr" id="S5.T2.5.1.1.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.4.1.1.1.1" style="padding:-0.5pt 3.0pt;">CV-Bench</span></span>
<span class="ltx_tr" id="S5.T2.5.1.1.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.4.1.1.2.1" style="padding:-0.5pt 3.0pt;">3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19480v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S5.T2.5.1.1.5" style="padding:-0.5pt 3.0pt;">POPE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19480v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.1.6" rowspan="2" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.5.1.1.6.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.5.1.1.6.1.1">
<span class="ltx_tr" id="S5.T2.5.1.1.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.6.1.1.1.1" style="padding:-0.5pt 3.0pt;">SciQA-</span></span>
<span class="ltx_tr" id="S5.T2.5.1.1.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.6.1.1.2.1" style="padding:-0.5pt 3.0pt;">IMG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19480v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.5.1.1.7" rowspan="2" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.5.1.1.7.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T2.5.1.1.7.1.1">
<span class="ltx_tr" id="S5.T2.5.1.1.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.7.1.1.1.1" style="padding:-0.5pt 3.0pt;">Hallusion</span></span>
<span class="ltx_tr" id="S5.T2.5.1.1.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.5.1.1.7.1.1.2.1" style="padding:-0.5pt 3.0pt;">Avg. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19480v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.1" style="padding:-0.5pt 3.0pt;">Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.2" style="padding:-0.5pt 3.0pt;">Q-Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.3" style="padding:-0.5pt 3.0pt;">I-Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.4" style="padding:-0.5pt 3.0pt;">G-Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.5" style="padding:-0.5pt 3.0pt;">ADE20K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.6" style="padding:-0.5pt 3.0pt;">COCO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.7" style="padding:-0.5pt 3.0pt;">rand</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.8" style="padding:-0.5pt 3.0pt;">pop</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.5.9" style="padding:-0.5pt 3.0pt;">adv</td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.7.3.6.1" rowspan="3" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.7.3.6.1.1">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.7.3.6.2" style="padding:-0.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.3" style="padding:-0.5pt 3.0pt;">24.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.4" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.6.4.1">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.5" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.6.5.1">53.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.6" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.6.6.1">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.7" style="padding:-0.5pt 3.0pt;">17.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.8" style="padding:-0.5pt 3.0pt;">49.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.9" style="padding:-0.5pt 3.0pt;">60.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.10" style="padding:-0.5pt 3.0pt;">58.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.11" style="padding:-0.5pt 3.0pt;">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.12" style="padding:-0.5pt 3.0pt;">86.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.13" style="padding:-0.5pt 3.0pt;">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.3.6.14" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.6.14.1">66.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.7.3.6.15" style="padding:-0.5pt 3.0pt;">27.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.2.2">
<td class="ltx_td ltx_align_left" id="S5.T2.6.2.2.1" style="padding:-0.5pt 3.0pt;">DIVA<sup class="ltx_sup" id="S5.T2.6.2.2.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.2" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.6.2.2.2.1">31.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.3" style="padding:-0.5pt 3.0pt;">75.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.4" style="padding:-0.5pt 3.0pt;">51.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.5" style="padding:-0.5pt 3.0pt;">56.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.6" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.6.2.2.6.1">22.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.7" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.6.2.2.7.1">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.8" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.6.2.2.8.1">63.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.9" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.6.2.2.9.1">60.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.10" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.6.2.2.10.1">87.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.11" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.6.2.2.11.1">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.12" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.6.2.2.12.1">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2.13" style="padding:-0.5pt 3.0pt;">66.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.6.2.2.14" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.6.2.2.14.1">28.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3.7">
<td class="ltx_td ltx_align_left" id="S5.T2.7.3.7.1" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.7.3.7.1.1" style="background-color:#ECF4F9;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.2" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.7.2.1" style="background-color:#ECF4F9;">30.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.3" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.3.1" style="background-color:#ECF4F9;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.4" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.4.1" style="background-color:#ECF4F9;">55.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.5" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.5.1" style="background-color:#ECF4F9;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.6" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.6.1" style="background-color:#ECF4F9;">24.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.7" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.7.1" style="background-color:#ECF4F9;">52.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.8" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.8.1" style="background-color:#ECF4F9;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.9" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.9.1" style="background-color:#ECF4F9;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.10" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.10.1" style="background-color:#ECF4F9;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.11" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.7.11.1" style="background-color:#ECF4F9;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.12" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.7.12.1" style="background-color:#ECF4F9;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.7.13" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.7.13.1" style="background-color:#ECF4F9;">66.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.7.3.7.14" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.7.14.1" style="background-color:#ECF4F9;">28.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S5.T2.7.3.8.1" rowspan="3" style="padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.7.3.8.1.1">Vicuna-13B</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.7.3.8.2" style="padding:-0.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.3" style="padding:-0.5pt 3.0pt;">30.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.4" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.8.4.1">76.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.5" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.8.5.1">52.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.6" style="padding:-0.5pt 3.0pt;">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.7" style="padding:-0.5pt 3.0pt;">13.8</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.8" style="padding:-0.5pt 3.0pt;">52.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.9" style="padding:-0.5pt 3.0pt;">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.10" style="padding:-0.5pt 3.0pt;">65.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.11" style="padding:-0.5pt 3.0pt;">87.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.12" style="padding:-0.5pt 3.0pt;">86.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.13" style="padding:-0.5pt 3.0pt;">84.5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.14" style="padding:-0.5pt 3.0pt;">71.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.7.3.8.15" style="padding:-0.5pt 3.0pt;">24.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3.3">
<td class="ltx_td ltx_align_left" id="S5.T2.7.3.3.1" style="padding:-0.5pt 3.0pt;">DIVA<sup class="ltx_sup" id="S5.T2.7.3.3.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.2" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.2.1">35.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.3" style="padding:-0.5pt 3.0pt;">76.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.4" style="padding:-0.5pt 3.0pt;">52.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.5" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.5.1">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.6" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.6.1">16.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.7" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.7.1">53.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.8" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.3.8.1">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.9" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.9.1">65.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.10" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.3.10.1">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.11" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.3.11.1">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.12" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.12.1">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.3.3.13" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.13.1">71.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.7.3.3.14" style="padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.3.14.1">25.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.7.3.9.1" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text" id="S5.T2.7.3.9.1.1" style="background-color:#ECF4F9;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.2" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.2.1" style="background-color:#ECF4F9;">36.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.3" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.3.1" style="background-color:#ECF4F9;">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.4" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.4.1" style="background-color:#ECF4F9;">55.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.5" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.5.1" style="background-color:#ECF4F9;">58.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.6" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.6.1" style="background-color:#ECF4F9;">22.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.7" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.7.1" style="background-color:#ECF4F9;">55.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.8" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.8.1" style="background-color:#ECF4F9;">64.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.9" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.9.1" style="background-color:#ECF4F9;">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.10" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.9.10.1" style="background-color:#ECF4F9;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.11" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.7.3.9.11.1" style="background-color:#ECF4F9;">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.12" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.12.1" style="background-color:#ECF4F9;">84.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.13" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.13.1" style="background-color:#ECF4F9;">72.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.7.3.9.14" style="background-color:#ECF4F9;padding:-0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.7.3.9.14.1" style="background-color:#ECF4F9;">26.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of the LLaVA-1.5 [28] multimodal large language model (MLLM) using both vision-centric and conventional MLLM benchmarks.  The results for the original LLaVA-1.5 model are compared against versions enhanced using the DIVA method [46] and the GenHancer method proposed in this paper.  Vision-centric benchmarks assess the model's performance on tasks requiring fine-grained visual understanding, while conventional benchmarks test more general multimodal capabilities. Note that the results for DIVA were reproduced using the official checkpoints provided by the authors of DIVA. For the LLaVA-1.5 model's predictions, the response with the highest likelihood was selected, following the methodology in [23].  The benchmarks include HallusionBench [13], and ScienceQA [30].  Bold and underlined values indicate the best and second-best performing models for each metric.
> <details>
> <summary>read the caption</summary>
> Table 2: Comprehensive evaluation of MLLMs (LLaVA-1.5 [28]), including vision-centric and conventional MLLM benchmarks. † We use official DIVA CLIP checkpoints [46] to reproduce the results. ‡ Similar to [23], we select the choice with the highest likelihood as MLLM’s prediction. Hallusion: HallusionBench [13]. SciQA: ScienceQA [30]. Bold and underline indicate the best and the second best.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.4.1">
<tr class="ltx_tr" id="S5.T3.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.4.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T3.4.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">Classification</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.4.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">Retrieval-Image@5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.4.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">Retrieval-Text@5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">IN-1K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">C100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">SUN397</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">Cars</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">Flickr30k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">COCO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">Flickr30k</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.4.1.2.8" style="padding-left:2.0pt;padding-right:2.0pt;">COCO</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.4.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">77.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">87.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">61.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.1.3.8" style="padding-left:2.0pt;padding-right:2.0pt;">97.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.4.1.3.9" style="padding-left:2.0pt;padding-right:2.0pt;">79.2</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.1.4" style="background-color:#ECF4F9;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.4.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.1.1" style="background-color:#ECF4F9;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.2.1" style="background-color:#ECF4F9;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.3.1" style="background-color:#ECF4F9;">76.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.4.1" style="background-color:#ECF4F9;">67.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.5.1" style="background-color:#ECF4F9;">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.6.1" style="background-color:#ECF4F9;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.7.1" style="background-color:#ECF4F9;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.8.1" style="background-color:#ECF4F9;">97.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.4.1.4.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.4.1.4.9.1" style="background-color:#ECF4F9;">79.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of zero-shot image classification and text-to-image retrieval tasks using the original and post-tuned OpenAICLIP@224 model.  Zero-shot learning means the model is not fine-tuned for these specific tasks. The goal is to assess the model's ability to generalize to unseen data based solely on pre-training.  The datasets used encompass various categories and require the model to understand global image semantics for accurate classification and retrieval, such as recognizing the overall content or matching text descriptions to similar images.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of zero-shot classification and retrieval that require global semantics. We report the results of original and post-tuned OpenAICLIP@224.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.4.1">
<tr class="ltx_tr" id="S5.T4.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.4.1.1.1" style="padding:-1.5pt 4.0pt;">Distribution</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.1.1.2" style="padding:-1.5pt 4.0pt;">Scale</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.4.1.1.3" style="padding:-1.5pt 4.0pt;">O@224</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.4.1.1.4" style="padding:-1.5pt 4.0pt;">O@336</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.4.1.1.5" style="padding:-1.5pt 4.0pt;">M@224</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.4.1.2.1" style="padding:-1.5pt 4.0pt;">Uniform</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.2" style="padding:-1.5pt 4.0pt;">N/A</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.3" style="padding:-1.5pt 4.0pt;">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.4" style="padding:-1.5pt 4.0pt;">22.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.4.1.2.5" style="padding:-1.5pt 4.0pt;">23.7</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S5.T4.4.1.3.1" rowspan="5" style="padding:-1.5pt 4.0pt;"><span class="ltx_text" id="S5.T4.4.1.3.1.1">Logit-Normal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.1.3.2" style="padding:-1.5pt 4.0pt;">0.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.1.3.3" style="padding:-1.5pt 4.0pt;">27.4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.1.3.4" style="padding:-1.5pt 4.0pt;">25.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T4.4.1.3.5" style="padding:-1.5pt 4.0pt;">26.7</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.4">
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.1" style="padding:-1.5pt 4.0pt;">0.5</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.2" style="padding:-1.5pt 4.0pt;">28.2</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.4.3" style="padding:-1.5pt 4.0pt;">28.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.1.4.4" style="padding:-1.5pt 4.0pt;">29.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.5">
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.1" style="padding:-1.5pt 4.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.2" style="padding:-1.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.5.2.1">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.5.3" style="padding:-1.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.5.3.1">29.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.1.5.4" style="padding:-1.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.5.4.1">31.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.6">
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.1" style="padding:-1.5pt 4.0pt;">5.0</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.2" style="padding:-1.5pt 4.0pt;">24.5</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.6.3" style="padding:-1.5pt 4.0pt;">25.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.4.1.6.4" style="padding:-1.5pt 4.0pt;">25.9</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.7.1" style="padding:-1.5pt 4.0pt;">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.7.2" style="padding:-1.5pt 4.0pt;">20.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.7.3" style="padding:-1.5pt 4.0pt;">20.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T4.4.1.7.4" style="padding:-1.5pt 4.0pt;">21.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different timestamp sampling methods within continuous denoisers, specifically focusing on the MMVP-VLM benchmark. It shows how the choice of sampling distribution (uniform vs. Logit-Normal) and the scale parameter (s) influence the quality of visual enhancements achieved using OpenAICLIP and MetaCLIP models.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of timestamp sampling in continuous denoisers on MMVP-VLM. O: OpenAICLIP. M: MetaCLIP.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.6.1">
<tr class="ltx_tr" id="S5.T5.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.1.1.1">Continuous</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.2" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.1.2.1" style="background-color:#FFF1E0;">#DiT Blocks (MM+Single)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.3" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.1.3.1" style="background-color:#FFF1E0;">1+2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.4" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.1.4.1" style="background-color:#FFF1E0;">2+4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.5" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.1.5.1" style="background-color:#FFF1E0;">3+6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.6" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.1.6.1" style="background-color:#FFF1E0;">4+8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.2.1" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.2.1.1" style="background-color:#FFF1E0;">MMVP-VLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.2.2" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.2.2.1" style="background-color:#FFF1E0;">41.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.2.3" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.2.3.1" style="background-color:#FFF1E0;">42.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.2.4" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.2.4.1" style="background-color:#FFF1E0;">42.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.6.1.2.5" style="background-color:#FFF1E0;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.2.5.1" style="background-color:#FFF1E0;">41.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S5.T5.6.1.3.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.3.1.1">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.3.2" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.3.2.1" style="background-color:#ECF4E9;">#Perceiver Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.3.3" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.3.3.1" style="background-color:#ECF4E9;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.3.4" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.3.4.1" style="background-color:#ECF4E9;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.3.5" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.3.5.1" style="background-color:#ECF4E9;">6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T5.6.1.3.6" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.3.6.1" style="background-color:#ECF4E9;">8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.4.1" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.4.1.1" style="background-color:#ECF4E9;">MMVP-VLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.4.2" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.4.2.1" style="background-color:#ECF4E9;">41.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.4.3" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.4.3.1" style="background-color:#ECF4E9;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.4.4" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.4.4.1" style="background-color:#ECF4E9;">45.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.4.5" style="background-color:#ECF4E9;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.6.1.4.5.1" style="background-color:#ECF4E9;">43.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GenHancer model on the SigLIP@224 benchmark using different sizes of lightweight continuous and discrete denoisers. It demonstrates how the model's performance varies with the complexity (number of layers/blocks) of the denoiser, indicating the efficiency of using lightweight denoisers while maintaining performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance on SigLIP@224 across different sizes of lightweight continuous and discrete denoisers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.8.1">
<tr class="ltx_tr" id="S5.T6.8.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.8.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.8.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">OpenAI@224</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.8.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">SigLIP@224</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T6.8.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">SigLIP@384</td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.8.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">DIVA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">25.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">40.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T6.8.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">38.5</td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.1.3">
<td class="ltx_td ltx_align_left" id="S5.T6.8.1.3.1" style="background-color:#FFF1E0;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.8.1.3.1.1" style="background-color:#FFF1E0;">Continuous</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.1.3.2" style="background-color:#FFF1E0;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.8.1.3.2.1" style="background-color:#FFF1E0;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.1.3.3" style="background-color:#FFF1E0;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T6.8.1.3.3.1" style="background-color:#FFF1E0;">42.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.8.1.3.4" style="background-color:#FFF1E0;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T6.8.1.3.4.1" style="background-color:#FFF1E0;">40.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.8.1.4.1" style="background-color:#ECF4E9;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S5.T6.8.1.4.1.1" style="background-color:#ECF4E9;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.1.4.2" style="background-color:#ECF4E9;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T6.8.1.4.2.1" style="background-color:#ECF4E9;">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.8.1.4.3" style="background-color:#ECF4E9;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.8.1.4.3.1" style="background-color:#ECF4E9;">45.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T6.8.1.4.4" style="background-color:#ECF4E9;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.8.1.4.4.1" style="background-color:#ECF4E9;">40.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance achieved by using either a continuous or discrete generative model within the GenHancer framework. The performance is measured by averaging the results across all visual patterns of the MMVP-VLM benchmark.  The best and second-best results are highlighted in bold and underlined, respectively, to easily identify the superior model type.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance of our method with our continuous and discrete denoisers on MMVP-VLM (average of all visual patterns). Bold and underline indicate the best and the second best.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T7.5.1">
<tr class="ltx_tr" id="S5.T7.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T7.5.1.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.1.1.1">Denoiser</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T7.5.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Efficiency</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T7.5.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">MMVP-VLM</td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">#Params</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">Memory</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">Time/100 iters</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">OpenAI</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.5.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">Meta-H</td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.5.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Pre-trained</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">11.90B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">37.33G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">198.57s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.5.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.3.5.1">32.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.5.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.3.6.1">37.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.1.4" style="background-color:#ECF4F9;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T7.5.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.4.1.1" style="background-color:#ECF4F9;">Lightweight</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.4.2.1" style="background-color:#ECF4F9;">1.31B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.4.3.1" style="background-color:#ECF4F9;">13.07G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.4.4.1" style="background-color:#ECF4F9;">20.55s</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.5.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T7.5.1.4.5.1" style="background-color:#ECF4F9;">31.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T7.5.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.5.1.4.6.1" style="background-color:#ECF4F9;">37.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the efficiency of the lightweight rectified flow (RF) denoiser used in GenHancer with the pre-trained, heavier FLUX.1-dev denoiser.  It contrasts the number of parameters, GPU memory usage, and training time (per 100 iterations) for both models, demonstrating the significant efficiency gains achieved by the lightweight GenHancer denoiser while maintaining comparable performance on the MMVP-VLM benchmark.
> <details>
> <summary>read the caption</summary>
> Table 7: Efficiency comparison of our lightweight RF denoiser with pre-trained FLUX.1-dev.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T8.6.1">
<tr class="ltx_tr" id="A4.T8.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.6.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.1.1" style="font-size:144%;">Mask Ratio (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.2.1" style="font-size:144%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.3.1" style="font-size:144%;">60</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.4.1" style="font-size:144%;">70</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.5.1" style="font-size:144%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.6.1" style="font-size:144%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.7.1" style="font-size:144%;">85</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.8.1" style="font-size:144%;">90</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T8.6.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.1.9.1" style="font-size:144%;">random (50-90)</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.6.1.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.2.1.1" style="font-size:144%;">MMVP-VLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.2.2.1" style="font-size:144%;">28.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.2.3.1" style="font-size:144%;">27.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.6.1.2.4.1" style="font-size:144%;">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.2.5.1" style="font-size:144%;">27.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.2.6.1" style="font-size:144%;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.2.7.1" style="font-size:144%;">25.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="A4.T8.6.1.2.8.1" style="font-size:144%;">25.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A4.T8.6.1.2.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.6.1.2.9.1" style="font-size:144%;">28.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the discrete denoiser model used in the GenHancer method on the OpenAICLIP@224 backbone across different mask ratios.  The mask ratio determines the percentage of input tokens that are masked during training. The table shows how variations in the mask ratio (from 50% to 90%, and a random range between 50% and 90%) affect the performance of GenHancer, as measured by the MMVP-VLM score. This helps to determine the optimal masking strategy for enhancing CLIP's visual representation learning. 
> <details>
> <summary>read the caption</summary>
> Table 8: Performance of various mask ratios on OpenAICLIP@224.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19480/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19480/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}