---
title: "Intuitive physics understanding emerges from self-supervised pretraining on natural videos"
summary: "AI models learn intuitive physics from self-supervised video pretraining."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Meta AI",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11831 {{< /keyword >}}
{{< keyword icon="writer" >}} Quentin Garrido et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11831" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11831" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11831/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current AI struggles with common-sense reasoning about physical interactions.  Existing models either rely on hand-crafted rules (structured models) or struggle with generalization from pixel-level data (pixel-based models).  Both approaches have limitations: structured models lack flexibility, while pixel-based models lack generalizability. This paper introduces V-JEPA, a novel video prediction model trained using a self-supervised learning approach on natural videos.  



V-JEPA learns to predict masked regions of videos within a learned representation space.  By evaluating the model's 'surprise' at unexpected events, the researchers show that V-JEPA demonstrably understands several intuitive physics principles.  This significantly outperforms other state-of-the-art models, suggesting **self-supervised learning in abstract representation spaces** is key to developing intuitive physics understanding in AI. This **challenges assumptions about the need for innate knowledge** in humans and presents a new paradigm for building AI with robust common-sense reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Intuitive physics understanding emerges from self-supervised pretraining on natural videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Video prediction models trained in a learned representation space, unlike pixel-space prediction or language models, demonstrate a strong grasp of intuitive physics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} This work challenges the 'core knowledge hypothesis', suggesting innate knowledge may not be necessary for developing intuitive physics understanding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it challenges the long-held belief that innate knowledge is necessary for understanding intuitive physics.  It demonstrates that **self-supervised learning on natural videos**, using a novel approach, can enable AI models to develop this understanding, opening new avenues for AI development and cognitive science research. The findings **suggest that general-purpose learning mechanisms are sufficient to acquire such knowledge**, prompting further research into the nature of intuitive physics and its implications for both AI and human cognition.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11831/x1.png)

