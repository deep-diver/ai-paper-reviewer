---
title: "MIG: Automatic Data Selection for Instruction Tuning by Maximizing Information Gain in Semantic Space"
summary: "MIG optimizes data selection for instruction tuning by maximizing information gain in semantic space, achieving state-of-the-art performance with smaller, diverse datasets."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-04-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13835 {{< /keyword >}}
{{< keyword icon="writer" >}} Yicheng Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13835" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13835" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13835/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Data quality and diversity are crucial for instruction tuning. Existing methods often prioritize instance quality but lack a comprehensive view of the entire collection, leading to suboptimal results. They use heuristic rules for diversity, focusing on distance or clustering, which doesn't accurately capture complex instructions in the semantic space. The process of manual dataset creation is time-consuming and labor-intensive. 



This paper proposes a unified method for quantifying the information content of datasets, modeling the semantic space by constructing a label graph and quantifying diversity based on information distribution within the graph. It introduces an efficient sampling method that iteratively selects data samples to **Maximize the Information Gain (MIG)** in semantic space. Experiments demonstrate that MIG consistently outperforms state-of-the-art methods, achieving comparable performance with significantly smaller datasets.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MIG effectively balances data quality and diversity for instruction tuning by maximizing information gain in semantic space. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MIG consistently outperforms existing data selection methods across various datasets and base models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MIG significantly enhances sampling efficiency, reducing computational overhead compared to embedding-based methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a method that balances data quality and diversity, improving the efficiency of instruction tuning. It opens new avenues for research in automatic data selection. The method enables smaller, high-quality datasets to achieve comparable or superior performance to larger datasets.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13835/x1.png)

