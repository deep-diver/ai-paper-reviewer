---
title: "Plug-and-Play 1.x-Bit KV Cache Quantization for Video Large Language Models"
summary: "VidKV: Achieves 1.5x-bit KV cache quantization for VideoLLMs, maintaining performance without retraining."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Westlake University",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16257 {{< /keyword >}}
{{< keyword icon="writer" >}} Keda Tao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16257" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16257" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16257/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video Large Language Models(**VideoLLMs**) are powerful for understanding video content, but they require a lot of memory for key-value (KV) caches, which limits their efficiency. Existing KV cache quantization techniques reduce memory usage, but their applicability to VideoLLMs remains largely unexplored. This paper shows a basic group-wise 2-bit KV cache quantization has achieved promising performance for VideoLLMs.



To improve upon existing methods, this paper introduces **VidKV**, a training-free method that employs mixed-precision quantization for the key cache (2-bit for anomalous channels, 1-bit with FFT for normal channels) and 1.58-bit quantization for the value cache, selectively preserving semantically salient tokens. VidKV effectively compresses the KV cache with minimal performance loss.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VidKV introduces a mixed-precision quantization scheme for key and value caches in VideoLLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method uses FFT to stabilize key cache distributions and a per-channel quantization for value caches, improving efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show that VidKV achieves significant KV cache compression with almost no performance drop on several benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on efficient video processing. By introducing a method to significantly compress KV cache with minimal performance loss, it addresses a key bottleneck in **VideoLLMs**. This work has great potential of enabling faster and more scalable video understanding and analysis. It opens new research avenues in low-bit quantization techniques for video data.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16257/x1.png)

> 🔼 This figure displays the magnitude of the key cache in layer 5 of the LLaVA-OV-7B model.  It shows a heatmap visualization of the key cache's values across the channel and token dimensions.  The heatmap allows for the visual identification of channels with significantly larger magnitudes than others. This visualization is used in the paper to support the argument for a mixed-precision quantization strategy for the key cache, where different quantization levels are applied to channels with different magnitude characteristics.
> <details>
> <summary>read the caption</summary>
> (a) Layer 5 Key
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.8.8">
<tr class="ltx_tr" id="S3.T1.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.8.8.9.1" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.9.1.1">LLaVA-OV-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.8.8.9.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.9.2.1">Bit (K/V)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.8.8.9.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.9.3.1">VideoDC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.8.8.9.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.9.4.1">MovieChat</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.8.8.10.1" style="padding-left:11.0pt;padding-right:11.0pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.2" style="padding-left:11.0pt;padding-right:11.0pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.3" style="padding-left:11.0pt;padding-right:11.0pt;">3.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.10.4" style="padding-left:11.0pt;padding-right:11.0pt;">47.87</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.2.2" style="padding-left:11.0pt;padding-right:11.0pt;">K - <math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">blackboard_C</annotation></semantics></math>, V - <math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m2.1"><semantics id="S3.T1.2.2.2.2.m2.1a"><mi id="S3.T1.2.2.2.2.m2.1.1" xref="S3.T1.2.2.2.2.m2.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m2.1b"><ci id="S3.T1.2.2.2.2.m2.1.1.cmml" xref="S3.T1.2.2.2.2.m2.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m2.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m2.1d">blackboard_C</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.3" style="padding-left:11.0pt;padding-right:11.0pt;">2 / 2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.4.1">3.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.5" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.5.1">47.68</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<td class="ltx_td ltx_align_left" id="S3.T1.4.4.4.2" style="padding-left:11.0pt;padding-right:11.0pt;">K - <math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mi id="S3.T1.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><ci id="S3.T1.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">blackboard_C</annotation></semantics></math>, V - <math alttext="\mathbb{T}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.2.m2.1"><semantics id="S3.T1.4.4.4.2.m2.1a"><mi id="S3.T1.4.4.4.2.m2.1.1" xref="S3.T1.4.4.4.2.m2.1.1.cmml">𝕋</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.2.m2.1b"><ci id="S3.T1.4.4.4.2.m2.1.1.cmml" xref="S3.T1.4.4.4.2.m2.1.1">𝕋</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.2.m2.1c">\mathbb{T}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.2.m2.1d">blackboard_T</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.3" style="padding-left:11.0pt;padding-right:11.0pt;">2 / 2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.4" style="padding-left:11.0pt;padding-right:11.0pt;">3.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.5" style="padding-left:11.0pt;padding-right:11.0pt;">43.63</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.6.6.2" style="padding-left:11.0pt;padding-right:11.0pt;">K - <math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mi id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><ci id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">blackboard_C</annotation></semantics></math>, V - <math alttext="\mathbb{T}" class="ltx_Math" display="inline" id="S3.T1.6.6.6.2.m2.1"><semantics id="S3.T1.6.6.6.2.m2.1a"><mi id="S3.T1.6.6.6.2.m2.1.1" xref="S3.T1.6.6.6.2.m2.1.1.cmml">𝕋</mi><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.2.m2.1b"><ci id="S3.T1.6.6.6.2.m2.1.1.cmml" xref="S3.T1.6.6.6.2.m2.1.1">𝕋</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.2.m2.1c">\mathbb{T}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.2.m2.1d">blackboard_T</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.3" style="padding-left:11.0pt;padding-right:11.0pt;">1.5 / 1.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.6.4.1">2.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.6.5" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.6.5.1">47.08</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.8.2" style="padding-left:11.0pt;padding-right:11.0pt;">K - <math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.1.m1.1a"><mi id="S3.T1.7.7.7.1.m1.1.1" xref="S3.T1.7.7.7.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><ci id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">blackboard_C</annotation></semantics></math>, V - <math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S3.T1.8.8.8.2.m2.1"><semantics id="S3.T1.8.8.8.2.m2.1a"><mi id="S3.T1.8.8.8.2.m2.1.1" xref="S3.T1.8.8.8.2.m2.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.2.m2.1b"><ci id="S3.T1.8.8.8.2.m2.1.1.cmml" xref="S3.T1.8.8.8.2.m2.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.2.m2.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.2.m2.1d">blackboard_C</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.3" style="padding-left:11.0pt;padding-right:11.0pt;">1.5 / 1.58</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.4" style="padding-left:11.0pt;padding-right:11.0pt;">2.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.5" style="padding-left:11.0pt;padding-right:11.0pt;">13.76</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.11" style="background-color:#E6FFFF;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.8.8.11.1" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.11.1.1" style="background-color:#E6FFFF;">Variance</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.11.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.11.2.1" style="background-color:#E6FFFF;">1.5 / 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.11.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.11.3.1" style="background-color:#E6FFFF;">2.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.11.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.11.4.1" style="background-color:#E6FFFF;">45.11</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.12" style="background-color:#E6FFFF;">
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.12.1" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.12.1.1" style="background-color:#E6FFFF;">Range</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.12.2.1" style="background-color:#E6FFFF;">1.5 / 2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.12.3.1" style="background-color:#E6FFFF;">2.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.12.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.8.12.4.1" style="background-color:#E6FFFF;">48.28</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.13" style="background-color:#E6FFFF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.8.8.13.1" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.13.1.1" style="background-color:#E6FFFF;">Outlier</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.13.2" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.13.2.1" style="background-color:#E6FFFF;">1.5 / 2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.13.3" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.13.3.1" style="background-color:#E6FFFF;">2.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.8.13.4" style="padding-left:11.0pt;padding-right:11.0pt;"><span class="ltx_text" id="S3.T1.8.8.13.4.1" style="background-color:#E6FFFF;">32.87</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of an experiment evaluating the effects of different quantization methods on the key-value (KV) cache of the LLaVA-OV-7B video large language model.  The experiment uses group-wise quantization with a group size of 32.  The table compares several quantization strategies: 16-bit (baseline), 2-bit per-channel (K-C, V-C), 2-bit per-token (K-C, V-T), and 1.5/1.58-bit mixed-precision.  The 1.58-bit quantization uses the range {-1, 0, 1}.  Three metrics—Range (max-min), Variance, and Outlier—were used to select channels for mixed-precision quantization of the key cache.  The table shows the performance impact (measured by VideoDC and MovieChat scores) of each strategy.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of simulated KV cache group-wise quantization under various configurations on LLaVA-OV-7B. The group size is fixed at 32. ℂℂ\mathbb{C}blackboard_C denotes per-channel quantization, while 𝕋𝕋\mathbb{T}blackboard_T represents per-token quantization. The quantization range for 1.58-bit quantization is {−1,0,1}101\{-1,0,1\}{ - 1 , 0 , 1 }. Range, Variance, and Outlier are the metrics employed for channel selection in the mixed-precision quantization of the key cache, where Range is defined as m⁢a⁢x−m⁢i⁢n𝑚𝑎𝑥𝑚𝑖𝑛max-minitalic_m italic_a italic_x - italic_m italic_i italic_n.
> </details>





