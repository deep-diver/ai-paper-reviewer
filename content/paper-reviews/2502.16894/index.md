---
title: "Make LoRA Great Again: Boosting LoRA with Adaptive Singular Values and Mixture-of-Experts Optimization Alignment"
summary: "GOAT: Adaptively boosts LoRA with SVD & MoE alignment, closing the gap with Full FT."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.16894 {{< /keyword >}}
{{< keyword icon="writer" >}} Chenghao Fan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.16894" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.16894" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.16894/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are powerful but fine-tuning them is computationally expensive. Low-Rank Adaptation (LoRA) offers a parameter-efficient alternative but often falls short of full fine-tuning performance. Existing methods use static SVD subsets for initialization, leading to suboptimal use of pre-trained knowledge. Incorporating Mixture-of-Experts (MoE) architectures improves LoRA, weight misalignment and gradient dynamics pose challenges, hindering SVD prior use. Addressing this is crucial for better efficiency and performance. 



This paper introduces Great LoRA Mixture-of-Expert (GOAT), a framework that adaptively integrates relevant priors using an SVD-structured MoE, aligning optimization with full fine-tuned MoE via a theoretical scaling factor. GOAT initializes LoRA MOE experts with distinct SVD knowledge segments. The method aligns weight & gradient, ensuring the equivalent weight equals to the pre-trained weight. Experiments across 25 datasets show state-of-the-art performance, closing the gap with Full FT without modifying architecture or training algorithms.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Adaptive SVD-structured MoE captures crucial pre-trained knowledge segments for different inputs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Theoretical scaling aligns LoRA MoE optimization with full fine-tuning, improving convergence and performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} GOAT achieves state-of-the-art results across diverse tasks, bridging the gap between LoRA and full fine-tuning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is **crucial for efficient LLM fine-tuning**. GOAT innovates prior integration and optimization, **reducing the performance gap with full fine-tuning**. Its broad evaluation across tasks highlights its practical relevance, opening avenues for resource-efficient AI development and inspiring future research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.16894/x1.png)

> 🔼 This figure visualizes the impact of different SVD segment initializations on LoRA's performance, specifically focusing on the utilization of various singular value segments (Ui, Σi, ViT) in initializing the low-rank adapters (B and A).  The experiment is conducted for two different ranks (32 and 128) to assess the effect across different dimensionality of the adapter matrices.  Performance is evaluated across multiple datasets and normalized by min-max scaling for easier comparison.  The x-axis shows the different SVD segments (index i), indicating which part of the pre-trained weight matrix SVD is used for initialization, and the y-axis represents the normalized performance. This helps illustrate the optimal SVD segment to utilize for initialization, demonstrating that using only the principal or minor singular values is suboptimal and that using the middle segments is more effective.
> <details>
> <summary>read the caption</summary>
> Figure 1: The effect of initializations from different SVD segments (ui,σi,vi⊤)subscript𝑢𝑖subscript𝜎𝑖superscriptsubscript𝑣𝑖top(u_{i},\sigma_{i},v_{i}^{\top})( italic_u start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT , italic_σ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT , italic_v start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ⊤ end_POSTSUPERSCRIPT ) for rank 32 and 128. The performance normalized by min-max scaling.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.1.1" style="font-size:70%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.2.1" style="font-size:70%;"># Params (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.3.1" style="font-size:70%;">Cars</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.4.1" style="font-size:70%;">DTD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.5.1" style="font-size:70%;">EuroSAT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.6.1" style="font-size:70%;">GTSRB</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.7.1" style="font-size:70%;">RESISC45</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.8.1" style="font-size:70%;">SUN397</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.9.1" style="font-size:70%;">SVHN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.10.1" style="font-size:70%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.3.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.2.2.1.1" style="font-size:70%;">Full FT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.2"><span class="ltx_text" id="S3.T1.3.1.2.2.2.1" style="font-size:70%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.3"><span class="ltx_text" id="S3.T1.3.1.2.2.3.1" style="font-size:70%;">60.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.4"><span class="ltx_text" id="S3.T1.3.1.2.2.4.1" style="font-size:70%;">73.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.5"><span class="ltx_text" id="S3.T1.3.1.2.2.5.1" style="font-size:70%;">98.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.6"><span class="ltx_text" id="S3.T1.3.1.2.2.6.1" style="font-size:70%;">98.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.7"><span class="ltx_text" id="S3.T1.3.1.2.2.7.1" style="font-size:70%;">93.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.8"><span class="ltx_text" id="S3.T1.3.1.2.2.8.1" style="font-size:70%;">53.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.9"><span class="ltx_text" id="S3.T1.3.1.2.2.9.1" style="font-size:70%;">96.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.2.2.10"><span class="ltx_text" id="S3.T1.3.1.2.2.10.1" style="font-size:70%;">82.25</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.3.3.1.1" style="font-size:70%;">Full FT MoE</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.2"><span class="ltx_text" id="S3.T1.3.1.3.3.2.1" style="font-size:70%;">770</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.3"><span class="ltx_text" id="S3.T1.3.1.3.3.3.1" style="font-size:70%;">66.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.4"><span class="ltx_text" id="S3.T1.3.1.3.3.4.1" style="font-size:70%;">75.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.5"><span class="ltx_text" id="S3.T1.3.1.3.3.5.1" style="font-size:70%;">98.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.6"><span class="ltx_text" id="S3.T1.3.1.3.3.6.1" style="font-size:70%;">98.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.7"><span class="ltx_text" id="S3.T1.3.1.3.3.7.1" style="font-size:70%;">94.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.8"><span class="ltx_text" id="S3.T1.3.1.3.3.8.1" style="font-size:70%;">60.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.9"><span class="ltx_text" id="S3.T1.3.1.3.3.9.1" style="font-size:70%;">97.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.3.3.10"><span class="ltx_text" id="S3.T1.3.1.3.3.10.1" style="font-size:70%;">84.40</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T1.3.1.4.4.1"><span class="ltx_text ltx_font_italic" id="S3.T1.3.1.4.4.1.1" style="font-size:70%;">Single LoRA Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.3.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.5.5.1.1" style="font-size:70%;">LoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.2"><span class="ltx_text" id="S3.T1.3.1.5.5.2.1" style="font-size:70%;">1.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.3"><span class="ltx_text" id="S3.T1.3.1.5.5.3.1" style="font-size:70%;">41.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.4"><span class="ltx_text" id="S3.T1.3.1.5.5.4.1" style="font-size:70%;">70.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.5"><span class="ltx_text" id="S3.T1.3.1.5.5.5.1" style="font-size:70%;">98.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.6"><span class="ltx_text" id="S3.T1.3.1.5.5.6.1" style="font-size:70%;">96.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.7"><span class="ltx_text" id="S3.T1.3.1.5.5.7.1" style="font-size:70%;">90.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.8"><span class="ltx_text" id="S3.T1.3.1.5.5.8.1" style="font-size:70%;">47.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.9"><span class="ltx_text" id="S3.T1.3.1.5.5.9.1" style="font-size:70%;">95.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.5.5.10"><span class="ltx_text" id="S3.T1.3.1.5.5.10.1" style="font-size:70%;">77.09</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.6.6" style="background-color:#FDF5EB;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.6.6.1.1" style="font-size:70%;background-color:#FDF5EB;">LoRA (rank16)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.2"><span class="ltx_text" id="S3.T1.3.1.6.6.2.1" style="font-size:70%;background-color:#FDF5EB;">2.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.3"><span class="ltx_text" id="S3.T1.3.1.6.6.3.1" style="font-size:70%;background-color:#FDF5EB;">46.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.4"><span class="ltx_text" id="S3.T1.3.1.6.6.4.1" style="font-size:70%;background-color:#FDF5EB;">72.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.5"><span class="ltx_text" id="S3.T1.3.1.6.6.5.1" style="font-size:70%;background-color:#FDF5EB;">98.74</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.6"><span class="ltx_text" id="S3.T1.3.1.6.6.6.1" style="font-size:70%;background-color:#FDF5EB;">98.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.7"><span class="ltx_text" id="S3.T1.3.1.6.6.7.1" style="font-size:70%;background-color:#FDF5EB;">92.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.8"><span class="ltx_text" id="S3.T1.3.1.6.6.8.1" style="font-size:70%;background-color:#FDF5EB;">51.63</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.9"><span class="ltx_text" id="S3.T1.3.1.6.6.9.1" style="font-size:70%;background-color:#FDF5EB;">96.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.6.6.10"><span class="ltx_text" id="S3.T1.3.1.6.6.10.1" style="font-size:70%;background-color:#FDF5EB;">79.30</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.7.7" style="background-color:#FDF5EB;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.7.7.1.1" style="font-size:70%;background-color:#FDF5EB;">LoRA (rank32)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.2"><span class="ltx_text" id="S3.T1.3.1.7.7.2.1" style="font-size:70%;background-color:#FDF5EB;">5.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.3"><span class="ltx_text" id="S3.T1.3.1.7.7.3.1" style="font-size:70%;background-color:#FDF5EB;">50.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.4"><span class="ltx_text" id="S3.T1.3.1.7.7.4.1" style="font-size:70%;background-color:#FDF5EB;">72.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.5"><span class="ltx_text" id="S3.T1.3.1.7.7.5.1" style="font-size:70%;background-color:#FDF5EB;">98.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.6"><span class="ltx_text" id="S3.T1.3.1.7.7.6.1" style="font-size:70%;background-color:#FDF5EB;">98.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.7"><span class="ltx_text" id="S3.T1.3.1.7.7.7.1" style="font-size:70%;background-color:#FDF5EB;">92.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.8"><span class="ltx_text" id="S3.T1.3.1.7.7.8.1" style="font-size:70%;background-color:#FDF5EB;">53.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.9"><span class="ltx_text" id="S3.T1.3.1.7.7.9.1" style="font-size:70%;background-color:#FDF5EB;">96.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.7.7.10"><span class="ltx_text" id="S3.T1.3.1.7.7.10.1" style="font-size:70%;background-color:#FDF5EB;">80.44</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.8.8.1.1" style="font-size:70%;">DoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.2"><span class="ltx_text" id="S3.T1.3.1.8.8.2.1" style="font-size:70%;">1.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.3"><span class="ltx_text" id="S3.T1.3.1.8.8.3.1" style="font-size:70%;">40.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.4"><span class="ltx_text" id="S3.T1.3.1.8.8.4.1" style="font-size:70%;">71.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.8.8.5.1" style="font-size:70%;">98.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.6"><span class="ltx_text" id="S3.T1.3.1.8.8.6.1" style="font-size:70%;">97.71</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.7"><span class="ltx_text" id="S3.T1.3.1.8.8.7.1" style="font-size:70%;">90.19</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.8"><span class="ltx_text" id="S3.T1.3.1.8.8.8.1" style="font-size:70%;">47.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.9"><span class="ltx_text" id="S3.T1.3.1.8.8.9.1" style="font-size:70%;">95.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.8.8.10"><span class="ltx_text" id="S3.T1.3.1.8.8.10.1" style="font-size:70%;">77.49</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.9.9.1.1" style="font-size:70%;">PiSSA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.2"><span class="ltx_text" id="S3.T1.3.1.9.9.2.1" style="font-size:70%;">1.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.3"><span class="ltx_text" id="S3.T1.3.1.9.9.3.1" style="font-size:70%;">40.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.4"><span class="ltx_text" id="S3.T1.3.1.9.9.4.1" style="font-size:70%;">69.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.5"><span class="ltx_text" id="S3.T1.3.1.9.9.5.1" style="font-size:70%;">98.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.6"><span class="ltx_text" id="S3.T1.3.1.9.9.6.1" style="font-size:70%;">95.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.7"><span class="ltx_text" id="S3.T1.3.1.9.9.7.1" style="font-size:70%;">90.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.8"><span class="ltx_text" id="S3.T1.3.1.9.9.8.1" style="font-size:70%;">47.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.9"><span class="ltx_text" id="S3.T1.3.1.9.9.9.1" style="font-size:70%;">95.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.9.9.10"><span class="ltx_text" id="S3.T1.3.1.9.9.10.1" style="font-size:70%;">76.85</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.10.10.1.1" style="font-size:70%;">MiLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.2"><span class="ltx_text" id="S3.T1.3.1.10.10.2.1" style="font-size:70%;">1.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.3"><span class="ltx_text" id="S3.T1.3.1.10.10.3.1" style="font-size:70%;">39.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.4"><span class="ltx_text" id="S3.T1.3.1.10.10.4.1" style="font-size:70%;">70.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.5"><span class="ltx_text" id="S3.T1.3.1.10.10.5.1" style="font-size:70%;">98.19</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.6"><span class="ltx_text" id="S3.T1.3.1.10.10.6.1" style="font-size:70%;">97.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.7"><span class="ltx_text" id="S3.T1.3.1.10.10.7.1" style="font-size:70%;">89.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.8"><span class="ltx_text" id="S3.T1.3.1.10.10.8.1" style="font-size:70%;">45.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.9"><span class="ltx_text" id="S3.T1.3.1.10.10.9.1" style="font-size:70%;">95.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.10.10.10"><span class="ltx_text" id="S3.T1.3.1.10.10.10.1" style="font-size:70%;">76.68</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T1.3.1.11.11.1"><span class="ltx_text ltx_font_italic" id="S3.T1.3.1.11.11.1.1" style="font-size:70%;">LoRA MoE Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.3.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.12.12.1.1" style="font-size:70%;">MoLoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.2"><span class="ltx_text" id="S3.T1.3.1.12.12.2.1" style="font-size:70%;">2.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.3"><span class="ltx_text" id="S3.T1.3.1.12.12.3.1" style="font-size:70%;">50.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.4"><span class="ltx_text" id="S3.T1.3.1.12.12.4.1" style="font-size:70%;">73.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.5"><span class="ltx_text" id="S3.T1.3.1.12.12.5.1" style="font-size:70%;">98.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.6"><span class="ltx_text" id="S3.T1.3.1.12.12.6.1" style="font-size:70%;">97.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.7"><span class="ltx_text" id="S3.T1.3.1.12.12.7.1" style="font-size:70%;">92.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.8"><span class="ltx_text" id="S3.T1.3.1.12.12.8.1" style="font-size:70%;">52.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.9"><span class="ltx_text" id="S3.T1.3.1.12.12.9.1" style="font-size:70%;">96.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.1.12.12.10"><span class="ltx_text" id="S3.T1.3.1.12.12.10.1" style="font-size:70%;">80.26</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.13.13.1.1" style="font-size:70%;">AdaMoLE</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.2"><span class="ltx_text" id="S3.T1.3.1.13.13.2.1" style="font-size:70%;">2.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.3"><span class="ltx_text" id="S3.T1.3.1.13.13.3.1" style="font-size:70%;">49.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.4"><span class="ltx_text" id="S3.T1.3.1.13.13.4.1" style="font-size:70%;">71.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.5"><span class="ltx_text" id="S3.T1.3.1.13.13.5.1" style="font-size:70%;">98.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.6"><span class="ltx_text" id="S3.T1.3.1.13.13.6.1" style="font-size:70%;">97.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.7"><span class="ltx_text" id="S3.T1.3.1.13.13.7.1" style="font-size:70%;">91.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.8"><span class="ltx_text" id="S3.T1.3.1.13.13.8.1" style="font-size:70%;">52.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.9"><span class="ltx_text" id="S3.T1.3.1.13.13.9.1" style="font-size:70%;">95.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.13.13.10"><span class="ltx_text" id="S3.T1.3.1.13.13.10.1" style="font-size:70%;">79.63</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.3.1.14.14.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.14.14.1.1" style="font-size:70%;">HydraLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.2"><span class="ltx_text" id="S3.T1.3.1.14.14.2.1" style="font-size:70%;">1.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.3"><span class="ltx_text" id="S3.T1.3.1.14.14.3.1" style="font-size:70%;">48.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.4"><span class="ltx_text" id="S3.T1.3.1.14.14.4.1" style="font-size:70%;">72.18</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.5"><span class="ltx_text" id="S3.T1.3.1.14.14.5.1" style="font-size:70%;">98.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.6"><span class="ltx_text" id="S3.T1.3.1.14.14.6.1" style="font-size:70%;">97.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.7"><span class="ltx_text" id="S3.T1.3.1.14.14.7.1" style="font-size:70%;">92.93</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.8"><span class="ltx_text" id="S3.T1.3.1.14.14.8.1" style="font-size:70%;">51.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.9"><span class="ltx_text" id="S3.T1.3.1.14.14.9.1" style="font-size:70%;">96.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.1.14.14.10"><span class="ltx_text" id="S3.T1.3.1.14.14.10.1" style="font-size:70%;">79.58</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.1.15.15" style="background-color:#E6F3F3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.3.1.15.15.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.1.1" style="font-size:70%;background-color:#E6F3F3;">GOAT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.2"><span class="ltx_text" id="S3.T1.3.1.15.15.2.1" style="font-size:70%;background-color:#E6F3F3;">2.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.3.1" style="font-size:70%;background-color:#E6F3F3;">53.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.4.1" style="font-size:70%;background-color:#E6F3F3;">75.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.5"><span class="ltx_text" id="S3.T1.3.1.15.15.5.1" style="font-size:70%;background-color:#E6F3F3;">98.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.6.1" style="font-size:70%;background-color:#E6F3F3;">98.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.7.1" style="font-size:70%;background-color:#E6F3F3;">93.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.8.1" style="font-size:70%;background-color:#E6F3F3;">54.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.9.1" style="font-size:70%;background-color:#E6F3F3;">96.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.3.1.15.15.10"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.15.15.10.1" style="font-size:70%;background-color:#E6F3F3;">81.49</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an image classification experiment using CLIP ViT-B/32.  Several different parameter-efficient fine-tuning (PEFT) methods were compared against full fine-tuning (FT).  All methods used a total rank of 8.  The performance of each method is reported across seven different image classification datasets (StanfordCars, DTD, EuroSAT, GTSRB, RESISC45, SUN397, and SVHN), enabling a comprehensive comparison of their effectiveness. The highest accuracy for each dataset is bolded.
> <details>
> <summary>read the caption</summary>
> Table 1: We evaluate CLIP ViT-B/32 with full fine-tuning and LoRA variants with total rank 8 across StanfordCars, DTD, EuroSAT, GTSRB, RESISC45, SUN397, and SVHN datasets. Bold indicates the highest results.
> </details>





