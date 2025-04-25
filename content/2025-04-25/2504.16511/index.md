---
title: "QuaDMix: Quality-Diversity Balanced Data Selection for Efficient LLM Pretraining"
summary: "QuaDMix balances data quality/diversity for efficient LLM pretraining, outperforming prior strategies by 7.2%!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 ByteDance",]
showSummary: true
date: 2025-04-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.16511 {{< /keyword >}}
{{< keyword icon="writer" >}} Fengze Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.16511" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.16511" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.16511/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) greatly rely on the quality and diversity of their training data. Previous approaches typically optimize these factors separately, which doesn't account for the trade-off between them. Quality filtering alone can reduce diversity, while simply diversifying data might sacrifice quality. This creates a need for a unified approach that can effectively balance these competing needs to maximize LLM performance given a limited data quota. The definition of quality and diversity is usually ambiguous, leading to biases in the training data. 



To combat the challenges, this paper introduces QuaDMix, a novel framework that automates the optimization of data distribution for LLM pretraining while balancing quality and diversity. QuaDMix uses multiple criteria to measure data quality and employs domain classification to gauge overall diversity. It then uses a unified data sampling function to determine the sampling probability of each data point based on quality and diversity labels. The study also uses simulated experiments on smaller models and LightGBM for efficient parameter searching. Experiments across diverse models and datasets show that QuaDMix achieves a 7.2% performance improvement across benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} QuaDMix, a new framework, automates data distribution optimization for LLM pretraining, balancing quality and diversity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The research demonstrates that jointly considering quality and diversity in data selection leads to significant performance gains compared to independent strategies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show QuaDMix achieves an average performance improvement of 7.2% across multiple benchmarks, highlighting its effectiveness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical challenge of **optimizing data selection for LLM pretraining** by balancing both quality and diversity. The QuaDMix framework and its demonstrated performance improvements offer a promising approach for **enhancing LLM efficiency and effectiveness**. The study encourages further research into data curation strategies and their impact on LLM performance.

------
#### Visual Insights



