---
title: "Rethinking Diverse Human Preference Learning through Principal Component Analysis"
summary: "Decomposed Reward Models (DRMs) extract diverse human preferences from binary comparisons using PCA, enabling flexible and interpretable LLM alignment."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Rice University",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13131 {{< /keyword >}}
{{< keyword icon="writer" >}} Feng Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13131" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13131" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13131/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current LLM training methods often rely on a single, scalar reward model, which struggles to capture the full complexity and diversity of human preferences. This can lead to biased models that don't meet the needs of all users.  Collecting detailed preference data is also expensive and difficult to scale.

This paper introduces Decomposed Reward Models (DRMs) to address these issues. **DRMs represent human preferences as vectors, and use Principal Component Analysis (PCA) to extract orthogonal basis vectors that capture distinct aspects of preference**. These reward components can be flexibly combined to align with various user needs, offering a scalable and interpretable alternative to traditional methods.  Experiments show that DRMs effectively extract meaningful preference dimensions and adapt to new users at test time without additional training.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DRMs extract diverse human preferences from binary comparisons, avoiding costly fine-grained annotations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Principal Component Analysis (PCA) is used to decompose preferences into interpretable dimensions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DRMs adapt to new users efficiently at test time without retraining, enabling personalized LLM alignment. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it offers a novel and scalable solution for personalized LLM alignment by addressing the limitations of traditional reward models.  **Its interpretable approach using PCA to decompose human preferences opens new avenues for research in multi-objective optimization and personalized AI.**  The findings are highly relevant to current trends in LLM alignment and user personalization, with the potential to improve the effectiveness and fairness of future AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13131/x1.png)

