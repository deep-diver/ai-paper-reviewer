---
title: "VideoRoPE: What Makes for Good Video Rotary Position Embedding?"
summary: "VideoRoPE enhances video processing in Transformer models by introducing a novel 3D rotary position embedding that preserves spatio-temporal relationships, resulting in superior performance across var..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Fudan University",]
showSummary: true
date: 2025-02-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05173 {{< /keyword >}}
{{< keyword icon="writer" >}} Xilin Wei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05173" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05173" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05173/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Rotary Position Embeddings (RoPE) are widely used in Transformer models for handling long sequences, but extending them to video data, which has a complex spatiotemporal structure, is challenging. Existing methods often flatten video data into a 1D sequence, losing crucial spatial and temporal information, or use suboptimal frequency allocations, leading to poor performance, especially when dealing with distractors. 

This paper introduces VideoRoPE, a new 3D RoPE specifically designed for video. **VideoRoPE uses a 3D structure, a diagonal layout to maintain spatial symmetry, adjustable temporal spacing, and low-frequency temporal allocation to reduce periodic oscillations**.  The authors introduce a new challenging benchmark (V-NIAH-D), which demonstrates the superiority of VideoRoPE over existing methods.  **VideoRoPE achieves state-of-the-art results across diverse video tasks** such as long video retrieval, video understanding, and video hallucination.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VideoRoPE, a novel 3D rotary position embedding, outperforms existing methods on video understanding, retrieval, and hallucination tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper identifies four key characteristics for effective video RoPE: 3D structure, frequency allocation, spatial symmetry, and temporal index scaling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VideoRoPE addresses the limitations of previous RoPE variants by mitigating periodic oscillations and enhancing robustness to distractors. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical challenge in adapting rotary position embeddings (RoPE) for video data, which is crucial for the development of advanced video large language models.  It proposes a novel method, VideoRoPE, that significantly outperforms existing methods on various benchmarks.  This work provides a deeper understanding of the key properties required for effective video RoPE, and opens up new avenues for research into improved positional encoding techniques for other multi-modal applications.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05173/x1.png)

