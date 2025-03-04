---
title: "MONSTER: Monash Scalable Time Series Evaluation Repository"
summary: "MONSTER: Large datasets for time series classification!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Monash University",]
showSummary: true
date: 2025-02-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15122 {{< /keyword >}}
{{< keyword icon="writer" >}} Angus Dempster et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15122" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15122" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15122/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The UCR and UEA archives have been instrumental in time series classification, yet their datasets are notably small. This favors models optimized for variance minimization, potentially hindering the discovery of solutions applicable to large-scale, real-world data. Current benchmarks may not fully represent the theoretical or practical challenges inherent in larger, more complex datasets. 



To address this, MONSTER(Monash Scalable Time Series Evaluation Repository)—a collection of large univariate and multivariate datasets was created. The goal is to diversify the research landscape, encouraging methods suited for larger datasets and inspiring the exploration of learning from extensive data quantities. Preliminary baseline results for selected methods are also provided.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MONSTER, a new large-scale time series benchmark, is introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current benchmarks favor low-variance models, limiting real-world applicability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Larger datasets select for computationally efficient and scalable methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
The study introduces **MONSTER**, a large time-series dataset, to push for scalability & broader model relevance. This tackles current benchmarks' limitations and inspires impactful, real-world research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.15122/x1.png)

> 🔼 This figure compares the learning curves of two time series classification models trained on the S2Agri-10pc-17 dataset.  The x-axis represents the size of the training dataset, and the y-axis represents the 0-1 loss (classification error rate). One model is a low-variance, high-bias model that minimizes variance and thus performs well on small datasets but generalizes poorly. The other model is a low-bias, high-variance model that prioritizes minimizing bias, performing better with larger datasets but having higher variance and thus lower performance with smaller datasets. The plot visually demonstrates the bias-variance tradeoff in machine learning, showing how model performance changes with increasing amounts of training data and the differing behaviors of high bias vs high variance models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning curves for a low variance model vs a low bias model on S2Agri-10pc-17.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">Instances</span></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">Length</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">Channels</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.1">Classes</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T1.1.2.2.1">Audio</th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.3.3.1">AudioMNIST</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.3.3.2">30,000</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.3.3.3">47,998</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.3.3.4">1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.3.3.5">10</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.4.4.1">AudioMNIST-DS</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.4.4.2">30,000</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.4.4.3">4,000</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.4.4.4">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.4.4.5">10</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.5.5.1">CornellWhaleChallenge</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.5.5.2">30,000</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.5.5.3">4,000</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.5.5.4">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.5.5.5">2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.6.6.1">FruitFlies</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.6.6.2">34,518</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.6.6.3">5,000</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.6.6.4">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.6.6.5">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.7.7.1">InsectSound</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.7.7.2">50,000</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.7.7.3">600</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.7.7.4">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.7.7.5">10</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.8.8.1">MosquitoSound</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.8.8.2">279,566</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.8.8.3">3,750</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.8.8.4">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.8.8.5">6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.9.9.1">WhaleSounds</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.9.9.2">105,163</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.9.9.3">2,500</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.9.9.4">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.9.9.5">8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T1.1.10.10.1">Satellite Image Time Series</th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.11.11.1">LakeIce</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.11.11.2">129,280</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.11.11.3">161</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.11.11.4">1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.11.11.5">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.12.12.1">S2Agri</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.12.12.2">59,268,823</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.12.12.3">24</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.12.12.4">10</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.12.12.5">17 / 34</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.13.13.1">S2Agri-10pc</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.13.13.2">5,850,881</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.13.13.3">24</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.13.13.4">10</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.13.13.5">17 / 29</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.14.14.1">TimeSen2Crop</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.14.14.2">1,135,511</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.14.14.3">365</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.14.14.4">9</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.14.14.5">16</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.15.15.1">Tiselac</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.15.15.2">99,687</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.15.15.3">23</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.15.15.4">10</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.15.15.5">9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T1.1.16.16.1">EEG</th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.17.17.1">CrowdSourced</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.17.17.2">12,289</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.17.17.3">256</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.17.17.4">14</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.17.17.5">2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.18.18.1">DreamerA</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.18.18.2">170,246</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.18.18.3">256</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.18.18.4">14</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.18.18.5">2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.19.19.1">DreamerV</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.19.19.2">170,246</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.19.19.3">256</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.19.19.4">14</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.19.19.5">2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.20.20.1">STEW</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.20.20.2">28,512</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.20.20.3">256</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.20.20.4">14</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.20.20.5">2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.21.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T1.1.21.21.1">Human Activity Recognition</th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.22.22.1">Opportunity</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.22.22.2">17,386</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.22.22.3">100</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.22.22.4">113</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.22.22.5">5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.23.23.1">PAMAP2</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.23.23.2">38,856</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.23.23.3">100</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.23.23.4">52</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.23.23.5">12</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.24.24.1">Skoda</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.24.24.2">14,117</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.24.24.3">100</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.24.24.4">60</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.24.24.5">11</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.25.25.1">UCIActivity</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.25.25.2">10,299</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.25.25.3">128</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.25.25.4">9</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.25.25.5">6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.26.26.1">USCActivity</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.26.26.2">56,228</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.26.26.3">100</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.26.26.4">6</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.26.26.5">12</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.27.27.1">WISDM</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.27.27.2">17,166</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.27.27.3">100</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.27.27.4">3</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.27.27.5">6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.28.28.1">WISDM2</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.28.28.2">149,034</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.28.28.3">100</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.28.28.4">3</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.28.28.5">6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.29.29">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T1.1.29.29.1">Counts</th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.30.30.1">Pedestrian</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.30.30.2">189,621</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.30.30.3">24</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.30.30.4">1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.30.30.5">82</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.31.31.1">Traffic</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.31.31.2">1,460,968</th>
<td class="ltx_td ltx_align_right" id="S3.T1.1.31.31.3">24</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.31.31.4">1</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.31.31.5">7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.32.32">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S3.T1.1.32.32.1">Other</th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.33.33.1">FordChallenge</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.33.33.2">36,257</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.33.33.3">40</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.33.33.4">30</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.33.33.5">2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.34.34.1">LenDB</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.34.34.2">1,244,942</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.34.34.3">540</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.34.34.4">3</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.1.34.34.5">2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides a comprehensive overview of the datasets included in the MONSTER benchmark.  For each dataset, it lists the number of instances (time series), the length of each time series, the number of channels (univariate or multivariate), and the number of classes in the dataset.  The datasets are categorized into groups such as Audio, Satellite Image Time Series, EEG, Human Activity Recognition, Counts, and Other, indicating the source or type of data.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of Monster datasets.
> </details>





