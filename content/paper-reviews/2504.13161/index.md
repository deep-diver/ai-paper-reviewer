---
title: "CLIMB: CLustering-based Iterative Data Mixture Bootstrapping for Language Model Pre-training"
summary: "CLIMB: An automated data mixture bootstrapping framework for language model pre-training via clustering."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 NVIDIA",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13161 {{< /keyword >}}
{{< keyword icon="writer" >}} Shizhe Diao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13161" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13161" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13161/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Pre-training datasets for LLMs often lack inherent domain divisions, making it challenging to identify an optimal data mixture. Datasets like Common Crawl don't include explicit domain labels, while curated datasets are labor-intensive. Existing methods struggle to balance general knowledge with domain expertise, leading to inefficient use of high-value data. Optimizing data mixtures for both general and domain-specific tasks remains a challenge because large-scale datasets lack explicit labels. Even with curated datasets, selecting an optimal mixture is non-trivial due to the complex relationship between dataset composition and model performance. 



To address these issues, this paper introduces a novel framework called **CLIMB** (CLustering-based Iterative Data Mixture Bootstrapping). **CLIMB** automates the discovery, evaluation, and refinement of data mixtures in a pre-training setting. It embeds and clusters large-scale datasets in a semantic space and iteratively searches for optimal mixtures using a smaller proxy model and a predictor. **CLIMB** achieves state-of-the-art performance on reasoning tasks and surpasses the state-of-the-art Llama-3.2-1B. The authors also introduces ClimbLab and ClimbMix for data mixing research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CLIMB: A novel framework for automated data mixture optimization during pre-training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CLIMB iteratively refines data mixtures, optimizing for both diversity and domain relevance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CLIMB achieves state-of-the-art performance with a 1B model, surpassing Llama-3.2-1B by 2.0%. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an innovative approach to optimizing data mixtures, paving the way for developing more efficient and specialized language models. By automating the data mixture refinement process, this research reduces reliance on manual curation and opens up new avenues for efficient pre-training and domain adaptation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13161/x1.png)

> 🔼 The figure illustrates the performance scaling of a 1B parameter language model trained using different datasets, including ClimbMix, ClimbLab, Nemotron-CC-HQ, SmolLM, DCLM-baseline, and FineWeb-Edu.  The x-axis represents the number of training tokens (in billions), and the y-axis shows the average performance across 12 downstream benchmark tasks.  The graph demonstrates that the model trained with ClimbMix exhibits superior performance scaling compared to models trained with other datasets, indicating that ClimbMix is a more efficient dataset for pre-training language models.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Pre-training a 1B model on ClimbMix shows better scaling effects than training on other datasets. We measure the average performance on 12 downstream benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.1.1" style="font-size:80%;">Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.2.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.6.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.3.1" style="font-size:80%;">Proxy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.4.1" style="font-size:80%;">wiki</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.6.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.5.1" style="font-size:80%;">lambda</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.6.1" style="font-size:80%;">piqa</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.7.1" style="font-size:80%;">arc_c</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.8.1" style="font-size:80%;">arc_e</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.9.1" style="font-size:80%;">hellaswag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.10.1" style="font-size:80%;">winogrande</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.11.1" style="font-size:80%;">siqa</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.1.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.12.1" style="font-size:80%;">avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.6.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.2.1.1" rowspan="5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.1.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.2.1" style="font-size:80%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.2.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.4.1" style="font-size:80%;">22.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.2.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.5.1" style="font-size:80%;">8.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.6.1" style="font-size:80%;">70.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.7.1" style="font-size:80%;">28.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.8.1" style="font-size:80%;">56.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.9.1" style="font-size:80%;">51.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.10.1" style="font-size:80%;">54.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.11.1" style="font-size:80%;">40.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.2.1.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.2.1.12.1" style="font-size:80%;">50.11</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.3.2">
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.1.1" style="font-size:80%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.3.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.3.1" style="font-size:80%;">20.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.3.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.4.1" style="font-size:80%;">9.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.5.1" style="font-size:80%;">71.16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.6.1" style="font-size:80%;">30.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.7.1" style="font-size:80%;">62.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.8.1" style="font-size:80%;">52.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.9.1" style="font-size:80%;">55.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.10.1" style="font-size:80%;">41.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.3.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.3.2.11.1" style="font-size:80%;">52.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.4.3">
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.1.1" style="font-size:80%;">Doremi</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.4.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.3.1" style="font-size:80%;">19.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.4.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.4.1" style="font-size:80%;">10.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.5.1" style="font-size:80%;">70.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.6.1" style="font-size:80%;">33.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.7.1" style="font-size:80%;">66.41</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.8.1" style="font-size:80%;">52.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.9.1" style="font-size:80%;">55.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.10.1" style="font-size:80%;">41.86</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.4.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.4.3.11.1" style="font-size:80%;">53.38</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.5.4">
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.1.1" style="font-size:80%;">RegMix</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.5.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.3.1" style="font-size:80%;">20.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.5.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.4.1" style="font-size:80%;">10.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.5.1" style="font-size:80%;">71.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.6.1" style="font-size:80%;">33.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.7.1" style="font-size:80%;">66.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.8.1" style="font-size:80%;">53.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.9.1" style="font-size:80%;">55.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.10.1" style="font-size:80%;">42.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.5.4.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.5.4.11.1" style="font-size:80%;">53.78</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.5">
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.6.5.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.6.5.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.6.5.3.1" style="font-size:80%;">19.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.6.5.4.1" style="font-size:80%;">9.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.5.5.1" style="font-size:80%;">72.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.5.6.1" style="font-size:80%;">34.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.5.7.1" style="font-size:80%;">67.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.5.8.1" style="font-size:80%;">55.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.5.9.1" style="font-size:80%;">56.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.5.10.1" style="font-size:80%;">42.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.5.11.1" style="font-size:80%;">54.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.7.6.1" rowspan="5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.1.1" style="font-size:80%;">1B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.2.1" style="font-size:80%;">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.7.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.4.1" style="font-size:80%;">17.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.7.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.5.1" style="font-size:80%;">6.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.6.1" style="font-size:80%;">73.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.7.1" style="font-size:80%;">34.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.8.1" style="font-size:80%;">66.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.9.1" style="font-size:80%;">62.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.10.1" style="font-size:80%;">59.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.11.1" style="font-size:80%;">41.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.7.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.7.6.12.1" style="font-size:80%;">56.46</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.8.7">
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.1.1" style="font-size:80%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.8.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.3.1" style="font-size:80%;">17.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.8.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.4.1" style="font-size:80%;">6.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.5.1" style="font-size:80%;">74.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.6.1" style="font-size:80%;">37.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.7.1" style="font-size:80%;">70.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.8.1" style="font-size:80%;">62.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.9.1" style="font-size:80%;">60.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.10.1" style="font-size:80%;">42.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.8.7.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.8.7.11.1" style="font-size:80%;">57.93</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.9.8">
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.1.1" style="font-size:80%;">Doremi</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.9.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.3.1" style="font-size:80%;">15.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.9.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.4.1" style="font-size:80%;">6.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.5.1" style="font-size:80%;">74.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.6.1" style="font-size:80%;">40.01</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.7.1" style="font-size:80%;">72.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.8.1" style="font-size:80%;">63.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.9.1" style="font-size:80%;">61.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.10.1" style="font-size:80%;">43.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.8.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.9.8.11.1" style="font-size:80%;">59.16</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.10.9">
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.1.1" style="font-size:80%;">RegMix</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.10.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.3.1" style="font-size:80%;">16.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.10.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.4.1" style="font-size:80%;">6.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.5.1" style="font-size:80%;">75.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.6.1" style="font-size:80%;">40.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.7.1" style="font-size:80%;">71.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.8.1" style="font-size:80%;">64.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.9.1" style="font-size:80%;">62.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.10.1" style="font-size:80%;">42.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.10.9.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.10.9.11.1" style="font-size:80%;">59.37</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.11.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.11.10.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.6.11.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.11.10.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.11.10.3.1" style="font-size:80%;">15.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.6.11.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.11.10.4.1" style="font-size:80%;">6.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.11.10.5.1" style="font-size:80%;">75.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.11.10.6.1" style="font-size:80%;">40.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.11.10.7.1" style="font-size:80%;">72.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.11.10.8.1" style="font-size:80%;">66.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.11.10.9.1" style="font-size:80%;">63.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.11.10.10.1" style="font-size:80%;">43.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.11.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.11.10.11.1" style="font-size:80%;">60.41</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different data mixture methods for language model pre-training.  Models were trained on 40 billion tokens.  The 'Base' model represents the initial model's performance before any data mixture optimization.  Perplexity scores are reported for 'wiki' and 'lambda' datasets, while accuracy scores are given for 'arc_e', 'winogrande', 'siqa', 'piqa', 'arc_c', and 'hellaswag'. The best performing method for each metric is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with data mixture methods. All models are continuously trained on the same number of tokens (40B). The best results are highlighted in bold. Base refers to the model before training and serves as the starting point for all other models. We report perplexity for wiki and lambda, accuracy for arc_e, winogrande, siqa, accuracy_norm for piqa, arc_c, hellaswag.
> </details>