### In-depth insights


#### VidKV: 1.x-bit
**VidKV: 1.x-bit** presents a novel approach to KV cache quantization for video LLMs, targeting lower bit precisions (below 2 bits) to address memory bottlenecks. It introduces a **mixed-precision quantization** scheme, adapting bit allocation based on channel characteristics, using **2-bit for anomalous channels and 1-bit (with FFT) for normal channels** in the key cache. For the value cache, a **1.58-bit quantization** is employed, with an option for semantic token protection. VidKV explores how the KV caches should also be quantized in the per-channel form. Experiments show the effectiveness of this method in compressing KV caches while mostly retaining performance which leads to the conclusion that we can quantize the KV caches even lower than what we currently have.

#### VideoLLM Quant
VideoLLM Quantization is crucial for efficient video processing. **KV cache quantization** is a primary method to reduce memory usage. Initial findings show **2-bit quantization** is almost lossless due to video token redundancy, prompting exploration of lower-bit quantization. Techniques like **mixed-precision quantization** for keys, using channel dimension analysis, and **1.58-bit quantization** for values, with selective preservation of salient tokens, are key areas. Unlike LLMs, VideoLLMs benefit more from **per-channel quantization** for value caches, as opposed to per-token. Future advancements might include strategies to handle challenges in **1-bit quantization**, like managing quantization errors caused by drastically fluctuating channels. The study shows the potential for more efficient VideoLLMs through quantization.

#### Channel-wise KV
**Channel-wise KV quantization** presents a paradigm shift from per-token methods, potentially better aligning with the inherent structure of video data in VideoLLMs. The key insight is that, rather than each token being independently quantized, channels (representing feature dimensions) are quantized together. This is particularly relevant when considering the spatial and temporal redundancy present in video, where certain feature dimensions may exhibit similar characteristics across multiple tokens within a channel. **Channel-wise quantization allows for efficient compression** while retaining crucial information. The success of channel-wise over per-token highlights the importance of adapting quantization strategies to the specific data modality. Furthermore, It opens the door for exploring other adaptive quantization techniques, such as dynamic bit allocation across channels.

#### FFT Key Enhance
Enhancing the key component using FFT (Fast Fourier Transform) could be a novel method to optimize KV cache quantization. **FFT can transform data into frequency domain**, potentially revealing patterns not obvious in the time domain. This transformation might **stabilize data distribution**, mitigating the impact of outliers and improving quantization accuracy. Further, **quantization errors can be minimized**, leading to a more compact and efficient representation of the key cache. **FFT-based enhancement can be combined with mixed-precision strategies**, allocating more bits to critical frequency components and fewer bits to less significant ones. This approach balances compression and performance. To leverage on **FFT's power in noise reduction**, the key part is enhanced for more refined quantization.

#### Future: 1-bit KV
Exploring the future of 1-bit KV cache quantization presents significant challenges and opportunities. While the current research demonstrates promising results with 1.5-bit and 1.58-bit quantization, achieving stable and effective 1-bit quantization remains elusive. **The primary hurdle lies in the substantial information loss associated with such aggressive compression.** Mitigating this loss requires innovative approaches, such as highly selective token preservation strategies, more sophisticated quantization schemes that adapt to the unique characteristics of different KV cache elements, or leveraging external knowledge to compensate for the reduced precision. **Addressing this limitation is crucial to unlock the full potential of extremely low-bit quantization** for significantly reducing memory footprint and accelerating inference in large models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16257/x2.png)

> 🔼 This figure displays the magnitude of the value cache in layer 5 of the LLaVA-OV-7B model.  It shows the distribution of values across both the channel and token dimensions.  The heatmap visualization allows one to understand the variation in magnitude of the values across different channels and tokens, highlighting potential areas of redundancy or sparsity that could be leveraged for quantization.
> <details>
> <summary>read the caption</summary>
> (b) Layer 5 Value
> </details>