> 🔼 Figure 1 demonstrates that V-JEPA, a video prediction model operating in a learned representation space, develops an understanding of intuitive physics.  Panel A compares V-JEPA's performance on three intuitive physics datasets (IntPhys, GRASP, InfLevel) to other video models using a Violation of Expectation paradigm.  V-JEPA shows significantly higher surprise responses to physically implausible videos than other models, including those trained on text or pixel-based prediction.  Untrained V-JEPA models show performance close to chance. Panel B illustrates the V-JEPA training process: it learns to predict the representation of a complete video given a corrupted version, thus learning a meaningful representation space. Panel C explains how the surprise metric is calculated from trained V-JEPA: future frame representations are predicted based on past frames and compared to actual representations to quantify surprise, allowing for the detection of physical violations.
> <details>
> <summary>read the caption</summary>
> Figure 1: Video prediction in representation space (V-JEPA) achieves an understanding of intuitive physics. (A) Video models are evaluated on three intuitive physics datasets using the Violation of Expectation paradigm (IntPhys, GRASP, and InfLevel). V-JEPA is significantly more ‘surprised’ by implausible videos. Random initializations of V-JEPA (untrained networks) show near-chance performance, and state-of-the-art video models based on text or pixel prediction are much closer to chance. Confidence intervals at 95% are obtained via bootstrapping, except for untrained networks (n=20𝑛20n=20italic_n = 20) which use a normal distribution assumption. (B) V-JEPA is trained to ’inpaint’ natural videos in a learned representation space. Starting from a video and a corrupted version, representations are first extracted. The goal is then to predict the representation of the original video from the representation of the corrupted ones. (C) From a trained V-JEPA, we compute a surprise metric by predicting representations of N future frames based on M past ones and comparing the predictions to the representations of observed events. The surprise metric is then used to decide which of the two videos contains a physical violation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T1.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.9.10.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Hyper-parameter</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.9.10.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">ViT-B/16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.9.10.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">ViT-L/16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.9.10.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">ViT-H/16</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.9.11.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.9.11.2.1.1">positional embeddings</span></th>
<td class="ltx_td ltx_border_t" id="S1.T1.9.11.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.11.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.11.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.12.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Type</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.12.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">RoPE</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.12.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">RoPE</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.12.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">RoPE</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.13.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">theta</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.13.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">10000</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.13.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">10000</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.13.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">10000</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.9.14.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.9.14.5.1.1">data</span></th>
<td class="ltx_td ltx_border_t" id="S1.T1.9.14.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.14.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.14.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.15.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">resolution</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.15.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">224</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.15.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">224</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.15.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">224</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.16.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">num_frames</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.16.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.16.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.16.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">16</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.17.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">framerate</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.17.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">5.33 fps</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.17.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">5.33 fps</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.17.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">5.33 fps</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.18.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.18.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">horizontal_flip</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.18.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">true</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.18.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">true</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.18.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">true</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.19.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">random_resize_scale</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.19.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">(0.3, 1.0)</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.19.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">(0.3, 1.0)</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.19.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">(0.3, 1.0)</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.20.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.20.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">random_resize_aspect_ratio</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.20.11.2" style="padding-left:2.0pt;padding-right:2.0pt;">(0.75, 1.35)</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.20.11.3" style="padding-left:2.0pt;padding-right:2.0pt;">(0.75, 1.35)</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.20.11.4" style="padding-left:2.0pt;padding-right:2.0pt;">(0.75, 1.35)</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.21.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.9.21.12.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.9.21.12.1.1">masking</span></th>
<td class="ltx_td ltx_border_t" id="S1.T1.9.21.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.21.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.21.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.22.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.22.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">block_aspect_ratio</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.22.13.2" style="padding-left:2.0pt;padding-right:2.0pt;">(0.75, 1.5)</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.22.13.3" style="padding-left:2.0pt;padding-right:2.0pt;">(0.75, 1.5)</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.22.13.4" style="padding-left:2.0pt;padding-right:2.0pt;">(0.75,1.5)</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.23.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.23.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">shortrange_mask_num_blocks</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.23.14.2" style="padding-left:2.0pt;padding-right:2.0pt;">8</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.23.14.3" style="padding-left:2.0pt;padding-right:2.0pt;">8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.23.14.4" style="padding-left:2.0pt;padding-right:2.0pt;">8</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.24.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.24.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">shortrange_mask_spatial_scale</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.24.15.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.15</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.24.15.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.24.15.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.15</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.25.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.25.16.1" style="padding-left:2.0pt;padding-right:2.0pt;">longrange_mask_num_blocks</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.25.16.2" style="padding-left:2.0pt;padding-right:2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.25.16.3" style="padding-left:2.0pt;padding-right:2.0pt;">2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.25.16.4" style="padding-left:2.0pt;padding-right:2.0pt;">2</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.26.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.26.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">longrange_mask_spatial_scale</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.26.17.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.7</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.26.17.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.26.17.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.7</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.27.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.9.27.18.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.9.27.18.1.1">optimization</span></th>
<td class="ltx_td ltx_border_t" id="S1.T1.9.27.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.27.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.27.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.28.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.28.19.1" style="padding-left:2.0pt;padding-right:2.0pt;">optimizer</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.28.19.2" style="padding-left:2.0pt;padding-right:2.0pt;">AdamW</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.28.19.3" style="padding-left:2.0pt;padding-right:2.0pt;">AdamW</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.28.19.4" style="padding-left:2.0pt;padding-right:2.0pt;">AdamW</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.29.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.29.20.1" style="padding-left:2.0pt;padding-right:2.0pt;">batch_size</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.29.20.2" style="padding-left:2.0pt;padding-right:2.0pt;">3072</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.29.20.3" style="padding-left:2.0pt;padding-right:2.0pt;">3072</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.29.20.4" style="padding-left:2.0pt;padding-right:2.0pt;">3072</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.30.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.30.21.1" style="padding-left:2.0pt;padding-right:2.0pt;">total_number_of_iterations</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.30.21.2" style="padding-left:2.0pt;padding-right:2.0pt;">90000</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.30.21.3" style="padding-left:2.0pt;padding-right:2.0pt;">90000</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.30.21.4" style="padding-left:2.0pt;padding-right:2.0pt;">90000</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.31.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.31.22.1" style="padding-left:2.0pt;padding-right:2.0pt;">scheduler</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.31.22.2" style="padding-left:2.0pt;padding-right:2.0pt;">Linear + Cosine</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.31.22.3" style="padding-left:2.0pt;padding-right:2.0pt;">Linear + Cosine</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.31.22.4" style="padding-left:2.0pt;padding-right:2.0pt;">Linear + Cosine</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.32.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.32.23.1" style="padding-left:2.0pt;padding-right:2.0pt;">warmup_iterations</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.32.23.2" style="padding-left:2.0pt;padding-right:2.0pt;">12000</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.32.23.3" style="padding-left:2.0pt;padding-right:2.0pt;">12000</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.32.23.4" style="padding-left:2.0pt;padding-right:2.0pt;">12000</td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">learning_rate</th>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">6.25<math alttext="\times 10^{-4}" class="ltx_Math" display="inline" id="S1.T1.1.1.1.m1.1"><semantics id="S1.T1.1.1.1.m1.1a"><mrow id="S1.T1.1.1.1.m1.1.1" xref="S1.T1.1.1.1.m1.1.1.cmml"><mi id="S1.T1.1.1.1.m1.1.1.2" xref="S1.T1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S1.T1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S1.T1.1.1.1.m1.1.1.3" xref="S1.T1.1.1.1.m1.1.1.3.cmml"><mn id="S1.T1.1.1.1.m1.1.1.3.2" xref="S1.T1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.1.1.1.m1.1.1.3.3" xref="S1.T1.1.1.1.m1.1.1.3.3.cmml"><mo id="S1.T1.1.1.1.m1.1.1.3.3a" xref="S1.T1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.1.1.1.m1.1.1.3.3.2" xref="S1.T1.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.m1.1b"><apply id="S1.T1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.m1.1.1"><times id="S1.T1.1.1.1.m1.1.1.1.cmml" xref="S1.T1.1.1.1.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.1.1.1.m1.1.1.2.cmml" xref="S1.T1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S1.T1.1.1.1.m1.1.1.3.cmml" xref="S1.T1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.1.1.1.m1.1.1.3.1.cmml" xref="S1.T1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S1.T1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.1.1.1.m1.1.1.3.2">10</cn><apply id="S1.T1.1.1.1.m1.1.1.3.3.cmml" xref="S1.T1.1.1.1.m1.1.1.3.3"><minus id="S1.T1.1.1.1.m1.1.1.3.3.1.cmml" xref="S1.T1.1.1.1.m1.1.1.3.3"></minus><cn id="S1.T1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.m1.1c">\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">6.25<math alttext="\times 10^{-4}" class="ltx_Math" display="inline" id="S1.T1.2.2.2.m1.1"><semantics id="S1.T1.2.2.2.m1.1a"><mrow id="S1.T1.2.2.2.m1.1.1" xref="S1.T1.2.2.2.m1.1.1.cmml"><mi id="S1.T1.2.2.2.m1.1.1.2" xref="S1.T1.2.2.2.m1.1.1.2.cmml"></mi><mo id="S1.T1.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.2.2.2.m1.1.1.1.cmml">×</mo><msup id="S1.T1.2.2.2.m1.1.1.3" xref="S1.T1.2.2.2.m1.1.1.3.cmml"><mn id="S1.T1.2.2.2.m1.1.1.3.2" xref="S1.T1.2.2.2.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.2.2.2.m1.1.1.3.3" xref="S1.T1.2.2.2.m1.1.1.3.3.cmml"><mo id="S1.T1.2.2.2.m1.1.1.3.3a" xref="S1.T1.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.2.2.2.m1.1.1.3.3.2" xref="S1.T1.2.2.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.2.m1.1b"><apply id="S1.T1.2.2.2.m1.1.1.cmml" xref="S1.T1.2.2.2.m1.1.1"><times id="S1.T1.2.2.2.m1.1.1.1.cmml" xref="S1.T1.2.2.2.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.2.2.2.m1.1.1.2.cmml" xref="S1.T1.2.2.2.m1.1.1.2">absent</csymbol><apply id="S1.T1.2.2.2.m1.1.1.3.cmml" xref="S1.T1.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.2.2.2.m1.1.1.3.1.cmml" xref="S1.T1.2.2.2.m1.1.1.3">superscript</csymbol><cn id="S1.T1.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.2.2.2.m1.1.1.3.2">10</cn><apply id="S1.T1.2.2.2.m1.1.1.3.3.cmml" xref="S1.T1.2.2.2.m1.1.1.3.3"><minus id="S1.T1.2.2.2.m1.1.1.3.3.1.cmml" xref="S1.T1.2.2.2.m1.1.1.3.3"></minus><cn id="S1.T1.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.2.2.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.2.m1.1c">\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.2.m1.1d">× 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">6.25<math alttext="\times 10^{-4}" class="ltx_Math" display="inline" id="S1.T1.3.3.3.m1.1"><semantics id="S1.T1.3.3.3.m1.1a"><mrow id="S1.T1.3.3.3.m1.1.1" xref="S1.T1.3.3.3.m1.1.1.cmml"><mi id="S1.T1.3.3.3.m1.1.1.2" xref="S1.T1.3.3.3.m1.1.1.2.cmml"></mi><mo id="S1.T1.3.3.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.3.3.3.m1.1.1.1.cmml">×</mo><msup id="S1.T1.3.3.3.m1.1.1.3" xref="S1.T1.3.3.3.m1.1.1.3.cmml"><mn id="S1.T1.3.3.3.m1.1.1.3.2" xref="S1.T1.3.3.3.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.3.3.3.m1.1.1.3.3" xref="S1.T1.3.3.3.m1.1.1.3.3.cmml"><mo id="S1.T1.3.3.3.m1.1.1.3.3a" xref="S1.T1.3.3.3.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.3.3.3.m1.1.1.3.3.2" xref="S1.T1.3.3.3.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.3.m1.1b"><apply id="S1.T1.3.3.3.m1.1.1.cmml" xref="S1.T1.3.3.3.m1.1.1"><times id="S1.T1.3.3.3.m1.1.1.1.cmml" xref="S1.T1.3.3.3.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.3.3.3.m1.1.1.2.cmml" xref="S1.T1.3.3.3.m1.1.1.2">absent</csymbol><apply id="S1.T1.3.3.3.m1.1.1.3.cmml" xref="S1.T1.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.3.3.3.m1.1.1.3.1.cmml" xref="S1.T1.3.3.3.m1.1.1.3">superscript</csymbol><cn id="S1.T1.3.3.3.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.3.3.3.m1.1.1.3.2">10</cn><apply id="S1.T1.3.3.3.m1.1.1.3.3.cmml" xref="S1.T1.3.3.3.m1.1.1.3.3"><minus id="S1.T1.3.3.3.m1.1.1.3.3.1.cmml" xref="S1.T1.3.3.3.m1.1.1.3.3"></minus><cn id="S1.T1.3.3.3.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.3.3.3.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.3.m1.1c">\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.3.m1.1d">× 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">start_lr</th>
<td class="ltx_td ltx_align_center" id="S1.T1.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">2<math alttext="\times 10^{-4}" class="ltx_Math" display="inline" id="S1.T1.4.4.1.m1.1"><semantics id="S1.T1.4.4.1.m1.1a"><mrow id="S1.T1.4.4.1.m1.1.1" xref="S1.T1.4.4.1.m1.1.1.cmml"><mi id="S1.T1.4.4.1.m1.1.1.2" xref="S1.T1.4.4.1.m1.1.1.2.cmml"></mi><mo id="S1.T1.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.4.4.1.m1.1.1.1.cmml">×</mo><msup id="S1.T1.4.4.1.m1.1.1.3" xref="S1.T1.4.4.1.m1.1.1.3.cmml"><mn id="S1.T1.4.4.1.m1.1.1.3.2" xref="S1.T1.4.4.1.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.4.4.1.m1.1.1.3.3" xref="S1.T1.4.4.1.m1.1.1.3.3.cmml"><mo id="S1.T1.4.4.1.m1.1.1.3.3a" xref="S1.T1.4.4.1.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.4.4.1.m1.1.1.3.3.2" xref="S1.T1.4.4.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.1.m1.1b"><apply id="S1.T1.4.4.1.m1.1.1.cmml" xref="S1.T1.4.4.1.m1.1.1"><times id="S1.T1.4.4.1.m1.1.1.1.cmml" xref="S1.T1.4.4.1.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.4.4.1.m1.1.1.2.cmml" xref="S1.T1.4.4.1.m1.1.1.2">absent</csymbol><apply id="S1.T1.4.4.1.m1.1.1.3.cmml" xref="S1.T1.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.4.4.1.m1.1.1.3.1.cmml" xref="S1.T1.4.4.1.m1.1.1.3">superscript</csymbol><cn id="S1.T1.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.4.4.1.m1.1.1.3.2">10</cn><apply id="S1.T1.4.4.1.m1.1.1.3.3.cmml" xref="S1.T1.4.4.1.m1.1.1.3.3"><minus id="S1.T1.4.4.1.m1.1.1.3.3.1.cmml" xref="S1.T1.4.4.1.m1.1.1.3.3"></minus><cn id="S1.T1.4.4.1.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.4.4.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.1.m1.1c">\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">2<math alttext="\times 10^{-4}" class="ltx_Math" display="inline" id="S1.T1.5.5.2.m1.1"><semantics id="S1.T1.5.5.2.m1.1a"><mrow id="S1.T1.5.5.2.m1.1.1" xref="S1.T1.5.5.2.m1.1.1.cmml"><mi id="S1.T1.5.5.2.m1.1.1.2" xref="S1.T1.5.5.2.m1.1.1.2.cmml"></mi><mo id="S1.T1.5.5.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.5.5.2.m1.1.1.1.cmml">×</mo><msup id="S1.T1.5.5.2.m1.1.1.3" xref="S1.T1.5.5.2.m1.1.1.3.cmml"><mn id="S1.T1.5.5.2.m1.1.1.3.2" xref="S1.T1.5.5.2.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.5.5.2.m1.1.1.3.3" xref="S1.T1.5.5.2.m1.1.1.3.3.cmml"><mo id="S1.T1.5.5.2.m1.1.1.3.3a" xref="S1.T1.5.5.2.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.5.5.2.m1.1.1.3.3.2" xref="S1.T1.5.5.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.2.m1.1b"><apply id="S1.T1.5.5.2.m1.1.1.cmml" xref="S1.T1.5.5.2.m1.1.1"><times id="S1.T1.5.5.2.m1.1.1.1.cmml" xref="S1.T1.5.5.2.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.5.5.2.m1.1.1.2.cmml" xref="S1.T1.5.5.2.m1.1.1.2">absent</csymbol><apply id="S1.T1.5.5.2.m1.1.1.3.cmml" xref="S1.T1.5.5.2.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.5.5.2.m1.1.1.3.1.cmml" xref="S1.T1.5.5.2.m1.1.1.3">superscript</csymbol><cn id="S1.T1.5.5.2.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.5.5.2.m1.1.1.3.2">10</cn><apply id="S1.T1.5.5.2.m1.1.1.3.3.cmml" xref="S1.T1.5.5.2.m1.1.1.3.3"><minus id="S1.T1.5.5.2.m1.1.1.3.3.1.cmml" xref="S1.T1.5.5.2.m1.1.1.3.3"></minus><cn id="S1.T1.5.5.2.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.5.5.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.2.m1.1c">\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.2.m1.1d">× 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">2<math alttext="\times 10^{-4}" class="ltx_Math" display="inline" id="S1.T1.6.6.3.m1.1"><semantics id="S1.T1.6.6.3.m1.1a"><mrow id="S1.T1.6.6.3.m1.1.1" xref="S1.T1.6.6.3.m1.1.1.cmml"><mi id="S1.T1.6.6.3.m1.1.1.2" xref="S1.T1.6.6.3.m1.1.1.2.cmml"></mi><mo id="S1.T1.6.6.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.6.6.3.m1.1.1.1.cmml">×</mo><msup id="S1.T1.6.6.3.m1.1.1.3" xref="S1.T1.6.6.3.m1.1.1.3.cmml"><mn id="S1.T1.6.6.3.m1.1.1.3.2" xref="S1.T1.6.6.3.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.6.6.3.m1.1.1.3.3" xref="S1.T1.6.6.3.m1.1.1.3.3.cmml"><mo id="S1.T1.6.6.3.m1.1.1.3.3a" xref="S1.T1.6.6.3.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.6.6.3.m1.1.1.3.3.2" xref="S1.T1.6.6.3.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.6.6.3.m1.1b"><apply id="S1.T1.6.6.3.m1.1.1.cmml" xref="S1.T1.6.6.3.m1.1.1"><times id="S1.T1.6.6.3.m1.1.1.1.cmml" xref="S1.T1.6.6.3.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.6.6.3.m1.1.1.2.cmml" xref="S1.T1.6.6.3.m1.1.1.2">absent</csymbol><apply id="S1.T1.6.6.3.m1.1.1.3.cmml" xref="S1.T1.6.6.3.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.6.6.3.m1.1.1.3.1.cmml" xref="S1.T1.6.6.3.m1.1.1.3">superscript</csymbol><cn id="S1.T1.6.6.3.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.6.6.3.m1.1.1.3.2">10</cn><apply id="S1.T1.6.6.3.m1.1.1.3.3.cmml" xref="S1.T1.6.6.3.m1.1.1.3.3"><minus id="S1.T1.6.6.3.m1.1.1.3.3.1.cmml" xref="S1.T1.6.6.3.m1.1.1.3.3"></minus><cn id="S1.T1.6.6.3.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.6.6.3.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.6.6.3.m1.1c">\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.6.6.3.m1.1d">× 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">final_lr</th>
<td class="ltx_td ltx_align_center" id="S1.T1.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">1<math alttext="\times 10^{-6}" class="ltx_Math" display="inline" id="S1.T1.7.7.1.m1.1"><semantics id="S1.T1.7.7.1.m1.1a"><mrow id="S1.T1.7.7.1.m1.1.1" xref="S1.T1.7.7.1.m1.1.1.cmml"><mi id="S1.T1.7.7.1.m1.1.1.2" xref="S1.T1.7.7.1.m1.1.1.2.cmml"></mi><mo id="S1.T1.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.7.7.1.m1.1.1.1.cmml">×</mo><msup id="S1.T1.7.7.1.m1.1.1.3" xref="S1.T1.7.7.1.m1.1.1.3.cmml"><mn id="S1.T1.7.7.1.m1.1.1.3.2" xref="S1.T1.7.7.1.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.7.7.1.m1.1.1.3.3" xref="S1.T1.7.7.1.m1.1.1.3.3.cmml"><mo id="S1.T1.7.7.1.m1.1.1.3.3a" xref="S1.T1.7.7.1.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.7.7.1.m1.1.1.3.3.2" xref="S1.T1.7.7.1.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.7.7.1.m1.1b"><apply id="S1.T1.7.7.1.m1.1.1.cmml" xref="S1.T1.7.7.1.m1.1.1"><times id="S1.T1.7.7.1.m1.1.1.1.cmml" xref="S1.T1.7.7.1.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.7.7.1.m1.1.1.2.cmml" xref="S1.T1.7.7.1.m1.1.1.2">absent</csymbol><apply id="S1.T1.7.7.1.m1.1.1.3.cmml" xref="S1.T1.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.7.7.1.m1.1.1.3.1.cmml" xref="S1.T1.7.7.1.m1.1.1.3">superscript</csymbol><cn id="S1.T1.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.7.7.1.m1.1.1.3.2">10</cn><apply id="S1.T1.7.7.1.m1.1.1.3.3.cmml" xref="S1.T1.7.7.1.m1.1.1.3.3"><minus id="S1.T1.7.7.1.m1.1.1.3.3.1.cmml" xref="S1.T1.7.7.1.m1.1.1.3.3"></minus><cn id="S1.T1.7.7.1.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.7.7.1.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.7.7.1.m1.1c">\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.7.7.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">1<math alttext="\times 10^{-6}" class="ltx_Math" display="inline" id="S1.T1.8.8.2.m1.1"><semantics id="S1.T1.8.8.2.m1.1a"><mrow id="S1.T1.8.8.2.m1.1.1" xref="S1.T1.8.8.2.m1.1.1.cmml"><mi id="S1.T1.8.8.2.m1.1.1.2" xref="S1.T1.8.8.2.m1.1.1.2.cmml"></mi><mo id="S1.T1.8.8.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.8.8.2.m1.1.1.1.cmml">×</mo><msup id="S1.T1.8.8.2.m1.1.1.3" xref="S1.T1.8.8.2.m1.1.1.3.cmml"><mn id="S1.T1.8.8.2.m1.1.1.3.2" xref="S1.T1.8.8.2.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.8.8.2.m1.1.1.3.3" xref="S1.T1.8.8.2.m1.1.1.3.3.cmml"><mo id="S1.T1.8.8.2.m1.1.1.3.3a" xref="S1.T1.8.8.2.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.8.8.2.m1.1.1.3.3.2" xref="S1.T1.8.8.2.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.8.8.2.m1.1b"><apply id="S1.T1.8.8.2.m1.1.1.cmml" xref="S1.T1.8.8.2.m1.1.1"><times id="S1.T1.8.8.2.m1.1.1.1.cmml" xref="S1.T1.8.8.2.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.8.8.2.m1.1.1.2.cmml" xref="S1.T1.8.8.2.m1.1.1.2">absent</csymbol><apply id="S1.T1.8.8.2.m1.1.1.3.cmml" xref="S1.T1.8.8.2.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.8.8.2.m1.1.1.3.1.cmml" xref="S1.T1.8.8.2.m1.1.1.3">superscript</csymbol><cn id="S1.T1.8.8.2.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.8.8.2.m1.1.1.3.2">10</cn><apply id="S1.T1.8.8.2.m1.1.1.3.3.cmml" xref="S1.T1.8.8.2.m1.1.1.3.3"><minus id="S1.T1.8.8.2.m1.1.1.3.3.1.cmml" xref="S1.T1.8.8.2.m1.1.1.3.3"></minus><cn id="S1.T1.8.8.2.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.8.8.2.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.8.8.2.m1.1c">\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.8.8.2.m1.1d">× 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">1<math alttext="\times 10^{-6}" class="ltx_Math" display="inline" id="S1.T1.9.9.3.m1.1"><semantics id="S1.T1.9.9.3.m1.1a"><mrow id="S1.T1.9.9.3.m1.1.1" xref="S1.T1.9.9.3.m1.1.1.cmml"><mi id="S1.T1.9.9.3.m1.1.1.2" xref="S1.T1.9.9.3.m1.1.1.2.cmml"></mi><mo id="S1.T1.9.9.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S1.T1.9.9.3.m1.1.1.1.cmml">×</mo><msup id="S1.T1.9.9.3.m1.1.1.3" xref="S1.T1.9.9.3.m1.1.1.3.cmml"><mn id="S1.T1.9.9.3.m1.1.1.3.2" xref="S1.T1.9.9.3.m1.1.1.3.2.cmml">10</mn><mrow id="S1.T1.9.9.3.m1.1.1.3.3" xref="S1.T1.9.9.3.m1.1.1.3.3.cmml"><mo id="S1.T1.9.9.3.m1.1.1.3.3a" xref="S1.T1.9.9.3.m1.1.1.3.3.cmml">−</mo><mn id="S1.T1.9.9.3.m1.1.1.3.3.2" xref="S1.T1.9.9.3.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.9.9.3.m1.1b"><apply id="S1.T1.9.9.3.m1.1.1.cmml" xref="S1.T1.9.9.3.m1.1.1"><times id="S1.T1.9.9.3.m1.1.1.1.cmml" xref="S1.T1.9.9.3.m1.1.1.1"></times><csymbol cd="latexml" id="S1.T1.9.9.3.m1.1.1.2.cmml" xref="S1.T1.9.9.3.m1.1.1.2">absent</csymbol><apply id="S1.T1.9.9.3.m1.1.1.3.cmml" xref="S1.T1.9.9.3.m1.1.1.3"><csymbol cd="ambiguous" id="S1.T1.9.9.3.m1.1.1.3.1.cmml" xref="S1.T1.9.9.3.m1.1.1.3">superscript</csymbol><cn id="S1.T1.9.9.3.m1.1.1.3.2.cmml" type="integer" xref="S1.T1.9.9.3.m1.1.1.3.2">10</cn><apply id="S1.T1.9.9.3.m1.1.1.3.3.cmml" xref="S1.T1.9.9.3.m1.1.1.3.3"><minus id="S1.T1.9.9.3.m1.1.1.3.3.1.cmml" xref="S1.T1.9.9.3.m1.1.1.3.3"></minus><cn id="S1.T1.9.9.3.m1.1.1.3.3.2.cmml" type="integer" xref="S1.T1.9.9.3.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.9.9.3.m1.1c">\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.9.9.3.m1.1d">× 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.33.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.33.24.1" style="padding-left:2.0pt;padding-right:2.0pt;">start_momentum</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.33.24.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.998</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.33.24.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.998</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.33.24.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.998</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.34.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.34.25.1" style="padding-left:2.0pt;padding-right:2.0pt;">final_momentum</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.34.25.2" style="padding-left:2.0pt;padding-right:2.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.34.25.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.34.25.4" style="padding-left:2.0pt;padding-right:2.0pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.35.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.35.26.1" style="padding-left:2.0pt;padding-right:2.0pt;">start_weight_decay</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.35.26.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.04</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.35.26.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.04</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.35.26.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.04</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.36.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.36.27.1" style="padding-left:2.0pt;padding-right:2.0pt;">final_weight_decay</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.36.27.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.4</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.36.27.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.36.27.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.4</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.37.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.37.28.1" style="padding-left:2.0pt;padding-right:2.0pt;">scheduler_scale_factor</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.37.28.2" style="padding-left:2.0pt;padding-right:2.0pt;">1.25</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.37.28.3" style="padding-left:2.0pt;padding-right:2.0pt;">1.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.37.28.4" style="padding-left:2.0pt;padding-right:2.0pt;">1.25</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.38.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.9.38.29.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.9.38.29.1.1">architecture</span></th>
<td class="ltx_td ltx_border_t" id="S1.T1.9.38.29.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.38.29.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.38.29.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.39.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.39.30.1" style="padding-left:2.0pt;padding-right:2.0pt;">patch_size</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.39.30.2" style="padding-left:2.0pt;padding-right:2.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.39.30.3" style="padding-left:2.0pt;padding-right:2.0pt;">16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.39.30.4" style="padding-left:2.0pt;padding-right:2.0pt;">16</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.40.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.40.31.1" style="padding-left:2.0pt;padding-right:2.0pt;">tubelet_size</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.40.31.2" style="padding-left:2.0pt;padding-right:2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.40.31.3" style="padding-left:2.0pt;padding-right:2.0pt;">2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.40.31.4" style="padding-left:2.0pt;padding-right:2.0pt;">2</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.41.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.41.32.1" style="padding-left:2.0pt;padding-right:2.0pt;">pred_depth</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.41.32.2" style="padding-left:2.0pt;padding-right:2.0pt;">12</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.41.32.3" style="padding-left:2.0pt;padding-right:2.0pt;">12</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.41.32.4" style="padding-left:2.0pt;padding-right:2.0pt;">12</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.42.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.42.33.1" style="padding-left:2.0pt;padding-right:2.0pt;">pred_embed_dim</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.42.33.2" style="padding-left:2.0pt;padding-right:2.0pt;">384</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.42.33.3" style="padding-left:2.0pt;padding-right:2.0pt;">384</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.42.33.4" style="padding-left:2.0pt;padding-right:2.0pt;">384</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.43.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T1.9.43.34.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S1.T1.9.43.34.1.1">hardware</span></th>
<td class="ltx_td ltx_border_t" id="S1.T1.9.43.34.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.43.34.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.9.43.34.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.44.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T1.9.44.35.1" style="padding-left:2.0pt;padding-right:2.0pt;">dtype</th>
<td class="ltx_td ltx_align_center" id="S1.T1.9.44.35.2" style="padding-left:2.0pt;padding-right:2.0pt;">bfloat16</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.44.35.3" style="padding-left:2.0pt;padding-right:2.0pt;">bfloat16</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.9.44.35.4" style="padding-left:2.0pt;padding-right:2.0pt;">bfloat16</td>
</tr>
<tr class="ltx_tr" id="S1.T1.9.45.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S1.T1.9.45.36.1" style="padding-left:2.0pt;padding-right:2.0pt;">accelerator</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T1.9.45.36.2" style="padding-left:2.0pt;padding-right:2.0pt;">A100 80G</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T1.9.45.36.3" style="padding-left:2.0pt;padding-right:2.0pt;">A100 80G</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_b" id="S1.T1.9.45.36.4" style="padding-left:2.0pt;padding-right:2.0pt;">A100 80G</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table S1 presents the hyperparameters used for pre-training the V-JEPA model.  The values are consistent with the original V-JEPA paper by Bardes et al. (2024), with the exception of the positional embedding method, which utilizes Rotary Position Embedding (RoPE) as described in Su et al. (2021). The table details various settings, including model architecture (Vision Transformer variations), training data parameters (resolution, frame rate, data augmentation), optimizer settings (AdamW parameters), and training schedule details (learning rate, weight decay, etc.). This table is crucial for reproducibility and understanding the experimental setup of the V-JEPA model.
> <details>
> <summary>read the caption</summary>
> Table S1: Pretraining hyper-parameters for V-JEPA. Table structure and values identical to the original V-JEPA paper (Bardes et al., 2024), apart from positional embedding where we rely on RoPE (Su et al., 2021).
> </details>