> 🔼 Figure 1 presents a comparison of various data selection methods, namely those proposed by Lu et al. (2024) and Liu et al. (2024b), when applied to the Tulu3 dataset (Lambert et al., 2024).  The results are obtained using the Llama3.1-8B model (Touvron et al., 2023).  The figure showcases the performance of these methods across two categories of benchmarks: knowledge-based benchmarks (shown in black) and human-preference benchmarks (shown in red).  Detailed results and analysis of this comparison can be found in Section 4.2 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison with different data selection methods Lu et al. (2024); Liu et al. (2024b) on the Tulu3 Lambert et al. (2024) pool using Llama3.1-8B Touvron et al. (2023), evaluated on (black) knowledge-based benchmarks and (red) human-preference benchmarks. See details in Sec. 4.2.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.19.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.19.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.19.3.3.4">Base Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.19.3.3.6">Data Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.7">ARC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.8">BBH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.9">GSM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.10">HE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.11">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.12">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.17.1.1.1"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="S3.T1.17.1.1.1.m1.1"><semantics id="S3.T1.17.1.1.1.m1.1a"><msub id="S3.T1.17.1.1.1.m1.1.1" xref="S3.T1.17.1.1.1.m1.1.1.cmml"><mtext id="S3.T1.17.1.1.1.m1.1.1.2" xref="S3.T1.17.1.1.1.m1.1.1.2a.cmml">Avg</mtext><mtext id="S3.T1.17.1.1.1.m1.1.1.3" xref="S3.T1.17.1.1.1.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T1.17.1.1.1.m1.1b"><apply id="S3.T1.17.1.1.1.m1.1.1.cmml" xref="S3.T1.17.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.17.1.1.1.m1.1.1.1.cmml" xref="S3.T1.17.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.17.1.1.1.m1.1.1.2a.cmml" xref="S3.T1.17.1.1.1.m1.1.1.2"><mtext id="S3.T1.17.1.1.1.m1.1.1.2.cmml" xref="S3.T1.17.1.1.1.m1.1.1.2">Avg</mtext></ci><ci id="S3.T1.17.1.1.1.m1.1.1.3a.cmml" xref="S3.T1.17.1.1.1.m1.1.1.3"><mtext id="S3.T1.17.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S3.T1.17.1.1.1.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.1.1.1.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.1.1.1.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.13">AE</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.14">MT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.15">Wild</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.18.2.2.2"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="S3.T1.18.2.2.2.m1.1"><semantics id="S3.T1.18.2.2.2.m1.1a"><msub id="S3.T1.18.2.2.2.m1.1.1" xref="S3.T1.18.2.2.2.m1.1.1.cmml"><mtext id="S3.T1.18.2.2.2.m1.1.1.2" xref="S3.T1.18.2.2.2.m1.1.1.2a.cmml">Avg</mtext><mtext id="S3.T1.18.2.2.2.m1.1.1.3" xref="S3.T1.18.2.2.2.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T1.18.2.2.2.m1.1b"><apply id="S3.T1.18.2.2.2.m1.1.1.cmml" xref="S3.T1.18.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.18.2.2.2.m1.1.1.1.cmml" xref="S3.T1.18.2.2.2.m1.1.1">subscript</csymbol><ci id="S3.T1.18.2.2.2.m1.1.1.2a.cmml" xref="S3.T1.18.2.2.2.m1.1.1.2"><mtext id="S3.T1.18.2.2.2.m1.1.1.2.cmml" xref="S3.T1.18.2.2.2.m1.1.1.2">Avg</mtext></ci><ci id="S3.T1.18.2.2.2.m1.1.1.3a.cmml" xref="S3.T1.18.2.2.2.m1.1.1.3"><mtext id="S3.T1.18.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="S3.T1.18.2.2.2.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.2.2.2.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.2.2.2.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.3.3"><span class="ltx_text ltx_markedasmath" id="S3.T1.19.3.3.3.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.19.3.4.1.1" rowspan="7"><span class="ltx_text" id="S3.T1.19.3.4.1.1.1">Llama3.1-8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.2">Pool</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.19.3.4.1.3">939K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.4">69.15</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.5">63.88</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.6">83.40</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.7">63.41</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.8">65.77</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.9">67.10</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.19.3.4.1.10">68.79</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.11">8.94</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.12">6.86</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.13">-24.66</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.19.3.4.1.14">38.40</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.4.1.15">53.59</th>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.5.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.1">Random</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.5.2.2">50K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.3">74.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.4">64.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.5">70.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.6">51.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.7">63.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.8">61.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.5.2.9">64.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.10">8.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.5.2.11.1">7.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.12">-22.15</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.5.2.13">39.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.5.2.14">51.81</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.6.3">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.1">ZIP</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.6.3.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.3">77.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.4">63.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.5">52.54</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.6">35.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.7">65.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.8">61.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.6.3.9">59.19</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.10">6.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.11">6.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.12">-32.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.6.3.13">35.69</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.6.3.14">47.44</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.7.4">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.1">IFD</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.7.4.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.3">75.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.4">63.56</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.5">61.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.6">49.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.7">64.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.8">53.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.7.4.9">61.32</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.10">12.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.11">7.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.12">-20.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.7.4.13">40.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.7.4.14">51.08</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.8.5">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.1"><span class="ltx_text ltx_font_italic" id="S3.T1.19.3.8.5.1.1">#InsTag</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.8.5.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.3">72.54</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.4">64.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.5">69.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.6">48.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.7">63.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.8"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.8.5.8.1">65.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.8.5.9">64.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.10">6.58</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.11">6.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.12">-20.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.8.5.13">38.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.8.5.14">51.17</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.9.6">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.1">DEITA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.9.6.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.3">78.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.4">66.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.9.6.5.1">74.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.6">49.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.7">64.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.8">64.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.9.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.9.6.9.1">66.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.10">10.19</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.11">6.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.9.6.12.1">-19.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.9.6.13">39.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.9.6.14">52.83</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.10.7">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.1">CaR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.10.7.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.3">78.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.4"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.10.7.4.1">69.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.5">71.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.6">52.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.7"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.10.7.7.1">65.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.8">56.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.10.7.9">65.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.10">12.55</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.11">6.95</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.12">-20.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.10.7.13">40.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.10.7.14">53.10</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.11.8">
<td class="ltx_td ltx_border_r" id="S3.T1.19.3.11.8.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.2">QDIT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.11.8.3">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.11.8.4.1">79.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.5">65.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.6">70.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.11.8.7.1">53.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.11.8.8.1">65.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.9">57.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.11.8.10">65.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.11"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.11.8.11.1">15.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.12">6.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.13">-20.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.11.8.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.11.8.14.1">41.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.11.8.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.11.8.15.1">53.12</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.12.9">
<td class="ltx_td ltx_border_r" id="S3.T1.19.3.12.9.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.2">MIG</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.12.9.3">50K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.4"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.12.9.4.1">80.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.12.9.5.1">66.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.12.9.6.1">72.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.7"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.12.9.7.1">57.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.8">64.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.12.9.9.1">65.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.12.9.10"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.12.9.10.1">67.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.12.9.11.1">14.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.12"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.12.9.12.1">7.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.13"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.12.9.13.1">-17.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.12.9.14"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.12.9.14.1">42.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.12.9.15"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.12.9.15.1">55.32</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.13.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.19.3.13.10.1" rowspan="6"><span class="ltx_text" id="S3.T1.19.3.13.10.1.1">Mistral-7B-v0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.2">Random</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.19.3.13.10.3">50K</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.4">67.80</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.5">56.90</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.13.10.6.1">66.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.7">42.07</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.8">60.34</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.9"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.13.10.9.1">65.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.19.3.13.10.10">59.81</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.11">5.84</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.12">6.84</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.13">-25.20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.19.3.13.10.14">37.21</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.19.3.13.10.15">48.51</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.14.11">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.1">ZIP</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.14.11.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.3">72.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.4">56.73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.5">33.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.6">3.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.7">61.68</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.8">63.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.14.11.9">48.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.10">5.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.11">6.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.12">-36.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.14.11.13">34.32</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.14.11.14">41.37</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.15.12">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.1"><span class="ltx_text ltx_font_italic" id="S3.T1.19.3.15.12.1.1">#InsTag</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.15.12.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.3"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.15.12.3.1">76.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.4">57.15</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.15.12.5.1">66.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.6">40.85</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.7">61.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.8">63.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.15.12.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.15.12.9.1">60.94</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.10">8.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.11">6.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.12">-21.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.15.12.13">38.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.15.12.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.15.12.14.1">49.88</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.16.13">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.1">DEITA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.16.13.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.16.13.3.1">75.93</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.4">57.72</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.5">64.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.6">11.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.7">61.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.8">64.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.16.13.9">56.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.10">8.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.11">6.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.12">-20.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.16.13.13">39.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.16.13.14">47.69</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.17.14">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.1">CaR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.17.14.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.3">64.41</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.17.14.4.1">58.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.5">63.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.6">9.15</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.17.14.7.1">61.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.8">55.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.17.14.9">52.26</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.10">11.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.17.14.11.1">7.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.17.14.12.1">-17.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.17.14.13">41.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.17.14.14">46.58</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.18.15">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.1">QDIT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.18.15.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.3">54.92</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.4"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.18.15.4.1">58.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.5">59.97</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.18.15.6.1">42.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.7"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.18.15.7.1">62.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.8">58.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.18.15.9">56.16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.10"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.18.15.10.1">15.03</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.11">6.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.12"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.18.15.12.1">-17.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.18.15.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.18.15.13.1">41.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.18.15.14">48.84</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.19.16">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S3.T1.19.3.19.16.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.2">MIG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.19.3.19.16.3">50K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.4">75.25</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.5">56.19</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.6"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.19.16.6.1">66.94</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.7"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.19.16.7.1">45.12</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.8">60.23</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.19.16.9.1">64.70</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.19.3.19.16.10"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.19.16.10.1">61.41</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.19.16.11.1">13.66</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.12"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.19.16.12.1">7.17</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.13">-18.39</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.19.3.19.16.14"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.19.16.14.1">42.05</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.19.3.19.16.15"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.19.16.15.1">51.73</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.20.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.19.3.20.17.1" rowspan="6"><span class="ltx_text" id="S3.T1.19.3.20.17.1.1">Qwen2.5-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.2">Pool</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.19.3.20.17.3">939K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.4">90.51</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.5">65.01</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.6">85.29</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.7">78.05</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.8">75.15</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.9">64.88</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.19.3.20.17.10">76.31</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.11">9.07</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.12">7.04</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.13">-23.98</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.19.3.20.17.14">39.16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.19.3.20.17.15">57.74</th>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.21.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.1">Random</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.21.18.2">50K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.3">85.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.4">63.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.5">80.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.6">79.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.7">73.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.8">58.04</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.21.18.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.21.18.9.1">75.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.10">10.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.11">7.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.21.18.12.1">-18.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.19.3.21.18.13">41.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.19.3.21.18.14">57.32</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.22.19">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.1">ZIP</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.22.19.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.3">85.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.4">63.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.5">83.24</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.6">72.56</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.7">73.60</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.8">58.23</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.22.19.9">72.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.10">7.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.11">7.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.12">-27.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.22.19.13">38.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.22.19.14">55.87</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.23.20">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.1"><span class="ltx_text ltx_font_italic" id="S3.T1.19.3.23.20.1.1">#InsTag</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.23.20.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.3">88.81</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.4">63.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.5">84.61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.6"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.23.20.6.1">81.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.7">73.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.23.20.8.1">61.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.23.20.9">75.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.10">9.07</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.23.20.11.1">7.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.12">-18.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.23.20.13">41.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.23.20.14">58.48</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.24.21">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.1">DEITA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.24.21.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.3">89.15</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.4">63.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.5">86.13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.6">79.27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.24.21.7.1">74.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.8">58.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.24.21.9">75.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.10">10.31</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.11">7.28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.12">-19.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.24.21.13">41.09</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.24.21.14">58.11</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.25.22">
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.1">CaR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.25.22.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.3"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.25.22.3.1">91.86</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.4">65.60</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.5"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.25.22.5.1">87.64</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.6">77.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.7">73.97</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.8">50.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.25.22.9">74.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.25.22.10.1">13.66</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.11">7.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.12">-20.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.25.22.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.25.22.13.1">42.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.25.22.14">58.43</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.26.23">
<td class="ltx_td ltx_border_r" id="S3.T1.19.3.26.23.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.2">QDIT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.26.23.3">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.4">89.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.5"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.26.23.5.1">69.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.26.23.6.1">87.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.7"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.26.23.7.1">81.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.8"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.26.23.8.1">74.72</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.9">50.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.26.23.10">75.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.11"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.26.23.11.1">13.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.12">7.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.13">-20.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.19.3.26.23.14">41.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.3.26.23.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.26.23.15.1">58.50</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.3.27.24">
<td class="ltx_td ltx_border_bb ltx_border_r" id="S3.T1.19.3.27.24.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.2">MIG</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.19.3.27.24.3">50K</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.27.24.4.1">90.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.3.27.24.5.1">67.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.6">84.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.7">79.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.8">73.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.9"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.27.24.9.1">61.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.19.3.27.24.10"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.27.24.10.1">76.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.11">11.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.12"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.27.24.12.1">7.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.13"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.27.24.13.1">-14.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.19.3.27.24.14"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.27.24.14.1">43.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.19.3.27.24.15"><span class="ltx_text ltx_font_bold" id="S3.T1.19.3.27.24.15.1">59.81</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares different data selection methods on the Tulu3 dataset for instruction tuning.  It shows the performance of each method across several benchmarks, categorized as knowledge-based (objective) and human-preference (subjective).  The table presents average scores for each category (Avgobj and Avgsub), along with an overall average (Avg).  HumanEval, AlpacaEvalv2, MTBench, and WildBench are specific benchmark names.  The results demonstrate that the proposed MIG method outperforms existing methods across all metrics and base models.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with data selection methods on the Tulu3 pool. HE denotes HumanEval, AE denotes AlpacaEvalv2, MT denotes MTBench, and Wild denotes WildBench. AvgobjsubscriptAvgobj\text{Avg}_{\text{obj}}Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT and AvgsubsubscriptAvgsub\text{Avg}_{\text{sub}}Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT represent the average of the normalized knowledge-based and human-preference benchmark scores, respectively. Avg is the mean of AvgobjsubscriptAvgobj\text{Avg}_{\text{obj}}Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT and AvgsubsubscriptAvgsub\text{Avg}_{\text{sub}}Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT. MIG achieves the best performance on AvgobjsubscriptAvgobj\text{Avg}_{\text{obj}}Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT, AvgsubsubscriptAvgsub\text{Avg}_{\text{sub}}Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT, and Avg on all base models.
> </details>





### In-depth insights


#### Semantic MIG
The paper introduces MIG, a novel method for automatic data selection in instruction tuning. MIG maximizes information gain in the semantic space by modeling it as a label graph. **Nodes represent labels, and edges capture semantic relationships.** MIG addresses the limitations of existing methods that often prioritize instance quality with heuristic diversity rules, leading to suboptimal results. MIG quantifies the information content of datasets and efficiently samples data iteratively. **Information propagation addresses semantic correlations and annotation biases.** MIG consistently outperforms state-of-the-art methods, demonstrating its effectiveness and generalizability across datasets and base models. The method's efficiency significantly reduces sampling time compared to embedding-based approaches. **MIG offers a unified approach to dataset measurement by bridging instance-level quality with global dataset-level evaluation.** Experiments showcase the impact of label graph parameters and information propagation on performance. 

