---
title: "UniTok: A Unified Tokenizer for Visual Generation and Understanding"
summary: "UniTok: A unified tokenizer bridging the visual generation and understanding gap via multi-codebook quantization, achieving SOTA in MLLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20321 {{< /keyword >}}
{{< keyword icon="writer" >}} Chuofan Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20321" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20321" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20321/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the critical gap between visual generation and understanding in Multimodal Large Language Models(MLLMs). Current visual tokenizers struggle to balance fine-grained details for generation and high-level semantics for understanding, leading to performance limitations and the need for separate task-specific tokenizers. This disparity increases model complexity and hinders true integration. The research identifies that the bottleneck is from limited representational capacity of discrete tokens.



To address this, the paper introduces **UniTok**, a unified visual tokenizer employing **multi-codebook quantization** and attention factorization. This expands the latent feature space and enhances token expressiveness. UniTok achieves strong results, matching or surpassing domain-specific tokenizers in reconstruction and classification. It sets a new state-of-the-art for unified autoregressive MLLMs and is foundational for improved downstream task performance. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UniTok, a unified visual tokenizer, bridges the gap between visual generation and understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Multi-codebook quantization and attention factorization enhance the representational capacity of discrete tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} UniTok achieves comparable or superior performance to domain-specific tokenizers and sets a new SOTA for unified autoregressive MLLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper matters because it **bridges the gap between visual understanding and generation** for MLLMs. UniTok's multi-codebook quantization and attention factorization offer new directions for tokenizer design. It **achieves impressive performance** and contributes to stronger downstream task performance, which **opens avenues for better unified MLLMs**.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20321/x1.png)

> 🔼 Figure 1(a) illustrates the training process of a unified visual tokenizer.  It integrates both visual generation and understanding tasks by using a combined loss function: reconstruction loss to ensure accurate image reconstruction, and contrastive loss to align visual features with text captions. This unified training aims to bridge the gap between visual generation and understanding models, which often rely on separate tokenizers. Figure 1(b) presents a comparison of UniTok, the proposed unified tokenizer, against VILA-U, a state-of-the-art unified tokenizer, on two key metrics: ImageNet zero-shot accuracy (demonstrating understanding capabilities) and reconstruction FID (measuring generation quality). The results highlight UniTok's superior performance in both tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a): The unified tokenizer training paradigm. (b): Comparison with the unified tokenizer VILA-U in terms of ImageNet zero-shot accuracy and reconstruction FID.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.10.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.7.1.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.1.1.2.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T1.7.1.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.1.1.3.1" style="font-size:80%;">#Tokens</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.7.1.1.1.1" style="font-size:80%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.7.1.1.1.m1.1"><semantics id="S4.T1.7.1.1.1.m1.1a"><mo id="S4.T1.7.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.1.1.1.m1.1b"><ci id="S4.T1.7.1.1.1.m1.1.1.cmml" xref="S4.T1.7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.7.1.1.4.1" style="font-size:80%;">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S4.T1.10.4.5.1.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.10.4.5.1.1.1" style="font-size:80%;">VQVAE Model</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.10.4.6.2.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.10.4.6.2.1.1" style="font-size:80%;">VQ-GAN </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.10.4.6.2.1.2.1" style="font-size:80%;">(</span>Esser et al.<span class="ltx_text" id="S4.T1.10.4.6.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib7" title="">2021</a><span class="ltx_text" id="S4.T1.10.4.6.2.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.10.4.6.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.6.2.2.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.4.6.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.6.2.3.1" style="font-size:80%;">4.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.4.6.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.6.2.4.1" style="font-size:80%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.10.4.7.3.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.10.4.7.3.1.1" style="font-size:80%;">RQ-VAE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.10.4.7.3.1.2.1" style="font-size:80%;">(</span>Lee et al.<span class="ltx_text" id="S4.T1.10.4.7.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib17" title="">2022</a><span class="ltx_text" id="S4.T1.10.4.7.3.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.10.4.7.3.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.7.3.2.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.7.3.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.7.3.3.1" style="font-size:80%;">1.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.7.3.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.7.3.4.1" style="font-size:80%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.10.4.8.4.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.10.4.8.4.1.1" style="font-size:80%;">VAR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.10.4.8.4.1.2.1" style="font-size:80%;">(</span>Tian et al.<span class="ltx_text" id="S4.T1.10.4.8.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib44" title="">2024</a><span class="ltx_text" id="S4.T1.10.4.8.4.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.10.4.8.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.8.4.2.1" style="font-size:80%;">680</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.8.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.8.4.3.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.8.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.8.4.4.1" style="font-size:80%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S4.T1.10.4.9.5.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.10.4.9.5.1.1" style="font-size:80%;">CLIP Model</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.10.4.10.6.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.10.4.10.6.1.1" style="font-size:80%;">CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.10.4.10.6.1.2.1" style="font-size:80%;">(</span>Radford et al.<span class="ltx_text" id="S4.T1.10.4.10.6.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib34" title="">2021</a><span class="ltx_text" id="S4.T1.10.4.10.6.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.10.4.10.6.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.10.6.2.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.4.10.6.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.10.6.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.4.10.6.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.10.6.4.1" style="font-size:80%;">76.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.10.4.11.7.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.10.4.11.7.1.1" style="font-size:80%;">SigLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.10.4.11.7.1.2.1" style="font-size:80%;">(</span>Zhai et al.<span class="ltx_text" id="S4.T1.10.4.11.7.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib66" title="">2023</a><span class="ltx_text" id="S4.T1.10.4.11.7.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.10.4.11.7.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.11.7.2.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.11.7.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.11.7.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.11.7.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.11.7.4.1" style="font-size:80%;">80.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.10.4.12.8.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.10.4.12.8.1.1" style="font-size:80%;">ViTamin </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.10.4.12.8.1.2.1" style="font-size:80%;">(</span>Chen et al.<span class="ltx_text" id="S4.T1.10.4.12.8.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib5" title="">2024</a><span class="ltx_text" id="S4.T1.10.4.12.8.1.4.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.10.4.12.8.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.12.8.2.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.12.8.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.12.8.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.12.8.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.12.8.4.1" style="font-size:80%;">81.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S4.T1.10.4.13.9.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.10.4.13.9.1.1" style="font-size:80%;">Unified Model</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.8.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.8.2.2.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.8.2.2.1.1" style="font-size:80%;">TokenFlow</span><sup class="ltx_sup" id="S4.T1.8.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.8.2.2.1.2.1" style="font-size:80%;">†</span></sup><span class="ltx_text" id="S4.T1.8.2.2.1.3" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.8.2.2.1.4.1" style="font-size:80%;">(</span>Qu et al.<span class="ltx_text" id="S4.T1.8.2.2.1.5.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib33" title="">2024</a><span class="ltx_text" id="S4.T1.8.2.2.1.6.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.8.2.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.2.2.2.1" style="font-size:80%;">680</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.2.2.3.1" style="font-size:80%;">1.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.8.2.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.8.2.2.4.1" style="font-size:80%;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.9.3.3.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T1.9.3.3.1.1" style="font-size:80%;">VILA-U</span><sup class="ltx_sup" id="S4.T1.9.3.3.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.9.3.3.1.2.1" style="font-size:80%;">†</span></sup><span class="ltx_text" id="S4.T1.9.3.3.1.3" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.9.3.3.1.4.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T1.9.3.3.1.5.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib57" title="">2024d</a><span class="ltx_text" id="S4.T1.9.3.3.1.6.3" style="font-size:80%;">)</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.9.3.3.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.3.3.2.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.9.3.3.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.3.3.3.1" style="font-size:80%;">1.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.3.3.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.9.3.3.4.1" style="font-size:80%;">73.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.14.10" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.10.4.14.10.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.14.10.1.1" style="font-size:80%;background-color:#E6E6E6;">UniTok</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.10.4.14.10.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.14.10.2.1" style="font-size:80%;background-color:#E6E6E6;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.14.10.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.14.10.3.1" style="font-size:80%;background-color:#E6E6E6;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.4.14.10.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.14.10.4.1" style="font-size:80%;background-color:#E6E6E6;">70.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.4.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.10.4.4.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.4.1.1" style="font-size:80%;background-color:#E6E6E6;">UniTok<sup class="ltx_sup" id="S4.T1.10.4.4.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.10.4.4.1.1.1.1">†</span></sup></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.10.4.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.4.2.1" style="font-size:80%;background-color:#E6E6E6;">256</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.4.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.4.3.1" style="font-size:80%;background-color:#E6E6E6;">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.4.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T1.10.4.4.4.1" style="font-size:80%;background-color:#E6E6E6;">78.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of various image tokenizers on the ImageNet dataset.  It evaluates both the reconstruction quality (using Fréchet Inception Distance or FID, a lower score is better) and the zero-shot classification accuracy.  Reconstruction quality assesses how well a tokenizer can reconstruct an image from its encoded representation. Zero-shot classification accuracy measures the model's ability to classify images into their respective categories without any prior training on those specific categories.  The FID is calculated at a resolution of 256x256 pixels, with a 16x downsampling ratio. The table also indicates whether a model was initialized using pre-trained CLIP weights, a technique that can affect performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with modern tokenizers on ImageNet reconstruction FID and zero-shot classification accuracy. The rFID is measured at 256×256256256256\times 256256 × 256 resolution with 16×16\times16 × downsample ratio. ††\dagger† indicates the model uses pretrained CLIP weights for initialization.
> </details>





