---
title: "AMD-Hummingbird: Towards an Efficient Text-to-Video Model"
summary: "Hummingbird: An efficient text-to-video model that balances quality and computational efficiency via pruning and visual feedback learning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Advanced Micro Devices, Inc.",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18559 {{< /keyword >}}
{{< keyword icon="writer" >}} Takashi Isobe et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18559" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18559" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18559/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Text-to-Video (T2V) generation has gained traction, but balancing visual quality with computational efficiency, especially on devices with limited resources (e.g., iGPUs, mobile phones), is challenging. Existing models often prioritize visual fidelity, neglecting the need for smaller, more efficient models suitable for real-world deployment. Thus, how do we achieve both computational efficiency and high visual performance, and the large model sizes hinder deployment on edge devices. To address this, a novel approach in needed to pruning the network structure without causing performance degradation. 



To tackle this, the paper introduces **Hummingbird, a lightweight T2V framework** that prunes existing models and enhances visual quality through visual feedback learning, reducing the U-Net size from 1.4B to 0.7B parameters. It also presents a novel data processing pipeline using Large Language Models (LLMs) and Video Quality Assessment (VQA) models to improve text prompts and video data quality. Experimental results demonstrate a 31× speedup over state-of-the-art models like VideoCrafter2, achieving the highest VBench score. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Proposed network pruning strategy reduces model parameters while maintaining visual quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduced a data processing pipeline leveraging LLMs to enhance text prompts and video quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieved a 31x speedup over state-of-the-art models while attaining the highest overall score on VBench. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **introduces a new efficient T2V generation framework** that addresses the limitations of existing models. It’s relevant to current research trends focused on **improving the scalability and performance of AI models** on resource-constrained devices, opening avenues for real-world applications and further investigations into efficient AI solutions.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18559/x1.png)