### In-depth insights


#### Iterative Mixing
**Iterative mixing** refines data mixtures progressively during training. Unlike static approaches, it adjusts mixtures dynamically using feedback from proxy models. This balances exploration and exploitation, focusing compute on promising regions. This approach reduces computational overhead and improves overall model performance by emphasizing effective data combinations.

#### CLIMB: Auto-Mix
**CLIMB's automated data mixing** (a hypothetical feature) could significantly improve language model pre-training. By automatically discovering, evaluating, and refining data mixtures, it could address the challenges of **balancing general knowledge with domain expertise**. A robust 'Auto-Mix' component would require a sophisticated approach, potentially involving clustering, proxy models, and iterative refinement. This could lead to **more efficient utilization of data** and improved model performance on various tasks, making pre-training less reliant on manual curation and more adaptable to specific needs.

#### Cluster Insights
**Cluster analysis** reveals a nuanced relationship between data composition and model performance. High similarity to target tasks doesn't guarantee optimal results; diversity is crucial. Some clusters, though initially seemingly irrelevant, gain importance during training, highlighting the adaptive nature of effective data mixtures. It underscores the need for a sophisticated approach beyond simple similarity metrics when curating training data. By doing so it highlights the intricate interplay within data mixtures.

#### Scalable Mixing
While the paper does not explicitly use the term 'Scalable Mixing,' the core contribution, CLIMB, addresses scalability challenges in pre-training data mixture optimization. The iterative bootstrapping approach efficiently searches for optimal mixtures, using proxy models to reduce the computational burden of evaluating numerous data combinations. CLIMB balances exploration and exploitation, progressively refining the search space. **This is vital for scalability**, as brute-force approaches are infeasible with large datasets. The use of clustering further aids scalability by grouping similar data points, thus reducing the complexity of the mixing problem. Overall, the framework offers a **scalable solution for data mixture** that is crucial for effective LLM pre-training.

#### ClimbMix Dataset
**ClimbMix** is introduced as a new, high-quality dataset created by the authors, representing a key outcome of their CLIMB framework. It's derived by filtering and optimizing existing datasets using the CLIMB approach, **aiming for superior performance under a constrained token budget**. Unlike training models from scratch, it offers pre-training from scratch, demanding a balanced cluster distribution. This contrasts with continuous pre-training that builds on a foundation, focusing learning on key domains while ensuring efficient pre-training. The optimal data mixture weights identified in this setting show **how it significantly outperforms models trained on other existing datasets**, underscoring CLIMB's effectiveness in curating valuable pre-training data.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13161/x2.png)