> 🔼 This radar chart displays the performance of VideoRoPE and other RoPE variants across multiple video benchmarks: Long Video Bench, MLVU, VideoMME, V-NIAH, and VideoHalluciner.  Each benchmark assesses different aspects of video understanding capabilities. VideoRoPE demonstrates superior performance compared to other methods, showcasing its effectiveness in various video tasks. The chart visually highlights VideoRoPE's consistent improvements across these diverse benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1: VideoRoPE outperforms RoPE variants on benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.T1.2">
<tr class="ltx_tr" id="S1.T1.2.1">
<td class="ltx_td ltx_border_tt" id="S1.T1.2.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.2" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.1.2.1"></span><span class="ltx_text" id="S1.T1.2.1.2.2" style="font-size:50%;"> </span><span class="ltx_text" id="S1.T1.2.1.2.3" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.2.3.1">
<span class="ltx_tr" id="S1.T1.2.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.2.3.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.2.3.1.1.1.1">2D/3D</span></span></span>
<span class="ltx_tr" id="S1.T1.2.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.2.3.1.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.2.3.1.2.1.1">Structure</span></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.1.2.4"></span><span class="ltx_text" id="S1.T1.2.1.2.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.3" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.1.3.1"></span><span class="ltx_text" id="S1.T1.2.1.3.2" style="font-size:50%;"> </span><span class="ltx_text" id="S1.T1.2.1.3.3" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.3.3.1">
<span class="ltx_tr" id="S1.T1.2.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.3.3.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.3.3.1.1.1.1">Frequency</span></span></span>
<span class="ltx_tr" id="S1.T1.2.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.3.3.1.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.3.3.1.2.1.1">Allocation</span></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.1.3.4"></span><span class="ltx_text" id="S1.T1.2.1.3.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.1.4.1"></span><span class="ltx_text" id="S1.T1.2.1.4.2" style="font-size:50%;"> </span><span class="ltx_text" id="S1.T1.2.1.4.3" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.4.3.1">
<span class="ltx_tr" id="S1.T1.2.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.4.3.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.4.3.1.1.1.1">Spatial</span></span></span>
<span class="ltx_tr" id="S1.T1.2.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.4.3.1.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.4.3.1.2.1.1">Symmetry</span></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.1.4.4"></span><span class="ltx_text" id="S1.T1.2.1.4.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.2.1.5" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.1.5.1"></span><span class="ltx_text" id="S1.T1.2.1.5.2" style="font-size:50%;"> </span><span class="ltx_text" id="S1.T1.2.1.5.3" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.1.5.3.1">
<span class="ltx_tr" id="S1.T1.2.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.5.3.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.5.3.1.1.1.1">Temporal</span></span></span>
<span class="ltx_tr" id="S1.T1.2.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.2.1.5.3.1.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.5.3.1.2.1.1">Index Scaling</span></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.1.5.4"></span><span class="ltx_text" id="S1.T1.2.1.5.5" style="font-size:50%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.2.1.1"></span><span class="ltx_text" id="S1.T1.2.2.1.2" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.2.1.2.1">
<span class="ltx_tr" id="S1.T1.2.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.2.2.1.2.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">Vanilla RoPE <cite class="ltx_cite ltx_citemacro_citep">(Su et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib52" title="">2024</a>)</cite></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.2.1.3"></span><span class="ltx_text" id="S1.T1.2.2.1.4" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.2.2.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.2.3.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.2.4.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.2.5.1" style="font-size:50%;color:#FF8080;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.3">
<td class="ltx_td ltx_align_left" id="S1.T1.2.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.3.1.1"></span><span class="ltx_text" id="S1.T1.2.3.1.2" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.3.1.2.1">
<span class="ltx_tr" id="S1.T1.2.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.2.3.1.2.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">TAD-RoPE <cite class="ltx_cite ltx_citemacro_citep">(Gao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib16" title="">2024</a>)</cite></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.3.1.3"></span><span class="ltx_text" id="S1.T1.2.3.1.4" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.3.2.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.3.3.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.3.4.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.3.5.1" style="font-size:50%;color:#098842;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.4">
<td class="ltx_td ltx_align_left" id="S1.T1.2.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.4.1.1"></span><span class="ltx_text" id="S1.T1.2.4.1.2" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.4.1.2.1">
<span class="ltx_tr" id="S1.T1.2.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.2.4.1.2.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">RoPE-Tie <cite class="ltx_cite ltx_citemacro_citep">(Su, <a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib50" title="">2024a</a>)</cite></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.4.1.3"></span><span class="ltx_text" id="S1.T1.2.4.1.4" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.4.2.1" style="font-size:50%;color:#098842;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.4.3.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.4.4.1" style="font-size:50%;color:#098842;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.4.5.1" style="font-size:50%;color:#FF8080;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.5">
<td class="ltx_td ltx_align_left" id="S1.T1.2.5.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S1.T1.2.5.1.1"></span><span class="ltx_text" id="S1.T1.2.5.1.2" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.2.5.1.2.1">
<span class="ltx_tr" id="S1.T1.2.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.2.5.1.2.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">M-RoPE <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib60" title="">2024b</a>)</cite></span></span>
</span></span><span class="ltx_text" id="S1.T1.2.5.1.3"></span><span class="ltx_text" id="S1.T1.2.5.1.4" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.5.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.5.2.1" style="font-size:50%;color:#098842;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.5.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.5.3.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.5.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.5.4.1" style="font-size:50%;color:#FF8080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.5.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.5.5.1" style="font-size:50%;color:#FF8080;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.6" style="background-color:#F2F3F5;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.2.6.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.6.1.1" style="font-size:50%;background-color:#F2F3F5;">VideoRoPE (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.6.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.6.2.1" style="font-size:50%;color:#098842;background-color:#F2F3F5;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.6.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.6.3.1" style="font-size:50%;color:#098842;background-color:#F2F3F5;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.6.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.6.4.1" style="font-size:50%;color:#098842;background-color:#F2F3F5;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.2.6.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S1.T1.2.6.5.1" style="font-size:50%;color:#098842;background-color:#F2F3F5;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares several variants of Rotary Position Embedding (RoPE), a technique used in Transformer models to incorporate positional information, specifically focusing on their effectiveness for Video Large Language Models (Video LLMs).  It highlights key differences across four aspects: the 2D/3D structure of the model (how it handles the spatial and temporal dimensions of video data), frequency allocation (how frequencies are assigned to different dimensions), spatial symmetry (whether the model maintains symmetry in its handling of spatial information), and temporal index scaling (how the model handles the different granularities of temporal and spatial information). Each RoPE variant is evaluated according to whether it satisfies these characteristics with a checkmark or an 'X'. This allows for a comparison of different approaches and their suitability for processing video data.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between different RoPE variants for Video Large Language Models (Video LLMs).
> </details>





### In-depth insights


#### RoPE's Video Limits
The heading "RoPE's Video Limits" suggests an exploration of the challenges in applying Rotary Position Embeddings (RoPE), a successful technique in natural language processing, to the spatiotemporal domain of video data.  **The core limitation lies in RoPE's inherent 1D structure**, which struggles to directly represent the 2D or 3D nature of video frames and their temporal evolution.  Simply flattening video data into a 1D sequence loses crucial spatial and temporal relationships, hindering effective positional encoding.  The paper likely delves into how existing attempts to adapt RoPE to video, such as through direct extensions or 3D adaptations, **fall short of adequately capturing complex spatiotemporal relationships**.  This might involve a discussion of frequency allocation strategies, the impact of periodic oscillations, and the challenges of aligning temporal and spatial dimensions.  **A key insight likely uncovered is the need for a more sophisticated 3D positional encoding scheme** that respects the unique characteristics of video. The authors probably propose a novel method that addresses these limitations by explicitly modeling spatiotemporal dependencies with improved frequency allocation or a new architectural approach to positional embedding for video.

#### VideoRoPE Design
The VideoRoPE design is a novel approach to rotary position embedding (RoPE) specifically tailored for video data.  It addresses the limitations of previous methods by incorporating **three key components**: **Low-frequency Temporal Allocation (LTA)**, which mitigates periodic oscillations and improves robustness to distractors; a **Diagonal Layout (DL)**, which maintains spatial symmetry and ensures equal contextual influence from surrounding tokens; and **Adjustable Temporal Spacing (ATS)**, allowing for flexible scaling of temporal indices to better align with varying granularities of temporal and spatial information in video.  These components are carefully integrated into a **3D structure** to preserve spatio-temporal relationships inherent in video, providing an effective and robust representation of positional information within video-language models.  The design's effectiveness is demonstrated through superior performance across various benchmarks, including those involving long video understanding, retrieval, and hallucination tasks, showcasing its adaptability and superior ability to handle long-range dependencies within complex video data.

#### V-NIAH-D Challenge
The V-NIAH-D challenge, a novel extension of the V-NIAH benchmark, introduces a crucial test for video understanding models.  By adding periodic distractors to the original V-NIAH dataset, **V-NIAH-D highlights the susceptibility of models to misleading visual information**, especially when temporal relationships are not properly handled. This clever augmentation effectively assesses a model's robustness in retrieving relevant information amidst noise, pushing beyond simple long-range visual understanding.  **The challenge reveals weaknesses in existing rotary position embedding (RoPE) variants**, demonstrating that inadequate temporal dimension allocation leads to poor performance.  Addressing the V-NIAH-D challenge necessitates a more sophisticated approach to spatio-temporal modeling, such as the proposed VideoRoPE architecture, which strategically allocates temporal and spatial dimensions to mitigate the impact of distractors and achieve superior results.  **Successfully tackling the V-NIAH-D challenge points to significant advancements in the field of video understanding**, pushing the development of more robust and reliable models capable of filtering noise and prioritizing relevant information in complex, real-world scenarios.

#### Empirical Results
An Empirical Results section in a research paper would ideally present a comprehensive evaluation of the proposed method, demonstrating its effectiveness and comparing it to existing state-of-the-art techniques.  This involves presenting key performance metrics across various datasets and experimental settings.  **A strong Empirical Results section will detail the experimental setup, including datasets, evaluation metrics, and baseline models used for comparison.**  In-depth analysis of the results should be provided, explaining any trends or unexpected outcomes.  The presentation of results should be clear, concise, and visually engaging, often employing tables and figures to facilitate understanding.  Ideally, **the authors should also acknowledge limitations and potential biases of their experimental methodology**.  A robust Empirical Results section is critical for establishing the credibility and impact of the research findings; it's where the theoretical claims of the paper are put to the test and validated through rigorous empirical evidence.

#### Future Work
Future work in video rotary position embedding (RoPE) could explore several promising avenues.  **Extending VideoRoPE to handle even longer video sequences** is crucial, potentially involving techniques like hierarchical attention or memory mechanisms to manage the increased computational complexity.  **Investigating different frequency allocation strategies** beyond the low-frequency temporal allocation could yield further improvements, particularly in balancing spatial and temporal information processing.  **A deeper investigation into the interaction between RoPE and other components of video LLMs**, such as attention mechanisms and normalization layers, is warranted to optimize overall model performance.  **Benchmarking VideoRoPE on a wider range of video understanding tasks** is needed to fully assess its generalizability and effectiveness, potentially including tasks beyond those currently considered.  Finally, **exploring the application of VideoRoPE to other multi-modal tasks**, such as video question answering and video generation, would broaden its impact and showcase its potential as a fundamental building block in advanced video AI systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05173/x2.png)

> 🔼 Figure 2 demonstrates the effect of frequency allocation on video retrieval performance.  The left side shows two examples, (a) V-NIAH (Visual Needle-in-a-Haystack) and (b) V-NIAH-D (Visual Needle-in-a-Haystack with Distractors).  V-NIAH-D is a more challenging variant that introduces visually similar distractor images around the relevant ‘needle’ image.  The right side presents a comparison of retrieval accuracy between M-ROPE and VideoRoPE on both tasks. This comparison highlights VideoRoPE's improved robustness to distractors, suggesting the effectiveness of its frequency allocation strategy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Left: To demonstrate the importance of frequential allocation, based on VIAH (a) we present a more challenging V-NIAH-D task (b) that similar images are inserted as distractors. Right: Compared to M-RoPE, our VideoRoPE is more robust in retrieval and is less affected by distractors.
> </details>



![](https://arxiv.org/html/2502.05173/x3.png)

> 🔼 Figure 3 visualizes the attention weights of different RoPE methods for a video retrieval task. The top row shows the attention weights for M-ROPE, highlighting how its temporal dimension focuses on short-term relationships, resulting in a diagonal pattern. This limitation hinders the model's ability to capture long-range temporal dependencies, which are crucial for accurately identifying the target 'needle' in a long video sequence.  The bottom row displays the attention weights for VideoRoPE, demonstrating its improved ability to capture long-range temporal dependencies. The VideoRoPE's temporal dimension effectively focuses on the relevant temporal segments, allowing it to successfully retrieve the 'needle'. The x and y axes represent the spatial coordinates (horizontal and vertical frame indices) in the video, and the color intensity of each cell represents the magnitude of the attention weight.
> <details>
> <summary>read the caption</summary>
> Figure 3: Attention-based frequential allocation analysis. Middle: M-RoPE’s temporal dimension (t𝑡titalic_t) is limited to local information, resulting in a diagonal layout. Bottom: VideoRoPE effectively retrieves the needle using the temporal dimension. The x and y coordinates represent the video frame number, e.g., 50 for 50 frames. For more details see Appendix E.
> </details>



![](https://arxiv.org/html/2502.05173/x4.png)

> 🔼 This figure compares the temporal frequency allocation strategies of M-ROPE and VideoRoPE.  M-ROPE allocates higher frequencies (shorter monotonic intervals) to the temporal dimension, while VideoRoPE uses lower frequencies (wider monotonic intervals). This difference is visually represented using graphs that show how quickly the frequency changes across different dimensions. The y-axis shows the index of the dimension, and the x-axis shows the token index (or time).  The difference in frequency allocation significantly impacts the robustness of the models to periodic oscillations and distractors, as discussed in the paper.
> <details>
> <summary>read the caption</summary>
> (a) Temporal Frequency Allocation in M-RoPE
> </details>



![](https://arxiv.org/html/2502.05173/x5.png)

> 🔼 This figure compares the frequency allocation strategies between M-ROPE and VideoRoPE for modeling temporal dependencies.  M-ROPE uses higher frequencies for the temporal dimension resulting in pronounced oscillations and a diagonal layout in the attention patterns. In contrast, VideoRoPE allocates lower frequencies to the temporal dimension, resulting in wider, more monotonic intervals,  mitigating the periodic oscillations and resulting in improved robustness against distractors in long video retrieval. The x-axis represents the token index, indicating the position within the sequence, while the y-axis represents the dimension index, showing the different frequency bands used for temporal encoding.
> <details>
> <summary>read the caption</summary>
> (b) Temporal Frequency Allocation in VideoRoPE (ours)
> </details>



![](https://arxiv.org/html/2502.05173/x6.png)

> 🔼 Figure 4 illustrates the difference in temporal frequency allocation between M-ROPE and VideoRoPE.  M-ROPE allocates higher frequencies (and thus, more pronounced oscillations) to the early dimensions, making it susceptible to interference from periodic distractors. In contrast, VideoRoPE uses lower frequencies for the temporal dimension, resulting in wider, monotonic intervals that are more robust against periodic distractions in the V-NIAH-D task.  This is because the higher frequency of the temporal dimension in M-ROPE makes it more sensitive to noise and periodic patterns, whereas the lower frequency in VideoRoPE makes it more resilient to noise.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) M-RoPE (Wang et al., 2024b) models temporal dependencies using the first 16 rotary angles, which exhibit higher frequencies and more pronounced oscillations. (b) In contrast, VideoRoPE models temporal dependencies using the last 16 rotary angles, characterized by significantly wider, monotonic intervals. Our frequency allocation effectively mitigates the misleading influence of distractors in V-NIAH-D. For a more detailed analysis, please refer to Appendix F.
> </details>



![](https://arxiv.org/html/2502.05173/x7.png)

> 🔼 This figure compares the positional embeddings of adjacent text and visual tokens for three different methods: Vanilla RoPE, M-ROPE, and VideoRoPE.  Vanilla RoPE, designed for 1D sequential data, flattens the video frames into a 1D sequence. M-ROPE uses a 3D structure but divides the dimensions into distinct groups for temporal and spatial features.  VideoRoPE, in contrast, employs a 3D structure with an interleaved spatial and temporal layout, aiming to better represent the spatio-temporal relationships in video data. The visualization helps show how each method handles the positional encoding, highlighting differences in how they capture spatial and temporal context.
> <details>
> <summary>read the caption</summary>
> Figure 5: The position embeddings of adjacent text tokens for Vanilla RoPE (top row), the corresponding visual tokens in adjacent frames for M-RoPE (middle row) and our VideoRoPE (bottom row) with interleaved spatial and temporal last design.
> </details>



![](https://arxiv.org/html/2502.05173/x8.png)

> 🔼 This 3D visualization illustrates the relative positional encoding scheme of Vanilla RoPE.  It shows how the vanilla RoPE, designed for 1D sequential data, handles higher dimensional data by flattening it into a single dimension.  The plot lacks the explicit representation of spatiotemporal relationships inherent in 3D data. This visualization helps to illustrate the limitations of applying a 1D positional encoding method to video data, which possesses an inherent 3D structure (temporal, height, width).
> <details>
> <summary>read the caption</summary>
> (a) 3D visualization for Vanilla RoPE.
> </details>



![](https://arxiv.org/html/2502.05173/x9.png)

> 🔼 This 3D visualization shows how M-RoPE (Multi-dimensional Rotary Position Embedding) allocates dimensions for representing temporal, horizontal, and vertical information in video data.  It highlights that M-RoPE, while employing a 3D structure, introduces inconsistencies in the index growth pattern for visual tokens across frames. Some indices remain constant, leading to an imbalance in representing spatial and temporal relationships.
> <details>
> <summary>read the caption</summary>
> (b) 3D visualization for M-RoPE.
> </details>



![](https://arxiv.org/html/2502.05173/x10.png)

> 🔼 This 3D visualization showcases VideoRoPE's unique approach to positional encoding in video data.  Unlike previous methods that flatten video frames into a 1D sequence or exhibit inconsistencies in index growth across dimensions, VideoRoPE maintains a consistent index growth pattern while simultaneously incorporating spatial modeling. The visualization clearly illustrates the consistent progression of indices across the temporal (t), horizontal (x), and vertical (y) axes, highlighting the balance achieved between spatial and temporal information.
> <details>
> <summary>read the caption</summary>
> (c) 3D visualization for VideoRoPE.
> </details>



![](https://arxiv.org/html/2502.05173/x11.png)

> 🔼 Figure 6 visualizes the positional encoding of three different methods: Vanilla RoPE, M-ROPE, and VideoRoPE.  Vanilla RoPE, being a 1D method, lacks spatial information, resulting in a linear progression along the time axis (t).  M-ROPE attempts 3D modeling, but introduces inconsistencies in the index growth for visual tokens across frames; some indices remain static, breaking the consistent progression. In contrast, VideoRoPE maintains a consistent index growth across all dimensions (t, x, y) while effectively incorporating spatial relationships within its 3D structure. This balanced approach is visualized as a smooth, consistent progression in the figure.
> <details>
> <summary>read the caption</summary>
> Figure 6: The 3D visualization for different position embedding. (a) The vanilla 1D RoPE (Su et al., 2024) does not incorporate spatial modeling. (b) M-RoPE (Wang et al., 2024b), while have the 3D structure, introduces a discrepancy in index growth for visual tokens across frames, with some indices remaining constant. (c) In contrast, our VideoRoPE achieves the desired balance, maintaining the consistent index growth pattern of vanilla RoPE while simultaneously incorporating spatial modeling.
> </details>



![](https://arxiv.org/html/2502.05173/x12.png)

> 🔼 Figure 7 visualizes the performance of different RoPE methods on the V-NIAH and V-NIAH-D datasets.  The plots show how well each method can locate the 'needle' (target frame) within the 'haystack' (video sequence), particularly in the presence of distractors (V-NIAH-D). The color gradient shifting from green to red signifies the performance, ranging from perfect retrieval (green) to complete failure (red).  The x-axis shows the length of the haystack, demonstrating the models' ability to perform long-range retrieval. The y-axis represents the number of frames examined. The four subplots show the results for Vanilla RoPE, TAD-ROPE, M-ROPE, and VideoRoPE, respectively.  The figure highlights how VideoRoPE significantly outperforms the others in accurately locating the target frame even with increasing haystack length and distractors.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of the retrieval results for V-NIAH and V-NIAH-D. The color gradient from green to red represents the progression of needle retrieval performance, from perfect to zero.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.8">
<tr class="ltx_tr" id="S5.T2.8.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.8.1.1" rowspan="2" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T2.8.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.1.2.1" style="font-size:80%;">LongVideoBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T2.8.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.1.3.1" style="font-size:80%;">MLVU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T2.8.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.1.4.1" style="font-size:80%;">Video-MME</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.1.1" style="font-size:80%;">8k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.2.1" style="font-size:80%;">16k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.3.1" style="font-size:80%;">32k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.4.1" style="font-size:80%;">64k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.5.1" style="font-size:80%;">8k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.6.1" style="font-size:80%;">16k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.7.1" style="font-size:80%;">32k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.8.1" style="font-size:80%;">64k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.9.1" style="font-size:80%;">8k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.10.1" style="font-size:80%;">16k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.11" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.11.1" style="font-size:80%;">32k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.2.12" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.2.12.1" style="font-size:80%;">64k</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.3.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S5.T2.8.3.1.1" style="font-size:80%;">Vanilla RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.8.3.1.2.1" style="font-size:80%;">(</span>Su et al.<span class="ltx_text" id="S5.T2.8.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib52" title="">2024</a><span class="ltx_text" id="S5.T2.8.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.3.2.1" style="font-size:80%;">54.97</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.3.3.1" style="font-size:80%;">54.87</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.3.4.1" style="font-size:80%;">54.56</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.3.5.1" style="font-size:80%;">54.04</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.3.6.1" style="font-size:80%;">63.31</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.3.7.1" style="font-size:80%;">65.79</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.3.8.1" style="font-size:80%;">65.93</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.3.9.1" style="font-size:80%;">62.02</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.3.10.1" style="font-size:80%;">60.67</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.11" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.3.11.1" style="font-size:80%;">60.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.12" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.3.12.1" style="font-size:80%;">61.33</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.3.13" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.3.13.1" style="font-size:80%;">58.33</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4">
<td class="ltx_td ltx_align_center" id="S5.T2.8.4.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S5.T2.8.4.1.1" style="font-size:80%;">TAD-RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.8.4.1.2.1" style="font-size:80%;">(</span>Gao et al.<span class="ltx_text" id="S5.T2.8.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib16" title="">2024</a><span class="ltx_text" id="S5.T2.8.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.2.1" style="font-size:80%;">54.14</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.4.3.1" style="font-size:80%;">55.08</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.4.1" style="font-size:80%;">53.94</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.5.1" style="font-size:80%;">53.42</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.4.6.1" style="font-size:80%;">63.67</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.7.1" style="font-size:80%;">65.28</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.8.1" style="font-size:80%;">65.28</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.9.1" style="font-size:80%;">60.73</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.10.1" style="font-size:80%;">60.33</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.11" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.4.11.1" style="font-size:80%;">61.33</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.12" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.4.12.1" style="font-size:80%;">62.00</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.4.13" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.4.13.1" style="font-size:80%;">58.67</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.5">
<td class="ltx_td ltx_align_center" id="S5.T2.8.5.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S5.T2.8.5.1.1" style="font-size:80%;">M-RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.8.5.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="S5.T2.8.5.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib60" title="">2024b</a><span class="ltx_text" id="S5.T2.8.5.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.2.1" style="font-size:80%;">53.42</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.3.1" style="font-size:80%;">52.80</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.4.1" style="font-size:80%;">53.11</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.5.5.1" style="font-size:80%;">54.35</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.6.1" style="font-size:80%;">60.41</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.7.1" style="font-size:80%;">60.68</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.8.1" style="font-size:80%;">61.56</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.9.1" style="font-size:80%;">61.10</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.5.10.1" style="font-size:80%;">60.67</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.11" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.11.1" style="font-size:80%;">59.67</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.12" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.5.12.1" style="font-size:80%;">61.00</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.8.5.13" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.5.13.1" style="font-size:80%;">59.67</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.6" style="background-color:#F2F3F5;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.6.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S5.T2.8.6.1.1" style="font-size:80%;background-color:#F2F3F5;">VideoRoPE (Ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.6.2.1" style="font-size:80%;background-color:#F2F3F5;">54.46</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.3.1" style="font-size:80%;background-color:#F2F3F5;">55.29</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.4.1" style="font-size:80%;background-color:#F2F3F5;">57.15</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.5.1" style="font-size:80%;background-color:#F2F3F5;">57.26</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.6.1" style="font-size:80%;background-color:#F2F3F5;">65.19</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.7.1" style="font-size:80%;background-color:#F2F3F5;">66.29</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.8.1" style="font-size:80%;background-color:#F2F3F5;">66.02</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.9.1" style="font-size:80%;background-color:#F2F3F5;">65.56</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.10.1" style="font-size:80%;background-color:#F2F3F5;">61.33</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.11" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.6.11.1" style="font-size:80%;background-color:#F2F3F5;">61.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.12" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.6.12.1" style="font-size:80%;background-color:#F2F3F5;">61.67</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.6.13" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.6.13.1" style="font-size:80%;background-color:#F2F3F5;">61.33</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different rotary position embedding (RoPE) methods on three video understanding benchmarks: LongVideoBench, MLVU, and Video-MME.  The benchmarks test performance with varying context lengths (8k, 16k, 32k, and 64k tokens), where 8k represents the context length used during training, and the others represent longer contexts unseen during training.  The results show that VideoRoPE consistently outperforms other RoPE variants across all three benchmarks and context lengths.  Bold values indicate the best performance, while underlined values indicate second-best performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of different RoPE methods on LongVidionBench, MLVU, and Video-MME. The benchmarks evaluate performance across three context lengths: 8k, 16k, 32k, and 64k, where 8k represents context within the training range, and others represent context outside the training range. Our VideoRoPE outperforms other RoPE variants across all three benchmarks. The best results are marked in bold, and the second-best results are underlined. For more information on the evaluation, see Appendix B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.8">
<tr class="ltx_tr" id="S5.T3.8.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.1.2.1" style="font-size:80%;">V-NIAH Acc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.8.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.1.3.1" style="font-size:80%;">V-NIAH-D Acc.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.8.2.1.1" style="font-size:80%;">Vanilla RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T3.8.2.1.2.1" style="font-size:80%;">(</span>Su et al.<span class="ltx_text" id="S5.T3.8.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib52" title="">2024</a><span class="ltx_text" id="S5.T3.8.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.8.2.2.1" style="font-size:80%;">31.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.8.2.3.1" style="font-size:80%;">30.22</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.3">
<td class="ltx_td ltx_align_center" id="S5.T3.8.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.8.3.1.1" style="font-size:80%;">TAD-RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T3.8.3.1.2.1" style="font-size:80%;">(</span>Gao et al.<span class="ltx_text" id="S5.T3.8.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib16" title="">2024</a><span class="ltx_text" id="S5.T3.8.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.8.3.2.1" style="font-size:80%;">29.33</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.8.3.3.1" style="font-size:80%;">29.56</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.4">
<td class="ltx_td ltx_align_center" id="S5.T3.8.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T3.8.4.1.1" style="font-size:80%;">M-RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T3.8.4.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="S5.T3.8.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib60" title="">2024b</a><span class="ltx_text" id="S5.T3.8.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.8.4.2.1" style="font-size:80%;">78.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.8.4.3.1" style="font-size:80%;">74.67</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.5" style="background-color:#F2F3F5;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.8.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.8.5.1.1" style="font-size:80%;background-color:#F2F3F5;">VideoRoPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.8.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.5.2.1" style="font-size:80%;background-color:#F2F3F5;">91.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.8.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.5.3.1" style="font-size:80%;background-color:#F2F3F5;">87.11</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various Rotary Position Embedding (RoPE) methods on two video retrieval tasks: V-NIAH (Visual Needle-In-A-Haystack) and V-NIAH-D (V-NIAH with Distractors).  V-NIAH-D is a more challenging version of V-NIAH that includes distractor images to test the robustness of the RoPE methods. The table shows the average accuracy ('Acc.') achieved by each RoPE method across different haystack lengths (number of frames in the video) and frame depths.  Higher accuracy indicates better performance in retrieving the target 'needle' image from the haystack, even in the presence of distractors.
> <details>
> <summary>read the caption</summary>
> Table 3:  Performance comparison of different RoPEs on V-NIAH and V-NIAH-D. “Acc.” refers to the average accuracy across haystack length and frame depth.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.7">
<tr class="ltx_tr" id="S5.T4.7.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.2.1" style="font-size:80%;">OR</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.3.1" style="font-size:80%;">T</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.4.1" style="font-size:80%;">SD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.5.1" style="font-size:80%;">F</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.6.1" style="font-size:80%;">NF</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.7.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.1.7.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T4.7.2.1.1" style="font-size:80%;">Vanilla RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T4.7.2.1.2.1" style="font-size:80%;">(</span>Su et al.<span class="ltx_text" id="S5.T4.7.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib52" title="">2024</a><span class="ltx_text" id="S5.T4.7.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.2.2.1" style="font-size:80%;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.2.3.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.2.4.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.2.5.1" style="font-size:80%;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.2.6.1" style="font-size:80%;">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.2.7.1" style="font-size:80%;">36.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.3">
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T4.7.3.1.1" style="font-size:80%;">TAD-RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T4.7.3.1.2.1" style="font-size:80%;">(</span>Gao et al.<span class="ltx_text" id="S5.T4.7.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib16" title="">2024</a><span class="ltx_text" id="S5.T4.7.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.3.2.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.3.3.1" style="font-size:80%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.3.4.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.3.5.1" style="font-size:80%;">11.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.3.6.1" style="font-size:80%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.3.7.1" style="font-size:80%;">39.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.4">
<td class="ltx_td ltx_align_center" id="S5.T4.7.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S5.T4.7.4.1.1" style="font-size:80%;">M-RoPE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T4.7.4.1.2.1" style="font-size:80%;">(</span>Wang et al.<span class="ltx_text" id="S5.T4.7.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib60" title="">2024b</a><span class="ltx_text" id="S5.T4.7.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.4.2.1" style="font-size:80%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.4.3.1" style="font-size:80%;">29.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.4.4.1" style="font-size:80%;">43.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.4.5.1" style="font-size:80%;">12.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.7.4.6.1" style="font-size:80%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.4.7.1" style="font-size:80%;">34.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.5" style="background-color:#F2F3F5;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.7.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T4.7.5.1.1" style="font-size:80%;background-color:#F2F3F5;">VideoRoPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.7.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.5.2.1" style="font-size:80%;background-color:#F2F3F5;">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.7.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.5.3.1" style="font-size:80%;background-color:#F2F3F5;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.7.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.5.4.1" style="font-size:80%;background-color:#F2F3F5;">50.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.7.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.5.5.1" style="font-size:80%;background-color:#F2F3F5;">15.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.7.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.5.6.1" style="font-size:80%;background-color:#F2F3F5;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.7.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.5.7.1" style="font-size:80%;background-color:#F2F3F5;">46.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of four different Rotary Position Embedding (RoPE) methods on the VideoHallucer benchmark. VideoHallucer is a video hallucination benchmark that evaluates the model's ability to correctly answer questions about video content, including both basic and hallucinated questions. The comparison is done across four different context lengths (8k, 16k, 32k, and 64k tokens) to assess the models' performance with varying amounts of contextual information.  For each RoPE method, the table displays the maximum performance achieved across the four context lengths.  The best performance is indicated in bold, and the second-best is underlined.  The table also breaks down the results by five sub-categories of the VideoHallucer benchmark: Object-Relation (OR), Temporal (T), Semantic Detail (SD), Factual (F), and Non-Factual (NF), giving a more granular view of each method's strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of different RoPEs on VideoHallucer, evaluated at context lengths of 8k, 16k, 32k, and 64k. The maximum result for each RoPE variant across these context lengths is displayed, with bold for the top result and underlined for the second-highest. ‘OR’ = Object-Relation, ‘T’ = Temporal, ‘SD’ = Semantic Detail, ‘F’ = Factual, ‘NF’ = Non-factual.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.5">
<tr class="ltx_tr" id="S5.T5.5.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T5.5.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.2.1" style="font-size:70%;">LongVideoBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T5.5.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.1.3.1" style="font-size:70%;">MLVU</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.1.1" style="font-size:70%;">8k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.2.1" style="font-size:70%;">16k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.3.1" style="font-size:70%;">32k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.4.1" style="font-size:70%;">64k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.5.1" style="font-size:70%;">8k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.6.1" style="font-size:70%;">16k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.7.1" style="font-size:70%;">32k</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.2.8.1" style="font-size:70%;">64k</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.1.1" style="font-size:70%;">Baseline</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.2.1" style="font-size:70%;">53.42</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.3.1" style="font-size:70%;">52.80</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.4.1" style="font-size:70%;">53.11</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.5.1" style="font-size:70%;">54.35</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.6.1" style="font-size:70%;">60.41</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.7.1" style="font-size:70%;">60.68</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.8.1" style="font-size:70%;">61.56</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.3.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.3.9.1" style="font-size:70%;">61.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.4">
<td class="ltx_td ltx_align_center" id="S5.T5.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.1.1" style="font-size:70%;">+ DL</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.2.1" style="font-size:70%;">52.17</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.3.1" style="font-size:70%;">52.07</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.4.1" style="font-size:70%;">53.31</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.5.1" style="font-size:70%;">53.63</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.6.1" style="font-size:70%;">62.06</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.7.1" style="font-size:70%;">63.03</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.8.1" style="font-size:70%;">62.52</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.4.9.1" style="font-size:70%;">62.75</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5">
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.5.1.1" style="font-size:70%;">+ DL &amp; LTA</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.2.1" style="font-size:70%;">54.46</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.3.1" style="font-size:70%;">55.49</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.5.4.1" style="font-size:70%;">54.66</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.5.5.1" style="font-size:70%;">55.60</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.5.6.1" style="font-size:70%;">63.35</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.5.7.1" style="font-size:70%;">64.09</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.5.8.1" style="font-size:70%;">64.00</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.5.9.1" style="font-size:70%;">63.26</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.6">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.5.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.6.1.1" style="font-size:70%;">+ DL &amp; LTA &amp; ATS</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.6.2.1" style="font-size:70%;">54.46</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T5.5.6.3.1" style="font-size:70%;">55.29</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.6.4.1" style="font-size:70%;">57.15</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.6.5.1" style="font-size:70%;">57.26</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.6.6.1" style="font-size:70%;">65.19</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.6.7.1" style="font-size:70%;">66.29</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.6.8.1" style="font-size:70%;">66.02</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.5.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.5.6.9.1" style="font-size:70%;">65.56</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study that investigates the impact of different components of the proposed VideoRoPE model on its performance.  It systematically evaluates the contribution of the Diagonal Layout (DL), Low-frequency Temporal Allocation (LTA), and Adjustable Temporal Spacing (ATS) modules. The study assesses performance on two key benchmarks: Long VideoBench and MLVU, using various context lengths (8k, 16k, 32k, and 64k) to understand the impact of context window size.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study about different modules of VideoRoPE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T6.3">
<tr class="ltx_tr" id="A1.T6.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.1">Scaling Factor <math alttext="\bm{\delta}" class="ltx_Math" display="inline" id="A1.T6.3.1.1.1.1.m1.1"><semantics id="A1.T6.3.1.1.1.1.m1.1a"><mi id="A1.T6.3.1.1.1.1.m1.1.1" xref="A1.T6.3.1.1.1.1.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="A1.T6.3.1.1.1.1.m1.1b"><ci id="A1.T6.3.1.1.1.1.m1.1.1.cmml" xref="A1.T6.3.1.1.1.1.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.1.1.1.1.m1.1c">\bm{\delta}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.1.1.1.1.m1.1d">bold_italic_δ</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T6.3.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.1">LongVideoBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.3" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.3.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">8k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">16k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">32k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">64k</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">51.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">53.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.4" style="padding-left:5.0pt;padding-right:5.0pt;">52.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.5" style="padding-left:5.0pt;padding-right:5.0pt;">52.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.6" style="padding-left:5.0pt;padding-right:5.0pt;">52.57</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.4">
<td class="ltx_td ltx_align_center" id="A1.T6.3.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.4.2.1">54.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.4.3.1">55.49</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">54.66</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.4.5" style="padding-left:5.0pt;padding-right:5.0pt;">55.60</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.4.6" style="padding-left:5.0pt;padding-right:5.0pt;">55.05</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.5">
<td class="ltx_td ltx_align_center" id="A1.T6.3.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.5.2" style="padding-left:5.0pt;padding-right:5.0pt;">54.35</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.5.3" style="padding-left:5.0pt;padding-right:5.0pt;">55.00</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.5.4" style="padding-left:5.0pt;padding-right:5.0pt;">55.31</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">55.91</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.5.6" style="padding-left:5.0pt;padding-right:5.0pt;">55.14</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.6" style="background-color:#F2F3F5;">
<td class="ltx_td ltx_align_center" id="A1.T6.3.6.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="A1.T6.3.6.1.1" style="background-color:#F2F3F5;">2.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.6.2.1" style="background-color:#F2F3F5;">54.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="A1.T6.3.6.3.1" style="background-color:#F2F3F5;">55.29</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.6.4.1" style="background-color:#F2F3F5;">57.15</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.6.5.1" style="background-color:#F2F3F5;">57.26</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.6.6.1" style="background-color:#F2F3F5;">56.04</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.7">
<td class="ltx_td ltx_align_center" id="A1.T6.3.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">2.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.7.2" style="padding-left:5.0pt;padding-right:5.0pt;">53.42</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.7.3" style="padding-left:5.0pt;padding-right:5.0pt;">53.73</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.7.4" style="padding-left:5.0pt;padding-right:5.0pt;">54.25</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.7.5" style="padding-left:5.0pt;padding-right:5.0pt;">55.08</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.7.6" style="padding-left:5.0pt;padding-right:5.0pt;">54.12</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.8">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.3.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.3.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">53.63</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.3.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">53.63</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.3.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">53.63</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.3.8.5" style="padding-left:5.0pt;padding-right:5.0pt;">55.18</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.3.8.6" style="padding-left:5.0pt;padding-right:5.0pt;">54.01</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different scaling factors (δ) on the performance of the VideoRoPE model.  The study focuses on the LongVideoBench benchmark, evaluating performance across four different context lengths (8k, 16k, 32k, 64k) for each scaling factor tested.  The average performance across all context lengths is also reported.  The purpose is to determine the optimal scaling factor that best balances the temporal alignment between text and video tokens, thereby maximizing the model's ability to understand long videos.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation Study About Different Scaling Factor δ𝛿\deltaitalic_δ.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.17">
<tr class="ltx_tr" id="A1.T7.17.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.17.1.1" rowspan="2" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T7.17.1.2" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.1.2.1">LongVideoBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T7.17.1.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.1.3.1">MLVU</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.1" style="padding:0.5pt 5.0pt;">8k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.2" style="padding:0.5pt 5.0pt;">16k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.3" style="padding:0.5pt 5.0pt;">32k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.4" style="padding:0.5pt 5.0pt;">64k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.5" style="padding:0.5pt 5.0pt;">8k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.6" style="padding:0.5pt 5.0pt;">16k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.7" style="padding:0.5pt 5.0pt;">32k</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.2.8" style="padding:0.5pt 5.0pt;">64k</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.17.3.1" style="padding:0.5pt 5.0pt;">VideoRoPE(Sequential)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.2" style="padding:0.5pt 5.0pt;">53.73</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.3" style="padding:0.5pt 5.0pt;">53.52</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.4" style="padding:0.5pt 5.0pt;">54.97</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.5" style="padding:0.5pt 5.0pt;">54.77</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.6" style="padding:0.5pt 5.0pt;">62.75</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.7" style="padding:0.5pt 5.0pt;">63.31</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.8" style="padding:0.5pt 5.0pt;">62.75</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.17.3.9" style="padding:0.5pt 5.0pt;">63.08</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.4" style="background-color:#F2F3F5;">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.17.4.1" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A1.T7.17.4.1.1" style="background-color:#F2F3F5;">VideoRoPE (Interleaved)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.2" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.2.1" style="background-color:#F2F3F5;">54.46</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.3.1" style="background-color:#F2F3F5;">55.29</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.4.1" style="background-color:#F2F3F5;">57.15</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.5.1" style="background-color:#F2F3F5;">57.26</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.6.1" style="background-color:#F2F3F5;">65.19</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.7.1" style="background-color:#F2F3F5;">66.29</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.8.1" style="background-color:#F2F3F5;">66.02</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T7.17.4.9" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.17.4.9.1" style="background-color:#F2F3F5;">65.56</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing two different strategies for allocating the horizontal (x) and vertical (y) dimensions in the VideoRoPE positional encoding scheme.  The 'Sequential' allocation method assigns all x dimensions consecutively followed by all y dimensions, mirroring the approach used in M-ROPE (Wang et al., 2024b).  In contrast, the 'Interleaved' method alternates between x and y dimensions, which is similar to the approach used in Agrawal et al. (2024). The table shows the performance of both methods on the Long VideoBench and MLVU benchmarks using 8k, 16k, 32k, and 64k context lengths to evaluate the impact of the different allocation strategies on model performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation Study on x𝑥xitalic_x, y𝑦yitalic_y Allocation. VideoRoPE (Sequential) represents the sequential allocation of x𝑥xitalic_x and y𝑦yitalic_y, following the pattern x,x,x,…,y,y,y,…𝑥𝑥𝑥…𝑦𝑦𝑦…x,x,x,\dots,y,y,y,\dotsitalic_x , italic_x , italic_x , … , italic_y , italic_y , italic_y , … (similar to M-RoPE (Wang et al., 2024b)). VideoRoPE (Interleaved) represents the interleaved allocation, following the pattern x,y,x,y,…𝑥𝑦𝑥𝑦…x,y,x,y,\dotsitalic_x , italic_y , italic_x , italic_y , … (similar to Agrawal et al. (2024)).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T8.4">
<tr class="ltx_tr" id="A1.T8.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.4.1.1" rowspan="2" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T8.4.1.2" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.1.2.1">LongVideoBench</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.2.1" style="padding:0.5pt 5.0pt;">64k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.2.2" style="padding:0.5pt 5.0pt;">128k</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.4.3.1" style="padding:0.5pt 5.0pt;">Vanilla RoPE <cite class="ltx_cite ltx_citemacro_citep">(Su et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib52" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.3.2" style="padding:0.5pt 5.0pt;">54.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.3.3" style="padding:0.5pt 5.0pt;">48.01</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4">
<td class="ltx_td ltx_align_left" id="A1.T8.4.4.1" style="padding:0.5pt 5.0pt;">TAD-RoPE <cite class="ltx_cite ltx_citemacro_citep">(Gao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.2" style="padding:0.5pt 5.0pt;">53.42</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.3" style="padding:0.5pt 5.0pt;">45.77</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.5">
<td class="ltx_td ltx_align_left" id="A1.T8.4.5.1" style="padding:0.5pt 5.0pt;">M-RoPE <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.05173v1#bib.bib60" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.5.2" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.5.2.1">54.35</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.5.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.4.5.3.1">51.45</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.6" style="background-color:#F2F3F5;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T8.4.6.1" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A1.T8.4.6.1.1" style="background-color:#F2F3F5;">VideoRoPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.4.6.2" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.6.2.1" style="background-color:#F2F3F5;">57.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.4.6.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.6.3.1" style="background-color:#F2F3F5;">55.64</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of four different video rotary position embedding (RoPE) methods—Vanilla RoPE, TAD-ROPE, M-ROPE, and VideoRoPE—when evaluated on the LongVideoBench benchmark dataset.  The comparison is made using two different context lengths: 64k and 128k tokens, allowing for an assessment of how each method scales to extremely long sequences.  The results showcase the accuracy (as measured by the LongVideoBench metric) obtained by each method at both context lengths, enabling an analysis of their relative performance and robustness when processing very long video sequences.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of model performance at 64k and 128k context lengths for different methods.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05173/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05173/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}