---
title: "MergeVQ: A Unified Framework for Visual Generation and Representation with Disentangled Token Merging and Quantization"
summary: "MergeVQ: Disentangling token merging and quantization enhances visual generation and representation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.00999 {{< /keyword >}}
{{< keyword icon="writer" >}} Siyuan Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.00999" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.00999" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.00999/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Masked Image Modeling (MIM) with Vector Quantization (VQ) has shown success, but faces challenges in balancing generation quality, representation learning, and efficiency.** Current methods struggle to reconcile the needs of both tasks within a shared latent space, leading to trade-offs. Improving one aspect often negatively impacts others, indicating a lack of consistency in VQ-based learning frameworks. This paper argues that visual generation and representation, while seemingly conflicting, have intrinsic complementarity if information loss is minimized with specific designs, paving way for unified latent space.



To address the mentioned issues, the paper introduces **MergeVQ, a new framework that incorporates token merging techniques into VQ-based autoregressive generative models.** During pre-training, MergeVQ decouples top-k semantics from the latent space and recovers fine-grained details through cross-attention in the decoder for reconstruction. The method also introduces MergeAR, which performs KV Cache compression for efficient raster-order prediction in the second-stage generation. Experiments verify MergeVQ's effectiveness in achieving competitive results in both representation learning and generation, while maintaining token efficiency and inference speed.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MergeVQ bridges visual generation and representation learning using token merging in VQ-based models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MergeAR, a KV Cache compression method, improves efficiency in raster-order prediction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate MergeVQ's competitive performance in generation and representation tasks with efficient token usage and inference speed. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
MergeVQ enhances visual generation/representation by merging tokens in VQ-based models, balancing quality, efficiency, and speed. It provides a novel paradigm with favorable results for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.00999/x1.png)

> 🔼 Figure 1 illustrates the MergeVQ framework's three learning paradigms. (a) shows the pre-training stage, where the MergeVQ Tokenizer uses ToMe to extract key semantic tokens, decoupling positional information stored in a source matrix, while LFQ handles spatial detail quantization. The decoder reconstructs the image using both these tokens and the positional information from the matrix. (b) depicts the random-order generation, where a random-order generator produces tokens along with position instructions.  The decoder reconstructs the image using these positional cues. (c) presents MergeAR's efficient raster-order generation. It leverages KV cache compression to eliminate redundancy in next-token prediction, thereby speeding up the process.
> <details>
> <summary>read the caption</summary>
> Figure 1: MergeVQ learning paradigms. (a) The MergeVQ Tokenizer extracts K𝐾Kitalic_K semantic tokens with decoupled positional information (retained in the source matrix) by ToMe [7] while quantizing spatial details by LFQ [49, 73], which will be recovered and reconstructed correspondingly. (b) MergeVQ with random-order Generator [51] generates K𝐾Kitalic_K discrete tokens with associated position instructions while trained Source Prediction and decoder restore position details. (c) MergeAR Generator predicts L𝐿Litalic_L tokens efficiently in a raster-order with tailored KV Cache compression to remove the redundancy within Next-token Prediction (NTP) [57].
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.18.16">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.3.1.1.2" style="padding-left:3.7pt;padding-right:3.7pt;">Support</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.3.1.1.3" style="padding-left:3.7pt;padding-right:3.7pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.3.1.1.4" style="padding-left:3.7pt;padding-right:3.7pt;">Date</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.1.1.5" style="padding-left:3.7pt;padding-right:3.7pt;">Align.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.1.1.6" style="padding-left:3.7pt;padding-right:3.7pt;">Rec.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.3.1.1.7" style="padding-left:3.7pt;padding-right:3.7pt;">Epochs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.1.1.8" style="padding-left:3.7pt;padding-right:3.7pt;">Encoder</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.1.1.9" style="padding-left:3.7pt;padding-right:3.7pt;">#Param</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T1.3.1.1.10" style="padding-left:3.7pt;padding-right:3.7pt;">#Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T1.3.1.1.1" style="padding-left:3.7pt;padding-right:3.7pt;">Accuracy<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.3.1.1.1.m1.1"><semantics id="S5.T1.3.1.1.1.m1.1a"><mo id="S5.T1.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.1.1.1.m1.1b"><ci id="S5.T1.3.1.1.1.m1.1.1.cmml" xref="S5.T1.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.17.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.17.1.1" style="padding-left:3.7pt;padding-right:3.7pt;">Tasks</td>
<td class="ltx_td" id="S5.T1.18.16.17.1.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_border_r" id="S5.T1.18.16.17.1.3" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.17.1.4" style="padding-left:3.7pt;padding-right:3.7pt;">Target</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.17.1.5" style="padding-left:3.7pt;padding-right:3.7pt;">Target</td>
<td class="ltx_td ltx_border_r" id="S5.T1.18.16.17.1.6" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.17.1.7" style="padding-left:3.7pt;padding-right:3.7pt;">Type</td>
<td class="ltx_td" id="S5.T1.18.16.17.1.8" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_border_r" id="S5.T1.18.16.17.1.9" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.17.1.10" style="padding-left:3.7pt;padding-right:3.7pt;">Lin.</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.17.1.11" style="padding-left:3.7pt;padding-right:3.7pt;">FT</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.3.3">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T1.5.3.3.3" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.3.3.4" style="padding-left:3.7pt;padding-right:3.7pt;">BYOL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.5.3.3.5" style="padding-left:3.7pt;padding-right:3.7pt;">NeurIPS’2020</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.6" style="padding-left:3.7pt;padding-right:3.7pt;">MSE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.7" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.5.3.3.7.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.5.3.3.8" style="padding-left:3.7pt;padding-right:3.7pt;">800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.9" style="padding-left:3.7pt;padding-right:3.7pt;">R50-W2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.10" style="padding-left:3.7pt;padding-right:3.7pt;">94M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.4.2.2.1" style="padding-left:3.7pt;padding-right:3.7pt;">7<math alttext="\times" class="ltx_Math" display="inline" id="S5.T1.4.2.2.1.m1.1"><semantics id="S5.T1.4.2.2.1.m1.1a"><mo id="S5.T1.4.2.2.1.m1.1.1" xref="S5.T1.4.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.2.2.1.m1.1b"><times id="S5.T1.4.2.2.1.m1.1.1.cmml" xref="S5.T1.4.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.2.2.1.m1.1d">×</annotation></semantics></math>7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.11" style="padding-left:3.7pt;padding-right:3.7pt;">75.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.3.3.2" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.5.3.3.2.m1.1"><semantics id="S5.T1.5.3.3.2.m1.1a"><mo id="S5.T1.5.3.3.2.m1.1.1" xref="S5.T1.5.3.3.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.3.3.2.m1.1b"><minus id="S5.T1.5.3.3.2.m1.1.1.cmml" xref="S5.T1.5.3.3.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.3.3.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.3.3.2.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.18.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.18.2.1" style="padding-left:3.7pt;padding-right:3.7pt;">Contrastive</td>
<td class="ltx_td ltx_align_left" id="S5.T1.18.16.18.2.2" style="padding-left:3.7pt;padding-right:3.7pt;">MoCov3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.18.2.3" style="padding-left:3.7pt;padding-right:3.7pt;">ICCV’2021</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.18.2.4" style="padding-left:3.7pt;padding-right:3.7pt;">InfoNCE</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.18.2.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.18.2.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.18.2.6" style="padding-left:3.7pt;padding-right:3.7pt;">300</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.18.2.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.18.2.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.18.2.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.18.2.10" style="padding-left:3.7pt;padding-right:3.7pt;">76.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.18.2.11" style="padding-left:3.7pt;padding-right:3.7pt;">83.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.4.4.2" style="padding-left:3.7pt;padding-right:3.7pt;">Pre-training</td>
<td class="ltx_td ltx_align_left" id="S5.T1.6.4.4.1" style="padding-left:3.7pt;padding-right:3.7pt;">DINO<sup class="ltx_sup" id="S5.T1.6.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S5.T1.6.4.4.1.1.1">‡</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.4.4.3" style="padding-left:3.7pt;padding-right:3.7pt;">ICCV’2021</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.4" style="padding-left:3.7pt;padding-right:3.7pt;">CE</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.6.4.4.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.4.4.6" style="padding-left:3.7pt;padding-right:3.7pt;">300</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.4.4.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.10" style="padding-left:3.7pt;padding-right:3.7pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.11" style="padding-left:3.7pt;padding-right:3.7pt;">83.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.5.5">
<td class="ltx_td ltx_border_r" id="S5.T1.7.5.5.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.7.5.5.1" style="padding-left:3.7pt;padding-right:3.7pt;">DINOv2<sup class="ltx_sup" id="S5.T1.7.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S5.T1.7.5.5.1.1.1">‡</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.7.5.5.3" style="padding-left:3.7pt;padding-right:3.7pt;">TMLR’2024</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5.4" style="padding-left:3.7pt;padding-right:3.7pt;">CE</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.7.5.5.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.7.5.5.6" style="padding-left:3.7pt;padding-right:3.7pt;">1000</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.7.5.5.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5.10" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.5.5.10.1">84.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.5.5.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.5.5.11.1">85.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.19.3">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T1.18.16.19.3.1" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.18.16.19.3.2" style="padding-left:3.7pt;padding-right:3.7pt;">BEiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.18.16.19.3.3" style="padding-left:3.7pt;padding-right:3.7pt;">ICLR’2022</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.19.3.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.19.3.4.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.19.3.5" style="padding-left:3.7pt;padding-right:3.7pt;">DALLE</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.18.16.19.3.6" style="padding-left:3.7pt;padding-right:3.7pt;">800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.19.3.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.19.3.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.18.16.19.3.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.19.3.10" style="padding-left:3.7pt;padding-right:3.7pt;">56.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.19.3.11" style="padding-left:3.7pt;padding-right:3.7pt;">83.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.6">
<td class="ltx_td ltx_border_r" id="S5.T1.8.6.6.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.8.6.6.1" style="padding-left:3.7pt;padding-right:3.7pt;">iBOT<sup class="ltx_sup" id="S5.T1.8.6.6.1.1"><span class="ltx_text ltx_font_italic" id="S5.T1.8.6.6.1.1.1">‡</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.8.6.6.3" style="padding-left:3.7pt;padding-right:3.7pt;">ICLR’2022</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.4" style="padding-left:3.7pt;padding-right:3.7pt;">CE</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.5" style="padding-left:3.7pt;padding-right:3.7pt;">EMA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.8.6.6.6" style="padding-left:3.7pt;padding-right:3.7pt;">800</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.8.6.6.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.10" style="padding-left:3.7pt;padding-right:3.7pt;">76.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.6.11" style="padding-left:3.7pt;padding-right:3.7pt;">84.0</td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.20.4">
<td class="ltx_td ltx_border_r" id="S5.T1.18.16.20.4.1" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.18.16.20.4.2" style="padding-left:3.7pt;padding-right:3.7pt;">MAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.20.4.3" style="padding-left:3.7pt;padding-right:3.7pt;">CVPR’2022</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.20.4.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.20.4.4.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.20.4.5" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.20.4.6" style="padding-left:3.7pt;padding-right:3.7pt;">1600</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.20.4.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.20.4.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.20.4.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.20.4.10" style="padding-left:3.7pt;padding-right:3.7pt;">68.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.20.4.11" style="padding-left:3.7pt;padding-right:3.7pt;">83.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.21.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.21.5.1" style="padding-left:3.7pt;padding-right:3.7pt;">MIM</td>
<td class="ltx_td ltx_align_left" id="S5.T1.18.16.21.5.2" style="padding-left:3.7pt;padding-right:3.7pt;">SimMIM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.21.5.3" style="padding-left:3.7pt;padding-right:3.7pt;">CVPR’2022</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.21.5.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.21.5.4.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.21.5.5" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.21.5.6" style="padding-left:3.7pt;padding-right:3.7pt;">800</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.21.5.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.21.5.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.21.5.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.21.5.10" style="padding-left:3.7pt;padding-right:3.7pt;">67.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.21.5.11" style="padding-left:3.7pt;padding-right:3.7pt;">83.8</td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.22.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.22.6.1" style="padding-left:3.7pt;padding-right:3.7pt;">Pre-training</td>
<td class="ltx_td ltx_align_left" id="S5.T1.18.16.22.6.2" style="padding-left:3.7pt;padding-right:3.7pt;">CAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.22.6.3" style="padding-left:3.7pt;padding-right:3.7pt;">IJCV’2023</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.22.6.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.22.6.4.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.22.6.5" style="padding-left:3.7pt;padding-right:3.7pt;">DALLE</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.22.6.6" style="padding-left:3.7pt;padding-right:3.7pt;">1600</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.22.6.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.22.6.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.22.6.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.22.6.10" style="padding-left:3.7pt;padding-right:3.7pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.22.6.11" style="padding-left:3.7pt;padding-right:3.7pt;">83.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.7.7">
<td class="ltx_td ltx_border_r" id="S5.T1.9.7.7.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.9.7.7.3" style="padding-left:3.7pt;padding-right:3.7pt;">PeCo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.7.7.4" style="padding-left:3.7pt;padding-right:3.7pt;">AAAI’2023</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.7.7.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.9.7.7.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.7.7.6" style="padding-left:3.7pt;padding-right:3.7pt;">VQVAE</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.7.7.7" style="padding-left:3.7pt;padding-right:3.7pt;">800</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.7.7.8" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.7.7.9" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.9.7.7.10" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.7.7.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.9.7.7.1.m1.1"><semantics id="S5.T1.9.7.7.1.m1.1a"><mo id="S5.T1.9.7.7.1.m1.1.1" xref="S5.T1.9.7.7.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.9.7.7.1.m1.1b"><minus id="S5.T1.9.7.7.1.m1.1.1.cmml" xref="S5.T1.9.7.7.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.7.7.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.7.7.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.7.7.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.7.7.11.1">84.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.8.8">
<td class="ltx_td ltx_border_r" id="S5.T1.10.8.8.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.10.8.8.1" style="padding-left:3.7pt;padding-right:3.7pt;">A<sup class="ltx_sup" id="S5.T1.10.8.8.1.1">2</sup>MIM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.10.8.8.3" style="padding-left:3.7pt;padding-right:3.7pt;">ICML’2023</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.8.8.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.10.8.8.4.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.8.8.5" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.10.8.8.6" style="padding-left:3.7pt;padding-right:3.7pt;">800</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.8.8.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.8.8.8" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.10.8.8.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.8.8.10" style="padding-left:3.7pt;padding-right:3.7pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.8.8.11" style="padding-left:3.7pt;padding-right:3.7pt;">84.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.11.9.9">
<td class="ltx_td ltx_border_r" id="S5.T1.11.9.9.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.11.9.9.3" style="padding-left:3.7pt;padding-right:3.7pt;">I-JEPA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.11.9.9.4" style="padding-left:3.7pt;padding-right:3.7pt;">CVPR’2023</td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.9.9.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.11.9.9.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.9.9.6" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.11.9.9.7" style="padding-left:3.7pt;padding-right:3.7pt;">600</td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.9.9.8" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.9.9.9" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.11.9.9.10" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.9.9.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.11.9.9.11.1">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.9.9.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.11.9.9.1.m1.1"><semantics id="S5.T1.11.9.9.1.m1.1a"><mo id="S5.T1.11.9.9.1.m1.1.1" xref="S5.T1.11.9.9.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.11.9.9.1.m1.1b"><minus id="S5.T1.11.9.9.1.m1.1.1.cmml" xref="S5.T1.11.9.9.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.11.9.9.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.11.9.9.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.10.10">
<td class="ltx_td ltx_border_r" id="S5.T1.12.10.10.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.12.10.10.3" style="padding-left:3.7pt;padding-right:3.7pt;">EVA-02 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.10.10.4" style="padding-left:3.7pt;padding-right:3.7pt;">CVPR’2024</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.10.10.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.12.10.10.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.10.10.6" style="padding-left:3.7pt;padding-right:3.7pt;">EVA-CLIP</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.10.10.7" style="padding-left:3.7pt;padding-right:3.7pt;">300</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.10.10.8" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.10.10.9" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.10.10.10" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.10.10.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.12.10.10.1.m1.1"><semantics id="S5.T1.12.10.10.1.m1.1a"><mo id="S5.T1.12.10.10.1.m1.1.1" xref="S5.T1.12.10.10.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.12.10.10.1.m1.1b"><minus id="S5.T1.12.10.10.1.m1.1.1.cmml" xref="S5.T1.12.10.10.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.12.10.10.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.12.10.10.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.10.10.11" style="padding-left:3.7pt;padding-right:3.7pt;">84.0</td>
</tr>
<tr class="ltx_tr" id="S5.T1.13.11.11">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T1.13.11.11.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.13.11.11.3" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.13.11.11.4" style="padding-left:3.7pt;padding-right:3.7pt;">ICLR’2022</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.13.11.11.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.13.11.11.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.13.11.11.6" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.13.11.11.7" style="padding-left:3.7pt;padding-right:3.7pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.13.11.11.8" style="padding-left:3.7pt;padding-right:3.7pt;">VIM-Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.13.11.11.9" style="padding-left:3.7pt;padding-right:3.7pt;">650M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.13.11.11.10" style="padding-left:3.7pt;padding-right:3.7pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.13.11.11.11" style="padding-left:3.7pt;padding-right:3.7pt;">65.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.13.11.11.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.13.11.11.1.m1.1"><semantics id="S5.T1.13.11.11.1.m1.1a"><mo id="S5.T1.13.11.11.1.m1.1.1" xref="S5.T1.13.11.11.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.13.11.11.1.m1.1b"><minus id="S5.T1.13.11.11.1.m1.1.1.cmml" xref="S5.T1.13.11.11.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.13.11.11.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.13.11.11.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.14.12.12">
<td class="ltx_td ltx_border_r" id="S5.T1.14.12.12.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.14.12.12.3" style="padding-left:3.7pt;padding-right:3.7pt;">MaskGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.14.12.12.4" style="padding-left:3.7pt;padding-right:3.7pt;">CVPR’2022</td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.12.12.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.14.12.12.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.12.12.6" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.14.12.12.7" style="padding-left:3.7pt;padding-right:3.7pt;">200</td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.12.12.8" style="padding-left:3.7pt;padding-right:3.7pt;">BERT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.12.12.9" style="padding-left:3.7pt;padding-right:3.7pt;">227M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.14.12.12.10" style="padding-left:3.7pt;padding-right:3.7pt;">256</td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.12.12.11" style="padding-left:3.7pt;padding-right:3.7pt;">57.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.12.12.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.14.12.12.1.m1.1"><semantics id="S5.T1.14.12.12.1.m1.1a"><mo id="S5.T1.14.12.12.1.m1.1.1" xref="S5.T1.14.12.12.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.14.12.12.1.m1.1b"><minus id="S5.T1.14.12.12.1.m1.1.1.cmml" xref="S5.T1.14.12.12.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.14.12.12.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.14.12.12.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.15.13.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.15.13.13.2" style="padding-left:3.7pt;padding-right:3.7pt;">Generative</td>
<td class="ltx_td ltx_align_left" id="S5.T1.15.13.13.3" style="padding-left:3.7pt;padding-right:3.7pt;">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.15.13.13.4" style="padding-left:3.7pt;padding-right:3.7pt;">NeurIPS’2024</td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.13.13.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.15.13.13.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.13.13.6" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.15.13.13.7" style="padding-left:3.7pt;padding-right:3.7pt;">40</td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.13.13.8" style="padding-left:3.7pt;padding-right:3.7pt;">CNN</td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.13.13.9" style="padding-left:3.7pt;padding-right:3.7pt;">72M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.15.13.13.10" style="padding-left:3.7pt;padding-right:3.7pt;">1024</td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.13.13.11" style="padding-left:3.7pt;padding-right:3.7pt;">47.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.13.13.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.15.13.13.1.m1.1"><semantics id="S5.T1.15.13.13.1.m1.1a"><mo id="S5.T1.15.13.13.1.m1.1.1" xref="S5.T1.15.13.13.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.15.13.13.1.m1.1b"><minus id="S5.T1.15.13.13.1.m1.1.1.cmml" xref="S5.T1.15.13.13.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.15.13.13.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.15.13.13.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.16.14.14">
<td class="ltx_td ltx_border_r" id="S5.T1.16.14.14.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.16.14.14.3" style="padding-left:3.7pt;padding-right:3.7pt;">Titok-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.16.14.14.4" style="padding-left:3.7pt;padding-right:3.7pt;">NeurIPS’2024</td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.14.14.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.16.14.14.5.1" style="color:#808080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.14.14.6" style="padding-left:3.7pt;padding-right:3.7pt;">VQGAN</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.16.14.14.7" style="padding-left:3.7pt;padding-right:3.7pt;">200</td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.14.14.8" style="padding-left:3.7pt;padding-right:3.7pt;">Titok-B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.14.14.9" style="padding-left:3.7pt;padding-right:3.7pt;">86M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.16.14.14.10" style="padding-left:3.7pt;padding-right:3.7pt;">64</td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.14.14.11" style="padding-left:3.7pt;padding-right:3.7pt;">53.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.14.14.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.16.14.14.1.m1.1"><semantics id="S5.T1.16.14.14.1.m1.1a"><mo id="S5.T1.16.14.14.1.m1.1.1" xref="S5.T1.16.14.14.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.16.14.14.1.m1.1b"><minus id="S5.T1.16.14.14.1.m1.1.1.cmml" xref="S5.T1.16.14.14.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.16.14.14.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.16.14.14.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.17.15.15">
<td class="ltx_td ltx_border_r" id="S5.T1.17.15.15.2" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.17.15.15.3" style="padding-left:3.7pt;padding-right:3.7pt;">REPA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.17.15.15.4" style="padding-left:3.7pt;padding-right:3.7pt;">ICLR’2025</td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.15.15.5" style="padding-left:3.7pt;padding-right:3.7pt;">DINOv2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.15.15.6" style="padding-left:3.7pt;padding-right:3.7pt;">Velocity</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.17.15.15.7" style="padding-left:3.7pt;padding-right:3.7pt;">100</td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.15.15.8" style="padding-left:3.7pt;padding-right:3.7pt;">SiT-L/2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.15.15.9" style="padding-left:3.7pt;padding-right:3.7pt;">458M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.17.15.15.10" style="padding-left:3.7pt;padding-right:3.7pt;">1024</td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.15.15.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.17.15.15.11.1">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.15.15.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.17.15.15.1.m1.1"><semantics id="S5.T1.17.15.15.1.m1.1a"><mo id="S5.T1.17.15.15.1.m1.1.1" xref="S5.T1.17.15.15.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.17.15.15.1.m1.1b"><minus id="S5.T1.17.15.15.1.m1.1.1.cmml" xref="S5.T1.17.15.15.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.17.15.15.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.17.15.15.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.23.7">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T1.18.16.23.7.1" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.18.16.23.7.2" style="padding-left:3.7pt;padding-right:3.7pt;">MAGE-C <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.18.16.23.7.3" style="padding-left:3.7pt;padding-right:3.7pt;">CVPR’2023</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.23.7.4" style="padding-left:3.7pt;padding-right:3.7pt;">InfoNCE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.23.7.5" style="padding-left:3.7pt;padding-right:3.7pt;">VQGAN</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.18.16.23.7.6" style="padding-left:3.7pt;padding-right:3.7pt;">1600</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.23.7.7" style="padding-left:3.7pt;padding-right:3.7pt;">ViT-B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.23.7.8" style="padding-left:3.7pt;padding-right:3.7pt;">24+86M</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.18.16.23.7.9" style="padding-left:3.7pt;padding-right:3.7pt;">196</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.23.7.10" style="padding-left:3.7pt;padding-right:3.7pt;">78.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.18.16.23.7.11" style="padding-left:3.7pt;padding-right:3.7pt;">82.9</td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.16.2" style="padding-left:3.7pt;padding-right:3.7pt;">Generative &amp;</td>
<td class="ltx_td ltx_align_left" id="S5.T1.18.16.16.3" style="padding-left:3.7pt;padding-right:3.7pt;">DiGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.16.4" style="padding-left:3.7pt;padding-right:3.7pt;">NeurIPS’2024</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.5" style="padding-left:3.7pt;padding-right:3.7pt;">DINOv2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.6" style="padding-left:3.7pt;padding-right:3.7pt;">RGB</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.16.7" style="padding-left:3.7pt;padding-right:3.7pt;">200</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.8" style="padding-left:3.7pt;padding-right:3.7pt;">ViT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.9" style="padding-left:3.7pt;padding-right:3.7pt;">219M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.16.10" style="padding-left:3.7pt;padding-right:3.7pt;">256</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.11" style="padding-left:3.7pt;padding-right:3.7pt;">71.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.16.1" style="padding-left:3.7pt;padding-right:3.7pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T1.18.16.16.1.m1.1"><semantics id="S5.T1.18.16.16.1.m1.1a"><mo id="S5.T1.18.16.16.1.m1.1.1" xref="S5.T1.18.16.16.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T1.18.16.16.1.m1.1b"><minus id="S5.T1.18.16.16.1.m1.1.1.cmml" xref="S5.T1.18.16.16.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.18.16.16.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T1.18.16.16.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.24.8" style="background-color:#CFEFFF;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.24.8.1" style="background-color:#FFFFFF;padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.1.1" style="background-color:#FFFFFF;">Pre-training</span></td>
<td class="ltx_td ltx_align_left" id="S5.T1.18.16.24.8.2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.16.24.8.2.1" style="background-color:#CFEFFF;">MergeVQ (G+R)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.24.8.3" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.16.24.8.3.1" style="background-color:#CFEFFF;">Ours</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.24.8.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.4.1" style="background-color:#CFEFFF;">DINOv2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.24.8.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.5.1" style="background-color:#CFEFFF;">RGB+TMM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.24.8.6" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.6.1" style="background-color:#CFEFFF;">270</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.24.8.7" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.7.1" style="background-color:#CFEFFF;">Hybrid</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.24.8.8" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.8.1" style="background-color:#CFEFFF;">63M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.18.16.24.8.9" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.9.1" style="background-color:#CFEFFF;">144</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.24.8.10" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.10.1" style="background-color:#CFEFFF;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.16.24.8.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.24.8.11.1" style="background-color:#CFEFFF;">82.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.16.25.9">
<td class="ltx_td ltx_border_bb ltx_border_r" id="S5.T1.18.16.25.9.1" style="padding-left:3.7pt;padding-right:3.7pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.18.16.25.9.2" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.16.25.9.2.1" style="background-color:#CFEFFF;">MergeVQ (R)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.18.16.25.9.3" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.16.25.9.3.1" style="background-color:#CFEFFF;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.18.16.25.9.4" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.25.9.4.1" style="background-color:#CFEFFF;">DINOv2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.18.16.25.9.5" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.25.9.5.1" style="background-color:#CFEFFF;">RGB+TMM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.18.16.25.9.6" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.25.9.6.1" style="background-color:#CFEFFF;">300</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.18.16.25.9.7" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.25.9.7.1" style="background-color:#CFEFFF;">ViT-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.18.16.25.9.8" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.25.9.8.1" style="background-color:#CFEFFF;">86M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.18.16.25.9.9" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text" id="S5.T1.18.16.25.9.9.1" style="background-color:#CFEFFF;">36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.18.16.25.9.10" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.16.25.9.10.1" style="background-color:#CFEFFF;">79.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.18.16.25.9.11" style="padding-left:3.7pt;padding-right:3.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.16.25.9.11.1" style="background-color:#CFEFFF;">84.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of various self-supervised pre-training methods on the ImageNet-1K dataset.  The metrics used are the top-1 accuracy achieved through linear probing (evaluating the learned representations directly) and fine-tuning (training a classifier on top of the representations).  The table also indicates whether the method used multi-crop augmentation or additional data during pre-training.  Key characteristics of each method, such as the type of target used (alignment or reconstruction), the number of pre-training epochs, the encoder architecture, the number of learnable parameters, and the number of latent tokens are included to allow for a comprehensive comparison.  MIM (Masked Image Modeling) and TMM (Token-merge Modeling) are also noted to classify the techniques used.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of self-supervised pre-training on ImageNet-1K. The top-1 accuracy of linear probing (Lin.) and fully fine-tuning (FT) results are reported. ‡‡{\ddagger}‡ denotes using the multi-crop augmentation or additional data. We summarize the target for alignment (Align.) and reconstruction (Rec.), the pre-training epochs, the encoder architecture type, and the number of learnable parameters (#Param) of the encoder and latent tokens (#Tokens), where MIM and TMM denote Masked Image Modeling and Token-merge Modeling.
> </details>