### In-depth insights


#### Intuitive Physics AI
The concept of "Intuitive Physics AI" explores how artificial intelligence can be developed to understand and reason about the physical world in a manner similar to humans.  This involves moving beyond simple physics engines and delving into the realm of **common-sense reasoning**, **predictive modeling**, and **understanding of causality**.  A key aspect is the ability of AI systems to **generalize from limited data** and to **handle uncertainty** and unexpected events.  This field is challenging because intuitive physics knowledge is often implicit and tacit rather than explicitly formulated.  Success would have profound implications, enabling robots to safely navigate complex environments, AI systems to interpret visual scenes with greater depth, and the creation of more robust and adaptable AI agents overall.  **Key challenges** involve developing AI models that can learn from diverse and messy real-world data, effectively handle uncertainty and noise, and generalize to novel situations.  The core knowledge hypothesis, suggesting humans possess innate physical knowledge, raises questions of how such capabilities can emerge in AI systems, with **self-supervised learning** and **predictive coding** frameworks offering promising directions.

#### V-JEPA Architecture
The core of the research revolves around V-JEPA (Video Joint Embedding Predictive Architecture), a novel approach to achieve intuitive physics understanding in AI models.  **V-JEPA cleverly leverages self-supervised learning by training on natural videos to predict masked regions.** This method differs significantly from prior works that relied on hand-crafted features or structured models.  Instead, **V-JEPA learns an abstract representation space**, enabling it to capture the underlying dynamics of the physical world without explicitly encoding rules. The model's ability to predict masked portions of videos demonstrates an understanding of object permanence and shape consistency, exceeding the capabilities of other methods operating in pixel space or relying on textual reasoning. **The success of V-JEPA challenges the notion that innate, hardwired knowledge is crucial for understanding intuitive physics**, suggesting that self-supervised learning from raw sensory input can suffice.