![](https://arxiv.org/html/2504.16511/extracted/6375253/image/fwb_distribution.png)

> 🔼 Figure 1 illustrates the impact of data selection using the Fineweb-edu classifier on the distribution of different domains within a dataset.  The original data distribution is compared to the distribution obtained after selecting the top 5% of documents based on the classifier's assessment. The figure highlights that the selected subset shows a significantly increased proportion of documents from domains such as 'Health,' 'Jobs,' and 'Education,' compared to their representation in the original dataset. This demonstrates that data selection methods can lead to a skewed distribution, emphasizing the importance of considering diversity during data selection for large language model training.
> <details>
> <summary>read the caption</summary>
> Figure 1: The distribution change of data selected with Fineweb-edu Classifier. With the top5% documents selected, the ratio of certain domains including Health, Jobs and Education, increases for a large margin compared with original data
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.1.2">Selected</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.1.3">Reading</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.1.4">Commonsense</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.1.1.1.5"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.1.1.1.6"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.1.1.7"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.2.2.1">Methods</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.2.2.2">Token</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.2.2.3">Comprehension</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.2.2.4">Reasoning</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.2.2.5">Knowledge</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.2.2.6">Math</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.2.2.7">Average</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.3.3.1">Random Selection</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.3.3.2">500B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.3.3.3">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.3.3.4">51.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.3.3.5">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.3.3.6">2.8</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.3.3.7">32.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.4.4.1">DSIR</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.4.2">72B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.4.3">34.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.4.4">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.4.5">17.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.4.6">6.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.4.7">32.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.5.5.1">RegMix</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.5.2">500B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.5.3">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.5.4">52.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.5.5">17.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.5.6">3.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5.7">33.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.6.6.1">Fineweb-edu</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.6.6.2">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.6.6.3">41.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.6.6.4">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.6.6.5">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.6.6.6">6.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.6.7">37.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.7.7.1">AskLLM</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.7.2">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.7.3">38.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.7.4">54.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.7.5">19.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.7.6">2.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.7.7">35.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.8.8.1">DCLM</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.8.8.2">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.8.8.3">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.8.8.4">53.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.8.8.5">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.8.8.6">8.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.8.7">36.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.9.9.1">Criteria Mix</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.9.2">74B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.9.3">40.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.9.4">53.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.9.5">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.9.6">3.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.9.7">36.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.10.10.1">QuaDMix-OH</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.10.10.2">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.10.10.3">44.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.10.10.4">55.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.10.10.5">21.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.10.10.6">10.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.10.10.7">39.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S3.T1.1.11.11.1">QuaDMix-BMK</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.1.11.11.2">30B</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.1.11.11.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.11.3.1">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.11.4.1">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.1.11.11.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.11.5.1">21.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.1.11.11.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.11.6.1">11.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.11.11.7"><span class="ltx_text ltx_font_bold" id="S3.T1.1.11.11.7.1">39.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of QuaDMix against other data selection methods on various downstream tasks.  The methods are categorized into those focusing solely on data quality, those focusing solely on data mixture, and QuaDMix, which balances both. QuaDMix consistently outperforms the others. Furthermore, when using a benchmark training set as the target, QuaDMix's performance is even better, highlighting its effectiveness in optimizing data quality and diversity for improved LLM performance.
> <details>
> <summary>read the caption</summary>
> Table 1: QuaDMix outperforms the methods focusing only on data quality or data mixture. With benchmark training set as the target, the results further boost.
> </details>





### In-depth insights


#### Quality vs. Mix
**Data quality and diversity** are crucial in language model pretraining, yet often treated separately. High-quality data curation and diversification strategies demonstrably improve model performance. However, the interplay between quality and diversity presents a challenge. Defining both aspects is complex; quality can encompass factors like regular expressions, educational value, or similarity to instruction tuning data, each emphasizing specific aspects. Diversity is not necessarily uniform; effective training involves balancing data distribution across domains. The choice of quality criteria influences data distribution, while changing data mixtures impacts overall quality. Optimizing solely for either quality or diversity overlooks their inherent trade-off. Jointly optimizing data distribution with quality criteria selection remains an unsolved problem, highlighting the need for unified frameworks that simultaneously manage both aspects.

#### QuaDMix Design
The QuaDMix design likely focuses on a data selection strategy, simultaneously optimizing for **quality and diversity** in pre-training datasets. It probably involves multiple quality scorers and domain classification to quantify these aspects. A key element is a parameterized sampling function that balances these factors when selecting data points. The parameters likely control the influence of each quality score and the representation of different domains. The design addresses the inherent **trade-off between quality and diversity** by jointly optimizing the data distribution instead of handling them independently. The weighted combination of quality metrics, the domain-aware parameterization, and the unified sampling function would all contribute to the core idea of balancing these two. 

#### Proxy Experiments
The section on proxy experiments likely details how the researchers **validate their QuaDMix framework without the computational expense** of training full-scale LLMs. The proxy experiments will involve training smaller models, or using a subset of the data, to **approximate the performance of larger models** under different data selection strategies. The researchers will meticulously design these experiments, controlling various parameters, to understand the impact of QuaDMix on model performance. **The results of these proxy experiments are crucial** for guiding the data selection process for the final, large-scale LLM training. This section also validates **the efficiency of their approach**, ensuring that the framework can be effectively used in practice without incurring excessive computational costs.

#### Model Ablations
**Ablation studies** are crucial for understanding the contribution of different components within a model. By systematically removing or altering parts of the QuaDMix framework, we can assess the importance of quality score merging, token quantity, and the proxy models' ability to forecast large-scale model performance. This involves experimenting with different combinations of quality filters, varying the sampling parameter, and evaluating the model's performance on downstream tasks. Understanding which ablations lead to significant performance drops is key to optimizing the final model. This allows to isolate essential aspects of the framework.

#### Future Work
Future work could focus on refining the parameter space design within QuaDMix to reduce redundancy and enhance the efficiency of searching for optimal parameters. One avenue is to explore more sophisticated search algorithms beyond random guessing, such as Bayesian optimization or genetic algorithms, to navigate the high-dimensional parameter space more effectively. Another direction is to investigate methods for improving the proxy ability of small models, which is crucial for predicting the performance of large-scale models. This could involve incorporating techniques to better align the training dynamics of small and large models or developing more accurate metrics for evaluating proxy model performance. Additionally, exploring the use of reinforcement learning to optimize the data selection process dynamically could be a promising area for future research. It is also important to explore the ways to select even **more diversed tokens** for better model training.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.16511/x1.png)

