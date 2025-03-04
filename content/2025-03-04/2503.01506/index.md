---
title: "SampleMix: A Sample-wise Pre-training Data Mixing Strategey by Coordinating Data Quality and Diversity"
summary: "SampleMix: Sample-wise Pre-training Data Mixing by Coordinating Data Quality and Diversity"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Meituan Group",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01506 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiangyu Xi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01506" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01506" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01506/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing data mixing methods for LLMs often determine domain weights and then sample uniformly, neglecting inter-domain overlaps and sample quality. This leads to suboptimal data distribution, hindering effective pre-training due to a failure in controlling global diversity of the constructed training dataset and ignoring fine-grained sample-specific features.



To address these shortcomings, **SampleMix** employs a bottom-up approach, performing global cross-domain sampling by evaluating the quality and diversity of each sample. It dynamically determines the optimal domain distribution, surpassing existing methods and cutting training steps by 1.4x to 2.1x. **SampleMix** coordinates quality and diversity, capturing commonalities and optimizing sample distribution.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SampleMix, a novel data mixing approach, enhances pre-training by evaluating sample quality and diversity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SampleMix outperforms existing domain-based methods and reduces the training steps by 1.4x to 2.1x. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study analyzes inter-domain overlaps and sample distribution within domains, highlighting areas for improvement in pre-training data mixture. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**SampleMix** offers a novel approach to pre-training data mixing by considering both quality and diversity, leading to more efficient and effective language models. It inspires future research in automatic data evaluation metrics and code data mixing.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01506/x1.png)

> 🔼 This figure displays the results of a data clustering analysis performed on the SlimPajama dataset.  The analysis reveals the extent of overlap between different domains within the dataset. Each row represents a domain, and each cell within a row shows the percentage of clusters from that domain that also contain samples from another domain (specified by the column). For example, the value in the first row and sixth column indicates that 76.60% of the clusters originating from the ArXiv domain also include samples from the Wikipedia domain. The overall pattern in the figure highlights substantial overlap and interconnectedness between various domains within the SlimPajama dataset, contradicting the common assumption of distinct domain boundaries in pre-training data.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We conduct data clustering analysis using the SlimPajama dataset. For each domain (row), each cell shows the percentage of its clusters that also include samples from other domains (column). E.g., 76.60% of ArXiv’s clusters include Wikipedia samples (1st row, 6th column). The results reveal substantial overlap between domains.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.1">Dimension</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.2">Score</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.1">Clarity of Expression and Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.1.2">{0,1}</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.2">
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.1">Completeness and Coherence</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.2">{0,1}</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.3">
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.1">Structure and Style</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.2">{0,1}</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.4">
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.1">Content Accuracy and Credibility</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.2">{0,1}</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.5">
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.1">Significance</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.2">{0,1}</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.6">
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.6.1">Knowledge Richness</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.6.2">{0,1,2}</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.1.8.7.1">Logicality and Analytical Depth</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.1.8.7.2">{0,1,2}</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the seven dimensions used to evaluate the quality of text data for pre-training language models.  Each dimension represents a specific aspect of text quality, such as clarity, completeness, structure, content accuracy, significance, knowledge richness, and logical depth.  A numerical score (either 0 or 1, or 0, 1, or 2 depending on the dimension) is assigned to each dimension to reflect the degree to which that aspect is present in the text.  The table provides a detailed and comprehensive understanding of the criteria used for data quality assessment.
> <details>
> <summary>read the caption</summary>
> Table 1: Quality dimensions and scores.
> </details>





### In-depth insights


#### Sample-wise Mix
**Sample-wise mixing** seems to be a crucial step in pre-training data construction. Instead of domain-wise strategies, it is more useful to consider the **quality and diversity of each sample** to determine domain distribution. By assessing each sample, it helps to dynamically determine distribution, allowing more control over dataset quality and diversity. **Sampling weights** can be assigned based on evaluations, constructing optimal training dataset. It also offers the advantage of **dynamically adapting** to token budgets, which is useful in the data pre-processing for LLMs.