#### Violation of Expectation
The Violation of Expectation paradigm, rooted in developmental psychology, is a cornerstone of the research.  It leverages the **innate human tendency to react with surprise to physically impossible events**.  By presenting models with pairs of videos – one depicting a plausible scenario, the other a violation – researchers assess the model's understanding based on its 'surprise' response (e.g., longer gaze time, prediction error). This method cleverly bypasses the need for explicit training on physics concepts, instead relying on the model's internal representation of the world to reveal its grasp of intuitive physics.  **Higher surprise responses to impossible scenarios indicate a better understanding**.  The strength of this approach lies in its simplicity and elegance; it provides a natural, intuitive way to measure intuitive physics understanding without the complexity of explicit physics-based training.  This methodology directly addresses the core question of whether an understanding of physics is hardwired or learned.   The results demonstrate that models trained to predict masked regions in video do, in fact, demonstrate an understanding using this paradigm, suggesting a strong argument for the learned component of intuitive physics.

#### Ablation Study
An ablation study systematically removes components of a model to understand their individual contributions.  In the context of the research paper, this would involve selectively disabling or removing parts of the V-JEPA architecture (e.g., the encoder, predictor, specific layers) or altering aspects of the training procedure (e.g., the type of masking used during pre-training). By observing how performance changes on intuitive physics tasks after these alterations, the researchers can pinpoint what features are essential for the model's understanding. This process helps determine **the importance of each component** (e.g., the learned representation space, the prediction task) and reveals **how model architecture affects its capacity** for intuitive physics understanding.  The insights gained from such an ablation study provide crucial evidence supporting or refuting the core hypotheses about how intuitive physics understanding emerges in the model. **The results would likely show a clear drop in performance** if essential components were removed, suggesting their critical role in learning the target capabilities.