> 🔼 QuaDMix's data selection process is depicted.  It begins by extracting features from the raw data, specifically domain classification labels and multiple quality scores. These scores are then merged using domain-specific weights to create a single quality score for each data point.  The quality score for each data point is used to determine its rank within its domain.  Finally, a parameterized sampling function (with learned parameters) uses the quality rank and domain to determine the probability of selecting each data point for inclusion in the final, optimized dataset. This ensures that the selected data balances quality and diversity.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall design of QuaDMix. First we extract the data features using classifier and quality scores (QS). Then we calculate quality rank for each domain with the merging parameters. Finally the sampling functions controlled by sampling parameters are applied to generate the final output data.
> </details>



![](https://arxiv.org/html/2504.16511/x2.png)

> 🔼 This figure displays two plots to evaluate the effectiveness of the regression model used in the QuaDMix framework. The left plot shows a strong correlation between the predicted loss from the regression model and the actual loss obtained when training language models on datasets created using various QuaDMix parameters.  This confirms the regression model's ability to predict the performance of larger language models based on the performance of smaller proxy models trained on smaller datasets sampled using different QuaDMix parameter settings. The right plot shows the mean absolute error (MAE) of the regression model against different training sizes. As the training size increases, the MAE decreases, indicating improved accuracy in prediction.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: The prediction model loss vs real model loss. Right: The regression model performance (MAE) vs training size.
> </details>



![](https://arxiv.org/html/2504.16511/extracted/6375253/image/Sample_ratio_by_Domain_of_Bmk_Merge.png)

> 🔼 This figure visualizes the optimal parameters learned by the QuaDMix-BMK model.  The left panel shows the distribution of tokens across different domains after applying QuaDMix-BMK's data selection process, compared to the original distribution in RefinedWeb.  The right panel displays the weights assigned by QuaDMix-BMK to different quality criteria (AskLLM, Fineweb-edu, DCLM) for each domain.  The relative heights of the bars indicate the importance of each domain and quality filter in shaping the final data distribution used for pre-training.
> <details>
> <summary>read the caption</summary>
> Figure 4: The visualization of optimal parameters from QuaDMix-BMK
> </details>



![](https://arxiv.org/html/2504.16511/extracted/6375253/image/Weights_by_Domain_of_Bmk_Merge.png)

> 🔼 This figure displays a comparison of prediction loss between two data selection methods, QuaDMix-BMK and QuaDMix-OH, across five downstream tasks.  QuaDMix-BMK consistently demonstrates lower prediction loss than QuaDMix-OH across all five tasks, visually highlighting its superior performance in predicting model performance based on the chosen data selection parameters.
> <details>
> <summary>read the caption</summary>
> Figure 5: The prediction loss of QuaDMix-BMK surpasses QuaDMix-OH on all 5 downstream tasks.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.1.1"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.1.2"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.1.4">Selected</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.1.5">Reading</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.1.6">Commonsense</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.1.7"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.1.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.1.1.1.9"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.1">A</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.2">F</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.3">D</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.4">Token</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.5">Comprehension</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.6">Reasoning</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.7">Knowledge</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.2.2.8">Math</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.2.2.9">Average</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.1">✓</td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.2"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.3"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.4">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.5">38.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.6">53.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.7">18.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.3.3.8">2.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.3.3.9">35.2</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.4.4">
<td class="ltx_td ltx_border_r" id="S5.T2.1.4.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.4.2">✓</td>
<td class="ltx_td ltx_border_r" id="S5.T2.1.4.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.4.4">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.4.5">41.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.4.6">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.4.7">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.4.8">6.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.4.9">37.4</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.5.5">
<td class="ltx_td ltx_border_r" id="S5.T2.1.5.5.1"></td>
<td class="ltx_td ltx_border_r" id="S5.T2.1.5.5.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.5.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.5.4">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.5.5">41.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.5.6">53.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.5.7">19.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.5.8"><span class="ltx_text ltx_font_bold" id="S5.T2.1.5.5.8.1">12.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.5.9">37.3</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.6.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.6.2">✓</td>
<td class="ltx_td ltx_border_r" id="S5.T2.1.6.6.3"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.6.4">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.6.5">41.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.6.6">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.6.7">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.6.8">5.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.6.6.9">37.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.7.1">✓</td>
<td class="ltx_td ltx_border_r" id="S5.T2.1.7.7.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.7.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.7.4">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.7.5">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.7.6">54.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.7.7">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.7.8">9.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.7.7.9">37.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.8.8">
<td class="ltx_td ltx_border_r" id="S5.T2.1.8.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.8.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.8.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.8.4">30B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.8.5">43.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.8.6">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.8.7">20.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.8.8">9.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.8.8.9">38.7</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.9.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.4">90B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.5">40.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.6">55.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.7">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.9.9.8">4.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.9.9.9">36.8</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.10.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.4">180B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.5">37.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.6">53.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.7">18.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.10.8">2.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.10.10.9">35.1</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.4">30B</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.11.11.5.1">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.6"><span class="ltx_text ltx_font_bold" id="S5.T2.1.11.11.6.1">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.7"><span class="ltx_text ltx_font_bold" id="S5.T2.1.11.11.7.1">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_tt" id="S5.T2.1.11.11.8">10.2</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_tt" id="S5.T2.1.11.11.9"><span class="ltx_text ltx_font_bold" id="S5.T2.1.11.11.9.1">39.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using QuaDMix-OH, a data selection method, with various combinations of quality filters (AskLLM, Fineweb-edu, and DCLM) and different numbers of selected tokens.  It demonstrates the impact of different filter combinations and dataset sizes on downstream task performance.
> <details>
> <summary>read the caption</summary>
> Table 2: QuaDMix-OH with different settings on quality filters (AskLLM (A), Fineweb-edu (F), DCLM (D)) and selected tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.2">HellaSwag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.3">ARC-C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.4">ARC-E</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.1.1.5">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.1.1.6">TriviaQA</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.2.1.1">QuaDMix-OH</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.2.1.2.1">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.2.1.3">39.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.2.1.4">71.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.2.1.5">34.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.2.1.6">21.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T3.1.3.2.1">QuaDMix-BMK</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T3.1.3.2.2">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T3.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.3.2.3.1">40.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T3.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.3.2.4.1">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T3.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S5.T3.1.3.2.5.1">34.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T3.1.3.2.6"><span class="ltx_text ltx_font_bold" id="S5.T3.1.3.2.6.1">22.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of QuaDMix-OH and QuaDMix-BMK on five downstream tasks: HellaSwag, ARC-C, ARC-E, MMLU, and TriviaQA.  QuaDMix-BMK uses benchmark training sets to guide the data selection process, while QuaDMix-OH uses the OpenHermes dataset. The results show that QuaDMix-BMK generally outperforms QuaDMix-OH, aligning with the trends observed during the proxy model experiments.  The only exception is HellaSwag, where the performance difference is not consistent with proxy model predictions.
> <details>
> <summary>read the caption</summary>
> Table 3: QuaDMix-OH vs QuaDMix-BMK on 5 downstream tasks. The trend mostly agree with the prediction loss on proxy model except for HellaSwag.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.16511/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16511/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}