#### Info. Prop. Model
The research utilizes information propagation as a core component of its data selection process, aiming to refine the accuracy of data representation in semantic space. **The propagation step enables the transfer of information between related labels within a label graph, addressing the issue of semantic overlaps and annotation biases**. By doing so, the model mitigates inaccuracies in information distribution that could arise from independent label assessments. **The intensity of this information propagation is controlled by a hyperparameter**, which allows tuning of the influence between connected labels. Essentially, the information propagation component assists MIG in making better-informed data selection decisions by accounting for inter-label dependencies, leading to improved model performance and diversity in downstream applications. This approach improves accuracy and is necessary as it enhances the model's ability to capture nuanced relationships. **The experiments indicate that propagation contributes notably to the effectiveness of MIG**.

#### Graph Submodularity
**Graph submodularity** is a powerful concept for quantifying diversity in data selection, especially relevant in machine learning for tasks like active learning or dataset summarization. It leverages graph structures to model relationships between data points, where nodes represent data instances and edges represent similarity.  A submodular function defined on this graph ensures that adding a data point to a smaller subset provides a larger information gain than adding it to a larger subset.  This naturally promotes diversity by prioritizing data points that are dissimilar to those already selected, covering a wider range of features or categories. The **submodularity property** enables efficient greedy algorithms that can approximate the optimal diverse subset, providing a practical approach for large-scale data selection problems. By maximizing the marginal gain in information, we can achieve comparable, and better data selection.

#### Label Graph Tuning
Label graph tuning involves optimizing the structure and parameters of a graph representing relationships between labels in a dataset. This could mean adjusting the node set by adding or removing labels based on their relevance or frequency, or refining edge weights to better reflect semantic similarity or co-occurrence. **Tuning could also involve experimenting with different graph types (directed vs. undirected, weighted vs. unweighted) or applying graph embedding techniques to capture label semantics in a lower-dimensional space.** The goal is to create a label graph that accurately represents the underlying data distribution and facilitates effective data selection or augmentation strategies. Furthermore, information propagation is used to capture better representation and eliminate biasness. **The effectiveness can be measured by evaluating the performance of models trained on data selected or augmented using the tuned label graph.

#### Data Bias Limits
**Data bias limits** significantly impact the generalizability and fairness of machine learning models. If the training data disproportionately represents certain demographics or viewpoints, the resulting model will likely exhibit skewed performance, favoring the over-represented groups and potentially discriminating against others. Addressing **data bias** requires careful examination of the data collection process, employing techniques like re-sampling or weighting to balance the representation of different subgroups, and evaluating model performance across diverse segments to identify and mitigate disparities. **Careful consideration** in dataset curation is essential.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13835/x2.png)

> 🔼 Figure 2 illustrates the process of MIG, a novel method for data selection in instruction tuning. (a) shows the overall pipeline: starting with a raw data pool, a tagger and scorer annotate each data point with relevant labels and a quality score.  MIG then uses these annotations to construct a label graph which represents the semantic relationships between different labels. (b) zooms into the MIG Sampler, highlighting the iterative process of data selection. MIG iteratively selects data points that maximize the information gain within the label graph, resulting in a high-quality and diverse subset. This selected dataset is then utilized for supervised fine-tuning (SFT) of large language models (LLMs).
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of (a) Data Selection Pipeline and (b) MIG Sampler. Given the raw data pool, our pipeline first applies a tagger and scorer to annotate data. Next, MIG constructs the label graph based on the label set and iteratively selects the data point that maximizes the information gain within the graph. The selected data are used for supervised fine-tuning (SFT) of LLMs.
> </details>