> 🔼 This figure illustrates how Decomposed Reward Models (DRMs) improve upon traditional reward models in capturing human preferences.  The left side shows a standard single-dimensional reward model, where a single score is assigned to a prompt-response pair. This approach can lead to misclassifications because human preferences are multifaceted and complex.  The right side depicts DRMs.  DRMs use Principal Component Analysis (PCA) to decompose preferences into orthogonal dimensions.  Each dimension represents a distinct aspect of human preference (e.g., helpfulness, safety, humor). This allows DRMs to capture the nuances of human judgment more effectively and provides an interpretable representation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of the decomposition pipeline in DRMs. In the original single-dimensional head, a prompt–response pair can be predicted incorrectly. In contrast, DRMs capture preferences along multiple dimensions, aligning more effectively with the complex and multifaceted nature of human preferences.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.1" rowspan="2" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1.1.1">Benchmark</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.2" rowspan="2" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Attribute</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Gemma-2B-RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.1.1.1.1.4" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Llama3-8B-RM</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.1" style="padding:1pt 4.0pt;">Single Head</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.2" style="padding:1pt 4.0pt;">Max Value</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.3" style="padding:1pt 4.0pt;">Max Head</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.4" style="padding:1pt 4.0pt;">Single Head</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.5" style="padding:1pt 4.0pt;">Max Value</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.6" style="padding:1pt 4.0pt;">Max Head</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.1" rowspan="5" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S3.T1.1.1.3.3.1.1.1.1">RewardBench</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.2" style="padding:1pt 4.0pt;">Overall</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.3" style="padding:1pt 4.0pt;">0.733</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.4" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.4.1">0.735</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.5" style="padding:1pt 4.0pt;">head_0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.6" style="padding:1pt 4.0pt;">0.862</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.7" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.7.1">0.869</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3.8" style="padding:1pt 4.0pt;">head_0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.4.4.1" style="padding:1pt 4.0pt;">Chat</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.2" style="padding:1pt 4.0pt;">0.944</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.3.1">0.950</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.4" style="padding:1pt 4.0pt;">head_0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.5" style="padding:1pt 4.0pt;">0.983</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.4.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.6.1">0.986</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4.7" style="padding:1pt 4.0pt;">head_0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.5.5.1" style="padding:1pt 4.0pt;">Chat Hard</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.2" style="padding:1pt 4.0pt;">0.467</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.3.1">0.660</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.4" style="padding:1pt 4.0pt;">head_3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.5" style="padding:1pt 4.0pt;">0.684</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.6.1">0.695</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.7" style="padding:1pt 4.0pt;">head_3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.6.6.1" style="padding:1pt 4.0pt;">Safety</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.6.2" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.6.6.2.1">0.759</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.6.3" style="padding:1pt 4.0pt;">0.745</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.6.4" style="padding:1pt 4.0pt;">head_0, head_8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.6.5" style="padding:1pt 4.0pt;">0.868</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.6.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.6.6.6.1">0.886</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.6.7" style="padding:1pt 4.0pt;">head_0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.7.7.1" style="padding:1pt 4.0pt;">Reasoning</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.7.2" style="padding:1pt 4.0pt;">0.759</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.7.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.3.1">0.821</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.7.4" style="padding:1pt 4.0pt;">head_32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.7.5" style="padding:1pt 4.0pt;">0.912</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.7.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.6.1">0.923</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.7.7" style="padding:1pt 4.0pt;">head_0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.1.8.8.1" rowspan="6" style="padding:1pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.8.1.1">
<span class="ltx_p" id="S3.T1.1.1.8.8.1.1.1" style="width:62.6pt;"><span class="ltx_text" id="S3.T1.1.1.8.8.1.1.1.1">RPR</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.8.8.2" style="padding:1pt 4.0pt;">Overall</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.8.8.3" style="padding:1pt 4.0pt;">0.714</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.8.8.4" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.8.4.1">0.735</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.8.8.5" style="padding:1pt 4.0pt;">head_0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.8.8.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.8.6.1">0.853</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.8.8.7" style="padding:1pt 4.0pt;">0.839</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.8.8" style="padding:1pt 4.0pt;">head_0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.9.9.1" style="padding:1pt 4.0pt;">User-Friendliness</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9.9.2" style="padding:1pt 4.0pt;">0.506</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9.9.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.9.3.1">0.798</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9.9.4" style="padding:1pt 4.0pt;">head_9, head_26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9.9.5" style="padding:1pt 4.0pt;">0.719</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9.9.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.9.6.1">0.899</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.7" style="padding:1pt 4.0pt;">head_10</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.10.10.1" style="padding:1pt 4.0pt;">Narrative &amp; Storytelling</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.10.10.2" style="padding:1pt 4.0pt;">0.662</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.10.10.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.10.10.3.1">0.825</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.10.10.4" style="padding:1pt 4.0pt;">head_12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.10.10.5" style="padding:1pt 4.0pt;">0.838</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.10.10.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.10.10.6.1">0.912</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.7" style="padding:1pt 4.0pt;">head_5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.11.11.1" style="padding:1pt 4.0pt;">Linguistic Creativity</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.11.11.2" style="padding:1pt 4.0pt;">0.817</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.11.11.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.3.1">0.885</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.11.11.4" style="padding:1pt 4.0pt;">head_12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.11.11.5" style="padding:1pt 4.0pt;">0.875</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.11.11.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.6.1">0.981</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.11.7" style="padding:1pt 4.0pt;">head_37</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.12.12.1" style="padding:1pt 4.0pt;">Scientific Rigor</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.12.12.2" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.12.2.1">0.881</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.12.12.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.12.3.1">0.881</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.12.12.4" style="padding:1pt 4.0pt;">head_34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.12.12.5" style="padding:1pt 4.0pt;">0.940</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.12.12.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.12.12.6.1">0.964</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.12.12.7" style="padding:1pt 4.0pt;">head_0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.1.1.13.13.1" style="padding:1pt 4.0pt;">Humor &amp; Entertainment</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.13.13.2" style="padding:1pt 4.0pt;">0.690</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.13.13.3" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.13.3.1">0.964</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.13.13.4" style="padding:1pt 4.0pt;">head_9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.13.13.5" style="padding:1pt 4.0pt;">0.893</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.13.13.6" style="padding:1pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.13.6.1">0.952</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.13.13.7" style="padding:1pt 4.0pt;">head_37, head_74</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of the top 100 decomposed reward heads derived from the Decomposed Reward Models (DRMs) method.  It compares their performance against a single-head baseline model across multiple attributes from two benchmark datasets (RewardBench and RPR). For each attribute, the table indicates the maximum score achieved by any of the top 100 DRMs heads ('Max Value') and the index of the head that achieved this maximum score ('Max Head').  The 'Overall' column represents the average performance across all attributes for each model (single-head baseline and the top performing DRM heads). The table helps to demonstrate the diversity and effectiveness of DRMs in capturing different facets of human preferences.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of top 100 decomposed reward heads. “Single Head' is the trained single-head baseline. “Max Value' refers to the highest score achieved for each attribute, while “Max Head' indicates which specific head attains this maximum score. “Overall' represents the average accuracy of a single head across all attributes.
> </details>