### In-depth insights


#### MergeVQ: Bridging
The concept of "MergeVQ: Bridging" suggests an architectural design aimed at **unifying representation learning and generation**. It tackles the challenge of shared latent spaces in VQ-based models where a trade-off exists between generative quality and representation learning. MergeVQ bridges this gap by incorporating token merging. This **allows decoupling of high-level semantics from the latent space** while retaining fine-grained details, essential for reconstruction. The bridging aims to facilitate a more coherent and efficient framework where improvements in one domain can positively impact the other, overcoming inconsistencies seen in prior approaches. The concept's core strength lies in **leveraging token merging techniques to compress information efficiently** without sacrificing the detail needed for high-quality image generation, which is crucial for the success of a unified framework. This innovative design aims to improve the ability of VQ-based models to learn effective visual representations and generate realistic images.

#### Disentangled Tokens
The concept of "Disentangled Tokens" in visual generation and representation suggests a method to **isolate and manage different aspects of information** encoded within a discrete set of tokens. It aims to address the trade-off between generation quality and representation learning. Ideally, it would allow for **independent manipulation of semantic information and fine-grained details.** This could involve techniques to ensure each token represents a distinct, non-overlapping feature, or to separate content and style. The goal would be to **improve the modularity and controllability of generative models**, allowing for targeted edits and improved understanding of the underlying data structure.

#### MergeAR for Speed
**MergeAR** is an innovative technique focused on **accelerating autoregressive image generation**. The core idea revolves around **intelligently compressing the KV cache** to minimize redundant computations. This is achieved by identifying and **pruning duplicate tokens** during the generation process, leveraging the inherent redundancies in autoregressive sequences. By eliminating these repetitions, MergeAR reduces the computational burden, leading to **faster generation speeds** without compromising image quality. It maintains a position-recording system ensuring the spatial coherence. This is particularly effective in the domain of **autoregressive modeling** where next-token prediction is often computationally expensive. The end goal is to achieve a **balance between generation speed and visual fidelity**.

#### Unified Learning
**Unified learning** presents a compelling approach by consolidating diverse tasks into a single framework. This often involves a shared representation space, enabling knowledge transfer and potentially boosting performance across tasks. However, **balancing the objectives** of each task is crucial. Techniques like multi-task learning and meta-learning are essential, adapting shared parameters. Managing task interference and ensuring fair resource allocation remain key challenges. Successful unified learning requires careful **task weighting** and architecture design to harness the synergy between tasks while preventing negative transfer.

#### Efficiency Boost
Efficiency in visual generation and representation is a multifaceted challenge, often demanding a trade-off between resource utilization and performance. **Techniques like token merging and KV Cache compression** become pivotal for streamlining computational overhead. Token merging reduces the sequence length, thus decreasing computational demands, while KV Cache compression selectively retains crucial information, minimizing redundant computations during inference. Addressing these efficiency bottlenecks without compromising generation quality and representation fidelity is crucial, particularly for real-world applications where resource constraints are a concern. Efficient algorithms enhance practicality and make advanced models more accessible. **Optimizations allow for deployment on less powerful hardware** and faster processing times. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.00999/x2.png)

> 🔼 MergeVQ is a two-stage framework for visual representation learning and generation. Stage 1 (a) uses an encoder with self-attention and a token merge module [7] to extract K semantic tokens, which are then aligned globally with a pre-trained teacher.  The encoder also predicts a source matrix that retains positional information.  Stage 2 has two parts: reconstruction (b) and generation (c). In reconstruction, K merged and quantized tokens are used as input to the decoder, and positional information is recovered using the source matrix to reconstruct high-quality image details. In generation, the source matrix is used to create a causal mask for training and a KV cache to remove duplicate tokens for more efficient inference.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of MergeVQ framework, which contains two stages and three groups of subtasks (Sec. 3.1). (a) As for representation learning (Sec. 3.2), K𝐾Kitalic_K semantic tokens are extracted by the encoder with self-attention and token merging [7], which can be aligned globally with a pre-trained teacher while learning contextual information by predicting the source matrix. (b) As for reconstruction (Sec. 3.3), taking K𝐾Kitalic_K merged and quantized tokens as the input, the positional information can be retained by the Source Recovery module, and then high-quality details will be reconstructed. (c) As for generation (Sec. 4), we utilize the source matrix to construct a causal mask for training and leverage the KV cache to prune repeated tokens during inference for efficient generation.
> </details>