![](https://arxiv.org/html/2503.16257/x3.png)

> 🔼 This figure displays the magnitude of the key cache in layer 24 of the Qwen2.5-VL-7B model.  It is a 3D heatmap showing the channel dimension on the x-axis, the token dimension on the y-axis, and the magnitude of the key values on the z-axis.  The heatmap visualizes the distribution of values within the key cache, highlighting variations across channels and tokens.  This visualization helps to understand the distribution characteristics of the key cache, which is crucial for designing effective quantization strategies.
> <details>
> <summary>read the caption</summary>
> (c) Layer 24 Key
> </details>



![](https://arxiv.org/html/2503.16257/x4.png)

> 🔼 The figure displays a 3D heatmap visualizing the magnitude of the value cache in layer 24 of a video large language model (VideoLLM). The heatmap shows the magnitude of values across different channels (vertical axis) and tokens (horizontal axis).  The color intensity represents the magnitude, with warmer colors indicating larger magnitudes. This visualization helps to understand the distribution of values within the KV cache, which is crucial for effective quantization and compression techniques. The specific model shown could be LLaVA-OV-7B or Qwen2.5-VL-7B, depending on which sub-figure is referenced in the paper.
> <details>
> <summary>read the caption</summary>
> (d) Layer 24 Value
> </details>



![](https://arxiv.org/html/2503.16257/x5.png)

> 🔼 This figure displays the magnitude of the value cache in layer 5 of the Qwen2.5-VL-7B model. The heatmap shows the distribution of values across channels and tokens, visualizing the variability and potential for quantization.  Each channel is represented by a line on the y-axis and each token is along the x-axis. The color scale indicates the magnitude of the values, with warmer colors representing larger magnitudes and cooler colors representing smaller magnitudes.
> <details>
> <summary>read the caption</summary>
> (f) Layer 5 Value
> </details>



![](https://arxiv.org/html/2503.16257/x6.png)

> 🔼 This figure displays the magnitude of the key cache in layer 22 of the Qwen2.5-VL-7B model.  The heatmap shows the values across the channel dimension (y-axis) and token dimension (x-axis). The color intensity represents the magnitude, with warmer colors (red) indicating larger magnitudes and cooler colors (blue) indicating smaller magnitudes. This visualization helps to understand the distribution of values within the key cache, which is important for designing effective quantization strategies.
> <details>
> <summary>read the caption</summary>
> (g) Layer 22 Key
> </details>



![](https://arxiv.org/html/2503.16257/x7.png)

> 🔼 This figure displays the magnitude of the value cache in layer 22 of the Qwen2.5-VL-7B model. It shows the distribution of values across channels and tokens. The visualization helps to understand the distribution characteristics of the value cache, especially in terms of magnitude variations, which are crucial for designing effective quantization strategies. High magnitude variations across channels may indicate a greater challenge for quantization methods. This figure is part of the analysis of KV cache distributions in video LLMs, which informs the proposed mixed-precision quantization scheme in the VidKV method.
> <details>
> <summary>read the caption</summary>
> (h) Layer 22 Value
> </details>



![](https://arxiv.org/html/2503.16257/x8.png)

> 🔼 Figure 1 visualizes the distribution patterns of key-value (KV) cache data within the LLaVA-OV-7B and Qwen2.5-VL-7B video large language models (VideoLLMs).  The heatmaps illustrate the magnitude of values across both the channel and token dimensions for different layers and heads within each model.  Specifically, the visualization reveals that certain channels in the key cache exhibit exceptionally high magnitudes, presenting a challenge for quantization.  Other channels display irregular variations across the channel dimension, adding further complexity to the quantization process. Conversely, the value cache demonstrates variations primarily in the range of values across channels.  This observation of different distribution patterns in the key and value caches informs the design choices within the VidKV quantization method.
> <details>
> <summary>read the caption</summary>
> Figure 1: Magnitude of KV cache for LLaVA-OV-7B and Qwen2.5-VL-7B. (1) In the key cache, certain channels exhibit significantly large magnitudes, while others display abnormal variations across the channel dimension, making them challenging to quantize. (2) In the value cache, channels exhibit variations in range.
> </details>



![](https://arxiv.org/html/2503.16257/x9.png)

> 🔼 This figure displays the magnitude of the key cache in layer 5 of the Qwen2.5-VL-7B model.  The heatmap shows the values across the channel dimension (y-axis) and token dimension (x-axis).  Different colors represent different magnitudes of the values, with warmer colors (red) representing higher magnitudes and cooler colors (blue) representing lower magnitudes. The visualization helps in understanding the distribution of values within the key cache, which is important for designing efficient quantization strategies.  The visualization highlights which channels are more challenging to quantize due to their larger values or higher variability across tokens.
> <details>
> <summary>read the caption</summary>
> (e) Layer 5 Key
> </details>



![](https://arxiv.org/html/2503.16257/x12.png)

> 🔼 This figure illustrates the VidKV method, a 1.x-bit mixed-precision quantization technique for key-value (KV) caches in video large language models (VideoLLMs). VidKV uses a mixed-precision approach: 1.x-bit for the key cache and 1.58-bit for the value cache.  Importantly, for the key cache, mixed-precision quantization is applied along the channel dimension, while for the value cache, it is applied along the token dimension.  To improve performance, VidKV incorporates important token selection in the value cache, protecting crucial visual tokens from aggressive quantization by using higher bit precision. This approach contrasts with previous methods like KIVI [25], which quantized KV caches in a per-token fashion.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our proposed method VidKV. We implement 1.x-bit mixed-precision quantization for the key cache and 1.58-bit quantization for the value cache. In addition, as shown in the figure, to balance precision and model performance, we protect important visual tokens in the value cache. It is noteworthy that we perform mixed-precision quantization on the key cache along the channel dimension, whereas on the value cache, we apply mixed-precision quantization along the token dimension. All key-value caches are quantized in a per-channel fashion, different from prior KV cache quantization methods for LLMs such as KIVI [25].
> </details>



![](https://arxiv.org/html/2503.16257/extracted/6296208/ICCV2025-Author-Kit/figures/line_plot.png)

> 🔼 Figure 3 illustrates the impact of Fast Fourier Transform (FFT) on the distribution of elements within the key cache of a video large language model.  The left panel shows the distribution in the time domain, demonstrating sharp fluctuations and significant variations across channels. These variations make it challenging to effectively quantize the data using lower bit representations. In contrast, the right panel shows the distribution after applying FFT, which transforms the data into the frequency domain.  The resulting distribution is significantly smoother, exhibiting less variability.  This smoother frequency-domain representation leads to a reduction in quantization error when using techniques like low-bit quantization.  The FFT-based approach enhances quantization accuracy by mitigating the impact of outliers and improving the stability of the elements across the channels.
> <details>
> <summary>read the caption</summary>
> Figure 3: Analysis of the normal channel in the key cache and its distribution following FFT transformation reveals that the frequency-domain distribution is smoother after using FFT transformation, resulting in reduced quantization error.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F3.2">
<tr class="ltx_tr" id="S4.F3.2.2">
<td class="ltx_td ltx_align_center" id="S4.F3.2.2.2">
<span class="ltx_text" id="S4.F3.2.2.2.3" style="font-size:70%;">
</span><span class="ltx_text" id="S4.F3.2.2.2.4" style="font-size:70%;position:relative; bottom:0.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F3.2.2.2.4.1" style="width:2.3pt;height:0pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S4.F3.2.2.2.4.1.1"><span class="ltx_text" id="S4.F3.2.2.2.4.1.1.1"></span></span>
</span></span></span><span class="ltx_text" id="S4.F3.2.2.2.5" style="font-size:70%;">
</span><span class="ltx_text" id="S4.F3.2.2.2.2" style="font-size:70%;position:relative; bottom:-251.1pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.F3.2.2.2.2.2.2.2" style="width:461.8pt;height:251.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S4.F3.2.2.2.2.2.2.2.2"><span class="ltx_text" id="S4.F3.2.2.2.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.F3.2.2.2.2.2.2.2.2.2.2">
<span class="ltx_tr" id="S4.F3.2.2.2.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_align_center" id="S4.F3.1.1.1.1.1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="437" id="S4.F3.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="x10.png" width="407"/></span>
<span class="ltx_td ltx_align_center" id="S4.F3.2.2.2.2.2.2.2.2.2.2.2.2"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="437" id="S4.F3.2.2.2.2.2.2.2.2.2.2.2.2.g1" src="x11.png" width="407"/></span>
<span class="ltx_td" id="S4.F3.2.2.2.2.2.2.2.2.2.2.2.3"></span></span>
<span class="ltx_tr" id="S4.F3.2.2.2.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_align_center" id="S4.F3.2.2.2.2.2.2.2.2.2.2.3.1">
<span class="ltx_text ltx_font_bold" id="S4.F3.2.2.2.2.2.2.2.2.2.2.3.1.1">Quantization Error 2.39</span></span>
<span class="ltx_td ltx_align_center" id="S4.F3.2.2.2.2.2.2.2.2.2.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.F3.2.2.2.2.2.2.2.2.2.2.3.2.1">Quantization Error 1.14</span></span>
<span class="ltx_td" id="S4.F3.2.2.2.2.2.2.2.2.2.2.3.3"></span></span>
</span></span></span>
</span></span></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of different quantization methods and bit depths applied to Key-Value (KV) caches in two video large language models: LLaVA-OV-7B and Qwen2.5-VL-7B.  The performance is evaluated across several benchmarks, including VideoDC, GPT Score, TempCompass, and VideoChat-GPT (with sub-tasks CI, DO, CU, TU, and CO representing Correctness of Information, Detail Orientation, Contextual Understanding, Temporal Understanding, and Consistency, respectively). The results show the impact of different quantization techniques (Baseline, KIVI, and VidKV) and bit depths (16-bit, 2-bit, 1.5-bit, 1.58-bit, 1.66-bit) on model performance.  Higher scores indicate better performance.  The 1.66-bit configuration signifies a mixed precision approach where 20% of the tokens are quantized to 2-bits, and 80% are quantized to 1.58-bits.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of different methods and quantization settings. For all values, higher is better. The best result of each metric in each model is in bold, and the second best is underlined. VideoChat-GPT comprises five subtasks: CI stands for correctness of information, DO stands for detail orientation, CU stands for contextual understanding, TU stands for temporal understanding, and CO stands for consistency. 1.66-bit means 20% tokens for 2-bit and 80% tokens for 1.58-bit
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.11.11">
<tr class="ltx_tr" id="S4.T2.11.11.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.11.11.12.1" rowspan="2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.11.11.12.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.2.1">Settings</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.11.11.12.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.3.1">VideoDC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.11.11.12.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.4.1">TempCompass</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S4.T2.11.11.12.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.5.1">VideoChat-GPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.11.11.12.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.6.1">Moviechat</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.11.11.12.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.12.7.1">WorldQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.13">
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.13.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.1.1">K-(Bit)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.11.11.13.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.2.1">V-(Bit)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.3.1">GPT Sco.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.13.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.4.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.5.1">CI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.6.1">DO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.7.1">CU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.8.1">TU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.9.1">CO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.13.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.10.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.11.1">GPT Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.12.1">Acc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.13.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.13.13.1">GPT Sco.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T2.11.11.14.1" style="padding-left:8.0pt;padding-right:8.0pt;">LLaVA-OV-7B</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.15" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.15.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.1.1" style="background-color:#E6E6E6;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.11.11.15.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.2.1" style="background-color:#E6E6E6;">16-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.3.1" style="background-color:#E6E6E6;">3.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.15.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.4.1" style="background-color:#E6E6E6;">49.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.5.1" style="background-color:#E6E6E6;">3.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.6.1" style="background-color:#E6E6E6;">2.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.7.1" style="background-color:#E6E6E6;">3.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.8.1" style="background-color:#E6E6E6;">2.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.9.1" style="background-color:#E6E6E6;">3.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.15.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.10.1" style="background-color:#E6E6E6;">3.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.11.1" style="background-color:#E6E6E6;">3.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.12.1" style="background-color:#E6E6E6;">47.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.15.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.15.13.1" style="background-color:#E6E6E6;">0.328</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.2.3" style="padding-left:8.0pt;padding-right:8.0pt;">KIVI</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.2.2.2.2" style="padding-left:8.0pt;padding-right:8.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{T}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m2.1"><semantics id="S4.T2.2.2.2.2.m2.1a"><mi id="S4.T2.2.2.2.2.m2.1.1" xref="S4.T2.2.2.2.2.m2.1.1.cmml">𝕋</mi><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m2.1b"><ci id="S4.T2.2.2.2.2.m2.1.1.cmml" xref="S4.T2.2.2.2.2.m2.1.1">𝕋</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m2.1c">\mathbb{T}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m2.1d">blackboard_T</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.2.4.1">3.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.2.5" style="padding-left:8.0pt;padding-right:8.0pt;">49.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.2.6.1">3.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.7.1">2.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.2.8.1">3.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.9.1">2.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.10" style="padding-left:8.0pt;padding-right:8.0pt;">3.35</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.2.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.2.11.1">3.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.12" style="padding-left:8.0pt;padding-right:8.0pt;">3.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.13" style="padding-left:8.0pt;padding-right:8.0pt;">46.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.14" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.2.2.14.1">0.326</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.3" style="padding-left:8.0pt;padding-right:8.0pt;">VidKV</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T2.4.4.4.2" style="padding-left:8.0pt;padding-right:8.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mi id="S4.T2.3.3.3.1.m1.1.1" xref="S4.T2.3.3.3.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S4.T2.4.4.4.2.m2.1"><semantics id="S4.T2.4.4.4.2.m2.1a"><mi id="S4.T2.4.4.4.2.m2.1.1" xref="S4.T2.4.4.4.2.m2.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.2.m2.1b"><ci id="S4.T2.4.4.4.2.m2.1.1.cmml" xref="S4.T2.4.4.4.2.m2.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.2.m2.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.2.m2.1d">blackboard_C</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1">3.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.5.1">50.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.4.4.6.1">3.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.7.1">2.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.8.1">3.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.9.1">2.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.10.1">3.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.11.1">3.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.12" style="padding-left:8.0pt;padding-right:8.0pt;">3.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.13" style="padding-left:8.0pt;padding-right:8.0pt;">47.68</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.14" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.14.1">0.327</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.16">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.16.1" rowspan="3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.16.1.1">VidKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.2" style="padding-left:8.0pt;padding-right:8.0pt;">1.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.16.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.4" style="padding-left:8.0pt;padding-right:8.0pt;">2.95</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.16.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.16.5.1">50.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.16.6.1">3.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.16.7.1">2.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.8" style="padding-left:8.0pt;padding-right:8.0pt;">3.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.16.9.1">2.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.16.10.1">3.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.16.11" style="padding-left:8.0pt;padding-right:8.0pt;">3.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.16.12.1">3.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.16.13.1">48.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.16.14" style="padding-left:8.0pt;padding-right:8.0pt;">0.322</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.17">
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.1" style="padding-left:8.0pt;padding-right:8.0pt;">1.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.17.2" style="padding-left:8.0pt;padding-right:8.0pt;">1.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.17.4" style="padding-left:8.0pt;padding-right:8.0pt;">47.35</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.6" style="padding-left:8.0pt;padding-right:8.0pt;">2.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.7" style="padding-left:8.0pt;padding-right:8.0pt;">3.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.8" style="padding-left:8.0pt;padding-right:8.0pt;">2.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.9" style="padding-left:8.0pt;padding-right:8.0pt;">3.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.17.10" style="padding-left:8.0pt;padding-right:8.0pt;">3.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.17.11.1">3.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.12" style="padding-left:8.0pt;padding-right:8.0pt;">47.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.17.13" style="padding-left:8.0pt;padding-right:8.0pt;">0.313</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.18">
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.1" style="padding-left:8.0pt;padding-right:8.0pt;">1.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.18.2" style="padding-left:8.0pt;padding-right:8.0pt;">1.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.18.4" style="padding-left:8.0pt;padding-right:8.0pt;">45.21</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.6" style="padding-left:8.0pt;padding-right:8.0pt;">2.66</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.7" style="padding-left:8.0pt;padding-right:8.0pt;">3.59</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.8" style="padding-left:8.0pt;padding-right:8.0pt;">2.47</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.9" style="padding-left:8.0pt;padding-right:8.0pt;">3.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.18.10" style="padding-left:8.0pt;padding-right:8.0pt;">3.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.11" style="padding-left:8.0pt;padding-right:8.0pt;">3.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.12" style="padding-left:8.0pt;padding-right:8.0pt;">47.21</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.18.13" style="padding-left:8.0pt;padding-right:8.0pt;">0.309</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.5.5.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.1.1" style="background-color:#FFFFE6;">VidKV (<math alttext="p=0.2" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.1.m1.1"><semantics id="S4.T2.5.5.5.1.1.m1.1a"><mrow id="S4.T2.5.5.5.1.1.m1.1.1" xref="S4.T2.5.5.5.1.1.m1.1.1.cmml"><mi id="S4.T2.5.5.5.1.1.m1.1.1.2" mathbackground="#FFFFE6" xref="S4.T2.5.5.5.1.1.m1.1.1.2.cmml">p</mi><mo id="S4.T2.5.5.5.1.1.m1.1.1.1" mathbackground="#FFFFE6" xref="S4.T2.5.5.5.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.5.5.5.1.1.m1.1.1.3" mathbackground="#FFFFE6" xref="S4.T2.5.5.5.1.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.1.m1.1b"><apply id="S4.T2.5.5.5.1.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.1.m1.1.1"><eq id="S4.T2.5.5.5.1.1.m1.1.1.1.cmml" xref="S4.T2.5.5.5.1.1.m1.1.1.1"></eq><ci id="S4.T2.5.5.5.1.1.m1.1.1.2.cmml" xref="S4.T2.5.5.5.1.1.m1.1.1.2">𝑝</ci><cn id="S4.T2.5.5.5.1.1.m1.1.1.3.cmml" type="float" xref="S4.T2.5.5.5.1.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.1.m1.1c">p=0.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.1.m1.1d">italic_p = 0.2</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.2.1" style="background-color:#FFFFE6;">1.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.5.5.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.3.1" style="background-color:#FFFFE6;">1.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.4.1" style="background-color:#FFFFE6;">2.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.5.5.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.5.1" style="background-color:#FFFFE6;">47.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.6.1" style="background-color:#FFFFE6;">3.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.7.1" style="background-color:#FFFFE6;">2.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.8.1" style="background-color:#FFFFE6;">3.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.9.1" style="background-color:#FFFFE6;">2.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.10.1" style="background-color:#FFFFE6;">3.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.5.5.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.11.1" style="background-color:#FFFFE6;">3.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.5.5.12.1" style="background-color:#FFFFE6;">3.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.13.1" style="background-color:#FFFFE6;">47.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.14" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.5.5.5.14.1" style="background-color:#FFFFE6;">0.319</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.1.1" style="background-color:#FFFFE6;">VidKV (<math alttext="p=0.2" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.1.m1.1"><semantics id="S4.T2.6.6.6.1.1.m1.1a"><mrow id="S4.T2.6.6.6.1.1.m1.1.1" xref="S4.T2.6.6.6.1.1.m1.1.1.cmml"><mi id="S4.T2.6.6.6.1.1.m1.1.1.2" mathbackground="#FFFFE6" xref="S4.T2.6.6.6.1.1.m1.1.1.2.cmml">p</mi><mo id="S4.T2.6.6.6.1.1.m1.1.1.1" mathbackground="#FFFFE6" xref="S4.T2.6.6.6.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.6.6.6.1.1.m1.1.1.3" mathbackground="#FFFFE6" xref="S4.T2.6.6.6.1.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.1.m1.1b"><apply id="S4.T2.6.6.6.1.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.1.m1.1.1"><eq id="S4.T2.6.6.6.1.1.m1.1.1.1.cmml" xref="S4.T2.6.6.6.1.1.m1.1.1.1"></eq><ci id="S4.T2.6.6.6.1.1.m1.1.1.2.cmml" xref="S4.T2.6.6.6.1.1.m1.1.1.2">𝑝</ci><cn id="S4.T2.6.6.6.1.1.m1.1.1.3.cmml" type="float" xref="S4.T2.6.6.6.1.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.1.m1.1c">p=0.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.1.m1.1d">italic_p = 0.2</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.2.1" style="background-color:#FFFFE6;">1.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.3.1" style="background-color:#FFFFE6;">1.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.4.1" style="background-color:#FFFFE6;">2.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.5.1" style="background-color:#FFFFE6;">48.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.6.1" style="background-color:#FFFFE6;">3.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.7.1" style="background-color:#FFFFE6;">2.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.8.1" style="background-color:#FFFFE6;">3.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.9.1" style="background-color:#FFFFE6;">2.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.10.1" style="background-color:#FFFFE6;">3.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.11.1" style="background-color:#FFFFE6;">3.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.12.1" style="background-color:#FFFFE6;">3.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.6.6.13.1" style="background-color:#FFFFE6;">47.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.14" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.14.1" style="background-color:#FFFFE6;">0.312</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T2.11.11.19.1" style="padding-left:8.0pt;padding-right:8.0pt;">Qwen2.5-VL-7B</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.20" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.20.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.1.1" style="background-color:#E6E6E6;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.11.11.20.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.2.1" style="background-color:#E6E6E6;">16-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.3.1" style="background-color:#E6E6E6;">2.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.20.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.4.1" style="background-color:#E6E6E6;">56.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.5.1" style="background-color:#E6E6E6;">3.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.6.1" style="background-color:#E6E6E6;">2.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.7.1" style="background-color:#E6E6E6;">3.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.8.1" style="background-color:#E6E6E6;">2.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.9.1" style="background-color:#E6E6E6;">3.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.20.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.10.1" style="background-color:#E6E6E6;">3.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.11.1" style="background-color:#E6E6E6;">2.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.12.1" style="background-color:#E6E6E6;">44.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.20.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.20.13.1" style="background-color:#E6E6E6;">0.334</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.8.3" style="padding-left:8.0pt;padding-right:8.0pt;">KIVI</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.8.8.8.2" style="padding-left:8.0pt;padding-right:8.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S4.T2.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.1.m1.1a"><mi id="S4.T2.7.7.7.1.m1.1.1" xref="S4.T2.7.7.7.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.1.m1.1b"><ci id="S4.T2.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{T}" class="ltx_Math" display="inline" id="S4.T2.8.8.8.2.m2.1"><semantics id="S4.T2.8.8.8.2.m2.1a"><mi id="S4.T2.8.8.8.2.m2.1.1" xref="S4.T2.8.8.8.2.m2.1.1.cmml">𝕋</mi><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.2.m2.1b"><ci id="S4.T2.8.8.8.2.m2.1.1.cmml" xref="S4.T2.8.8.8.2.m2.1.1">𝕋</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.2.m2.1c">\mathbb{T}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.2.m2.1d">blackboard_T</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.8.4.1">2.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.8.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.5.1">55.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.6" style="padding-left:8.0pt;padding-right:8.0pt;">3.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.7.1">2.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.8" style="padding-left:8.0pt;padding-right:8.0pt;">3.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.8.9.1">2.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.10" style="padding-left:8.0pt;padding-right:8.0pt;">3.32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.8.8.8.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.8.11.1">3.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.12" style="padding-left:8.0pt;padding-right:8.0pt;">2.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.13" style="padding-left:8.0pt;padding-right:8.0pt;">43.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.14" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.8.8.8.14.1">0.330</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.3" style="padding-left:8.0pt;padding-right:8.0pt;">VidKV</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T2.10.10.10.2" style="padding-left:8.0pt;padding-right:8.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S4.T2.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.1.m1.1a"><mi id="S4.T2.9.9.9.1.m1.1.1" xref="S4.T2.9.9.9.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.1.m1.1b"><ci id="S4.T2.9.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.9.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S4.T2.10.10.10.2.m2.1"><semantics id="S4.T2.10.10.10.2.m2.1a"><mi id="S4.T2.10.10.10.2.m2.1.1" xref="S4.T2.10.10.10.2.m2.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.2.m2.1b"><ci id="S4.T2.10.10.10.2.m2.1.1.cmml" xref="S4.T2.10.10.10.2.m2.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.2.m2.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.2.m2.1d">blackboard_C</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.4.1">2.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.5.1">55.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.6.1">3.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.10.10.10.7.1">2.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.8.1">3.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.9.1">2.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.10.1">3.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.10.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.11.1">3.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.12.1">2.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.13.1">45.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.14" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.14.1">0.332</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.21">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.21.1" rowspan="4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.21.1.1">VidKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.2" style="padding-left:8.0pt;padding-right:8.0pt;">1.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.21.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.4" style="padding-left:8.0pt;padding-right:8.0pt;">2.88</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.21.5" style="padding-left:8.0pt;padding-right:8.0pt;">54.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.21.6.1">3.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.7" style="padding-left:8.0pt;padding-right:8.0pt;">2.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.21.8.1">3.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.9" style="padding-left:8.0pt;padding-right:8.0pt;">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.21.10.1">3.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.21.11" style="padding-left:8.0pt;padding-right:8.0pt;">3.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.21.12.1">2.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.13" style="padding-left:8.0pt;padding-right:8.0pt;">44.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.21.14" style="padding-left:8.0pt;padding-right:8.0pt;">0.311</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.22">
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.1" style="padding-left:8.0pt;padding-right:8.0pt;">1.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.22.2" style="padding-left:8.0pt;padding-right:8.0pt;">2.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.22.4" style="padding-left:8.0pt;padding-right:8.0pt;">50.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.6" style="padding-left:8.0pt;padding-right:8.0pt;">2.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.7" style="padding-left:8.0pt;padding-right:8.0pt;">3.43</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.8" style="padding-left:8.0pt;padding-right:8.0pt;">2.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.9" style="padding-left:8.0pt;padding-right:8.0pt;">3.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.22.10" style="padding-left:8.0pt;padding-right:8.0pt;">3.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.11" style="padding-left:8.0pt;padding-right:8.0pt;">2.90</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.22.12.1">44.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.22.13" style="padding-left:8.0pt;padding-right:8.0pt;">0.286</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.23">
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.1" style="padding-left:8.0pt;padding-right:8.0pt;">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.23.2" style="padding-left:8.0pt;padding-right:8.0pt;">1.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.3" style="padding-left:8.0pt;padding-right:8.0pt;">3.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.23.4" style="padding-left:8.0pt;padding-right:8.0pt;">52.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.15</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.6" style="padding-left:8.0pt;padding-right:8.0pt;">2.81</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.7" style="padding-left:8.0pt;padding-right:8.0pt;">3.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.8" style="padding-left:8.0pt;padding-right:8.0pt;">2.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.9" style="padding-left:8.0pt;padding-right:8.0pt;">3.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.23.10" style="padding-left:8.0pt;padding-right:8.0pt;">3.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.23.11.1">2.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.12" style="padding-left:8.0pt;padding-right:8.0pt;">42.99</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.23.13" style="padding-left:8.0pt;padding-right:8.0pt;">0.309</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.24">
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.1" style="padding-left:8.0pt;padding-right:8.0pt;">1.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.24.2" style="padding-left:8.0pt;padding-right:8.0pt;">1.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.3" style="padding-left:8.0pt;padding-right:8.0pt;">2.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.24.4" style="padding-left:8.0pt;padding-right:8.0pt;">49.10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.5" style="padding-left:8.0pt;padding-right:8.0pt;">3.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.6" style="padding-left:8.0pt;padding-right:8.0pt;">2.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.7" style="padding-left:8.0pt;padding-right:8.0pt;">3.41</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.8" style="padding-left:8.0pt;padding-right:8.0pt;">2.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.9" style="padding-left:8.0pt;padding-right:8.0pt;">3.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.11.24.10" style="padding-left:8.0pt;padding-right:8.0pt;">3.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.11.11.24.11.1">2.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.12" style="padding-left:8.0pt;padding-right:8.0pt;">43.36</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.24.13" style="padding-left:8.0pt;padding-right:8.0pt;">0.310</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.11" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.11.11.11.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.1.1" style="background-color:#FFFFE6;">VidKV (<math alttext="p=0.2" class="ltx_Math" display="inline" id="S4.T2.11.11.11.1.1.m1.1"><semantics id="S4.T2.11.11.11.1.1.m1.1a"><mrow id="S4.T2.11.11.11.1.1.m1.1.1" xref="S4.T2.11.11.11.1.1.m1.1.1.cmml"><mi id="S4.T2.11.11.11.1.1.m1.1.1.2" mathbackground="#FFFFE6" xref="S4.T2.11.11.11.1.1.m1.1.1.2.cmml">p</mi><mo id="S4.T2.11.11.11.1.1.m1.1.1.1" mathbackground="#FFFFE6" xref="S4.T2.11.11.11.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.11.11.11.1.1.m1.1.1.3" mathbackground="#FFFFE6" xref="S4.T2.11.11.11.1.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.1.1.m1.1b"><apply id="S4.T2.11.11.11.1.1.m1.1.1.cmml" xref="S4.T2.11.11.11.1.1.m1.1.1"><eq id="S4.T2.11.11.11.1.1.m1.1.1.1.cmml" xref="S4.T2.11.11.11.1.1.m1.1.1.1"></eq><ci id="S4.T2.11.11.11.1.1.m1.1.1.2.cmml" xref="S4.T2.11.11.11.1.1.m1.1.1.2">𝑝</ci><cn id="S4.T2.11.11.11.1.1.m1.1.1.3.cmml" type="float" xref="S4.T2.11.11.11.1.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.1.1.m1.1c">p=0.2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.1.1.m1.1d">italic_p = 0.2</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.2.1" style="background-color:#FFFFE6;">1.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.11.11.11.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.3.1" style="background-color:#FFFFE6;">1.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.4.1" style="background-color:#FFFFE6;">2.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.11.11.11.5" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.5.1" style="background-color:#FFFFE6;">49.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.6" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.6.1" style="background-color:#FFFFE6;">3.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.7" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.7.1" style="background-color:#FFFFE6;">2.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.8" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.8.1" style="background-color:#FFFFE6;">3.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.9" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.9.1" style="background-color:#FFFFE6;">2.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.10" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.10.1" style="background-color:#FFFFE6;">3.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.11.11.11.11" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.11.1" style="background-color:#FFFFE6;">3.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.12" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.12.1" style="background-color:#FFFFE6;">2.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.13" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.13.1" style="background-color:#FFFFE6;">44.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.11.11.11.14" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T2.11.11.11.14.1" style="background-color:#FFFFE6;">0.321</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed comparison of various quantization techniques applied to the VATEX benchmark, focusing on the impact of different bit-depths for key and value caches within the context of Video Large Language Models (VideoLLMs).  The table highlights the performance across multiple metrics (VATEX, FFT, BLEU-4, METEOR, ROUGE-L, and CIDEr), comparing the baseline 16-bit precision against several quantization strategies.  These strategies include 2-bit quantization (KIVI) as well as the proposed VidKV method with mixed-precision quantization (1.5-bit and 1.58-bit).  The results demonstrate the effectiveness of VidKV in maintaining performance while significantly reducing the bit-depth and memory requirements of the KV cache. Notably, the table also illustrates the exclusive application of Fast Fourier Transform (FFT) in conjunction with 1-bit quantization within the VidKV's mixed-precision approach.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of different quantization settings on VATEX benchmarks. For all values, higher is better. The best result of each metric in each model is in bold, and the second best is underlined. FFT is exclusively applied alongside 1-bit quantization within mixed-precision quantization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.10.10">
<tr class="ltx_tr" id="S5.T3.10.10.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.10.10.11.1" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.10.10.11.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T3.10.10.11.2" style="padding-left:7.0pt;padding-right:7.0pt;">Settings</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T3.10.10.11.3" style="padding-left:7.0pt;padding-right:7.0pt;">VATEX</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.12">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.12.1" style="padding-left:7.0pt;padding-right:7.0pt;">K-(Bit)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.12.2" style="padding-left:7.0pt;padding-right:7.0pt;">V-(Bit)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.10.10.12.3" style="padding-left:7.0pt;padding-right:7.0pt;">FFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.12.4" style="padding-left:7.0pt;padding-right:7.0pt;">BLEU-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.12.5" style="padding-left:7.0pt;padding-right:7.0pt;">Meteor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.12.6" style="padding-left:7.0pt;padding-right:7.0pt;">Rouge-L</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.12.7" style="padding-left:7.0pt;padding-right:7.0pt;">CIDEr</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S5.T3.10.10.13.1" style="padding-left:7.0pt;padding-right:7.0pt;">LLaVA-OV-7B</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.14" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.14.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.14.1.1" style="background-color:#E6E6E6;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T3.10.10.14.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.14.2.1" style="background-color:#E6E6E6;">16-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.14.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.14.3.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.14.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.14.4.1" style="background-color:#E6E6E6;">14.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.14.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.14.5.1" style="background-color:#E6E6E6;">19.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.14.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.14.6.1" style="background-color:#E6E6E6;">39.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.14.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.14.7.1" style="background-color:#E6E6E6;">27.42</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.2.2.3" style="padding-left:7.0pt;padding-right:7.0pt;">KIVI</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T3.2.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mi id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{T}" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m2.1"><semantics id="S5.T3.2.2.2.2.m2.1a"><mi id="S5.T3.2.2.2.2.m2.1.1" xref="S5.T3.2.2.2.2.m2.1.1.cmml">𝕋</mi><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m2.1b"><ci id="S5.T3.2.2.2.2.m2.1.1.cmml" xref="S5.T3.2.2.2.2.m2.1.1">𝕋</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m2.1c">\mathbb{T}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m2.1d">blackboard_T</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.2.2.4" style="padding-left:7.0pt;padding-right:7.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.5" style="padding-left:7.0pt;padding-right:7.0pt;">14.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.2.2.2.6.1">19.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.7" style="padding-left:7.0pt;padding-right:7.0pt;">38.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.2.2.2.8.1">26.27</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.4.4.4.3" style="padding-left:7.0pt;padding-right:7.0pt;">VidKV</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.T3.4.4.4.2" style="padding-left:7.0pt;padding-right:7.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S5.T3.3.3.3.1.m1.1"><semantics id="S5.T3.3.3.3.1.m1.1a"><mi id="S5.T3.3.3.3.1.m1.1.1" xref="S5.T3.3.3.3.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.1.m1.1b"><ci id="S5.T3.3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.3.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S5.T3.4.4.4.2.m2.1"><semantics id="S5.T3.4.4.4.2.m2.1a"><mi id="S5.T3.4.4.4.2.m2.1.1" xref="S5.T3.4.4.4.2.m2.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.2.m2.1b"><ci id="S5.T3.4.4.4.2.m2.1.1.cmml" xref="S5.T3.4.4.4.2.m2.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.2.m2.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.2.m2.1d">blackboard_C</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.4.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.4.5.1">15.24</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.6.1">19.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.7.1">39.45</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.8.1">27.57</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.15">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.15.1" rowspan="3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.1.1">VidKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.15.2" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.2.1" style="color:#000000;background-color:#E6FFE6;">1.5-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.15.3" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.3.1" style="color:#000000;background-color:#E6FFE6;">2-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.15.4" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.4.1" style="color:#000000;background-color:#E6FFE6;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.15.5" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.5.1" style="color:#000000;background-color:#E6FFE6;">14.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.15.6" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.6.1" style="color:#000000;background-color:#E6FFE6;">18.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.15.7" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.7.1" style="color:#000000;background-color:#E6FFE6;">38.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.15.8" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.15.8.1" style="color:#000000;background-color:#E6FFE6;">23.38</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.16">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.16.1" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.16.1.1" style="color:#000000;background-color:#E6FFE6;">1.5-Bit</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.16.2" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.16.2.1" style="color:#000000;background-color:#E6FFE6;">2-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.10.10.16.3" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.16.3.1" style="color:#000000;background-color:#E6FFE6;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.16.4" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.16.4.1" style="color:#000000;background-color:#E6FFE6;">14.96</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.16.5" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.16.5.1" style="color:#000000;background-color:#E6FFE6;">19.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.16.6" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.10.10.16.6.1" style="color:#000000;background-color:#E6FFE6;">39.01</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.16.7" style="background-color:#E6FFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.16.7.1" style="color:#000000;background-color:#E6FFE6;">25.91</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.17">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.17.1" style="padding-left:7.0pt;padding-right:7.0pt;">1.5-Bit</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.17.2" style="padding-left:7.0pt;padding-right:7.0pt;">1.58-Bit</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.10.10.17.3" style="padding-left:7.0pt;padding-right:7.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.17.4" style="padding-left:7.0pt;padding-right:7.0pt;">14.06</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.17.5" style="padding-left:7.0pt;padding-right:7.0pt;">16.43</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.17.6" style="padding-left:7.0pt;padding-right:7.0pt;">35.28</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.17.7" style="padding-left:7.0pt;padding-right:7.0pt;">20.09</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.5.5.1" rowspan="2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.5.5.5.1.1">VidKV (<math alttext="p=0.2" class="ltx_Math" display="inline" id="S5.T3.5.5.5.1.1.m1.1"><semantics id="S5.T3.5.5.5.1.1.m1.1a"><mrow id="S5.T3.5.5.5.1.1.m1.1.1" xref="S5.T3.5.5.5.1.1.m1.1.1.cmml"><mi id="S5.T3.5.5.5.1.1.m1.1.1.2" xref="S5.T3.5.5.5.1.1.m1.1.1.2.cmml">p</mi><mo id="S5.T3.5.5.5.1.1.m1.1.1.1" xref="S5.T3.5.5.5.1.1.m1.1.1.1.cmml">=</mo><mn id="S5.T3.5.5.5.1.1.m1.1.1.3" xref="S5.T3.5.5.5.1.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.1.1.m1.1b"><apply id="S5.T3.5.5.5.1.1.m1.1.1.cmml" xref="S5.T3.5.5.5.1.1.m1.1.1"><eq id="S5.T3.5.5.5.1.1.m1.1.1.1.cmml" xref="S5.T3.5.5.5.1.1.m1.1.1.1"></eq><ci id="S5.T3.5.5.5.1.1.m1.1.1.2.cmml" xref="S5.T3.5.5.5.1.1.m1.1.1.2">𝑝</ci><cn id="S5.T3.5.5.5.1.1.m1.1.1.3.cmml" type="float" xref="S5.T3.5.5.5.1.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.1.1.m1.1c">p=0.2</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.1.1.m1.1d">italic_p = 0.2</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.2" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.5.5.5.2.1" style="background-color:#FFFFE6;">1.5-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.3" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.5.5.5.3.1" style="background-color:#FFFFE6;">1.66-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.5.5.4" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.5.5.5.4.1" style="background-color:#FFFFE6;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.5" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.5.5.1" style="background-color:#FFFFE6;">15.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.6" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.5.5.5.6.1" style="background-color:#FFFFE6;">17.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.7" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.5.5.5.7.1" style="background-color:#FFFFE6;">37.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.5.5.8" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.5.5.5.8.1" style="background-color:#FFFFE6;">23.06</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.18">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.18.1" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.18.1.1" style="background-color:#FFFFE6;">1.75-Bit</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.18.2" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.18.2.1" style="background-color:#FFFFE6;">1.66-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.10.10.18.3" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.18.3.1" style="background-color:#FFFFE6;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.18.4" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.18.4.1" style="background-color:#FFFFE6;">15.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.18.5" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.18.5.1" style="background-color:#FFFFE6;">18.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.18.6" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.18.6.1" style="background-color:#FFFFE6;">38.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.18.7" style="background-color:#FFFFE6;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.18.7.1" style="background-color:#FFFFE6;">24.30</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S5.T3.10.10.19.1" style="padding-left:7.0pt;padding-right:7.0pt;">Qwen2.5-VL-7B</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.20" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.20.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.20.1.1" style="background-color:#E6E6E6;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T3.10.10.20.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.20.2.1" style="background-color:#E6E6E6;">16-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.20.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.20.3.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.20.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.20.4.1" style="background-color:#E6E6E6;">19.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.20.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.20.5.1" style="background-color:#E6E6E6;">20.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.20.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.20.6.1" style="background-color:#E6E6E6;">40.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.20.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.20.7.1" style="background-color:#E6E6E6;">41.87</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.7.7.7.3" style="padding-left:7.0pt;padding-right:7.0pt;">KIVI</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S5.T3.7.7.7.2" style="padding-left:7.0pt;padding-right:7.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S5.T3.6.6.6.1.m1.1"><semantics id="S5.T3.6.6.6.1.m1.1a"><mi id="S5.T3.6.6.6.1.m1.1.1" xref="S5.T3.6.6.6.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.1.m1.1b"><ci id="S5.T3.6.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.6.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{T}" class="ltx_Math" display="inline" id="S5.T3.7.7.7.2.m2.1"><semantics id="S5.T3.7.7.7.2.m2.1a"><mi id="S5.T3.7.7.7.2.m2.1.1" xref="S5.T3.7.7.7.2.m2.1.1.cmml">𝕋</mi><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.2.m2.1b"><ci id="S5.T3.7.7.7.2.m2.1.1.cmml" xref="S5.T3.7.7.7.2.m2.1.1">𝕋</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.2.m2.1c">\mathbb{T}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.2.m2.1d">blackboard_T</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.7.7.7.4" style="padding-left:7.0pt;padding-right:7.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.5" style="padding-left:7.0pt;padding-right:7.0pt;">19.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.7.6.1">21.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.7" style="padding-left:7.0pt;padding-right:7.0pt;">41.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.7.7.7.8.1">41.98</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.9.9.9.3" style="padding-left:7.0pt;padding-right:7.0pt;">VidKV</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.T3.9.9.9.2" style="padding-left:7.0pt;padding-right:7.0pt;">2-Bit (K-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S5.T3.8.8.8.1.m1.1"><semantics id="S5.T3.8.8.8.1.m1.1a"><mi id="S5.T3.8.8.8.1.m1.1.1" xref="S5.T3.8.8.8.1.m1.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.8.1.m1.1b"><ci id="S5.T3.8.8.8.1.m1.1.1.cmml" xref="S5.T3.8.8.8.1.m1.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.8.1.m1.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.8.1.m1.1d">blackboard_C</annotation></semantics></math> V-<math alttext="\mathbb{C}" class="ltx_Math" display="inline" id="S5.T3.9.9.9.2.m2.1"><semantics id="S5.T3.9.9.9.2.m2.1a"><mi id="S5.T3.9.9.9.2.m2.1.1" xref="S5.T3.9.9.9.2.m2.1.1.cmml">ℂ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.9.9.9.2.m2.1b"><ci id="S5.T3.9.9.9.2.m2.1.1.cmml" xref="S5.T3.9.9.9.2.m2.1.1">ℂ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.9.9.2.m2.1c">\mathbb{C}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.9.9.2.m2.1d">blackboard_C</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.9.9.9.4" style="padding-left:7.0pt;padding-right:7.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.9.9.9.5.1">19.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.9.9.9.6.1">21.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.9.9.9.7.1">42.06</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.9.9.9.8.1">43.15</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.21">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.21.1" rowspan="3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.21.1.1">VidKV</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.21.2" style="padding-left:7.0pt;padding-right:7.0pt;">1.5-Bit</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.21.3" style="padding-left:7.0pt;padding-right:7.0pt;">2-Bit</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.10.10.21.4" style="padding-left:7.0pt;padding-right:7.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.21.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.10.10.21.5.1">19.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.21.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.10.10.21.6.1">21.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.21.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.10.10.21.7.1">42.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.10.10.21.8" style="padding-left:7.0pt;padding-right:7.0pt;">41.86</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.22">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.22.1" style="padding-left:7.0pt;padding-right:7.0pt;">2-Bit</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.22.2" style="padding-left:7.0pt;padding-right:7.0pt;">1.58-Bit</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.10.10.22.3" style="padding-left:7.0pt;padding-right:7.0pt;">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.22.4" style="padding-left:7.0pt;padding-right:7.0pt;">13.61</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.22.5" style="padding-left:7.0pt;padding-right:7.0pt;">17.62</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.22.6" style="padding-left:7.0pt;padding-right:7.0pt;">36.90</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.22.7" style="padding-left:7.0pt;padding-right:7.0pt;">28.86</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.23">
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.23.1" style="padding-left:7.0pt;padding-right:7.0pt;">1.5-Bit</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.23.2" style="padding-left:7.0pt;padding-right:7.0pt;">1.58-Bit</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.10.10.23.3" style="padding-left:7.0pt;padding-right:7.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.23.4" style="padding-left:7.0pt;padding-right:7.0pt;">13.09</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.23.5" style="padding-left:7.0pt;padding-right:7.0pt;">17.44</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.23.6" style="padding-left:7.0pt;padding-right:7.0pt;">35.88</td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.23.7" style="padding-left:7.0pt;padding-right:7.0pt;">29.76</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.10" style="background-color:#FFFFE6;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.10.10.10.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.1.1" style="background-color:#FFFFE6;">VidKV (<math alttext="p=0.2" class="ltx_Math" display="inline" id="S5.T3.10.10.10.1.1.m1.1"><semantics id="S5.T3.10.10.10.1.1.m1.1a"><mrow id="S5.T3.10.10.10.1.1.m1.1.1" xref="S5.T3.10.10.10.1.1.m1.1.1.cmml"><mi id="S5.T3.10.10.10.1.1.m1.1.1.2" mathbackground="#FFFFE6" xref="S5.T3.10.10.10.1.1.m1.1.1.2.cmml">p</mi><mo id="S5.T3.10.10.10.1.1.m1.1.1.1" mathbackground="#FFFFE6" xref="S5.T3.10.10.10.1.1.m1.1.1.1.cmml">=</mo><mn id="S5.T3.10.10.10.1.1.m1.1.1.3" mathbackground="#FFFFE6" xref="S5.T3.10.10.10.1.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.10.10.10.1.1.m1.1b"><apply id="S5.T3.10.10.10.1.1.m1.1.1.cmml" xref="S5.T3.10.10.10.1.1.m1.1.1"><eq id="S5.T3.10.10.10.1.1.m1.1.1.1.cmml" xref="S5.T3.10.10.10.1.1.m1.1.1.1"></eq><ci id="S5.T3.10.10.10.1.1.m1.1.1.2.cmml" xref="S5.T3.10.10.10.1.1.m1.1.1.2">𝑝</ci><cn id="S5.T3.10.10.10.1.1.m1.1.1.3.cmml" type="float" xref="S5.T3.10.10.10.1.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.10.10.1.1.m1.1c">p=0.2</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.10.10.1.1.m1.1d">italic_p = 0.2</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.10.10.10.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.2.1" style="background-color:#FFFFE6;">1.5-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.10.10.10.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.3.1" style="background-color:#FFFFE6;">1.66-Bit</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.10.10.10.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.4.1" style="background-color:#FFFFE6;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.10.10.10.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.5.1" style="background-color:#FFFFE6;">14.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.10.10.10.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.6.1" style="background-color:#FFFFE6;">17.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.10.10.10.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.7.1" style="background-color:#FFFFE6;">37.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.10.10.10.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T3.10.10.10.8.1" style="background-color:#FFFFE6;">31.72</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents an ablation study analyzing the impact of different components of the proposed VidKV method on various video understanding benchmarks.  Each row represents a different configuration, systematically varying the use of FFT (Fast Fourier Transform) for 1-bit quantization of the key cache, the Semantic Token Protection (STP) strategy for the value cache, and the Random Token Protection (RTP) strategy, used as a baseline for comparison with STP. The results are compared across multiple metrics for several video benchmarks.  The best result for each metric in each experimental setup is highlighted in bold to clearly show the effectiveness of the individual components.
> <details>
> <summary>read the caption</summary>
> Table 4: Results of the ablation study of our method. In each pair of comparison results, the superior result is shown in bold. STP employs the proposed semantic-based token filtering protection strategy, while RTP protects randomly screened tokens. FFT is exclusively applied alongside 1-bit quantization within mixed-precision quantization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.F5.2">
<tr class="ltx_tr" id="S5.F5.2.2">
<td class="ltx_td ltx_align_center" id="S5.F5.2.2.2">
<span class="ltx_text" id="S5.F5.2.2.2.3" style="font-size:70%;">
</span><span class="ltx_text" id="S5.F5.2.2.2.4" style="font-size:70%;position:relative; bottom:0.0pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.F5.2.2.2.4.1" style="width:2.3pt;height:0pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S5.F5.2.2.2.4.1.1"><span class="ltx_text" id="S5.F5.2.2.2.4.1.1.1"></span></span>
</span></span></span><span class="ltx_text" id="S5.F5.2.2.2.5" style="font-size:70%;">
</span><span class="ltx_text" id="S5.F5.2.2.2.2" style="font-size:70%;position:relative; bottom:-235.2pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.F5.2.2.2.2.2.2.2" style="width:461.8pt;height:235.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S5.F5.2.2.2.2.2.2.2.2"><span class="ltx_text" id="S5.F5.2.2.2.2.2.2.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="S5.F5.2.2.2.2.2.2.2.2.2.2">
<span class="ltx_tr" id="S5.F5.2.2.2.2.2.2.2.2.2.2.2">
<span class="ltx_td ltx_align_center" id="S5.F5.1.1.1.1.1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="406" id="S5.F5.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="x13.png" width="406"/></span>
<span class="ltx_td ltx_align_center" id="S5.F5.2.2.2.2.2.2.2.2.2.2.2.2"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="407" id="S5.F5.2.2.2.2.2.2.2.2.2.2.2.2.g1" src="x14.png" width="407"/></span>
<span class="ltx_td" id="S5.F5.2.2.2.2.2.2.2.2.2.2.2.3"></span></span>
<span class="ltx_tr" id="S5.F5.2.2.2.2.2.2.2.2.2.2.3">
<span class="ltx_td ltx_align_center" id="S5.F5.2.2.2.2.2.2.2.2.2.2.3.1">(a)</span>
<span class="ltx_td ltx_align_center" id="S5.F5.2.2.2.2.2.2.2.2.2.2.3.2">(b)</span>
<span class="ltx_td" id="S5.F5.2.2.2.2.2.2.2.2.2.2.3.3"></span></span>
</span></span></span>
</span></span></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of applying 1-bit quantization to both the key and value components of the KV cache in VideoLLMs. It compares the performance of the proposed VidKV method against the KIVI method on several video understanding tasks (VideoDC, MovieChat, TempCompass, WorldQA, and VideoChat-GPT).  The results are shown in terms of various metrics such as GPT scores and accuracy. The '-' symbol denotes that the model failed completely under those specific conditions.
> <details>
> <summary>read the caption</summary>
> Table 5: Results of 1-Bit Quantization for KV Cache. The “-” symbol indicates complete model failure.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16257/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16257/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}