### In-depth insights


#### Diverse Preference
The concept of "Diverse Preference" in the context of AI model training highlights the **complexity and heterogeneity of human preferences**.  Simple scalar reward models often fail to capture this nuance, leading to AI systems that cater to the majority while potentially marginalizing underrepresented groups or specific needs.  **A key challenge** lies in effectively gathering and representing this diversity, as traditional fine-grained annotation methods are expensive and difficult to scale.  **Novel approaches**, such as the Decomposed Reward Models (DRMs) presented in the research paper, seek to overcome these limitations by extracting multiple dimensions of preference from readily available binary comparison data.  These decomposed reward models allow for the creation of **more nuanced and interpretable AI systems**, capable of adapting to individual preferences without needing extensive retraining.  Further research is crucial to better understand the underlying structure of human preferences, enabling the development of **AI systems that are truly fair, inclusive, and customizable** to diverse user needs.

#### PCA in Reward
The application of Principal Component Analysis (PCA) to reward modeling in reinforcement learning (RL) offers a compelling approach to address the inherent complexity and diversity of human preferences.  By representing preferences as vectors, **PCA allows for the extraction of orthogonal basis vectors, each capturing a distinct aspect of human preference**. This decomposition is crucial as traditional scalar reward models often fail to capture the full spectrum of human preferences, potentially marginalizing underrepresented groups. **The resulting decomposed reward models (DRMs) enable flexible combination of these basis vectors to adapt to individual user preferences**, offering an interpretable and scalable alternative.  **PCA's ability to identify principal components offers significant advantages in terms of interpretability and efficiency**.  Instead of learning numerous individual reward parameters, DRMs leverage PCA to achieve a more compact and efficient representation of human preferences. Furthermore, **the orthogonal nature of the extracted components allows for easier analysis and interpretation of the various dimensions of human evaluation**. This is a key step towards building more personalized and transparent AI systems.

#### DRM Framework
The Decomposed Reward Model (DRM) framework offers a novel approach to learning diverse human preferences for Large Language Model (LLM) alignment.  Instead of relying on a single scalar reward, **DRMs leverage Principal Component Analysis (PCA) to decompose human preferences into orthogonal basis vectors**. Each vector captures a distinct aspect of preference, allowing for a more nuanced and interpretable representation.  This multi-dimensional approach addresses limitations of traditional methods that struggle with the complexity and diversity of human preferences, often prioritizing majority viewpoints. **The framework's strength lies in its ability to extract diverse preference dimensions from readily available binary comparison data**, avoiding the cost and scalability issues associated with collecting fine-grained preference annotations.  Furthermore, **DRMs enable flexible adaptation to individual users at test time** by linearly combining the basis vectors with weights optimized for specific user preferences. This adaptability eliminates the need for retraining with new user data.  In essence, DRMs provide a powerful, **interpretable, and scalable method for personalized LLM alignment**, opening avenues for improving both performance and user satisfaction.