#### Future Work
Future research directions stemming from this work on intuitive physics in AI models could explore several promising avenues.  **Scaling up the model size and training data** further is crucial to ascertain whether the observed understanding generalizes to more complex scenarios and longer temporal dependencies.  Investigating the influence of different video sources, especially those mimicking the visual input of infants, could provide further insights into the development of intuitive physics. **A deeper exploration of the architecture's limitations** is also warranted.  The model's struggles with certain intuitive physics concepts, such as collisions, suggests a need for improvements in representing object interactions.  This could involve incorporating more sophisticated methods for modeling object dynamics or exploring alternative architectural designs like hierarchical models.  Finally, **investigating the integration of agency and interaction** within the model could significantly enhance its understanding. Allowing the model to interact with the simulated environment rather than simply observing it might unlock a more comprehensive grasp of physical principles. This could lead to more robust and generalized intuitive physics capabilities in AI systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11831/x2.png)

> 🔼 Figure 2 presents a comparative analysis of V-JEPA's performance against randomly initialized models and human participants in recognizing intuitive physics properties. Panel (A) shows V-JEPA's relative classification accuracy across three intuitive physics datasets (IntPhys, GRASP, and InfLevel-lab), comparing it against a control group of randomly initialized networks and highlighting V-JEPA's superior performance for various physical properties. Panel (B) focuses on the IntPhys dataset, directly comparing V-JEPA's performance to human participants across various conditions using both relative and absolute accuracy metrics. This panel emphasizes the correlation between human and machine errors and underscores that the maximum surprise value from each video provides a better generalization for single-video classification, based on data from Riochet et al. (2022).
> <details>
> <summary>read the caption</summary>
> Figure 2: V-JEPA accuracy increase relative to randomly-initialized models and humans across different physical properties and benchmarks. (A) Because some benchmarks contain low-level biases, we test the model performance against a set of randomly initialized networks (n=20𝑛20n=20italic_n = 20). V-JEPA models (n=5𝑛5n=5italic_n = 5) have higher relative classification accuracy on intuitive physics benchmarks for most, but not all concepts. (B) V-JEPA relative (left) and absolute (right) accuracy on the IntPhys test set across different conditions compared to naive human performance, showing a high correlation between human and machine errors. The V-JEPA score uses the maximum surprise from each video, which generalizes better for single-video classification. Human data are taken from (Riochet et al., 2022).
> </details>