> 🔼 This figure illustrates the data processing pipeline used to enhance the quality of the training data for the text-to-video model. The pipeline consists of three main stages: 1) Video Quality Assessment: This stage uses a VQA model to evaluate the quality of videos based on metrics like aesthetics and compression, discarding low-quality videos.  2) Motion Filtering: This stage employs a motion estimation module to filter out videos with undesirable motion characteristics (e.g., dolly zoom effects). This filtering focuses the training data on videos with more natural and consistent movements, enhancing the model's understanding of typical video characteristics. 3) Prompt Re-captioning: In this stage, large language models (LLMs) are utilized to rephrase or re-caption the text prompts associated with each video.  The goal is to refine the prompts to be more accurate, consistent, and effective in guiding the video generation process. The improved data from all these stages are used to feed into the training of the T2V model, improving overall visual quality and model performance.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Illustration of the proposed data processing pipeline, which includes video quality assessment, motion filtering, and prompt re-captioning using large language models to improve training data quality.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.7.1">
<tr class="ltx_tr" id="S4.T1.7.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.7.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S4.T1.7.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.1.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.2.2">Total</span>
</td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.7.1.1.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.2">
<td class="ltx_td" id="S4.T1.7.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.2.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.2.2.2">Quality</span>
</td>
<td class="ltx_td" id="S4.T1.7.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.2.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.2.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.3">
<td class="ltx_td" id="S4.T1.7.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.3.2.1">\Centerstack</span>Subject</td>
<td class="ltx_td" id="S4.T1.7.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.3.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.3.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.4">
<td class="ltx_td" id="S4.T1.7.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.4.2.1">\Centerstack</span>BG</td>
<td class="ltx_td" id="S4.T1.7.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.4.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.5">
<td class="ltx_td" id="S4.T1.7.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.5.2.1">\Centerstack</span>Temporal</td>
<td class="ltx_td" id="S4.T1.7.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.5.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.5.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.6">
<td class="ltx_td" id="S4.T1.7.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.6.2.1">\Centerstack</span>Motion</td>
<td class="ltx_td" id="S4.T1.7.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.6.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.7">
<td class="ltx_td" id="S4.T1.7.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.7.2.1">\Centerstack</span>Aesthetic</td>
<td class="ltx_td" id="S4.T1.7.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.7.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.7.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.7.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.7.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.8">
<td class="ltx_td" id="S4.T1.7.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.8.2.1">\Centerstack</span>Dynamic</td>
<td class="ltx_td" id="S4.T1.7.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.8.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.8.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.8.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.8.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.9">
<td class="ltx_td" id="S4.T1.7.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.7.1.9.2.1">\Centerstack</span>Image</td>
<td class="ltx_td" id="S4.T1.7.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.9.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.9.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.9.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.9.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.10">
<td class="ltx_td" id="S4.T1.7.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.7.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">Quality</td>
<td class="ltx_td" id="S4.T1.7.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T1.7.1.10.10" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.7.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">ModelScopeT2V</td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T1.7.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">75.75</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">78.05</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">89.87</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">95.29</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.11.6" style="padding-left:3.0pt;padding-right:3.0pt;">98.28</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.11.7" style="padding-left:3.0pt;padding-right:3.0pt;">95.79</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.11.8" style="padding-left:3.0pt;padding-right:3.0pt;">52.06</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.7.1.11.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.11.9.1">66.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.1.11.10" style="padding-left:3.0pt;padding-right:3.0pt;">58.57</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">LaVie</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">77.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">78.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">91.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">97.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">98.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.12.7" style="padding-left:3.0pt;padding-right:3.0pt;">96.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.12.8" style="padding-left:3.0pt;padding-right:3.0pt;">54.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.12.9" style="padding-left:3.0pt;padding-right:3.0pt;">49.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.12.10" style="padding-left:3.0pt;padding-right:3.0pt;">61.90</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">Show-1</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">78.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">80.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">95.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">98.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.6" style="padding-left:3.0pt;padding-right:3.0pt;">99.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.7" style="padding-left:3.0pt;padding-right:3.0pt;">98.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.8" style="padding-left:3.0pt;padding-right:3.0pt;">57.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.13.9" style="padding-left:3.0pt;padding-right:3.0pt;">44.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.13.10" style="padding-left:3.0pt;padding-right:3.0pt;">58.66</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">VideoCrafter1</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">79.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">81.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">95.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">98.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">98.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.7" style="padding-left:3.0pt;padding-right:3.0pt;">95.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.8" style="padding-left:3.0pt;padding-right:3.0pt;">62.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.14.9" style="padding-left:3.0pt;padding-right:3.0pt;">55.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.14.10" style="padding-left:3.0pt;padding-right:3.0pt;">65.46</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">Pika</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">80.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">82.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">96.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.15.5.1">98.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.15.6.1">99.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.15.7.1">99.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.8" style="padding-left:3.0pt;padding-right:3.0pt;">63.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.15.9" style="padding-left:3.0pt;padding-right:3.0pt;">37.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.15.10" style="padding-left:3.0pt;padding-right:3.0pt;">62.33</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.16.1" style="padding-left:3.0pt;padding-right:3.0pt;">VideoCrafter2</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.16.2" style="padding-left:3.0pt;padding-right:3.0pt;">80.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.16.3" style="padding-left:3.0pt;padding-right:3.0pt;">82.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.16.4" style="padding-left:3.0pt;padding-right:3.0pt;">96.85</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.16.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.16.5.1">98.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.16.6" style="padding-left:3.0pt;padding-right:3.0pt;">98.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.16.7" style="padding-left:3.0pt;padding-right:3.0pt;">97.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.16.8" style="padding-left:3.0pt;padding-right:3.0pt;">63.13</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.16.9" style="padding-left:3.0pt;padding-right:3.0pt;">42.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.16.10" style="padding-left:3.0pt;padding-right:3.0pt;">67.22</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">Gen-2</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.17.2" style="padding-left:3.0pt;padding-right:3.0pt;">80.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.17.3" style="padding-left:3.0pt;padding-right:3.0pt;">82.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.17.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.17.4.1">97.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.17.5" style="padding-left:3.0pt;padding-right:3.0pt;">97.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.17.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.17.6.1">99.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.17.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.17.7.1">99.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.17.8" style="padding-left:3.0pt;padding-right:3.0pt;">66.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.17.9" style="padding-left:3.0pt;padding-right:3.0pt;">18.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.17.10" style="padding-left:3.0pt;padding-right:3.0pt;">67.42</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">AnimateLCM</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">77.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">80.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">96.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.18.5" style="padding-left:3.0pt;padding-right:3.0pt;">96.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.18.6" style="padding-left:3.0pt;padding-right:3.0pt;">98.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.18.7" style="padding-left:3.0pt;padding-right:3.0pt;">98.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.18.8" style="padding-left:3.0pt;padding-right:3.0pt;">63.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.18.9" style="padding-left:3.0pt;padding-right:3.0pt;">33.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.18.10" style="padding-left:3.0pt;padding-right:3.0pt;">62.30</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">VideoLCM</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">73.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">77.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">96.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">97.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.19.6" style="padding-left:3.0pt;padding-right:3.0pt;">97.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.19.7" style="padding-left:3.0pt;padding-right:3.0pt;">97.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.19.8" style="padding-left:3.0pt;padding-right:3.0pt;">59.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.19.9" style="padding-left:3.0pt;padding-right:3.0pt;">5.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.19.10" style="padding-left:3.0pt;padding-right:3.0pt;">66.43</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">T2V-Turbo</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.20.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.20.2.1">81.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">82.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">96.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">97.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.20.6" style="padding-left:3.0pt;padding-right:3.0pt;">97.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.20.7" style="padding-left:3.0pt;padding-right:3.0pt;">97.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.20.8" style="padding-left:3.0pt;padding-right:3.0pt;">63.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.20.9" style="padding-left:3.0pt;padding-right:3.0pt;">49.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.20.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.20.10.1">72.49</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.21.1" style="padding-left:3.0pt;padding-right:3.0pt;">Hummingbird 16 frames (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.21.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.21.2.1">81.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.21.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.21.3.1">83.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.21.4" style="padding-left:3.0pt;padding-right:3.0pt;">95.87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.21.5" style="padding-left:3.0pt;padding-right:3.0pt;">96.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.21.6" style="padding-left:3.0pt;padding-right:3.0pt;">95.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.21.7" style="padding-left:3.0pt;padding-right:3.0pt;">96.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.21.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.21.8.1">68.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.21.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.21.9.1">79.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.21.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.21.10.1">71.04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.1.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.1.22.1" style="padding-left:3.0pt;padding-right:3.0pt;">Hummingbird 26 frames (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T1.7.1.22.2" style="padding-left:3.0pt;padding-right:3.0pt;">80.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.22.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.22.3.1">83.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.22.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.22.4.1">96.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.22.5" style="padding-left:3.0pt;padding-right:3.0pt;">97.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.22.6" style="padding-left:3.0pt;padding-right:3.0pt;">97.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.22.7" style="padding-left:3.0pt;padding-right:3.0pt;">96.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.22.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.7.1.22.8.1">67.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.1.22.9" style="padding-left:3.0pt;padding-right:3.0pt;">50.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.1.22.10" style="padding-left:3.0pt;padding-right:3.0pt;">69.94</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of eleven video generation models using the VBench benchmark. VBench evaluates video quality across sixteen distinct dimensions.  The table shows each model's score for every dimension, highlighting the strengths and weaknesses of each model.  Higher scores signify better performance. The best score in each dimension is bolded, and the second-best score is underlined, allowing for easy identification of top-performing models in specific aspects of video generation. This detailed comparison facilitates a nuanced understanding of the relative merits of different approaches to video generation.
> <details>
> <summary>read the caption</summary>
> Table 1: VBench [28] Evaluation Results by Dimension. This table compares the performance of 11 video generation models across the 16 individual dimensions defined in VBench. A higher score indicates better performance for each dimension. The best result for each dimension is shown in bold, and the second-best result is underlined.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18559/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18559/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}