### In-depth insights


#### Adaptive SVD MoE
**Adaptive SVD MoE** is a framework integrating SVD into a Mixture of Experts (MoE), aiming to enhance model adaptability and performance. The key idea revolves around **adaptively selecting different segments of pre-trained knowledge** encoded within the SVD structure of weight matrices, based on the input. Instead of relying on static, predefined priors, the model dynamically activates experts associated with specific singular value segments, allowing for a more nuanced capture of relevant information. This approach addresses limitations of traditional methods that use either the principal or minor components, enabling the model to automatically leverage task-specific knowledge embedded in various segments. It enhances the original framework by addressing two questions: (1) Can it adaptively integrate relevant priors of pre-trained knowledge based on input? (2) How do we mitigate the optimization gap in LoRA MoE initialized with prior information? This adaptive selection leverages distinct singular value segments, enabling more accurate capture of pre-trained knowledge for optimal adaptation.

#### Prior Alignment
**Prior alignment** is a crucial concept in transfer learning, particularly when fine-tuning large pre-trained models. The core idea involves carefully initializing or adapting the parameters of a smaller, task-specific model (e.g., a LoRA adapter) to reflect the knowledge already embedded in the larger, pre-trained model. **Effective prior alignment facilitates faster convergence, improved generalization**, and reduced risk of catastrophic forgetting.  Methods for prior alignment may include techniques such as **singular value decomposition (SVD)** to capture important weight structures, or **careful scaling factors** to match the gradient magnitudes of the pre-trained model.  The choice of alignment strategy often depends on the architecture and training dynamics of the models involved.

#### Scalable Scaling
**Scalable Scaling** presents an intriguing approach to enhance model performance without significant architectural changes. By focusing on scaling factors, the method likely aims to optimize gradient flow and convergence during training, particularly in parameter-efficient fine-tuning (PEFT) scenarios. The term 'scalable' suggests the technique's applicability across diverse model sizes and datasets, avoiding overfitting or underfitting issues common with fixed scaling strategies. The benefits may include faster convergence, improved generalization, and reduced computational overhead. The method possibly leverages theoretical insights to derive optimal scaling parameters, adapting to task-specific characteristics or model complexities. Furthermore, the scalable approach could explore dynamic scaling strategies, adjusting weights during training to maintain stable gradient norms and prevent imbalances. By identifying and addressing the scaling issues, the technique offers a practical means of improving efficiency and effectiveness across a wide range of tasks.

#### GOAT: Improves FT
The essence of GOAT (Great LoRA Mixture-of-Experts) achieving improvements over Full Fine-Tuning (FT) lies in its architectural innovations and optimization strategies. GOAT smartly initializes its LoRA MoE experts with adaptive SVD-structured priors, allowing it to capture task-specific knowledge from pre-trained models more effectively than methods using static or non-informative priors. The theoretical scaling applied to align optimization with full fine-tuned MoE is also a key factor. By addressing weight misalignment and refining gradient dynamics. The results show state-of-the-art performance across diverse datasets, GOAT closes the performance gap with Full FT. This shows the effectiveness of adaptive prior integration and optimization alignment. Further research can explore dynamic expert allocation and the impact of different SVD segment selection strategies to potentially unlock even greater performance gains for parameter-efficient fine-tuning.

#### Weight Alignment
**Weight alignment is crucial for effective model training, especially in scenarios like LoRA MoE where pre-trained knowledge is integrated.** The challenge lies in ensuring that the newly introduced low-rank weights (B and A) harmonize with the existing pre-trained weights (W0), preventing misalignment that could hinder optimization and performance. **Misalignment can lead to inconsistent router behavior, inefficient optimization of expert weights, and ultimately, a performance gap compared to full fine-tuning.** Strategies to mitigate this include carefully initializing the low-rank adapters, scaling their contribution appropriately, and aligning the gradients during optimization to ensure that the updates are congruent with the overall objective. **The goal is to make the low-rank experts a suitable substitute to it's full rank component for optimization**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.16894/x2.png)

> 🔼 This figure visualizes the impact of scaling factor (s) and rank (r) on the performance of SVD-based Low-Rank Adaptation (LoRA).  The left panel shows training loss curves, illustrating how different scaling factors affect convergence speed.  The right panel displays the gradient norm, demonstrating the relationship between scaling, rank, and gradient magnitude.  The figure highlights the trade-off between these factors to improve efficiency and performance of the method. For instance, with low rank (e.g., r=1), the gradient norm is small, while applying proper scaling (s=16) increases it, reducing the performance gap.
> <details>
> <summary>read the caption</summary>
> Figure 2: SVD initialization vs. scaling s𝑠sitalic_s and rank r𝑟ritalic_r
> </details>