![](https://arxiv.org/html/2502.11831/x3.png)

> 🔼 Figure 3 analyzes the impact of various factors on V-JEPA's performance in understanding intuitive physics, as measured by IntPhys scores. Panel (A) demonstrates that V-JEPA, pretrained on VideoMix2M (VM2M), consistently displays an understanding of intuitive physics regardless of the masking strategy used during training.  Panel (B) compares the performance of models trained on three different datasets (K710, HowTo100M, and a combination), revealing that HowTo100M yields superior results.  Interestingly, even a subset of the HowTo100M dataset (128 hours) produces above-chance performance, highlighting the model's robustness and the dataset's quality.  Finally, panel (C) shows that while larger encoder models generally improve accuracy, even the smallest model (115 million parameters) trained on HowTo100M maintains significant performance.  Overall, this figure highlights the robustness and key elements contributing to V-JEPA's success in learning intuitive physics.
> <details>
> <summary>read the caption</summary>
> Figure 3: Influence of type of mask, type and amount of training data, and model size on V-JEPA IntPhys scores. (A) When pretrained on VM2M, V-JEPA exhibits an understanding of intuitive physics with every masking strategy. (B) Of the three training datasets, two give high accuracies when trained separately (K710 and Howto100M). High scores are found with only 1289 hours of Howto100M (the largest dataset), and even 128h gives better than chance performance. (C) While larger encoders improve performance, we find that the performance remains non-trivial across sizes when pretraining on HowTo100M. Confidence intervals obtained via bootstrapping.
> </details>



![](https://arxiv.org/html/2502.11831/x6.png)

> 🔼 Figure S1 explores the effectiveness of different methods for measuring surprise in videos, specifically focusing on the IntPhys dataset.  The left panel shows that when comparing pairs of videos (one physically possible, one impossible), using the *average* surprise across the entire video yields better performance for distinguishing between them. This is statistically confirmed using a one-sample t-test showing a relative surprise significantly greater than zero. The right panel examines individual videos. Here, using the *maximum* surprise within each video leads to a better separation between possible and impossible scenarios, statistically validated using a two-sample t-test showing that impossible videos have significantly higher maximum surprise than possible videos.  The figure highlights that the optimal surprise metric depends on the specific task (pairwise comparison vs. individual video classification).
> <details>
> <summary>read the caption</summary>
> Figure S1: Different surprise measures are better suited for different tasks. Focusing on IntPhys, we find that looking at the average surprise over a video leads to better performance when comparing pairs of videos. A one-sample t-test was performed to see if the relative surprises are greater than zero (left). However, when looking at individual videos’ surprise, choosing the maximum surprise over a video leads to a better separation between possible and impossible videos. A two-sample t-test was performed to see if impossible videos have higher surprise than possible ones. (rigt).
> </details>



![](https://arxiv.org/html/2502.11831/x7.png)

> 🔼 This figure displays the normalized probability distributions generated by the Qwen2-VL-72B model when presented with pairs of videos, one depicting a physically possible scenario and the other a physically impossible one.  The distributions are shown separately for the IntPhys, GRASP, and InfLevel-lab datasets. The x-axis represents the probability of the model classifying a video as 'possible', ranging from 0 to 1. The y-axis represents the probability density. The key observation is that the model assigns almost identical probabilities to both possible and impossible videos across all three datasets. This indicates that the model does not reliably distinguish between physically plausible and implausible events, suggesting a lack of robust intuitive physics understanding.
> <details>
> <summary>read the caption</summary>
> Figure S2: Normalized probabilities output by Qwen2-VL-72B. When presented with a pair of videos, we find that the model outputs similar probabilities for possible and impossible videos.
> </details>



![](https://arxiv.org/html/2502.11831/x10.png)

> 🔼 This figure investigates the effect of using a fixed context size (the number of preceding frames used for prediction) across different intuitive physics properties and datasets.  The results show that using a single context size for all tasks leads to suboptimal performance for most models. This is attributed to limitations in the processing capabilities of the models, particularly when dealing with longer videos.  Interestingly, V-JEPA shows more robust performance even under this constraint, demonstrating its ability to learn intuitive physics with limited contextual information.
> <details>
> <summary>read the caption</summary>
> Figure S3: Models perform suboptimally with a fixed context size. Due to limitations in how long of a video models can process, we find drops in performance when using a single context size across all properties and datasets. Performance remains non-trivial for V-JEPA in this scenario.
> </details>



![](https://arxiv.org/html/2502.11831/x11.png)

> 🔼 Figure S4 analyzes the impact of context window size (the number of preceding frames used for prediction) on the accuracy of intuitive physics understanding across three benchmark datasets: IntPhys, GRASP, and InfLevel-lab.  The results reveal that while smaller context windows generally lead to better performance, the optimal context size isn't universal. It varies depending on both the specific intuitive physics property being evaluated (e.g., object permanence, continuity) and the dataset used. Notably, the GRASP dataset exhibits a greater sensitivity to context size changes compared to the IntPhys and InfLevel-lab datasets, indicating its more nuanced nature.
> <details>
> <summary>read the caption</summary>
> Figure S4: Variation of performance when changing context size for predictions. While models tend to perform better with smaller context sizes, we find the optimal context size to be dependent on the property and dataset. GRASP exhibits the most variation whereas IntPhys and InfLevel-lab are less sensitive in general.
> </details>



![](https://arxiv.org/html/2502.11831/x12.png)

> 🔼 This figure explores how the diversity of training data impacts V-JEPA's performance on the IntPhys benchmark.  Two experiments are conducted: one where the number of videos in the HowTo100M dataset is reduced (left panel), and another where the number of frames per video is reduced, keeping the total number of videos constant (right panel). The left panel shows that reducing video diversity still allows V-JEPA to achieve good performance with only 128 hours of unique video data. The right panel reveals that reducing motion diversity has a stronger negative effect on performance, although the model still shows good results with only 2% of the original frames (equivalent to 2579 hours of video data). This suggests that while both scene and motion diversity are beneficial to model performance, scene diversity is more crucial for achieving a decent level of intuitive physics understanding.
> <details>
> <summary>read the caption</summary>
> Figure S5: Influence of motion and scene diversity. By pretraining V-JEPA-L on subsets of HowTo100M, we investigate how the diversity in motion and scenes affects performance on IntPhys.(left) By subsampling videos, we reduce the diversity in scenes, where we find that the model can still reach good performance with 128h of unique videos. (right) By subsampling frames in videos, we reduce the diversity of motions in each scene. Here we find lower performance than when subsampling videos, but the model still achieves good performance with 2% of the frames (2579h).
> </details>



![](https://arxiv.org/html/2502.11831/x13.png)

> 🔼 Figure S6 presents a comparison of model performance on the InfLevel-lab dataset before and after modifying the dataset to remove the need for contextual information.  The original InfLevel-lab dataset tests the understanding of gravity and solidity, requiring the model to remember properties of objects shown in a prior video segment before evaluating the main part of the experiment.  By removing this initial segment and relabeling the videos to reflect the implied properties of the objects, the task becomes simpler. The figure shows that both V-JEPA and VideoMAE models exhibit significantly improved performance on this modified version of the dataset. However, the authors note that this simplification alters the inherent difficulty of distinguishing between 'possible' and 'impossible' scenarios.
> <details>
> <summary>read the caption</summary>
> Figure S6: Relabeling InfLevel to remove contextualization events. Gravity and solidity both require to remember the properties about the containers shown in a video before the actual experiment. By relabeling the videos such that the prefix video is not necessary, we find a significant increase in performance for both V-JEPA and VideoMAE. However, this relabeling breaks the assumption that the possible and impossible videos have the same difficulty.
> </details>



![](https://arxiv.org/html/2502.11831/x14.png)

> 🔼 Figure S7 presents a comprehensive analysis of V-JEPA-L's performance across various intuitive physics properties.  It visually compares V-JEPA-L's performance against that of untrained neural networks. The figure shows V-JEPA-L achieves higher accuracy on most properties tested. Each data point in the figure represents the average performance across five separate model runs (seeds), indicated by black dots, highlighting the model's consistency.
> <details>
> <summary>read the caption</summary>
> Figure S7: Complete results for V-JEPA-L. The models (n=5𝑛5n=5italic_n = 5) achieve accuracies higher than untrained networks on most properties. Black dots represent the performance of 5 seeds.
> </details>



![](https://arxiv.org/html/2502.11831/x15.png)

> 🔼 Figure S8 presents a comprehensive analysis of V-JEPA-H's performance across various intuitive physics properties, comparing it against the performance of 20 untrained networks.  The figure visually displays the pairwise classification accuracy achieved by V-JEPA-H for each property, along with confidence intervals derived through bootstrapping.  This detailed comparison allows for a thorough assessment of V-JEPA-H's ability to learn and generalize intuitive physics understanding, highlighting its strengths and potential limitations across different aspects of physical reasoning.
> <details>
> <summary>read the caption</summary>
> Figure S8: Complete results for V-JEPA-H. The model achieves accuracies higher than untrained networks on most properties. Gray dots represent the performance of the 20 untrained networks. Confidence intervals obtained via bootstrapping.
> </details>



![](https://arxiv.org/html/2502.11831/x16.png)

> 🔼 Figure S9 presents a comprehensive performance analysis of the VideoMAE v2 model across multiple intuitive physics properties.  It compares the model's accuracy to that of untrained networks (serving as a baseline) using the pairwise classification task.  The figure visualizes the accuracy for each property (e.g., object permanence, continuity, shape constancy, etc.) across three datasets (IntPhys, GRASP, InfLevel-lab).  Error bars represent confidence intervals calculated through bootstrapping.  A key observation is that VideoMAE v2 generally performs at or slightly above the level of untrained networks, except for the properties of solidity and collision, where its performance is closer to chance level. The gray dots in the chart specifically indicate the performance of the untrained networks.
> <details>
> <summary>read the caption</summary>
> Figure S9: Complete results for VideoMAEv2. The model achieves performance on par or slightly higher than untrained networks across properties, apart from solidity and collision. Gray dots represent the performance of the 20 untrained networks. Confidence intervals obtained via bootstrapping.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T2.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S1.T2.3.4.1.1">Dataset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T2.3.4.1.2">Realistic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T2.3.4.1.3">Diverse scenes</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T2.3.4.1.4">Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T2.3.4.1.5">Number of Properties</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T2.1.1.2">IntPhys</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.1.1.3">No</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.1.1.4">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.1.1.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S1.T2.1.1.1.m1.1"><semantics id="S1.T2.1.1.1.m1.1a"><mo id="S1.T2.1.1.1.m1.1.1" xref="S1.T2.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S1.T2.1.1.1.m1.1b"><csymbol cd="latexml" id="S1.T2.1.1.1.m1.1.1.cmml" xref="S1.T2.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S1.T2.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S1.T2.1.1.1.m1.1d">∼</annotation></semantics></math> 360</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.1.1.5">3</td>
</tr>
<tr class="ltx_tr" id="S1.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T2.2.2.2">GRASP</th>
<td class="ltx_td ltx_align_center" id="S1.T2.2.2.3">No</td>
<td class="ltx_td ltx_align_center" id="S1.T2.2.2.4">No</td>
<td class="ltx_td ltx_align_center" id="S1.T2.2.2.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S1.T2.2.2.1.m1.1"><semantics id="S1.T2.2.2.1.m1.1a"><mo id="S1.T2.2.2.1.m1.1.1" xref="S1.T2.2.2.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S1.T2.2.2.1.m1.1b"><csymbol cd="latexml" id="S1.T2.2.2.1.m1.1.1.cmml" xref="S1.T2.2.2.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S1.T2.2.2.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S1.T2.2.2.1.m1.1d">∼</annotation></semantics></math> 4000</td>
<td class="ltx_td ltx_align_center" id="S1.T2.2.2.5">10</td>
</tr>
<tr class="ltx_tr" id="S1.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S1.T2.3.3.2">InfLevel-lab</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T2.3.3.3">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T2.3.3.4">No</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T2.3.3.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S1.T2.3.3.1.m1.1"><semantics id="S1.T2.3.3.1.m1.1a"><mo id="S1.T2.3.3.1.m1.1.1" xref="S1.T2.3.3.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S1.T2.3.3.1.m1.1b"><csymbol cd="latexml" id="S1.T2.3.3.1.m1.1.1.cmml" xref="S1.T2.3.3.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S1.T2.3.3.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S1.T2.3.3.1.m1.1d">∼</annotation></semantics></math> 4000</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T2.3.3.5">3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S2 provides a comparison of three datasets used to evaluate intuitive physics understanding in AI models: IntPhys, GRASP, and InfLevel-lab.  Each dataset is characterized by its level of realism (synthetic or photorealistic), the diversity of scenes it includes, and the specific intuitive physics properties it tests.  This table highlights the diversity of the evaluation by showing that different datasets assess varied aspects of physical intuition, thereby allowing for a comprehensive assessment of AI model capabilities.
> <details>
> <summary>read the caption</summary>
> Table S2: Summary of datasets used for evaluation. IntPhys, GRASP and InfLevel-lab provide qualitatively different data sources to perform a more holistic evaluation of models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T3.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T3.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S1.T3.5.1.1.1">Dataset</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S1.T3.5.1.1.2">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T3.5.1.1.3">Frame skip</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T3.5.1.1.4">FPS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T3.5.1.1.5">Window size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T3.5.1.1.6">Window Stride</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T3.5.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T3.5.2.1.1">IntPhys</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T3.5.2.1.2">V-JEPA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.2.1.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.2.1.4">7.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.2.1.5">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.2.1.6">2</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.3.2">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.3.2.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.3.2.2">VideoMAEv2</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.3.2.3">2</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.3.2.4">7.5</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.3.2.5">16</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.3.2.6">2</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.4.3">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.4.3.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.4.3.2">Qwen-2-VL-72b</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.4.3.3">5</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.4.3.4">3</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.4.3.5">All</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.4.3.6">N/A</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.5.4">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.5.4.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.5.4.2">Gemini-1.5-pro</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.5.4.3">2</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.5.4.4">7.5</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.5.4.5">All</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.5.4.6">N/A</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T3.5.6.5.1">GRASP</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T3.5.6.5.2">V-JEPA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.6.5.3">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.6.5.4">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.6.5.5">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.6.5.6">2</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.7.6">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.7.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.7.6.2">VideoMAEv2</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.7.6.3">10</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.7.6.4">5</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.7.6.5">16</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.7.6.6">2</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.8.7">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.8.7.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.8.7.2">Qwen-2-VL-72b</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.8.7.3">10</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.8.7.4">5</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.8.7.5">All</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.8.7.6">N/A</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.9.8">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.9.8.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.9.8.2">Gemini-1.5-pro</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.9.8.3">10</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.9.8.4">5</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.9.8.5">All</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.9.8.6">N/A</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T3.5.10.9.1">InfLevel-lab</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S1.T3.5.10.9.2">V-JEPA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.10.9.3">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.10.9.4">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.10.9.5">32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T3.5.10.9.6">2</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.11.10">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.11.10.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.11.10.2">VideoMAEv2</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.11.10.3">10</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.11.10.4">3</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.11.10.5">16</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.11.10.6">2</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.12.11">
<th class="ltx_td ltx_th ltx_th_row" id="S1.T3.5.12.11.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S1.T3.5.12.11.2">Qwen-2-VL-72b</th>
<td class="ltx_td ltx_align_center" id="S1.T3.5.12.11.3">20</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.12.11.4">1.5</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.12.11.5">All</td>
<td class="ltx_td ltx_align_center" id="S1.T3.5.12.11.6">N/A</td>
</tr>
<tr class="ltx_tr" id="S1.T3.5.13.12">
<th class="ltx_td ltx_th ltx_th_row ltx_border_b" id="S1.T3.5.13.12.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S1.T3.5.13.12.2">Gemini-1.5-pro</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T3.5.13.12.3">30</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T3.5.13.12.4">1</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T3.5.13.12.5">All</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T3.5.13.12.6">N/A</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific hyperparameters used for each model (V-JEPA, VideoMAE, Qwen-2-VL-72B, and Gemini 1.5 pro) across three different datasets (IntPhys, GRASP, and InfLevel-lab).  The hyperparameters listed include the frame skip rate, frames per second (FPS), window size (C+M), and window stride.  These settings were chosen to optimize performance for each model and dataset in a zero-shot evaluation setting. Note that 'All' indicates no specific values were used for the window size and stride parameters for those models.
> <details>
> <summary>read the caption</summary>
> Table S3: Evaluation hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.5.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.5.1.1.1.2">Surprise</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S4.T4.5.1.1.1.3">Object permanence</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S4.T4.5.1.1.1.4">Shape constancy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S4.T4.5.1.1.1.5">Continuity</th>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T4.5.1.2.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T4.5.1.2.2.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.3">Visible</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.4">Occluded</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.5">All</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.6">Visible</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.7">Occluded</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.8">All</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.9">Visible</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.10">Occluded</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.5.1.2.2.11">All</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.3.1.1">V-JEPA-H</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.1.3.1.2">Max</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.3">0.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.4">8.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.5">4.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.6">0.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.7">8.1%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.8">4.4%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.9">0.19%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.10">25.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.11">12.87%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.4.2.1">V-JEPA-H</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.4.2.2">Avg</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.3">0.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.4">0.56%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.5">0.28%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.6">0.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.7">0.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.8">0.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.9">0.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.10">0.19%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.11">0.09%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.5.3.1">V-JEPA-L</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.5.3.2">Max</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.3">5.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.4">35.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.5">0.20%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.6">8.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.7">35.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.8">21.9%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.9">5.9%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.10">41.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.11">23.8%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.6.4.1">V-JEPA-L</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.6.4.2">Avg</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.3">0.9%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.4">1.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.5">1.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.6">2.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.7">3.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.8">3.1%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.9">0.7%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.10">3.3%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4.11">2.0%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.1.7.5.1"><cite class="ltx_cite ltx_citemacro_cite">Riochet et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.11831v1#bib.bib43" title="">2020</a>)</cite></th>
<th class="ltx_td ltx_th ltx_th_row" id="S4.T4.5.1.7.5.2"></th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.3">5.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.4">19.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.5">12.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.6">11.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.7">31.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.8">21.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.9">26.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.10">47.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5.11">41.0%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T4.5.1.8.6.1">Human</th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_b" id="S4.T4.5.1.8.6.2"></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.3">10.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.4">15.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.5">12.5%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.6">13.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.7">16.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.8">14.5%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.9">20.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.10">40.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.8.6.11">30.0%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S4 presents a comparison of pairwise error rates on the IntPhys test set, which evaluates intuitive physics understanding.  The table contrasts the performance of several models (V-JEPA-H, V-JEPA-L, and a human baseline from Riochet et al., 2022) in classifying pairs of videos as either physically plausible or implausible.  Two different methods for calculating surprise (maximum and average) are used for each model. The results demonstrate that both maximum and average surprise metrics yield high performance for V-JEPA models, surpassing human performance.
> <details>
> <summary>read the caption</summary>
> Table S4: Pairwise error rates on IntPhys’ test set. For pairs of videos, taking either the maximum or average surprise from a video leads to high performance, surpassing the human results reported in (Riochet et al., 2022).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T5.5.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T5.5.1.1.1.2">Surprise</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S4.T5.5.1.1.1.3">Object permanence</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S4.T5.5.1.1.1.4">Shape constancy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S4.T5.5.1.1.1.5">Continuity</th>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T5.5.1.2.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T5.5.1.2.2.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.3">Visible</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.4">Occluded</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.5">All</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.6">Visible</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.7">Occluded</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.8">All</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.9">Visible</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.10">Occluded</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.5.1.2.2.11">All</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.3.1.1">V-JEPA-H</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.1.3.1.2">Max</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.3">8.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.4">28.1%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.5">19.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.6">11.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.7">29.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.8">21.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.9">7.8%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.10">43.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.11">29.67%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.4.2.1">V-JEPA-H</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.4.2.2">Avg</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.3">27.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.4">38.9%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.5">38.3%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.6">31.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.7">39.3%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.8">39.2%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.9">28.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.10">31.3%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.11">37.05%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.5.3.1">V-JEPA-L</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.5.3.2">Max</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.3">25.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.4">47.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.5">40.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.6">29.9%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.7">47.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.8">41.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.9">26.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.10">49.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.11">41.6%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.6.4.1">V-JEPA-L</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.1.6.4.2">Avg</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.3">33.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.4">41.7%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.5">41.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.6">37.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.7">42.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.8">42.7%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.9">34.4%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.10">38.8%</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.6.4.11">41.5%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T5.5.1.7.5.1">Human</th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_b" id="S4.T5.5.1.7.5.2"></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.3">18.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.4">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.5">24.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.6">22.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.7">30.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.8">26.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.9">28.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.10">47.0%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.5.1.7.5.11">38.0%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table S5 presents single-video classification error rates (1-AUROC) on the IntPhys test set, comparing the performance of different models based on both maximum and average surprise metrics.  The results show that using the maximum surprise value yields the highest accuracy, surpassing human baseline performance reported in Riochet et al. (2022).  Importantly, the table highlights that the average surprise metric is less effective, likely because its value is highly dependent on specific experimental factors, making it less reliable for evaluating model performance across different conditions. The error rates are presented as percentages for clarity.
> <details>
> <summary>read the caption</summary>
> Table S5: Single video classification error rates (1-AUROC) on IntPhys’ test set. For single videos, we see that the maximum surprise of video leads to the highest performance, surpassing the human baselines reported in (Riochet et al., 2022). Here, the average surprise of a video is not a good metric, possibly due to values being too dependent on the experimental setup. We report the metric as percentages for legibility.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11831/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11831/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}