![](https://arxiv.org/html/2504.13835/extracted/6372957/figs/data-scaling-v2.png)

> 🔼 This figure displays the results of experiments evaluating the impact of varying dataset sizes on the performance of a model fine-tuned using the Tulu3 dataset and the Llama3.1-8B base model.  The x-axis represents the size of the dataset subset used for fine-tuning, while the y-axis shows the average score across multiple evaluation benchmarks (Avg score, which is the average of knowledge-based and human-preference benchmark scores). The graph demonstrates how model performance changes as the amount of training data increases, allowing for an assessment of the model's performance scaling behavior.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data scaling experiments on Tulu3 using Llama3.1-8B. The score reported here is the Avg score.
> </details>



![](https://arxiv.org/html/2504.13835/x3.png)

> 🔼 This figure analyzes the impact of different information score functions and quality metrics on the performance of the MIG model. Panel (a) shows the derivative of various information score functions, illustrating their rate of diminishing returns as information increases. Panels (b) and (c) present the average scores across objective benchmarks (Avgobj) and subjective benchmarks (Avgsub), respectively, under different information score functions and quality metrics.  This analysis helps determine the optimal balance between data quality and diversity in the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) Derivative of Information Score Functions. (b) AvgobjsubscriptAvgobj\text{Avg}_{\text{obj}}Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT on Different Information Score Functions. (c) AvgsubsubscriptAvgsub\text{Avg}_{\text{sub}}Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT on Different Quality Scores.
> </details>



![](https://arxiv.org/html/2504.13835/x4.png)

> 🔼 Figure 5 presents a bar chart comparing the performance of different data quality metrics (IFD, TagNum, and DEITA) against a baseline on both human-preference and knowledge-based benchmarks.  The results show that using DEITA scores for data quality consistently yields the best performance, outperforming other metrics across both evaluation types.
> <details>
> <summary>read the caption</summary>
> Figure 5: Quantitative results on different quality metrics. DEITA scores achieve the best performance on both human-preference and knowledge-based evaluations.
> </details>



![](https://arxiv.org/html/2504.13835/x5.png)

> 🔼 Figure 6 analyzes the impact of label graph parameters on model performance.  Subfigure (a) shows how varying the number of nodes (representing labels) affects the average score (a combination of human evaluation and knowledge-based benchmark scores). Subfigure (b) illustrates the effect of changing the edge threshold, where lower thresholds create denser graphs representing stronger relationships between labels. Subfigure (c) examines how altering the propagation weight, which influences the strength of information flow within the graph, impacts performance.  Appendices D, Tables 7, 8, and 9 provide detailed benchmark scores for each parameter setting.
> <details>
> <summary>read the caption</summary>
> Figure 6: Analysis of Parameters in the Label Graph. The reported score is the average of AvgsubsubscriptAvgsub\text{Avg}_{\text{sub}}Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT and AvgobjsubscriptAvgobj\text{Avg}_{\text{obj}}Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT. Please refer to Table 7 8 9 in Appx. D for detailed scores on all evaluated benchmarks. (a) Comparison of various node counts (label set size) in the label graph. (b) Comparison of different edge thresholds, with a lower threshold indicating a dense graph. (c) Comparison of different propagation weights, where a smaller weight corresponds to weak propagation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.9.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.3.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.3.1.1.2" rowspan="2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S3.T2.3.1.1.3">Openhermes2.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S3.T2.3.1.1.1"><math alttext="X_{sota}" class="ltx_Math" display="inline" id="S3.T2.3.1.1.1.m1.1"><semantics id="S3.T2.3.1.1.1.m1.1a"><msub id="S3.T2.3.1.1.1.m1.1.1" xref="S3.T2.3.1.1.1.m1.1.1.cmml"><mi id="S3.T2.3.1.1.1.m1.1.1.2" xref="S3.T2.3.1.1.1.m1.1.1.2.cmml">X</mi><mrow id="S3.T2.3.1.1.1.m1.1.1.3" xref="S3.T2.3.1.1.1.m1.1.1.3.cmml"><mi id="S3.T2.3.1.1.1.m1.1.1.3.2" xref="S3.T2.3.1.1.1.m1.1.1.3.2.cmml">s</mi><mo id="S3.T2.3.1.1.1.m1.1.1.3.1" xref="S3.T2.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.3.1.1.1.m1.1.1.3.3" xref="S3.T2.3.1.1.1.m1.1.1.3.3.cmml">o</mi><mo id="S3.T2.3.1.1.1.m1.1.1.3.1a" xref="S3.T2.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.3.1.1.1.m1.1.1.3.4" xref="S3.T2.3.1.1.1.m1.1.1.3.4.cmml">t</mi><mo id="S3.T2.3.1.1.1.m1.1.1.3.1b" xref="S3.T2.3.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T2.3.1.1.1.m1.1.1.3.5" xref="S3.T2.3.1.1.1.m1.1.1.3.5.cmml">a</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T2.3.1.1.1.m1.1b"><apply id="S3.T2.3.1.1.1.m1.1.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.3.1.1.1.m1.1.1.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.3.1.1.1.m1.1.1.2.cmml" xref="S3.T2.3.1.1.1.m1.1.1.2">𝑋</ci><apply id="S3.T2.3.1.1.1.m1.1.1.3.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3"><times id="S3.T2.3.1.1.1.m1.1.1.3.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3.1"></times><ci id="S3.T2.3.1.1.1.m1.1.1.3.2.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3.2">𝑠</ci><ci id="S3.T2.3.1.1.1.m1.1.1.3.3.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3.3">𝑜</ci><ci id="S3.T2.3.1.1.1.m1.1.1.3.4.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3.4">𝑡</ci><ci id="S3.T2.3.1.1.1.m1.1.1.3.5.cmml" xref="S3.T2.3.1.1.1.m1.1.1.3.5">𝑎</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.1.1.1.m1.1c">X_{sota}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.1.1.1.m1.1d">italic_X start_POSTSUBSCRIPT italic_s italic_o italic_t italic_a end_POSTSUBSCRIPT</annotation></semantics></math></th>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.7.7">Data Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.4.2.2.1"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="S3.T2.4.2.2.1.m1.1"><semantics id="S3.T2.4.2.2.1.m1.1a"><msub id="S3.T2.4.2.2.1.m1.1.1" xref="S3.T2.4.2.2.1.m1.1.1.cmml"><mtext id="S3.T2.4.2.2.1.m1.1.1.2" xref="S3.T2.4.2.2.1.m1.1.1.2a.cmml">Avg</mtext><mtext id="S3.T2.4.2.2.1.m1.1.1.3" xref="S3.T2.4.2.2.1.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.4.2.2.1.m1.1b"><apply id="S3.T2.4.2.2.1.m1.1.1.cmml" xref="S3.T2.4.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.4.2.2.1.m1.1.1.1.cmml" xref="S3.T2.4.2.2.1.m1.1.1">subscript</csymbol><ci id="S3.T2.4.2.2.1.m1.1.1.2a.cmml" xref="S3.T2.4.2.2.1.m1.1.1.2"><mtext id="S3.T2.4.2.2.1.m1.1.1.2.cmml" xref="S3.T2.4.2.2.1.m1.1.1.2">Avg</mtext></ci><ci id="S3.T2.4.2.2.1.m1.1.1.3a.cmml" xref="S3.T2.4.2.2.1.m1.1.1.3"><mtext id="S3.T2.4.2.2.1.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.4.2.2.1.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.2.2.1.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.2.2.1.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.3.3.2"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="S3.T2.5.3.3.2.m1.1"><semantics id="S3.T2.5.3.3.2.m1.1a"><msub id="S3.T2.5.3.3.2.m1.1.1" xref="S3.T2.5.3.3.2.m1.1.1.cmml"><mtext id="S3.T2.5.3.3.2.m1.1.1.2" xref="S3.T2.5.3.3.2.m1.1.1.2a.cmml">Avg</mtext><mtext id="S3.T2.5.3.3.2.m1.1.1.3" xref="S3.T2.5.3.3.2.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.5.3.3.2.m1.1b"><apply id="S3.T2.5.3.3.2.m1.1.1.cmml" xref="S3.T2.5.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.5.3.3.2.m1.1.1.1.cmml" xref="S3.T2.5.3.3.2.m1.1.1">subscript</csymbol><ci id="S3.T2.5.3.3.2.m1.1.1.2a.cmml" xref="S3.T2.5.3.3.2.m1.1.1.2"><mtext id="S3.T2.5.3.3.2.m1.1.1.2.cmml" xref="S3.T2.5.3.3.2.m1.1.1.2">Avg</mtext></ci><ci id="S3.T2.5.3.3.2.m1.1.1.3a.cmml" xref="S3.T2.5.3.3.2.m1.1.1.3"><mtext id="S3.T2.5.3.3.2.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.5.3.3.2.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.3.3.2.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.3.3.2.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T2.6.4.4.3"><span class="ltx_text ltx_markedasmath" id="S3.T2.6.4.4.3.1">Avg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.7.8">Data Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.7.5.5.4"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="S3.T2.7.5.5.4.m1.1"><semantics id="S3.T2.7.5.5.4.m1.1a"><msub id="S3.T2.7.5.5.4.m1.1.1" xref="S3.T2.7.5.5.4.m1.1.1.cmml"><mtext id="S3.T2.7.5.5.4.m1.1.1.2" xref="S3.T2.7.5.5.4.m1.1.1.2a.cmml">Avg</mtext><mtext id="S3.T2.7.5.5.4.m1.1.1.3" xref="S3.T2.7.5.5.4.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.7.5.5.4.m1.1b"><apply id="S3.T2.7.5.5.4.m1.1.1.cmml" xref="S3.T2.7.5.5.4.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.7.5.5.4.m1.1.1.1.cmml" xref="S3.T2.7.5.5.4.m1.1.1">subscript</csymbol><ci id="S3.T2.7.5.5.4.m1.1.1.2a.cmml" xref="S3.T2.7.5.5.4.m1.1.1.2"><mtext id="S3.T2.7.5.5.4.m1.1.1.2.cmml" xref="S3.T2.7.5.5.4.m1.1.1.2">Avg</mtext></ci><ci id="S3.T2.7.5.5.4.m1.1.1.3a.cmml" xref="S3.T2.7.5.5.4.m1.1.1.3"><mtext id="S3.T2.7.5.5.4.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.7.5.5.4.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.5.5.4.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.5.5.4.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.8.6.6.5"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="S3.T2.8.6.6.5.m1.1"><semantics id="S3.T2.8.6.6.5.m1.1a"><msub id="S3.T2.8.6.6.5.m1.1.1" xref="S3.T2.8.6.6.5.m1.1.1.cmml"><mtext id="S3.T2.8.6.6.5.m1.1.1.2" xref="S3.T2.8.6.6.5.m1.1.1.2a.cmml">Avg</mtext><mtext id="S3.T2.8.6.6.5.m1.1.1.3" xref="S3.T2.8.6.6.5.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.8.6.6.5.m1.1b"><apply id="S3.T2.8.6.6.5.m1.1.1.cmml" xref="S3.T2.8.6.6.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.8.6.6.5.m1.1.1.1.cmml" xref="S3.T2.8.6.6.5.m1.1.1">subscript</csymbol><ci id="S3.T2.8.6.6.5.m1.1.1.2a.cmml" xref="S3.T2.8.6.6.5.m1.1.1.2"><mtext id="S3.T2.8.6.6.5.m1.1.1.2.cmml" xref="S3.T2.8.6.6.5.m1.1.1.2">Avg</mtext></ci><ci id="S3.T2.8.6.6.5.m1.1.1.3a.cmml" xref="S3.T2.8.6.6.5.m1.1.1.3"><mtext id="S3.T2.8.6.6.5.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.8.6.6.5.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.6.6.5.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.6.6.5.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.7.6"><span class="ltx_text ltx_markedasmath" id="S3.T2.9.7.7.6.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.9.7.8.1.1">Pool</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.8.1.2">1M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.8.1.3">36.91</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.8.1.4">61.49</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T2.9.7.8.1.5">49.20</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.8.1.6">306K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.8.1.7">31.51</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.8.1.8">52.88</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.9.7.8.1.9">42.19</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.9.7.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.9.7.9.1.1">Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.7.9.1.2">50K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.7.9.1.3">32.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.7.9.1.4">55.69</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.9.7.9.1.5">44.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.7.9.1.6">6K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.7.9.1.7">29.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.7.9.1.8">49.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.7.9.1.9">39.81</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.10.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.9.7.10.2.1"><span class="ltx_text ltx_font_italic" id="S3.T2.9.7.10.2.1.1">#InsTag</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.10.2.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.10.2.3">36.23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.10.2.4">54.12</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.7.10.2.5">45.17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.10.2.6">6K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.10.2.7">31.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.10.2.8">46.19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.10.2.9">39.04</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.11.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.9.7.11.3.1">DEITA</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.11.3.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.11.3.3">36.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.11.3.4">57.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.7.11.3.5">47.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.11.3.6">6K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.11.3.7">31.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.11.3.8">48.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.11.3.9">40.15</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.12.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.9.7.12.4.1">CaR</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.12.4.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.12.4.3">37.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.12.4.4">55.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.7.12.4.5">46.54</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.12.4.6">6K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.12.4.7">31.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.12.4.8">48.43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.12.4.9">40.15</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.13.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.9.7.13.5.1">QDIT</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.13.5.2">50K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.13.5.3">37.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.13.5.4">57.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.9.7.13.5.5">47.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.13.5.6">6K</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.13.5.7">32.52</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.13.5.8">49.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.13.5.9">40.81</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7.14.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.9.7.14.6.1">MIG</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.9.7.14.6.2">50K</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.9.7.14.6.3"><span class="ltx_text ltx_font_bold" id="S3.T2.9.7.14.6.3.1">38.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.9.7.14.6.4"><span class="ltx_text ltx_font_bold" id="S3.T2.9.7.14.6.4.1">58.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.9.7.14.6.5"><span class="ltx_text ltx_font_bold" id="S3.T2.9.7.14.6.5.1">48.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.9.7.14.6.6">6K</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.9.7.14.6.7"><span class="ltx_text ltx_font_bold" id="S3.T2.9.7.14.6.7.1">32.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.9.7.14.6.8"><span class="ltx_text ltx_font_bold" id="S3.T2.9.7.14.6.8.1">50.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.9.7.14.6.9"><span class="ltx_text ltx_font_bold" id="S3.T2.9.7.14.6.9.1">41.80</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance comparison of MIG against various baselines on two distinct instruction-tuning datasets: Openhermes2.5 and Xsota.  The results are based on the Llama 3.1-8B language model.  The table showcases MIG's consistent superiority in achieving better performance across all evaluation benchmarks compared to the other methods. Detailed benchmark scores are provided in Appendix D, Tables 5 and 6. 
> <details>
> <summary>read the caption</summary>
> Table 2: Results on different data pools, Openhermes2.5 and Xs⁢o⁢t⁢asubscript𝑋𝑠𝑜𝑡𝑎X_{sota}italic_X start_POSTSUBSCRIPT italic_s italic_o italic_t italic_a end_POSTSUBSCRIPT, based on Llama3.1-8B. MIG outperforms all baselines across both data pools. Please refer to Table 5 6 in Appx. D for detailed scores on all benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T3.1.1.1.1.2">Random</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T3.1.1.1.1.3">MIG</th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r" id="S4.T3.1.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.2.2.2">Epoch2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.2.2.3">Epoch3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.1.1.2.2.4">Epoch4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.2.2.5">Epoch2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.2.2.6">Epoch3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.2.2.7">Epoch4</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.3.1.1">10K</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.2">46.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.3">49.42</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.3.1.4">50.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.5">49.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.6">52.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1.7">51.11</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.4.2.1">20K</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2.2">48.23</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2.3">50.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.4.2.4">51.08</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2.5">51.18</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2.6">53.71</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2.7">53.14</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.1.1.5.3.1">50K</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.3.2">49.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.3.3.1">51.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.1.1.5.3.4">50.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.3.5">52.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.3.6.1">55.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.3.7">55.14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a grid search experiment to determine the optimal data size and number of training epochs for fine-tuning a language model on the Tulu3 dataset.  The experiment systematically varied both parameters, and the table shows the average performance (AVG score) achieved for each combination of data size and number of epochs. This helps in identifying the best configuration for maximizing the model's performance on instruction-tuning tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Grid search of appropriate data size and training epochs on the Tulu3 pool. We report the AVG score here.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T4.8.9.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.8.9.1.2">GPU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.8.9.1.3">Time</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.1.2">Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.1"><math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><mo id="A1.T4.1.1.1.m1.1.1" xref="A1.T4.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><times id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.3">0.09</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.2.2.2">ZIP <cite class="ltx_cite ltx_citemacro_cite">Yin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.13835v1#bib.bib42" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.1"><math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.2.2.1.m1.1"><semantics id="A1.T4.2.2.1.m1.1a"><mo id="A1.T4.2.2.1.m1.1.1" xref="A1.T4.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.1.m1.1b"><times id="A1.T4.2.2.1.m1.1.1.cmml" xref="A1.T4.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.3">53.99</td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.3.3.2">IFD <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.13835v1#bib.bib22" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.1"><math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.3.3.1.m1.1"><semantics id="A1.T4.3.3.1.m1.1a"><mo id="A1.T4.3.3.1.m1.1.1" xref="A1.T4.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.1.m1.1b"><times id="A1.T4.3.3.1.m1.1.1.cmml" xref="A1.T4.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.3">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.4.4.2">#InsTag <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.13835v1#bib.bib27" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.1"><math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.4.4.1.m1.1"><semantics id="A1.T4.4.4.1.m1.1a"><mo id="A1.T4.4.4.1.m1.1.1" xref="A1.T4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.1.m1.1b"><times id="A1.T4.4.4.1.m1.1.1.cmml" xref="A1.T4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.3">2.33</td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.5.5.2">DEITA <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.13835v1#bib.bib26" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T4.5.5.1.m1.1"><semantics id="A1.T4.5.5.1.m1.1a"><mi id="A1.T4.5.5.1.m1.1.1" mathvariant="normal" xref="A1.T4.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.1.m1.1b"><ci id="A1.T4.5.5.1.m1.1.1.cmml" xref="A1.T4.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.3">81.56</td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.6.6.2">QDIT <cite class="ltx_cite ltx_citemacro_cite">Bukharin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.13835v1#bib.bib2" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T4.6.6.1.m1.1"><semantics id="A1.T4.6.6.1.m1.1a"><mi id="A1.T4.6.6.1.m1.1.1" mathvariant="normal" xref="A1.T4.6.6.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.1.m1.1b"><ci id="A1.T4.6.6.1.m1.1.1.cmml" xref="A1.T4.6.6.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.3">86.17</td>
</tr>
<tr class="ltx_tr" id="A1.T4.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T4.7.7.2">CaR <cite class="ltx_cite ltx_citemacro_cite">Ge et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.13835v1#bib.bib15" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T4.7.7.1.m1.1"><semantics id="A1.T4.7.7.1.m1.1a"><mi id="A1.T4.7.7.1.m1.1.1" mathvariant="normal" xref="A1.T4.7.7.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.1.m1.1b"><ci id="A1.T4.7.7.1.m1.1.1.cmml" xref="A1.T4.7.7.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.3">0.85</td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T4.8.8.2">MIG</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T4.8.8.1.m1.1"><semantics id="A1.T4.8.8.1.m1.1a"><mi id="A1.T4.8.8.1.m1.1.1" mathvariant="normal" xref="A1.T4.8.8.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.1.m1.1b"><ci id="A1.T4.8.8.1.m1.1.1.cmml" xref="A1.T4.8.8.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.3">0.45</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the efficiency of different data selection methods when sampling 50,000 data points from the Tulu3 dataset.  The efficiency is measured by the time taken to perform the sampling on a single NVIDIA-L20Y GPU. The methods compared include Random sampling, ZIP, IFD, #InsTag, DEITA, CaR, QDIT, and the proposed MIG method.  The table shows the GPU utilization (Yes/No) and the time in seconds for each method.
> <details>
> <summary>read the caption</summary>
> Table 4: Efficiency comparison of different methods for 50K sampling from the Tulu3 pool, with timing measured on a single NVIDIA-L20Y.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T5.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T5.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T5.2.2.2.3">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.4">ARC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.5">BBH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.6">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.7">HumanEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.8">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.9">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T5.1.1.1.1"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="A4.T5.1.1.1.1.m1.1"><semantics id="A4.T5.1.1.1.1.m1.1a"><msub id="A4.T5.1.1.1.1.m1.1.1" xref="A4.T5.1.1.1.1.m1.1.1.cmml"><mtext id="A4.T5.1.1.1.1.m1.1.1.2" xref="A4.T5.1.1.1.1.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T5.1.1.1.1.m1.1.1.3" xref="A4.T5.1.1.1.1.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T5.1.1.1.1.m1.1b"><apply id="A4.T5.1.1.1.1.m1.1.1.cmml" xref="A4.T5.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T5.1.1.1.1.m1.1.1.1.cmml" xref="A4.T5.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A4.T5.1.1.1.1.m1.1.1.2a.cmml" xref="A4.T5.1.1.1.1.m1.1.1.2"><mtext id="A4.T5.1.1.1.1.m1.1.1.2.cmml" xref="A4.T5.1.1.1.1.m1.1.1.2">Avg</mtext></ci><ci id="A4.T5.1.1.1.1.m1.1.1.3a.cmml" xref="A4.T5.1.1.1.1.m1.1.1.3"><mtext id="A4.T5.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A4.T5.1.1.1.1.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.1.1.1.1.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="A4.T5.1.1.1.1.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.10">AlpacaEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.11">MTbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.12">Wildbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T5.2.2.2.2"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="A4.T5.2.2.2.2.m1.1"><semantics id="A4.T5.2.2.2.2.m1.1a"><msub id="A4.T5.2.2.2.2.m1.1.1" xref="A4.T5.2.2.2.2.m1.1.1.cmml"><mtext id="A4.T5.2.2.2.2.m1.1.1.2" xref="A4.T5.2.2.2.2.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T5.2.2.2.2.m1.1.1.3" xref="A4.T5.2.2.2.2.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T5.2.2.2.2.m1.1b"><apply id="A4.T5.2.2.2.2.m1.1.1.cmml" xref="A4.T5.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A4.T5.2.2.2.2.m1.1.1.1.cmml" xref="A4.T5.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A4.T5.2.2.2.2.m1.1.1.2a.cmml" xref="A4.T5.2.2.2.2.m1.1.1.2"><mtext id="A4.T5.2.2.2.2.m1.1.1.2.cmml" xref="A4.T5.2.2.2.2.m1.1.1.2">Avg</mtext></ci><ci id="A4.T5.2.2.2.2.m1.1.1.3a.cmml" xref="A4.T5.2.2.2.2.m1.1.1.3"><mtext id="A4.T5.2.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A4.T5.2.2.2.2.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.2.2.2.2.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="A4.T5.2.2.2.2.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.2.2.13">AVG</th>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T5.2.2.3.1.1">Pool</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.2">72.88</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.3">60.53</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.4">70.51</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.5">51.22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.6">64.99</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.7">48.80</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T5.2.2.3.1.8">61.49</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.9">5.47</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.10">7.10</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.11">-31.51</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T5.2.2.3.1.12">36.91</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T5.2.2.3.1.13">49.20</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T5.2.2.4.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T5.2.2.4.1.1">Random</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.2">75.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.3">60.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.4">51.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.5">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.6">51.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.7">46.03</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T5.2.2.4.1.8">55.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.9">4.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.10">6.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.11">-44.12</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T5.2.2.4.1.12">32.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4.1.13">44.34</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.5.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.5.2.1">InsTag</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.2">70.85</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.3">68.64</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.4">56.25</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.5">43.90</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.6">45.70</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.7">49.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.5.2.8">54.12</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.9">5.09</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.10">7.14</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.11">-35.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.5.2.12">36.23</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.5.2.13">45.17</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.6.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.6.3.1">DEITA</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.2">69.83</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.3">61.85</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.4">60.96</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.5">46.95</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.6">58.01</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.7">46.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.6.3.8">57.36</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.9">7.83</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.10">6.94</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.11">-33.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.6.3.12">36.80</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.6.3.13">47.08</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.7.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.7.4.1">CaR</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.2">62.71</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.3">63.73</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.4">55.42</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.5">44.51</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.6">64.37</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.7">42.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.7.4.8">55.57</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.9">7.33</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.10">7.09</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.11">-31.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.7.4.12">37.51</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.7.4.13">46.54</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.8.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.8.5.1">QDIT</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.2">66.44</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.3">62.45</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.4">58.61</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.5">50.00</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.6">63.64</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.7">45.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.8.5.8">57.71</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.9">9.19</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.10">6.99</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.11">-30.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T5.2.2.8.5.12">37.90</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.2.8.5.13">47.80</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.9.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T5.2.2.9.6.1">MIG</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.2">78.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.3">63.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.4">51.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.5">45.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.6">63.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.7">46.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T5.2.2.9.6.8">58.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.9">7.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.10">7.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.11">-30.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T5.2.2.9.6.12">38.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T5.2.2.9.6.13">48.21</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of different data selection methods on the Openhermes2.5 dataset.  It shows the performance of each method across various benchmarks, including both knowledge-based (ARC, BBH, GSM8K, HumanEval, MMLU, IFEval) and human-preference (AlpacaEval, MTBench, Wildbench) metrics. The results illustrate the impact of different data selection techniques on the final model's performance after instruction tuning, providing a detailed comparison for various evaluation aspects.
> <details>
> <summary>read the caption</summary>
> Table 5: Full Results on the Openhermes2.5 Pool.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T6.4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T6.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T6.4.2.2.3">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.4">ARC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.5">BBH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.6">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.7">HumanEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.8">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.9">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T6.3.1.1.1"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="A4.T6.3.1.1.1.m1.1"><semantics id="A4.T6.3.1.1.1.m1.1a"><msub id="A4.T6.3.1.1.1.m1.1.1" xref="A4.T6.3.1.1.1.m1.1.1.cmml"><mtext id="A4.T6.3.1.1.1.m1.1.1.2" xref="A4.T6.3.1.1.1.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T6.3.1.1.1.m1.1.1.3" xref="A4.T6.3.1.1.1.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T6.3.1.1.1.m1.1b"><apply id="A4.T6.3.1.1.1.m1.1.1.cmml" xref="A4.T6.3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T6.3.1.1.1.m1.1.1.1.cmml" xref="A4.T6.3.1.1.1.m1.1.1">subscript</csymbol><ci id="A4.T6.3.1.1.1.m1.1.1.2a.cmml" xref="A4.T6.3.1.1.1.m1.1.1.2"><mtext id="A4.T6.3.1.1.1.m1.1.1.2.cmml" xref="A4.T6.3.1.1.1.m1.1.1.2">Avg</mtext></ci><ci id="A4.T6.3.1.1.1.m1.1.1.3a.cmml" xref="A4.T6.3.1.1.1.m1.1.1.3"><mtext id="A4.T6.3.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A4.T6.3.1.1.1.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T6.3.1.1.1.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="A4.T6.3.1.1.1.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.10">AlpacaEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.11">MTbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.12">Wildbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T6.4.2.2.2"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="A4.T6.4.2.2.2.m1.1"><semantics id="A4.T6.4.2.2.2.m1.1a"><msub id="A4.T6.4.2.2.2.m1.1.1" xref="A4.T6.4.2.2.2.m1.1.1.cmml"><mtext id="A4.T6.4.2.2.2.m1.1.1.2" xref="A4.T6.4.2.2.2.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T6.4.2.2.2.m1.1.1.3" xref="A4.T6.4.2.2.2.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T6.4.2.2.2.m1.1b"><apply id="A4.T6.4.2.2.2.m1.1.1.cmml" xref="A4.T6.4.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A4.T6.4.2.2.2.m1.1.1.1.cmml" xref="A4.T6.4.2.2.2.m1.1.1">subscript</csymbol><ci id="A4.T6.4.2.2.2.m1.1.1.2a.cmml" xref="A4.T6.4.2.2.2.m1.1.1.2"><mtext id="A4.T6.4.2.2.2.m1.1.1.2.cmml" xref="A4.T6.4.2.2.2.m1.1.1.2">Avg</mtext></ci><ci id="A4.T6.4.2.2.2.m1.1.1.3a.cmml" xref="A4.T6.4.2.2.2.m1.1.1.3"><mtext id="A4.T6.4.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A4.T6.4.2.2.2.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T6.4.2.2.2.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="A4.T6.4.2.2.2.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T6.4.2.2.13">AVG</th>
</tr>
<tr class="ltx_tr" id="A4.T6.4.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T6.4.2.3.1.1">Pool</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.2">73.22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.3">54.12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.4">40.49</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.5">45.12</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.6">61.05</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.7">43.25</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T6.4.2.3.1.8">52.88</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.9">3.85</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.10">6.78</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.11">-54.21</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T6.4.2.3.1.12">31.51</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.4.2.3.1.13">42.19</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T6.4.2.4.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T6.4.2.4.1.1">Random</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.2">61.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.3">58.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.4">32.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.5">42.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.6">62.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.7">41.96</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T6.4.2.4.1.8">49.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.9">3.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.10">6.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.11">-54.39</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T6.4.2.4.1.12">29.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.2.4.1.13">39.81</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.2.5.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.5.2.1">InsTag</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.2">64.07</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.3">51.82</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.4">36.62</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.5">28.66</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.6">55.11</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.7">40.85</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.5.2.8">46.19</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.9">5.22</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.10">6.56</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.11">-50.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.5.2.12">31.89</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.5.2.13">39.04</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.2.6.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.6.3.1">DEITA</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.2">71.86</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.3">50.82</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.4">27.67</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.5">40.24</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.6">63.36</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.7">38.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.6.3.8">48.70</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.9">4.22</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.10">6.48</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.11">-48.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.6.3.12">31.60</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.6.3.13">40.15</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.2.7.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.7.4.1">CaR</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.2">72.88</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.3">48.90</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.4">20.92</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.5">46.95</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.6">62.68</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.7">38.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.7.4.8">48.43</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.9">5.22</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.10">6.51</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.11">-49.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.7.4.12">31.86</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.7.4.13">40.15</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.2.8.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.8.5.1">QDIT</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.2">71.53</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.3">51.48</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.4">29.95</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.5">41.46</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.6">63.22</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.7">36.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.8.5.8">49.10</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.9">5.09</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.10">6.55</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.11">-46.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T6.4.2.8.5.12">32.52</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.2.8.5.13">40.81</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.2.9.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T6.4.2.9.6.1">MIG</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.2">74.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.3">51.93</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.4">31.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.5">43.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.6">62.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.7">39.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T6.4.2.9.6.8">50.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.9">5.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.10">6.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.11">-47.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A4.T6.4.2.9.6.12">32.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T6.4.2.9.6.13">41.80</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of different data selection methods on the Xsota dataset.  It shows the performance of each method across various benchmarks, including both knowledge-based (ARC, BBH, GSM8K, MMLU, IFEval) and human-preference (AlpacaEval, MTBench, Wildbench) metrics.  The results are presented for Llama3.1-8B model fine-tuned on subsets selected by each method. This allows for a direct comparison of the effectiveness of different data selection strategies in improving the performance of LLMs on diverse tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Full Results on the Xs⁢o⁢t⁢asubscript𝑋𝑠𝑜𝑡𝑎X_{sota}italic_X start_POSTSUBSCRIPT italic_s italic_o italic_t italic_a end_POSTSUBSCRIPT Pool.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T7.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T7.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T7.2.2.2.3">Node Number</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.4">ARC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.5">BBH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.6">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.7">HumanEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.8">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.9">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T7.1.1.1.1"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="A4.T7.1.1.1.1.m1.1"><semantics id="A4.T7.1.1.1.1.m1.1a"><msub id="A4.T7.1.1.1.1.m1.1.1" xref="A4.T7.1.1.1.1.m1.1.1.cmml"><mtext id="A4.T7.1.1.1.1.m1.1.1.2" xref="A4.T7.1.1.1.1.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T7.1.1.1.1.m1.1.1.3" xref="A4.T7.1.1.1.1.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T7.1.1.1.1.m1.1b"><apply id="A4.T7.1.1.1.1.m1.1.1.cmml" xref="A4.T7.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.1.1.1.1.m1.1.1.1.cmml" xref="A4.T7.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A4.T7.1.1.1.1.m1.1.1.2a.cmml" xref="A4.T7.1.1.1.1.m1.1.1.2"><mtext id="A4.T7.1.1.1.1.m1.1.1.2.cmml" xref="A4.T7.1.1.1.1.m1.1.1.2">Avg</mtext></ci><ci id="A4.T7.1.1.1.1.m1.1.1.3a.cmml" xref="A4.T7.1.1.1.1.m1.1.1.3"><mtext id="A4.T7.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A4.T7.1.1.1.1.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.1.1.1.1.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.1.1.1.1.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.10">AlpacaEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.11">MTbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.12">Wildbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T7.2.2.2.2"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="A4.T7.2.2.2.2.m1.1"><semantics id="A4.T7.2.2.2.2.m1.1a"><msub id="A4.T7.2.2.2.2.m1.1.1" xref="A4.T7.2.2.2.2.m1.1.1.cmml"><mtext id="A4.T7.2.2.2.2.m1.1.1.2" xref="A4.T7.2.2.2.2.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T7.2.2.2.2.m1.1.1.3" xref="A4.T7.2.2.2.2.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T7.2.2.2.2.m1.1b"><apply id="A4.T7.2.2.2.2.m1.1.1.cmml" xref="A4.T7.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A4.T7.2.2.2.2.m1.1.1.1.cmml" xref="A4.T7.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A4.T7.2.2.2.2.m1.1.1.2a.cmml" xref="A4.T7.2.2.2.2.m1.1.1.2"><mtext id="A4.T7.2.2.2.2.m1.1.1.2.cmml" xref="A4.T7.2.2.2.2.m1.1.1.2">Avg</mtext></ci><ci id="A4.T7.2.2.2.2.m1.1.1.3a.cmml" xref="A4.T7.2.2.2.2.m1.1.1.3"><mtext id="A4.T7.2.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A4.T7.2.2.2.2.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.2.2.2.2.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.2.2.2.2.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T7.2.2.2.13">AVG</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.2.3.1.1">839</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.2">73.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.3">66.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.4">73.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.5">52.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.6">64.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.7">61.18</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.2.3.1.8">65.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.9">16.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.10">7.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.11">-19.59</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T7.2.2.3.1.12">42.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.3.1.13">53.97</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.4.2.1">1629</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.2">76.27</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.3">66.22</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.4">72.18</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.5">56.71</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.6">64.71</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.7">58.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.4.2.8">65.84</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.9">15.16</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.10">7.40</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.11">-18.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.4.2.12">43.36</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.4.2.13">54.60</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.5.3.1">3070</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.2">78.31</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.3">66.80</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.4">72.25</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.5">55.49</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.6">65.03</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.7">63.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.5.3.8">66.85</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.9">14.04</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.10">7.25</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.11">-17.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.5.3.12">42.58</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.5.3.13">54.71</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.6.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.6.4.1">4531</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.2">80.00</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.3">66.39</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.4">72.02</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.5">57.93</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.6">64.44</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.7">65.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.6.4.8">67.64</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.9">14.66</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.10">7.32</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.11">-17.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.6.4.12">42.99</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.6.4.13">55.32</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.7.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.7.5.1">5683</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.2">83.73</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.3">66.47</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.4">72.55</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.5">55.49</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.6">64.22</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.7">64.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.7.5.8">67.77</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.9">12.55</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.10">7.35</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.11">-20.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T7.2.2.7.5.12">41.99</td>
<td class="ltx_td ltx_align_center" id="A4.T7.2.2.7.5.13">54.88</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.8.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T7.2.2.8.6.1">6738</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.2">76.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.3">65.92</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.4">70.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.5">52.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.6">64.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.7">64.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T7.2.2.8.6.8">65.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.9">11.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.10">7.36</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.11">-19.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T7.2.2.8.6.12">41.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.2.2.8.6.13">53.63</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of the model's performance across various knowledge-based and human-preference benchmarks. The results are categorized by different numbers of nodes in the label graph used in the MIG algorithm.  It shows how the model's performance varies with different graph structures, highlighting the impact of graph size on the final results. This allows for an analysis of the relationship between the complexity of the semantic representation and the model's ability to generalize and perform well on diverse benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 7: Full Results across Different Node Numbers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T8.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T8.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T8.2.2.2.3">Node Number</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.4">ARC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.5">BBH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.6">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.7">HumanEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.8">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.9">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T8.1.1.1.1"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="A4.T8.1.1.1.1.m1.1"><semantics id="A4.T8.1.1.1.1.m1.1a"><msub id="A4.T8.1.1.1.1.m1.1.1" xref="A4.T8.1.1.1.1.m1.1.1.cmml"><mtext id="A4.T8.1.1.1.1.m1.1.1.2" xref="A4.T8.1.1.1.1.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T8.1.1.1.1.m1.1.1.3" xref="A4.T8.1.1.1.1.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T8.1.1.1.1.m1.1b"><apply id="A4.T8.1.1.1.1.m1.1.1.cmml" xref="A4.T8.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.1.1.1.1.m1.1.1.1.cmml" xref="A4.T8.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A4.T8.1.1.1.1.m1.1.1.2a.cmml" xref="A4.T8.1.1.1.1.m1.1.1.2"><mtext id="A4.T8.1.1.1.1.m1.1.1.2.cmml" xref="A4.T8.1.1.1.1.m1.1.1.2">Avg</mtext></ci><ci id="A4.T8.1.1.1.1.m1.1.1.3a.cmml" xref="A4.T8.1.1.1.1.m1.1.1.3"><mtext id="A4.T8.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A4.T8.1.1.1.1.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.1.1.1.1.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.1.1.1.1.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.10">AlpacaEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.11">MTbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.12">Wildbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T8.2.2.2.2"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="A4.T8.2.2.2.2.m1.1"><semantics id="A4.T8.2.2.2.2.m1.1a"><msub id="A4.T8.2.2.2.2.m1.1.1" xref="A4.T8.2.2.2.2.m1.1.1.cmml"><mtext id="A4.T8.2.2.2.2.m1.1.1.2" xref="A4.T8.2.2.2.2.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T8.2.2.2.2.m1.1.1.3" xref="A4.T8.2.2.2.2.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T8.2.2.2.2.m1.1b"><apply id="A4.T8.2.2.2.2.m1.1.1.cmml" xref="A4.T8.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A4.T8.2.2.2.2.m1.1.1.1.cmml" xref="A4.T8.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A4.T8.2.2.2.2.m1.1.1.2a.cmml" xref="A4.T8.2.2.2.2.m1.1.1.2"><mtext id="A4.T8.2.2.2.2.m1.1.1.2.cmml" xref="A4.T8.2.2.2.2.m1.1.1.2">Avg</mtext></ci><ci id="A4.T8.2.2.2.2.m1.1.1.3a.cmml" xref="A4.T8.2.2.2.2.m1.1.1.3"><mtext id="A4.T8.2.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A4.T8.2.2.2.2.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.2.2.2.2.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="A4.T8.2.2.2.2.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.2.13">AVG</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.2.2.3.1.1">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.2">77.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.3">65.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.4">70.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.5">54.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.6">64.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.7">63.96</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.2.2.3.1.8">66.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.9">11.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.10">7.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.11">-21.45</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T8.2.2.3.1.12">40.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.3.1.13">53.67</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.4.2.1">0.86</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.2">80.68</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.3">65.72</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.4">71.49</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.5">55.49</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.6">64.15</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.7">62.85</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.4.2.8">66.73</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.9">14.04</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.10">7.21</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.11">-19.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.4.2.12">42.08</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.4.2.13">54.41</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.5.3.1">0.88</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.2">76.95</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.3">67.77</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.4">72.02</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.5">57.93</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.6">64.99</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.7">62.85</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.5.3.8">67.09</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.9">13.42</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.10">7.04</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.11">-20.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.5.3.12">41.25</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.5.3.13">54.17</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.6.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.6.4.1">0.9</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.2">80.00</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.3">66.39</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.4">72.02</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.5">57.93</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.6">64.44</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.7">65.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.6.4.8">67.64</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.9">14.66</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.10">7.32</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.11">-17.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.6.4.12">42.99</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.13">55.32</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.7.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.7.5.1">0.92</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.2">83.73</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.3">66.39</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.4">71.80</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.5">58.54</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.6">64.35</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.7">65.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.7.5.8">68.37</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.9">12.55</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.10">6.97</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.11">-19.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T8.2.2.7.5.12">40.87</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.13">54.62</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.8.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.2.2.8.6.1">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.2">78.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.3">65.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.4">70.36</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.5">56.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.6">64.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.7">64.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.2.2.8.6.8">66.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.9">10.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.10">7.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.11">-19.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T8.2.2.8.6.12">40.82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.8.6.13">53.71</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of MIG and baseline methods across various benchmarks using Llama-3.1-8B as the base model on the Tulu3 dataset.  The key difference is that the results shown are grouped by the different edge densities used in constructing the label graph within the MIG algorithm.  Lower edge density values indicate a denser graph, representing stronger semantic relationships between labels. The table displays detailed performance metrics across both knowledge-based and human-preference benchmarks for each edge density setting, showing how the choice of edge density affects the overall performance of the model.
> <details>
> <summary>read the caption</summary>
> Table 8: Full Results across Different Edge Densities.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T9.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T9.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T9.2.2.2.3">Node Number</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.4">ARC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.5">BBH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.6">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.7">HumanEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.8">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.9">IFEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T9.1.1.1.1"><math alttext="\text{Avg}_{\text{obj}}" class="ltx_Math" display="inline" id="A4.T9.1.1.1.1.m1.1"><semantics id="A4.T9.1.1.1.1.m1.1a"><msub id="A4.T9.1.1.1.1.m1.1.1" xref="A4.T9.1.1.1.1.m1.1.1.cmml"><mtext id="A4.T9.1.1.1.1.m1.1.1.2" xref="A4.T9.1.1.1.1.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T9.1.1.1.1.m1.1.1.3" xref="A4.T9.1.1.1.1.m1.1.1.3a.cmml">obj</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T9.1.1.1.1.m1.1b"><apply id="A4.T9.1.1.1.1.m1.1.1.cmml" xref="A4.T9.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A4.T9.1.1.1.1.m1.1.1.1.cmml" xref="A4.T9.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A4.T9.1.1.1.1.m1.1.1.2a.cmml" xref="A4.T9.1.1.1.1.m1.1.1.2"><mtext id="A4.T9.1.1.1.1.m1.1.1.2.cmml" xref="A4.T9.1.1.1.1.m1.1.1.2">Avg</mtext></ci><ci id="A4.T9.1.1.1.1.m1.1.1.3a.cmml" xref="A4.T9.1.1.1.1.m1.1.1.3"><mtext id="A4.T9.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A4.T9.1.1.1.1.m1.1.1.3">obj</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.1.1.1.1.m1.1c">\text{Avg}_{\text{obj}}</annotation><annotation encoding="application/x-llamapun" id="A4.T9.1.1.1.1.m1.1d">Avg start_POSTSUBSCRIPT obj end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.10">AlpacaEval</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.11">MTbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.12">Wildbench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T9.2.2.2.2"><math alttext="\text{Avg}_{\text{sub}}" class="ltx_Math" display="inline" id="A4.T9.2.2.2.2.m1.1"><semantics id="A4.T9.2.2.2.2.m1.1a"><msub id="A4.T9.2.2.2.2.m1.1.1" xref="A4.T9.2.2.2.2.m1.1.1.cmml"><mtext id="A4.T9.2.2.2.2.m1.1.1.2" xref="A4.T9.2.2.2.2.m1.1.1.2a.cmml">Avg</mtext><mtext id="A4.T9.2.2.2.2.m1.1.1.3" xref="A4.T9.2.2.2.2.m1.1.1.3a.cmml">sub</mtext></msub><annotation-xml encoding="MathML-Content" id="A4.T9.2.2.2.2.m1.1b"><apply id="A4.T9.2.2.2.2.m1.1.1.cmml" xref="A4.T9.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A4.T9.2.2.2.2.m1.1.1.1.cmml" xref="A4.T9.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A4.T9.2.2.2.2.m1.1.1.2a.cmml" xref="A4.T9.2.2.2.2.m1.1.1.2"><mtext id="A4.T9.2.2.2.2.m1.1.1.2.cmml" xref="A4.T9.2.2.2.2.m1.1.1.2">Avg</mtext></ci><ci id="A4.T9.2.2.2.2.m1.1.1.3a.cmml" xref="A4.T9.2.2.2.2.m1.1.1.3"><mtext id="A4.T9.2.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A4.T9.2.2.2.2.m1.1.1.3">sub</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.2.2.2.2.m1.1c">\text{Avg}_{\text{sub}}</annotation><annotation encoding="application/x-llamapun" id="A4.T9.2.2.2.2.m1.1d">Avg start_POSTSUBSCRIPT sub end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.2.2.2.13">AVG</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T9.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.2.2.3.1.1">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.2">74.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.3">65.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.4">71.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.5">49.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.6">64.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.7">63.59</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.2.2.3.1.8">64.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.9">10.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.10">7.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.11">-21.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T9.2.2.3.1.12">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.2.2.3.1.13">52.56</td>
</tr>
<tr class="ltx_tr" id="A4.T9.2.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.4.2.1">0.6</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.2">80.68</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.3">66.78</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.4">72.33</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.5">54.88</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.6">64.66</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.7">63.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.4.2.8">67.12</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.9">13.29</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.10">7.13</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.11">-19.87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.4.2.12">41.55</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.4.2.13">54.34</td>
</tr>
<tr class="ltx_tr" id="A4.T9.2.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.5.3.1">0.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.2">78.98</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.3">66.46</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.4">73.54</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.5">54.88</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.6">64.83</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.7">64.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.5.3.8">67.14</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.9">14.04</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.10">7.14</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.11">-17.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.5.3.12">42.19</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.5.3.13">54.67</td>
</tr>
<tr class="ltx_tr" id="A4.T9.2.2.6.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.6.4.1">1.0</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.2">80.00</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.3">66.39</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.4">72.02</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.5">57.93</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.6">64.44</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.7">65.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.6.4.8">67.64</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.9">14.66</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.10">7.32</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.11">-17.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.6.4.12">42.99</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.6.4.13">55.32</td>
</tr>
<tr class="ltx_tr" id="A4.T9.2.2.7.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.7.5.1">1.2</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.2">80.00</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.3">67.42</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.4">73.39</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.5">52.44</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.6">64.89</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.7">64.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.7.5.8">67.04</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.9">12.42</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.10">7.20</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.11">-17.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T9.2.2.7.5.12">41.85</td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.7.5.13">54.45</td>
</tr>
<tr class="ltx_tr" id="A4.T9.2.2.8.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.2.2.8.6.1">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.2">81.36</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.3">67.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.4">70.36</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.5">54.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.6">64.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.7">63.96</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.2.2.8.6.8">67.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.9">13.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.10">7.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.11">-20.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T9.2.2.8.6.12">41.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.2.2.8.6.13">54.19</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the comprehensive results of experiments conducted to assess the impact of different propagation weights on the performance of the model.  The experiments evaluate the model's performance across various benchmarks, including both knowledge-based and human-preference benchmarks, to provide a holistic view of the model's capabilities with varied propagation weights.  It displays the scores achieved by the model on each benchmark for each propagation weight setting.
> <details>
> <summary>read the caption</summary>
> Table 9: Full Results across Different Propagation Weights.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13835/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13835/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}