### In-depth insights


#### Unified Tokenizer
The concept of a **unified tokenizer** addresses a critical need in multimodal learning, aiming to bridge the gap between visual generation and understanding. The core idea revolves around creating a single tokenizer capable of encoding both fine-grained details for generating high-quality images and high-level semantics crucial for visual reasoning. This is challenging because traditional tokenizers are optimized for one task, leading to a trade-off between generation fidelity and understanding capability. A truly successful unified tokenizer would **simplify model architectures**, improve training efficiency, and facilitate seamless integration of diverse visual tasks within a single framework, potentially leading to more versatile and powerful AI systems. Overcoming loss conflicts is key, possibly via expanding representational capacity.

#### Multi-Code Quant
Multi-codebook quantization (MCQ) addresses the limitations of standard vector quantization by **splitting the latent space into multiple chunks, each quantized by an independent sub-codebook.** This allows for a **larger effective vocabulary size** without the training instability associated with a single, massive codebook. The chunks number and dimensionality scale the latent code space by increasing sub-codebooks. In the context of unified tokenizers, MCQ can mitigate the bottleneck caused by limited representational capacity of discrete tokens, improving both reconstruction and downstream task performance. **It enhances the representation and avoids optimization problem with large codebooks.**

#### VQ Bottleneck
The authors identify a **quantization bottleneck** limiting unified tokenizers' performance, especially in visual understanding. Despite CLIP supervision, performance lags behind specialized CLIP tokenizers. Ablation studies reveal that **token factorization** (dimensionality reduction) and **discretization** (mapping to a small codebook) in VQ contribute to information loss. Reconstruction loss integration improves generation but doesn't fully address the understanding gap, suggesting the **limited representational capacity** of discrete tokens is the primary issue, rather than inherent loss conflicts between reconstruction and contrastive learning. Thus motivates exploration of strategies to enhance feature space.

#### Attention Factor
Regarding 'Attention Factor,' it's plausible that the research explores how attention mechanisms influence the model's performance. The study might delve into various attention techniques, such as **self-attention or cross-attention**, and their impact on capturing relevant information from different modalities. The 'Attention Factor' could quantify the degree to which the model focuses on specific features or regions of interest, possibly measured through attention weights or saliency maps. The analysis may investigate how different **attention architectures or training strategies affect this factor**, aiming to improve feature extraction, cross-modal alignment, or overall downstream task performance. Ultimately, fine-tuning the 'Attention Factor' could lead to more efficient and effective models for visual understanding and generation, possibly reducing computational costs or enhancing the quality of generated outputs.

#### Unified MLLM
The "Unified MLLM" heading suggests a significant trend in multimodal machine learning: the creation of models capable of handling both visual and textual data within a single, cohesive architecture. This implies a move away from task-specific models toward more general-purpose systems that can perform a variety of tasks, such as image generation, visual understanding, and text-based reasoning. A key challenge in this area is bridging the gap between visual and textual representations. Models often struggle to effectively integrate information from these different modalities due to inherent differences in their structure and semantic content. The success of unified MLLMs hinges on developing effective techniques for aligning visual and textual features, enabling seamless information transfer between the modalities. This could involve novel architectures, training strategies, or representation learning methods that promote cross-modal understanding. The development of such models has the potential to revolutionize various applications, including image captioning, visual question answering, and multimodal dialogue systems. By enabling more sophisticated and versatile AI systems, unified MLLMs can pave the way for more seamless and intuitive human-computer interactions.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20321/x2.png)

> 🔼 UniTok, a unified tokenizer, processes an image by first encoding it using a vision encoder. The resulting continuous token is then split into multiple chunks. Each chunk is independently quantized using a separate sub-codebook, resulting in a set of discrete tokens. This process is called multi-codebook quantization.  These discrete tokens are projected, creating a representation suitable for both image generation and understanding.  Simultaneously, the text caption undergoes processing through a text encoder. Finally, a contrastive loss is applied to align these discrete visual tokens with the text caption’s representation, ensuring that the visual representation captures the semantic meaning described in the text.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of UniTok. The tokenizer is trained to faithfully reconstruct the input image while aligning its discrete latent features with the text caption. For vector quantization, each visual token is split into multiple chunks, which then undergo code index lookup on corresponding sub-codebooks concurrently.
> </details>