#### Quality+Diversity
In pre-training data mixing, balancing quality and diversity is crucial for optimal language model performance. **High-quality data ensures linguistic precision**, structural coherence, and content reliability, while **diverse data enhances generalization** and prevents overfitting. The interplay between these two factors significantly impacts the model's ability to capture nuanced patterns and perform well on various downstream tasks. **Careful consideration of both aspects is essential** when curating pre-training datasets to achieve superior language understanding and generation capabilities. **Prioritizing both aspects leads to better model performance and efficiency**.

#### SlimPajama Analysis
The paper presents an analysis of the SlimPajama dataset, a cleaned and deduplicated version of RedPajama. The analysis seems to focus on understanding **data quality and diversity** across different domains within the dataset. This is crucial for pre-training language models, as the composition of the training data significantly impacts model performance. The authors use techniques like **data clustering and quality evaluation** to gain insights into the characteristics of SlimPajama. They analyze the percentage of cluster that includes other domains to reveal the overlapping of data in SlimPajama. This exploration informs the development of a sample-wise pre-training data mixing strategy, where the **quality and diversity** of each sample are considered to optimize the training data distribution. By addressing the limitations of domain-wise approaches that often overlook inter-domain commonalities and suboptimal sample distributions, the SlimPajama analysis contributes to creating more effective pre-training datasets for LLMs.

#### Budget Adaptation
Adapting to varying token budgets is a critical capability. **Training often involves stages needing different data volumes.** Methods with fixed data proportions struggle here. The analysis shows SampleMix's ability to adjust effectively. When the token budget is small, it smartly discards low-value data. For larger budgets, it prioritizes high-weight samples, highlighting its **versatility in resource allocation and effective data selection** by ensuring the highest quality data is used first.

#### Data eval details
In analyzing data evaluation details, the focus is on **assessing the quality and diversity of datasets** used for pre-training large language models. Traditional methods often rely on heuristics, but more sophisticated approaches involve training models to evaluate data quality based on dimensions like linguistic precision, coherence, and content reliability. Diversity is measured using clustering techniques to understand the distribution of text within the dataset. The goal is to **create a balanced dataset** that enhances the model's overall performance by prioritizing both quality and diversity. SampleMix is used to determine the optimal balance between these two aspects, adapting to training budgets for effectiveness.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01506/x2.png)

> 🔼 Figure 2 illustrates the difference between traditional domain-wise data mixing methods and the proposed SampleMix approach. (a) shows the traditional approach where domain weights are determined first and then uniform sampling is performed within each domain. This method ignores the overlap and commonalities among different domains, as well as the sample-specific quality and diversity within each domain. (b) illustrates SampleMix, a novel sample-wise approach. This method dynamically determines domain distributions by systematically evaluating the quality and diversity of each sample.  It assigns appropriate weights based on these evaluations and then constructs an optimal training dataset by sampling each example according to its weight. The colors of dots represent different domains, which highlights that this approach considers data from all domains at the same time.
> <details>
> <summary>read the caption</summary>
> Figure 2:  (a) Traditional methods determine domain weights and construct the training dataset by uniformly sampling from each domain. (b) SampleMix employs a sample-wise mixing strategy by: evaluating sample quality and diversity, assigning appropriate weights, and constructing an optimal dataset based on these weights. Dots of the same color represent data from the same domain..
> </details>