> 🔼 This figure illustrates CLIMB's ability to optimize data mixtures for improved model performance.  It shows how CLIMB selects an optimal combination of web-scale and curated data sources (represented as topics A, B, and C) to enhance performance on a general reasoning task. By comparing CLIMB's performance against state-of-the-art language models across various parameter scales, the figure demonstrates CLIMB's superior efficiency in balancing model size and performance, showcasing a more favorable scaling trend.
> <details>
> <summary>read the caption</summary>
> Figure 2: Given large-scale pre-training data consisting of web-scale and curated sources, CLIMB identifies the optimal mixture of different topics (A, B, C) to improve performance in a target task (e.g., general reasoning). We compare the performance of state-of-the-art language models across different parameter scales on general reasoning benchmarks. CLIMB achieves a better tradeoff between model size and performance, demonstrating a more efficient scaling trend compared to prior models.
> </details>



![](https://arxiv.org/html/2504.13161/x3.png)

> 🔼 This figure visualizes CLIMB's iterative search for optimal data mixtures using t-SNE dimensionality reduction.  Each point represents a unique data mixture configuration tested by CLIMB, and the color indicates the iteration number (CLIMB-Iter1, CLIMB-Iter2, CLIMB-Iter3). The figure shows how the search space is progressively refined across iterations. Initially, the search is broad, exploring a wide range of data mixtures.  As the algorithm iterates, the search space narrows down, with CLIMB focusing on more promising configurations that yield better performance. This visualization demonstrates the efficiency and effectiveness of CLIMB's iterative search strategy.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of CLIMB’s iterative search process using t-SNE. Each point represents a data mixture config in the search space, with different iterations (CLIMB-Iter1, CLIMB-Iter2, CLIMB-Iter3) illustrating how the search space is refined over iterations. Initially, the search explores a broad set of configurations (Iter 1), progressively narrowing in subsequent iterations (Iter 2 and Iter 3) as CLIMB selects more optimal mixtures.
> </details>



![](https://arxiv.org/html/2504.13161/x4.png)

> 🔼 CLIMB is an iterative framework that refines data mixtures for improved language model pre-training.  It begins by embedding and clustering raw data to create a search space of data mixtures represented as weighted combinations of clusters.  Then, in each iteration, CLIMB samples a set of mixtures, trains lightweight proxy models on a subset, and uses a predictor to estimate their performance. Poorly performing mixtures are eliminated, and only the most promising move on to further training. This iterative process refines the search space, leading to an optimized data mixture that balances general and domain-specific performance without manual intervention.
> <details>
> <summary>read the caption</summary>
> Figure 4: The CLIMB framework overview. Upper section: CLIMB first preprocesses raw data via embedding and clustering it into groups. These clusters serve as the basis for the search space, where a mixture is defined as a set of weights to combine different clusters. Lower section: CLIMB samples nksubscript𝑛𝑘n_{k}italic_n start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT mixtures in iteration k𝑘kitalic_k, trains proxy models on a subset of them, and updates a predictor to estimate performance. The predictor prunes mixtures that are likely to perform poorly, so only the most promising mixtures proceed to full proxy training in subsequent iterations. Through progressively refining the search space and eliminating suboptimal candidates, CLIMB converges toward an optimized data mixture and balances general and domain-specific performance without exhaustive manual curation.
> </details>



![](https://arxiv.org/html/2504.13161/x5.png)

> 🔼 This figure displays the performance of language models (350M and 1B parameter models) on the MMLU benchmark across three subject domains: STEM, Humanities, and Social Sciences.  The performance is shown for three methods: CLIMB (the authors' method, iteratively refining data mixtures), CLIMB-Best@N (a variation where the proxy model size matches the target model size), and a random baseline.  Importantly, CLIMB consistently uses a smaller 350M parameter proxy model, regardless of target model size.  The results demonstrate that CLIMB's iterative approach yields superior performance compared to CLIMB-Best@N, highlighting its efficiency in discovering optimal data mixtures.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance of target models on MMLU benchmarks for different subject areas. For both 350M and 1B target models, CLIMB used 350M proxy models, whereas CLIMB-Best@N used proxy models of the same size as the target models. CLIMB consistently improves performance across iterations, outperforming CLIMB-Best@N despite using smaller proxy models.
> </details>



![](https://arxiv.org/html/2504.13161/x6.png)

> 🔼 This figure visualizes how the weights assigned to different clusters in the ClimbMix dataset evolve across three iterations of the CLIMB algorithm. Each cluster represents a distinct semantic topic or domain within the data. The heatmap shows that certain clusters become increasingly more important (higher weights) as the algorithm progresses, reflecting the algorithm's ability to dynamically refine the data mixture based on its learned impact on downstream task performance. The analysis highlights how the iterative refinement of the data mixture leads to a more focused and effective composition of the pre-training data, thereby improving model performance on target tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Weight analysis of ClimbMix across iterations.
> </details>



![](https://arxiv.org/html/2504.13161/x7.png)

> 🔼 This figure visualizes the cosine similarity between the cluster embeddings and the average embeddings of different downstream tasks.  It shows how closely related different data clusters are to specific downstream tasks, highlighting the relationships between various data sources and their suitability for different applications. This helps understand which clusters are more suitable for specific tasks, providing insights into the composition of optimal data mixtures for improved model performance.
> <details>
> <summary>read the caption</summary>
> Figure 7: Similarity between clusters and downstream tasks.
> </details>



![](https://arxiv.org/html/2504.13161/x8.png)

> 🔼 This figure visualizes how the weights assigned to different data clusters evolve across three iterations of the CLIMB algorithm. Each cell in the heatmap represents the weight of a specific cluster at a given iteration. The color intensity indicates the magnitude of the weight, with darker shades representing higher weights. This visualization helps in understanding how the algorithm refines the data mixture over iterations, focusing on the most informative clusters for the target task.
> <details>
> <summary>read the caption</summary>
> Figure 8: Heatmap of weights across iterations.
> </details>



![](https://arxiv.org/html/2504.13161/x9.png)

> 🔼 This figure displays a scatter plot illustrating the strong correlation between the predicted accuracy scores generated by the predictor model and the actual ground truth accuracy values.  The high Spearman rank correlation (0.94) indicates that the predictor model effectively estimates the performance of different data mixtures. This is a crucial aspect of the CLIMB framework, as the predictor's accuracy guides the iterative refinement of the data mixtures during the bootstrapping process.
> <details>
> <summary>read the caption</summary>
> Figure 9: The Spearman rank correlation between predicted accuracy made by the predictor model and the groundtruth accuracy.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T2.3.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.3.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.2.1">Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.3.1">piqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.4.1">arc_c</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.5.1">arc_e</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.6.1">hellaswag</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.7.1">winogrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.8.1">siqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.9.1">mmlu</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.10.1">obqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.11.1">boolq</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.12.1">race</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.13.1">lambda</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.14.1">truthfulqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1.1.15" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.15.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.3.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">490M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">69.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">32.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">64.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">52.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">56.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">44.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">33.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">35.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">62.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">34.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">52.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.14" style="padding-left:3.0pt;padding-right:3.0pt;">39.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2.15" style="padding-left:3.0pt;padding-right:3.0pt;">48.14</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.3.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">SmolLM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">360M</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">71.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">36.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">70.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">53.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">56.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">41.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">32.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.10" style="padding-left:3.0pt;padding-right:3.0pt;">37.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.11" style="padding-left:3.0pt;padding-right:3.0pt;">55.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.12" style="padding-left:3.0pt;padding-right:3.0pt;">34.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.13" style="padding-left:3.0pt;padding-right:3.0pt;">45.76</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.14" style="padding-left:3.0pt;padding-right:3.0pt;">37.93</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.3.3.15" style="padding-left:3.0pt;padding-right:3.0pt;">47.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.3.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.4.4.1.1">CLIMB (Ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">350M</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">72.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">35.07</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">67.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">56.27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">57.93</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">42.88</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">33.28</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.10" style="padding-left:3.0pt;padding-right:3.0pt;">36.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.11" style="padding-left:3.0pt;padding-right:3.0pt;">62.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.12" style="padding-left:3.0pt;padding-right:3.0pt;">33.39</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.13" style="padding-left:3.0pt;padding-right:3.0pt;">52.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.14" style="padding-left:3.0pt;padding-right:3.0pt;">36.86</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.4.4.15" style="padding-left:3.0pt;padding-right:3.0pt;">48.93</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">TinyLlama</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.3.1.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">1.1B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">73.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">30.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">60.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">59.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">59.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.8" style="padding-left:3.0pt;padding-right:3.0pt;">40.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.9" style="padding-left:3.0pt;padding-right:3.0pt;">31.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.10" style="padding-left:3.0pt;padding-right:3.0pt;">36.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.11" style="padding-left:3.0pt;padding-right:3.0pt;">57.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.12" style="padding-left:3.0pt;padding-right:3.0pt;">36.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.13" style="padding-left:3.0pt;padding-right:3.0pt;">58.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.14" style="padding-left:3.0pt;padding-right:3.0pt;">37.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.5.5.15" style="padding-left:3.0pt;padding-right:3.0pt;">48.42</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.3.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">AMD-OLMo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">1.2B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.6.3.1">75.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">33.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.95</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">63.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">61.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.6.8.1">44.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.9" style="padding-left:3.0pt;padding-right:3.0pt;">31.92</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.10" style="padding-left:3.0pt;padding-right:3.0pt;">35.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.11" style="padding-left:3.0pt;padding-right:3.0pt;">60.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.12" style="padding-left:3.0pt;padding-right:3.0pt;">34.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.13" style="padding-left:3.0pt;padding-right:3.0pt;">59.31</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.14" style="padding-left:3.0pt;padding-right:3.0pt;">32.22</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.6.15" style="padding-left:3.0pt;padding-right:3.0pt;">49.93</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.3.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">Llama-3.2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">1.2B</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">74.59</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">36.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.49</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">63.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">60.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">42.99</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">35.40</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.10" style="padding-left:3.0pt;padding-right:3.0pt;">37.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.11" style="padding-left:3.0pt;padding-right:3.0pt;">63.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.7.12.1">37.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.7.13.1">62.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.14" style="padding-left:3.0pt;padding-right:3.0pt;">37.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.7.7.15" style="padding-left:3.0pt;padding-right:3.0pt;">51.56</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.1.1">CLIMB (Ours)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.3.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">950M</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">75.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.4.1">40.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.5.1">73.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.6.1">66.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.7.1">63.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">43.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.9.1">36.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.10.1">41.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.11.1">66.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.12" style="padding-left:3.0pt;padding-right:3.0pt;">36.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.13" style="padding-left:3.0pt;padding-right:3.0pt;">59.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.14" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.14.1">39.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.8.8.15" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.8.8.15.1">53.54</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of CLIMB (a language model pre-training method) against other state-of-the-art language models on several general reasoning benchmarks.  CLIMB was trained using a refined data mixture and a significantly larger number of tokens (400 billion) than the other models. The table shows the performance of each model on various metrics for each benchmark, highlighting CLIMB's superior performance in bold.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with state-of-the-art language models on general reasoning benchmarks. CLIMB is continuously trained on 400B tokens with the optimal data mixture. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.1.1" style="font-size:80%;">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.2.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.3.1" style="font-size:80%;">Proxy</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.3.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.4.1" style="font-size:80%;">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.5.1" style="font-size:80%;">piqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.6.1" style="font-size:80%;">arc_c</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.7.1" style="font-size:80%;">arc_e</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.8.1" style="font-size:80%;">hellaswag</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.9.1" style="font-size:80%;">winogrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.10.1" style="font-size:80%;">siqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.11.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.2.2.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.1.1" style="font-size:80%;">Abl.comp</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.2.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.3.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.4.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.5.1" style="font-size:80%;">75.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.6.1" style="font-size:80%;">40.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.7.1" style="font-size:80%;">72.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.8.1" style="font-size:80%;">66.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.9.1" style="font-size:80%;">63.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.10.1" style="font-size:80%;">43.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.2.2.11.1" style="font-size:80%;">60.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.3.3">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.3.1" style="font-size:80%;">150%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.4.1" style="font-size:80%;">76.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.5.1" style="font-size:80%;">41.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.6.1" style="font-size:80%;">73.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.7.1" style="font-size:80%;">66.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.8.1" style="font-size:80%;">63.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.9.1" style="font-size:80%;">43.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.3.3.10.1" style="font-size:80%;">60.72</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4.4">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.3.1" style="font-size:80%;">200%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.4.1" style="font-size:80%;">76.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.5.1" style="font-size:80%;">42.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.6.1" style="font-size:80%;">73.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.7.1" style="font-size:80%;">66.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.8.1" style="font-size:80%;">63.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.9.1" style="font-size:80%;">43.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.4.4.10.1" style="font-size:80%;">61.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.5.5.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.1.1" style="font-size:80%;">Abl.allo</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.2.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.3.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.4.1" style="font-size:80%;">6:1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.5.1" style="font-size:80%;">75.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.6.1" style="font-size:80%;">40.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.7.1" style="font-size:80%;">72.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.8.1" style="font-size:80%;">65.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.9.1" style="font-size:80%;">62.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.10.1" style="font-size:80%;">42.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.5.5.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.5.5.11.1" style="font-size:80%;">60.05</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6.6">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.3.1" style="font-size:80%;">4:2:1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.4.1" style="font-size:80%;">75.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.5.1" style="font-size:80%;">40.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.6.1" style="font-size:80%;">72.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.7.1" style="font-size:80%;">66.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.8.1" style="font-size:80%;">63.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.9.1" style="font-size:80%;">43.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.6.6.10.1" style="font-size:80%;">60.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7.7">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.3.1" style="font-size:80%;">2:2:1:1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.4.1" style="font-size:80%;">75.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.5.1" style="font-size:80%;">40.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.6.1" style="font-size:80%;">72.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.7.1" style="font-size:80%;">65.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.8.1" style="font-size:80%;">62.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.9.1" style="font-size:80%;">43.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.7.7.10.1" style="font-size:80%;">60.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.8.8.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.1.1" style="font-size:80%;">Abl.proxy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.2.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.3.1" style="font-size:80%;">62M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.4.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.5.1" style="font-size:80%;">75.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.6.1" style="font-size:80%;">40.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.7.1" style="font-size:80%;">72.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.8.1" style="font-size:80%;">65.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.9.1" style="font-size:80%;">63.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.10.1" style="font-size:80%;">42.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.8.8.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.8.8.11.1" style="font-size:80%;">60.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.9.9">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.2.1" style="font-size:80%;">132M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.3.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.4.1" style="font-size:80%;">75.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.5.1" style="font-size:80%;">40.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.6.1" style="font-size:80%;">72.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.7.1" style="font-size:80%;">65.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.8.1" style="font-size:80%;">63.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.9.1" style="font-size:80%;">43.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.9.9.10.1" style="font-size:80%;">60.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.10.10">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.1.1" style="font-size:80%;">CLIMB</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.3.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.4.1" style="font-size:80%;">75.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.5.1" style="font-size:80%;">40.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.6.1" style="font-size:80%;">72.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.7.1" style="font-size:80%;">66.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.8.1" style="font-size:80%;">63.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.9.1" style="font-size:80%;">43.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.10.10.10.1" style="font-size:80%;">60.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.11.11.1" rowspan="5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.1.1" style="font-size:80%;">Abl.clus</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.2.1" style="font-size:80%;">48-21cluster</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.3.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.11.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.4.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.5.1" style="font-size:80%;">75.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.6.1" style="font-size:80%;">39.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.7.1" style="font-size:80%;">71.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.8.1" style="font-size:80%;">65.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.9.1" style="font-size:80%;">63.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.10.1" style="font-size:80%;">42.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.11.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.11.11.11.1" style="font-size:80%;">59.90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.12.12">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.1.1" style="font-size:80%;">64-21cluster</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.3.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.4.1" style="font-size:80%;">75.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.5.1" style="font-size:80%;">40.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.6.1" style="font-size:80%;">72.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.7.1" style="font-size:80%;">65.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.8.1" style="font-size:80%;">63.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.9.1" style="font-size:80%;">43.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.12.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.12.12.10.1" style="font-size:80%;">60.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.13.13">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.1.1" style="font-size:80%;">100-21cluster</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.13.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.3.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.4.1" style="font-size:80%;">76.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.5.1" style="font-size:80%;">40.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.6.1" style="font-size:80%;">72.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.7.1" style="font-size:80%;">66.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.8.1" style="font-size:80%;">63.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.9.1" style="font-size:80%;">43.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.13.13.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.13.13.10.1" style="font-size:80%;">60.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.14.14">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.1.1" style="font-size:80%;">1000-21cluster</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.3.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.4.1" style="font-size:80%;">75.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.5.1" style="font-size:80%;">40.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.6.1" style="font-size:80%;">72.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.7.1" style="font-size:80%;">66.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.8.1" style="font-size:80%;">63.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.9.1" style="font-size:80%;">43.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.14.14.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.14.14.10.1" style="font-size:80%;">60.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.15.15">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.1.1" style="font-size:80%;">2000-21cluster</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.3.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.4.1" style="font-size:80%;">75.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.5.1" style="font-size:80%;">41.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.6.1" style="font-size:80%;">72.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.7.1" style="font-size:80%;">65.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.8.1" style="font-size:80%;">63.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.9.1" style="font-size:80%;">42.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.15.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.15.15.10.1" style="font-size:80%;">60.24</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.16.16">
<td class="ltx_td ltx_border_r" id="S4.T3.3.1.16.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.2.1" style="font-size:80%;">1000-15cluster</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.3.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.4.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.5.1" style="font-size:80%;">75.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.6.1" style="font-size:80%;">41.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.7.1" style="font-size:80%;">73.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.8.1" style="font-size:80%;">66.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.9.1" style="font-size:80%;">63.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.10.1" style="font-size:80%;">43.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.16.16.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.16.16.11.1" style="font-size:80%;">60.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.17.17">
<td class="ltx_td ltx_border_r" id="S4.T3.3.1.17.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.2.1" style="font-size:80%;">1000-30cluster</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.3.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.17.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.4.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.5.1" style="font-size:80%;">76.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.6.1" style="font-size:80%;">40.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.7.1" style="font-size:80%;">72.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.8.1" style="font-size:80%;">65.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.9.1" style="font-size:80%;">63.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.10.1" style="font-size:80%;">43.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.17.17.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.17.17.11.1" style="font-size:80%;">60.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.18.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.3.1.18.18.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.1.1" style="font-size:80%;">Abl.init</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.2.1" style="font-size:80%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.3.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.18.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.4.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.5.1" style="font-size:80%;">75.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.6.1" style="font-size:80%;">40.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.7.1" style="font-size:80%;">72.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.8.1" style="font-size:80%;">65.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.9.1" style="font-size:80%;">64.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.10.1" style="font-size:80%;">43.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.18.18.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.18.18.11.1" style="font-size:80%;">60.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.19.19">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.1.1" style="font-size:80%;">Dirichlet</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.2.1" style="font-size:80%;">350M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.3.1.19.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.3.1" style="font-size:80%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.4.1" style="font-size:80%;">75.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.5.1" style="font-size:80%;">40.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.6.1" style="font-size:80%;">72.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.7.1" style="font-size:80%;">66.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.8.1" style="font-size:80%;">63.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.9.1" style="font-size:80%;">43.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.19.19.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.1.19.19.10.1" style="font-size:80%;">60.41</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on a 1-billion parameter language model trained using 40 billion tokens. The study investigates the impact of various design choices on the model's performance, specifically focusing on different settings of the CLIMB framework.  The settings explored include varying the proxy model's computational complexity, adjusting the allocation of resources across the iterative search phases, experimenting with different proxy model sizes, and examining the effect of the number of clusters and the initialization method. The performance is measured across several downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study with 1B target model trained on 40B tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.1">Cluster-ID</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.2">Topics</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.2.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.2">Environment, Public Health, Policy Development, Medical Innovation</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.3.2.1">2</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.2">Technology, Neurophysiology, Health and Safety, Innovative Research, Rehabilitation</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.4.3.1">3</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3.2">Restoration Efforts, Climate and Ecosystem, Community Engagement</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.5.4.1">4</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.4.2">Diagnostics, Diseases, Prevention and Control</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.6.5.1">5</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.5.2">Vehicles, Ecology, Community, Conservation Efforts</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.7.6.1">6</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.6.2">Energy, Science, Materials, Nanostrctures, Quantum Computing</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.8.7.1">7</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.7.2">Physics, Accelerators, Materials, Architecture, System</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.9.8.1">8</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.8.2">Biology, Genetics, Astronomy, Climate Science</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.10.9.1">9</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.10.9.2">Earth Sciences, Space Science, Scientific Collaboration</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.11.10.1">10</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.11.10.2">Health, Symptoms, Treatment, Therapy, Disorders, Conditions</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.12.11.1">11</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.12.11.2">Communication, Biography, History, Society, Policy</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.13.12.1">12</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.13.12.2">Culture, Education, Sustainability, Community, Public Health, Crime, Economy</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.14.13.1">13</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.14.13.2">Arts, Literature, Education, History</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.15.14.1">14</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.15.14.2">Geography, Government, Organization, Religion, Agriculture, Economy, Civilizations</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.16.15.1">15</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.16.15.2">Science, Technology, Education, Engineering, Collaboration</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.17.16.1">16</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.17.16.2">Science, Health, Minerals, Population, Agriculture, Vaccination, Welfare, Management</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.18.17.1">17</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.18.17.2">Role-Playing, Problem Solving, Mathematics, Algorithms</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.19.18.1">18</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.19.18.2">Revolution, Parliament, Efficiency, Communication, Animal Behavior</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.20.19.1">19</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.20.19.2">History, Culture, Economy, Energy, Market, Policy</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.21.20.1">20</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.21.20.2">Python, Code</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.1.22.21.1">21</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.22.21.2">Government, Law, Scientific Revolution, Music, Literature</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the 21 clusters generated by the CLIMB model and provides a concise description of the main topics found within each cluster.  Each cluster's topic summary is derived from a GPT-4 analysis of randomly sampled documents in the cluster and is intended to aid understanding of the data's composition, rather than to provide a rigorously exhaustive topic analysis.
> <details>
> <summary>read the caption</summary>
> Table 4: Topics of clusters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T5.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.3.1.1.1.1" style="font-size:90%;">Target</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.3.1.1.2.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T5.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.3.1.1.3.1" style="font-size:90%;">Proxy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.3.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.3.1.1.4.1" style="font-size:90%;">Accuracy (%)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.3.2.2.1" rowspan="5"><span class="ltx_text" id="A1.T5.3.2.2.1.1" style="font-size:90%;">62M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.2.2.2"><span class="ltx_text" id="A1.T5.3.2.2.2.1" style="font-size:90%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.3.2.2.3"><span class="ltx_text" id="A1.T5.3.2.2.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.2.2.4"><span class="ltx_text" id="A1.T5.3.2.2.4.1" style="font-size:90%;">27.40</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T5.3.3.3.1"><span class="ltx_text" id="A1.T5.3.3.3.1.1" style="font-size:90%;">CLIMB-Best@N</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.3.3.2"><span class="ltx_text" id="A1.T5.3.3.3.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.3.3.3"><span class="ltx_text" id="A1.T5.3.3.3.3.1" style="font-size:90%;">31.03</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.4.4">
<td class="ltx_td ltx_align_center" id="A1.T5.3.4.4.1"><span class="ltx_text" id="A1.T5.3.4.4.1.1" style="font-size:90%;">CLIMB-iter1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.4.4.2"><span class="ltx_text" id="A1.T5.3.4.4.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.4.4.3"><span class="ltx_text" id="A1.T5.3.4.4.3.1" style="font-size:90%;">29.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.5.5">
<td class="ltx_td ltx_align_center" id="A1.T5.3.5.5.1"><span class="ltx_text" id="A1.T5.3.5.5.1.1" style="font-size:90%;">CLIMB-iter2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.5.5.2"><span class="ltx_text" id="A1.T5.3.5.5.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.5.5.3"><span class="ltx_text" id="A1.T5.3.5.5.3.1" style="font-size:90%;">30.71</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.6.6">
<td class="ltx_td ltx_align_center" id="A1.T5.3.6.6.1"><span class="ltx_text" id="A1.T5.3.6.6.1.1" style="font-size:90%;">CLIMB-iter3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.6.6.2"><span class="ltx_text" id="A1.T5.3.6.6.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.6.6.3"><span class="ltx_text" id="A1.T5.3.6.6.3.1" style="font-size:90%;">32.43</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.3.7.7.1" rowspan="5"><span class="ltx_text" id="A1.T5.3.7.7.1.1" style="font-size:90%;">350M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.7.7.2"><span class="ltx_text" id="A1.T5.3.7.7.2.1" style="font-size:90%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.3.7.7.3"><span class="ltx_text" id="A1.T5.3.7.7.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.7.7.4"><span class="ltx_text" id="A1.T5.3.7.7.4.1" style="font-size:90%;">34.87</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.8.8">
<td class="ltx_td ltx_align_center" id="A1.T5.3.8.8.1"><span class="ltx_text" id="A1.T5.3.8.8.1.1" style="font-size:90%;">CLIMB-Best@N</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.8.8.2"><span class="ltx_text" id="A1.T5.3.8.8.2.1" style="font-size:90%;">350M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.8.8.3"><span class="ltx_text" id="A1.T5.3.8.8.3.1" style="font-size:90%;">38.39</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.9.9">
<td class="ltx_td ltx_align_center" id="A1.T5.3.9.9.1"><span class="ltx_text" id="A1.T5.3.9.9.1.1" style="font-size:90%;">CLIMB-iter1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.9.9.2"><span class="ltx_text" id="A1.T5.3.9.9.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.9.9.3"><span class="ltx_text" id="A1.T5.3.9.9.3.1" style="font-size:90%;">36.09</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.10.10">
<td class="ltx_td ltx_align_center" id="A1.T5.3.10.10.1"><span class="ltx_text" id="A1.T5.3.10.10.1.1" style="font-size:90%;">CLIMB-iter2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.10.10.2"><span class="ltx_text" id="A1.T5.3.10.10.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.10.10.3"><span class="ltx_text" id="A1.T5.3.10.10.3.1" style="font-size:90%;">37.01</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.11.11">
<td class="ltx_td ltx_align_center" id="A1.T5.3.11.11.1"><span class="ltx_text" id="A1.T5.3.11.11.1.1" style="font-size:90%;">CLIMB-iter3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.11.11.2"><span class="ltx_text" id="A1.T5.3.11.11.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.11.11.3"><span class="ltx_text" id="A1.T5.3.11.11.3.1" style="font-size:90%;">37.98</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T5.3.12.12.1" rowspan="6"><span class="ltx_text" id="A1.T5.3.12.12.1.1" style="font-size:90%;">1B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.12.12.2"><span class="ltx_text" id="A1.T5.3.12.12.2.1" style="font-size:90%;">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.3.12.12.3"><span class="ltx_text" id="A1.T5.3.12.12.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.3.12.12.4"><span class="ltx_text" id="A1.T5.3.12.12.4.1" style="font-size:90%;">36.69</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.13.13">
<td class="ltx_td ltx_align_center" id="A1.T5.3.13.13.1"><span class="ltx_text" id="A1.T5.3.13.13.1.1" style="font-size:90%;">CLIMB-Best@N</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.13.13.2"><span class="ltx_text" id="A1.T5.3.13.13.2.1" style="font-size:90%;">1B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.13.13.3"><span class="ltx_text" id="A1.T5.3.13.13.3.1" style="font-size:90%;">40.66</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.14.14">
<td class="ltx_td ltx_align_center" id="A1.T5.3.14.14.1"><span class="ltx_text" id="A1.T5.3.14.14.1.1" style="font-size:90%;">CLIMB-iter1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.14.14.2"><span class="ltx_text" id="A1.T5.3.14.14.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.14.14.3"><span class="ltx_text" id="A1.T5.3.14.14.3.1" style="font-size:90%;">40.03</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.15.15">
<td class="ltx_td ltx_align_center" id="A1.T5.3.15.15.1"><span class="ltx_text" id="A1.T5.3.15.15.1.1" style="font-size:90%;">CLIMB-iter2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.3.15.15.2"><span class="ltx_text" id="A1.T5.3.15.15.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.15.15.3"><span class="ltx_text" id="A1.T5.3.15.15.3.1" style="font-size:90%;">40.46</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.16.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.3.16.16.1"><span class="ltx_text" id="A1.T5.3.16.16.1.1" style="font-size:90%;">CLIMB-iter3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.3.16.16.2"><span class="ltx_text" id="A1.T5.3.16.16.2.1" style="font-size:90%;">62M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.3.16.16.3"><span class="ltx_text" id="A1.T5.3.16.16.3.1" style="font-size:90%;">41.72</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different language models on the social sciences portion of the MMLU (Massive Multitask Language Understanding) benchmark.  The models were trained using a 62M parameter proxy model. The table compares the performance of models trained with different data mixture methods (Random, CLIMB-Best@N, CLIMB iterations 1-3) and with different model sizes (350M, 1B).  The results show the accuracy achieved on the MMLU social sciences task. This allows for a comparison of the effectiveness of different training approaches, particularly the impact of CLIMB's iterative data mixture optimization.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance of target models on MMLU-social-sciences task. The main proxy model is 62M.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T6.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1.1">Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.3.1">Proxy</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.1.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.4.1">Comp.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.5.1">piqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.6.1">arc_c</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.7.1">arc_e</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.8.1">hellaswag</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.9.1">winogrande</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.10.1">siqa</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.11.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.1.1.2.2.1" rowspan="5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A1.T6.1.1.2.2.1.1">62M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">Random</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">61.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">24.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">45.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.8" style="padding-left:4.0pt;padding-right:4.0pt;">33.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.9" style="padding-left:4.0pt;padding-right:4.0pt;">50.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.10" style="padding-left:4.0pt;padding-right:4.0pt;">37.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2.11" style="padding-left:4.0pt;padding-right:4.0pt;">41.76</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3.3">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-Best@N</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">100%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">63.16</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">25.51</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">51.30</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">35.68</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.8" style="padding-left:4.0pt;padding-right:4.0pt;">51.14</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.9" style="padding-left:4.0pt;padding-right:4.0pt;">38.07</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3.10" style="padding-left:4.0pt;padding-right:4.0pt;">44.14</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4.4">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter1</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">57%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">63.92</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">24.82</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">49.83</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">34.76</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.8" style="padding-left:4.0pt;padding-right:4.0pt;">49.48</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.9" style="padding-left:4.0pt;padding-right:4.0pt;">38.79</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4.10" style="padding-left:4.0pt;padding-right:4.0pt;">43.60</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5.5">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">85%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">64.09</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">26.10</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">49.83</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">35.95</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.8" style="padding-left:4.0pt;padding-right:4.0pt;">51.06</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.9" style="padding-left:4.0pt;padding-right:4.0pt;">38.68</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5.10" style="padding-left:4.0pt;padding-right:4.0pt;">44.29</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6.6">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter3</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">100%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">64.54</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">27.01</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">53.39</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;">35.82</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.8" style="padding-left:4.0pt;padding-right:4.0pt;">51.15</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.9" style="padding-left:4.0pt;padding-right:4.0pt;">39.50</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6.10" style="padding-left:4.0pt;padding-right:4.0pt;">45.23</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.1.1.7.7.1" rowspan="5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A1.T6.1.1.7.7.1.1">350M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">Random</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">71.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">30.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">62.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">52.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">55.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.10" style="padding-left:4.0pt;padding-right:4.0pt;">41.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7.11" style="padding-left:4.0pt;padding-right:4.0pt;">52.17</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.8.8">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-Best@N</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">350M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">100%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.92</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">33.70</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">67.00</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">54.55</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">56.59</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">41.67</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.8.10" style="padding-left:4.0pt;padding-right:4.0pt;">54.24</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.9.9">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter1</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">57%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.65</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">33.49</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">65.31</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">54.44</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">56.28</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">41.99</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9.10" style="padding-left:4.0pt;padding-right:4.0pt;">53.86</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.10.10">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">85%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.54</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">34.01</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">66.43</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">54.61</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">56.78</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">41.37</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">54.12</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.11.11">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter3</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.11.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">100%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.87</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">34.12</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">66.92</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">54.81</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">56.11</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">42.37</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.11.11.10" style="padding-left:4.0pt;padding-right:4.0pt;">54.37</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T6.1.1.12.12.1" rowspan="6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A1.T6.1.1.12.12.1.1">1B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">Random</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">74.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">37.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">70.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">62.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">60.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.10" style="padding-left:4.0pt;padding-right:4.0pt;">42.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.12.12.11" style="padding-left:4.0pt;padding-right:4.0pt;">57.93</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.13.13">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-Best@N</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">1B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.13.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">100%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">75.02</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">38.39</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">72.34</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">64.31</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">61.16</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">42.52</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.13.13.10" style="padding-left:4.0pt;padding-right:4.0pt;">58.96</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.14.14">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter1</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">57%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">74.38</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">38.19</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">70.98</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">64.21</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">61.58</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">43.11</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.14.14.10" style="padding-left:4.0pt;padding-right:4.0pt;">58.74</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.15.15">
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.15.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">85%</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">75.26</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">39.28</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">72.17</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">63.99</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">63.16</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">41.27</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.15.15.10" style="padding-left:4.0pt;padding-right:4.0pt;">59.19</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.16.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">CLIMB-iter3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">62M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.1.1.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">100%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">75.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">40.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">72.82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">65.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">63.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">42.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.16.16.10" style="padding-left:4.0pt;padding-right:4.0pt;">60.11</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating language models trained using different data mixture strategies on a set of general reasoning benchmarks.  The models were trained using a 62M parameter proxy model to efficiently evaluate different data mixtures. The table compares the performance of models trained with randomly selected data mixtures against those trained with data mixtures optimized using the CLIMB method. The performance metrics reported include average scores across various benchmarks, showcasing the impact of different data mixing approaches on model generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance of target models on general reasoning benchmarks. The main proxy model is 62M.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13161/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13161/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}