#### Test-Time Adaption
The concept of 'Test-Time Adaptation' in the context of personalized large language model (LLM) alignment is crucial.  It addresses the challenge of adapting a pre-trained model to individual user preferences **without requiring additional training**. This is a significant advantage, as collecting and annotating large amounts of personalized data for training is expensive and time-consuming.  The approach described leverages a decomposed reward model, extracting diverse aspects of preference via Principal Component Analysis (PCA).  At test time, a small amount of user data is used to find the optimal weighting of these pre-learned preference components. This linear combination efficiently tailors the model's behavior to the new user, making the system more personalized and adaptable.  **The effectiveness hinges on the quality and diversity of the initial decomposed reward vectors**, allowing flexible adaptation to novel user preferences with minimal overhead. This method also increases **interpretability**, as the weighting of individual preference aspects can be analyzed to provide insights into the user's values.

#### Interpretability
The concept of interpretability in the context of AI models, especially large language models (LLMs), is crucial for building trust and ensuring responsible use.  **The paper focuses on enhancing interpretability by decomposing complex human preferences into multiple orthogonal basis vectors using Principal Component Analysis (PCA).** This approach allows for a more nuanced understanding of preferences, moving beyond a single scalar reward to capture multiple facets (e.g., helpfulness, safety, humor).  **Each vector represents a distinct aspect of preference, making the model's decision-making process more transparent.**  The linear combination of these vectors allows flexibility in adapting to different user needs without retraining, further enhancing interpretability.  While the method itself uses PCA, a well-understood technique, its application to reward modeling offers **novel insight into the structure of human preferences and creates a more interpretable model**. However, the sheer number of resulting vectors might present a challenge, suggesting future work could focus on automated interpretation of these components and identifying which ones are most meaningful.  **The emphasis on explainability complements the pursuit of personalization,** highlighting the potential for more tailored and trustworthy AI systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13131/x2.png)

> 🔼 This figure visualizes the weight distributions of the top 100 most significant decomposed reward heads obtained from the Decomposed Reward Model (DRM) framework. The analysis focuses on the RewardBench dataset and utilizes Gemma-2B-RM as the underlying reward model backbone. Each decomposed head represents a distinct aspect of human preferences, and the weights indicate the relative importance of each head in determining overall reward. The graph provides insights into how these different preference aspects are weighted for various task categories within RewardBench.
> <details>
> <summary>read the caption</summary>
> Figure 2: Weight distributions of the top 100 decomposed reward heads on RewardBench for DRMs using Gemma-2B-RM as the backbone.
> </details>