![](https://arxiv.org/html/2503.01506/x3.png)

> 🔼 The figure shows the distribution of quality scores for each of the six domains in the SlimPajama dataset.  Each domain's distribution is shown as a histogram. The x-axis represents the quality score (ranging from 0 to 10), and the y-axis represents the number of samples.  The distributions illustrate the varying levels of quality present within each domain. For example, some domains show a higher concentration of high-quality samples (scores closer to 10) while others exhibit a broader spread of quality scores, indicating a greater diversity in data quality.
> <details>
> <summary>read the caption</summary>
> (a) Quality Distribution
> </details>



![](https://arxiv.org/html/2503.01506/x4.png)

> 🔼 This figure shows the distribution of diversity scores for samples within each domain of the SlimPajama dataset.  Each domain's diversity is assessed using a combined measure of cluster compactness and cluster separation, reflecting how similar samples are within a cluster and how distinct that cluster is from other clusters.  The x-axis represents the diversity score, and the y-axis represents the frequency (or percentage) of samples with that diversity score.  The figure helps illustrate the variability in diversity within and across different domains of the dataset.
> <details>
> <summary>read the caption</summary>
> (b) Diversity Distribution
> </details>



![](https://arxiv.org/html/2503.01506/x5.png)

> 🔼 This figure visualizes the distribution of data quality and diversity scores across six domains within the SlimPajama dataset.  The left panel (a) shows the distribution of quality scores, revealing variations in the average quality of data across different domains.  The right panel (b) displays the distribution of diversity scores, illustrating how diverse the samples are within each domain.  Dashed lines indicate the mean values for each distribution.
> <details>
> <summary>read the caption</summary>
> Figure 3: Analysis of SlimPajama dataset. Mean values are marked with a dashed line.
> </details>



![](https://arxiv.org/html/2503.01506/x6.png)

> 🔼 This figure shows a comparison of the training efficiency between SampleMix and the average performance of several baseline methods.  The x-axis represents the number of training steps, and the y-axis represents the accuracy achieved on downstream tasks. The plot shows that SampleMix achieves comparable accuracy to the average baseline performance using significantly fewer training steps – specifically, reaching the average baseline accuracy at approximately 100,000 training steps, which is about 1.9 times faster than the average of the baseline methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training efficiency comparison. SampleMix reaches the average baseline accuracy at 100k training steps - 1.9 times faster than the averaged baselines.
> </details>



![](https://arxiv.org/html/2503.01506/x7.png)

> 🔼 This figure shows how the weighting factor α (alpha) influences the average performance across various downstream tasks.  The x-axis represents different values of α, ranging from 0.0 to 1.0, which controls the balance between quality and diversity in the data sampling process.  A value of 0.0 means only quality is considered, while 1.0 means only diversity is considered. The y-axis represents the average performance across all downstream tasks. The plot reveals the optimal balance between quality and diversity that yields the highest average performance, illustrating the impact of different α values on model performance.  The figure demonstrates the importance of considering both data quality and diversity for optimal model training.
> <details>
> <summary>read the caption</summary>
> Figure 5: Average performance of downstream tasks with different weighting factor α𝛼\alphaitalic_α.
> </details>



![](https://arxiv.org/html/2503.01506/x8.png)

> 🔼 This figure shows the distribution of the number of times each document was sampled during the training process for the condition where the target token budget (Ttgt) equals the total number of tokens in the source dataset (Tsrc).  The x-axis represents the number of times a document was sampled (sampling count), and the y-axis shows the percentage of documents that were sampled that many times.  The data illustrates how SampleMix prioritizes high-quality and diverse documents, resulting in many documents being sampled once or twice.  A smaller percentage of documents were sampled more frequently, or not at all.
> <details>
> <summary>read the caption</summary>
> (a) Proportion of different sampling counts.
> </details>



![](https://arxiv.org/html/2503.01506/x9.png)

> 🔼 This figure's sub-caption describes the relationship between the sampling weight assigned to each data sample and its sampling count, which reflects how many times a particular sample is selected during the training process. In the context of SampleMix, this illustrates how the algorithm prioritizes higher-quality and more diverse samples by assigning them larger sampling weights, leading to increased selection frequency. Conversely, it indicates that lower-quality or less diverse samples may not be chosen as often due to their assigned lower weights. The distribution of weights, therefore, showcases how SampleMix dynamically adjusts to the available data budget, optimizing data diversity, and balancing data quality.
> <details>
> <summary>read the caption</summary>
> (b) Sampling weight (i.e., p⁢(x)𝑝𝑥p(x)italic_p ( italic_x )) of different sampling counts.
> </details>



![](https://arxiv.org/html/2503.01506/x10.png)

> 🔼 Figure 6 shows the distribution of sampling counts and the corresponding average sampling weights obtained under different token budget settings (Ttgt = Tsrc and Ttgt = Tsrc).  When the target token budget (Ttgt) equals the total tokens in the source dataset (Tsrc), SampleMix prioritizes high-quality samples. As a result, the majority of samples are drawn once (sampling count = 1).  Conversely, when Ttgt is smaller than Tsrc, the model incorporates samples with lower weights to satisfy the token budget.  The figure demonstrates how the model dynamically adapts its sampling strategy based on the available token budget, showcasing SampleMix's flexibility in handling different training scales.
> <details>
> <summary>read the caption</summary>
> Figure 6: Analysis of different sampling counts.
> </details>



![](https://arxiv.org/html/2503.01506/x11.png)

> 🔼 This figure demonstrates that samples from different datasets, categorized as separate domains, can share significant overlap in terms of topic and semantic content.  The examples shown all discuss aspects of Einstein and the Theory of Relativity, highlighting the limitations of domain-wise data mixing approaches that assume strict separation between datasets.
> <details>
> <summary>read the caption</summary>
> Figure 7: Samples from different domains, all describing information related to Einstein and Theory of Relativity.
> </details>



![](https://arxiv.org/html/2503.01506/x12.png)

> 🔼 This figure shows examples of both low-quality and high-quality samples from the Common Crawl dataset.  The low-quality example consists of short, seemingly random snippets of text focused on sports news, highlighting the inconsistent and fragmented nature of some data. In contrast, the high-quality example is a coherent, well-structured passage about astrophysics, demonstrating the substantial variation in quality found within the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Quality of CommonCrawl Samples may vary significantly.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.1.1.2">Text Classification</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.1.1.3">Ordinal Regression</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.2.1.1">ACC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.2.1.2">56.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.2.1.3">55.94</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.3.2">
<td class="ltx_td ltx_align_center" id="S2.T2.1.3.2.1">MAE</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.3.2.2">0.77</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.3.2.3">0.72</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.4.3">
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.3.1">MSE</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.3.2">1.95</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.3.3">1.57</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.1.5.4.1">CACC</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.1.5.4.2">82.24</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T2.1.5.4.3">83.37</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of text classification and ordinal regression models in a quality evaluation task.  The metrics used to evaluate performance are accuracy (ACC), mean absolute error (MAE), mean squared error (MSE), and close accuracy (CACC). Close accuracy is a relaxed metric where a prediction is considered correct if it's within ±1 of the true quality score. The results show that while both models achieve similar accuracy, ordinal regression exhibits superior performance in terms of MAE and MSE.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison between text classification and ordinal regression models on the test set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1">Benchmark</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.2.1">Vanilla</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.3.1">DoReMi</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.4.1">CE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.5.1">BiMIX-OPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.6.1">DoGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.7.1">DML</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.8.1">SampleMix</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T3.1.2.2.1"><em class="ltx_emph ltx_font_italic" id="S3.T3.1.2.2.1.1">Downstream Tasks Evaluation (Accuracy)</em></th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.3.3.1">OpenBookQA</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3.2">31.40</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3.3">31.60</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.3.3.4.1">31.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3.5">29.80</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3.6">29.00</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3.7">30.80</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.3.3.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.3.8.1">32.60</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.4.4.1">LAMBADA</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4.2">38.27</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.4.4.3.1">40.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.4.1">42.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4.5">38.02</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4.6">37.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4.7">35.40</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.4.8">40.69</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.5.5.1">PiQA</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5.2">70.40</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5.3">70.13</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5.4">69.37</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5.5">69.64</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.5.5.6.1">70.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5.7">65.02</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.5.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.5.5.8.1">70.95</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.6.6.1">ARC-Easy</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6.2">47.44</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6.3">46.65</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6.4">46.73</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6.5">45.57</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6.6">45.74</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.6.6.7.1">47.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.6.6.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.6.6.8.1">48.73</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.7.7.1">ARC-Challenge</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.7.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.7.7.2.1">28.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.7.3">27.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.7.4">28.33</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.7.5">28.33</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.7.6">27.65</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.7.7">27.73</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.7.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.8.1">29.86</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.8.8.1">WinoGrande</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.8.2">52.33</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.8.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.8.8.3.1">54.38</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.8.4">51.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.8.5">52.80</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.8.6">51.14</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.8.7">51.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.8.8.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.8.8.8.1">53.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.9.9.1">WiC</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.9.2">50.47</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.9.3">48.59</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.9.4">48.28</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.9.5">48.90</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.9.6">50.00</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.9.7"><span class="ltx_text ltx_font_bold" id="S3.T3.1.9.9.7.1">52.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.9.9.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.9.9.8.1">51.72</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.10.10.1">RTE</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.10.10.2">50.18</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.10.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.10.10.3.1">51.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.10.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.10.10.4.1">51.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.10.10.5">47.65</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.10.10.6">51.26</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.10.10.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.10.10.7.1">51.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.10.10.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.8.1">53.79</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.11.11.1.1">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.11.11.2">46.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.11.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.11.11.3.1">46.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.11.11.4">46.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.11.11.5">45.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.11.11.6">45.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.11.11.7">45.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.11.11.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.11.11.8.1">47.77</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T3.1.12.12.1"><em class="ltx_emph ltx_font_italic" id="S3.T3.1.12.12.1.1">Perplexity Evaluation (Perplexity)</em></th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.13.13.1">Pile</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.13.2">26.93</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.13.3">26.45</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.13.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.13.13.4.1">26.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.13.5">27.47</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.13.6">29.49</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.13.7">29.76</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.13.13.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.13.13.8.1">25.63</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S3.T3.1.14.14.1">xP3</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.14.14.2">47.38</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.14.14.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.1.14.14.3.1">47.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.14.14.4">47.62</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.14.14.5">48.74</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.14.14.6">48.38</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.14.14.7">54.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.14.14.8"><span class="ltx_text ltx_font_bold" id="S3.T3.1.14.14.8.1">46.38</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of several data mixing methods for large language models across multiple downstream tasks and perplexity evaluations.  The methods are compared based on their accuracy on eight different tasks (OpenBookQA, LAMBADA, PIQA, ARC-Easy, ARC-Challenge, WinoGrande, WiC, and RTE) and their perplexity scores on two benchmark datasets (Pile and xP3). The best-performing method for each metric is shown in bold, while the second-best is underlined.  This allows for a direct comparison of the different methods' effectiveness in improving model performance and generalizability across a range of tasks and datasets.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of data mixture methods across various downstream tasks and perplexity evaluations. The best performing method for each metric is highlighted in bold, while the second-best is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.1.1.2">Average Performance</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1.1">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1.2">53.17</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.1">DoReMi</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.1.3.2.2.1">53.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.3">
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3.1">CE</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3.2">53.15</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.5.4.1">SampleMix</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.5.4.2.1">54.86</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the average performance achieved by different data mixture methods using 8B parameter models.  It shows the average performance across various downstream tasks for each method, allowing for a direct comparison of the effectiveness of different approaches when scaling up the model size.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison with 8B models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.1.2">Average Performance</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.1">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.1.2.1.2.1">46.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.2">
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.1">DoReMi</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.2">46.25</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.3">
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.1">CE</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.2">46.40</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.4">
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.1">BiMiX-OPT</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.4.2">45.54</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.6.5">
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.1">DoGE</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.2">45.01</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.7.6">
<td class="ltx_td ltx_align_center" id="S4.T5.1.7.6.1">DML</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.7.6.2">44.96</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.1.8.7.1">SampleMix</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.1.8.7.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.8.7.2.1">47.46</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different data mixing methods' performance when the total number of tokens in the training dataset is fixed at 100 billion.  It contrasts the performance of various methods under a reduced candidate pool of data.  The comparison includes the average performance across multiple downstream tasks, highlighting the effectiveness of the different methods under constrained data conditions.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison of different data mixture methods with 100B data as candidate pool.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T6.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A4.T6.1.2.1.1">Hyper-parameter</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T6.1.2.1.2">Value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T6.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A4.T6.1.3.1.1">layer num</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.1.3.1.2">28</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.4.2.1">attention head num</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.4.2.2">13</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.5.3.1">attention head dim</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.5.3.2">128</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.6.4.1">model dim</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.6.4.2">1664</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.7.5.1">ffn intermediate dim</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.7.5.2">4480</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.8.6.1">global batch size</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.8.6.2">1280</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.9.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.9.7.1">sequence length</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.9.7.2">4096</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.1.2">learning rate</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.1"><math alttext="2e^{-4}" class="ltx_Math" display="inline" id="A4.T6.1.1.1.m1.1"><semantics id="A4.T6.1.1.1.m1.1a"><mrow id="A4.T6.1.1.1.m1.1.1" xref="A4.T6.1.1.1.m1.1.1.cmml"><mn id="A4.T6.1.1.1.m1.1.1.2" xref="A4.T6.1.1.1.m1.1.1.2.cmml">2</mn><mo id="A4.T6.1.1.1.m1.1.1.1" xref="A4.T6.1.1.1.m1.1.1.1.cmml">⁢</mo><msup id="A4.T6.1.1.1.m1.1.1.3" xref="A4.T6.1.1.1.m1.1.1.3.cmml"><mi id="A4.T6.1.1.1.m1.1.1.3.2" xref="A4.T6.1.1.1.m1.1.1.3.2.cmml">e</mi><mrow id="A4.T6.1.1.1.m1.1.1.3.3" xref="A4.T6.1.1.1.m1.1.1.3.3.cmml"><mo id="A4.T6.1.1.1.m1.1.1.3.3a" xref="A4.T6.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A4.T6.1.1.1.m1.1.1.3.3.2" xref="A4.T6.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T6.1.1.1.m1.1b"><apply id="A4.T6.1.1.1.m1.1.1.cmml" xref="A4.T6.1.1.1.m1.1.1"><times id="A4.T6.1.1.1.m1.1.1.1.cmml" xref="A4.T6.1.1.1.m1.1.1.1"></times><cn id="A4.T6.1.1.1.m1.1.1.2.cmml" type="integer" xref="A4.T6.1.1.1.m1.1.1.2">2</cn><apply id="A4.T6.1.1.1.m1.1.1.3.cmml" xref="A4.T6.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A4.T6.1.1.1.m1.1.1.3.1.cmml" xref="A4.T6.1.1.1.m1.1.1.3">superscript</csymbol><ci id="A4.T6.1.1.1.m1.1.1.3.2.cmml" xref="A4.T6.1.1.1.m1.1.1.3.2">𝑒</ci><apply id="A4.T6.1.1.1.m1.1.1.3.3.cmml" xref="A4.T6.1.1.1.m1.1.1.3.3"><minus id="A4.T6.1.1.1.m1.1.1.3.3.1.cmml" xref="A4.T6.1.1.1.m1.1.1.3.3"></minus><cn id="A4.T6.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A4.T6.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T6.1.1.1.m1.1c">2e^{-4}</annotation><annotation encoding="application/x-llamapun" id="A4.T6.1.1.1.m1.1d">2 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.10.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T6.1.10.8.1">learning rate scheduler</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.10.8.2">cosine scheduler</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.11.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="A4.T6.1.11.9.1">learning rate warmup tokens</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A4.T6.1.11.9.2">525M</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for training the 1-billion parameter Language Model (LLM).  These settings encompass various architectural choices and training configurations, influencing the model's performance and efficiency.  The listed hyperparameters include the number of layers, the dimensions of attention heads and the feed-forward network, batch size, sequence length during training, the learning rate and its scheduling scheme (including the number of warmup tokens), all crucial aspects determining the model's final characteristics.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyper-parameters of 1B models used in the experiment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T7.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A4.T7.1.2.1.1">Hyper-parameter</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T7.1.2.1.2">Value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A4.T7.1.3.1.1">layer num</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.1.3.1.2">32</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.4.2.1">attention head num</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.4.2.2">32</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.5.3.1">attention head dim</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.5.3.2">128</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.6.4.1">model dim</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.6.4.2">4096</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.7.5.1">ffn intermediate dim</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.7.5.2">14336</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.8.6.1">global batch size</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.8.6.2">1280</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.9.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.9.7.1">sequence length</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.9.7.2">4096</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.1.2">learning rate</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.1.1"><math alttext="2e^{-4}" class="ltx_Math" display="inline" id="A4.T7.1.1.1.m1.1"><semantics id="A4.T7.1.1.1.m1.1a"><mrow id="A4.T7.1.1.1.m1.1.1" xref="A4.T7.1.1.1.m1.1.1.cmml"><mn id="A4.T7.1.1.1.m1.1.1.2" xref="A4.T7.1.1.1.m1.1.1.2.cmml">2</mn><mo id="A4.T7.1.1.1.m1.1.1.1" xref="A4.T7.1.1.1.m1.1.1.1.cmml">⁢</mo><msup id="A4.T7.1.1.1.m1.1.1.3" xref="A4.T7.1.1.1.m1.1.1.3.cmml"><mi id="A4.T7.1.1.1.m1.1.1.3.2" xref="A4.T7.1.1.1.m1.1.1.3.2.cmml">e</mi><mrow id="A4.T7.1.1.1.m1.1.1.3.3" xref="A4.T7.1.1.1.m1.1.1.3.3.cmml"><mo id="A4.T7.1.1.1.m1.1.1.3.3a" xref="A4.T7.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A4.T7.1.1.1.m1.1.1.3.3.2" xref="A4.T7.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.1.1.1.m1.1b"><apply id="A4.T7.1.1.1.m1.1.1.cmml" xref="A4.T7.1.1.1.m1.1.1"><times id="A4.T7.1.1.1.m1.1.1.1.cmml" xref="A4.T7.1.1.1.m1.1.1.1"></times><cn id="A4.T7.1.1.1.m1.1.1.2.cmml" type="integer" xref="A4.T7.1.1.1.m1.1.1.2">2</cn><apply id="A4.T7.1.1.1.m1.1.1.3.cmml" xref="A4.T7.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A4.T7.1.1.1.m1.1.1.3.1.cmml" xref="A4.T7.1.1.1.m1.1.1.3">superscript</csymbol><ci id="A4.T7.1.1.1.m1.1.1.3.2.cmml" xref="A4.T7.1.1.1.m1.1.1.3.2">𝑒</ci><apply id="A4.T7.1.1.1.m1.1.1.3.3.cmml" xref="A4.T7.1.1.1.m1.1.1.3.3"><minus id="A4.T7.1.1.1.m1.1.1.3.3.1.cmml" xref="A4.T7.1.1.1.m1.1.1.3.3"></minus><cn id="A4.T7.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A4.T7.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.1.1.1.m1.1c">2e^{-4}</annotation><annotation encoding="application/x-llamapun" id="A4.T7.1.1.1.m1.1d">2 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.10.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A4.T7.1.10.8.1">learning rate scheduler</th>
<td class="ltx_td ltx_align_center" id="A4.T7.1.10.8.2">cosine scheduler</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.11.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="A4.T7.1.11.9.1">learning rate warmup tokens</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A4.T7.1.11.9.2">525M</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the 8-billion parameter language models in the experiment.  It details the architectural configuration, including the number of layers, attention heads, dimensions of various components (attention head, model, feed-forward network), batch size, sequence length, learning rate, learning rate scheduler, and the number of warmup tokens used during training.
> <details>
> <summary>read the caption</summary>
> Table 7: Hyper-parameters of 8B models used in the experiment.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01506/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01506/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}