![](https://arxiv.org/html/2502.16894/x3.png)

> 🔼 Figure 3 illustrates the core idea of the GOAT method, comparing it to standard LoRA and full MoE fine-tuning.  Single Low-Rank Adaptation shows the basic LoRA method where a weight matrix is reparameterized using low-rank matrices B and A.  MoE Fine-tuning depicts a full MoE architecture with multiple experts selected by a router. Subfigure (I) details the GOAT approach: replacing the single (B, A) pair with multiple (Bi, Ai) pairs.  These pairs are initialized using different segments of the SVD decomposition of the pre-trained weights (W0) and selected adaptively by the router. Subfigure (II) explains how GOAT aligns optimization with an SVD-structured MoE by individually aligning each expert's weight and scaling gradients to match full MoE fine-tuning.  Wres ensures that the equivalent weight matches the pre-trained weight before optimization begins.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Illustration of Our Method. Single Low-Rank Adaptation: LoRA reduces trainable parameters by reparameterizing W𝑊Witalic_W as W=W0+s⁢B⁢A𝑊subscript𝑊0𝑠𝐵𝐴W=W_{0}+sBAitalic_W = italic_W start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT + italic_s italic_B italic_A, with B𝐵Bitalic_B and A𝐴Aitalic_A as low-rank matrices. MoE Fine-tuning: Full MoE fine-tuning, where experts W1superscript𝑊1W^{1}italic_W start_POSTSUPERSCRIPT 1 end_POSTSUPERSCRIPT and WEsuperscript𝑊𝐸W^{E}italic_W start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT are selected by the router in this moment. Subfigure (I): Our method replaces the single pair B,A𝐵𝐴B,Aitalic_B , italic_A with multiple pairs {Bi,Ai}i=1Esuperscriptsubscriptsuperscript𝐵𝑖superscript𝐴𝑖𝑖1𝐸\{B^{i},A^{i}\}_{i=1}^{E}{ italic_B start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT , italic_A start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_E end_POSTSUPERSCRIPT, initialized from different segments of the SVD of W0subscript𝑊0W_{0}italic_W start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT and adaptively selected by the router. Subfigure (II): We align optimization with SVD-structured MoE by separately aligning each expert. Wressubscript𝑊resW_{\text{res}}italic_W start_POSTSUBSCRIPT res end_POSTSUBSCRIPT ensures the equivalent weight equals W0subscript𝑊0W_{0}italic_W start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT before optimization, and we scale each expert’s equivalent gradient to closely approximate full MoE fine-tuning.
> </details>



![](https://arxiv.org/html/2502.16894/x4.png)

> 🔼 This figure displays the training loss curves for various parameter-efficient fine-tuning (PEFT) methods and the full fine-tuning Mixture-of-Experts (MoE) model on the Cars dataset.  The x-axis represents the training steps, and the y-axis shows the training loss.  The curves demonstrate the convergence speed and final loss achieved by each method.  The MoE baselines have their balance loss excluded to allow for a more direct comparison to the single LoRA methods. This visualization allows for a comparison of the training efficiency and effectiveness of different PEFT approaches relative to the full fine-tuning model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training loss curves of Different LoRA methods and Full Fine-tuning MoE on Cars. The balance loss is excluded in the MoE baselines for a fair comparison with single LoRA baselines.
> </details>



![](https://arxiv.org/html/2502.16894/x5.png)

> 🔼 This figure shows how the performance of different parameter-efficient fine-tuning (PEFT) methods changes as the rank of the low-rank matrices used in the methods increases.  The x-axis represents the rank, ranging from 8 to 128. The y-axis represents the performance, likely measured as accuracy or a similar metric. The figure demonstrates the scalability of the GOAT method, showing how its performance narrows the gap with the full fine-tuning (FT) method as the rank increases.  Other methods, such as MoLoRA and HydraLoRA, are also included for comparison.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance of different methods across ranks.
> </details>



![](https://arxiv.org/html/2502.16894/x6.png)

> 🔼 This figure demonstrates the impact of the number of experts and the activation ratio on model performance, while keeping the total rank fixed at 32.  The x-axis represents different configurations, such as activating 2 out of 8 experts ('2 in 8'), 4 out of 8, etc., demonstrating how adjusting the number of active experts and their proportion affects overall performance.  The y-axis represents the model's performance, likely measured by accuracy or a similar metric. The graph shows the performance of different methods (likely GOAT and baselines) under various expert configurations, allowing for a comparison of their relative performance under different sparsity levels. The results help to determine an optimal balance between the number of experts and the activation ratio for improved performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance vs. number of experts and activation ratio (total rank=32). “2 in 8” means activating 2 out of 8 experts.
> </details>



![](https://arxiv.org/html/2502.16894/x7.png)

> 🔼 This figure visualizes the distribution of tokens processed by each of the eight experts in a Mixture-of-Experts (MoE) model across various downstream tasks.  It shows the proportion of tokens handled by each expert for each task. The goal is to illustrate whether the expert load is balanced across the different tasks or if there's any skewing towards specific experts for particular task types (e.g., image classification vs. natural language generation).  Uniform distribution across experts suggests effective utilization of the MoE architecture and appropriate allocation of tasks among experts.
> <details>
> <summary>read the caption</summary>
> Figure 7: Expert Load Distribution across different tasks. We illustrate the fraction of tokens assigned to each expert {ei}i=18superscriptsubscriptsubscript𝑒𝑖𝑖18\{e_{i}\}_{i=1}^{8}{ italic_e start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT 8 end_POSTSUPERSCRIPT
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1" style="font-size:70%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1" style="font-size:70%;">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1" style="font-size:70%;">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1" style="font-size:70%;">HumanEval</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.1.1" style="font-size:70%;">Full FT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.2"><span class="ltx_text" id="S3.T2.1.1.2.2.2.1" style="font-size:70%;">5.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.3"><span class="ltx_text" id="S3.T2.1.1.2.2.3.1" style="font-size:70%;">59.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.4"><span class="ltx_text" id="S3.T2.1.1.2.2.4.1" style="font-size:70%;">35.31</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S3.T2.1.1.3.3.1"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.3.3.1.1" style="font-size:70%;">Single LoRA Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.4.4.1.1" style="font-size:70%;">LoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.2"><span class="ltx_text" id="S3.T2.1.1.4.4.2.1" style="font-size:70%;">5.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.3"><span class="ltx_text" id="S3.T2.1.1.4.4.3.1" style="font-size:70%;">52.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.4"><span class="ltx_text" id="S3.T2.1.1.4.4.4.1" style="font-size:70%;">21.34</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.5.1.1" style="font-size:70%;">DoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.2"><span class="ltx_text" id="S3.T2.1.1.5.5.2.1" style="font-size:70%;">5.97</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.3"><span class="ltx_text" id="S3.T2.1.1.5.5.3.1" style="font-size:70%;">54.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.4"><span class="ltx_text" id="S3.T2.1.1.5.5.4.1" style="font-size:70%;">19.75</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.6.6.1.1" style="font-size:70%;">PiSSA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.2"><span class="ltx_text" id="S3.T2.1.1.6.6.2.1" style="font-size:70%;">5.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.3"><span class="ltx_text" id="S3.T2.1.1.6.6.3.1" style="font-size:70%;">55.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.4"><span class="ltx_text" id="S3.T2.1.1.6.6.4.1" style="font-size:70%;">19.52</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.7.7.1.1" style="font-size:70%;">MiLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.2"><span class="ltx_text" id="S3.T2.1.1.7.7.2.1" style="font-size:70%;">5.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.3"><span class="ltx_text" id="S3.T2.1.1.7.7.3.1" style="font-size:70%;">54.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.4"><span class="ltx_text" id="S3.T2.1.1.7.7.4.1" style="font-size:70%;">19.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S3.T2.1.1.8.8.1"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.8.8.1.1" style="font-size:70%;">LoRA MoE Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.9.9.1.1" style="font-size:70%;">MoLoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.9.2"><span class="ltx_text" id="S3.T2.1.1.9.9.2.1" style="font-size:70%;">5.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.9.3"><span class="ltx_text" id="S3.T2.1.1.9.9.3.1" style="font-size:70%;">56.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.9.9.4"><span class="ltx_text" id="S3.T2.1.1.9.9.4.1" style="font-size:70%;">24.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.10.10.1.1" style="font-size:70%;">HydraLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.2"><span class="ltx_text" id="S3.T2.1.1.10.10.2.1" style="font-size:70%;">5.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.3"><span class="ltx_text" id="S3.T2.1.1.10.10.3.1" style="font-size:70%;">57.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.4"><span class="ltx_text" id="S3.T2.1.1.10.10.4.1" style="font-size:70%;">24.21</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11.11" style="background-color:#E6F3F3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.11.11.1.1" style="font-size:70%;background-color:#E6F3F3;">GOAT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.11.11.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.11.11.2.1" style="font-size:70%;background-color:#E6F3F3;">6.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.11.11.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.11.11.3.1" style="font-size:70%;background-color:#E6F3F3;">60.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.11.11.4.1" style="font-size:70%;background-color:#E6F3F3;">25.61</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the Llama-2-7B language model on three distinct tasks: MT-Bench (a multi-turn dialogue benchmark), GSM8K (a grade-school math problem solving benchmark), and HumanEval (a code generation benchmark).  The table compares the performance of the Llama-2-7B model on these tasks, likely showing various metrics such as accuracy, precision, or F1-score.  The purpose is to demonstrate the model's capabilities in different areas of natural language processing.
> <details>
> <summary>read the caption</summary>
> Table 2: We evaluate Llama-2-7B on MT-Bench, GSM8K, and HumanEval for dialogue, math, and coding.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.10.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.10.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T3.10.8.9.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.1.1" style="font-size:70%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.2.1" style="font-size:70%;"># Params(%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.3.1" style="font-size:70%;">BoolQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.4.1" style="font-size:70%;">PIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.5.1" style="font-size:70%;">SIQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.6"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.6.1" style="font-size:70%;">HellaSwag</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.7"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.7.1" style="font-size:70%;">WinoGrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.8"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.8.1" style="font-size:70%;">ARC-e</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.9"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.9.1" style="font-size:70%;">ARC-c</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.10"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.10.1" style="font-size:70%;">OBQA</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.10.8.9.1.11"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.9.1.11.1" style="font-size:70%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.1.1" style="font-size:70%;">ChatGPT <math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.3.1.1.1.1.m1.1"><semantics id="S3.T3.3.1.1.1.1.m1.1a"><mo id="S3.T3.3.1.1.1.1.m1.1.1" xref="S3.T3.3.1.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.1.1.1.1.m1.1b"><ci id="S3.T3.3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.3.1.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.1.1.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.1.1.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.2"><span class="ltx_text" id="S3.T3.3.1.1.2.1" style="font-size:70%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.3"><span class="ltx_text" id="S3.T3.3.1.1.3.1" style="font-size:70%;">73.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.4"><span class="ltx_text" id="S3.T3.3.1.1.4.1" style="font-size:70%;">85.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.5"><span class="ltx_text" id="S3.T3.3.1.1.5.1" style="font-size:70%;">68.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.6"><span class="ltx_text" id="S3.T3.3.1.1.6.1" style="font-size:70%;">78.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.7"><span class="ltx_text" id="S3.T3.3.1.1.7.1" style="font-size:70%;">66.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.8"><span class="ltx_text" id="S3.T3.3.1.1.8.1" style="font-size:70%;">89.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.9"><span class="ltx_text" id="S3.T3.3.1.1.9.1" style="font-size:70%;">79.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.1.1.10"><span class="ltx_text" id="S3.T3.3.1.1.10.1" style="font-size:70%;">74.80</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.3.1.1.11"><span class="ltx_text" id="S3.T3.3.1.1.11.1" style="font-size:70%;">77.01</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.10.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="11" id="S3.T3.10.8.10.2.1"><span class="ltx_text ltx_font_italic" id="S3.T3.10.8.10.2.1.1" style="font-size:70%;">Single LoRA Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.4.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.4.2.2.1.1" style="font-size:70%;">LoRA<math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.4.2.2.1.1.m1.1"><semantics id="S3.T3.4.2.2.1.1.m1.1a"><mo id="S3.T3.4.2.2.1.1.m1.1.1" xref="S3.T3.4.2.2.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.2.2.1.1.m1.1b"><ci id="S3.T3.4.2.2.1.1.m1.1.1.cmml" xref="S3.T3.4.2.2.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.2.2.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.2.2.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.2"><span class="ltx_text" id="S3.T3.4.2.2.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.3"><span class="ltx_text" id="S3.T3.4.2.2.3.1" style="font-size:70%;">69.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.4"><span class="ltx_text" id="S3.T3.4.2.2.4.1" style="font-size:70%;">79.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.5"><span class="ltx_text" id="S3.T3.4.2.2.5.1" style="font-size:70%;">79.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.6"><span class="ltx_text" id="S3.T3.4.2.2.6.1" style="font-size:70%;">83.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.7"><span class="ltx_text" id="S3.T3.4.2.2.7.1" style="font-size:70%;">82.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.8"><span class="ltx_text" id="S3.T3.4.2.2.8.1" style="font-size:70%;">79.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.9"><span class="ltx_text" id="S3.T3.4.2.2.9.1" style="font-size:70%;">64.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.2.2.10"><span class="ltx_text" id="S3.T3.4.2.2.10.1" style="font-size:70%;">81.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.4.2.2.11"><span class="ltx_text" id="S3.T3.4.2.2.11.1" style="font-size:70%;">77.61</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.5.3.3.1"><span class="ltx_text ltx_font_bold" id="S3.T3.5.3.3.1.1" style="font-size:70%;">DoRA<math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.5.3.3.1.1.m1.1"><semantics id="S3.T3.5.3.3.1.1.m1.1a"><mo id="S3.T3.5.3.3.1.1.m1.1.1" xref="S3.T3.5.3.3.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.5.3.3.1.1.m1.1b"><ci id="S3.T3.5.3.3.1.1.m1.1.1.cmml" xref="S3.T3.5.3.3.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.3.3.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.3.3.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.2"><span class="ltx_text" id="S3.T3.5.3.3.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.3"><span class="ltx_text" id="S3.T3.5.3.3.3.1" style="font-size:70%;">71.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.4"><span class="ltx_text" id="S3.T3.5.3.3.4.1" style="font-size:70%;">83.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.5"><span class="ltx_text" id="S3.T3.5.3.3.5.1" style="font-size:70%;">79.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.6"><span class="ltx_text" id="S3.T3.5.3.3.6.1" style="font-size:70%;">89.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.7"><span class="ltx_text" id="S3.T3.5.3.3.7.1" style="font-size:70%;">83.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.8"><span class="ltx_text" id="S3.T3.5.3.3.8.1" style="font-size:70%;">84.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.9"><span class="ltx_text" id="S3.T3.5.3.3.9.1" style="font-size:70%;">71.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.3.3.10"><span class="ltx_text" id="S3.T3.5.3.3.10.1" style="font-size:70%;">81.20</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.5.3.3.11"><span class="ltx_text" id="S3.T3.5.3.3.11.1" style="font-size:70%;">80.45</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.6.4.4.1"><span class="ltx_text ltx_font_bold" id="S3.T3.6.4.4.1.1" style="font-size:70%;">PiSSA<math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.6.4.4.1.1.m1.1"><semantics id="S3.T3.6.4.4.1.1.m1.1a"><mo id="S3.T3.6.4.4.1.1.m1.1.1" xref="S3.T3.6.4.4.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.6.4.4.1.1.m1.1b"><ci id="S3.T3.6.4.4.1.1.m1.1.1.cmml" xref="S3.T3.6.4.4.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.4.4.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.4.4.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.2"><span class="ltx_text" id="S3.T3.6.4.4.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.3"><span class="ltx_text" id="S3.T3.6.4.4.3.1" style="font-size:70%;">67.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.4"><span class="ltx_text" id="S3.T3.6.4.4.4.1" style="font-size:70%;">78.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.5"><span class="ltx_text" id="S3.T3.6.4.4.5.1" style="font-size:70%;">78.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.6"><span class="ltx_text" id="S3.T3.6.4.4.6.1" style="font-size:70%;">76.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.7"><span class="ltx_text" id="S3.T3.6.4.4.7.1" style="font-size:70%;">78.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.8"><span class="ltx_text" id="S3.T3.6.4.4.8.1" style="font-size:70%;">75.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.9"><span class="ltx_text" id="S3.T3.6.4.4.9.1" style="font-size:70%;">60.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4.10"><span class="ltx_text" id="S3.T3.6.4.4.10.1" style="font-size:70%;">75.60</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.6.4.4.11"><span class="ltx_text" id="S3.T3.6.4.4.11.1" style="font-size:70%;">73.78</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.7.5.5.1"><span class="ltx_text ltx_font_bold" id="S3.T3.7.5.5.1.1" style="font-size:70%;">MiLoRA<math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.7.5.5.1.1.m1.1"><semantics id="S3.T3.7.5.5.1.1.m1.1a"><mo id="S3.T3.7.5.5.1.1.m1.1.1" xref="S3.T3.7.5.5.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.7.5.5.1.1.m1.1b"><ci id="S3.T3.7.5.5.1.1.m1.1.1.cmml" xref="S3.T3.7.5.5.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.5.5.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.5.5.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.2"><span class="ltx_text" id="S3.T3.7.5.5.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.3"><span class="ltx_text" id="S3.T3.7.5.5.3.1" style="font-size:70%;">67.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.4"><span class="ltx_text" id="S3.T3.7.5.5.4.1" style="font-size:70%;">83.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.5"><span class="ltx_text" id="S3.T3.7.5.5.5.1" style="font-size:70%;">80.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.6"><span class="ltx_text" id="S3.T3.7.5.5.6.1" style="font-size:70%;">88.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.7"><span class="ltx_text" id="S3.T3.7.5.5.7.1" style="font-size:70%;">82.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.8"><span class="ltx_text" id="S3.T3.7.5.5.8.1" style="font-size:70%;">82.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.9"><span class="ltx_text" id="S3.T3.7.5.5.9.1" style="font-size:70%;">68.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5.10"><span class="ltx_text" id="S3.T3.7.5.5.10.1" style="font-size:70%;">80.60</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.7.5.5.11"><span class="ltx_text" id="S3.T3.7.5.5.11.1" style="font-size:70%;">79.24</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.8.6.6.1"><span class="ltx_text ltx_font_bold" id="S3.T3.8.6.6.1.1" style="font-size:70%;">LoRA-Dash<math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.8.6.6.1.1.m1.1"><semantics id="S3.T3.8.6.6.1.1.m1.1a"><mo id="S3.T3.8.6.6.1.1.m1.1.1" xref="S3.T3.8.6.6.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.8.6.6.1.1.m1.1b"><ci id="S3.T3.8.6.6.1.1.m1.1.1.cmml" xref="S3.T3.8.6.6.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.6.6.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.6.6.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.2"><span class="ltx_text" id="S3.T3.8.6.6.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.3"><span class="ltx_text" id="S3.T3.8.6.6.3.1" style="font-size:70%;">71.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.4"><span class="ltx_text" id="S3.T3.8.6.6.4.1" style="font-size:70%;">75.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.5"><span class="ltx_text" id="S3.T3.8.6.6.5.1" style="font-size:70%;">79.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.6"><span class="ltx_text" id="S3.T3.8.6.6.6.1" style="font-size:70%;">91.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.7"><span class="ltx_text" id="S3.T3.8.6.6.7.1" style="font-size:70%;">78.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.8"><span class="ltx_text" id="S3.T3.8.6.6.8.1" style="font-size:70%;">84.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.9"><span class="ltx_text" id="S3.T3.8.6.6.9.1" style="font-size:70%;">69.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6.10"><span class="ltx_text" id="S3.T3.8.6.6.10.1" style="font-size:70%;">78.80</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.8.6.6.11"><span class="ltx_text" id="S3.T3.8.6.6.11.1" style="font-size:70%;">78.56</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.9.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T3.9.7.7.1.1" style="font-size:70%;">NEAT<math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.9.7.7.1.1.m1.1"><semantics id="S3.T3.9.7.7.1.1.m1.1a"><mo id="S3.T3.9.7.7.1.1.m1.1.1" xref="S3.T3.9.7.7.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.9.7.7.1.1.m1.1b"><ci id="S3.T3.9.7.7.1.1.m1.1.1.cmml" xref="S3.T3.9.7.7.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.7.7.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.7.7.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.2"><span class="ltx_text" id="S3.T3.9.7.7.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.3"><span class="ltx_text" id="S3.T3.9.7.7.3.1" style="font-size:70%;">71.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.4"><span class="ltx_text" id="S3.T3.9.7.7.4.1" style="font-size:70%;">83.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.5"><span class="ltx_text" id="S3.T3.9.7.7.5.1" style="font-size:70%;">80.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.6"><span class="ltx_text" id="S3.T3.9.7.7.6.1" style="font-size:70%;">88.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.7"><span class="ltx_text" id="S3.T3.9.7.7.7.1" style="font-size:70%;">84.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.8"><span class="ltx_text" id="S3.T3.9.7.7.8.1" style="font-size:70%;">86.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.9"><span class="ltx_text" id="S3.T3.9.7.7.9.1" style="font-size:70%;">71.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7.10"><span class="ltx_text" id="S3.T3.9.7.7.10.1" style="font-size:70%;">83.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.9.7.7.11"><span class="ltx_text" id="S3.T3.9.7.7.11.1" style="font-size:70%;">81.21</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.10.8.8.1"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.8.1.1" style="font-size:70%;">KaSA<math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T3.10.8.8.1.1.m1.1"><semantics id="S3.T3.10.8.8.1.1.m1.1a"><mo id="S3.T3.10.8.8.1.1.m1.1.1" xref="S3.T3.10.8.8.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T3.10.8.8.1.1.m1.1b"><ci id="S3.T3.10.8.8.1.1.m1.1.1.cmml" xref="S3.T3.10.8.8.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.10.8.8.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T3.10.8.8.1.1.m1.1d">†</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.2"><span class="ltx_text" id="S3.T3.10.8.8.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.3"><span class="ltx_text" id="S3.T3.10.8.8.3.1" style="font-size:70%;">73.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.4"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.8.4.1" style="font-size:70%;">84.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.5"><span class="ltx_text" id="S3.T3.10.8.8.5.1" style="font-size:70%;">80.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.6"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.8.6.1" style="font-size:70%;">91.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.7"><span class="ltx_text" id="S3.T3.10.8.8.7.1" style="font-size:70%;">84.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.8"><span class="ltx_text" id="S3.T3.10.8.8.8.1" style="font-size:70%;">84.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.9"><span class="ltx_text" id="S3.T3.10.8.8.9.1" style="font-size:70%;">72.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.8.10"><span class="ltx_text" id="S3.T3.10.8.8.10.1" style="font-size:70%;">81.20</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.10.8.8.11"><span class="ltx_text" id="S3.T3.10.8.8.11.1" style="font-size:70%;">81.53</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="11" id="S3.T3.10.8.11.3.1"><span class="ltx_text ltx_font_italic" id="S3.T3.10.8.11.3.1.1" style="font-size:70%;">LoRA MoE Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.12.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.10.8.12.4.1"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.12.4.1.1" style="font-size:70%;">MoLoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.2"><span class="ltx_text" id="S3.T3.10.8.12.4.2.1" style="font-size:70%;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.3"><span class="ltx_text" id="S3.T3.10.8.12.4.3.1" style="font-size:70%;">73.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.4"><span class="ltx_text" id="S3.T3.10.8.12.4.4.1" style="font-size:70%;">83.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.5"><span class="ltx_text" id="S3.T3.10.8.12.4.5.1" style="font-size:70%;">80.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.6"><span class="ltx_text" id="S3.T3.10.8.12.4.6.1" style="font-size:70%;">74.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.7"><span class="ltx_text" id="S3.T3.10.8.12.4.7.1" style="font-size:70%;">85.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.8"><span class="ltx_text" id="S3.T3.10.8.12.4.8.1" style="font-size:70%;">87.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.9"><span class="ltx_text" id="S3.T3.10.8.12.4.9.1" style="font-size:70%;">72.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.10"><span class="ltx_text" id="S3.T3.10.8.12.4.10.1" style="font-size:70%;">86.20</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.10.8.12.4.11"><span class="ltx_text" id="S3.T3.10.8.12.4.11.1" style="font-size:70%;">80.43</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.13.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.10.8.13.5.1"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.13.5.1.1" style="font-size:70%;">HydraLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.2"><span class="ltx_text" id="S3.T3.10.8.13.5.2.1" style="font-size:70%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.3"><span class="ltx_text" id="S3.T3.10.8.13.5.3.1" style="font-size:70%;">72.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.4"><span class="ltx_text" id="S3.T3.10.8.13.5.4.1" style="font-size:70%;">84.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.5"><span class="ltx_text" id="S3.T3.10.8.13.5.5.1" style="font-size:70%;">79.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.6"><span class="ltx_text" id="S3.T3.10.8.13.5.6.1" style="font-size:70%;">80.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.7"><span class="ltx_text" id="S3.T3.10.8.13.5.7.1" style="font-size:70%;">86.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.8"><span class="ltx_text" id="S3.T3.10.8.13.5.8.1" style="font-size:70%;">87.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.9"><span class="ltx_text" id="S3.T3.10.8.13.5.9.1" style="font-size:70%;">72.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.13.5.10"><span class="ltx_text" id="S3.T3.10.8.13.5.10.1" style="font-size:70%;">86.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.10.8.13.5.11"><span class="ltx_text" id="S3.T3.10.8.13.5.11.1" style="font-size:70%;">81.12</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8.14.6" style="background-color:#E6F3F3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.10.8.14.6.1"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.1.1" style="font-size:70%;background-color:#E6F3F3;">GOAT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.2"><span class="ltx_text" id="S3.T3.10.8.14.6.2.1" style="font-size:70%;background-color:#E6F3F3;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.3"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.3.1" style="font-size:70%;background-color:#E6F3F3;">73.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.4"><span class="ltx_text" id="S3.T3.10.8.14.6.4.1" style="font-size:70%;background-color:#E6F3F3;">83.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.5"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.5.1" style="font-size:70%;background-color:#E6F3F3;">80.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.6"><span class="ltx_text" id="S3.T3.10.8.14.6.6.1" style="font-size:70%;background-color:#E6F3F3;">87.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.7"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.7.1" style="font-size:70%;background-color:#E6F3F3;">85.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.8"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.8.1" style="font-size:70%;background-color:#E6F3F3;">87.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.9"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.9.1" style="font-size:70%;background-color:#E6F3F3;">76.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.10"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.10.1" style="font-size:70%;background-color:#E6F3F3;">87.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.10.8.14.6.11"><span class="ltx_text ltx_font_bold" id="S3.T3.10.8.14.6.11.1" style="font-size:70%;background-color:#E6F3F3;">82.73</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different methods for commonsense reasoning on the LLaMA2 7B model.  It evaluates eight commonsense reasoning datasets and compares the performance of the GOAT model with several baseline methods, including single LoRA models and LORA MoE models.  Results are shown as percentages, and the symbol † indicates results taken from other published works. The table highlights the superior performance of GOAT compared to other methods, demonstrating improved accuracy across various commonsense reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison of LLaMA2 7B with different methods on eight commonsense reasoning datasets. The symbol ††\dagger† indicates that the results are taken from (Wang et al., 2024a; Zhong et al., 2024; Si et al., 2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.1.1" style="font-size:70%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.2.1" style="font-size:70%;"># Params (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.3.1" style="font-size:70%;">CoLA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.4.1" style="font-size:70%;">SST-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.5.1" style="font-size:70%;">MRPC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.6.1" style="font-size:70%;">QQP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.7.1" style="font-size:70%;">MNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.8.1" style="font-size:70%;">QNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.9.1" style="font-size:70%;">RTE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.10.1" style="font-size:70%;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T4.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.2.2.1.1" style="font-size:70%;">Full FT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.2"><span class="ltx_text" id="S3.T4.1.1.2.2.2.1" style="font-size:70%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.3"><span class="ltx_text" id="S3.T4.1.1.2.2.3.1" style="font-size:70%;">84.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.4"><span class="ltx_text" id="S3.T4.1.1.2.2.4.1" style="font-size:70%;">95.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.5"><span class="ltx_text" id="S3.T4.1.1.2.2.5.1" style="font-size:70%;">85.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.6"><span class="ltx_text" id="S3.T4.1.1.2.2.6.1" style="font-size:70%;">91.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.7"><span class="ltx_text" id="S3.T4.1.1.2.2.7.1" style="font-size:70%;">89.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.8"><span class="ltx_text" id="S3.T4.1.1.2.2.8.1" style="font-size:70%;">94.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.9"><span class="ltx_text" id="S3.T4.1.1.2.2.9.1" style="font-size:70%;">84.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.2.2.10"><span class="ltx_text" id="S3.T4.1.1.2.2.10.1" style="font-size:70%;">89.47</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.3.3.1.1" style="font-size:70%;">Full FT MoE</span></th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.2"><span class="ltx_text" id="S3.T4.1.1.3.3.2.1" style="font-size:70%;">698</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.3"><span class="ltx_text" id="S3.T4.1.1.3.3.3.1" style="font-size:70%;">86.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.4"><span class="ltx_text" id="S3.T4.1.1.3.3.4.1" style="font-size:70%;">96.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.5"><span class="ltx_text" id="S3.T4.1.1.3.3.5.1" style="font-size:70%;">85.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.6"><span class="ltx_text" id="S3.T4.1.1.3.3.6.1" style="font-size:70%;">92.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.7"><span class="ltx_text" id="S3.T4.1.1.3.3.7.1" style="font-size:70%;">90.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.8"><span class="ltx_text" id="S3.T4.1.1.3.3.8.1" style="font-size:70%;">95.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.9"><span class="ltx_text" id="S3.T4.1.1.3.3.9.1" style="font-size:70%;">84.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.3.3.10"><span class="ltx_text" id="S3.T4.1.1.3.3.10.1" style="font-size:70%;">89.90</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T4.1.1.4.4.1"><span class="ltx_text ltx_font_italic" id="S3.T4.1.1.4.4.1.1" style="font-size:70%;">Single LoRA Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T4.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.5.5.1.1" style="font-size:70%;">LoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.2"><span class="ltx_text" id="S3.T4.1.1.5.5.2.1" style="font-size:70%;">4.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.3"><span class="ltx_text" id="S3.T4.1.1.5.5.3.1" style="font-size:70%;">83.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.4"><span class="ltx_text" id="S3.T4.1.1.5.5.4.1" style="font-size:70%;">95.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.5"><span class="ltx_text" id="S3.T4.1.1.5.5.5.1" style="font-size:70%;">83.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.6"><span class="ltx_text" id="S3.T4.1.1.5.5.6.1" style="font-size:70%;">90.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.7"><span class="ltx_text" id="S3.T4.1.1.5.5.7.1" style="font-size:70%;">89.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.8"><span class="ltx_text" id="S3.T4.1.1.5.5.8.1" style="font-size:70%;">93.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.9"><span class="ltx_text" id="S3.T4.1.1.5.5.9.1" style="font-size:70%;">84.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.5.5.10"><span class="ltx_text" id="S3.T4.1.1.5.5.10.1" style="font-size:70%;">88.46</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.6.6.1.1" style="font-size:70%;">DoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.2"><span class="ltx_text" id="S3.T4.1.1.6.6.2.1" style="font-size:70%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.3"><span class="ltx_text" id="S3.T4.1.1.6.6.3.1" style="font-size:70%;">85.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.4"><span class="ltx_text" id="S3.T4.1.1.6.6.4.1" style="font-size:70%;">95.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.5"><span class="ltx_text" id="S3.T4.1.1.6.6.5.1" style="font-size:70%;">84.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.6"><span class="ltx_text" id="S3.T4.1.1.6.6.6.1" style="font-size:70%;">91.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.7"><span class="ltx_text" id="S3.T4.1.1.6.6.7.1" style="font-size:70%;">89.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.8"><span class="ltx_text" id="S3.T4.1.1.6.6.8.1" style="font-size:70%;">93.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.9"><span class="ltx_text" id="S3.T4.1.1.6.6.9.1" style="font-size:70%;">84.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.6.6.10"><span class="ltx_text" id="S3.T4.1.1.6.6.10.1" style="font-size:70%;">89.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.7.7.1.1" style="font-size:70%;">PiSSA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.2"><span class="ltx_text" id="S3.T4.1.1.7.7.2.1" style="font-size:70%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.3"><span class="ltx_text" id="S3.T4.1.1.7.7.3.1" style="font-size:70%;">69.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.4"><span class="ltx_text" id="S3.T4.1.1.7.7.4.1" style="font-size:70%;">95.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.5"><span class="ltx_text" id="S3.T4.1.1.7.7.5.1" style="font-size:70%;">82.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.6"><span class="ltx_text" id="S3.T4.1.1.7.7.6.1" style="font-size:70%;">91.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.7"><span class="ltx_text" id="S3.T4.1.1.7.7.7.1" style="font-size:70%;">88.94</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.8"><span class="ltx_text" id="S3.T4.1.1.7.7.8.1" style="font-size:70%;">93.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.9"><span class="ltx_text" id="S3.T4.1.1.7.7.9.1" style="font-size:70%;">73.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.7.7.10"><span class="ltx_text" id="S3.T4.1.1.7.7.10.1" style="font-size:70%;">85.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.8.8.1.1" style="font-size:70%;">MiLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.2"><span class="ltx_text" id="S3.T4.1.1.8.8.2.1" style="font-size:70%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.3"><span class="ltx_text" id="S3.T4.1.1.8.8.3.1" style="font-size:70%;">84.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.4"><span class="ltx_text" id="S3.T4.1.1.8.8.4.1" style="font-size:70%;">96.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.5"><span class="ltx_text" id="S3.T4.1.1.8.8.5.1" style="font-size:70%;">86.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.6"><span class="ltx_text" id="S3.T4.1.1.8.8.6.1" style="font-size:70%;">91.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.7"><span class="ltx_text" id="S3.T4.1.1.8.8.7.1" style="font-size:70%;">89.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.8"><span class="ltx_text" id="S3.T4.1.1.8.8.8.1" style="font-size:70%;">94.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.9"><span class="ltx_text" id="S3.T4.1.1.8.8.9.1" style="font-size:70%;">84.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.8.8.10"><span class="ltx_text" id="S3.T4.1.1.8.8.10.1" style="font-size:70%;">89.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.9.9.1.1" style="font-size:70%;">rsLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.2"><span class="ltx_text" id="S3.T4.1.1.9.9.2.1" style="font-size:70%;">4.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.3"><span class="ltx_text" id="S3.T4.1.1.9.9.3.1" style="font-size:70%;">83.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.4"><span class="ltx_text" id="S3.T4.1.1.9.9.4.1" style="font-size:70%;">95.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.5"><span class="ltx_text" id="S3.T4.1.1.9.9.5.1" style="font-size:70%;">86.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.6"><span class="ltx_text" id="S3.T4.1.1.9.9.6.1" style="font-size:70%;">90.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.7"><span class="ltx_text" id="S3.T4.1.1.9.9.7.1" style="font-size:70%;">88.97</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.8"><span class="ltx_text" id="S3.T4.1.1.9.9.8.1" style="font-size:70%;">93.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.9"><span class="ltx_text" id="S3.T4.1.1.9.9.9.1" style="font-size:70%;">84.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.9.9.10"><span class="ltx_text" id="S3.T4.1.1.9.9.10.1" style="font-size:70%;">89.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T4.1.1.10.10.1"><span class="ltx_text ltx_font_italic" id="S3.T4.1.1.10.10.1.1" style="font-size:70%;">LoRA MoE Methods</span></th>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T4.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.11.11.1.1" style="font-size:70%;">MoLoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.2"><span class="ltx_text" id="S3.T4.1.1.11.11.2.1" style="font-size:70%;">4.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.3"><span class="ltx_text" id="S3.T4.1.1.11.11.3.1" style="font-size:70%;">83.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.4"><span class="ltx_text" id="S3.T4.1.1.11.11.4.1" style="font-size:70%;">96.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.5"><span class="ltx_text" id="S3.T4.1.1.11.11.5.1" style="font-size:70%;">87.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.6"><span class="ltx_text" id="S3.T4.1.1.11.11.6.1" style="font-size:70%;">91.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.7"><span class="ltx_text" id="S3.T4.1.1.11.11.7.1" style="font-size:70%;">89.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.8"><span class="ltx_text" id="S3.T4.1.1.11.11.8.1" style="font-size:70%;">93.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.9"><span class="ltx_text" id="S3.T4.1.1.11.11.9.1" style="font-size:70%;">84.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.11.11.10"><span class="ltx_text" id="S3.T4.1.1.11.11.10.1" style="font-size:70%;">89.52</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.12.12.1.1" style="font-size:70%;">AdaMoLE</span></th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.2"><span class="ltx_text" id="S3.T4.1.1.12.12.2.1" style="font-size:70%;">4.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.3"><span class="ltx_text" id="S3.T4.1.1.12.12.3.1" style="font-size:70%;">83.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.4"><span class="ltx_text" id="S3.T4.1.1.12.12.4.1" style="font-size:70%;">95.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.12.12.5.1" style="font-size:70%;">86.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.12.12.6.1" style="font-size:70%;">91.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.7"><span class="ltx_text" id="S3.T4.1.1.12.12.7.1" style="font-size:70%;">89.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.8"><span class="ltx_text" id="S3.T4.1.1.12.12.8.1" style="font-size:70%;">93.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.9"><span class="ltx_text" id="S3.T4.1.1.12.12.9.1" style="font-size:70%;">83.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.12.12.10"><span class="ltx_text" id="S3.T4.1.1.12.12.10.1" style="font-size:70%;">89.12</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.13.13.1.1" style="font-size:70%;">HydraLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.2"><span class="ltx_text" id="S3.T4.1.1.13.13.2.1" style="font-size:70%;">2.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.3"><span class="ltx_text" id="S3.T4.1.1.13.13.3.1" style="font-size:70%;">83.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.4"><span class="ltx_text" id="S3.T4.1.1.13.13.4.1" style="font-size:70%;">95.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.5"><span class="ltx_text" id="S3.T4.1.1.13.13.5.1" style="font-size:70%;">85.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.6"><span class="ltx_text" id="S3.T4.1.1.13.13.6.1" style="font-size:70%;">91.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.7"><span class="ltx_text" id="S3.T4.1.1.13.13.7.1" style="font-size:70%;">89.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.8"><span class="ltx_text" id="S3.T4.1.1.13.13.8.1" style="font-size:70%;">93.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.9"><span class="ltx_text" id="S3.T4.1.1.13.13.9.1" style="font-size:70%;">81.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.1.13.13.10"><span class="ltx_text" id="S3.T4.1.1.13.13.10.1" style="font-size:70%;">88.56</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.14.14" style="background-color:#E6F3F3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T4.1.1.14.14.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.14.14.1.1" style="font-size:70%;background-color:#E6F3F3;">GOAT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.2"><span class="ltx_text" id="S3.T4.1.1.14.14.2.1" style="font-size:70%;background-color:#E6F3F3;">4.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.14.14.3.1" style="font-size:70%;background-color:#E6F3F3;">86.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.14.14.4.1" style="font-size:70%;background-color:#E6F3F3;">96.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.5"><span class="ltx_text" id="S3.T4.1.1.14.14.5.1" style="font-size:70%;background-color:#E6F3F3;">84.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.6"><span class="ltx_text" id="S3.T4.1.1.14.14.6.1" style="font-size:70%;background-color:#E6F3F3;">91.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.14.14.7.1" style="font-size:70%;background-color:#E6F3F3;">89.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.8"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.14.14.8.1" style="font-size:70%;background-color:#E6F3F3;">94.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.9"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.14.14.9.1" style="font-size:70%;background-color:#E6F3F3;">85.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.1.14.14.10"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.14.14.10.1" style="font-size:70%;background-color:#E6F3F3;">89.76</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different fine-tuning methods on seven tasks from the GLUE benchmark, using the RoBERTa-large model.  The methods compared include full fine-tuning (Full FT), full fine-tuning with a Mixture of Experts (MoE) architecture (Full FT MoE), and several parameter-efficient fine-tuning (PEFT) methods.  For each method, the table shows the percentage of parameters used compared to the full fine-tuning model and the accuracy achieved on each of the seven GLUE tasks.  The total rank of low-rank adapters was set to 32 for all PEFT methods. This allows for a comparison of performance relative to the parameter count for each method.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of RoBERTa-large with different methods on 7 GLUE tasks. Total rank is set to 32.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.3.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.3.1.1.1.1.1" style="font-size:70%;">MoE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T5.3.1.1.1.2"><span class="ltx_text" id="S4.T5.3.1.1.1.2.1" style="font-size:70%;">SVD Initialization</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.1.1.3" rowspan="2"><span class="ltx_text" id="S4.T5.3.1.1.1.3.1" style="font-size:70%;">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.1.1.1.4" rowspan="2"><span class="ltx_text" id="S4.T5.3.1.1.1.4.1" style="font-size:70%;">Avg. (w/o MS)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.1.2.2.1"><span class="ltx_text" id="S4.T5.3.1.2.2.1.1" style="font-size:70%;">O</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.1.2.2.2"><span class="ltx_text" id="S4.T5.3.1.2.2.2.1" style="font-size:70%;">P</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.1.2.2.3"><span class="ltx_text" id="S4.T5.3.1.2.2.3.1" style="font-size:70%;">M</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.1.2.2.4"><span class="ltx_text" id="S4.T5.3.1.2.2.4.1" style="font-size:70%;">R</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.1.3.3" style="background-color:#E6F3F3;">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.3.3.1.1" style="font-size:70%;background-color:#E6F3F3;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.1.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.3.3.2.1" style="font-size:70%;background-color:#E6F3F3;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S4.T5.3.1.3.3.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T5.3.1.3.3.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T5.3.1.3.3.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.1.3.3.6"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.3.3.6.1" style="font-size:70%;background-color:#E6F3F3;">81.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.1.3.3.7"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.3.3.7.1" style="font-size:70%;background-color:#E6F3F3;">80.35</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.1.4.4">
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.4.4.1.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td" id="S4.T5.3.1.4.4.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.4.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.4.4.3.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td" id="S4.T5.3.1.4.4.4"></td>
<td class="ltx_td" id="S4.T5.3.1.4.4.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.4.4.6"><span class="ltx_text" id="S4.T5.3.1.4.4.6.1" style="font-size:70%;">81.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.4.4.7"><span class="ltx_text" id="S4.T5.3.1.4.4.7.1" style="font-size:70%;">80.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.1.5.5">
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.5.5.1.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td" id="S4.T5.3.1.5.5.2"></td>
<td class="ltx_td" id="S4.T5.3.1.5.5.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.5.5.4.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td" id="S4.T5.3.1.5.5.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.5.5.6"><span class="ltx_text" id="S4.T5.3.1.5.5.6.1" style="font-size:70%;">81.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.5.5.7"><span class="ltx_text" id="S4.T5.3.1.5.5.7.1" style="font-size:70%;">80.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.1.6.6">
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.6.6.1.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td" id="S4.T5.3.1.6.6.2"></td>
<td class="ltx_td" id="S4.T5.3.1.6.6.3"></td>
<td class="ltx_td" id="S4.T5.3.1.6.6.4"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.6.6.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.6.6.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.6.6.6"><span class="ltx_text" id="S4.T5.3.1.6.6.6.1" style="font-size:70%;">81.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.6.6.7"><span class="ltx_text" id="S4.T5.3.1.6.6.7.1" style="font-size:70%;">80.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.1.7.7">
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.7.7.1.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td" id="S4.T5.3.1.7.7.2"></td>
<td class="ltx_td" id="S4.T5.3.1.7.7.3"></td>
<td class="ltx_td" id="S4.T5.3.1.7.7.4"></td>
<td class="ltx_td" id="S4.T5.3.1.7.7.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.7.7.6"><span class="ltx_text" id="S4.T5.3.1.7.7.6.1" style="font-size:70%;">81.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.7.7.7"><span class="ltx_text" id="S4.T5.3.1.7.7.7.1" style="font-size:70%;">80.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.1.8.8">
<td class="ltx_td ltx_border_bb" id="S4.T5.3.1.8.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.1.8.8.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.8.8.2.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T5.3.1.8.8.3"></td>
<td class="ltx_td ltx_border_bb" id="S4.T5.3.1.8.8.4"></td>
<td class="ltx_td ltx_border_bb" id="S4.T5.3.1.8.8.5"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.1.8.8.6"><span class="ltx_text" id="S4.T5.3.1.8.8.6.1" style="font-size:70%;">/</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.1.8.8.7"><span class="ltx_text" id="S4.T5.3.1.8.8.7.1" style="font-size:70%;">77.62</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different components of the GOAT model on its performance.  Specifically, it compares the performance of GOAT using various initialization strategies for the low-rank adapters: the proposed adaptive prior selection ('O'), using only the principal singular values ('P'), only the minor singular values ('M'), and random initialization ('R'). It also investigates the effect of applying MoE scaling ('MS') on top of these initialization methods, both with and without the full MoE architecture. The results help determine the contribution of each component to GOAT's improved efficiency and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study of GOAT. “MoE” denotes using the MoE architecture instead of a single LoRA. “MS” refers to using MoE scaling. “O”, “P”, “M”, and “R” represent initializations from segments that selected by ours, with the principal singular value, with the minor singular value, and are randomly selected, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.4.1.1.1">Learning rate</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.4.1.2.1">MoLoRA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.4.1.3.1">HydraLoRA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.3.4.1.4" style="background-color:#E6F3F3;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.4.1.4.1" style="background-color:#E6F3F3;">GOAT</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.1.1.1.1"><math alttext="1\mathrm{e}^{-5}" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mrow id="S4.T6.1.1.1.1.m1.1.1" xref="S4.T6.1.1.1.1.m1.1.1.cmml"><mn id="S4.T6.1.1.1.1.m1.1.1.2" xref="S4.T6.1.1.1.1.m1.1.1.2.cmml">1</mn><mo id="S4.T6.1.1.1.1.m1.1.1.1" xref="S4.T6.1.1.1.1.m1.1.1.1.cmml">⁢</mo><msup id="S4.T6.1.1.1.1.m1.1.1.3" xref="S4.T6.1.1.1.1.m1.1.1.3.cmml"><mi id="S4.T6.1.1.1.1.m1.1.1.3.2" mathvariant="normal" xref="S4.T6.1.1.1.1.m1.1.1.3.2.cmml">e</mi><mrow id="S4.T6.1.1.1.1.m1.1.1.3.3" xref="S4.T6.1.1.1.1.m1.1.1.3.3.cmml"><mo id="S4.T6.1.1.1.1.m1.1.1.3.3a" xref="S4.T6.1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T6.1.1.1.1.m1.1.1.3.3.2" xref="S4.T6.1.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><apply id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1"><times id="S4.T6.1.1.1.1.m1.1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1.1"></times><cn id="S4.T6.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T6.1.1.1.1.m1.1.1.2">1</cn><apply id="S4.T6.1.1.1.1.m1.1.1.3.cmml" xref="S4.T6.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T6.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1.3">superscript</csymbol><ci id="S4.T6.1.1.1.1.m1.1.1.3.2.cmml" xref="S4.T6.1.1.1.1.m1.1.1.3.2">e</ci><apply id="S4.T6.1.1.1.1.m1.1.1.3.3.cmml" xref="S4.T6.1.1.1.1.m1.1.1.3.3"><minus id="S4.T6.1.1.1.1.m1.1.1.3.3.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1.3.3"></minus><cn id="S4.T6.1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T6.1.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">1\mathrm{e}^{-5}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">1 roman_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.2">56.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.3">55.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.4" style="background-color:#E6F3F3;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.4.1" style="background-color:#E6F3F3;">58.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.2.1"><math alttext="2\mathrm{e}^{-5}" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.m1.1"><semantics id="S4.T6.2.2.2.1.m1.1a"><mrow id="S4.T6.2.2.2.1.m1.1.1" xref="S4.T6.2.2.2.1.m1.1.1.cmml"><mn id="S4.T6.2.2.2.1.m1.1.1.2" xref="S4.T6.2.2.2.1.m1.1.1.2.cmml">2</mn><mo id="S4.T6.2.2.2.1.m1.1.1.1" xref="S4.T6.2.2.2.1.m1.1.1.1.cmml">⁢</mo><msup id="S4.T6.2.2.2.1.m1.1.1.3" xref="S4.T6.2.2.2.1.m1.1.1.3.cmml"><mi id="S4.T6.2.2.2.1.m1.1.1.3.2" mathvariant="normal" xref="S4.T6.2.2.2.1.m1.1.1.3.2.cmml">e</mi><mrow id="S4.T6.2.2.2.1.m1.1.1.3.3" xref="S4.T6.2.2.2.1.m1.1.1.3.3.cmml"><mo id="S4.T6.2.2.2.1.m1.1.1.3.3a" xref="S4.T6.2.2.2.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T6.2.2.2.1.m1.1.1.3.3.2" xref="S4.T6.2.2.2.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.m1.1b"><apply id="S4.T6.2.2.2.1.m1.1.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1"><times id="S4.T6.2.2.2.1.m1.1.1.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1.1"></times><cn id="S4.T6.2.2.2.1.m1.1.1.2.cmml" type="integer" xref="S4.T6.2.2.2.1.m1.1.1.2">2</cn><apply id="S4.T6.2.2.2.1.m1.1.1.3.cmml" xref="S4.T6.2.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T6.2.2.2.1.m1.1.1.3.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1.3">superscript</csymbol><ci id="S4.T6.2.2.2.1.m1.1.1.3.2.cmml" xref="S4.T6.2.2.2.1.m1.1.1.3.2">e</ci><apply id="S4.T6.2.2.2.1.m1.1.1.3.3.cmml" xref="S4.T6.2.2.2.1.m1.1.1.3.3"><minus id="S4.T6.2.2.2.1.m1.1.1.3.3.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1.3.3"></minus><cn id="S4.T6.2.2.2.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T6.2.2.2.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.m1.1c">2\mathrm{e}^{-5}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.m1.1d">2 roman_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.2">56.63</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.3">57.39</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.4" style="background-color:#E6F3F3;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.2.4.1" style="background-color:#E6F3F3;">60.20</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.3.3.3.1"><math alttext="5\mathrm{e}^{-5}" class="ltx_Math" display="inline" id="S4.T6.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.1.m1.1a"><mrow id="S4.T6.3.3.3.1.m1.1.1" xref="S4.T6.3.3.3.1.m1.1.1.cmml"><mn id="S4.T6.3.3.3.1.m1.1.1.2" xref="S4.T6.3.3.3.1.m1.1.1.2.cmml">5</mn><mo id="S4.T6.3.3.3.1.m1.1.1.1" xref="S4.T6.3.3.3.1.m1.1.1.1.cmml">⁢</mo><msup id="S4.T6.3.3.3.1.m1.1.1.3" xref="S4.T6.3.3.3.1.m1.1.1.3.cmml"><mi id="S4.T6.3.3.3.1.m1.1.1.3.2" mathvariant="normal" xref="S4.T6.3.3.3.1.m1.1.1.3.2.cmml">e</mi><mrow id="S4.T6.3.3.3.1.m1.1.1.3.3" xref="S4.T6.3.3.3.1.m1.1.1.3.3.cmml"><mo id="S4.T6.3.3.3.1.m1.1.1.3.3a" xref="S4.T6.3.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="S4.T6.3.3.3.1.m1.1.1.3.3.2" xref="S4.T6.3.3.3.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.1.m1.1b"><apply id="S4.T6.3.3.3.1.m1.1.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1"><times id="S4.T6.3.3.3.1.m1.1.1.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1.1"></times><cn id="S4.T6.3.3.3.1.m1.1.1.2.cmml" type="integer" xref="S4.T6.3.3.3.1.m1.1.1.2">5</cn><apply id="S4.T6.3.3.3.1.m1.1.1.3.cmml" xref="S4.T6.3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T6.3.3.3.1.m1.1.1.3.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1.3">superscript</csymbol><ci id="S4.T6.3.3.3.1.m1.1.1.3.2.cmml" xref="S4.T6.3.3.3.1.m1.1.1.3.2">e</ci><apply id="S4.T6.3.3.3.1.m1.1.1.3.3.cmml" xref="S4.T6.3.3.3.1.m1.1.1.3.3"><minus id="S4.T6.3.3.3.1.m1.1.1.3.3.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1.3.3"></minus><cn id="S4.T6.3.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="S4.T6.3.3.3.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.1.m1.1c">5\mathrm{e}^{-5}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.1.m1.1d">5 roman_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.3.2">60.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.3.3">60.96</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.3.4" style="background-color:#E6F3F3;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.4.1" style="background-color:#E6F3F3;">62.05</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance achieved by three different models (MoLoRA, HydraLoRA, and GOAT) across various learning rates.  It shows how sensitive each model's performance is to changes in learning rate and illustrates the relative robustness of GOAT compared to the other two models.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance comparison of different learning rates.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T7.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.4.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.4.1.2.1">Memory Cost</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.4.1.3.1">Epoch Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T7.3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.4.1.4.1">Performance</span></th>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T7.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.3.4.1">Full FT MoE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.1.1.1.1">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.m1.1.1" xref="S4.T7.1.1.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.m1.1b"><geq id="S4.T7.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.m1.1d">≥</annotation></semantics></math> 640 GB</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.2.2.2">
<math alttext="\approx" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.2.m1.1.1" xref="S4.T7.2.2.2.2.m1.1.1.cmml">≈</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.m1.1b"><approx id="S4.T7.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.m1.1.1"></approx></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.m1.1c">\approx</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.m1.1d">≈</annotation></semantics></math>106h 03min</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.3.3.3.3">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T7.3.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.3.m1.1.1" xref="S4.T7.3.3.3.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.3.m1.1b"><geq id="S4.T7.3.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.3.m1.1d">≥</annotation></semantics></math> 59.36</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T7.3.3.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.5.1.1.1">MoLoRA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.3.5.1.2">34.85 GB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.3.5.1.3">36h56min</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.3.5.1.4">56.63</td>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T7.3.3.6.2.1"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.6.2.1.1">HydraLoRA</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.3.3.6.2.2">34.81 GB</td>
<td class="ltx_td ltx_align_center" id="S4.T7.3.3.6.2.3">36h56min</td>
<td class="ltx_td ltx_align_center" id="S4.T7.3.3.6.2.4">57.39</td>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.7.3" style="background-color:#E6F3F3;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T7.3.3.7.3.1"><span class="ltx_text ltx_font_bold" id="S4.T7.3.3.7.3.1.1" style="background-color:#E6F3F3;">GOAT</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.3.7.3.2"><span class="ltx_text" id="S4.T7.3.3.7.3.2.1" style="background-color:#E6F3F3;">34.85 GB</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.3.7.3.3"><span class="ltx_text" id="S4.T7.3.3.7.3.3.1" style="background-color:#E6F3F3;">36h59min</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.3.3.7.3.4"><span class="ltx_text" id="S4.T7.3.3.7.3.4.1" style="background-color:#E6F3F3;">60.20</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of LoRA-based Mixture-of-Experts (MoE) models against the full fine-tuned MoE model.  It shows a comparison across three key metrics: memory usage (in GB), training time (hours and minutes), and the performance on the GSM8K benchmark. All experiments were conducted using a single NVIDIA A100 GPU with consistent batch sizes to ensure fair comparison.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of LoRA-MoE and Full FT MoE in memory cost, training time, and GSM8K performance. Memory cost was measured and training time was recorded on the MetaMath dataset using one A100 GPU with identical batch sizes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A4.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.2.1">NLG(Avg.)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.3.1">NLU(Avg.)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.4.1">IC(Avg.)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.5.1">CR(Avg.)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.6.1">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T8.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.2.1.1.1">GOAT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.1.2">30.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.1.3">89.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.1.4">81.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.1.5">82.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.1.2.1.6">71.12</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T8.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.3.2.1.1">GOAT+</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.3.2.2">30.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.3.2.3">89.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.3.2.4">81.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.3.2.5">82.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.1.3.2.6">71.02</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the original GOAT method and its extended version, GOAT+, which is adapted for scenarios with proper scaling.  The comparison is made across four different benchmark categories (NLG, NLU, IC, and CR), showing average scores for each method. This demonstrates the robustness and generalizability of the GOAT approach, even when the scaling factor is pre-adjusted.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance comparison of our method extended to properly scaled scenarios.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T9.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T9.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A5.T9.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.1.1.1.1" style="font-size:90%;">Hyperparameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T9.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T9.3.1.1.2.1" style="font-size:90%;">Commonsense Reasoning</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T9.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A5.T9.3.2.1.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.2.1.1.1" style="font-size:90%;">Batch Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.3.2.1.2"><span class="ltx_text" id="A5.T9.3.2.1.2.1" style="font-size:90%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T9.3.3.2.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.3.2.1.1" style="font-size:90%;">Rank</span></th>
<td class="ltx_td ltx_align_center" id="A5.T9.3.3.2.2"><span class="ltx_text" id="A5.T9.3.3.2.2.1" style="font-size:90%;">32</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T9.3.4.3.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.4.3.1.1" style="font-size:90%;">Alpha</span></th>
<td class="ltx_td ltx_align_center" id="A5.T9.3.4.3.2"><span class="ltx_text" id="A5.T9.3.4.3.2.1" style="font-size:90%;">64</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T9.3.5.4.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.5.4.1.1" style="font-size:90%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center" id="A5.T9.3.5.4.2"><span class="ltx_text" id="A5.T9.3.5.4.2.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T9.3.6.5.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.6.5.1.1" style="font-size:90%;">Warmup Steps</span></th>
<td class="ltx_td ltx_align_center" id="A5.T9.3.6.5.2"><span class="ltx_text" id="A5.T9.3.6.5.2.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T9.3.7.6.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.7.6.1.1" style="font-size:90%;">Dropout</span></th>
<td class="ltx_td ltx_align_center" id="A5.T9.3.7.6.2"><span class="ltx_text" id="A5.T9.3.7.6.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.3.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T9.3.8.7.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.8.7.1.1" style="font-size:90%;">Learning Rate</span></th>
<td class="ltx_td ltx_align_center" id="A5.T9.3.8.7.2"><span class="ltx_text" id="A5.T9.3.8.7.2.1" style="font-size:90%;">1e-4</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.3.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A5.T9.3.9.8.1"><span class="ltx_text ltx_font_bold" id="A5.T9.3.9.8.1.1" style="font-size:90%;">Epochs</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T9.3.9.8.2"><span class="ltx_text" id="A5.T9.3.9.8.2.1" style="font-size:90%;">3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for the commonsense reasoning task when training the GOAT model.  It includes details such as batch size, rank, alpha, optimizer, warmup steps, dropout rate, learning rate, and the number of epochs. These settings are crucial for optimizing the model's performance on this specific task.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyperparameters of the commonsense reasoning task for GOAT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T10.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T10.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A5.T10.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.1.1" style="font-size:90%;">Hyperparameter</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.2.1" style="font-size:90%;">Cars</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.3.1" style="font-size:90%;">DTD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.3.1.1.4"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.4.1" style="font-size:90%;">EuroSAT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.3.1.1.5"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.5.1" style="font-size:90%;">GTSRB</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.3.1.1.6"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.6.1" style="font-size:90%;">RESISC45</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.3.1.1.7"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.7.1" style="font-size:90%;">SUN397</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T10.3.1.1.8"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.8.1" style="font-size:90%;">SVHN</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A5.T10.3.2.2.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.2.2.1.1" style="font-size:90%;">Batch Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A5.T10.3.2.2.2"><span class="ltx_text" id="A5.T10.3.2.2.2.1" style="font-size:90%;">512</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T10.3.3.3.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.3.3.1.1" style="font-size:90%;">Rank</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T10.3.3.3.2"><span class="ltx_text" id="A5.T10.3.3.3.2.1" style="font-size:90%;">8</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T10.3.4.4.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.4.4.1.1" style="font-size:90%;">Alpha</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T10.3.4.4.2"><span class="ltx_text" id="A5.T10.3.4.4.2.1" style="font-size:90%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T10.3.5.5.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.5.5.1.1" style="font-size:90%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T10.3.5.5.2"><span class="ltx_text" id="A5.T10.3.5.5.2.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T10.3.6.6.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.6.6.1.1" style="font-size:90%;">Warmup Steps</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T10.3.6.6.2"><span class="ltx_text" id="A5.T10.3.6.6.2.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T10.3.7.7.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.7.7.1.1" style="font-size:90%;">Dropout</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T10.3.7.7.2"><span class="ltx_text" id="A5.T10.3.7.7.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T10.3.8.8.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.8.8.1.1" style="font-size:90%;">Learning Rate</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T10.3.8.8.2"><span class="ltx_text" id="A5.T10.3.8.8.2.1" style="font-size:90%;">1e-4</span></td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A5.T10.3.9.9.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.9.9.1.1" style="font-size:90%;">Epochs</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.9.9.2"><span class="ltx_text" id="A5.T10.3.9.9.2.1" style="font-size:90%;">35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.9.9.3"><span class="ltx_text" id="A5.T10.3.9.9.3.1" style="font-size:90%;">76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.9.9.4"><span class="ltx_text" id="A5.T10.3.9.9.4.1" style="font-size:90%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.9.9.5"><span class="ltx_text" id="A5.T10.3.9.9.5.1" style="font-size:90%;">11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.9.9.6"><span class="ltx_text" id="A5.T10.3.9.9.6.1" style="font-size:90%;">15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.9.9.7"><span class="ltx_text" id="A5.T10.3.9.9.7.1" style="font-size:90%;">14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.9.9.8"><span class="ltx_text" id="A5.T10.3.9.9.8.1" style="font-size:90%;">4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training the GOAT model on image classification tasks. It shows the values used for different parameters including batch size, rank, alpha, optimizer, warmup steps, dropout, learning rate, and epochs.  The specific values are listed for each of the seven datasets used in the image classification experiments: Cars, DTD, EuroSAT, GTSRB, RESISC45, SUN397, and SVHN. This information helps readers understand the experimental setup and how those parameters were chosen for the experiments.
> <details>
> <summary>read the caption</summary>
> Table 10: Hyperparameters of the image classification task for GOAT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T11.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T11.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A5.T11.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.1.1" style="font-size:90%;">Hyperparameter</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T11.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.2.1" style="font-size:90%;">CoLA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T11.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.3.1" style="font-size:90%;">SST-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T11.3.1.1.4"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.4.1" style="font-size:90%;">MRPC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T11.3.1.1.5"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.5.1" style="font-size:90%;">QQP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T11.3.1.1.6"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.6.1" style="font-size:90%;">MNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T11.3.1.1.7"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.7.1" style="font-size:90%;">QNLI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T11.3.1.1.8"><span class="ltx_text ltx_font_bold" id="A5.T11.3.1.1.8.1" style="font-size:90%;">RTE</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A5.T11.3.2.2.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.2.2.1.1" style="font-size:90%;">Batch Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A5.T11.3.2.2.2"><span class="ltx_text" id="A5.T11.3.2.2.2.1" style="font-size:90%;">256</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T11.3.3.3.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.3.3.1.1" style="font-size:90%;">Rank</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T11.3.3.3.2"><span class="ltx_text" id="A5.T11.3.3.3.2.1" style="font-size:90%;">8</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T11.3.4.4.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.4.4.1.1" style="font-size:90%;">Alpha</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T11.3.4.4.2"><span class="ltx_text" id="A5.T11.3.4.4.2.1" style="font-size:90%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T11.3.5.5.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.5.5.1.1" style="font-size:90%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T11.3.5.5.2"><span class="ltx_text" id="A5.T11.3.5.5.2.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T11.3.6.6.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.6.6.1.1" style="font-size:90%;">Warmup Steps</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T11.3.6.6.2"><span class="ltx_text" id="A5.T11.3.6.6.2.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T11.3.7.7.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.7.7.1.1" style="font-size:90%;">Dropout</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T11.3.7.7.2"><span class="ltx_text" id="A5.T11.3.7.7.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T11.3.8.8.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.8.8.1.1" style="font-size:90%;">Learning Rate</span></th>
<td class="ltx_td ltx_align_center" colspan="7" id="A5.T11.3.8.8.2"><span class="ltx_text" id="A5.T11.3.8.8.2.1" style="font-size:90%;">1e-4</span></td>
</tr>
<tr class="ltx_tr" id="A5.T11.3.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A5.T11.3.9.9.1"><span class="ltx_text ltx_font_bold" id="A5.T11.3.9.9.1.1" style="font-size:90%;">Epochs</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T11.3.9.9.2"><span class="ltx_text" id="A5.T11.3.9.9.2.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T11.3.9.9.3"><span class="ltx_text" id="A5.T11.3.9.9.3.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T11.3.9.9.4"><span class="ltx_text" id="A5.T11.3.9.9.4.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T11.3.9.9.5"><span class="ltx_text" id="A5.T11.3.9.9.5.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T11.3.9.9.6"><span class="ltx_text" id="A5.T11.3.9.9.6.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T11.3.9.9.7"><span class="ltx_text" id="A5.T11.3.9.9.7.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T11.3.9.9.8"><span class="ltx_text" id="A5.T11.3.9.9.8.1" style="font-size:90%;">50</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training the GOAT model on seven natural language understanding tasks from the GLUE benchmark.  It lists the batch size, rank, alpha value, optimizer, warmup steps, dropout rate, learning rate, and number of epochs used for each task. This information is crucial for reproducibility and understanding the training process of the GOAT model on these specific datasets.
> <details>
> <summary>read the caption</summary>
> Table 11: Hyperparameters of the natural language understanding tasks for GOAT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T12.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T12.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A5.T12.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.1.1.1.1" style="font-size:90%;">Hyperparameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T12.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T12.3.1.1.2.1" style="font-size:90%;">Natural Language Generation</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T12.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A5.T12.3.2.1.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.2.1.1.1" style="font-size:90%;">Batch Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T12.3.2.1.2"><span class="ltx_text" id="A5.T12.3.2.1.2.1" style="font-size:90%;">32</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T12.3.3.2.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.3.2.1.1" style="font-size:90%;">Rank</span></th>
<td class="ltx_td ltx_align_center" id="A5.T12.3.3.2.2"><span class="ltx_text" id="A5.T12.3.3.2.2.1" style="font-size:90%;">8</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T12.3.4.3.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.4.3.1.1" style="font-size:90%;">Alpha</span></th>
<td class="ltx_td ltx_align_center" id="A5.T12.3.4.3.2"><span class="ltx_text" id="A5.T12.3.4.3.2.1" style="font-size:90%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T12.3.5.4.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.5.4.1.1" style="font-size:90%;">Optimizer</span></th>
<td class="ltx_td ltx_align_center" id="A5.T12.3.5.4.2"><span class="ltx_text" id="A5.T12.3.5.4.2.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T12.3.6.5.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.6.5.1.1" style="font-size:90%;">Warmup Steps</span></th>
<td class="ltx_td ltx_align_center" id="A5.T12.3.6.5.2"><span class="ltx_text" id="A5.T12.3.6.5.2.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T12.3.7.6.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.7.6.1.1" style="font-size:90%;">Dropout</span></th>
<td class="ltx_td ltx_align_center" id="A5.T12.3.7.6.2"><span class="ltx_text" id="A5.T12.3.7.6.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.3.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A5.T12.3.8.7.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.8.7.1.1" style="font-size:90%;">Learning Rate</span></th>
<td class="ltx_td ltx_align_center" id="A5.T12.3.8.7.2"><span class="ltx_text" id="A5.T12.3.8.7.2.1" style="font-size:90%;">2e-5</span></td>
</tr>
<tr class="ltx_tr" id="A5.T12.3.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A5.T12.3.9.8.1"><span class="ltx_text ltx_font_bold" id="A5.T12.3.9.8.1.1" style="font-size:90%;">Epochs</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T12.3.9.8.2"><span class="ltx_text" id="A5.T12.3.9.8.2.1" style="font-size:90%;">5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the hyperparameters used for training the GOAT model on natural language generation tasks.  It details the specific settings for batch size, rank, alpha (a scaling factor), optimizer (AdamW), warmup steps, dropout rate, learning rate, and number of epochs. These parameters were crucial in optimizing the model's performance on these specific tasks.
> <details>
> <summary>read the caption</summary>
> Table 12: Hyperparameters of the natural language generation task for GOAT.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.16894/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.16894/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}