![](https://arxiv.org/html/2504.00999/x3.png)

> 🔼 This figure analyzes the impact of the number of tokens retained after the ToMe [7] token merging module on both image reconstruction quality (measured by rFID) and representation learning performance (measured by linear probing top-1 accuracy).  Three variations of the MergeVQ tokenizer were trained on ImageNet-1K at a resolution of 128x128, each retaining a different number of tokens (256, 144, and 36) during the training process. The experiment evaluates the reconstruction and representation capabilities of these models by varying the number of tokens kept during inference. This allows for analysis of the trade-off between the generative (reconstruction) and discriminative (representation learning) capabilities of the model as influenced by the token count.
> <details>
> <summary>read the caption</summary>
> Figure 3: Analysis of kept tokens in reconstruction and representation learning. Three MergeVQ tokenizers are trained with 128128128128 resolution for 30 epochs on ImageNet-1K. They keep 256, 144, and 36 tokens with ToMe [7] in the encoder during training. In inference, we evaluate rFID and linear probing top-1 accuracy with diverse merge ratios to show the trade-off between generation and representation. Please view Sec. 5 and Appendix B for details.
> </details>



![](https://arxiv.org/html/2504.00999/x4.png)

> 🔼 This figure visualizes the reconstruction capabilities of the MergeVQ (G+R) model.  It shows the results of reconstructing images using different numbers of kept tokens (64, 144, and 256).  The clustering maps generated by the ToMe Attention module are displayed alongside the reconstructed images. These maps highlight how MergeVQ effectively extracts key semantic tokens while simultaneously preserving detailed spatial information from the original image.  The increasing realism of the reconstructed images as the number of kept tokens increases demonstrates the model's ability to balance efficient compression with high-fidelity reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of MergeVQ (G+R) reconstruction. With the kept tokens varying from 64 to 256, clustering maps of ToMe Attention indicate that MergeVQ can extract discriminative semantic tokens while recovering contextual positions and details.
> </details>



![](https://arxiv.org/html/2504.00999/x5.png)

> 🔼 This figure illustrates the distribution of merge ratios used during the training of the MergeVQ model.  Two subfigures are shown. (a) shows the distribution for models with a total of 256 tokens.  For stage 1 training, the MergeVQ (R) and (G+R) models sample a square number of tokens to keep, ranging from 36 to 100 and 121 to 225, respectively, with the distribution following an exponential and a Gaussian pattern.  In stage 2 training, the (G+R) model samples square numbers between 144 and 256. (b) shows the distribution for models with 1024 tokens.  The MergeVQ (G) model samples square numbers of tokens to keep in stage 1 between 225 and 400, and in stage 2 between 256 and 1024, using Gaussian and exponential distributions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of merge ratios sampling in training. (a) With 256 tokens in total, MergeVQ (R) and (G+R) sample the square number as kept token numbers in [36,100]36100[36,100][ 36 , 100 ] and [121,225]121225[121,225][ 121 , 225 ] with exponential and Gaussian distributions for stage-1 training, while the G+R version sampling from [144,256]144256[144,256][ 144 , 256 ] for stage-2 training. (b) With 1024 tokens in total, MergeVQ (G) samples the square kept number in [225,400]225400[225,400][ 225 , 400 ] and [256,1024]2561024[256,1024][ 256 , 1024 ] with Gaussian and exponential distributions in both stage-1 and stage-2 training.
> </details>



![](https://arxiv.org/html/2504.00999/x6.png)

> 🔼 Figure 6 illustrates the MergeAR pipeline, a method for efficient visual generation.  Panel (a) shows the training process.  The input consists of the source matrix (encoding positional information from the MergeVQ tokenizer) and a K-sparse target sequence (representing the desired output with K tokens).  Duplicate tokens are masked out, creating a causal mask. A class token and merge instruction token initiate the generation. Panel (b) details inference.  The process generates L tokens in raster order. A position cache and KV cache identify and remove duplicate tokens, improving efficiency. 
> <details>
> <summary>read the caption</summary>
> Figure 6: Illustration of MergeAR pipeline. (a) MergeAR training with the source matrix and K𝐾Kitalic_K-sparse target sequences from the MergeVQ tokenizer to build a causal mask with duplicated tokens masked out, taking a class token and a merge instruction token as the starting conditions. (b) MergeAR inference that generates L𝐿Litalic_L tokens in the raster order with duplicated tokens detected and removed in the position and KV Caches.
> </details>



![](https://arxiv.org/html/2504.00999/x7.png)

> 🔼 This figure visualizes the reconstruction quality of the MergeVQ tokenizer on ImageNet-1K.  It shows the reconstruction results for four different images, comparing the performance of the MergeVQ 'G' and 'G+R' versions using different numbers of retained tokens (1024, 576, 400, 256, 144 for 'G'; 256, 196, 144, 100, 64, 36 for 'G+R').  The results demonstrate that as the number of tokens retained increases, the quality of the reconstructed images improves, becoming more realistic.
> <details>
> <summary>read the caption</summary>
> Figure A1: Visualization of tokenizer reconstruction on ImageNet-1K. We conducted reconstruction experiments with our G version using 1024, 576, 400, 256, and 144 tokens and with our G+R version using 256, 196, 144, 100, 64, and 36 tokens. The reconstruction results are shown in the figure. As the number of retained tokens increases, the reconstruction becomes more realistic.
> </details>



![](https://arxiv.org/html/2504.00999/x8.png)

> 🔼 This figure visualizes the results of class-conditional image generation using two variants of the MergeVQ model: MergeVQ(G) and MergeVQ(G+R).  MergeVQ(G), designed primarily for generation, utilizes 256 tokens, while MergeVQ(G+R), balancing generation and representation learning, uses 144 tokens. The figure displays generated images for several classes from ImageNet-1K, showcasing the visual quality and diversity achieved by each model variant with different token counts.  The comparison highlights the trade-off between model complexity (number of tokens) and the quality/diversity of generated images.
> <details>
> <summary>read the caption</summary>
> Figure A2: Visualization of class conditional generation with MergeVQ variants on ImageNet-1K. The G version performs generation on 256 tokens, and the G+R version performs generation on 144 tokens.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.51.49">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.51.49.50.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.51.49.50.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">Method</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" colspan="4" id="S5.T2.51.49.50.1.2" style="padding-left:1.4pt;padding-right:1.4pt;">VQ Codebook</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.51.49.50.1.3" style="padding-left:1.4pt;padding-right:1.4pt;">Ratio</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.51.49.50.1.4" style="padding-left:1.4pt;padding-right:1.4pt;">#Tokens</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.51.49.50.1.5" style="padding-left:1.4pt;padding-right:1.4pt;">rFID</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_r" id="S5.T2.5.3.3.4" style="padding-left:1.4pt;padding-right:1.4pt;"></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.5.3.3.5" style="padding-left:1.4pt;padding-right:1.4pt;">Type</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.5.3.3.6" style="padding-left:1.4pt;padding-right:1.4pt;">Size</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.5.3.3.7" style="padding-left:1.4pt;padding-right:1.4pt;">Dim</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.3.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">Usage<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.1.1.1.m1.1"><semantics id="S5.T2.3.1.1.1.m1.1a"><mo id="S5.T2.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.1.1.1.m1.1b"><ci id="S5.T2.3.1.1.1.m1.1.1.cmml" xref="S5.T2.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S5.T2.5.3.3.8" style="padding-left:1.4pt;padding-right:1.4pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.4.2.2.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.4.2.2.2.m1.1"><semantics id="S5.T2.4.2.2.2.m1.1a"><mo id="S5.T2.4.2.2.2.m1.1.1" stretchy="false" xref="S5.T2.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.2.2.2.m1.1b"><ci id="S5.T2.4.2.2.2.m1.1.1.cmml" xref="S5.T2.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.2.2.2.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.5.3.3.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.5.3.3.3.m1.1"><semantics id="S5.T2.5.3.3.3.m1.1a"><mo id="S5.T2.5.3.3.3.m1.1.1" stretchy="false" xref="S5.T2.5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.3.3.3.m1.1b"><ci id="S5.T2.5.3.3.3.m1.1.1.cmml" xref="S5.T2.5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.3.3.3.m1.1d">↓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.7.5.5.3" style="padding-left:1.4pt;padding-right:1.4pt;">Taming-VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T2.7.5.5.4" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.6.4.4.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{10}" class="ltx_Math" display="inline" id="S5.T2.6.4.4.1.m1.1"><semantics id="S5.T2.6.4.4.1.m1.1a"><msup id="S5.T2.6.4.4.1.m1.1.1" xref="S5.T2.6.4.4.1.m1.1.1.cmml"><mn id="S5.T2.6.4.4.1.m1.1.1.2" xref="S5.T2.6.4.4.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.6.4.4.1.m1.1.1.3" xref="S5.T2.6.4.4.1.m1.1.1.3.cmml">10</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.6.4.4.1.m1.1b"><apply id="S5.T2.6.4.4.1.m1.1.1.cmml" xref="S5.T2.6.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.6.4.4.1.m1.1.1.1.cmml" xref="S5.T2.6.4.4.1.m1.1.1">superscript</csymbol><cn id="S5.T2.6.4.4.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.6.4.4.1.m1.1.1.2">2</cn><cn id="S5.T2.6.4.4.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.6.4.4.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.4.4.1.m1.1c">2^{10}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.4.4.1.m1.1d">2 start_POSTSUPERSCRIPT 10 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.7.5.5.5" style="padding-left:1.4pt;padding-right:1.4pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.7.5.5.6" style="padding-left:1.4pt;padding-right:1.4pt;">49%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.7.5.5.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.7.5.5.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.7.5.5.2.m1.1"><semantics id="S5.T2.7.5.5.2.m1.1a"><msup id="S5.T2.7.5.5.2.m1.1.1" xref="S5.T2.7.5.5.2.m1.1.1.cmml"><mn id="S5.T2.7.5.5.2.m1.1.1.2" xref="S5.T2.7.5.5.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.7.5.5.2.m1.1.1.3" xref="S5.T2.7.5.5.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.7.5.5.2.m1.1b"><apply id="S5.T2.7.5.5.2.m1.1.1.cmml" xref="S5.T2.7.5.5.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.7.5.5.2.m1.1.1.1.cmml" xref="S5.T2.7.5.5.2.m1.1.1">superscript</csymbol><cn id="S5.T2.7.5.5.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.7.5.5.2.m1.1.1.2">16</cn><cn id="S5.T2.7.5.5.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.7.5.5.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.5.5.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.5.5.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.7.5.5.8" style="padding-left:1.4pt;padding-right:1.4pt;">7.94</td>
</tr>
<tr class="ltx_tr" id="S5.T2.10.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.10.8.8.4" style="padding-left:1.4pt;padding-right:1.4pt;">SD-VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.10.8.8.5" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.8.6.6.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{10}" class="ltx_Math" display="inline" id="S5.T2.8.6.6.1.m1.1"><semantics id="S5.T2.8.6.6.1.m1.1a"><msup id="S5.T2.8.6.6.1.m1.1.1" xref="S5.T2.8.6.6.1.m1.1.1.cmml"><mn id="S5.T2.8.6.6.1.m1.1.1.2" xref="S5.T2.8.6.6.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.8.6.6.1.m1.1.1.3" xref="S5.T2.8.6.6.1.m1.1.1.3.cmml">10</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.8.6.6.1.m1.1b"><apply id="S5.T2.8.6.6.1.m1.1.1.cmml" xref="S5.T2.8.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.8.6.6.1.m1.1.1.1.cmml" xref="S5.T2.8.6.6.1.m1.1.1">superscript</csymbol><cn id="S5.T2.8.6.6.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.8.6.6.1.m1.1.1.2">2</cn><cn id="S5.T2.8.6.6.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.8.6.6.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.6.6.1.m1.1c">2^{10}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.6.6.1.m1.1d">2 start_POSTSUPERSCRIPT 10 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.10.8.8.6" style="padding-left:1.4pt;padding-right:1.4pt;">4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.9.7.7.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.9.7.7.2.m1.1"><semantics id="S5.T2.9.7.7.2.m1.1a"><mo id="S5.T2.9.7.7.2.m1.1.1" xref="S5.T2.9.7.7.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.9.7.7.2.m1.1b"><minus id="S5.T2.9.7.7.2.m1.1.1.cmml" xref="S5.T2.9.7.7.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.7.7.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.7.7.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.10.8.8.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.10.8.8.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.10.8.8.3.m1.1"><semantics id="S5.T2.10.8.8.3.m1.1a"><msup id="S5.T2.10.8.8.3.m1.1.1" xref="S5.T2.10.8.8.3.m1.1.1.cmml"><mn id="S5.T2.10.8.8.3.m1.1.1.2" xref="S5.T2.10.8.8.3.m1.1.1.2.cmml">16</mn><mn id="S5.T2.10.8.8.3.m1.1.1.3" xref="S5.T2.10.8.8.3.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.10.8.8.3.m1.1b"><apply id="S5.T2.10.8.8.3.m1.1.1.cmml" xref="S5.T2.10.8.8.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.10.8.8.3.m1.1.1.1.cmml" xref="S5.T2.10.8.8.3.m1.1.1">superscript</csymbol><cn id="S5.T2.10.8.8.3.m1.1.1.2.cmml" type="integer" xref="S5.T2.10.8.8.3.m1.1.1.2">16</cn><cn id="S5.T2.10.8.8.3.m1.1.1.3.cmml" type="integer" xref="S5.T2.10.8.8.3.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.8.8.3.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.8.8.3.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.10.8.8.8" style="padding-left:1.4pt;padding-right:1.4pt;">5.15</td>
</tr>
<tr class="ltx_tr" id="S5.T2.13.11.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.13.11.11.4" style="padding-left:1.4pt;padding-right:1.4pt;">RQ-VAE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.13.11.11.5" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.11.9.9.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{14}" class="ltx_Math" display="inline" id="S5.T2.11.9.9.1.m1.1"><semantics id="S5.T2.11.9.9.1.m1.1a"><msup id="S5.T2.11.9.9.1.m1.1.1" xref="S5.T2.11.9.9.1.m1.1.1.cmml"><mn id="S5.T2.11.9.9.1.m1.1.1.2" xref="S5.T2.11.9.9.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.11.9.9.1.m1.1.1.3" xref="S5.T2.11.9.9.1.m1.1.1.3.cmml">14</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.11.9.9.1.m1.1b"><apply id="S5.T2.11.9.9.1.m1.1.1.cmml" xref="S5.T2.11.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.11.9.9.1.m1.1.1.1.cmml" xref="S5.T2.11.9.9.1.m1.1.1">superscript</csymbol><cn id="S5.T2.11.9.9.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.11.9.9.1.m1.1.1.2">2</cn><cn id="S5.T2.11.9.9.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.11.9.9.1.m1.1.1.3">14</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.9.9.1.m1.1c">2^{14}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.9.9.1.m1.1d">2 start_POSTSUPERSCRIPT 14 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.13.11.11.6" style="padding-left:1.4pt;padding-right:1.4pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.12.10.10.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.12.10.10.2.m1.1"><semantics id="S5.T2.12.10.10.2.m1.1a"><mo id="S5.T2.12.10.10.2.m1.1.1" xref="S5.T2.12.10.10.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.12.10.10.2.m1.1b"><minus id="S5.T2.12.10.10.2.m1.1.1.cmml" xref="S5.T2.12.10.10.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.10.10.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.10.10.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.13.11.11.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.13.11.11.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.13.11.11.3.m1.1"><semantics id="S5.T2.13.11.11.3.m1.1a"><msup id="S5.T2.13.11.11.3.m1.1.1" xref="S5.T2.13.11.11.3.m1.1.1.cmml"><mn id="S5.T2.13.11.11.3.m1.1.1.2" xref="S5.T2.13.11.11.3.m1.1.1.2.cmml">16</mn><mn id="S5.T2.13.11.11.3.m1.1.1.3" xref="S5.T2.13.11.11.3.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.13.11.11.3.m1.1b"><apply id="S5.T2.13.11.11.3.m1.1.1.cmml" xref="S5.T2.13.11.11.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.13.11.11.3.m1.1.1.1.cmml" xref="S5.T2.13.11.11.3.m1.1.1">superscript</csymbol><cn id="S5.T2.13.11.11.3.m1.1.1.2.cmml" type="integer" xref="S5.T2.13.11.11.3.m1.1.1.2">16</cn><cn id="S5.T2.13.11.11.3.m1.1.1.3.cmml" type="integer" xref="S5.T2.13.11.11.3.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.13.11.11.3.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.13.11.11.3.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.13.11.11.8" style="padding-left:1.4pt;padding-right:1.4pt;">3.20</td>
</tr>
<tr class="ltx_tr" id="S5.T2.16.14.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.16.14.14.4" style="padding-left:1.4pt;padding-right:1.4pt;">MaskGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.16.14.14.5" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.14.12.12.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{10}" class="ltx_Math" display="inline" id="S5.T2.14.12.12.1.m1.1"><semantics id="S5.T2.14.12.12.1.m1.1a"><msup id="S5.T2.14.12.12.1.m1.1.1" xref="S5.T2.14.12.12.1.m1.1.1.cmml"><mn id="S5.T2.14.12.12.1.m1.1.1.2" xref="S5.T2.14.12.12.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.14.12.12.1.m1.1.1.3" xref="S5.T2.14.12.12.1.m1.1.1.3.cmml">10</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.14.12.12.1.m1.1b"><apply id="S5.T2.14.12.12.1.m1.1.1.cmml" xref="S5.T2.14.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.14.12.12.1.m1.1.1.1.cmml" xref="S5.T2.14.12.12.1.m1.1.1">superscript</csymbol><cn id="S5.T2.14.12.12.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.14.12.12.1.m1.1.1.2">2</cn><cn id="S5.T2.14.12.12.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.14.12.12.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.14.12.12.1.m1.1c">2^{10}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.14.12.12.1.m1.1d">2 start_POSTSUPERSCRIPT 10 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.16.14.14.6" style="padding-left:1.4pt;padding-right:1.4pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.15.13.13.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.15.13.13.2.m1.1"><semantics id="S5.T2.15.13.13.2.m1.1a"><mo id="S5.T2.15.13.13.2.m1.1.1" xref="S5.T2.15.13.13.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.15.13.13.2.m1.1b"><minus id="S5.T2.15.13.13.2.m1.1.1.cmml" xref="S5.T2.15.13.13.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.15.13.13.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.15.13.13.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.16.14.14.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.16.14.14.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.16.14.14.3.m1.1"><semantics id="S5.T2.16.14.14.3.m1.1a"><msup id="S5.T2.16.14.14.3.m1.1.1" xref="S5.T2.16.14.14.3.m1.1.1.cmml"><mn id="S5.T2.16.14.14.3.m1.1.1.2" xref="S5.T2.16.14.14.3.m1.1.1.2.cmml">16</mn><mn id="S5.T2.16.14.14.3.m1.1.1.3" xref="S5.T2.16.14.14.3.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.16.14.14.3.m1.1b"><apply id="S5.T2.16.14.14.3.m1.1.1.cmml" xref="S5.T2.16.14.14.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.16.14.14.3.m1.1.1.1.cmml" xref="S5.T2.16.14.14.3.m1.1.1">superscript</csymbol><cn id="S5.T2.16.14.14.3.m1.1.1.2.cmml" type="integer" xref="S5.T2.16.14.14.3.m1.1.1.2">16</cn><cn id="S5.T2.16.14.14.3.m1.1.1.3.cmml" type="integer" xref="S5.T2.16.14.14.3.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.16.14.14.3.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.16.14.14.3.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.16.14.14.8" style="padding-left:1.4pt;padding-right:1.4pt;">2.28</td>
</tr>
<tr class="ltx_tr" id="S5.T2.18.16.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.18.16.16.3" style="padding-left:1.4pt;padding-right:1.4pt;">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.18.16.16.4" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.17.15.15.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{14}" class="ltx_Math" display="inline" id="S5.T2.17.15.15.1.m1.1"><semantics id="S5.T2.17.15.15.1.m1.1a"><msup id="S5.T2.17.15.15.1.m1.1.1" xref="S5.T2.17.15.15.1.m1.1.1.cmml"><mn id="S5.T2.17.15.15.1.m1.1.1.2" xref="S5.T2.17.15.15.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.17.15.15.1.m1.1.1.3" xref="S5.T2.17.15.15.1.m1.1.1.3.cmml">14</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.17.15.15.1.m1.1b"><apply id="S5.T2.17.15.15.1.m1.1.1.cmml" xref="S5.T2.17.15.15.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.17.15.15.1.m1.1.1.1.cmml" xref="S5.T2.17.15.15.1.m1.1.1">superscript</csymbol><cn id="S5.T2.17.15.15.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.17.15.15.1.m1.1.1.2">2</cn><cn id="S5.T2.17.15.15.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.17.15.15.1.m1.1.1.3">14</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.17.15.15.1.m1.1c">2^{14}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.17.15.15.1.m1.1d">2 start_POSTSUPERSCRIPT 14 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.18.16.16.5" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.18.16.16.6" style="padding-left:1.4pt;padding-right:1.4pt;">97%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.18.16.16.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.18.16.16.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.18.16.16.2.m1.1"><semantics id="S5.T2.18.16.16.2.m1.1a"><msup id="S5.T2.18.16.16.2.m1.1.1" xref="S5.T2.18.16.16.2.m1.1.1.cmml"><mn id="S5.T2.18.16.16.2.m1.1.1.2" xref="S5.T2.18.16.16.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.18.16.16.2.m1.1.1.3" xref="S5.T2.18.16.16.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.18.16.16.2.m1.1b"><apply id="S5.T2.18.16.16.2.m1.1.1.cmml" xref="S5.T2.18.16.16.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.18.16.16.2.m1.1.1.1.cmml" xref="S5.T2.18.16.16.2.m1.1.1">superscript</csymbol><cn id="S5.T2.18.16.16.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.18.16.16.2.m1.1.1.2">16</cn><cn id="S5.T2.18.16.16.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.18.16.16.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.18.16.16.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.18.16.16.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.18.16.16.8" style="padding-left:1.4pt;padding-right:1.4pt;">2.19</td>
</tr>
<tr class="ltx_tr" id="S5.T2.21.19.19">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.21.19.19.4" style="padding-left:1.4pt;padding-right:1.4pt;">TiTok-L-32 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.21.19.19.5" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.19.17.17.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{12}" class="ltx_Math" display="inline" id="S5.T2.19.17.17.1.m1.1"><semantics id="S5.T2.19.17.17.1.m1.1a"><msup id="S5.T2.19.17.17.1.m1.1.1" xref="S5.T2.19.17.17.1.m1.1.1.cmml"><mn id="S5.T2.19.17.17.1.m1.1.1.2" xref="S5.T2.19.17.17.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.19.17.17.1.m1.1.1.3" xref="S5.T2.19.17.17.1.m1.1.1.3.cmml">12</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.19.17.17.1.m1.1b"><apply id="S5.T2.19.17.17.1.m1.1.1.cmml" xref="S5.T2.19.17.17.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.19.17.17.1.m1.1.1.1.cmml" xref="S5.T2.19.17.17.1.m1.1.1">superscript</csymbol><cn id="S5.T2.19.17.17.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.19.17.17.1.m1.1.1.2">2</cn><cn id="S5.T2.19.17.17.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.19.17.17.1.m1.1.1.3">12</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.19.17.17.1.m1.1c">2^{12}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.19.17.17.1.m1.1d">2 start_POSTSUPERSCRIPT 12 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.21.19.19.6" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.20.18.18.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.20.18.18.2.m1.1"><semantics id="S5.T2.20.18.18.2.m1.1a"><mo id="S5.T2.20.18.18.2.m1.1.1" xref="S5.T2.20.18.18.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.20.18.18.2.m1.1b"><minus id="S5.T2.20.18.18.2.m1.1.1.cmml" xref="S5.T2.20.18.18.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.20.18.18.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.20.18.18.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.21.19.19.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.21.19.19.3.m1.1"><semantics id="S5.T2.21.19.19.3.m1.1a"><mo id="S5.T2.21.19.19.3.m1.1.1" xref="S5.T2.21.19.19.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.21.19.19.3.m1.1b"><minus id="S5.T2.21.19.19.3.m1.1.1.cmml" xref="S5.T2.21.19.19.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.21.19.19.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.21.19.19.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.21.19.19.7" style="padding-left:1.4pt;padding-right:1.4pt;">32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.21.19.19.8" style="padding-left:1.4pt;padding-right:1.4pt;">2.21</td>
</tr>
<tr class="ltx_tr" id="S5.T2.24.22.22">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.24.22.22.4" style="padding-left:1.4pt;padding-right:1.4pt;">TiTok-B-64 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.24.22.22.5" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.22.20.20.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{12}" class="ltx_Math" display="inline" id="S5.T2.22.20.20.1.m1.1"><semantics id="S5.T2.22.20.20.1.m1.1a"><msup id="S5.T2.22.20.20.1.m1.1.1" xref="S5.T2.22.20.20.1.m1.1.1.cmml"><mn id="S5.T2.22.20.20.1.m1.1.1.2" xref="S5.T2.22.20.20.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.22.20.20.1.m1.1.1.3" xref="S5.T2.22.20.20.1.m1.1.1.3.cmml">12</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.22.20.20.1.m1.1b"><apply id="S5.T2.22.20.20.1.m1.1.1.cmml" xref="S5.T2.22.20.20.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.22.20.20.1.m1.1.1.1.cmml" xref="S5.T2.22.20.20.1.m1.1.1">superscript</csymbol><cn id="S5.T2.22.20.20.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.22.20.20.1.m1.1.1.2">2</cn><cn id="S5.T2.22.20.20.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.22.20.20.1.m1.1.1.3">12</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.22.20.20.1.m1.1c">2^{12}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.22.20.20.1.m1.1d">2 start_POSTSUPERSCRIPT 12 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.24.22.22.6" style="padding-left:1.4pt;padding-right:1.4pt;">12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.23.21.21.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.23.21.21.2.m1.1"><semantics id="S5.T2.23.21.21.2.m1.1a"><mo id="S5.T2.23.21.21.2.m1.1.1" xref="S5.T2.23.21.21.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.23.21.21.2.m1.1b"><minus id="S5.T2.23.21.21.2.m1.1.1.cmml" xref="S5.T2.23.21.21.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.23.21.21.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.23.21.21.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.24.22.22.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.24.22.22.3.m1.1"><semantics id="S5.T2.24.22.22.3.m1.1a"><mo id="S5.T2.24.22.22.3.m1.1.1" xref="S5.T2.24.22.22.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.24.22.22.3.m1.1b"><minus id="S5.T2.24.22.22.3.m1.1.1.cmml" xref="S5.T2.24.22.22.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.24.22.22.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.24.22.22.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.24.22.22.7" style="padding-left:1.4pt;padding-right:1.4pt;">64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.24.22.22.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.70</td>
</tr>
<tr class="ltx_tr" id="S5.T2.26.24.24">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.26.24.24.3" style="padding-left:1.4pt;padding-right:1.4pt;">VQGAN-LC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.26.24.24.4" style="padding-left:1.4pt;padding-right:1.4pt;">CLIP</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.25.23.23.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="10^{5}" class="ltx_Math" display="inline" id="S5.T2.25.23.23.1.m1.1"><semantics id="S5.T2.25.23.23.1.m1.1a"><msup id="S5.T2.25.23.23.1.m1.1.1" xref="S5.T2.25.23.23.1.m1.1.1.cmml"><mn id="S5.T2.25.23.23.1.m1.1.1.2" xref="S5.T2.25.23.23.1.m1.1.1.2.cmml">10</mn><mn id="S5.T2.25.23.23.1.m1.1.1.3" xref="S5.T2.25.23.23.1.m1.1.1.3.cmml">5</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.25.23.23.1.m1.1b"><apply id="S5.T2.25.23.23.1.m1.1.1.cmml" xref="S5.T2.25.23.23.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.25.23.23.1.m1.1.1.1.cmml" xref="S5.T2.25.23.23.1.m1.1.1">superscript</csymbol><cn id="S5.T2.25.23.23.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.25.23.23.1.m1.1.1.2">10</cn><cn id="S5.T2.25.23.23.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.25.23.23.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.25.23.23.1.m1.1c">10^{5}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.25.23.23.1.m1.1d">10 start_POSTSUPERSCRIPT 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.26.24.24.5" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.26.24.24.6" style="padding-left:1.4pt;padding-right:1.4pt;">99%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.26.24.24.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.26.24.24.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.26.24.24.2.m1.1"><semantics id="S5.T2.26.24.24.2.m1.1a"><msup id="S5.T2.26.24.24.2.m1.1.1" xref="S5.T2.26.24.24.2.m1.1.1.cmml"><mn id="S5.T2.26.24.24.2.m1.1.1.2" xref="S5.T2.26.24.24.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.26.24.24.2.m1.1.1.3" xref="S5.T2.26.24.24.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.26.24.24.2.m1.1b"><apply id="S5.T2.26.24.24.2.m1.1.1.cmml" xref="S5.T2.26.24.24.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.26.24.24.2.m1.1.1.1.cmml" xref="S5.T2.26.24.24.2.m1.1.1">superscript</csymbol><cn id="S5.T2.26.24.24.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.26.24.24.2.m1.1.1.2">16</cn><cn id="S5.T2.26.24.24.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.26.24.24.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.26.24.24.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.26.24.24.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.26.24.24.8" style="padding-left:1.4pt;padding-right:1.4pt;">2.62</td>
</tr>
<tr class="ltx_tr" id="S5.T2.28.26.26">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.28.26.26.3" style="padding-left:1.4pt;padding-right:1.4pt;">VQ-KD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.28.26.26.4" style="padding-left:1.4pt;padding-right:1.4pt;">DINO</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.27.25.25.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{13}" class="ltx_Math" display="inline" id="S5.T2.27.25.25.1.m1.1"><semantics id="S5.T2.27.25.25.1.m1.1a"><msup id="S5.T2.27.25.25.1.m1.1.1" xref="S5.T2.27.25.25.1.m1.1.1.cmml"><mn id="S5.T2.27.25.25.1.m1.1.1.2" xref="S5.T2.27.25.25.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.27.25.25.1.m1.1.1.3" xref="S5.T2.27.25.25.1.m1.1.1.3.cmml">13</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.27.25.25.1.m1.1b"><apply id="S5.T2.27.25.25.1.m1.1.1.cmml" xref="S5.T2.27.25.25.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.27.25.25.1.m1.1.1.1.cmml" xref="S5.T2.27.25.25.1.m1.1.1">superscript</csymbol><cn id="S5.T2.27.25.25.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.27.25.25.1.m1.1.1.2">2</cn><cn id="S5.T2.27.25.25.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.27.25.25.1.m1.1.1.3">13</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.27.25.25.1.m1.1c">2^{13}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.27.25.25.1.m1.1d">2 start_POSTSUPERSCRIPT 13 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.28.26.26.5" style="padding-left:1.4pt;padding-right:1.4pt;">32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.28.26.26.6" style="padding-left:1.4pt;padding-right:1.4pt;">100%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.28.26.26.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.28.26.26.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.28.26.26.2.m1.1"><semantics id="S5.T2.28.26.26.2.m1.1a"><msup id="S5.T2.28.26.26.2.m1.1.1" xref="S5.T2.28.26.26.2.m1.1.1.cmml"><mn id="S5.T2.28.26.26.2.m1.1.1.2" xref="S5.T2.28.26.26.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.28.26.26.2.m1.1.1.3" xref="S5.T2.28.26.26.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.28.26.26.2.m1.1b"><apply id="S5.T2.28.26.26.2.m1.1.1.cmml" xref="S5.T2.28.26.26.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.28.26.26.2.m1.1.1.1.cmml" xref="S5.T2.28.26.26.2.m1.1.1">superscript</csymbol><cn id="S5.T2.28.26.26.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.28.26.26.2.m1.1.1.2">16</cn><cn id="S5.T2.28.26.26.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.28.26.26.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.28.26.26.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.28.26.26.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.28.26.26.8" style="padding-left:1.4pt;padding-right:1.4pt;">3.41</td>
</tr>
<tr class="ltx_tr" id="S5.T2.30.28.28">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.30.28.28.3" style="padding-left:1.4pt;padding-right:1.4pt;">MAGVIT-v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.30.28.28.4" style="padding-left:1.4pt;padding-right:1.4pt;">LFQ</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.29.27.27.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="S5.T2.29.27.27.1.m1.1"><semantics id="S5.T2.29.27.27.1.m1.1a"><msup id="S5.T2.29.27.27.1.m1.1.1" xref="S5.T2.29.27.27.1.m1.1.1.cmml"><mn id="S5.T2.29.27.27.1.m1.1.1.2" xref="S5.T2.29.27.27.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.29.27.27.1.m1.1.1.3" xref="S5.T2.29.27.27.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.29.27.27.1.m1.1b"><apply id="S5.T2.29.27.27.1.m1.1.1.cmml" xref="S5.T2.29.27.27.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.29.27.27.1.m1.1.1.1.cmml" xref="S5.T2.29.27.27.1.m1.1.1">superscript</csymbol><cn id="S5.T2.29.27.27.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.29.27.27.1.m1.1.1.2">2</cn><cn id="S5.T2.29.27.27.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.29.27.27.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.29.27.27.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.29.27.27.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.30.28.28.5" style="padding-left:1.4pt;padding-right:1.4pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.30.28.28.6" style="padding-left:1.4pt;padding-right:1.4pt;">100%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.30.28.28.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.30.28.28.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.30.28.28.2.m1.1"><semantics id="S5.T2.30.28.28.2.m1.1a"><msup id="S5.T2.30.28.28.2.m1.1.1" xref="S5.T2.30.28.28.2.m1.1.1.cmml"><mn id="S5.T2.30.28.28.2.m1.1.1.2" xref="S5.T2.30.28.28.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.30.28.28.2.m1.1.1.3" xref="S5.T2.30.28.28.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.30.28.28.2.m1.1b"><apply id="S5.T2.30.28.28.2.m1.1.1.cmml" xref="S5.T2.30.28.28.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.30.28.28.2.m1.1.1.1.cmml" xref="S5.T2.30.28.28.2.m1.1.1">superscript</csymbol><cn id="S5.T2.30.28.28.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.30.28.28.2.m1.1.1.2">16</cn><cn id="S5.T2.30.28.28.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.30.28.28.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.30.28.28.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.30.28.28.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.30.28.28.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.16</td>
</tr>
<tr class="ltx_tr" id="S5.T2.32.30.30">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.32.30.30.3" style="padding-left:1.4pt;padding-right:1.4pt;">OpenMAGVIT2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.32.30.30.4" style="padding-left:1.4pt;padding-right:1.4pt;">LFQ</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.31.29.29.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="S5.T2.31.29.29.1.m1.1"><semantics id="S5.T2.31.29.29.1.m1.1a"><msup id="S5.T2.31.29.29.1.m1.1.1" xref="S5.T2.31.29.29.1.m1.1.1.cmml"><mn id="S5.T2.31.29.29.1.m1.1.1.2" xref="S5.T2.31.29.29.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.31.29.29.1.m1.1.1.3" xref="S5.T2.31.29.29.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.31.29.29.1.m1.1b"><apply id="S5.T2.31.29.29.1.m1.1.1.cmml" xref="S5.T2.31.29.29.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.31.29.29.1.m1.1.1.1.cmml" xref="S5.T2.31.29.29.1.m1.1.1">superscript</csymbol><cn id="S5.T2.31.29.29.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.31.29.29.1.m1.1.1.2">2</cn><cn id="S5.T2.31.29.29.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.31.29.29.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.31.29.29.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.31.29.29.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.32.30.30.5" style="padding-left:1.4pt;padding-right:1.4pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.32.30.30.6" style="padding-left:1.4pt;padding-right:1.4pt;">100%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.32.30.30.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.32.30.30.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.32.30.30.2.m1.1"><semantics id="S5.T2.32.30.30.2.m1.1a"><msup id="S5.T2.32.30.30.2.m1.1.1" xref="S5.T2.32.30.30.2.m1.1.1.cmml"><mn id="S5.T2.32.30.30.2.m1.1.1.2" xref="S5.T2.32.30.30.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.32.30.30.2.m1.1.1.3" xref="S5.T2.32.30.30.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.32.30.30.2.m1.1b"><apply id="S5.T2.32.30.30.2.m1.1.1.cmml" xref="S5.T2.32.30.30.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.32.30.30.2.m1.1.1.1.cmml" xref="S5.T2.32.30.30.2.m1.1.1">superscript</csymbol><cn id="S5.T2.32.30.30.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.32.30.30.2.m1.1.1.2">16</cn><cn id="S5.T2.32.30.30.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.32.30.30.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.32.30.30.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.32.30.30.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.32.30.30.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.17</td>
</tr>
<tr class="ltx_tr" id="S5.T2.34.32.32">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.34.32.32.3" style="padding-left:1.4pt;padding-right:1.4pt;">MaskBiT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.34.32.32.4" style="padding-left:1.4pt;padding-right:1.4pt;">LFQ</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.33.31.31.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{14}" class="ltx_Math" display="inline" id="S5.T2.33.31.31.1.m1.1"><semantics id="S5.T2.33.31.31.1.m1.1a"><msup id="S5.T2.33.31.31.1.m1.1.1" xref="S5.T2.33.31.31.1.m1.1.1.cmml"><mn id="S5.T2.33.31.31.1.m1.1.1.2" xref="S5.T2.33.31.31.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.33.31.31.1.m1.1.1.3" xref="S5.T2.33.31.31.1.m1.1.1.3.cmml">14</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.33.31.31.1.m1.1b"><apply id="S5.T2.33.31.31.1.m1.1.1.cmml" xref="S5.T2.33.31.31.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.33.31.31.1.m1.1.1.1.cmml" xref="S5.T2.33.31.31.1.m1.1.1">superscript</csymbol><cn id="S5.T2.33.31.31.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.33.31.31.1.m1.1.1.2">2</cn><cn id="S5.T2.33.31.31.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.33.31.31.1.m1.1.1.3">14</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.33.31.31.1.m1.1c">2^{14}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.33.31.31.1.m1.1d">2 start_POSTSUPERSCRIPT 14 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.34.32.32.5" style="padding-left:1.4pt;padding-right:1.4pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.34.32.32.6" style="padding-left:1.4pt;padding-right:1.4pt;">100%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.34.32.32.7" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.34.32.32.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.34.32.32.2.m1.1"><semantics id="S5.T2.34.32.32.2.m1.1a"><msup id="S5.T2.34.32.32.2.m1.1.1" xref="S5.T2.34.32.32.2.m1.1.1.cmml"><mn id="S5.T2.34.32.32.2.m1.1.1.2" xref="S5.T2.34.32.32.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.34.32.32.2.m1.1.1.3" xref="S5.T2.34.32.32.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.34.32.32.2.m1.1b"><apply id="S5.T2.34.32.32.2.m1.1.1.cmml" xref="S5.T2.34.32.32.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.34.32.32.2.m1.1.1.1.cmml" xref="S5.T2.34.32.32.2.m1.1.1">superscript</csymbol><cn id="S5.T2.34.32.32.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.34.32.32.2.m1.1.1.2">16</cn><cn id="S5.T2.34.32.32.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.34.32.32.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.34.32.32.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.34.32.32.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.34.32.32.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.37</td>
</tr>
<tr class="ltx_tr" id="S5.T2.35.33.33" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.35.33.33.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.35.33.33.2.1" style="background-color:#EFEFEF;">MergeVQ (R)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.35.33.33.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.35.33.33.3.1" style="background-color:#EFEFEF;">LFQ</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.35.33.33.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="S5.T2.35.33.33.1.m1.1" style="background-color:#EFEFEF;"><semantics id="S5.T2.35.33.33.1.m1.1a"><msup id="S5.T2.35.33.33.1.m1.1.1" xref="S5.T2.35.33.33.1.m1.1.1.cmml"><mn id="S5.T2.35.33.33.1.m1.1.1.2" mathbackground="#EFEFEF" xref="S5.T2.35.33.33.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.35.33.33.1.m1.1.1.3" mathbackground="#EFEFEF" xref="S5.T2.35.33.33.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.35.33.33.1.m1.1b"><apply id="S5.T2.35.33.33.1.m1.1.1.cmml" xref="S5.T2.35.33.33.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.35.33.33.1.m1.1.1.1.cmml" xref="S5.T2.35.33.33.1.m1.1.1">superscript</csymbol><cn id="S5.T2.35.33.33.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.35.33.33.1.m1.1.1.2">2</cn><cn id="S5.T2.35.33.33.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.35.33.33.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.35.33.33.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.35.33.33.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.35.33.33.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.35.33.33.4.1" style="background-color:#EFEFEF;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.35.33.33.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.35.33.33.5.1" style="background-color:#EFEFEF;">86%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.35.33.33.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.35.33.33.6.1" style="background-color:#EFEFEF;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.35.33.33.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.35.33.33.7.1" style="background-color:#EFEFEF;">144</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.35.33.33.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.35.33.33.8.1" style="background-color:#EFEFEF;">4.67</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.36.34.34" style="background-color:#CFEFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.36.34.34.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.36.34.34.2.1" style="background-color:#CFEFFF;">MergeVQ (G+R)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.36.34.34.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.36.34.34.3.1" style="background-color:#CFEFFF;">LFQ</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.36.34.34.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="S5.T2.36.34.34.1.m1.1" style="background-color:#CFEFFF;"><semantics id="S5.T2.36.34.34.1.m1.1a"><msup id="S5.T2.36.34.34.1.m1.1.1" xref="S5.T2.36.34.34.1.m1.1.1.cmml"><mn id="S5.T2.36.34.34.1.m1.1.1.2" mathbackground="#CFEFFF" xref="S5.T2.36.34.34.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.36.34.34.1.m1.1.1.3" mathbackground="#CFEFFF" xref="S5.T2.36.34.34.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.36.34.34.1.m1.1b"><apply id="S5.T2.36.34.34.1.m1.1.1.cmml" xref="S5.T2.36.34.34.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.36.34.34.1.m1.1.1.1.cmml" xref="S5.T2.36.34.34.1.m1.1.1">superscript</csymbol><cn id="S5.T2.36.34.34.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.36.34.34.1.m1.1.1.2">2</cn><cn id="S5.T2.36.34.34.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.36.34.34.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.36.34.34.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.36.34.34.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.36.34.34.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.36.34.34.4.1" style="background-color:#CFEFFF;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.36.34.34.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.36.34.34.5.1" style="background-color:#CFEFFF;">99%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.36.34.34.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.36.34.34.6.1" style="background-color:#CFEFFF;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.36.34.34.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.36.34.34.7.1" style="background-color:#CFEFFF;">144</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.36.34.34.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.36.34.34.8.1" style="background-color:#CFEFFF;">1.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.37.35.35" style="background-color:#CFEFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.37.35.35.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.37.35.35.2.1" style="background-color:#CFEFFF;">MergeVQ (G+R)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.37.35.35.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.37.35.35.3.1" style="background-color:#CFEFFF;">LFQ</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.37.35.35.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="S5.T2.37.35.35.1.m1.1" style="background-color:#CFEFFF;"><semantics id="S5.T2.37.35.35.1.m1.1a"><msup id="S5.T2.37.35.35.1.m1.1.1" xref="S5.T2.37.35.35.1.m1.1.1.cmml"><mn id="S5.T2.37.35.35.1.m1.1.1.2" mathbackground="#CFEFFF" xref="S5.T2.37.35.35.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.37.35.35.1.m1.1.1.3" mathbackground="#CFEFFF" xref="S5.T2.37.35.35.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.37.35.35.1.m1.1b"><apply id="S5.T2.37.35.35.1.m1.1.1.cmml" xref="S5.T2.37.35.35.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.37.35.35.1.m1.1.1.1.cmml" xref="S5.T2.37.35.35.1.m1.1.1">superscript</csymbol><cn id="S5.T2.37.35.35.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.37.35.35.1.m1.1.1.2">2</cn><cn id="S5.T2.37.35.35.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.37.35.35.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.37.35.35.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.37.35.35.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.37.35.35.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.37.35.35.4.1" style="background-color:#CFEFFF;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.37.35.35.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.37.35.35.5.1" style="background-color:#CFEFFF;">99%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.37.35.35.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.37.35.35.6.1" style="background-color:#CFEFFF;">16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.37.35.35.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.37.35.35.7.1" style="background-color:#CFEFFF;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.37.35.35.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.37.35.35.8.1" style="background-color:#CFEFFF;">1.12</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.39.37.37">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.39.37.37.3" style="padding-left:1.4pt;padding-right:1.4pt;">ViT-VQGAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T2.39.37.37.4" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.38.36.36.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{13}" class="ltx_Math" display="inline" id="S5.T2.38.36.36.1.m1.1"><semantics id="S5.T2.38.36.36.1.m1.1a"><msup id="S5.T2.38.36.36.1.m1.1.1" xref="S5.T2.38.36.36.1.m1.1.1.cmml"><mn id="S5.T2.38.36.36.1.m1.1.1.2" xref="S5.T2.38.36.36.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.38.36.36.1.m1.1.1.3" xref="S5.T2.38.36.36.1.m1.1.1.3.cmml">13</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.38.36.36.1.m1.1b"><apply id="S5.T2.38.36.36.1.m1.1.1.cmml" xref="S5.T2.38.36.36.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.38.36.36.1.m1.1.1.1.cmml" xref="S5.T2.38.36.36.1.m1.1.1">superscript</csymbol><cn id="S5.T2.38.36.36.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.38.36.36.1.m1.1.1.2">2</cn><cn id="S5.T2.38.36.36.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.38.36.36.1.m1.1.1.3">13</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.38.36.36.1.m1.1c">2^{13}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.38.36.36.1.m1.1d">2 start_POSTSUPERSCRIPT 13 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.39.37.37.5" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.39.37.37.6" style="padding-left:1.4pt;padding-right:1.4pt;">96%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.39.37.37.7" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.39.37.37.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.39.37.37.2.m1.1"><semantics id="S5.T2.39.37.37.2.m1.1a"><msup id="S5.T2.39.37.37.2.m1.1.1" xref="S5.T2.39.37.37.2.m1.1.1.cmml"><mn id="S5.T2.39.37.37.2.m1.1.1.2" xref="S5.T2.39.37.37.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.39.37.37.2.m1.1.1.3" xref="S5.T2.39.37.37.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.39.37.37.2.m1.1b"><apply id="S5.T2.39.37.37.2.m1.1.1.cmml" xref="S5.T2.39.37.37.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.39.37.37.2.m1.1.1.1.cmml" xref="S5.T2.39.37.37.2.m1.1.1">superscript</csymbol><cn id="S5.T2.39.37.37.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.39.37.37.2.m1.1.1.2">16</cn><cn id="S5.T2.39.37.37.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.39.37.37.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.39.37.37.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.39.37.37.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.39.37.37.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.28</td>
</tr>
<tr class="ltx_tr" id="S5.T2.42.40.40">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.42.40.40.4" style="padding-left:1.4pt;padding-right:1.4pt;">OmiTokenizer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.42.40.40.5" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.40.38.38.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{13}" class="ltx_Math" display="inline" id="S5.T2.40.38.38.1.m1.1"><semantics id="S5.T2.40.38.38.1.m1.1a"><msup id="S5.T2.40.38.38.1.m1.1.1" xref="S5.T2.40.38.38.1.m1.1.1.cmml"><mn id="S5.T2.40.38.38.1.m1.1.1.2" xref="S5.T2.40.38.38.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.40.38.38.1.m1.1.1.3" xref="S5.T2.40.38.38.1.m1.1.1.3.cmml">13</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.40.38.38.1.m1.1b"><apply id="S5.T2.40.38.38.1.m1.1.1.cmml" xref="S5.T2.40.38.38.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.40.38.38.1.m1.1.1.1.cmml" xref="S5.T2.40.38.38.1.m1.1.1">superscript</csymbol><cn id="S5.T2.40.38.38.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.40.38.38.1.m1.1.1.2">2</cn><cn id="S5.T2.40.38.38.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.40.38.38.1.m1.1.1.3">13</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.40.38.38.1.m1.1c">2^{13}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.40.38.38.1.m1.1d">2 start_POSTSUPERSCRIPT 13 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.42.40.40.6" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.41.39.39.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.41.39.39.2.m1.1"><semantics id="S5.T2.41.39.39.2.m1.1a"><mo id="S5.T2.41.39.39.2.m1.1.1" xref="S5.T2.41.39.39.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.41.39.39.2.m1.1b"><minus id="S5.T2.41.39.39.2.m1.1.1.cmml" xref="S5.T2.41.39.39.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.41.39.39.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.41.39.39.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.42.40.40.7" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.42.40.40.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.42.40.40.3.m1.1"><semantics id="S5.T2.42.40.40.3.m1.1a"><msup id="S5.T2.42.40.40.3.m1.1.1" xref="S5.T2.42.40.40.3.m1.1.1.cmml"><mn id="S5.T2.42.40.40.3.m1.1.1.2" xref="S5.T2.42.40.40.3.m1.1.1.2.cmml">16</mn><mn id="S5.T2.42.40.40.3.m1.1.1.3" xref="S5.T2.42.40.40.3.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.42.40.40.3.m1.1b"><apply id="S5.T2.42.40.40.3.m1.1.1.cmml" xref="S5.T2.42.40.40.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.42.40.40.3.m1.1.1.1.cmml" xref="S5.T2.42.40.40.3.m1.1.1">superscript</csymbol><cn id="S5.T2.42.40.40.3.m1.1.1.2.cmml" type="integer" xref="S5.T2.42.40.40.3.m1.1.1.2">16</cn><cn id="S5.T2.42.40.40.3.m1.1.1.3.cmml" type="integer" xref="S5.T2.42.40.40.3.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.42.40.40.3.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.42.40.40.3.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.42.40.40.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.11</td>
</tr>
<tr class="ltx_tr" id="S5.T2.44.42.42">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.44.42.42.3" style="padding-left:1.4pt;padding-right:1.4pt;">LlamaGen <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.44.42.42.4" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.43.41.41.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{14}" class="ltx_Math" display="inline" id="S5.T2.43.41.41.1.m1.1"><semantics id="S5.T2.43.41.41.1.m1.1a"><msup id="S5.T2.43.41.41.1.m1.1.1" xref="S5.T2.43.41.41.1.m1.1.1.cmml"><mn id="S5.T2.43.41.41.1.m1.1.1.2" xref="S5.T2.43.41.41.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.43.41.41.1.m1.1.1.3" xref="S5.T2.43.41.41.1.m1.1.1.3.cmml">14</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.43.41.41.1.m1.1b"><apply id="S5.T2.43.41.41.1.m1.1.1.cmml" xref="S5.T2.43.41.41.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.43.41.41.1.m1.1.1.1.cmml" xref="S5.T2.43.41.41.1.m1.1.1">superscript</csymbol><cn id="S5.T2.43.41.41.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.43.41.41.1.m1.1.1.2">2</cn><cn id="S5.T2.43.41.41.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.43.41.41.1.m1.1.1.3">14</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.43.41.41.1.m1.1c">2^{14}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.43.41.41.1.m1.1d">2 start_POSTSUPERSCRIPT 14 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.44.42.42.5" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.44.42.42.6" style="padding-left:1.4pt;padding-right:1.4pt;">97%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.44.42.42.7" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.44.42.42.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.44.42.42.2.m1.1"><semantics id="S5.T2.44.42.42.2.m1.1a"><msup id="S5.T2.44.42.42.2.m1.1.1" xref="S5.T2.44.42.42.2.m1.1.1.cmml"><mn id="S5.T2.44.42.42.2.m1.1.1.2" xref="S5.T2.44.42.42.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.44.42.42.2.m1.1.1.3" xref="S5.T2.44.42.42.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.44.42.42.2.m1.1b"><apply id="S5.T2.44.42.42.2.m1.1.1.cmml" xref="S5.T2.44.42.42.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.44.42.42.2.m1.1.1.1.cmml" xref="S5.T2.44.42.42.2.m1.1.1">superscript</csymbol><cn id="S5.T2.44.42.42.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.44.42.42.2.m1.1.1.2">16</cn><cn id="S5.T2.44.42.42.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.44.42.42.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.44.42.42.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.44.42.42.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.44.42.42.8" style="padding-left:1.4pt;padding-right:1.4pt;">0.59</td>
</tr>
<tr class="ltx_tr" id="S5.T2.47.45.45">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.47.45.45.4" style="padding-left:1.4pt;padding-right:1.4pt;">TiTok-S-128 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.47.45.45.5" style="padding-left:1.4pt;padding-right:1.4pt;">Cluster</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.45.43.43.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{12}" class="ltx_Math" display="inline" id="S5.T2.45.43.43.1.m1.1"><semantics id="S5.T2.45.43.43.1.m1.1a"><msup id="S5.T2.45.43.43.1.m1.1.1" xref="S5.T2.45.43.43.1.m1.1.1.cmml"><mn id="S5.T2.45.43.43.1.m1.1.1.2" xref="S5.T2.45.43.43.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.45.43.43.1.m1.1.1.3" xref="S5.T2.45.43.43.1.m1.1.1.3.cmml">12</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.45.43.43.1.m1.1b"><apply id="S5.T2.45.43.43.1.m1.1.1.cmml" xref="S5.T2.45.43.43.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.45.43.43.1.m1.1.1.1.cmml" xref="S5.T2.45.43.43.1.m1.1.1">superscript</csymbol><cn id="S5.T2.45.43.43.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.45.43.43.1.m1.1.1.2">2</cn><cn id="S5.T2.45.43.43.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.45.43.43.1.m1.1.1.3">12</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.45.43.43.1.m1.1c">2^{12}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.45.43.43.1.m1.1d">2 start_POSTSUPERSCRIPT 12 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.47.45.45.6" style="padding-left:1.4pt;padding-right:1.4pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.46.44.44.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.46.44.44.2.m1.1"><semantics id="S5.T2.46.44.44.2.m1.1a"><mo id="S5.T2.46.44.44.2.m1.1.1" xref="S5.T2.46.44.44.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.46.44.44.2.m1.1b"><minus id="S5.T2.46.44.44.2.m1.1.1.cmml" xref="S5.T2.46.44.44.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.46.44.44.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.46.44.44.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.47.45.45.3" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T2.47.45.45.3.m1.1"><semantics id="S5.T2.47.45.45.3.m1.1a"><mo id="S5.T2.47.45.45.3.m1.1.1" xref="S5.T2.47.45.45.3.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T2.47.45.45.3.m1.1b"><minus id="S5.T2.47.45.45.3.m1.1.1.cmml" xref="S5.T2.47.45.45.3.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.47.45.45.3.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T2.47.45.45.3.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.47.45.45.7" style="padding-left:1.4pt;padding-right:1.4pt;">128</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.47.45.45.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.71</td>
</tr>
<tr class="ltx_tr" id="S5.T2.49.47.47">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.49.47.47.3" style="padding-left:1.4pt;padding-right:1.4pt;">VQGAN-LC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.49.47.47.4" style="padding-left:1.4pt;padding-right:1.4pt;">CLIP</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.48.46.46.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="10^{5}" class="ltx_Math" display="inline" id="S5.T2.48.46.46.1.m1.1"><semantics id="S5.T2.48.46.46.1.m1.1a"><msup id="S5.T2.48.46.46.1.m1.1.1" xref="S5.T2.48.46.46.1.m1.1.1.cmml"><mn id="S5.T2.48.46.46.1.m1.1.1.2" xref="S5.T2.48.46.46.1.m1.1.1.2.cmml">10</mn><mn id="S5.T2.48.46.46.1.m1.1.1.3" xref="S5.T2.48.46.46.1.m1.1.1.3.cmml">5</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.48.46.46.1.m1.1b"><apply id="S5.T2.48.46.46.1.m1.1.1.cmml" xref="S5.T2.48.46.46.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.48.46.46.1.m1.1.1.1.cmml" xref="S5.T2.48.46.46.1.m1.1.1">superscript</csymbol><cn id="S5.T2.48.46.46.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.48.46.46.1.m1.1.1.2">10</cn><cn id="S5.T2.48.46.46.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.48.46.46.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.48.46.46.1.m1.1c">10^{5}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.48.46.46.1.m1.1d">10 start_POSTSUPERSCRIPT 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.49.47.47.5" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.49.47.47.6" style="padding-left:1.4pt;padding-right:1.4pt;">99%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.49.47.47.7" style="padding-left:1.4pt;padding-right:1.4pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.49.47.47.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="16^{2}" class="ltx_Math" display="inline" id="S5.T2.49.47.47.2.m1.1"><semantics id="S5.T2.49.47.47.2.m1.1a"><msup id="S5.T2.49.47.47.2.m1.1.1" xref="S5.T2.49.47.47.2.m1.1.1.cmml"><mn id="S5.T2.49.47.47.2.m1.1.1.2" xref="S5.T2.49.47.47.2.m1.1.1.2.cmml">16</mn><mn id="S5.T2.49.47.47.2.m1.1.1.3" xref="S5.T2.49.47.47.2.m1.1.1.3.cmml">2</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.49.47.47.2.m1.1b"><apply id="S5.T2.49.47.47.2.m1.1.1.cmml" xref="S5.T2.49.47.47.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.49.47.47.2.m1.1.1.1.cmml" xref="S5.T2.49.47.47.2.m1.1.1">superscript</csymbol><cn id="S5.T2.49.47.47.2.m1.1.1.2.cmml" type="integer" xref="S5.T2.49.47.47.2.m1.1.1.2">16</cn><cn id="S5.T2.49.47.47.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.49.47.47.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.49.47.47.2.m1.1c">16^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.49.47.47.2.m1.1d">16 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.49.47.47.8" style="padding-left:1.4pt;padding-right:1.4pt;">1.29</td>
</tr>
<tr class="ltx_tr" id="S5.T2.50.48.48" style="background-color:#CFEFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.50.48.48.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.50.48.48.2.1" style="background-color:#CFEFFF;">MergeVQ (G)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.50.48.48.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.50.48.48.3.1" style="background-color:#CFEFFF;">LFQ</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.50.48.48.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="S5.T2.50.48.48.1.m1.1" style="background-color:#CFEFFF;"><semantics id="S5.T2.50.48.48.1.m1.1a"><msup id="S5.T2.50.48.48.1.m1.1.1" xref="S5.T2.50.48.48.1.m1.1.1.cmml"><mn id="S5.T2.50.48.48.1.m1.1.1.2" mathbackground="#CFEFFF" xref="S5.T2.50.48.48.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.50.48.48.1.m1.1.1.3" mathbackground="#CFEFFF" xref="S5.T2.50.48.48.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.50.48.48.1.m1.1b"><apply id="S5.T2.50.48.48.1.m1.1.1.cmml" xref="S5.T2.50.48.48.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.50.48.48.1.m1.1.1.1.cmml" xref="S5.T2.50.48.48.1.m1.1.1">superscript</csymbol><cn id="S5.T2.50.48.48.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.50.48.48.1.m1.1.1.2">2</cn><cn id="S5.T2.50.48.48.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.50.48.48.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.50.48.48.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.50.48.48.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.50.48.48.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.50.48.48.4.1" style="background-color:#CFEFFF;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T2.50.48.48.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.50.48.48.5.1" style="background-color:#CFEFFF;">100%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.50.48.48.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.50.48.48.6.1" style="background-color:#CFEFFF;">8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.50.48.48.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.50.48.48.7.1" style="background-color:#CFEFFF;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.50.48.48.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.50.48.48.8.1" style="background-color:#CFEFFF;">1.06</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.51.49.49" style="background-color:#CFEFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.51.49.49.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.51.49.49.2.1" style="background-color:#CFEFFF;">MergeVQ (G)</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T2.51.49.49.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.51.49.49.3.1" style="background-color:#CFEFFF;">LFQ</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.51.49.49.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="S5.T2.51.49.49.1.m1.1" style="background-color:#CFEFFF;"><semantics id="S5.T2.51.49.49.1.m1.1a"><msup id="S5.T2.51.49.49.1.m1.1.1" xref="S5.T2.51.49.49.1.m1.1.1.cmml"><mn id="S5.T2.51.49.49.1.m1.1.1.2" mathbackground="#CFEFFF" xref="S5.T2.51.49.49.1.m1.1.1.2.cmml">2</mn><mn id="S5.T2.51.49.49.1.m1.1.1.3" mathbackground="#CFEFFF" xref="S5.T2.51.49.49.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="S5.T2.51.49.49.1.m1.1b"><apply id="S5.T2.51.49.49.1.m1.1.1.cmml" xref="S5.T2.51.49.49.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.51.49.49.1.m1.1.1.1.cmml" xref="S5.T2.51.49.49.1.m1.1.1">superscript</csymbol><cn id="S5.T2.51.49.49.1.m1.1.1.2.cmml" type="integer" xref="S5.T2.51.49.49.1.m1.1.1.2">2</cn><cn id="S5.T2.51.49.49.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.51.49.49.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.51.49.49.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.51.49.49.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.51.49.49.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.51.49.49.4.1" style="background-color:#CFEFFF;">1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.51.49.49.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.51.49.49.5.1" style="background-color:#CFEFFF;">100%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.51.49.49.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.51.49.49.6.1" style="background-color:#CFEFFF;">8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.51.49.49.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.51.49.49.7.1" style="background-color:#CFEFFF;">1024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.51.49.49.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.51.49.49.8.1" style="background-color:#CFEFFF;">0.54</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of different Vector Quantization (VQ) based tokenizers' reconstruction performance on the ImageNet-1K dataset.  The models are evaluated on 256x256 images, using the reconstruction Fréchet Inception Distance (rFID) as a metric.  The table details the type, size, and dimensionality of each model's codebook, along with its usage ratio.  It also shows the downsampling rate and the number of tokens used by each model. Lower rFID values indicate better reconstruction quality.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of reconstruction on 256×\times×256 ImageNet-1K with reconstruction FID (rFID) of VQ tokenizers. We sum up the types, sizes, and dims of the codebook with its usage ratio. Ratio and #Tokens denote the downsampling rate and token number.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.14.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.10.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.10.2.2.3" style="padding-left:0.9pt;padding-right:0.9pt;">Type</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.10.2.2.4" style="padding-left:0.9pt;padding-right:0.9pt;">Tokenizer</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.10.2.2.5" style="padding-left:0.9pt;padding-right:0.9pt;">Generator</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.10.2.2.6" style="padding-left:0.9pt;padding-right:0.9pt;"># P.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.10.2.2.7" style="padding-left:0.9pt;padding-right:0.9pt;">Step</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.9.1.1.1" style="padding-left:0.9pt;padding-right:0.9pt;">gFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.9.1.1.1.m1.1"><semantics id="S5.T3.9.1.1.1.m1.1a"><mo id="S5.T3.9.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.9.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.9.1.1.1.m1.1b"><ci id="S5.T3.9.1.1.1.m1.1.1.cmml" xref="S5.T3.9.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.10.2.2.2" style="padding-left:0.9pt;padding-right:0.9pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.10.2.2.2.m1.1"><semantics id="S5.T3.10.2.2.2.m1.1a"><mo id="S5.T3.10.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.10.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.10.2.2.2.m1.1b"><ci id="S5.T3.10.2.2.2.m1.1.1.cmml" xref="S5.T3.10.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.7.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S5.T3.14.6.7.1.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S5.T3.14.6.7.1.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.7.1.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.7.1.3.1" style="font-size:90%;">LDM-4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.7.1.4" style="padding-left:0.9pt;padding-right:0.9pt;">400M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.7.1.5" style="padding-left:0.9pt;padding-right:0.9pt;">250</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.7.1.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.7.1.7" style="padding-left:0.9pt;padding-right:0.9pt;">247.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.8.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.8.2.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S5.T3.14.6.8.2.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.8.2.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.8.2.3.1" style="font-size:90%;">UViT-L/2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.8.2.4" style="padding-left:0.9pt;padding-right:0.9pt;">287M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.8.2.5" style="padding-left:0.9pt;padding-right:0.9pt;">250</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.8.2.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.8.2.7" style="padding-left:0.9pt;padding-right:0.9pt;">219.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.9.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.9.3.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S5.T3.14.6.9.3.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.9.3.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.9.3.3.1" style="font-size:90%;">UViT-H/2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.9.3.4" style="padding-left:0.9pt;padding-right:0.9pt;">501M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.9.3.5" style="padding-left:0.9pt;padding-right:0.9pt;">250</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.9.3.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.9.3.7" style="padding-left:0.9pt;padding-right:0.9pt;">263.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.11.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.11.3.3.2" style="padding-left:0.9pt;padding-right:0.9pt;">Diff.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.11.3.3.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.11.3.3.1.1" style="font-size:90%;color:#808080;">VAE<sup class="ltx_sup" id="S5.T3.11.3.3.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.11.3.3.1.1.1.1">‡</span></sup></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.11.3.3.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.11.3.3.3.1" style="font-size:90%;">DiT-XL/2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.11.3.3.4" style="padding-left:0.9pt;padding-right:0.9pt;">675M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.11.3.3.5" style="padding-left:0.9pt;padding-right:0.9pt;">250</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.11.3.3.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.11.3.3.7" style="padding-left:0.9pt;padding-right:0.9pt;">278.2</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.10.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.10.4.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S5.T3.14.6.10.4.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.10.4.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.10.4.3.1" style="font-size:90%;">MDTv2-XL/2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.10.4.4" style="padding-left:0.9pt;padding-right:0.9pt;">676M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.10.4.5" style="padding-left:0.9pt;padding-right:0.9pt;">250</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.10.4.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.10.4.6.1">1.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.10.4.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.10.4.7.1">314.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.11.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.11.5.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S5.T3.14.6.11.5.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.11.5.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.11.5.3.1" style="font-size:90%;">SiT-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.11.5.4" style="padding-left:0.9pt;padding-right:0.9pt;">675M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.11.5.5" style="padding-left:0.9pt;padding-right:0.9pt;">250</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.11.5.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.11.5.7" style="padding-left:0.9pt;padding-right:0.9pt;">270.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.12.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.12.6.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S5.T3.14.6.12.6.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.12.6.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.12.6.3.1" style="font-size:90%;">DiMR-XL/2R <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.12.6.4" style="padding-left:0.9pt;padding-right:0.9pt;">505M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.12.6.5" style="padding-left:0.9pt;padding-right:0.9pt;">250</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.12.6.6" style="padding-left:0.9pt;padding-right:0.9pt;">1.70</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.12.6.7" style="padding-left:0.9pt;padding-right:0.9pt;">289.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.13.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S5.T3.14.6.13.7.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.13.7.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.13.7.2.1" style="font-size:90%;color:#808080;">VQGAN</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.13.7.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.13.7.3.1" style="font-size:90%;">MaskGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.13.7.4" style="padding-left:0.9pt;padding-right:0.9pt;">177M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.13.7.5" style="padding-left:0.9pt;padding-right:0.9pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.13.7.6" style="padding-left:0.9pt;padding-right:0.9pt;">6.18</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.13.7.7" style="padding-left:0.9pt;padding-right:0.9pt;">182.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.12.4.4.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.12.4.4.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.12.4.4.1.1" style="font-size:80%;">TiTok-B-64<sup class="ltx_sup" id="S5.T3.12.4.4.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.12.4.4.1.1.1.1">‡</span></sup></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.12.4.4.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.12.4.4.3.1" style="font-size:90%;">MaskGIT-ViT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.12.4.4.4" style="padding-left:0.9pt;padding-right:0.9pt;">177M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.12.4.4.5" style="padding-left:0.9pt;padding-right:0.9pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.12.4.4.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.12.4.4.7" style="padding-left:0.9pt;padding-right:0.9pt;">262.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.13.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.13.5.5.2" style="padding-left:0.9pt;padding-right:0.9pt;">Mask.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.13.5.5.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.13.5.5.1.1" style="font-size:80%;">TiTok-S-128<sup class="ltx_sup" id="S5.T3.13.5.5.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.13.5.5.1.1.1.1">‡</span></sup></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.13.5.5.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.13.5.5.3.1" style="font-size:80%;">MaskGIT-UViT-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.13.5.5.4" style="padding-left:0.9pt;padding-right:0.9pt;">287M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.13.5.5.5" style="padding-left:0.9pt;padding-right:0.9pt;">64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.13.5.5.6" style="padding-left:0.9pt;padding-right:0.9pt;">1.97</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.13.5.5.7" style="padding-left:0.9pt;padding-right:0.9pt;">281.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.14.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.14.8.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.14.8.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.14.8.2.1" style="font-size:90%;">MAR</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.14.8.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.14.8.3.1" style="font-size:90%;">MAR-B-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.14.8.4" style="padding-left:0.9pt;padding-right:0.9pt;">208M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.14.8.5" style="padding-left:0.9pt;padding-right:0.9pt;">100</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.14.8.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.31</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.14.8.7" style="padding-left:0.9pt;padding-right:0.9pt;">281.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.15.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.15.9.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.15.9.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.15.9.2.1" style="font-size:90%;">MAR</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.15.9.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.15.9.3.1" style="font-size:90%;">MAR-L-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.15.9.4" style="padding-left:0.9pt;padding-right:0.9pt;">479M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.15.9.5" style="padding-left:0.9pt;padding-right:0.9pt;">100</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.15.9.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.15.9.6.1">1.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.15.9.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.15.9.7.1">296.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.16.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S5.T3.14.6.16.10.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S5.T3.14.6.16.10.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.16.10.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.16.10.3.1" style="font-size:90%;">VAR-d16 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.16.10.4" style="padding-left:0.9pt;padding-right:0.9pt;">310M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.16.10.5" style="padding-left:0.9pt;padding-right:0.9pt;">10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.16.10.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.30</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.16.10.7" style="padding-left:0.9pt;padding-right:0.9pt;">274.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.14.6.6.2" style="padding-left:0.9pt;padding-right:0.9pt;">VAR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.6.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.6.1.1" style="font-size:90%;">VAR<sup class="ltx_sup" id="S5.T3.14.6.6.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.14.6.6.1.1.1.1">‡</span></sup></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.6.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.6.3.1" style="font-size:90%;">VAR-d20 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.6.4" style="padding-left:0.9pt;padding-right:0.9pt;">600M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.6.5" style="padding-left:0.9pt;padding-right:0.9pt;">10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.6.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.6.7" style="padding-left:0.9pt;padding-right:0.9pt;">302.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.17.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.17.11.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S5.T3.14.6.17.11.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.17.11.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.17.11.3.1" style="font-size:90%;">VAR-d24 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.17.11.4" style="padding-left:0.9pt;padding-right:0.9pt;">1.0B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.17.11.5" style="padding-left:0.9pt;padding-right:0.9pt;">10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.17.11.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.17.11.6.1">2.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.17.11.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.17.11.7.1">312.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.18.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S5.T3.14.6.18.12.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.18.12.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.18.12.2.1" style="font-size:90%;">VQGAN</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.18.12.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.18.12.3.1" style="font-size:90%;color:#808080;">GPT2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.18.12.4" style="padding-left:0.9pt;padding-right:0.9pt;">1.4B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.18.12.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.18.12.6" style="padding-left:0.9pt;padding-right:0.9pt;">15.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.18.12.7" style="padding-left:0.9pt;padding-right:0.9pt;">74.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.19.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.19.13.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.19.13.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.19.13.2.1" style="font-size:90%;">VQGAN</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.19.13.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.19.13.3.1" style="font-size:90%;color:#808080;">GPT2-re <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.19.13.4" style="padding-left:0.9pt;padding-right:0.9pt;">1.4B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.19.13.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.19.13.6" style="padding-left:0.9pt;padding-right:0.9pt;">5.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.19.13.7" style="padding-left:0.9pt;padding-right:0.9pt;">280.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.20.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.20.14.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.20.14.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.20.14.2.1" style="font-size:90%;">VIT-VQGAN</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.20.14.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.20.14.3.1" style="font-size:90%;">VIM-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.20.14.4" style="padding-left:0.9pt;padding-right:0.9pt;">1.7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.20.14.5" style="padding-left:0.9pt;padding-right:0.9pt;">1024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.20.14.6" style="padding-left:0.9pt;padding-right:0.9pt;">4.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.20.14.7" style="padding-left:0.9pt;padding-right:0.9pt;">175.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.21.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.21.15.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.21.15.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.21.15.2.1" style="font-size:90%;">ViT-VQGAN</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.21.15.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.21.15.3.1" style="font-size:90%;">VIM-L-re <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.21.15.4" style="padding-left:0.9pt;padding-right:0.9pt;">1.7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.21.15.5" style="padding-left:0.9pt;padding-right:0.9pt;">1024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.21.15.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.04</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.21.15.7" style="padding-left:0.9pt;padding-right:0.9pt;">227.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.22.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.22.16.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.22.16.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.22.16.2.1" style="font-size:90%;">RQ-VAE</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.22.16.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.22.16.3.1" style="font-size:90%;">RQ-Trans.-re <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.22.16.4" style="padding-left:0.9pt;padding-right:0.9pt;">3.8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.22.16.5" style="padding-left:0.9pt;padding-right:0.9pt;">64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.22.16.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.22.16.7" style="padding-left:0.9pt;padding-right:0.9pt;">323.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.23.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.23.17.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.23.17.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.23.17.2.1" style="font-size:90%;">MAGVIT-v2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.23.17.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.23.17.3.1" style="font-size:90%;">MAGVIT-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.23.17.4" style="padding-left:0.9pt;padding-right:0.9pt;">307M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.23.17.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.23.17.6" style="padding-left:0.9pt;padding-right:0.9pt;">1.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.23.17.7" style="padding-left:0.9pt;padding-right:0.9pt;">319.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.24.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.14.6.24.18.1" style="padding-left:0.9pt;padding-right:0.9pt;">AR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.24.18.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.24.18.2.1" style="font-size:90%;">LlamaGen</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.24.18.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.24.18.3.1" style="font-size:90%;">LlamaGen-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.24.18.4" style="padding-left:0.9pt;padding-right:0.9pt;">343M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.24.18.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.24.18.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.24.18.7" style="padding-left:0.9pt;padding-right:0.9pt;">248.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.25.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.14.6.25.19.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.25.19.1.1" style="font-size:90%;">(raster)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.25.19.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.25.19.2.1" style="font-size:90%;">LlamaGen</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.25.19.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.25.19.3.1" style="font-size:80%;">LlamaGen-L-384 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.25.19.4" style="padding-left:0.9pt;padding-right:0.9pt;">343M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.25.19.5" style="padding-left:0.9pt;padding-right:0.9pt;">576</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.25.19.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.07</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.25.19.7" style="padding-left:0.9pt;padding-right:0.9pt;">256.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.26.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.26.20.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.26.20.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.26.20.2.1" style="font-size:90%;">LlamaGen</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.26.20.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.26.20.3.1" style="font-size:90%;">LlamaGen-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.26.20.4" style="padding-left:0.9pt;padding-right:0.9pt;">775M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.26.20.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.26.20.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.26.20.7" style="padding-left:0.9pt;padding-right:0.9pt;">227.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.27.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.27.21.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.27.21.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.27.21.2.1" style="font-size:90%;">LlamaGen</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.27.21.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.27.21.3.1" style="font-size:80%;">LlamaGen-XL-384 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.27.21.4" style="padding-left:0.9pt;padding-right:0.9pt;">775M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.27.21.5" style="padding-left:0.9pt;padding-right:0.9pt;">576</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.27.21.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.27.21.7" style="padding-left:0.9pt;padding-right:0.9pt;">244.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.28.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.28.22.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.28.22.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.28.22.2.1" style="font-size:80%;">OpenMAGVIT2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.28.22.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.28.22.3.1" style="font-size:80%;">OpenMAGVIT2-B<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.28.22.4" style="padding-left:0.9pt;padding-right:0.9pt;">343M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.28.22.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.28.22.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.28.22.7" style="padding-left:0.9pt;padding-right:0.9pt;">258.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.29.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.29.23.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.29.23.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.29.23.2.1" style="font-size:80%;">OpenMAGVIT2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.29.23.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.29.23.3.1" style="font-size:80%;">Open-MAGVIT2-L<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.29.23.4" style="padding-left:0.9pt;padding-right:0.9pt;">804M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.29.23.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.29.23.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.29.23.7" style="padding-left:0.9pt;padding-right:0.9pt;">271.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.30.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.30.24.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.30.24.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.30.24.2.1" style="font-size:90%;">MaskBit</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.30.24.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.30.24.3.1" style="font-size:90%;">LlamaGen-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.30.24.4" style="padding-left:0.9pt;padding-right:0.9pt;">305M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.30.24.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.30.24.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.30.24.6.1">1.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.30.24.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.30.24.7.1">328.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.31.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S5.T3.14.6.31.25.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.31.25.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.31.25.2.1" style="font-size:90%;color:#808080;">VQGAN</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.31.25.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.31.25.3.1" style="font-size:90%;">MAGE-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.31.25.4" style="padding-left:0.9pt;padding-right:0.9pt;">230M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.31.25.5" style="padding-left:0.9pt;padding-right:0.9pt;">20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.31.25.6" style="padding-left:0.9pt;padding-right:0.9pt;">6.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.31.25.7" style="padding-left:0.9pt;padding-right:0.9pt;">195.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.32.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.14.6.32.26.1" style="padding-left:0.9pt;padding-right:0.9pt;">AR &amp;</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.32.26.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.32.26.2.1" style="font-size:90%;color:#808080;">VQGAN</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.32.26.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.32.26.3.1" style="font-size:90%;">DiGIT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.32.26.4" style="padding-left:0.9pt;padding-right:0.9pt;">732M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.32.26.5" style="padding-left:0.9pt;padding-right:0.9pt;">256</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.32.26.6" style="padding-left:0.9pt;padding-right:0.9pt;">3.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.32.26.7" style="padding-left:0.9pt;padding-right:0.9pt;">206.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.33.27" style="background-color:#CFEFFF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.14.6.33.27.1" style="background-color:#FFFFFF;padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.33.27.1.1" style="background-color:#FFFFFF;">PT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.33.27.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.33.27.2.1" style="font-size:90%;background-color:#CFEFFF;">MergeVQ (G+R)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.33.27.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.33.27.3.1" style="font-size:90%;background-color:#CFEFFF;">LlamaGen-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.33.27.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.33.27.4.1" style="background-color:#CFEFFF;">343M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.33.27.5" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.33.27.5.1" style="background-color:#CFEFFF;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.33.27.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.33.27.6.1" style="background-color:#CFEFFF;">3.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.33.27.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.33.27.7.1" style="background-color:#CFEFFF;">251.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.34.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.34.28.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.34.28.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.34.28.2.1" style="font-size:90%;background-color:#CFEFFF;">MergeVQ (G+R)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.34.28.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.34.28.3.1" style="font-size:90%;background-color:#CFEFFF;">MergeAR (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.34.28.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.34.28.4.1" style="background-color:#CFEFFF;">343M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.34.28.5" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.34.28.5.1" style="background-color:#CFEFFF;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.34.28.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.34.28.6.1" style="background-color:#CFEFFF;">3.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.34.28.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.34.28.7.1" style="background-color:#CFEFFF;">253.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.35.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S5.T3.14.6.35.29.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.35.29.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.35.29.2.1" style="font-size:90%;background-color:#CFEFFF;">MergeVQ (G)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.35.29.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.35.29.3.1" style="font-size:90%;background-color:#CFEFFF;">MergeAR (Ours)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.35.29.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.35.29.4.1" style="background-color:#CFEFFF;">343M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.35.29.5" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.35.29.5.1" style="background-color:#CFEFFF;">1024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.35.29.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.35.29.6.1" style="background-color:#CFEFFF;">3.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.35.29.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.35.29.7.1" style="background-color:#CFEFFF;">260.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.36.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S5.T3.14.6.36.30.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.36.30.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.36.30.2.1" style="font-size:90%;color:#808080;">LlamaGen</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.36.30.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.36.30.3.1" style="font-size:90%;">RandAR-L-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.36.30.4" style="padding-left:0.9pt;padding-right:0.9pt;">343M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.36.30.5" style="padding-left:0.9pt;padding-right:0.9pt;">88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.36.30.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.14.6.36.30.7" style="padding-left:0.9pt;padding-right:0.9pt;">288.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.37.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.14.6.37.31.1" style="padding-left:0.9pt;padding-right:0.9pt;">AR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.37.31.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.37.31.2.1" style="font-size:90%;color:#808080;">LlamaGen</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.37.31.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.37.31.3.1" style="font-size:90%;">RandAR-L-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.37.31.4" style="padding-left:0.9pt;padding-right:0.9pt;">775M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.37.31.5" style="padding-left:0.9pt;padding-right:0.9pt;">88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.37.31.6" style="padding-left:0.9pt;padding-right:0.9pt;">2.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.37.31.7" style="padding-left:0.9pt;padding-right:0.9pt;">317.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.38.32" style="background-color:#CFEFFF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T3.14.6.38.32.1" style="background-color:#FFFFFF;padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.38.32.1.1" style="background-color:#FFFFFF;"><span class="ltx_text" id="S5.T3.14.6.38.32.1.1.1" style="font-size:90%;">(random)</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.38.32.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.38.32.2.1" style="font-size:90%;background-color:#CFEFFF;">MergeVQ (G+R)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.38.32.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.38.32.3.1" style="font-size:90%;background-color:#CFEFFF;">RandAR-L-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.38.32.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.38.32.4.1" style="background-color:#CFEFFF;">343M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.38.32.5" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.38.32.5.1" style="background-color:#CFEFFF;">64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.38.32.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.38.32.6.1" style="background-color:#CFEFFF;">2.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.14.6.38.32.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.38.32.7.1" style="background-color:#CFEFFF;">279.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.6.39.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb ltx_border_r" id="S5.T3.14.6.39.33.1" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.14.6.39.33.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.39.33.2.1" style="font-size:90%;background-color:#CFEFFF;">MergeVQ (G)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.14.6.39.33.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.39.33.3.1" style="font-size:90%;background-color:#CFEFFF;">RandAR-L-cfg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.00999v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.14.6.39.33.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.39.33.4.1" style="background-color:#CFEFFF;">343M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.14.6.39.33.5" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="S5.T3.14.6.39.33.5.1" style="background-color:#CFEFFF;">88</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.14.6.39.33.6" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.39.33.6.1" style="background-color:#CFEFFF;">2.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.14.6.39.33.7" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.14.6.39.33.7.1" style="background-color:#CFEFFF;">320.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares different models' performance on class-conditional image generation using the ImageNet-1K dataset.  The images are 256x256 pixels.  Key metrics reported are the Generation Fréchet Inception Distance (gFID) and Inception Score (IS), both lower values are better, calculated using the ADM method.  The table also shows the number of parameters (#P), sampling steps (step), and indicates if the model used additional training data (OpenImages, denoted by ‡) or techniques like classifier-free guidance (-cfg) or rejection sampling (-re).  Some models generated higher resolution images (384x384) that were downsampled to 256x256 for consistent evaluation.
> <details>
> <summary>read the caption</summary>
> Table 3: System comparsion of class-conditional generation on 256×\times×256 ImageNet-1K. Generation Fréchet inception distance (gFID) and inception score (IS) are reported with ADM [16]. “# P” means the parameter number, step means sampling steps, and ‡‡{\ddagger}‡ denotes training tokenizers on OpenImages. Note that “-cfg” or “-re” denotes using classifier-free guidance or rejection sampling, and “-384” denotes for generating images at 384×384384384384\times 384384 × 384 resolutions and then resize back to 256×256256256256\times 256256 × 256 for evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.8.8.9.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.8.8.9.1.1" style="padding-left:2.3pt;padding-right:2.3pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T4.8.8.9.1.2" style="padding-left:2.3pt;padding-right:2.3pt;">G</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S5.T4.8.8.9.1.3" style="padding-left:2.3pt;padding-right:2.3pt;">G+R</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.8.8.9.1.4" style="padding-left:2.3pt;padding-right:2.3pt;">R</th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T4.6.6.6.7" style="padding-left:2.3pt;padding-right:2.3pt;">#Tokens</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T4.1.1.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">rFID <math alttext="(\downarrow)" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mrow id="S5.T4.1.1.1.1.m1.1.2.2"><mo id="S5.T4.1.1.1.1.m1.1.2.2.1" stretchy="false">(</mo><mo id="S5.T4.1.1.1.1.m1.1.1" lspace="0em" rspace="0em" stretchy="false" xref="S5.T4.1.1.1.1.m1.1.1.cmml">↓</mo><mo id="S5.T4.1.1.1.1.m1.1.2.2.2" stretchy="false">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">(\downarrow)</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">( ↓ )</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.2.2.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">rFID <math alttext="(\downarrow)" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mrow id="S5.T4.2.2.2.2.m1.1.2.2"><mo id="S5.T4.2.2.2.2.m1.1.2.2.1" stretchy="false">(</mo><mo id="S5.T4.2.2.2.2.m1.1.1" lspace="0em" rspace="0em" stretchy="false" xref="S5.T4.2.2.2.2.m1.1.1.cmml">↓</mo><mo id="S5.T4.2.2.2.2.m1.1.2.2.2" stretchy="false">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">(\downarrow)</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">( ↓ )</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.3.3.3.3" style="padding-left:2.3pt;padding-right:2.3pt;"># Step (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T4.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><ci id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">↓</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.4.4.4.4" style="padding-left:2.3pt;padding-right:2.3pt;">Acc. (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.4.m1.1b"><ci id="S5.T4.4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.4.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T4.5.5.5.5" style="padding-left:2.3pt;padding-right:2.3pt;">FLOPs <math alttext="(\downarrow)" class="ltx_Math" display="inline" id="S5.T4.5.5.5.5.m1.1"><semantics id="S5.T4.5.5.5.5.m1.1a"><mrow id="S5.T4.5.5.5.5.m1.1.2.2"><mo id="S5.T4.5.5.5.5.m1.1.2.2.1" stretchy="false">(</mo><mo id="S5.T4.5.5.5.5.m1.1.1" lspace="0em" rspace="0em" stretchy="false" xref="S5.T4.5.5.5.5.m1.1.1.cmml">↓</mo><mo id="S5.T4.5.5.5.5.m1.1.2.2.2" stretchy="false">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.5.m1.1b"><ci id="S5.T4.5.5.5.5.m1.1.1.cmml" xref="S5.T4.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.5.m1.1c">(\downarrow)</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.5.m1.1d">( ↓ )</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.6.6.6.6" style="padding-left:2.3pt;padding-right:2.3pt;">Acc. (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T4.6.6.6.6.m1.1"><semantics id="S5.T4.6.6.6.6.m1.1a"><mo id="S5.T4.6.6.6.6.m1.1.1" stretchy="false" xref="S5.T4.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.6.m1.1b"><ci id="S5.T4.6.6.6.6.m1.1.1.cmml" xref="S5.T4.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.6.m1.1d">↑</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.7.7.7.2" style="padding-left:2.3pt;padding-right:2.3pt;">256</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.7.7.7.3" style="background-color:#F0F0F0;padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.7.7.7.3.1" style="background-color:#F0F0F0;">1.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.7.4" style="padding-left:2.3pt;padding-right:2.3pt;">2.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.7.5" style="padding-left:2.3pt;padding-right:2.3pt;">64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.7.6" style="padding-left:2.3pt;padding-right:2.3pt;">48.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.7.7.7.7" style="padding-left:2.3pt;padding-right:2.3pt;">76.2G</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.7.7.7.1" style="padding-left:2.3pt;padding-right:2.3pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T4.7.7.7.1.m1.1"><semantics id="S5.T4.7.7.7.1.m1.1a"><mo id="S5.T4.7.7.7.1.m1.1.1" xref="S5.T4.7.7.7.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.7.1.m1.1b"><minus id="S5.T4.7.7.7.1.m1.1.1.cmml" xref="S5.T4.7.7.7.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.7.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.7.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8.10.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.10.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">196</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.10.1.2" style="padding-left:2.3pt;padding-right:2.3pt;">1.89</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.10.1.3" style="padding-left:2.3pt;padding-right:2.3pt;">2.53</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.10.1.4" style="padding-left:2.3pt;padding-right:2.3pt;">49</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.10.1.5" style="padding-left:2.3pt;padding-right:2.3pt;">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.10.1.6" style="padding-left:2.3pt;padding-right:2.3pt;">74.8G</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.10.1.7" style="padding-left:2.3pt;padding-right:2.3pt;">51.2</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8.11.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.11.2.1" style="padding-left:2.3pt;padding-right:2.3pt;">144</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.11.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">2.03</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.11.2.3" style="background-color:#F0F0F0;padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S5.T4.8.8.11.2.3.1" style="background-color:#F0F0F0;">3.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.11.2.4" style="background-color:#F0F0F0;padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S5.T4.8.8.11.2.4.1" style="background-color:#F0F0F0;">36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.11.2.5" style="background-color:#F0F0F0;padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S5.T4.8.8.11.2.5.1" style="background-color:#F0F0F0;">51.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.11.2.6" style="background-color:#F0F0F0;padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S5.T4.8.8.11.2.6.1" style="background-color:#F0F0F0;">73.4G</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.11.2.7" style="padding-left:2.3pt;padding-right:2.3pt;">52.5</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8.12.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.12.3.1" style="padding-left:2.3pt;padding-right:2.3pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.12.3.2" style="padding-left:2.3pt;padding-right:2.3pt;">2.96</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.12.3.3" style="padding-left:2.3pt;padding-right:2.3pt;">4.62</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.12.3.4" style="padding-left:2.3pt;padding-right:2.3pt;">25</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.12.3.5" style="padding-left:2.3pt;padding-right:2.3pt;">51.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.12.3.6" style="padding-left:2.3pt;padding-right:2.3pt;">72.4G</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.12.3.7" style="padding-left:2.3pt;padding-right:2.3pt;">53.9</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8.13.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.13.4.1" style="padding-left:2.3pt;padding-right:2.3pt;">64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.13.4.2" style="padding-left:2.3pt;padding-right:2.3pt;">4.74</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.13.4.3" style="padding-left:2.3pt;padding-right:2.3pt;">6.51</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.13.4.4" style="padding-left:2.3pt;padding-right:2.3pt;">16</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.13.4.5" style="padding-left:2.3pt;padding-right:2.3pt;">51.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.8.8.13.4.6" style="padding-left:2.3pt;padding-right:2.3pt;">71.5G</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.13.4.7" style="padding-left:2.3pt;padding-right:2.3pt;">54.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.8.8.8.2" style="padding-left:2.3pt;padding-right:2.3pt;">36</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.8.8.8.1" style="padding-left:2.3pt;padding-right:2.3pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T4.8.8.8.1.m1.1"><semantics id="S5.T4.8.8.8.1.m1.1a"><mo id="S5.T4.8.8.8.1.m1.1.1" xref="S5.T4.8.8.8.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T4.8.8.8.1.m1.1b"><minus id="S5.T4.8.8.8.1.m1.1.1.cmml" xref="S5.T4.8.8.8.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.8.8.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.8.8.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.8.8.3" style="padding-left:2.3pt;padding-right:2.3pt;">8.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.8.8.4" style="padding-left:2.3pt;padding-right:2.3pt;">9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.8.8.5" style="padding-left:2.3pt;padding-right:2.3pt;">52.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.8.8.8.6" style="padding-left:2.3pt;padding-right:2.3pt;">71.7G</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.8.8.7" style="background-color:#F0F0F0;padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.8.8.8.7.1" style="background-color:#F0F0F0;">54.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on three variants of the MergeVQ tokenizer.  It shows how the number of tokens retained during training impacts the performance on two downstream tasks: linear probing accuracy (a measure of representation learning) and reconstruction FID (a measure of image generation quality).  The three variants are MergeVQ (G), MergeVQ (G+R), and MergeVQ (R), each trained with different numbers of kept tokens (256, 196, 144, 100, 64, and 36). The results demonstrate the trade-off between token efficiency and performance on both tasks, highlighting how fewer tokens may improve efficiency but reduce overall quality of the resulting representations and generated images.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation of three versions of MergeVQ tokenizers with the number of kept tokens during training for pre-training (linear probing Acc.) and reconstruction (rFID) tasks on ImageNet-1K.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.2.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.2.2.2.3" style="padding-left:1.4pt;padding-right:1.4pt;">Version</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="\mathcal{R}" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T5.1.1.1.1.m1.1.1" xref="S5.T5.1.1.1.1.m1.1.1.cmml">ℛ</mi><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1">ℛ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">\mathcal{R}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">caligraphic_R</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T5.2.2.2.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="\mathcal{G}" class="ltx_Math" display="inline" id="S5.T5.2.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T5.2.2.2.2.m1.1.1" xref="S5.T5.2.2.2.2.m1.1.1.cmml">𝒢</mi><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.2.m1.1b"><ci id="S5.T5.2.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.2.m1.1.1">𝒢</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.2.m1.1c">\mathcal{G}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.2.m1.1d">caligraphic_G</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.2.4" style="padding-left:1.4pt;padding-right:1.4pt;">rFID</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.2.5" style="padding-left:1.4pt;padding-right:1.4pt;">gFID</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.2.2.6" style="padding-left:1.4pt;padding-right:1.4pt;"># Token</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.4.4.3" style="padding-left:1.4pt;padding-right:1.4pt;">(G+R)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.3.3.3.1" style="padding-left:1.4pt;padding-right:1.4pt;">Ground-truth <math alttext="\mathcal{S}" class="ltx_Math" display="inline" id="S5.T5.3.3.3.1.m1.1"><semantics id="S5.T5.3.3.3.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T5.3.3.3.1.m1.1.1" xref="S5.T5.3.3.3.1.m1.1.1.cmml">𝒮</mi><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.1.m1.1b"><ci id="S5.T5.3.3.3.1.m1.1.1.cmml" xref="S5.T5.3.3.3.1.m1.1.1">𝒮</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.1.m1.1c">\mathcal{S}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.1.m1.1d">caligraphic_S</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.4.4.4.4" style="padding-left:1.4pt;padding-right:1.4pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.4.4.4.5" style="padding-left:1.4pt;padding-right:1.4pt;">1.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.4.4.4.2" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T5.4.4.4.2.m1.1"><semantics id="S5.T5.4.4.4.2.m1.1a"><mo id="S5.T5.4.4.4.2.m1.1.1" xref="S5.T5.4.4.4.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.2.m1.1b"><minus id="S5.T5.4.4.4.2.m1.1.1.cmml" xref="S5.T5.4.4.4.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.4.4.4.6" style="padding-left:1.4pt;padding-right:1.4pt;">144</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.5.5.5.2" style="padding-left:1.4pt;padding-right:1.4pt;">(G+R)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.5.5.5.3" style="padding-left:1.4pt;padding-right:1.4pt;">2-layer Cross-Attention</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.5.5.5.4" style="padding-left:1.4pt;padding-right:1.4pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.5.5.5.5" style="padding-left:1.4pt;padding-right:1.4pt;">1.71</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.5.5.5.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T5.5.5.5.1.m1.1"><semantics id="S5.T5.5.5.5.1.m1.1a"><mo id="S5.T5.5.5.5.1.m1.1.1" xref="S5.T5.5.5.5.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.1.m1.1b"><minus id="S5.T5.5.5.5.1.m1.1.1.cmml" xref="S5.T5.5.5.5.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.5.5.5.6" style="padding-left:1.4pt;padding-right:1.4pt;">144</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.9.1" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.8.8.9.1.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.9.1.1.1" style="background-color:#EFEFEF;">(G+R)+RandAR</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.8.8.9.1.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.9.1.2.1" style="background-color:#EFEFEF;">2-layer Cross-Attention</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.8.8.9.1.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.9.1.3.1" style="background-color:#EFEFEF;">LlamaGen-L</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.8.8.9.1.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.9.1.4.1" style="background-color:#EFEFEF;">1.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.8.8.9.1.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.9.1.5.1" style="background-color:#EFEFEF;">2.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.8.8.9.1.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.9.1.6.1" style="background-color:#EFEFEF;">144</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.6.6.6.2" style="padding-left:1.4pt;padding-right:1.4pt;">(G+R)+LlamaGen</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.6.6.6.3" style="padding-left:1.4pt;padding-right:1.4pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.6.6.6.4" style="padding-left:1.4pt;padding-right:1.4pt;">LlamaGen-L</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.6.6.6.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T5.6.6.6.1.m1.1"><semantics id="S5.T5.6.6.6.1.m1.1a"><mo id="S5.T5.6.6.6.1.m1.1.1" xref="S5.T5.6.6.6.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.1.m1.1b"><minus id="S5.T5.6.6.6.1.m1.1.1.cmml" xref="S5.T5.6.6.6.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.6.6.6.5" style="padding-left:1.4pt;padding-right:1.4pt;">3.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.6.6.6.6" style="padding-left:1.4pt;padding-right:1.4pt;">256</td>
</tr>
<tr class="ltx_tr" id="S5.T5.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.7.7.7.2" style="padding-left:1.4pt;padding-right:1.4pt;">(G)+LlamaGen</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.7.7.7.3" style="padding-left:1.4pt;padding-right:1.4pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.7.7.7.4" style="padding-left:1.4pt;padding-right:1.4pt;">LlamaGen-L</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.7.7.7.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T5.7.7.7.1.m1.1"><semantics id="S5.T5.7.7.7.1.m1.1a"><mo id="S5.T5.7.7.7.1.m1.1.1" xref="S5.T5.7.7.7.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.7.1.m1.1b"><minus id="S5.T5.7.7.7.1.m1.1.1.cmml" xref="S5.T5.7.7.7.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.7.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.7.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.7.7.7.5" style="padding-left:1.4pt;padding-right:1.4pt;">3.14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.7.7.7.6" style="padding-left:1.4pt;padding-right:1.4pt;">1024</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.8" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.8.8.8.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.8.2.1" style="background-color:#EFEFEF;">(G)+MergeAR</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T5.8.8.8.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.8.3.1" style="background-color:#EFEFEF;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.8.8.8.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.8.4.1" style="background-color:#EFEFEF;">LlamaGen-L</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T5.8.8.8.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="S5.T5.8.8.8.1.m1.1" style="background-color:#EFEFEF;"><semantics id="S5.T5.8.8.8.1.m1.1a"><mo id="S5.T5.8.8.8.1.m1.1.1" mathbackground="#EFEFEF" xref="S5.T5.8.8.8.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="S5.T5.8.8.8.1.m1.1b"><minus id="S5.T5.8.8.8.1.m1.1.1.cmml" xref="S5.T5.8.8.8.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.8.8.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.8.8.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T5.8.8.8.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.8.5.1" style="background-color:#EFEFEF;">3.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T5.8.8.8.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T5.8.8.8.6.1" style="background-color:#EFEFEF;">1024</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different components in the MergeVQ framework on both image reconstruction and generation.  It shows the effects of removing or modifying key elements such as the source recovery module, the type of attention used, and the choice of generation method (LlamaGen vs. RandAR). The results are measured using rFID (reconstruction Fréchet Inception Distance) and gFID (generation Fréchet Inception Distance) to assess the quality of reconstruction and generation respectively, providing a quantitative understanding of each component's contribution to the overall performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation of main modules for MergeVQ generation with reconstruction (rFID) and generation (gFID) evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T1.9.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.9.7.8.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T1.9.7.8.1.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.8.1.1.1" style="font-size:144%;">Settings</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T1.9.7.8.1.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.8.1.2.1" style="font-size:144%;">G</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T1.9.7.8.1.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.8.1.3.1" style="font-size:144%;">G+R</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T1.9.7.8.1.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.8.1.4.1" style="font-size:144%;">R</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.9.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.9.7.9.2.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.9.2.1.1" style="font-size:144%;">Base channels</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.9.2.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.9.2.2.1" style="font-size:144%;">64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.9.2.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.9.2.3.1" style="font-size:144%;">64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.9.2.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.9.2.4.1" style="font-size:144%;">768</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.1.1.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.3.1.1.2.1" style="font-size:144%;">CNN Stage number</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.3.1.1.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.3.1.1.3.1" style="font-size:144%;">4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.3.1.1.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.3.1.1.4.1" style="font-size:144%;">5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.3.1.1.1" style="padding-left:0.9pt;padding-right:0.9pt;"><math alttext="-" class="ltx_Math" display="inline" id="A1.T1.3.1.1.1.m1.1"><semantics id="A1.T1.3.1.1.1.m1.1a"><mo id="A1.T1.3.1.1.1.m1.1.1" mathsize="144%" xref="A1.T1.3.1.1.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A1.T1.3.1.1.1.m1.1b"><minus id="A1.T1.3.1.1.1.m1.1.1.cmml" xref="A1.T1.3.1.1.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.3.1.1.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A1.T1.3.1.1.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.10.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.10.3.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.10.3.1.1" style="font-size:144%;">Channel multiplier</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.10.3.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.10.3.2.1" style="font-size:144%;">[1, 2, 4, 8]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.10.3.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.10.3.3.1" style="font-size:144%;">[1, 1, 2, 4, 8]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.10.3.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.10.3.4.1" style="font-size:144%;">[1]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.4.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.4.2.2.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.4.2.2.2.1" style="font-size:144%;">Residual Blocks</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.4.2.2.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.4.2.2.3.1" style="font-size:144%;">[4, 4, 4, 4]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.4.2.2.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.4.2.2.4.1" style="font-size:144%;">[4, 4, 4, 4, 4]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.4.2.2.1" style="padding-left:0.9pt;padding-right:0.9pt;"><math alttext="-" class="ltx_Math" display="inline" id="A1.T1.4.2.2.1.m1.1"><semantics id="A1.T1.4.2.2.1.m1.1a"><mo id="A1.T1.4.2.2.1.m1.1.1" mathsize="144%" xref="A1.T1.4.2.2.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A1.T1.4.2.2.1.m1.1b"><minus id="A1.T1.4.2.2.1.m1.1.1.cmml" xref="A1.T1.4.2.2.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.4.2.2.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A1.T1.4.2.2.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.11.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.11.4.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.11.4.1.1" style="font-size:144%;">Attention Blocks</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.11.4.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.11.4.2.1" style="font-size:144%;">[0, 0, 0, 12]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.11.4.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.11.4.3.1" style="font-size:144%;">[0, 0, 0, 0, 12]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.11.4.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.11.4.4.1" style="font-size:144%;">[12]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.12.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.12.5.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.12.5.1.1" style="font-size:144%;">Downsampling ratio</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.12.5.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.12.5.2.1" style="font-size:144%;">[1, 1/2, 1/4, 1/8]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.12.5.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.12.5.3.1" style="font-size:144%;">[1, 1/2, 1/4, 1/8, 1/16]</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.12.5.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.12.5.4.1" style="font-size:144%;">[1/16]</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.5.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.5.3.3.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.5.3.3.2.1" style="font-size:144%;">Vocabulary size</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.5.3.3.3" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.5.3.3.1" style="padding-left:0.9pt;padding-right:0.9pt;"><math alttext="2^{18}" class="ltx_Math" display="inline" id="A1.T1.5.3.3.1.m1.1"><semantics id="A1.T1.5.3.3.1.m1.1a"><msup id="A1.T1.5.3.3.1.m1.1.1" xref="A1.T1.5.3.3.1.m1.1.1.cmml"><mn id="A1.T1.5.3.3.1.m1.1.1.2" mathsize="144%" xref="A1.T1.5.3.3.1.m1.1.1.2.cmml">2</mn><mn id="A1.T1.5.3.3.1.m1.1.1.3" mathsize="144%" xref="A1.T1.5.3.3.1.m1.1.1.3.cmml">18</mn></msup><annotation-xml encoding="MathML-Content" id="A1.T1.5.3.3.1.m1.1b"><apply id="A1.T1.5.3.3.1.m1.1.1.cmml" xref="A1.T1.5.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T1.5.3.3.1.m1.1.1.1.cmml" xref="A1.T1.5.3.3.1.m1.1.1">superscript</csymbol><cn id="A1.T1.5.3.3.1.m1.1.1.2.cmml" type="integer" xref="A1.T1.5.3.3.1.m1.1.1.2">2</cn><cn id="A1.T1.5.3.3.1.m1.1.1.3.cmml" type="integer" xref="A1.T1.5.3.3.1.m1.1.1.3">18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.5.3.3.1.m1.1c">2^{18}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.5.3.3.1.m1.1d">2 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.5.3.3.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.13.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.13.6.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.13.6.1.1" style="font-size:144%;">Keep token number</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.13.6.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.13.6.2.1" style="font-size:144%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.13.6.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.13.6.3.1" style="font-size:144%;">144</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.13.6.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.13.6.4.1" style="font-size:144%;">36</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.14.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.9.7.14.7.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.14.7.1.1" style="font-size:144%;">Discriminator loss</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A1.T1.9.7.14.7.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.14.7.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.14.7.3.1" style="font-size:144%;">0.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A1.T1.9.7.14.7.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.15.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.15.8.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.15.8.1.1" style="font-size:144%;">Perceptual loss</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.15.8.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.15.8.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.15.8.3.1" style="font-size:144%;">0.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.15.8.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.16.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.16.9.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.16.9.1.1" style="font-size:144%;">LeCam regularization</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.16.9.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.16.9.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.16.9.3.1" style="font-size:144%;">0.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.16.9.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.17.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.17.10.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.17.10.1.1" style="font-size:144%;">L2 reconstruction</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.17.10.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.17.10.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.17.10.3.1" style="font-size:144%;">1.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.17.10.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.18.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.18.11.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.18.11.1.1" style="font-size:144%;">Commitment loss</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.18.11.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.18.11.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.18.11.3.1" style="font-size:144%;">0.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.18.11.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.19.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.19.12.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.19.12.1.1" style="font-size:144%;">LFQ Entropy loss</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.19.12.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.19.12.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.19.12.3.1" style="font-size:144%;">0.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.19.12.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.20.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.20.13.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.20.13.1.1" style="font-size:144%;">Source recovery loss</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.20.13.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.20.13.2.1" style="font-size:144%;">0.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.20.13.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.20.13.3.1" style="font-size:144%;">0.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.20.13.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.20.13.4.1" style="font-size:144%;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.21.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.21.14.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.21.14.1.1" style="font-size:144%;">Alignement loss</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.21.14.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.21.14.2.1" style="font-size:144%;">0.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.21.14.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.21.14.3.1" style="font-size:144%;">1.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.21.14.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.21.14.4.1" style="font-size:144%;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.22.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.9.7.22.15.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.22.15.1.1" style="font-size:144%;">Optimizer</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A1.T1.9.7.22.15.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.22.15.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.22.15.3.1" style="font-size:144%;">AdamW</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A1.T1.9.7.22.15.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.7.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.7.5.5.2" style="padding-left:0.9pt;padding-right:0.9pt;">
<span class="ltx_text" id="A1.T1.7.5.5.2.1" style="font-size:144%;">(</span><math alttext="\beta_{1}" class="ltx_Math" display="inline" id="A1.T1.6.4.4.1.m1.1"><semantics id="A1.T1.6.4.4.1.m1.1a"><msub id="A1.T1.6.4.4.1.m1.1.1" xref="A1.T1.6.4.4.1.m1.1.1.cmml"><mi id="A1.T1.6.4.4.1.m1.1.1.2" mathsize="144%" xref="A1.T1.6.4.4.1.m1.1.1.2.cmml">β</mi><mn id="A1.T1.6.4.4.1.m1.1.1.3" mathsize="144%" xref="A1.T1.6.4.4.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T1.6.4.4.1.m1.1b"><apply id="A1.T1.6.4.4.1.m1.1.1.cmml" xref="A1.T1.6.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T1.6.4.4.1.m1.1.1.1.cmml" xref="A1.T1.6.4.4.1.m1.1.1">subscript</csymbol><ci id="A1.T1.6.4.4.1.m1.1.1.2.cmml" xref="A1.T1.6.4.4.1.m1.1.1.2">𝛽</ci><cn id="A1.T1.6.4.4.1.m1.1.1.3.cmml" type="integer" xref="A1.T1.6.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.6.4.4.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.6.4.4.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T1.7.5.5.2.2" style="font-size:144%;">, </span><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="A1.T1.7.5.5.2.m2.1"><semantics id="A1.T1.7.5.5.2.m2.1a"><msub id="A1.T1.7.5.5.2.m2.1.1" xref="A1.T1.7.5.5.2.m2.1.1.cmml"><mi id="A1.T1.7.5.5.2.m2.1.1.2" mathsize="144%" xref="A1.T1.7.5.5.2.m2.1.1.2.cmml">β</mi><mn id="A1.T1.7.5.5.2.m2.1.1.3" mathsize="144%" xref="A1.T1.7.5.5.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T1.7.5.5.2.m2.1b"><apply id="A1.T1.7.5.5.2.m2.1.1.cmml" xref="A1.T1.7.5.5.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T1.7.5.5.2.m2.1.1.1.cmml" xref="A1.T1.7.5.5.2.m2.1.1">subscript</csymbol><ci id="A1.T1.7.5.5.2.m2.1.1.2.cmml" xref="A1.T1.7.5.5.2.m2.1.1.2">𝛽</ci><cn id="A1.T1.7.5.5.2.m2.1.1.3.cmml" type="integer" xref="A1.T1.7.5.5.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.7.5.5.2.m2.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.7.5.5.2.m2.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T1.7.5.5.2.3" style="font-size:144%;">)</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.7.5.5.3" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.7.5.5.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.7.5.5.4.1" style="font-size:144%;">(0.5, 0.9)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.7.5.5.5" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.23.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.23.16.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.23.16.1.1" style="font-size:144%;">Weight decay</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.23.16.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.23.16.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.23.16.3.1" style="font-size:144%;">0.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.23.16.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.24.17">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.24.17.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.24.17.1.1" style="font-size:144%;">Training epochs</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.24.17.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.24.17.2.1" style="font-size:144%;">270</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.24.17.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.24.17.3.1" style="font-size:144%;">270</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.24.17.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.24.17.4.1" style="font-size:144%;">300</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.25.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.25.18.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.25.18.1.1" style="font-size:144%;">Base learning rate</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.25.18.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.25.18.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.25.18.3.1" style="font-size:144%;">1e-4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.25.18.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.26.19">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.26.19.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.26.19.1.1" style="font-size:144%;">Batch size</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.26.19.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.26.19.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.26.19.3.1" style="font-size:144%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.26.19.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.27.20">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.27.20.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.27.20.1.1" style="font-size:144%;">LR scheduler</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.27.20.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.27.20.2.1" style="font-size:144%;">Step</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.27.20.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.27.20.3.1" style="font-size:144%;">Step</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.27.20.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.27.20.4.1" style="font-size:144%;">Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.7.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.7.3.1" style="font-size:144%;">Gradient clipping</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.8.6.6.1" style="padding-left:0.9pt;padding-right:0.9pt;"><math alttext="-" class="ltx_Math" display="inline" id="A1.T1.8.6.6.1.m1.1"><semantics id="A1.T1.8.6.6.1.m1.1a"><mo id="A1.T1.8.6.6.1.m1.1.1" mathsize="144%" xref="A1.T1.8.6.6.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A1.T1.8.6.6.1.m1.1b"><minus id="A1.T1.8.6.6.1.m1.1.1.cmml" xref="A1.T1.8.6.6.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.8.6.6.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A1.T1.8.6.6.1.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.7.2" style="padding-left:0.9pt;padding-right:0.9pt;"><math alttext="-" class="ltx_Math" display="inline" id="A1.T1.9.7.7.2.m1.1"><semantics id="A1.T1.9.7.7.2.m1.1a"><mo id="A1.T1.9.7.7.2.m1.1.1" mathsize="144%" xref="A1.T1.9.7.7.2.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A1.T1.9.7.7.2.m1.1b"><minus id="A1.T1.9.7.7.2.m1.1.1.cmml" xref="A1.T1.9.7.7.2.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.9.7.7.2.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A1.T1.9.7.7.2.m1.1d">-</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.7.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.7.4.1" style="font-size:144%;">5.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.28.21">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.28.21.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.28.21.1.1" style="font-size:144%;">EMA decay</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.28.21.2" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.28.21.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.28.21.3.1" style="font-size:144%;">0.999</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T1.9.7.28.21.4" style="padding-left:0.9pt;padding-right:0.9pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.29.22">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.9.7.29.22.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.29.22.1.1" style="font-size:144%;">#Param. of Encoder</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.29.22.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.29.22.2.1" style="font-size:144%;">62.3M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.29.22.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.29.22.3.1" style="font-size:144%;">62.7M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T1.9.7.29.22.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.29.22.4.1" style="font-size:144%;">86.6M</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.30.23">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.30.23.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.30.23.1.1" style="font-size:144%;">FLOPs of Encoder</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.30.23.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.30.23.2.1" style="font-size:144%;">97.5G</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.30.23.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.30.23.3.1" style="font-size:144%;">46.4G</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.30.23.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.30.23.4.1" style="font-size:144%;">9.5G</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.31.24">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.9.7.31.24.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.31.24.1.1" style="font-size:144%;">#Param. of Decoder</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.31.24.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.31.24.2.1" style="font-size:144%;">82.8M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.31.24.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.31.24.3.1" style="font-size:144%;">83.4M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T1.9.7.31.24.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.31.24.4.1" style="font-size:144%;">83.4M</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.9.7.32.25">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T1.9.7.32.25.1" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.32.25.1.1" style="font-size:144%;">FLOPs of Decoder</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T1.9.7.32.25.2" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.32.25.2.1" style="font-size:144%;">169.2G</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T1.9.7.32.25.3" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.32.25.3.1" style="font-size:144%;">65.6G</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T1.9.7.32.25.4" style="padding-left:0.9pt;padding-right:0.9pt;"><span class="ltx_text" id="A1.T1.9.7.32.25.4.1" style="font-size:144%;">65.6G</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A1 details the network architecture, hyperparameters, loss function weights, and training settings used for the three variants of the MergeVQ tokenizers (MergeVQ (G), MergeVQ (G+R), and MergeVQ (R)).  It provides a comprehensive overview of the configurations employed for each tokenizer, including details about the encoder and decoder structures, convolutional layers, attention blocks, and token merging module.  The table also specifies the number of parameters and floating-point operations (FLOPs) for both encoder and decoder, which are crucial for assessing computational efficiency.  Note that FLOPs are calculated for 256x256 resolution images using the ToMe [7] module.
> <details>
> <summary>read the caption</summary>
> Table A1:  Configuration of the network, weights of loss functions, and training settings for the three versions of MergeVQ tokenizers on ImageNet-1K. Note that the network designs are specified for the encoder, and the reported FLOPs are calculated for the encoder and decoder with ToMe [7] on 256×256256256256\times 256256 × 256 resolutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T2.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T2.8.8.9.1.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.9.1.1.1" style="font-size:144%;">Settings</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.8.8.9.1.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.9.1.2.1" style="font-size:144%;">LlamaGen-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.8.8.9.1.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.9.1.3.1" style="font-size:144%;">RandAR-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.8.8.9.1.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.9.1.4.1" style="font-size:144%;">Source Recovery</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T2.8.8.10.2.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.10.2.1.1" style="font-size:144%;">Base channels</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.8.8.10.2.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.10.2.2.1" style="font-size:144%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.8.8.10.2.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.10.2.3.1" style="font-size:144%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.8.8.10.2.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.10.2.4.1" style="font-size:144%;">384</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.11.3.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.11.3.1.1" style="font-size:144%;">Depth</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.11.3.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.11.3.2.1" style="font-size:144%;">24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.11.3.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.11.3.3.1" style="font-size:144%;">24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.11.3.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.11.3.4.1" style="font-size:144%;">2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.12.4.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.12.4.1.1" style="font-size:144%;">Attention heads</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.12.4.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.12.4.2.1" style="font-size:144%;">16</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.12.4.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.12.4.3.1" style="font-size:144%;">16</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.12.4.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.12.4.4.1" style="font-size:144%;">8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.13.5.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.13.5.1.1" style="font-size:144%;">FFN dimension</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.13.5.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.13.5.2.1" style="font-size:144%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.13.5.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.13.5.3.1" style="font-size:144%;">4096</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.13.5.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.13.5.4.1" style="font-size:144%;">1536</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.14.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.14.6.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.14.6.1.1" style="font-size:144%;">Dropout</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.14.6.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.14.6.2.1" style="font-size:144%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.14.6.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.14.6.3.1" style="font-size:144%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.14.6.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.14.6.4.1" style="font-size:144%;">0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.1.1.1.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.1.1.1.2.1" style="font-size:144%;">Mask schedule</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.1.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.1.1.1.3.1" style="font-size:144%;">Arccos</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.1.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.1.1.1.4.1" style="font-size:144%;">Arccos</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.1.1.1.1" style="padding-left:3.4pt;padding-right:3.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="A1.T2.1.1.1.1.m1.1"><semantics id="A1.T2.1.1.1.1.m1.1a"><mo id="A1.T2.1.1.1.1.m1.1.1" mathsize="144%" xref="A1.T2.1.1.1.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A1.T2.1.1.1.1.m1.1b"><minus id="A1.T2.1.1.1.1.m1.1.1.cmml" xref="A1.T2.1.1.1.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.1.1.1.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A1.T2.1.1.1.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.2.2.2.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.2.2.2.2.1" style="font-size:144%;">Label smoothing</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.2.2.2.3.1" style="font-size:144%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.2.2.2.4.1" style="font-size:144%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.1" style="padding-left:3.4pt;padding-right:3.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="A1.T2.2.2.2.1.m1.1"><semantics id="A1.T2.2.2.2.1.m1.1a"><mo id="A1.T2.2.2.2.1.m1.1.1" mathsize="144%" xref="A1.T2.2.2.2.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A1.T2.2.2.2.1.m1.1b"><minus id="A1.T2.2.2.2.1.m1.1.1.cmml" xref="A1.T2.2.2.2.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.2.2.2.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A1.T2.2.2.2.1.m1.1d">-</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.15.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.15.7.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.15.7.1.1" style="font-size:144%;"># Parameter</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.15.7.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.15.7.2.1" style="font-size:144%;">343M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.15.7.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.15.7.3.1" style="font-size:144%;">343M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.15.7.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.15.7.4.1" style="font-size:144%;">7M</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.16.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T2.8.8.16.8.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.16.8.1.1" style="font-size:144%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.8.8.16.8.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.16.8.2.1" style="font-size:144%;">AdamW</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.8.8.16.8.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.16.8.3.1" style="font-size:144%;">AdamW</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.8.8.16.8.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.16.8.4.1" style="font-size:144%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.4.4.4.2" style="padding-left:3.4pt;padding-right:3.4pt;">
<span class="ltx_text" id="A1.T2.4.4.4.2.1" style="font-size:144%;">(</span><math alttext="\beta_{1}" class="ltx_Math" display="inline" id="A1.T2.3.3.3.1.m1.1"><semantics id="A1.T2.3.3.3.1.m1.1a"><msub id="A1.T2.3.3.3.1.m1.1.1" xref="A1.T2.3.3.3.1.m1.1.1.cmml"><mi id="A1.T2.3.3.3.1.m1.1.1.2" mathsize="144%" xref="A1.T2.3.3.3.1.m1.1.1.2.cmml">β</mi><mn id="A1.T2.3.3.3.1.m1.1.1.3" mathsize="144%" xref="A1.T2.3.3.3.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T2.3.3.3.1.m1.1b"><apply id="A1.T2.3.3.3.1.m1.1.1.cmml" xref="A1.T2.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T2.3.3.3.1.m1.1.1.1.cmml" xref="A1.T2.3.3.3.1.m1.1.1">subscript</csymbol><ci id="A1.T2.3.3.3.1.m1.1.1.2.cmml" xref="A1.T2.3.3.3.1.m1.1.1.2">𝛽</ci><cn id="A1.T2.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.3.3.3.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.3.3.3.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.3.3.3.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T2.4.4.4.2.2" style="font-size:144%;">, </span><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="A1.T2.4.4.4.2.m2.1"><semantics id="A1.T2.4.4.4.2.m2.1a"><msub id="A1.T2.4.4.4.2.m2.1.1" xref="A1.T2.4.4.4.2.m2.1.1.cmml"><mi id="A1.T2.4.4.4.2.m2.1.1.2" mathsize="144%" xref="A1.T2.4.4.4.2.m2.1.1.2.cmml">β</mi><mn id="A1.T2.4.4.4.2.m2.1.1.3" mathsize="144%" xref="A1.T2.4.4.4.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T2.4.4.4.2.m2.1b"><apply id="A1.T2.4.4.4.2.m2.1.1.cmml" xref="A1.T2.4.4.4.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T2.4.4.4.2.m2.1.1.1.cmml" xref="A1.T2.4.4.4.2.m2.1.1">subscript</csymbol><ci id="A1.T2.4.4.4.2.m2.1.1.2.cmml" xref="A1.T2.4.4.4.2.m2.1.1.2">𝛽</ci><cn id="A1.T2.4.4.4.2.m2.1.1.3.cmml" type="integer" xref="A1.T2.4.4.4.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.4.4.4.2.m2.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.4.4.4.2.m2.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T2.4.4.4.2.3" style="font-size:144%;">)</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.4.4.4.3.1" style="font-size:144%;">(0.9, 0.99)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.4.4.4.4.1" style="font-size:144%;">(0.9, 0.95)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.4.4.4.5.1" style="font-size:144%;">(0.9, 0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.17.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.17.9.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.17.9.1.1" style="font-size:144%;">Weight decay</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.17.9.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.17.9.2.1" style="font-size:144%;">5e-2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.17.9.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.17.9.3.1" style="font-size:144%;">5e-2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.17.9.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.17.9.4.1" style="font-size:144%;">1e-2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.18.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.18.10.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.18.10.1.1" style="font-size:144%;">Training epochs</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.18.10.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.18.10.2.1" style="font-size:144%;">300</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.18.10.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.18.10.3.1" style="font-size:144%;">300</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.18.10.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.18.10.4.1" style="font-size:144%;">5 (optional)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.7.7.7.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.7.7.7.4.1" style="font-size:144%;">Base learning rate</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.1" style="padding-left:3.4pt;padding-right:3.4pt;"><math alttext="4\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T2.5.5.5.1.m1.1"><semantics id="A1.T2.5.5.5.1.m1.1a"><mrow id="A1.T2.5.5.5.1.m1.1.1" xref="A1.T2.5.5.5.1.m1.1.1.cmml"><mn id="A1.T2.5.5.5.1.m1.1.1.2" mathsize="144%" xref="A1.T2.5.5.5.1.m1.1.1.2.cmml">4</mn><mo id="A1.T2.5.5.5.1.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="A1.T2.5.5.5.1.m1.1.1.1.cmml">×</mo><msup id="A1.T2.5.5.5.1.m1.1.1.3" xref="A1.T2.5.5.5.1.m1.1.1.3.cmml"><mn id="A1.T2.5.5.5.1.m1.1.1.3.2" mathsize="144%" xref="A1.T2.5.5.5.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T2.5.5.5.1.m1.1.1.3.3" xref="A1.T2.5.5.5.1.m1.1.1.3.3.cmml"><mo id="A1.T2.5.5.5.1.m1.1.1.3.3a" mathsize="144%" xref="A1.T2.5.5.5.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T2.5.5.5.1.m1.1.1.3.3.2" mathsize="144%" xref="A1.T2.5.5.5.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.5.5.5.1.m1.1b"><apply id="A1.T2.5.5.5.1.m1.1.1.cmml" xref="A1.T2.5.5.5.1.m1.1.1"><times id="A1.T2.5.5.5.1.m1.1.1.1.cmml" xref="A1.T2.5.5.5.1.m1.1.1.1"></times><cn id="A1.T2.5.5.5.1.m1.1.1.2.cmml" type="integer" xref="A1.T2.5.5.5.1.m1.1.1.2">4</cn><apply id="A1.T2.5.5.5.1.m1.1.1.3.cmml" xref="A1.T2.5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T2.5.5.5.1.m1.1.1.3.1.cmml" xref="A1.T2.5.5.5.1.m1.1.1.3">superscript</csymbol><cn id="A1.T2.5.5.5.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T2.5.5.5.1.m1.1.1.3.2">10</cn><apply id="A1.T2.5.5.5.1.m1.1.1.3.3.cmml" xref="A1.T2.5.5.5.1.m1.1.1.3.3"><minus id="A1.T2.5.5.5.1.m1.1.1.3.3.1.cmml" xref="A1.T2.5.5.5.1.m1.1.1.3.3"></minus><cn id="A1.T2.5.5.5.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T2.5.5.5.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.5.5.5.1.m1.1c">4\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.5.5.5.1.m1.1d">4 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.2" style="padding-left:3.4pt;padding-right:3.4pt;"><math alttext="4\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T2.6.6.6.2.m1.1"><semantics id="A1.T2.6.6.6.2.m1.1a"><mrow id="A1.T2.6.6.6.2.m1.1.1" xref="A1.T2.6.6.6.2.m1.1.1.cmml"><mn id="A1.T2.6.6.6.2.m1.1.1.2" mathsize="144%" xref="A1.T2.6.6.6.2.m1.1.1.2.cmml">4</mn><mo id="A1.T2.6.6.6.2.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="A1.T2.6.6.6.2.m1.1.1.1.cmml">×</mo><msup id="A1.T2.6.6.6.2.m1.1.1.3" xref="A1.T2.6.6.6.2.m1.1.1.3.cmml"><mn id="A1.T2.6.6.6.2.m1.1.1.3.2" mathsize="144%" xref="A1.T2.6.6.6.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T2.6.6.6.2.m1.1.1.3.3" xref="A1.T2.6.6.6.2.m1.1.1.3.3.cmml"><mo id="A1.T2.6.6.6.2.m1.1.1.3.3a" mathsize="144%" xref="A1.T2.6.6.6.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T2.6.6.6.2.m1.1.1.3.3.2" mathsize="144%" xref="A1.T2.6.6.6.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.6.6.6.2.m1.1b"><apply id="A1.T2.6.6.6.2.m1.1.1.cmml" xref="A1.T2.6.6.6.2.m1.1.1"><times id="A1.T2.6.6.6.2.m1.1.1.1.cmml" xref="A1.T2.6.6.6.2.m1.1.1.1"></times><cn id="A1.T2.6.6.6.2.m1.1.1.2.cmml" type="integer" xref="A1.T2.6.6.6.2.m1.1.1.2">4</cn><apply id="A1.T2.6.6.6.2.m1.1.1.3.cmml" xref="A1.T2.6.6.6.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T2.6.6.6.2.m1.1.1.3.1.cmml" xref="A1.T2.6.6.6.2.m1.1.1.3">superscript</csymbol><cn id="A1.T2.6.6.6.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T2.6.6.6.2.m1.1.1.3.2">10</cn><apply id="A1.T2.6.6.6.2.m1.1.1.3.3.cmml" xref="A1.T2.6.6.6.2.m1.1.1.3.3"><minus id="A1.T2.6.6.6.2.m1.1.1.3.3.1.cmml" xref="A1.T2.6.6.6.2.m1.1.1.3.3"></minus><cn id="A1.T2.6.6.6.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T2.6.6.6.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.6.6.6.2.m1.1c">4\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.6.6.6.2.m1.1d">4 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.3" style="padding-left:3.4pt;padding-right:3.4pt;"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T2.7.7.7.3.m1.1"><semantics id="A1.T2.7.7.7.3.m1.1a"><mrow id="A1.T2.7.7.7.3.m1.1.1" xref="A1.T2.7.7.7.3.m1.1.1.cmml"><mn id="A1.T2.7.7.7.3.m1.1.1.2" mathsize="144%" xref="A1.T2.7.7.7.3.m1.1.1.2.cmml">1</mn><mo id="A1.T2.7.7.7.3.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="A1.T2.7.7.7.3.m1.1.1.1.cmml">×</mo><msup id="A1.T2.7.7.7.3.m1.1.1.3" xref="A1.T2.7.7.7.3.m1.1.1.3.cmml"><mn id="A1.T2.7.7.7.3.m1.1.1.3.2" mathsize="144%" xref="A1.T2.7.7.7.3.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T2.7.7.7.3.m1.1.1.3.3" xref="A1.T2.7.7.7.3.m1.1.1.3.3.cmml"><mo id="A1.T2.7.7.7.3.m1.1.1.3.3a" mathsize="144%" xref="A1.T2.7.7.7.3.m1.1.1.3.3.cmml">−</mo><mn id="A1.T2.7.7.7.3.m1.1.1.3.3.2" mathsize="144%" xref="A1.T2.7.7.7.3.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.7.7.7.3.m1.1b"><apply id="A1.T2.7.7.7.3.m1.1.1.cmml" xref="A1.T2.7.7.7.3.m1.1.1"><times id="A1.T2.7.7.7.3.m1.1.1.1.cmml" xref="A1.T2.7.7.7.3.m1.1.1.1"></times><cn id="A1.T2.7.7.7.3.m1.1.1.2.cmml" type="integer" xref="A1.T2.7.7.7.3.m1.1.1.2">1</cn><apply id="A1.T2.7.7.7.3.m1.1.1.3.cmml" xref="A1.T2.7.7.7.3.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T2.7.7.7.3.m1.1.1.3.1.cmml" xref="A1.T2.7.7.7.3.m1.1.1.3">superscript</csymbol><cn id="A1.T2.7.7.7.3.m1.1.1.3.2.cmml" type="integer" xref="A1.T2.7.7.7.3.m1.1.1.3.2">10</cn><apply id="A1.T2.7.7.7.3.m1.1.1.3.3.cmml" xref="A1.T2.7.7.7.3.m1.1.1.3.3"><minus id="A1.T2.7.7.7.3.m1.1.1.3.3.1.cmml" xref="A1.T2.7.7.7.3.m1.1.1.3.3"></minus><cn id="A1.T2.7.7.7.3.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T2.7.7.7.3.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.7.7.7.3.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.7.7.7.3.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.19.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.19.11.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.19.11.1.1" style="font-size:144%;">Batch size</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.19.11.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.19.11.2.1" style="font-size:144%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.19.11.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.19.11.3.1" style="font-size:144%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.19.11.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.19.11.4.1" style="font-size:144%;">256</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.20.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.8.8.20.12.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.20.12.1.1" style="font-size:144%;">LR scheduler</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.20.12.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.20.12.2.1" style="font-size:144%;">Step</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.20.12.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.20.12.3.1" style="font-size:144%;">Step</span></td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.20.12.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.20.12.4.1" style="font-size:144%;">Step</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T2.8.8.8.2" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.8.2.1" style="font-size:144%;">Gradient clipping</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.8.8.8.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.8.3.1" style="font-size:144%;">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.8.8.8.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A1.T2.8.8.8.4.1" style="font-size:144%;">1.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.8.8.8.1" style="padding-left:3.4pt;padding-right:3.4pt;"><math alttext="-" class="ltx_Math" display="inline" id="A1.T2.8.8.8.1.m1.1"><semantics id="A1.T2.8.8.8.1.m1.1a"><mo id="A1.T2.8.8.8.1.m1.1.1" mathsize="144%" xref="A1.T2.8.8.8.1.m1.1.1.cmml">−</mo><annotation-xml encoding="MathML-Content" id="A1.T2.8.8.8.1.m1.1b"><minus id="A1.T2.8.8.8.1.m1.1.1.cmml" xref="A1.T2.8.8.8.1.m1.1.1"></minus></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.8.8.8.1.m1.1c">-</annotation><annotation encoding="application/x-llamapun" id="A1.T2.8.8.8.1.m1.1d">-</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A2 presents the architectural configurations and hyperparameters of the generators and the source recovery model used in the MergeVQ and MergeAR models for image generation.  It details the specifics for three different model architectures (LlamaGen-L, RandAR-L, and Source Recovery), including parameters like base channels, depth, attention heads, FFN dimension, dropout rate, mask scheduling methods, label smoothing, optimizer, weight decay, training epochs, base learning rate, batch size, learning rate scheduler, gradient clipping, and the number of parameters.
> <details>
> <summary>read the caption</summary>
> Table A2:  Configuration of generators and Source Recovery model in MergeVQ or MergeAR for image generation on ImageNet-1K.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.00999/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00999/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}