### In-depth insights


#### Dataset Lottery
The 'dataset lottery' concept highlights how the **choice of datasets significantly shapes machine learning research directions**. Certain benchmarks become foundational, influencing which models and algorithms are favored. This can lead to a narrow focus, where methods optimized for popular datasets may not generalize well to broader, real-world problems. The risk is that progress becomes **'benchmark-driven' rather than 'problem-driven**, potentially limiting exploration of alternative approaches better suited for diverse data characteristics. Recognizing this 'lottery' effect is crucial for fostering a more robust and versatile field.

#### Bias Tradeoff
The bias-variance tradeoff is a fundamental concept in machine learning. It states that **models with high bias tend to underfit the data**, while **models with high variance tend to overfit the data**. A good model strikes a balance, generalizing well to unseen data. **High-bias models** are simpler, making strong assumptions. Consequently, they might miss important patterns. **High-variance models** are complex, fitting noise in the training data. Finding the optimal point involves managing model complexity and data quantity. More data reduces variance, allowing for more complex models. Regularization reduces variance by penalizing complexity. The bias-variance tradeoff is crucial for benchmark design, as datasets should reflect real-world challenges, ensuring that models generalize well beyond the training data.

#### Scalable Data
**Scalable Data** refers to datasets that can be expanded without compromising performance. This is crucial in time series analysis as real-world data often grows exponentially. A key challenge is developing models that remain accurate and efficient as data volume increases. This involves algorithms with low computational complexity and architectures that can leverage parallel processing. Furthermore, effective data management strategies, such as data summarization and feature selection, become essential for handling large-scale time series data. Addressing the scalability issue is not just about processing speed; it also encompasses memory management, storage requirements, and the ability to handle streaming data in real-time or near real-time. Scalable data drives innovation and is more useful than a small set of data.

#### Training time
The paper dedicates a section to training time, a crucial aspect of evaluating machine learning models, especially with the new MONSTER dataset. It emphasizes the **computational cost associated with various models** across the 29 datasets. The analysis is separated for GPU and CPU methods, highlighting the efficiency differences. **HYDRA demonstrates exceptional speed** on GPUs, significantly faster than other GPU-based models.  QUANT, while CPU-bound, offers a reasonable training time. The details provide insights into the **trade-offs between accuracy and computational cost**, especially for the MONSTER benchmark.

#### Hardware Bottleneck
The 'hardware lottery' significantly impacts time series classification. **Larger datasets favor methods computationally suited to current hardware**. Methods with high computational or memory demands become impractical. **This creates a selection pressure for efficiency**, potentially overlooking theoretically superior but resource-intensive approaches. The field must balance algorithmic innovation with practical hardware limitations to achieve real-world scalability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.15122/x2.png)

> 🔼 This figure shows the distribution of classes within each of the audio datasets used in the MONSTER benchmark.  Each dataset is represented as a bar chart, with each bar corresponding to one of the classes in that dataset. The height of each bar is proportional to the number of instances belonging to that class. This visualization helps to understand the class imbalance in each of the datasets, showing whether certain classes are more heavily represented than others.
> <details>
> <summary>read the caption</summary>
> Figure 2: Class distributions for the audio datasets.
> </details>