![](https://arxiv.org/html/2502.13131/x3.png)

> 🔼 This figure displays a correlation matrix visualizing the relationships between different attributes within the RewardBench and RPR datasets. Each cell in the matrix represents the Pearson correlation coefficient between two attributes, indicating the strength and direction of their linear association.  The feature extractor used to generate this correlation matrix is the Gemma-2B-RM model.  Strong positive correlations suggest that these attributes frequently co-occur, while negative correlations indicate that they tend not to occur together. The magnitude of the correlation coefficient, ranging from -1 to +1, represents the strength of the relationship. This visualization helps to elucidate the underlying structure and dependencies of human preferences as captured by the DRMs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Correlation among weight vectors for DRMs. The feature extractor is Gemma-2B-RM.
> </details>



![](https://arxiv.org/html/2502.13131/x4.png)

> 🔼 This figure displays ablation studies on the Gemma-2B reward model to determine optimal hyperparameters for test-time adaptation.  It shows how the model's performance changes based on two key factors: 1) the size of the adaptation dataset used to fine-tune the model to a new user's preferences and 2) the number of reward heads used by the model. The plots visualize how accuracy on the RewardBench and RPR benchmarks change as these parameters vary.  The results reveal the effects of dataset size and the number of heads on performance, indicating optimal values for achieving the best test-time adaptation results.
> <details>
> <summary>read the caption</summary>
> Figure 4: Ablations on the adaptation set size and number of reward heads for test-time adaptation based on Gemma-2B-RM.
> </details>



![](https://arxiv.org/html/2502.13131/x5.png)

> 🔼 This figure displays the results of ablation studies conducted on the Llama3-8B-RM model to assess the impact of adaptation set size and the number of reward heads on the test-time adaptation performance. The left panel illustrates the effect of varying the adaptation set size (n) on the overall accuracy for both RewardBench and RPR benchmarks across different numbers of reward heads. The right panel shows how accuracy varies with the number of reward heads for a fixed adaptation set size.  These experiments reveal the optimal balance between adaptation set size, number of reward heads, and model performance during test-time adaptation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablations on the adaptation set size and number of reward heads for test-time adaptation on Llama3-8B-RM.
> </details>



![](https://arxiv.org/html/2502.13131/x6.png)

> 🔼 This figure visualizes the weight distribution of the top 100 most significant decomposed reward heads in the Decomposed Reward Models (DRMs) framework.  These heads are ranked by their eigenvalues, representing the strength of their correlation with human preferences.  The analysis is performed using the RPR dataset (Reasonable Preference Reversal), and Gemma-2B-RM serves as the backbone language model. Each line in the graph corresponds to a specific attribute from the RPR dataset. The x-axis shows the head index (ranking), while the y-axis shows the weight assigned to that particular head in relation to the corresponding attribute. This visualization helps understand which decomposed reward heads are most influential in capturing different aspects of human preferences within the RPR dataset when using Gemma-2B-RM as the backbone model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Weight distributions of the top 100 decomposed reward heads on RPR for DRMs using Gemma-2B-RM as the backbone.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.1.1.1.1.1">
<span class="ltx_p" id="S4.T2.3.1.1.1.1.1.1" style="width:69.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.1.1.1.1">Base Model</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block" id="S4.T2.3.1.1.1.3.1">
<span class="ltx_p" id="S4.T2.3.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.3.1.1.1">User</span></span>
<span class="ltx_p" id="S4.T2.3.1.1.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.3.1.2.1">Friendliness</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block" id="S4.T2.3.1.1.1.4.1">
<span class="ltx_p" id="S4.T2.3.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.4.1.1.1">Narrative</span></span>
<span class="ltx_p" id="S4.T2.3.1.1.1.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.4.1.2.1">&amp; Storytelling</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block" id="S4.T2.3.1.1.1.5.1">
<span class="ltx_p" id="S4.T2.3.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.5.1.1.1">Linguistic</span></span>
<span class="ltx_p" id="S4.T2.3.1.1.1.5.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.5.1.2.1">Creativity</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block" id="S4.T2.3.1.1.1.6.1">
<span class="ltx_p" id="S4.T2.3.1.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.6.1.1.1">Scientific</span></span>
<span class="ltx_p" id="S4.T2.3.1.1.1.6.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.6.1.2.1">Rigor</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block" id="S4.T2.3.1.1.1.7.1">
<span class="ltx_p" id="S4.T2.3.1.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.7.1.1.1">Humor</span></span>
<span class="ltx_p" id="S4.T2.3.1.1.1.7.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.7.1.2.1">&amp; Entertainment</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.8.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1.2.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.2.1.1" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.1.2.1.1.1">
<span class="ltx_p" id="S4.T2.3.1.2.1.1.1.1" style="width:69.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.2.1.1.1.1.1">Gemma-2B-RM</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">Single Head</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.506</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">0.662</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;">0.817</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;">0.881</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;">0.690</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.1.8" style="padding-top:1pt;padding-bottom:1pt;">0.714</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Shared-Base</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.517(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.688(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.817(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;">0.881(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;">0.690(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.2.7" style="padding-top:1pt;padding-bottom:1pt;">0.721(0.000)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Uniform)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.713(0.062)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.782(0.068)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.920(0.045)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.907(0.043)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;">0.907(0.026)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.3.7" style="padding-top:1pt;padding-bottom:1pt;">0.848(0.024)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Gaussian)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.582(0.039)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.760(0.060)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.823(0.063)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.873(0.025)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;">0.817(0.053)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4.7" style="padding-top:1pt;padding-bottom:1pt;">0.771(0.022)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6.5">
<th class="ltx_td ltx_align_top ltx_th ltx_th_row" id="S4.T2.3.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.5.2.1" style="background-color:#ECECEC;">DRM (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.5.3.1" style="background-color:#ECECEC;">0.789(0.062)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.5.4.1" style="background-color:#ECECEC;">0.871(0.033)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.5.5.1" style="background-color:#ECECEC;">0.953(0.034)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.5.6.1" style="background-color:#ECECEC;">0.907(0.019)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.5.7.1" style="background-color:#ECECEC;">0.975(0.017)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.5.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.5.8.1" style="background-color:#ECECEC;">0.900(0.017)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7.6">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.7.6.1" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.1.7.6.1.1">
<span class="ltx_p" id="S4.T2.3.1.7.6.1.1.1" style="width:69.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.6.1.1.1.1">Llama3-8B-RM</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">Single Head</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.685</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.825</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.846</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.964</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.905</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.7.6.8" style="padding-top:1pt;padding-bottom:1pt;">0.844</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">Shared-Base</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.674(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.825(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.827(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.964(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">0.881(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.8.7.7" style="padding-top:1pt;padding-bottom:1pt;">0.832(0.000)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Uniform)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.616(0.104)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.860(0.037)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.798(0.103)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">0.958(0.007)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">0.906(0.031)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.9.8.7" style="padding-top:1pt;padding-bottom:1pt;">0.823(0.041)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Gaussian)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">0.730(0.100)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.892(0.027)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.887(0.055)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">0.956(0.008)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">0.919(0.032)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.10.9.7" style="padding-top:1pt;padding-bottom:1pt;">0.875(0.028)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.11.10">
<th class="ltx_td ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.10.2.1" style="background-color:#ECECEC;">DRM (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.10.3.1" style="background-color:#ECECEC;">0.812(0.063)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.10.4.1" style="background-color:#ECECEC;">0.946(0.029)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.10.5.1" style="background-color:#ECECEC;">0.945(0.015)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.10.6.1" style="background-color:#ECECEC;">0.969(0.010)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.10.7.1" style="background-color:#ECECEC;">0.991(0.011)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.11.10.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.11.10.8.1" style="background-color:#ECECEC;">0.931(0.016)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparative analysis of different reward model approaches on the Reasonable Preference Reversal (RPR) benchmark. The results are based on five data points (n=5) in the test set and 20 different adaptation sets.  The models evaluated include a single-head reward model, a shared-base reward model which leverages a frozen prior network and multiple learnable heads, and two randomly generated multi-head baselines.  Except for the single-head model, all approaches utilize the HyRe test-time adaptation method. The table reports the average performance across all attributes and shows the standard deviation calculated from the twenty different sampled adaptation sets.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation Results on RPR (n=5𝑛5n=5italic_n = 5). We compare DRMs with trained baselines (“Single Head' and “Shared-Base'), and randomly generated multi-head baselines (“Random'). Except for single-head baseline, other methods use HyRe for test-time adaptation. Standard deviation over 20 sampled adaptation sets are reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.1.1.1">
<span class="ltx_p" id="S4.T3.3.1.1.1.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.1.1.1.1">Base Model</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.3.1">Chat</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.4.1">Chat Hard</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.5.1">Safety</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.6.1">Reasoning</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.7.1">Overall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.1.2.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.1.2.1.1" rowspan="5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.2.1.1.1">
<span class="ltx_p" id="S4.T3.3.1.2.1.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.1.1.1.1.1">Gemma-2B-RM</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">Single Head</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.944</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">0.467</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;">0.759</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;">0.759</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.1.7" style="padding-top:1pt;padding-bottom:1pt;">0.733</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Shared-Base</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.947(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.476(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.765(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;">0.774(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;">0.740(0.000)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Uniform)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.940(0.005)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.567(0.029)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.4.3.4.1">0.800(0.010)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.843(0.019)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;">0.787(0.009)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Gaussian)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.951(0.005)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.573(0.033)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.781(0.015)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.839(0.021)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;">0.786(0.008)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T3.3.1.6.5.1.1" style="background-color:#ECECEC;">DRMs(Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.5.2.1" style="background-color:#ECECEC;">0.953(0.003)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.5.3.1" style="background-color:#ECECEC;">0.650(0.028)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T3.3.1.6.5.4.1" style="background-color:#ECECEC;">0.783(0.030)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.5.5.1" style="background-color:#ECECEC;">0.872(0.025)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.5.6.1" style="background-color:#ECECEC;">0.814(0.013)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7.6">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.1.7.6.1" rowspan="4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.7.6.1.1">
<span class="ltx_p" id="S4.T3.3.1.7.6.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.6.1.1.1.1">Llama3-8B-RM</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">Single Head</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.6.3.1">0.989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.684</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.891</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">0.920</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.7.6.7" style="padding-top:1pt;padding-bottom:1pt;">0.871</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">Shared-Base</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.986(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.684(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.895(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.927(0.000)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">0.873(0.000)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Uniform)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.985(0.003)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.623(0.089)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.9.8.4.1">0.903(0.010)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">0.915(0.014)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">0.857(0.023)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">Random (Gaussian)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">0.982(0.004)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.663(0.096)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.889(0.009)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.10.9.5.1">0.936(0.011)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.9.6" style="padding-top:1pt;padding-bottom:1pt;">0.868(0.024)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.11.10">
<th class="ltx_td ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T3.3.1.11.10.2.1" style="background-color:#ECECEC;">DRMs(Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T3.3.1.11.10.3.1" style="background-color:#ECECEC;">0.986(0.002)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.11.10.4.1" style="background-color:#ECECEC;">0.755(0.032)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T3.3.1.11.10.5.1" style="background-color:#ECECEC;">0.885(0.036)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.10.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T3.3.1.11.10.6.1" style="background-color:#ECECEC;">0.914(0.036)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.10.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.11.10.7.1" style="background-color:#ECECEC;">0.885(0.012)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment comparing different methods for adapting to user preferences, specifically focusing on the performance of Decomposed Reward Models (DRMs).  The experiment uses two different base language models and evaluates the methods across various attributes within two benchmark datasets, RewardBench and RPR.  The performance metrics reflect accuracy scores for each attribute, providing a detailed comparison of DRMs against other approaches like single-head reward models, shared-base reward models, and random reward models. The 'n=15' indicates that each test involved a small adaptation dataset of 15 samples.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation Results (n=15𝑛15n=15italic_n = 15), comparing different methods across two base models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.5.1.1.1.1" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.1.1">Benchmark</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.5.1.1.1.2" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.2.1">Attributes</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.5.1.1.1.3" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.3.1">Single Head</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.5.1.1.1.4" style="padding:1pt 8.0pt;">
<span class="ltx_inline-block" id="S4.T4.5.1.1.1.4.1">
<span class="ltx_p" id="S4.T4.5.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.4.1.1.1">Random</span></span>
<span class="ltx_p" id="S4.T4.5.1.1.1.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.4.1.2.1">(Uniform)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.1.1.1.5" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.5.1">DRM(Ours)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.2.2" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.1.2.2.1" rowspan="5" style="background-color:#FFFFFF;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.1.1" style="background-color:#FFFFFF;">RewardBench</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.1.2.2.2" style="padding:1pt 8.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.2.2.1" style="background-color:#ECECEC;">Overall</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.1.2.2.3" style="padding:1pt 8.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.2.3.1" style="background-color:#ECECEC;">0.759</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.1.2.2.4" style="padding:1pt 8.0pt;"><span class="ltx_text" id="S4.T4.5.1.2.2.4.1" style="background-color:#ECECEC;">0.770</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.2.2.5" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.5.1" style="background-color:#ECECEC;">0.830</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.3.3.1" style="padding:1pt 8.0pt;">Chat</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.3.3.2" style="padding:1pt 8.0pt;">0.905</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.3.3.3" style="padding:1pt 8.0pt;">0.897</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.3.3.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.3.3.4.1">0.920</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.4.4.1" style="padding:1pt 8.0pt;">Chat Hard</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.4.4.2" style="padding:1pt 8.0pt;">0.621</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.4.4.3" style="padding:1pt 8.0pt;">0.600</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.4.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.4.4.4.1">0.692</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.5.5.1" style="padding:1pt 8.0pt;">Safety</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.5.5.2" style="padding:1pt 8.0pt;">0.699</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.5.5.3" style="padding:1pt 8.0pt;">0.753</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.5.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.5.5.4.1">0.786</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.6.6.1" style="padding:1pt 8.0pt;">Reasoning</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.6.6.2" style="padding:1pt 8.0pt;">0.813</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.6.6.3" style="padding:1pt 8.0pt;">0.832</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.6.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.6.6.4.1">0.920</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.7.7" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.5.1.7.7.1" rowspan="6" style="background-color:#FFFFFF;padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.7.7.1.1" style="background-color:#FFFFFF;">RPR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.5.1.7.7.2" style="padding:1pt 8.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.7.2.1" style="background-color:#ECECEC;">Overall</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.1.7.7.3" style="padding:1pt 8.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.7.3.1" style="background-color:#ECECEC;">0.746</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.1.7.7.4" style="padding:1pt 8.0pt;"><span class="ltx_text" id="S4.T4.5.1.7.7.4.1" style="background-color:#ECECEC;">0.630</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.7.7.5" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.7.7.5.1" style="background-color:#ECECEC;">0.796</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.8.8.1" style="padding:1pt 8.0pt;">User-Friendliness</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.8.8.2" style="padding:1pt 8.0pt;">0.640</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.8.8.3" style="padding:1pt 8.0pt;">0.555</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.8.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.8.8.4.1">0.657</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.9.9.1" style="padding:1pt 8.0pt;">Narrative &amp; Storytelling</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.9.9.2" style="padding:1pt 8.0pt;">0.713</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.9.9.3" style="padding:1pt 8.0pt;">0.610</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.9.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.9.9.4.1">0.763</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.10.10.1" style="padding:1pt 8.0pt;">Linguistic Creativity</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.10.10.2" style="padding:1pt 8.0pt;">0.808</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.10.10.3" style="padding:1pt 8.0pt;">0.595</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.10.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.10.10.4.1">0.843</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.11.11.1" style="padding:1pt 8.0pt;">Scientific Rigor</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.11.11.2" style="padding:1pt 8.0pt;">0.762</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.11.11.3" style="padding:1pt 8.0pt;">0.661</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.11.11.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.11.11.4.1">0.806</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.5.1.12.12.1" style="padding:1pt 8.0pt;">Humor &amp; Entertainment</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.5.1.12.12.2" style="padding:1pt 8.0pt;">0.798</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.5.1.12.12.3" style="padding:1pt 8.0pt;">0.744</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.12.12.4" style="padding:1pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.12.12.4.1">0.905</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the performance comparison of Decomposed Reward Models (DRMs) and a single-head reward model on the instruction-tuned language model gemma-2-9b-it.  The evaluation is performed on two benchmarks: RewardBench and Reasonable Preference Reversal (RPR). For both benchmarks, the test dataset size is controlled: 15 samples for RewardBench and 5 for RPR.  This setup is consistent with earlier experiments. The table shows the performance of DRMs compared to a standard single-head reward model that's trained on the same data as DRMs. This allows for direct comparison of model performance and highlights the effectiveness of the DRMs approach.  The results are particularly pertinent for understanding the performance of DRMs when applied to a model different from those used in the primary experiments, in this case, an instruction-tuned language model.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of DRMs on instruction-tuned model gemma-2-9b-it. Single head baseline is trained with the same dataset used for DRMs. Aligned with the previous setting, we use n=15𝑛15n=15italic_n = 15 and n=5𝑛5n=5italic_n = 5 for RewardBench and RPR respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13131/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13131/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}