![](https://arxiv.org/html/2502.20321/x3.png)

> 🔼 This figure illustrates the step-by-step improvement in Visual Question Answering (VQA) performance when developing the UniTok model. It starts with a CLIP tokenizer baseline and progressively adds components such as factorization, discretization, reconstruction loss, and multi-codebook quantization.  Each addition's effect on VQA performance, measured by averaging scores across four benchmark datasets (VQAv2, GQA, TextVQA, and POPE), is shown using blue bars. Purple bars represent the performance gains specifically due to UniTok's proposed improvements.  All models were trained on 512 million image-text pairs from the DataComp dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Roadmap to build UniTok. The blue bars illustrate the progressive changes in VQA performance from the CLIP tokenizer to the unified tokenizer, while the purple bars represent the proposed improvements in UniTok. The VQA score is measured using the average accuracy across the VQAv2, GQA, TextVQA, and POPE benchmarks. All models are trained from scratch on 512m image-text pairs from DataComp.
> </details>



![](https://arxiv.org/html/2502.20321/x4.png)

> 🔼 This figure illustrates the modified attention blocks used for factorization in UniTok. The original attention mechanism is adapted to improve the representation of factorized tokens.  The yellow highlighted modules signify alterations in the number of channels, showing how the channel dimensions change during the factorization process. This modification is crucial for maintaining compatibility with autoregressive generation, enabling the model to effectively handle sequential visual data.
> <details>
> <summary>read the caption</summary>
> Figure 4: Modified attention blocks for factorization. Modules in yellow indicate a change in the number of channels.
> </details>



![](https://arxiv.org/html/2502.20321/extracted/6238271/fig/vis.png)

> 🔼 Figure 5 showcases various images generated using the UniTok unified multimodal large language model (MLLM).  These images, produced at a 256x256 pixel resolution, demonstrate the model's ability to create diverse and visually appealing outputs based on text prompts. The examples highlight a range of styles and subject matter, underscoring the MLLM's capabilities for both photorealistic imagery and creative, stylized generation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Images generated in a resolution of 256×256256256256\times 256256 × 256 with our unified MLLM.
> </details>



![](https://arxiv.org/html/2502.20321/extracted/6238271/fig/rec.png)

> 🔼 Figure 6 displays qualitative results demonstrating UniTok's image reconstruction capabilities at a resolution of 256x256 pixels.  The figure presents several example image pairs: the original image and its reconstruction by UniTok.  This visual comparison showcases UniTok's ability to accurately reconstruct images, including fine details such as text and facial features, even in complex scenes.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results on image reconstruction in a resolution of 256×256256256256\times 256256 × 256.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.1.1.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.2.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.3.1" style="font-size:80%;">Token Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.4.1" style="font-size:80%;">Res.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.5.1" style="font-size:80%;">VQAv2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.6.1" style="font-size:80%;">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.7.1" style="font-size:80%;">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.8.1" style="font-size:80%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.9.1" style="font-size:80%;">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.10.1" style="font-size:80%;">MM-Vet</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.2.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.2.2.1.1" style="font-size:80%;">Emu </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.2.2.1.2.1" style="font-size:80%;">(</span>Sun et al.<span class="ltx_text" id="S4.T2.1.1.2.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib41" title="">2023</a><span class="ltx_text" id="S4.T2.1.1.2.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.2.1" style="font-size:80%;">Llama-13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.3.1" style="font-size:80%;">Continuous</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2.2.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.4.1" style="font-size:80%;">224</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.5.1" style="font-size:80%;">52.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.3.3.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.3.3.1.1" style="font-size:80%;">LaVIT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.3.3.1.2.1" style="font-size:80%;">(</span>Jin et al.<span class="ltx_text" id="S4.T2.1.1.3.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib13" title="">2023</a><span class="ltx_text" id="S4.T2.1.1.3.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.2.1" style="font-size:80%;">Llama-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.3.1" style="font-size:80%;">Continuous</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.3.3.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.4.1" style="font-size:80%;">224</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.5.1" style="font-size:80%;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.6.1" style="font-size:80%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.4">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.4.4.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.4.4.1.1" style="font-size:80%;">DreamLLM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.4.4.1.2.1" style="font-size:80%;">(</span>Dong et al.<span class="ltx_text" id="S4.T2.1.1.4.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib6" title="">2023</a><span class="ltx_text" id="S4.T2.1.1.4.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.2.1" style="font-size:80%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.3.1" style="font-size:80%;">Continuous</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.4.4.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.4.1" style="font-size:80%;">224</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.5.1" style="font-size:80%;">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.7.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.10.1" style="font-size:80%;">26.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.5.5.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.5.5.1.1" style="font-size:80%;">Unified-IO 2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.5.5.1.2.1" style="font-size:80%;">(</span>Lu et al.<span class="ltx_text" id="S4.T2.1.1.5.5.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib27" title="">2024</a><span class="ltx_text" id="S4.T2.1.1.5.5.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.2.1" style="font-size:80%;">6.8B from scratch</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.3.1" style="font-size:80%;">Continuous</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.5.5.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.4.1" style="font-size:80%;">384</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.5.1" style="font-size:80%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.8.1" style="font-size:80%;">87.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.6">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.6.6.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.6.6.1.1" style="font-size:80%;">Janus </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.6.6.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T2.1.1.6.6.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib53" title="">2024a</a><span class="ltx_text" id="S4.T2.1.1.6.6.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.2.1" style="font-size:80%;">DeepSeek-1.3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.3.1" style="font-size:80%;">Continuous</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.6.6.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.4.1" style="font-size:80%;">384</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.5.1" style="font-size:80%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.6.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.8.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.9.1" style="font-size:80%;">1338</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.10.1" style="font-size:80%;">34.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.7.7.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.7.7.1.1" style="font-size:80%;">CM3Leon </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.7.7.1.2.1" style="font-size:80%;">(</span>Yu et al.<span class="ltx_text" id="S4.T2.1.1.7.7.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib63" title="">2023c</a><span class="ltx_text" id="S4.T2.1.1.7.7.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.2.1" style="font-size:80%;">7B from scratch</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.3.1" style="font-size:80%;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.7.7.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.4.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.5.1" style="font-size:80%;">47.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.8">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.8.8.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.8.8.1.1" style="font-size:80%;">LWM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.8.8.1.2.1" style="font-size:80%;">(</span>Liu et al.<span class="ltx_text" id="S4.T2.1.1.8.8.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib26" title="">2024b</a><span class="ltx_text" id="S4.T2.1.1.8.8.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.2.1" style="font-size:80%;">Llama-2-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.3.1" style="font-size:80%;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.8.8.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.4.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.5.1" style="font-size:80%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.6.1" style="font-size:80%;">44.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.7.1" style="font-size:80%;">18.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.8.1" style="font-size:80%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.8.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9.9">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.9.9.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.9.9.1.1" style="font-size:80%;">Show-o </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.9.9.1.2.1" style="font-size:80%;">(</span>Xie et al.<span class="ltx_text" id="S4.T2.1.1.9.9.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib58" title="">2024</a><span class="ltx_text" id="S4.T2.1.1.9.9.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.2.1" style="font-size:80%;">Phi-1.5-1.3B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.3.1" style="font-size:80%;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.9.9.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.4.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.5.1" style="font-size:80%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.6.1" style="font-size:80%;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.8.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.9.1" style="font-size:80%;">948</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.9.9.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10.10">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.10.10.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.10.10.1.1" style="font-size:80%;">Chameleon </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.10.10.1.2.1" style="font-size:80%;">(</span>Team<span class="ltx_text" id="S4.T2.1.1.10.10.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib43" title="">2024</a><span class="ltx_text" id="S4.T2.1.1.10.10.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.10.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.2.1" style="font-size:80%;">34B from scratch</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.10.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.3.1" style="font-size:80%;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.10.10.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.4.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.10.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.5.1" style="font-size:80%;">69.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.10.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.10.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.10.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.10.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.10.10.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td" id="S4.T2.1.1.10.10.10" style="padding:0.4pt 5.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11.11">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.11.11.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.11.11.1.1" style="font-size:80%;">Liquid </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.11.11.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T2.1.1.11.11.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib54" title="">2024b</a><span class="ltx_text" id="S4.T2.1.1.11.11.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.2.1" style="font-size:80%;">Gemma-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.3.1" style="font-size:80%;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.11.11.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.4.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.5.1" style="font-size:80%;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.6.1" style="font-size:80%;">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.7.1" style="font-size:80%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.8.1" style="font-size:80%;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.9.1" style="font-size:80%;">1119</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.11.11.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12.12">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.12.12.1" style="padding:0.4pt 5.0pt;">
<span class="ltx_text" id="S4.T2.1.1.12.12.1.1" style="font-size:80%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.1.1.12.12.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T2.1.1.12.12.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib57" title="">2024d</a><span class="ltx_text" id="S4.T2.1.1.12.12.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.2.1" style="font-size:80%;">Llama-2-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.3.1" style="font-size:80%;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.12.12.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.4.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.5.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.6.1" style="font-size:80%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.7.1" style="font-size:80%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.8.1" style="font-size:80%;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.9.1" style="font-size:80%;">1336</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.12.12.10.1" style="font-size:80%;">27.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13.13" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.1.13.13.1" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.1.1" style="font-size:80%;background-color:#E6E6E6;">UniTok</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.2" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.2.1" style="font-size:80%;background-color:#E6E6E6;">Llama-2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.3" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.3.1" style="font-size:80%;background-color:#E6E6E6;">Discrete</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.13.13.4" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.4.1" style="font-size:80%;background-color:#E6E6E6;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.5" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.5.1" style="font-size:80%;background-color:#E6E6E6;">76.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.6" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.6.1" style="font-size:80%;background-color:#E6E6E6;">61.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.7" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.7.1" style="font-size:80%;background-color:#E6E6E6;">51.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.8" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.8.1" style="font-size:80%;background-color:#E6E6E6;">83.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.9" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.9.1" style="font-size:80%;background-color:#E6E6E6;">1448</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.13.13.10" style="padding:0.4pt 5.0pt;"><span class="ltx_text" id="S4.T2.1.1.13.13.10.1" style="font-size:80%;background-color:#E6E6E6;">33.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various unified multi-modal large language models (MLLMs) on several Visual Question Answering (VQA) benchmark datasets.  It shows the accuracy of each model on various VQA tasks (VQAv2, GQA, TextVQA, POPE, MME, MM-Vet) along with details such as the underlying large language model (LLM) used, the type of visual tokenization (continuous or discrete), the resolution of the images used in the evaluation, and the source of the visual tokens.  This allows for a comprehensive comparison of different approaches to integrating vision and language within MLLMs, highlighting strengths and weaknesses of various architectures.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with unified multi-modal large language models on VQA benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.5.5.5.6" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.6.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.7" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.7.1" style="font-size:80%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.5.5.5.8" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.8.1" style="font-size:80%;">#Training Images</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.1.1" style="font-size:80%;">Count<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.1" style="font-size:80%;">Differ<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.3.3.3.3.1" style="font-size:80%;">Compare<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.4.4.4.4" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.4.1" style="font-size:80%;">Logical</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.5" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.5.5.1" style="font-size:80%;">Overall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.6.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.1.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.1.1.1" style="font-size:80%;">Negate</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.6.1.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.1.2.1" style="font-size:80%;">Universal</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.7.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.5.7.2.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.7.2.1.1" style="font-size:80%;">SD v2.1 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.7.2.1.2.1" style="font-size:80%;">(</span>Rombach et al.<span class="ltx_text" id="S4.T3.5.5.7.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib36" title="">2022a</a><span class="ltx_text" id="S4.T3.5.5.7.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.5.7.2.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.3.1" style="font-size:80%;">2000M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.4.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.5.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.6.1" style="font-size:80%;">0.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.7.1" style="font-size:80%;">0.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.8.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.7.2.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.9.1" style="font-size:80%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.8.3">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.8.3.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.8.3.1.1" style="font-size:80%;">SD-XL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.8.3.1.2.1" style="font-size:80%;">(</span>Podell et al.<span class="ltx_text" id="S4.T3.5.5.8.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib32" title="">2023</a><span class="ltx_text" id="S4.T3.5.5.8.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.8.3.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.3.1" style="font-size:80%;">2000M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.4.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.5.1" style="font-size:80%;">0.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.6.1" style="font-size:80%;">0.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.7.1" style="font-size:80%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.8.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.9.1" style="font-size:80%;">0.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.9.4">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.9.4.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.9.4.1.1" style="font-size:80%;">Midjourney v6 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.9.4.1.2.1" style="font-size:80%;">(</span>Radhakrishnan<span class="ltx_text" id="S4.T3.5.5.9.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib35" title="">2023</a><span class="ltx_text" id="S4.T3.5.5.9.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.9.4.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.9.4.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.9.4.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.4.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.9.4.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.5.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.9.4.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.6.1" style="font-size:80%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.9.4.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.7.1" style="font-size:80%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.9.4.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.8.1" style="font-size:80%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.9.4.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.9.1" style="font-size:80%;">0.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.10.5">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.10.5.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.10.5.1.1" style="font-size:80%;">DALL-E 3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.10.5.1.2.1" style="font-size:80%;">(</span>Betker et al.<span class="ltx_text" id="S4.T3.5.5.10.5.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib2" title="">2023</a><span class="ltx_text" id="S4.T3.5.5.10.5.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.10.5.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.10.5.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.10.5.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.4.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.10.5.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.5.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.10.5.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.6.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.10.5.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.7.1" style="font-size:80%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.10.5.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.8.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.10.5.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.10.5.9.1" style="font-size:80%;">0.70</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.11.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.5.11.6.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.11.6.1.1" style="font-size:80%;">Show-o </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.11.6.1.2.1" style="font-size:80%;">(</span>Xie et al.<span class="ltx_text" id="S4.T3.5.5.11.6.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib58" title="">2024</a><span class="ltx_text" id="S4.T3.5.5.11.6.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.2.1" style="font-size:80%;">Discrete Diff.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.5.11.6.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.3.1" style="font-size:80%;">36M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.4.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.5.1" style="font-size:80%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.6.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.7.1" style="font-size:80%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.8.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.11.6.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.11.6.9.1" style="font-size:80%;">0.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.12.7">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.12.7.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.12.7.1.1" style="font-size:80%;">LWM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.12.7.1.2.1" style="font-size:80%;">(</span>Liu et al.<span class="ltx_text" id="S4.T3.5.5.12.7.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib26" title="">2024b</a><span class="ltx_text" id="S4.T3.5.5.12.7.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.12.7.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.12.7.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.12.7.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.4.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.12.7.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.5.1" style="font-size:80%;">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.12.7.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.6.1" style="font-size:80%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.12.7.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.7.1" style="font-size:80%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.12.7.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.8.1" style="font-size:80%;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.12.7.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.12.7.9.1" style="font-size:80%;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.13.8">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.13.8.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.13.8.1.1" style="font-size:80%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.13.8.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T3.5.5.13.8.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib57" title="">2024d</a><span class="ltx_text" id="S4.T3.5.5.13.8.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.13.8.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.13.8.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.3.1" style="font-size:80%;">15M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.13.8.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.4.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.13.8.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.5.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.13.8.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.6.1" style="font-size:80%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.13.8.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.7.1" style="font-size:80%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.13.8.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.8.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.13.8.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.13.8.9.1" style="font-size:80%;">0.64</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.14.9">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.14.9.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="S4.T3.5.5.14.9.1.1" style="font-size:80%;">Liquid </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.5.5.14.9.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T3.5.5.14.9.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib54" title="">2024b</a><span class="ltx_text" id="S4.T3.5.5.14.9.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.14.9.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.14.9.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.3.1" style="font-size:80%;">30M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.14.9.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.4.1" style="font-size:80%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.14.9.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.5.1" style="font-size:80%;">0.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.14.9.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.6.1" style="font-size:80%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.14.9.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.7.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.14.9.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.8.1" style="font-size:80%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.14.9.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.14.9.9.1" style="font-size:80%;">0.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.15.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.5.5.15.10.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.1.1" style="font-size:80%;background-color:#E6E6E6;">UniTok</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.15.10.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.2.1" style="font-size:80%;background-color:#E6E6E6;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.5.5.15.10.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.3.1" style="font-size:80%;background-color:#E6E6E6;">30M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.15.10.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.4.1" style="font-size:80%;background-color:#E6E6E6;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.15.10.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.5.1" style="font-size:80%;background-color:#E6E6E6;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.15.10.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.6.1" style="font-size:80%;background-color:#E6E6E6;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.15.10.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.7.1" style="font-size:80%;background-color:#E6E6E6;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.15.10.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.8.1" style="font-size:80%;background-color:#E6E6E6;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.15.10.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="S4.T3.5.5.15.10.9.1" style="font-size:80%;background-color:#E6E6E6;">0.67</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of UniTok against other visual generation methods on the GenAI-Bench benchmark, specifically using advanced prompts.  The comparison considers several aspects of image generation quality, including the ability to correctly capture attributes, scenes, relations, spatial aspects, and actions within the generated image in response to a given prompt. The metrics used allow for a nuanced evaluation of how well different models handle complex and nuanced textual instructions, beyond basic image generation capabilities.  UniTok's performance is benchmarked against various diffusion and autoregressive models, indicating its competitive standing in this area.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison with other visual generation methods on GenAI-Bench (advanced prompts).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:80%;">Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:80%;">Res.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:80%;">FID</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.2.1.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.2.1.1.1" style="font-size:80%;">SD-XL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.2.1.1.2.1" style="font-size:80%;">(</span>Podell et al.<span class="ltx_text" id="S4.T4.1.1.2.1.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib32" title="">2023</a><span class="ltx_text" id="S4.T4.1.1.2.1.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.2.1.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.2.1.3.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.2.1.4.1" style="font-size:80%;">9.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.3.2.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.3.2.1.1" style="font-size:80%;">PixArt </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.3.2.1.2.1" style="font-size:80%;">(</span>Chen et al.<span class="ltx_text" id="S4.T4.1.1.3.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib4" title="">2023</a><span class="ltx_text" id="S4.T4.1.1.3.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.3.2.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.3.2.3.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.3.2.4.1" style="font-size:80%;">6.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.4.3.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.4.3.1.1" style="font-size:80%;">Playground </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.4.3.1.2.1" style="font-size:80%;">(</span>Li et al.<span class="ltx_text" id="S4.T4.1.1.4.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib18" title="">2024a</a><span class="ltx_text" id="S4.T4.1.1.4.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.4.3.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.4.3.3.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.4.3.4.1" style="font-size:80%;">4.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.5.4.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.5.4.1.1" style="font-size:80%;">Liquid </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.5.4.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T4.1.1.5.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib54" title="">2024b</a><span class="ltx_text" id="S4.T4.1.1.5.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.5.4.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.5.4.3.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.5.4.4.1" style="font-size:80%;">5.47</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.6.5.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.6.5.1.1" style="font-size:80%;">Janus </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.6.5.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T4.1.1.6.5.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib53" title="">2024a</a><span class="ltx_text" id="S4.T4.1.1.6.5.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.6.5.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.6.5.3.1" style="font-size:80%;">384</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.6.5.4.1" style="font-size:80%;">10.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.6">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.7.6.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.7.6.1.1" style="font-size:80%;">LWM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.7.6.1.2.1" style="font-size:80%;">(</span>Liu et al.<span class="ltx_text" id="S4.T4.1.1.7.6.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib26" title="">2024b</a><span class="ltx_text" id="S4.T4.1.1.7.6.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.7.6.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.7.6.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.7.6.4.1" style="font-size:80%;">17.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.7">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.8.7.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.8.7.1.1" style="font-size:80%;">Show-o </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.8.7.1.2.1" style="font-size:80%;">(</span>Xie et al.<span class="ltx_text" id="S4.T4.1.1.8.7.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib58" title="">2024</a><span class="ltx_text" id="S4.T4.1.1.8.7.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.8.7.2.1" style="font-size:80%;">Discrete Diff.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.8.7.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.8.7.4.1" style="font-size:80%;">15.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9.8">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.9.8.1" style="padding:0.6pt 5.0pt;">
<span class="ltx_text" id="S4.T4.1.1.9.8.1.1" style="font-size:80%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.1.1.9.8.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="S4.T4.1.1.9.8.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib57" title="">2024d</a><span class="ltx_text" id="S4.T4.1.1.9.8.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.9.8.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.9.8.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.8.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.9.8.4.1" style="font-size:80%;">12.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.1.1.10.9.1" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.10.9.1.1" style="font-size:80%;">UniTok</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.1.10.9.2" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.10.9.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.1.10.9.3" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.10.9.3.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.1.10.9.4" style="padding:0.6pt 5.0pt;"><span class="ltx_text" id="S4.T4.1.1.10.9.4.1" style="font-size:80%;">7.46</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various visual generation models on the MJHQ-30K benchmark.  It shows the FID score (lower is better) achieved by each model at different resolutions (Res), indicating the quality of generated images.  The 'Type' column specifies the architecture of each model (e.g., Diffusion, Autoregressive). This provides insight into how different model architectures perform at various image resolutions in terms of visual fidelity.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on MJHQ-30K.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.4.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.4.2.3.1.1" rowspan="2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.3.1.1.1" style="font-size:80%;">Supervision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.4.2.3.1.2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.3.1.2.1" style="font-size:80%;">Generation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T5.4.2.3.1.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.3.1.3.1" style="font-size:80%;">Understanding</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.1.1.1" style="padding-top:0.4pt;padding-bottom:0.4pt;">
<span class="ltx_text" id="S4.T5.3.1.1.1.1" style="font-size:80%;">rFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.1.1.1.m1.1"><semantics id="S4.T5.3.1.1.1.m1.1a"><mo id="S4.T5.3.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.1.1.1.m1.1b"><ci id="S4.T5.3.1.1.1.m1.1.1.cmml" xref="S4.T5.3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.2.2.2" style="padding-top:0.4pt;padding-bottom:0.4pt;">
<span class="ltx_text" id="S4.T5.4.2.2.2.1" style="font-size:80%;">gFID </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.4.2.2.2.m1.1"><semantics id="S4.T5.4.2.2.2.m1.1a"><mo id="S4.T5.4.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.2.2.2.m1.1b"><ci id="S4.T5.4.2.2.2.m1.1.1.cmml" xref="S4.T5.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.2.2.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.2.3.1" style="font-size:80%;">VQAv2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.2.2.4" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.2.4.1" style="font-size:80%;">GQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.2.2.5" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.2.5.1" style="font-size:80%;">SciQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.2.2.6" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.2.6.1" style="font-size:80%;">TextVQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.2.2.7" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.2.7.1" style="font-size:80%;">POPE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.4.2.2.8" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.2.8.1" style="font-size:80%;">MME</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.4.2.4.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.1" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.1.1" style="font-size:80%;">Contrastive</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.2.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.4" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.4.1" style="font-size:80%;">68.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.5" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.5.1" style="font-size:80%;">56.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.6" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.6.1" style="font-size:80%;">65.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.7" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.7.1" style="font-size:80%;">49.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.8" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.8.1" style="font-size:80%;">82.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.4.1.9" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.4.1.9.1" style="font-size:80%;">1373</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.2.5.2">
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.1" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.1.1" style="font-size:80%;">Reconstruction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.2.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.3.1" style="font-size:80%;">3.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.4" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.4.1" style="font-size:80%;">56.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.5" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.5.1" style="font-size:80%;">47.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.6" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.6.1" style="font-size:80%;">63.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.7" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.7.1" style="font-size:80%;">43.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.8" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.8.1" style="font-size:80%;">77.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.2.5.2.9" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.5.2.9.1" style="font-size:80%;">902</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.2.6.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.1" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.1.1" style="font-size:80%;">Recon. + Contra.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.2.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.3.1" style="font-size:80%;">3.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.4" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.4.1" style="font-size:80%;">69.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.5" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.5.1" style="font-size:80%;">56.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.6" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.6.1" style="font-size:80%;">65.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.7" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.7.1" style="font-size:80%;">49.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.8" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.8.1" style="font-size:80%;">81.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.2.6.3.9" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T5.4.2.6.3.9.1" style="font-size:80%;">1333</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of different supervision methods (reconstruction loss, contrastive loss, and a combination of both) used during the training of a unified visual tokenizer. It shows the resulting performance on downstream tasks, including image generation and visual understanding.  The evaluation metrics are rFID and gFID for image generation (measured on the ImageNet validation set at 256x256 resolution), and several VQA scores for visual understanding. LlamaGen-L is used as the generator for gFID calculation.
> <details>
> <summary>read the caption</summary>
> Table 5: Impact of different supervision types on downstream generation and understanding performance. The rFID and gFID are measured on the ImageNet (256×256256256256\times 256256 × 256) validation set. LlamaGen-L (Sun et al., 2024a) is adopted as the generator for gFID evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.15.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.10.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.10.4.4.5">Codebook</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.7.1.1.1"><math alttext="1\times 16384" class="ltx_Math" display="inline" id="S4.T6.7.1.1.1.m1.1"><semantics id="S4.T6.7.1.1.1.m1.1a"><mrow id="S4.T6.7.1.1.1.m1.1.1" xref="S4.T6.7.1.1.1.m1.1.1.cmml"><mn id="S4.T6.7.1.1.1.m1.1.1.2" xref="S4.T6.7.1.1.1.m1.1.1.2.cmml">1</mn><mo id="S4.T6.7.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T6.7.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S4.T6.7.1.1.1.m1.1.1.3" xref="S4.T6.7.1.1.1.m1.1.1.3.cmml">16384</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.7.1.1.1.m1.1b"><apply id="S4.T6.7.1.1.1.m1.1.1.cmml" xref="S4.T6.7.1.1.1.m1.1.1"><times id="S4.T6.7.1.1.1.m1.1.1.1.cmml" xref="S4.T6.7.1.1.1.m1.1.1.1"></times><cn id="S4.T6.7.1.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T6.7.1.1.1.m1.1.1.2">1</cn><cn id="S4.T6.7.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T6.7.1.1.1.m1.1.1.3">16384</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.7.1.1.1.m1.1c">1\times 16384</annotation><annotation encoding="application/x-llamapun" id="S4.T6.7.1.1.1.m1.1d">1 × 16384</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.8.2.2.2"><math alttext="2\times 8192" class="ltx_Math" display="inline" id="S4.T6.8.2.2.2.m1.1"><semantics id="S4.T6.8.2.2.2.m1.1a"><mrow id="S4.T6.8.2.2.2.m1.1.1" xref="S4.T6.8.2.2.2.m1.1.1.cmml"><mn id="S4.T6.8.2.2.2.m1.1.1.2" xref="S4.T6.8.2.2.2.m1.1.1.2.cmml">2</mn><mo id="S4.T6.8.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T6.8.2.2.2.m1.1.1.1.cmml">×</mo><mn id="S4.T6.8.2.2.2.m1.1.1.3" xref="S4.T6.8.2.2.2.m1.1.1.3.cmml">8192</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.8.2.2.2.m1.1b"><apply id="S4.T6.8.2.2.2.m1.1.1.cmml" xref="S4.T6.8.2.2.2.m1.1.1"><times id="S4.T6.8.2.2.2.m1.1.1.1.cmml" xref="S4.T6.8.2.2.2.m1.1.1.1"></times><cn id="S4.T6.8.2.2.2.m1.1.1.2.cmml" type="integer" xref="S4.T6.8.2.2.2.m1.1.1.2">2</cn><cn id="S4.T6.8.2.2.2.m1.1.1.3.cmml" type="integer" xref="S4.T6.8.2.2.2.m1.1.1.3">8192</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.8.2.2.2.m1.1c">2\times 8192</annotation><annotation encoding="application/x-llamapun" id="S4.T6.8.2.2.2.m1.1d">2 × 8192</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.9.3.3.3"><math alttext="4\times 4096" class="ltx_Math" display="inline" id="S4.T6.9.3.3.3.m1.1"><semantics id="S4.T6.9.3.3.3.m1.1a"><mrow id="S4.T6.9.3.3.3.m1.1.1" xref="S4.T6.9.3.3.3.m1.1.1.cmml"><mn id="S4.T6.9.3.3.3.m1.1.1.2" xref="S4.T6.9.3.3.3.m1.1.1.2.cmml">4</mn><mo id="S4.T6.9.3.3.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T6.9.3.3.3.m1.1.1.1.cmml">×</mo><mn id="S4.T6.9.3.3.3.m1.1.1.3" xref="S4.T6.9.3.3.3.m1.1.1.3.cmml">4096</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.9.3.3.3.m1.1b"><apply id="S4.T6.9.3.3.3.m1.1.1.cmml" xref="S4.T6.9.3.3.3.m1.1.1"><times id="S4.T6.9.3.3.3.m1.1.1.1.cmml" xref="S4.T6.9.3.3.3.m1.1.1.1"></times><cn id="S4.T6.9.3.3.3.m1.1.1.2.cmml" type="integer" xref="S4.T6.9.3.3.3.m1.1.1.2">4</cn><cn id="S4.T6.9.3.3.3.m1.1.1.3.cmml" type="integer" xref="S4.T6.9.3.3.3.m1.1.1.3">4096</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.9.3.3.3.m1.1c">4\times 4096</annotation><annotation encoding="application/x-llamapun" id="S4.T6.9.3.3.3.m1.1d">4 × 4096</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.10.4.4.4"><math alttext="8\times 2048" class="ltx_Math" display="inline" id="S4.T6.10.4.4.4.m1.1"><semantics id="S4.T6.10.4.4.4.m1.1a"><mrow id="S4.T6.10.4.4.4.m1.1.1" xref="S4.T6.10.4.4.4.m1.1.1.cmml"><mn id="S4.T6.10.4.4.4.m1.1.1.2" xref="S4.T6.10.4.4.4.m1.1.1.2.cmml">8</mn><mo id="S4.T6.10.4.4.4.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S4.T6.10.4.4.4.m1.1.1.1.cmml">×</mo><mn id="S4.T6.10.4.4.4.m1.1.1.3" xref="S4.T6.10.4.4.4.m1.1.1.3.cmml">2048</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.10.4.4.4.m1.1b"><apply id="S4.T6.10.4.4.4.m1.1.1.cmml" xref="S4.T6.10.4.4.4.m1.1.1"><times id="S4.T6.10.4.4.4.m1.1.1.1.cmml" xref="S4.T6.10.4.4.4.m1.1.1.1"></times><cn id="S4.T6.10.4.4.4.m1.1.1.2.cmml" type="integer" xref="S4.T6.10.4.4.4.m1.1.1.2">8</cn><cn id="S4.T6.10.4.4.4.m1.1.1.3.cmml" type="integer" xref="S4.T6.10.4.4.4.m1.1.1.3">2048</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.10.4.4.4.m1.1c">8\times 2048</annotation><annotation encoding="application/x-llamapun" id="S4.T6.10.4.4.4.m1.1d">8 × 2048</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.11.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T6.11.5.5.1">rFID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.11.5.5.1.m1.1"><semantics id="S4.T6.11.5.5.1.m1.1a"><mo id="S4.T6.11.5.5.1.m1.1.1" stretchy="false" xref="S4.T6.11.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.11.5.5.1.m1.1b"><ci id="S4.T6.11.5.5.1.m1.1.1.cmml" xref="S4.T6.11.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.11.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.11.5.5.1.m1.1d">↓</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.5.5.2">1.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.5.5.3">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.5.5.4">0.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.11.5.5.5">0.33</td>
</tr>
<tr class="ltx_tr" id="S4.T6.15.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T6.15.9.9.5">Accuracy</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.12.6.6.1"><math alttext="41.0\%" class="ltx_Math" display="inline" id="S4.T6.12.6.6.1.m1.1"><semantics id="S4.T6.12.6.6.1.m1.1a"><mrow id="S4.T6.12.6.6.1.m1.1.1" xref="S4.T6.12.6.6.1.m1.1.1.cmml"><mn id="S4.T6.12.6.6.1.m1.1.1.2" xref="S4.T6.12.6.6.1.m1.1.1.2.cmml">41.0</mn><mo id="S4.T6.12.6.6.1.m1.1.1.1" xref="S4.T6.12.6.6.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.12.6.6.1.m1.1b"><apply id="S4.T6.12.6.6.1.m1.1.1.cmml" xref="S4.T6.12.6.6.1.m1.1.1"><csymbol cd="latexml" id="S4.T6.12.6.6.1.m1.1.1.1.cmml" xref="S4.T6.12.6.6.1.m1.1.1.1">percent</csymbol><cn id="S4.T6.12.6.6.1.m1.1.1.2.cmml" type="float" xref="S4.T6.12.6.6.1.m1.1.1.2">41.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.12.6.6.1.m1.1c">41.0\%</annotation><annotation encoding="application/x-llamapun" id="S4.T6.12.6.6.1.m1.1d">41.0 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.13.7.7.2"><math alttext="43.9\%" class="ltx_Math" display="inline" id="S4.T6.13.7.7.2.m1.1"><semantics id="S4.T6.13.7.7.2.m1.1a"><mrow id="S4.T6.13.7.7.2.m1.1.1" xref="S4.T6.13.7.7.2.m1.1.1.cmml"><mn id="S4.T6.13.7.7.2.m1.1.1.2" xref="S4.T6.13.7.7.2.m1.1.1.2.cmml">43.9</mn><mo id="S4.T6.13.7.7.2.m1.1.1.1" xref="S4.T6.13.7.7.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.13.7.7.2.m1.1b"><apply id="S4.T6.13.7.7.2.m1.1.1.cmml" xref="S4.T6.13.7.7.2.m1.1.1"><csymbol cd="latexml" id="S4.T6.13.7.7.2.m1.1.1.1.cmml" xref="S4.T6.13.7.7.2.m1.1.1.1">percent</csymbol><cn id="S4.T6.13.7.7.2.m1.1.1.2.cmml" type="float" xref="S4.T6.13.7.7.2.m1.1.1.2">43.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.13.7.7.2.m1.1c">43.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T6.13.7.7.2.m1.1d">43.9 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.14.8.8.3"><math alttext="44.7\%" class="ltx_Math" display="inline" id="S4.T6.14.8.8.3.m1.1"><semantics id="S4.T6.14.8.8.3.m1.1a"><mrow id="S4.T6.14.8.8.3.m1.1.1" xref="S4.T6.14.8.8.3.m1.1.1.cmml"><mn id="S4.T6.14.8.8.3.m1.1.1.2" xref="S4.T6.14.8.8.3.m1.1.1.2.cmml">44.7</mn><mo id="S4.T6.14.8.8.3.m1.1.1.1" xref="S4.T6.14.8.8.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.14.8.8.3.m1.1b"><apply id="S4.T6.14.8.8.3.m1.1.1.cmml" xref="S4.T6.14.8.8.3.m1.1.1"><csymbol cd="latexml" id="S4.T6.14.8.8.3.m1.1.1.1.cmml" xref="S4.T6.14.8.8.3.m1.1.1.1">percent</csymbol><cn id="S4.T6.14.8.8.3.m1.1.1.2.cmml" type="float" xref="S4.T6.14.8.8.3.m1.1.1.2">44.7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.14.8.8.3.m1.1c">44.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T6.14.8.8.3.m1.1d">44.7 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.15.9.9.4"><math alttext="46.1\%" class="ltx_Math" display="inline" id="S4.T6.15.9.9.4.m1.1"><semantics id="S4.T6.15.9.9.4.m1.1a"><mrow id="S4.T6.15.9.9.4.m1.1.1" xref="S4.T6.15.9.9.4.m1.1.1.cmml"><mn id="S4.T6.15.9.9.4.m1.1.1.2" xref="S4.T6.15.9.9.4.m1.1.1.2.cmml">46.1</mn><mo id="S4.T6.15.9.9.4.m1.1.1.1" xref="S4.T6.15.9.9.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.15.9.9.4.m1.1b"><apply id="S4.T6.15.9.9.4.m1.1.1.cmml" xref="S4.T6.15.9.9.4.m1.1.1"><csymbol cd="latexml" id="S4.T6.15.9.9.4.m1.1.1.1.cmml" xref="S4.T6.15.9.9.4.m1.1.1.1">percent</csymbol><cn id="S4.T6.15.9.9.4.m1.1.1.2.cmml" type="float" xref="S4.T6.15.9.9.4.m1.1.1.2">46.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.15.9.9.4.m1.1c">46.1\%</annotation><annotation encoding="application/x-llamapun" id="S4.T6.15.9.9.4.m1.1d">46.1 %</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of the number of sub-codebooks used in the UniTok model.  It shows how varying the number of sub-codebooks (A) while maintaining a constant total codebook size (A * B) affects the model's performance. The results demonstrate the trade-off between the number of sub-codebooks and model performance, specifically regarding reconstruction FID (rFID) and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation on the number of sub-codebooks. The size of a codebook is denoted as A×B𝐴𝐵A\times Bitalic_A × italic_B, where A𝐴Aitalic_A is the number of sub-codebook and B𝐵Bitalic_B is the size of sub-codebook.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.1.2.1.1" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.2.1.1.1" style="font-size:80%;">Tokenizer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.1.2.1.2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.2.1.2.1" style="font-size:80%;">VQAv2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.1.2.1.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.2.1.3.1" style="font-size:80%;">GQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.1.2.1.4" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.2.1.4.1" style="font-size:80%;">TextVQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.1.2.1.5" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.2.1.5.1" style="font-size:80%;">POPE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.1.2.1.6" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.2.1.6.1" style="font-size:80%;">MME</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.3.1.1.1" style="padding-top:0.4pt;padding-bottom:0.4pt;">
<span class="ltx_text" id="S4.T7.3.1.1.1.1" style="font-size:80%;">UniTok</span><sup class="ltx_sup" id="S4.T7.3.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T7.3.1.1.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.1.1.2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.1.2.1" style="font-size:80%;">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.1.1.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.1.3.1" style="font-size:80%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.1.1.4" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.1.4.1" style="font-size:80%;">49.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.1.1.5" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.1.5.1" style="font-size:80%;">81.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.1.1.6" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.1.6.1" style="font-size:80%;">1331</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.3.1.3.1" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.3.1.3.1.1" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.3.1.1.1" style="font-size:80%;background-color:#E6E6E6;">UniTok</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.1.3.1.2" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.3.1.2.1" style="font-size:80%;background-color:#E6E6E6;">72.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.1.3.1.3" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.3.1.3.1" style="font-size:80%;background-color:#E6E6E6;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.1.3.1.4" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.3.1.4.1" style="font-size:80%;background-color:#E6E6E6;">51.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.1.3.1.5" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.3.1.5.1" style="font-size:80%;background-color:#E6E6E6;">82.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.1.3.1.6" style="padding-top:0.4pt;padding-bottom:0.4pt;"><span class="ltx_text" id="S4.T7.3.1.3.1.6.1" style="font-size:80%;background-color:#E6E6E6;">1392</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of UniTok models initialized with different methods within the LLaVA framework.  Specifically, it contrasts the results of UniTok models initialized with pretrained CLIP weights against those initialized randomly.  The performance is evaluated across multiple Visual Question Answering (VQA) benchmarks (VQAv2, GQA, TextVQA, POPE, MME). The default settings for UniTok are highlighted for easier comparison.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of different initialization methods under the LLaVA framework. ††\dagger† indicates the model uses CLIP weights for initialization. We highlight the default setting of UniTok in gray.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T8.4.4.4.5" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.4.5.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.4.4.4.6" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.4.6.1" style="font-size:80%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T8.4.4.4.7" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.4.7.1" style="font-size:80%;">#Training Images</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.1" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.1.1.1.1.1" style="font-size:80%;">Attribute<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T8.1.1.1.1.1.m1.1"><semantics id="A2.T8.1.1.1.1.1.m1.1a"><mo id="A2.T8.1.1.1.1.1.m1.1.1" stretchy="false" xref="A2.T8.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T8.1.1.1.1.1.m1.1b"><ci id="A2.T8.1.1.1.1.1.m1.1.1.cmml" xref="A2.T8.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T8.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.2.2.2" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.2.2.2.2.1" style="font-size:80%;">Scene<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T8.2.2.2.2.1.m1.1"><semantics id="A2.T8.2.2.2.2.1.m1.1a"><mo id="A2.T8.2.2.2.2.1.m1.1.1" stretchy="false" xref="A2.T8.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T8.2.2.2.2.1.m1.1b"><ci id="A2.T8.2.2.2.2.1.m1.1.1.cmml" xref="A2.T8.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T8.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A2.T8.3.3.3.3" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.3.3.3.3.1" style="font-size:80%;">Relation</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T8.3.3.3.3.m1.1"><semantics id="A2.T8.3.3.3.3.m1.1a"><mo id="A2.T8.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="A2.T8.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T8.3.3.3.3.m1.1b"><ci id="A2.T8.3.3.3.3.m1.1.1.cmml" xref="A2.T8.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T8.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.4.4.4.4" rowspan="2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.4.4.1" style="font-size:80%;">Overall<math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T8.4.4.4.4.1.m1.1"><semantics id="A2.T8.4.4.4.4.1.m1.1a"><mo id="A2.T8.4.4.4.4.1.m1.1.1" stretchy="false" xref="A2.T8.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T8.4.4.4.4.1.m1.1b"><ci id="A2.T8.4.4.4.4.1.m1.1.1.cmml" xref="A2.T8.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T8.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T8.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.5.1.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.5.1.1.1" style="font-size:80%;">Spatial</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.5.1.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.5.1.2.1" style="font-size:80%;">Action</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.5.1.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.5.1.3.1" style="font-size:80%;">Part</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.4.4.6.2.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.6.2.1.1" style="font-size:80%;">SD v2.1 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.6.2.1.2.1" style="font-size:80%;">(</span>Rombach et al.<span class="ltx_text" id="A2.T8.4.4.6.2.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib36" title="">2022a</a><span class="ltx_text" id="A2.T8.4.4.6.2.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.2.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T8.4.4.6.2.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.3.1" style="font-size:80%;">2000M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.2.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.4.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.2.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.5.1" style="font-size:80%;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.2.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.6.1" style="font-size:80%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.2.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.7.1" style="font-size:80%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.2.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.8.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.6.2.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.6.2.9.1" style="font-size:80%;">0.78</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.7.3">
<td class="ltx_td ltx_align_left" id="A2.T8.4.4.7.3.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.7.3.1.1" style="font-size:80%;">SD-XL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.7.3.1.2.1" style="font-size:80%;">(</span>Podell et al.<span class="ltx_text" id="A2.T8.4.4.7.3.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib32" title="">2023</a><span class="ltx_text" id="A2.T8.4.4.7.3.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.4.4.7.3.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.3.1" style="font-size:80%;">2000M</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.4.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.5.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.6.1" style="font-size:80%;">0.82</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.7.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.8.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.7.3.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.7.3.9.1" style="font-size:80%;">0.83</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.8.4">
<td class="ltx_td ltx_align_left" id="A2.T8.4.4.8.4.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.8.4.1.1" style="font-size:80%;">Midjourney v6 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.8.4.1.2.1" style="font-size:80%;">(</span>Radhakrishnan<span class="ltx_text" id="A2.T8.4.4.8.4.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib35" title="">2023</a><span class="ltx_text" id="A2.T8.4.4.8.4.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.8.4.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.4.4.8.4.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.8.4.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.4.1" style="font-size:80%;">0.88</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.8.4.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.5.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.8.4.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.6.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.8.4.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.7.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.8.4.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.8.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.8.4.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.8.4.9.1" style="font-size:80%;">0.87</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.9.5">
<td class="ltx_td ltx_align_left" id="A2.T8.4.4.9.5.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.9.5.1.1" style="font-size:80%;">DALL-E 3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.9.5.1.2.1" style="font-size:80%;">(</span>Betker et al.<span class="ltx_text" id="A2.T8.4.4.9.5.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib2" title="">2023</a><span class="ltx_text" id="A2.T8.4.4.9.5.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.5.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.2.1" style="font-size:80%;">Diffusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.4.4.9.5.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.5.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.4.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.5.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.5.1" style="font-size:80%;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.5.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.6.1" style="font-size:80%;">0.92</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.5.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.7.1" style="font-size:80%;">0.89</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.5.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.8.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.9.5.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.9.5.9.1" style="font-size:80%;">0.90</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.10.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.4.4.10.6.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.10.6.1.1" style="font-size:80%;">Show-o </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.10.6.1.2.1" style="font-size:80%;">(</span>Xie et al.<span class="ltx_text" id="A2.T8.4.4.10.6.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib58" title="">2024</a><span class="ltx_text" id="A2.T8.4.4.10.6.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.2.1" style="font-size:80%;">Discrete Diff.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T8.4.4.10.6.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.3.1" style="font-size:80%;">36M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.4.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.5.1" style="font-size:80%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.6.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.7.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.8.1" style="font-size:80%;">0.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.4.4.10.6.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.10.6.9.1" style="font-size:80%;">0.70</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.11.7">
<td class="ltx_td ltx_align_left" id="A2.T8.4.4.11.7.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.11.7.1.1" style="font-size:80%;">LWM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.11.7.1.2.1" style="font-size:80%;">(</span>Liu et al.<span class="ltx_text" id="A2.T8.4.4.11.7.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib26" title="">2024b</a><span class="ltx_text" id="A2.T8.4.4.11.7.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.11.7.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.4.4.11.7.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.3.1" style="font-size:80%;">–</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.11.7.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.4.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.11.7.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.5.1" style="font-size:80%;">0.62</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.11.7.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.6.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.11.7.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.7.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.11.7.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.8.1" style="font-size:80%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.11.7.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.11.7.9.1" style="font-size:80%;">0.63</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.12.8">
<td class="ltx_td ltx_align_left" id="A2.T8.4.4.12.8.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.12.8.1.1" style="font-size:80%;">VILA-U </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.12.8.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="A2.T8.4.4.12.8.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib57" title="">2024d</a><span class="ltx_text" id="A2.T8.4.4.12.8.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.12.8.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.4.4.12.8.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.3.1" style="font-size:80%;">15M</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.12.8.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.4.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.12.8.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.5.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.12.8.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.6.1" style="font-size:80%;">0.77</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.12.8.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.7.1" style="font-size:80%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.12.8.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.8.1" style="font-size:80%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.12.8.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.12.8.9.1" style="font-size:80%;">0.76</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.13.9">
<td class="ltx_td ltx_align_left" id="A2.T8.4.4.13.9.1" style="padding:0.4pt 4.0pt;">
<span class="ltx_text" id="A2.T8.4.4.13.9.1.1" style="font-size:80%;">Liquid </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T8.4.4.13.9.1.2.1" style="font-size:80%;">(</span>Wu et al.<span class="ltx_text" id="A2.T8.4.4.13.9.1.3.2.1.1" style="font-size:80%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20321v1#bib.bib54" title="">2024b</a><span class="ltx_text" id="A2.T8.4.4.13.9.1.4.3" style="font-size:80%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.13.9.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.2.1" style="font-size:80%;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.4.4.13.9.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.3.1" style="font-size:80%;">30M</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.13.9.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.4.1" style="font-size:80%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.13.9.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.5.1" style="font-size:80%;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.13.9.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.6.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.13.9.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.7.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.13.9.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.8.1" style="font-size:80%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="A2.T8.4.4.13.9.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.13.9.9.1" style="font-size:80%;">0.83</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.14.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.4.4.14.10.1" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.1.1" style="font-size:80%;background-color:#E6E6E6;">UniTok</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.14.10.2" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.2.1" style="font-size:80%;background-color:#E6E6E6;">Autoregressive</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T8.4.4.14.10.3" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.3.1" style="font-size:80%;background-color:#E6E6E6;">30M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.14.10.4" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.4.1" style="font-size:80%;background-color:#E6E6E6;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.14.10.5" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.5.1" style="font-size:80%;background-color:#E6E6E6;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.14.10.6" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.6.1" style="font-size:80%;background-color:#E6E6E6;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.14.10.7" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.7.1" style="font-size:80%;background-color:#E6E6E6;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.14.10.8" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.8.1" style="font-size:80%;background-color:#E6E6E6;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.4.4.14.10.9" style="padding:0.4pt 4.0pt;"><span class="ltx_text" id="A2.T8.4.4.14.10.9.1" style="font-size:80%;background-color:#E6E6E6;">0.85</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various visual generation models, including UniTok, on the GenAI-Bench benchmark using basic prompts.  It assesses the models' abilities in understanding and generating images based on textual descriptions, specifically evaluating their performance across attributes, scenes, relations, spatial arrangement, action, parts, and an overall score. The metrics used are crucial for judging the quality and complexity of image generation, reflecting the models' grasp of fundamental visual concepts and relationships.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison with other visual generation methods on GenAI-Bench (basic prompts).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20321/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20321/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}