![](https://arxiv.org/html/2502.15122/x3.png)

> 🔼 This figure shows the distribution of classes for each of the satellite-based datasets included in the MONSTER benchmark.  Each bar represents a different dataset, and the segments within each bar represent the proportions of samples belonging to each class within that dataset.  The class distributions vary significantly across datasets, highlighting the diversity of the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: Class distributions for the satellite datasets.
> </details>



![](https://arxiv.org/html/2502.15122/x4.png)

> 🔼 This figure shows a map of France highlighting the specific Sentinel-2 tile used to create the S2Agri dataset.  The S2Agri dataset is a land cover classification dataset, and the selection of this particular tile is important because it contains a diverse range of crop types and terrain conditions within its 12,100 square kilometer area, which allows for a robust and representative dataset for machine learning.
> <details>
> <summary>read the caption</summary>
> Figure 4: Map of France showing the location of the Sentinel-2 tile used in the S2Agri dataset.
> </details>



![](https://arxiv.org/html/2502.15122/extracted/6221458/Figs/TimeSen2Crop_map.png)

> 🔼 This figure shows a map of Austria highlighting the locations of the 15 Sentinel-2 tiles used in the TimeSen2Crop dataset.  The map provides geographical context for the dataset, illustrating the spatial coverage and distribution of the data.
> <details>
> <summary>read the caption</summary>
> (a) Map of Austria showing Sentinel-2 Tiles
> </details>



![](https://arxiv.org/html/2502.15122/extracted/6221458/Figs/TimeSen2Crop.png)

> 🔼 This figure shows the distribution of land cover classes for each of the 15 Sentinel-2 tiles used in the TimeSen2Crop dataset. Each bar represents a different class, and the height of each bar indicates the number of pixels belonging to that class in a given tile. The figure helps visualize the class imbalance and spatial distribution of land cover across the tiles, providing insights into the characteristics of the dataset.
> <details>
> <summary>read the caption</summary>
> (b) Class counts by Sentinel-2 Tile
> </details>



![](https://arxiv.org/html/2502.15122/extracted/6221458/Figs/Tiselac_map.jpeg)

> 🔼 This figure visualizes the spatial distribution of Sentinel-2 tiles across Austria and the class counts within each tile for the TimeSen2Crop dataset.  Subfigure (a) shows a map of Austria highlighting the location of the 15 Sentinel-2 tiles used in the dataset.  Subfigure (b) provides a bar chart illustrating the number of samples belonging to each of the 15 land cover classes present in each of those 15 tiles.
> <details>
> <summary>read the caption</summary>
> Figure 5: Location of Sentinel-2 tiles and class counts for the TimeSen2Crop dataset
> </details>



![](https://arxiv.org/html/2502.15122/extracted/6221458/Figs/Tiselac_counts.png)

> 🔼 This figure shows a map of Reunion Island overlaid with colors representing the different cross-validation folds used in the TiSeLaC dataset.  It visually demonstrates how the data is split geographically for evaluation purposes. This split ensures that the training and testing sets are spatially distinct, leading to more realistic estimations of the models' generalisation capabilities.
> <details>
> <summary>read the caption</summary>
> (a) Map of Reunion Island and fold data distribution
> </details>



![](https://arxiv.org/html/2502.15122/x5.png)

> 🔼 This figure shows the distribution of class labels across the five cross-validation folds created for the TiSeLaC dataset.  The y-axis represents the number of samples, while the x-axis shows the fold number. Each color represents a different class label, allowing for a visual comparison of class balance across the folds. This is important for assessing the robustness and generalizability of machine learning models trained on this dataset.
> <details>
> <summary>read the caption</summary>
> (b) Label counts by fold
> </details>



![](https://arxiv.org/html/2502.15122/x6.png)

> 🔼 Figure 6 is a visualization showing the spatial distribution of data points across different folds of the Tiselac dataset on Reunion Island.  Subfigure (a) displays a map of Reunion Island from OpenStreetMap, where different colors represent different folds. Note that the sizes of the colored areas are not representative of the actual number of data points within those regions. Subfigure (b) shows a bar chart illustrating the class distribution for each fold, providing insights into the class balance within each fold of the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: Map of Reunion Island and label counts by fold for the Tiselac dataset. Note (a); Map from Open Street Map, sample data pixels are not to scale.
> </details>



![](https://arxiv.org/html/2502.15122/x7.png)

> 🔼 Figure 7 presents a visual representation of the class distributions for the four EEG datasets included in the MONSTER benchmark. Each dataset is depicted as a stacked bar chart, where the height of each segment corresponds to the number of instances belonging to a specific class. This visualization allows for easy comparison of class frequencies across the datasets and helps to understand the class imbalance present in each dataset.  The four datasets are: CrowdSourced, DreamerA, DreamerV, and STEW.
> <details>
> <summary>read the caption</summary>
> Figure 7: Class distributions for the EEG datasets.
> </details>



![](https://arxiv.org/html/2502.15122/x8.png)

> 🔼 This figure visualizes the class distribution within each of the Human Activity Recognition (HAR) datasets included in the MONSTER benchmark.  It provides a quick overview of the class imbalance or balance in each dataset, allowing for a visual comparison of the datasets' characteristics before performing any analysis.
> <details>
> <summary>read the caption</summary>
> Figure 8: Class distributions for the HAR datasets.
> </details>



![](https://arxiv.org/html/2502.15122/x9.png)

> 🔼 This figure shows a pie chart that visualizes the distribution of 18 different activity categories within the PAMAP2 dataset. Each slice of the pie chart represents a specific activity, and the size of the slice is proportional to the number of instances of that activity in the dataset. This provides a clear overview of the class distribution, highlighting the prevalence of certain activities over others.  The dataset includes a variety of activities of daily life.
> <details>
> <summary>read the caption</summary>
> Figure 9: Distribution of activity categories for PAMAP2.
> </details>



![](https://arxiv.org/html/2502.15122/x10.png)

> 🔼 This figure shows a pie chart illustrating the distribution of activity categories in the Skoda dataset. The Skoda dataset captures 10 specific manipulative gestures performed in a car maintenance scenario.  Each slice of the pie chart represents a different activity category, with the size of the slice proportional to the number of samples belonging to that category. The chart provides a visual representation of the class distribution in the dataset, highlighting the relative frequency of each activity.
> <details>
> <summary>read the caption</summary>
> Figure 10: Distribution of activity categories for Skoda.
> </details>



![](https://arxiv.org/html/2502.15122/x11.png)

> 🔼 This figure shows a pie chart illustrating the distribution of different activity categories within the USC-HAD dataset. Each slice of the pie chart represents a specific activity, and its size corresponds to the proportion of the dataset dedicated to that activity. This visualization helps understand the class balance (or imbalance) of the dataset, highlighting the activities with more or fewer samples.
> <details>
> <summary>read the caption</summary>
> Figure 11: Distribution of activity categories for USC-HAD.
> </details>



![](https://arxiv.org/html/2502.15122/x12.png)

> 🔼 This figure visualizes the class distribution within the count datasets of the MONSTER benchmark.  It likely displays bar charts showing the number of instances (data points) belonging to each class for each dataset. This helps readers understand the class imbalance, if any, present in each count dataset, providing context for evaluating model performance on these datasets, as class imbalance can impact model training and evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 12: Class distributions for the count datasets.
> </details>



![](https://arxiv.org/html/2502.15122/x13.png)

> 🔼 This figure shows the distribution of classes within the datasets that do not fall into any specific category (audio, satellite, EEG, HAR, count).  It provides a visual representation of the class imbalance or balance within each of these datasets.  Understanding class distribution is important for assessing the difficulty of classification tasks and for selecting appropriate machine learning methods.
> <details>
> <summary>read the caption</summary>
> Figure 13: Class distributions for the uncategorised datasets.
> </details>



![](https://arxiv.org/html/2502.15122/x14.png)

> 🔼 This figure presents a multi-comparison matrix (MCM) that summarizes the performance of several time series classification methods across 29 datasets.  The MCM displays the average 0-1 loss (classification error rate) for each method, providing a comparative view of their overall accuracy. Furthermore, it visually represents pairwise comparisons, indicating whether one method outperforms another, resulting in a win/draw/loss count for each pairwise comparison. This allows for a comprehensive understanding of the relative strengths and weaknesses of each method across the diverse set of datasets.
> <details>
> <summary>read the caption</summary>
> Figure 14: Multi-comparison matrix showing mean 0–​1 loss and pairwise differences.
> </details>



![](https://arxiv.org/html/2502.15122/x15.png)

> 🔼 This figure displays a comparative analysis of the 0-1 loss achieved by six different time series classification methods across six categories of datasets: Audio, Count, ECG/EEG, HAR, Satellite, and Other.  Each point on the plot represents a single dataset within a given category, with the horizontal bars indicating the average 0-1 loss for each method within that category. This visual allows for easy comparison of method performance across various types of data and provides insights into the relative strengths and weaknesses of each approach. 
> <details>
> <summary>read the caption</summary>
> Figure 15: 0–​1 loss by category.
> </details>



![](https://arxiv.org/html/2502.15122/x16.png)

> 🔼 This figure visualizes pairwise comparisons of the 0-1 loss (misclassification rate) between the ConvTran model and other benchmark models (ET, FCN, HInceptionTime, Hydra, QUANT, and TempCNN) across multiple datasets.  Each point represents a single dataset and its corresponding 0-1 loss for the two methods being compared. The color-coding differentiates whether ConvTran performs better (blue) or worse (red) than the comparison model. This allows for an easy visual assessment of ConvTran's performance relative to others, highlighting its strengths and weaknesses across diverse datasets.
> <details>
> <summary>read the caption</summary>
> Figure 16: Pairwise 0–​1 loss for ConvTran.
> </details>



![](https://arxiv.org/html/2502.15122/x17.png)

> 🔼 This figure shows a pairwise comparison of ConvTran's log-loss against other methods across various datasets. For each comparison, it plots the log-loss values for ConvTran against the log-loss of another method on the same dataset.  The points' color indicates which method performed better (ConvTran in blue, other methods in red).  The plot helps to visually assess ConvTran's relative performance against each of the other methods considered in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 17: Pairwise log-loss for ConvTran.
> </details>



![](https://arxiv.org/html/2502.15122/x18.png)

> 🔼 This figure shows a pairwise comparison of ConvTran's training time against other methods used in the paper.  For each comparison, it plots ConvTran's training time against the training time of a second method across multiple datasets. The plot uses a scatterplot, where each point represents a dataset. The plot is colored to indicate which method had a shorter training time for that specific dataset, enabling easy visual identification of datasets where ConvTran was faster or slower than the other method. This provides a comprehensive analysis of ConvTran's relative efficiency compared to the other techniques.
> <details>
> <summary>read the caption</summary>
> Figure 18: Pairwise training time for ConvTran.
> </details>



![](https://arxiv.org/html/2502.15122/x19.png)

> 🔼 This figure displays a pairwise comparison of the 0-1 loss achieved by the Extremely Randomized Trees (ET) classifier against other methods across various datasets.  Each subplot represents a comparison with a different model, illustrating which model performs better (lower 0-1 loss) for each dataset. This visualization allows for a detailed assessment of the relative performance of ET compared to other time series classification techniques in different dataset contexts.
> <details>
> <summary>read the caption</summary>
> Figure 19: Pairwise results (0–​1 loss) for ET.
> </details>



![](https://arxiv.org/html/2502.15122/x20.png)

> 🔼 This figure visualizes pairwise comparisons of the 0-1 loss for the FCN model against other baseline models (ConvTran, ET, HInceptionTime, HYDRA, QUANT, and TempCNN).  Each subplot represents a comparison between FCN and one other model, with the x-axis showing the 0-1 loss for FCN and the y-axis showing the 0-1 loss for the other model. Each point on the plot corresponds to one of the datasets used in the study. The points above the diagonal indicate datasets on which the alternative model outperformed FCN, while points below the diagonal show datasets where FCN performed better. The diagonal line represents equal performance.
> <details>
> <summary>read the caption</summary>
> Figure 20: Pairwise results (0–​1 loss) for FCN.
> </details>



![](https://arxiv.org/html/2502.15122/x21.png)

> 🔼 This figure shows a pairwise comparison of the HInceptionTime model's 0-1 loss against other benchmark models. For each pairwise comparison, a scatter plot is generated, showing the 0-1 loss of HInceptionTime on the x-axis and the 0-1 loss of the other model on the y-axis. Each point represents a single dataset, and the color indicates which model performed better for that dataset. A diagonal line represents equal performance for both models. Deviations from this line indicate superior or inferior performance of one model over the other for a given dataset. The plots visualize the relative performance differences of HInceptionTime compared to other methods on a per-dataset basis.
> <details>
> <summary>read the caption</summary>
> Figure 21: Pairwise results (0–​1 loss) for HInceptionTime.
> </details>



![](https://arxiv.org/html/2502.15122/x22.png)

> 🔼 This figure visualizes pairwise comparisons of Hydra's 0-1 loss against other methods (ConvTran, ET, FCN, HInceptionTime, Quant, TempCNN) across various datasets.  Each subplot represents a pairwise comparison, showing the 0-1 loss achieved by Hydra plotted against the 0-1 loss of another method for each dataset.  The plots reveal the relative performance of Hydra compared to each alternative method and highlight datasets where Hydra significantly outperforms or underperforms other methods.
> <details>
> <summary>read the caption</summary>
> Figure 22: Pairwise results (0–​1 loss) for Hydra.
> </details>



![](https://arxiv.org/html/2502.15122/x23.png)

> 🔼 This figure displays pairwise comparisons of the 0-1 loss for the QUANT model against other baseline models (ConvTran, ET, FCN, HInceptionTime, HYDRA, TempCNN). Each subplot represents a comparison between QUANT and one other model, showing the 0-1 loss on each dataset for both models. This allows for visual evaluation of the relative performance of QUANT compared to each other model across various datasets.  Datasets are grouped to facilitate easier comparison.
> <details>
> <summary>read the caption</summary>
> Figure 23: Pairwise results (0–​1 loss) for Quant.
> </details>



![](https://arxiv.org/html/2502.15122/x24.png)

> 🔼 This figure displays a pairwise comparison of the TempCNN model's 0-1 loss against other baseline methods (ConvTran, ET, FCN, HInceptionTime, HYDRA, QUANT). Each subplot represents a comparison with a specific method, showing the 0-1 loss achieved by TempCNN plotted against the 0-1 loss of the other method across various datasets. The number of datasets where TempCNN outperforms the other method is indicated in the title of each subplot. This visualization helps to understand the relative performance of TempCNN compared to other models in terms of classification error.
> <details>
> <summary>read the caption</summary>
> Figure 24: Pairwise results (0–​1 loss) for TempCNN.
> </details>



![](https://arxiv.org/html/2502.15122/x25.png)

> 🔼 This figure displays a pairwise comparison of the Extremely Randomized Trees (ET) model's log-loss performance against other baseline models (ConvTran, FCN, HInceptionTime, Hydra, Quant, and TempCNN).  Each subplot represents a comparison against a different model. The x-axis represents the log-loss of the ET model, while the y-axis represents the log-loss of the compared model.  Points above the diagonal indicate datasets where the compared model outperforms ET in terms of log-loss.  The number of datasets where each model outperforms ET is noted in the caption. This visualization helps assess the relative performance of ET against other methods across a range of datasets.
> <details>
> <summary>read the caption</summary>
> Figure 25: Pairwise results (log-loss) for ET.
> </details>



![](https://arxiv.org/html/2502.15122/x26.png)

> 🔼 This figure visualizes pairwise comparisons of the FCN model's log-loss against other models (ConvTran, ET, HInceptionTime, Hydra, Quant, and TempCNN).  For each comparison, it shows a scatter plot where each point represents a dataset from MONSTER. The x-axis shows the log-loss of FCN, and the y-axis shows the log-loss of the other model for the corresponding dataset. The plots are annotated to indicate which model performed better (lower log-loss) for each dataset, giving a visual representation of the relative performance of FCN compared to the other models across diverse datasets in terms of log-loss.
> <details>
> <summary>read the caption</summary>
> Figure 26: Pairwise results (log-loss) for FCN.
> </details>



![](https://arxiv.org/html/2502.15122/x27.png)

> 🔼 This figure presents a pairwise comparison of the log-loss results for the HInceptionTime model against other baseline models.  Each subplot displays the 0-1 loss for each dataset. The x-axis represents the 0-1 loss of HInceptionTime, while the y-axis represents the 0-1 loss of another baseline model. The number of data points where each model performs better than the other is indicated within the plot. This visualization allows readers to quickly assess the relative performance of HInceptionTime compared to other methods on the specific datasets used in the MONSTER benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 27: Pairwise results (log-loss) for HInceptionTime.
> </details>



![](https://arxiv.org/html/2502.15122/x28.png)

> 🔼 This figure visualizes pairwise comparisons of Hydra's log-loss performance against other benchmark methods (ConvTran, ET, FCN, HInceptionTime, Quant, and TempCNN).  Each subplot shows the relationship between Hydra's log-loss and the log-loss of a different method across the various datasets.  The plots help understand where Hydra performs better or worse compared to other methods and to what degree.
> <details>
> <summary>read the caption</summary>
> Figure 28: Pairwise results (log-loss) for Hydra.
> </details>



![](https://arxiv.org/html/2502.15122/x29.png)

> 🔼 This figure displays a pairwise comparison of the log-loss values obtained from the Quant model against other benchmark models. Each subplot represents a comparison with a different model, visualizing the log-loss achieved by Quant versus the model on the x-axis, and the log-loss by that specific model on the y-axis. Points above the diagonal indicate that Quant performed better, while points below the diagonal show where the benchmark model outperformed Quant. The plots provide a detailed comparison, showing how Quant's performance varies relative to each of the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 29: Pairwise results (log-loss) for Quant.
> </details>



![](https://arxiv.org/html/2502.15122/x30.png)

> 🔼 This figure displays a pairwise comparison of TempCNN's log-loss performance against other methods across various datasets.  For each comparison (TempCNN vs. another method), the plot shows the log-loss of TempCNN on the y-axis and the log-loss of the other method on the x-axis. Each point represents a dataset. If a point lies above the diagonal, TempCNN performed better on that dataset; below, the other method was better. The number of datasets where each method outperformed TempCNN is indicated.
> <details>
> <summary>read the caption</summary>
> Figure 30: Pairwise results (log-loss) for TempCNN.
> </details>



![](https://arxiv.org/html/2502.15122/x31.png)

> 🔼 This figure shows a pairwise comparison of the training times for the Extremely Randomized Trees (ET) model against other models evaluated in the MONSTER benchmark.  For each pair of models (ET vs. another model), it displays a scatter plot where each point represents a dataset from the MONSTER benchmark. The x-axis shows the training time of one model, and the y-axis shows the training time of the other model in the pair.  The plot helps to visualize which model is faster (or slower) for training on various datasets.
> <details>
> <summary>read the caption</summary>
> Figure 31: Pairwise results (training time) for ET.
> </details>



![](https://arxiv.org/html/2502.15122/x32.png)

> 🔼 This figure displays a pairwise comparison of training times for the FCN model against other models in the study.  Each subplot shows the training time of the FCN model plotted against the training time of another model across multiple datasets. The x-axis represents the training time of the model being compared, and the y-axis represents the training time of the FCN model.  Points above the diagonal indicate datasets where FCN was faster, while points below show where the other model was faster. The number of datasets where each model outperforms FCN is indicated in the caption. This visualization aids in understanding the relative computational efficiency of FCN compared to other methods used in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 32: Pairwise results (training time) for FCN.
> </details>



![](https://arxiv.org/html/2502.15122/x33.png)

> 🔼 This figure shows a pairwise comparison of the training times for the HInceptionTime model against other models used in the paper.  For each comparison, it displays a scatter plot where the x-axis represents the training time of one model and the y-axis represents the training time of another, showing how the training times of different models relate to each other. Each point on the plot corresponds to a single dataset. The plot also highlights which model had a shorter training time for each dataset comparison.
> <details>
> <summary>read the caption</summary>
> Figure 33: Pairwise results (training time) for HInceptionTime.
> </details>



![](https://arxiv.org/html/2502.15122/x34.png)

> 🔼 This figure shows a pairwise comparison of Hydra's training time against other methods used in the paper. For each pair of methods, it plots the training time of Hydra against the other method across various datasets. Points above the diagonal indicate that Hydra trains faster, while points below indicate slower training times. The number of datasets where each method is faster or slower is also indicated in the plot.
> <details>
> <summary>read the caption</summary>
> Figure 34: Pairwise results (training time) for Hydra.
> </details>



![](https://arxiv.org/html/2502.15122/x35.png)

> 🔼 This figure displays a pairwise comparison of Quant's training time against other methods. Each subplot represents a comparison against a different method. The x-axis shows Quant's training time, and the y-axis shows the training time for the other method.  Each point represents a dataset, with its position indicating the relative training times for the two methods on that dataset.  The color of the point indicates which method performed faster for that dataset. This visualization helps understand Quant's computational efficiency compared to the other benchmark methods.
> <details>
> <summary>read the caption</summary>
> Figure 35: Pairwise results (training time) for Quant.
> </details>



![](https://arxiv.org/html/2502.15122/x36.png)

> 🔼 This figure displays a pairwise comparison of the training times for TempCNN against other methods.  For each comparison (e.g., TempCNN vs. ConvTran), it shows a scatter plot where each point represents a dataset. The x-axis shows the training time for one method, and the y-axis shows the training time for the other method. The color of the points indicates which method was faster for that specific dataset. This visual representation helps understand the relative training efficiency of TempCNN compared to other methods on the various datasets.
> <details>
> <summary>read the caption</summary>
> Figure 36: Pairwise results (training time) for TempCNN.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.1.1">
<th class="ltx_td ltx_align_center ltx_align_middle ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T2.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.1" style="font-size:70%;">GPU</span></th>
<th class="ltx_td ltx_align_center ltx_align_middle ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.2.1" style="font-size:70%;">CPU</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.3.2.1.1" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.2.1.1.1">
<span class="ltx_p" id="S4.T2.3.2.1.1.1.1"><span class="ltx_text" id="S4.T2.3.2.1.1.1.1.1" style="font-size:70%;">Hydra</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.3.2.1.2" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.2.1.2.1">
<span class="ltx_p" id="S4.T2.3.2.1.2.1.1"><span class="ltx_text" id="S4.T2.3.2.1.2.1.1.1" style="font-size:70%;">ConvTran</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.3.2.1.3" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.2.1.3.1">
<span class="ltx_p" id="S4.T2.3.2.1.3.1.1"><span class="ltx_text" id="S4.T2.3.2.1.3.1.1.1" style="font-size:70%;">TempCNN</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.3.2.1.4" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.2.1.4.1">
<span class="ltx_p" id="S4.T2.3.2.1.4.1.1"><span class="ltx_text" id="S4.T2.3.2.1.4.1.1.1" style="font-size:70%;">FCN</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.3.2.1.5" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.2.1.5.1">
<span class="ltx_p" id="S4.T2.3.2.1.5.1.1"><span class="ltx_text" id="S4.T2.3.2.1.5.1.1.1" style="font-size:70%;">HInception</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.3.2.1.6" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.2.1.6.1">
<span class="ltx_p" id="S4.T2.3.2.1.6.1.1"><span class="ltx_text" id="S4.T2.3.2.1.6.1.1.1" style="font-size:70%;">ET</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T2.3.2.1.7" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.2.1.7.1">
<span class="ltx_p" id="S4.T2.3.2.1.7.1.1"><span class="ltx_text" id="S4.T2.3.2.1.7.1.1.1" style="font-size:70%;">Quant</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T2.3.3.2.1" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.1.1">
<span class="ltx_p" id="S4.T2.3.3.2.1.1.1"><span class="ltx_text" id="S4.T2.3.3.2.1.1.1.1" style="font-size:70%;">47m 44s</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T2.3.3.2.2" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.2.1">
<span class="ltx_p" id="S4.T2.3.3.2.2.1.1"><span class="ltx_text" id="S4.T2.3.3.2.2.1.1.1" style="font-size:70%;">5d 6h</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T2.3.3.2.3" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.3.1">
<span class="ltx_p" id="S4.T2.3.3.2.3.1.1"><span class="ltx_text" id="S4.T2.3.3.2.3.1.1.1" style="font-size:70%;">2d 9h</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T2.3.3.2.4" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.4.1">
<span class="ltx_p" id="S4.T2.3.3.2.4.1.1"><span class="ltx_text" id="S4.T2.3.3.2.4.1.1.1" style="font-size:70%;">2d 12h</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T2.3.3.2.5" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.5.1">
<span class="ltx_p" id="S4.T2.3.3.2.5.1.1"><span class="ltx_text" id="S4.T2.3.3.2.5.1.1.1" style="font-size:70%;">6d 6h</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T2.3.3.2.6" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.6.1">
<span class="ltx_p" id="S4.T2.3.3.2.6.1.1"><span class="ltx_text" id="S4.T2.3.3.2.6.1.1.1" style="font-size:70%;">5h 10m</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T2.3.3.2.7" style="width:42.7pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.2.7.1">
<span class="ltx_p" id="S4.T2.3.3.2.7.1.1"><span class="ltx_text" id="S4.T2.3.3.2.7.1.1.1" style="font-size:70%;">20h 10m</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the total training time required for each of the eight time series classification models (Hydra, ConvTran, TempCNN, FCN, HInceptionTime, ET, Quant) across the 29 datasets in the MONSTER benchmark. Training times are broken down by whether training was performed using GPU or CPU.  The times shown represent the average training time across the five cross-validation folds.
> <details>
> <summary>read the caption</summary>
> Table 2: Total Training Time
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.1" style="width:14.2pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.2.1">
<span class="ltx_p" id="S4.T3.3.1.1.2.1.1"><span class="ltx_text" id="S4.T3.3.1.1.2.1.1.1" style="font-size:70%;">ConvTran</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.3" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.3.1">
<span class="ltx_p" id="S4.T3.3.1.1.3.1.1"><span class="ltx_text" id="S4.T3.3.1.1.3.1.1.1" style="font-size:70%;">FCN</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.4" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.4.1">
<span class="ltx_p" id="S4.T3.3.1.1.4.1.1"><span class="ltx_text" id="S4.T3.3.1.1.4.1.1.1" style="font-size:70%;">HInception</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.5.1">
<span class="ltx_p" id="S4.T3.3.1.1.5.1.1"><span class="ltx_text" id="S4.T3.3.1.1.5.1.1.1" style="font-size:70%;">TempCNN</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.6" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.6.1">
<span class="ltx_p" id="S4.T3.3.1.1.6.1.1"><span class="ltx_text" id="S4.T3.3.1.1.6.1.1.1" style="font-size:70%;">Hydra</span><sup class="ltx_sup" id="S4.T3.3.1.1.6.1.1.2"><span class="ltx_text" id="S4.T3.3.1.1.6.1.1.2.1" style="font-size:70%;">†</span></sup></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.1.1.7" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.7.1">
<span class="ltx_p" id="S4.T3.3.1.1.7.1.1"><span class="ltx_text" id="S4.T3.3.1.1.7.1.1.1" style="font-size:70%;">Quant</span><sup class="ltx_sup" id="S4.T3.3.1.1.7.1.1.2"><span class="ltx_text" id="S4.T3.3.1.1.7.1.1.2.1" style="font-size:70%;">‡</span></sup></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.2.1.1" style="width:14.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.2.1.1.1">
<span class="ltx_p" id="S4.T3.3.2.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.2.1.1.1.1.1" style="font-size:70%;">min</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.2.1.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.2.1.2.1">
<span class="ltx_p" id="S4.T3.3.2.1.2.1.1"><span class="ltx_text" id="S4.T3.3.2.1.2.1.1.1" style="font-size:70%;">27,039</span></span>
<span class="ltx_p" id="S4.T3.3.2.1.2.1.2"><span class="ltx_text" id="S4.T3.3.2.1.2.1.2.1" style="font-size:70%;">Traffic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.2.1.3" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.2.1.3.1">
<span class="ltx_p" id="S4.T3.3.2.1.3.1.1"><span class="ltx_text" id="S4.T3.3.2.1.3.1.1.1" style="font-size:70%;">264,962</span></span>
<span class="ltx_p" id="S4.T3.3.2.1.3.1.2"><span class="ltx_text" id="S4.T3.3.2.1.3.1.2.1" style="font-size:70%;">CornellWhale</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.2.1.4" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.2.1.4.1">
<span class="ltx_p" id="S4.T3.3.2.1.4.1.1"><span class="ltx_text" id="S4.T3.3.2.1.4.1.1.1" style="font-size:70%;">869,570</span></span>
<span class="ltx_p" id="S4.T3.3.2.1.4.1.2"><span class="ltx_text" id="S4.T3.3.2.1.4.1.2.1" style="font-size:70%;">CornellWhale</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.2.1.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.2.1.5.1">
<span class="ltx_p" id="S4.T3.3.2.1.5.1.1"><span class="ltx_text" id="S4.T3.3.2.1.5.1.1.1" style="font-size:70%;">424,649</span></span>
<span class="ltx_p" id="S4.T3.3.2.1.5.1.2"><span class="ltx_text" id="S4.T3.3.2.1.5.1.2.1" style="font-size:70%;">Tiselac</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.2.1.6" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.2.1.6.1">
<span class="ltx_p" id="S4.T3.3.2.1.6.1.1"><span class="ltx_text" id="S4.T3.3.2.1.6.1.1.1" style="font-size:70%;">6,144</span></span>
<span class="ltx_p" id="S4.T3.3.2.1.6.1.2"><span class="ltx_text" id="S4.T3.3.2.1.6.1.2.1" style="font-size:70%;">FordChallenge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.2.1.7" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.2.1.7.1">
<span class="ltx_p" id="S4.T3.3.2.1.7.1.1"><span class="ltx_text" id="S4.T3.3.2.1.7.1.1.1" style="font-size:70%;">275</span></span>
<span class="ltx_p" id="S4.T3.3.2.1.7.1.2"><span class="ltx_text" id="S4.T3.3.2.1.7.1.2.1" style="font-size:70%;">CrowdSourced</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.3.3.2.1" style="width:14.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.1.1">
<span class="ltx_p" id="S4.T3.3.3.2.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.2.1.1.1.1" style="font-size:70%;">max</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.3.3.2.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.2.1">
<span class="ltx_p" id="S4.T3.3.3.2.2.1.1"><span class="ltx_text" id="S4.T3.3.3.2.2.1.1.1" style="font-size:70%;">486,941</span></span>
<span class="ltx_p" id="S4.T3.3.3.2.2.1.2"><span class="ltx_text" id="S4.T3.3.3.2.2.1.2.1" style="font-size:70%;">Opportunity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.3.3.2.3" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.3.1">
<span class="ltx_p" id="S4.T3.3.3.2.3.1.1"><span class="ltx_text" id="S4.T3.3.3.2.3.1.1.1" style="font-size:70%;">380,037</span></span>
<span class="ltx_p" id="S4.T3.3.3.2.3.1.2"><span class="ltx_text" id="S4.T3.3.3.2.3.1.2.1" style="font-size:70%;">Opportunity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.3.3.2.4" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.4.1">
<span class="ltx_p" id="S4.T3.3.3.2.4.1.1"><span class="ltx_text" id="S4.T3.3.3.2.4.1.1.1" style="font-size:70%;">1,420,145</span></span>
<span class="ltx_p" id="S4.T3.3.3.2.4.1.2"><span class="ltx_text" id="S4.T3.3.3.2.4.1.2.1" style="font-size:70%;">Opportunity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.3.3.2.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.5.1">
<span class="ltx_p" id="S4.T3.3.3.2.5.1.1"><span class="ltx_text" id="S4.T3.3.3.2.5.1.1.1" style="font-size:70%;">786,444,426</span></span>
<span class="ltx_p" id="S4.T3.3.3.2.5.1.2"><span class="ltx_text" id="S4.T3.3.3.2.5.1.2.1" style="font-size:70%;">AudioMNIST</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.3.3.2.6" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.6.1">
<span class="ltx_p" id="S4.T3.3.3.2.6.1.1"><span class="ltx_text" id="S4.T3.3.3.2.6.1.1.1" style="font-size:70%;">167,936</span></span>
<span class="ltx_p" id="S4.T3.3.3.2.6.1.2"><span class="ltx_text" id="S4.T3.3.3.2.6.1.2.1" style="font-size:70%;">Pedestrian</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.3.3.2.7" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.7.1">
<span class="ltx_p" id="S4.T3.3.3.2.7.1.1"><span class="ltx_text" id="S4.T3.3.3.2.7.1.1.1" style="font-size:70%;">379,112</span></span>
<span class="ltx_p" id="S4.T3.3.3.2.7.1.2"><span class="ltx_text" id="S4.T3.3.3.2.7.1.2.1" style="font-size:70%;">Traffic</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the number of parameters used for each of the models used in the MONSTER benchmark study. It breaks down the number of parameters into minimum and maximum values across all datasets, with specific examples provided to illustrate the range of parameter counts.  The table also notes the architecture-specific parameter count for the ridge classifier in HYDRA and the median number of leaves per tree for QUANT, which differ from the trainable parameters in the deep learning models.
> <details>
> <summary>read the caption</summary>
> Table 3: Number of Parameters
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15122/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15122/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}