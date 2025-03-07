---
title: "Large-Scale Data Selection for Instruction Tuning"
summary: "RDS+ is the unsung hero for scaling instruction tuning data selection!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Washington",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01807 {{< /keyword >}}
{{< keyword icon="writer" >}} Hamish Ivison et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01807" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01807" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01807/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Instruction tuning uses high-quality data to refine language models, yet automated data selection struggles with large datasets. Current methods, tested on small datasets, face scaling issues when applied to the millions of samples used in practice. This paper systematically studies how well existing data selection methods perform when scaling up the dataset. It selects up to 2.5M samples from pools of up to 5.8M samples and evaluates them on 7 diverse tasks.



The study reveals that many recent methods fall short of random selection, even declining in performance with larger pools, despite using more compute. However, a variant of representation-based data selection (**RDS+**), using weighted mean pooling of pretrained LM hidden states, consistently outperforms other complex methods across all settings. RDS+ is also more compute-efficient, highlighting the importance of examining the scaling properties of data selection.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Many data selection methods falter or decline in performance with larger data pools, while RDS+ consistently improves. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} RDS+ outperforms human-curated mixtures and baselines when selecting data for multiple tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RDS+ achieves better performance with less compute compared to other methods, especially at larger data scales. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is important to researchers as it **evaluates data selection methods at scales mirroring real-world instruction tuning**. It highlights **critical scaling issues in existing techniques** and introduces a **robust, efficient alternative**, paving the way for more effective and scalable LM training pipelines.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01807/x1.png)

> 🔼 This figure compares the performance and computational cost of various data selection methods for instruction tuning.  It shows the average performance achieved when selecting 10,000 data points from two different sized data pools: one with 200,000 samples and another significantly larger, with 5.8 million samples. The x-axis represents the estimated computational cost (FLOPS), while the y-axis shows the average performance across seven different tasks.  The plot reveals that most methods either fail to improve or even decrease in performance when given access to a larger data pool, despite increased computation. Notably, RDS+ and Embed (GTR) show improvements with larger pools. The Pareto frontier (the best trade-off between performance and efficiency) is highlighted in red.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance against estimated compute cost of varied data selection methods when selecting 10k points from data pools consisting of 200k (left points) and 5.8M (right points) data points in the single-task setup described in §4.1. We do not run LESS with 5.8M samples due to its high compute cost. Most data selection methods do not improve in performance with a larger pool, with the exception of RDS+ and Embed (GTR). We shade the Pareto frontier of efficiency and performance in red.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.2.1"># Query</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.3.1"># Test</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.2.1.1">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.2">285</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.3">14,042</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3">
<td class="ltx_td ltx_align_left" id="A1.T4.1.3.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.3.1.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2">8</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.3">1,319</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.4.1.1">BBH</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.2">81</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3">6,511</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5">
<td class="ltx_td ltx_align_left" id="A1.T4.1.5.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.5.1.1">TydiQA</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.2">9</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.3">5,077</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.6.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.6.1.1">Codex</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.2">16</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.3">148</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7">
<td class="ltx_td ltx_align_left" id="A1.T4.1.7.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.7.1.1">Squad</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.2">500</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.3">10,570</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.8.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.8.1.1">AlpacaEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.8.2">50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.8.3">755</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of various data selection methods for instruction tuning, focusing on single-task performance.  It evaluates the performance of language models trained on 10k data points selected from the Tülu 2 unfiltered dataset (both a downsampled version and the full set). The table shows the performance achieved by each data selection method across seven different tasks, highlighting the effectiveness of the methods in producing high-performing models.  The results reveal that Representation-based Data Selection (RDS+) consistently outperforms other methods, including computationally more expensive ones such as LESS.
> <details>
> <summary>read the caption</summary>
> Table 1: Single-task performance of different data selection techniques over the Tülu 2 unfiltered set. Each cell reports the performance of a model trained with 10k samples chosen for that particular target task. We show results selecting from a downsampled form or full set of the Tülu 2 unfiltered set. We find RDS performs best overall, even beating more computationally expensive methods like LESS.
> </details>





### In-depth insights


#### RDS+ Scales Best
**RDS+ scales best** because it likely leverages pre-trained knowledge effectively. As data pool size increases, methods relying on loss or gradients might overfit to noise, while RDS+ benefits from a richer representation space, **capturing broader patterns**. Its weighted pooling likely aids generalization. Scaling compute is key; a superior method justifies extra cost. Examining performance across data & compute scales reveals practical benefits. It is important to choose better way to have better scaling.

#### Data Pool Impacts
Analyzing the **impact of data pool composition** is crucial for understanding the efficacy of data selection methods. Larger, more diverse pools, like the unfiltered sets, present both opportunities and challenges. They allow for selecting higher-quality data, potentially improving model performance, but also introduce complexity, as some selection methods struggle to scale or **may even decline in performance** with larger pools. Evaluating these methods across different pools reveals their true scaling properties and generalizability, impacting the choice of the data selection and revealing the need for careful consideration when **building large-scale instruction-tuned models**.

#### Scale Needs Exam
The paper highlights the necessity of examining the scaling properties of automated data selection techniques for instruction tuning. Many existing methods, effective at smaller scales, may falter or even degrade in performance when applied to larger datasets and data pools. This underscores that **strong performance at smaller scales doesn't guarantee success when scaling up**. The paper shows that some methods even underperform random selection when applied to the larger scales. RDS+ is a **notable exception**, demonstrating consistent performance improvement as the data pool size grows. The paper implies that evaluating data selection techniques only at small-scale is insufficient, because their scaling behaviors and computational costs can only be seen with increased datasets. Therefore, techniques must be validated by testing and performing them at a production scale. 

#### Comp. Cost Matters
Computational cost is a crucial factor in data selection for instruction tuning, especially at scale. Many data selection methods underperform random selection due to the overhead. **Methods must be efficient** to outweigh this cost. **RDS+ balances performance and cost**, outperforming random selection with less compute at larger scales. Smaller proxy models can further reduce costs. Analyzing cost benefits at scale reveals practical utility. Performance should be evaluated considering the selection compute.

#### Mix Tuning Robust
The concept of 'Mix Tuning Robust' likely revolves around creating models that perform consistently well across diverse datasets and tasks. **Robustness** here implies resilience to variations in data quality, distribution, and task complexity. A successful mix tuning strategy would involve carefully selecting and weighting different datasets during training to prevent overfitting to specific domains. It requires a balance, preventing the model from memorizing specific patterns while ensuring it generalizes effectively. Techniques such as curriculum learning or dynamic data weighting could be crucial for 'Mix Tuning Robust'. Moreover, the evaluation is important, testing the model on various datasets that it hasn't explicitly been trained on to accurately evaluate its **generalizability**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01807/x2.png)

> 🔼 This figure compares the size and composition of the datasets used in this research with those from prior studies.  The datasets in this paper, 'Unfiltered TÜLU 2' and 'Unfiltered TÜLU 3', are significantly larger and more diverse than those in previous works (Xia et al., 2024; Chen et al., 2024; Li et al., 2024b).  The figure uses a stacked bar chart to visualize the relative proportions of different data sources within each dataset pool. The total number of samples in each pool is shown above each bar.  More details about the composition of these datasets are available in Appendix B.
> <details>
> <summary>read the caption</summary>
> Figure 2: Size and makeup of data pools considered in this work (unfiltered Tulu 2, 3) and in past work (Xia et al., 2024; Chen et al., 2024; Li et al., 2024b). We provide the size of each pool on top of each bar. Each color represents a different dataset. See App. B for more details on data pool composition.
> </details>



![](https://arxiv.org/html/2503.01807/x3.png)

> 🔼 This figure compares the average performance across multiple tasks of two data selection methods: balanced random sampling and RDS+.  The x-axis shows the estimated FLOPs (floating point operations) cost, encompassing both the data selection process and model training. The y-axis displays the resulting average performance.  Different points on the graph represent using varying percentages of the total data pool for selection.  The key finding illustrated is that RDS+ consistently outperforms balanced random sampling, particularly when fewer data points are selected, and becomes significantly more FLOP-efficient as the amount of selected data increases.
> <details>
> <summary>read the caption</summary>
> Figure 3: Average multi-task performance against FLOPs cost (including selection) for balanced random and RDS+. We label points with the % of the total data pool used. RDS+ outperforms random selection significantly when selecting less data, and is more FLOPs efficient at larger selection sizes. See App. E for details on FLOPs estimates.
> </details>



![](https://arxiv.org/html/2503.01807/x4.png)

> 🔼 This figure displays the average performance across multiple tasks for different numbers of samples selected from the data pool.  The performance of the RDS+ method (a type of data selection method) is compared against balanced random sampling. The x-axis represents the number of samples used, ranging from a small subset to the entire data pool. The y-axis shows the average performance across the multiple tasks.  The key takeaway is that RDS+ consistently outperforms random selection across all sample sizes.
> <details>
> <summary>read the caption</summary>
> Figure 4: Average multi-task performance against number of samples selected. RDS+ consistently beats balanced random at all data sizes tested, up to using the entire data pool.
> </details>



![](https://arxiv.org/html/2503.01807/x5.png)

> 🔼 This histogram visualizes the distribution of similarity scores obtained using the Representation-based Data Selection (RDS) method.  The top 10,000 data points selected for the GSM8K and AlpacaEval tasks from the Tülu 2 unfiltered dataset are analyzed. The x-axis represents the cosine similarity scores, and the y-axis shows the frequency of those scores.  The comparison reveals a key observation: AlpacaEval instances exhibit lower average similarity scores compared to GSM8K instances, suggesting a difference in data characteristics relevant to the two tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Histogram of RDS scores for the top 10,000 samples picked for GSM8k and AlpacaEval from the Tülu 2 unfiltered pool. We find that AlpacaEval instances have lower average similarity than GSM8k.
> </details>



![](https://arxiv.org/html/2503.01807/x6.png)

> 🔼 Figure 6 shows the source distribution of the 326,000 data points selected using the RDS+ method from the unfiltered TÜLU 2 dataset.  It compares this distribution to a random sample of the same size (326,000) from the same pool. The figure visually represents the proportion of data points selected from different sources (e.g., FLAN V2, ShareGPT, etc.) for both the RDS+ selection and the random selection.  The breakdown of the selected data points across various sources highlights the different data selection preferences between RDS+ and the random sampling method.  The 'round-robin' designation in the caption indicates that this is the data distribution obtained when selecting data for a multi-task scenario using a round-robin strategy.
> <details>
> <summary>read the caption</summary>
> Figure 6: Breakdown of what data gets selected when selecting 326,000 samples using RDS from the Tülu 2 unfiltered pool. ‘Random’ represents the samples chosen when randomly downsampling to 326,000 samples, and ‘round-robin’ refers to the samples selected by the multi-task round-robin selection.
> </details>



![](https://arxiv.org/html/2503.01807/x7.png)

> 🔼 Figure 7 presents a comparative analysis of data selection methods applied to the Tülu 2 unfiltered dataset.  It shows the proportions of data samples selected from different sources (FLAN, ShareGPT, etc.) by various methods including IFD, Top-PPL, RDS+, and random selection. Two sample sizes are compared: 10,000 and 326,000. The figure visually demonstrates that certain methods exhibit biases towards specific data sources, for example, IFD showing a preference for ShareGPT data and Top-PPL favoring FLAN data, regardless of the sample size.  The random selection serves as a baseline for comparison, illustrating the non-uniformity of the other methods' selections.
> <details>
> <summary>read the caption</summary>
> Figure 7: Breakdown of what data gets selected when selecting 10,000 or 326,000 samples using RDS from the Tülu 2 unfiltered pool using various selection methods. Sample counts normalized to add to 1. ‘Random’ represents the samples chosen when randomly downsampling to 326,000 samples. IFD has a clear bias to ShareGPT data at both sizes, while PPL has a clear bias to FLAN data.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.1">
<tr class="ltx_tr" id="A2.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1">Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.2.1"># Samples in <span class="ltx_text ltx_font_smallcaps" id="A2.T5.1.1.2.1.1">Tülu</span> 2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T5.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.3.1"># Samples in Unfil.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">FLAN V2 <cite class="ltx_cite ltx_citemacro_citep">(Chung et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib11" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">49,123</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">961,322</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.3">
<td class="ltx_td ltx_align_left" id="A2.T5.1.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">FLAN CoT <cite class="ltx_cite ltx_citemacro_citep">(Chung et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib11" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">49,747</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">398,439</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.4">
<td class="ltx_td ltx_align_left" id="A2.T5.1.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">Open Assist. <cite class="ltx_cite ltx_citemacro_citep">(Köpf et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib27" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">7,331</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.4.3" style="padding-left:5.0pt;padding-right:5.0pt;">7,707</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.5">
<td class="ltx_td ltx_align_left" id="A2.T5.1.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">Dolly <cite class="ltx_cite ltx_citemacro_citep">(Databricks, <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib15" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.5.2" style="padding-left:5.0pt;padding-right:5.0pt;">0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.5.3" style="padding-left:5.0pt;padding-right:5.0pt;">15,007</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.6">
<td class="ltx_td ltx_align_left" id="A2.T5.1.6.1" style="padding-left:5.0pt;padding-right:5.0pt;">GPT-4 Alpaca <cite class="ltx_cite ltx_citemacro_citep">(Peng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib47" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.6.2" style="padding-left:5.0pt;padding-right:5.0pt;">19,906</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.6.3" style="padding-left:5.0pt;padding-right:5.0pt;">52,002</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.7">
<td class="ltx_td ltx_align_left" id="A2.T5.1.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">Code Alpaca <cite class="ltx_cite ltx_citemacro_citep">(Chaudhary, <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib7" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.7.2" style="padding-left:5.0pt;padding-right:5.0pt;">20,016</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.7.3" style="padding-left:5.0pt;padding-right:5.0pt;">20,022</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.8">
<td class="ltx_td ltx_align_left" id="A2.T5.1.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">ShareGPT</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">111,912</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">100,054</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.9">
<td class="ltx_td ltx_align_left" id="A2.T5.1.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">LIMA <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib72" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.9.2" style="padding-left:5.0pt;padding-right:5.0pt;">1,018</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.9.3" style="padding-left:5.0pt;padding-right:5.0pt;">1,030</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.10">
<td class="ltx_td ltx_align_left" id="A2.T5.1.10.1" style="padding-left:5.0pt;padding-right:5.0pt;">Wizard Evol-Instruct V2 <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib62" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.10.2" style="padding-left:5.0pt;padding-right:5.0pt;">29,810</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.10.3" style="padding-left:5.0pt;padding-right:5.0pt;">142,802</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.11">
<td class="ltx_td ltx_align_left" id="A2.T5.1.11.1" style="padding-left:5.0pt;padding-right:5.0pt;">Open Orca <cite class="ltx_cite ltx_citemacro_citep">(Lian et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib36" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.11.2" style="padding-left:5.0pt;padding-right:5.0pt;">29,683</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.11.3" style="padding-left:5.0pt;padding-right:5.0pt;">4,111,858</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.12">
<td class="ltx_td ltx_align_left" id="A2.T5.1.12.1" style="padding-left:5.0pt;padding-right:5.0pt;">SciRIFF <cite class="ltx_cite ltx_citemacro_citep">(Wadden et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib57" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.12.2" style="padding-left:5.0pt;padding-right:5.0pt;">7,468</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.12.3" style="padding-left:5.0pt;padding-right:5.0pt;">7,535</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.13">
<td class="ltx_td ltx_align_left" id="A2.T5.1.13.1" style="padding-left:5.0pt;padding-right:5.0pt;">Hardcoded</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.13.2" style="padding-left:5.0pt;padding-right:5.0pt;">140</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.13.3" style="padding-left:5.0pt;padding-right:5.0pt;">14</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T5.1.14.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T5.1.14.1.1">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T5.1.14.2" style="padding-left:5.0pt;padding-right:5.0pt;">326,153</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T5.1.14.3" style="padding-left:5.0pt;padding-right:5.0pt;">5,817,792</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a multi-task data selection experiment.  Seven different data selection methods were used to choose 326,000 samples from the complete, unfiltered TÜLU 2 dataset.  The goal was to find a dataset that performed well across seven diverse evaluation tasks.  For each method, a single model was trained on the selected dataset and its performance was measured on each of the seven tasks. The table shows the average performance across these tasks for each method. Additionally, it shows results when using samples from the WildChat and Arena Hard datasets for selection, highlighting the impact of dataset choice on performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Multi-task performance of dataset selection methods when selecting 326k samples from the full Tülu 2 unfiltered pool. Each row reflects the performance of a single model trained on a single dataset chosen to perform well across tasks. For ‘WildChat’ and ‘Arena Hard’ we use samples from WildChat and Arena Hard for selection.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.1">
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1">Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.2.1"># Samples in <span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.1.2.1.1">Tülu</span> 3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.3.1"># Samples in Unfil.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.2.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.2.1.1">Tülu</span> 3 Hardcoded</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.2">240</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.3">24</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3">
<td class="ltx_td ltx_align_left" id="A2.T6.1.3.1">Open Assist. <cite class="ltx_cite ltx_citemacro_citep">(Köpf et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib27" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.3.2">7,132</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.3.3">7,131</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4">
<td class="ltx_td ltx_align_left" id="A2.T6.1.4.1">No Robots <cite class="ltx_cite ltx_citemacro_citep">(Rajani et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib49" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.4.2">9,500</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.4.3">9,500</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.5">
<td class="ltx_td ltx_align_left" id="A2.T6.1.5.1">WildChat (GPT-4 subset) <cite class="ltx_cite ltx_citemacro_citep">(Zhao et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib71" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.5.2">100,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.5.3">235,028</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.6">
<td class="ltx_td ltx_align_left" id="A2.T6.1.6.1">FLAN V2 <cite class="ltx_cite ltx_citemacro_citep">(Chung et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib11" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.6.2">89,982</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.6.3">961,322</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.7">
<td class="ltx_td ltx_align_left" id="A2.T6.1.7.1">SciRIFF <cite class="ltx_cite ltx_citemacro_citep">(Wadden et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib57" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.7.2">10,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.7.3">35,149</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.8">
<td class="ltx_td ltx_align_left" id="A2.T6.1.8.1">TableGPT <cite class="ltx_cite ltx_citemacro_citep">(Zha et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib65" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.8.2">5,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.8.3">13,159</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.9">
<td class="ltx_td ltx_align_left" id="A2.T6.1.9.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.9.1.1">Tülu</span> 3 Persona MATH</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.9.2">149,960</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.9.3">149,960</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.10">
<td class="ltx_td ltx_align_left" id="A2.T6.1.10.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.10.1.1">Tülu</span> 3 Persona GSM</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.10.2">49,980</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.10.3">49,980</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.11">
<td class="ltx_td ltx_align_left" id="A2.T6.1.11.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.11.1.1">Tülu</span> 3 Persona Algebra</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.11.2">20,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.11.3">50,000</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.12">
<td class="ltx_td ltx_align_left" id="A2.T6.1.12.1">OpenMathInstruct 2 <cite class="ltx_cite ltx_citemacro_citep">(Toshniwal et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib55" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.12.2">50,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.12.3">2,570,505</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.13">
<td class="ltx_td ltx_align_left" id="A2.T6.1.13.1">NuminaMath-TIR <cite class="ltx_cite ltx_citemacro_citep">(LI et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib30" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.13.2">64,312</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.13.3">64,312</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.14">
<td class="ltx_td ltx_align_left" id="A2.T6.1.14.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.14.1.1">Tülu</span> 3 Persona Python</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.14.2">34,999</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.14.3">34,998</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.15">
<td class="ltx_td ltx_align_left" id="A2.T6.1.15.1">Evol CodeAlpaca <cite class="ltx_cite ltx_citemacro_citep">(Luo et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib40" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.15.2">107,276</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.15.3">107,276</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.16">
<td class="ltx_td ltx_align_left" id="A2.T6.1.16.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.16.1.1">Tülu</span> 3 CoCoNot <cite class="ltx_cite ltx_citemacro_citep">(Brahman et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib5" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.16.2">10,983</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.16.3">10,983</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.17">
<td class="ltx_td ltx_align_left" id="A2.T6.1.17.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.17.1.1">Tülu</span> 3 WildJailbreak <cite class="ltx_cite ltx_citemacro_citep">(Jiang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib25" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.17.2">50,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.17.3">178,344</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.18">
<td class="ltx_td ltx_align_left" id="A2.T6.1.18.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.18.1.1">Tülu</span> 3 WildGuardMix <cite class="ltx_cite ltx_citemacro_citep">(Han et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib19" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.18.2">50,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.18.3">85,090</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.19">
<td class="ltx_td ltx_align_left" id="A2.T6.1.19.1">Aya <cite class="ltx_cite ltx_citemacro_citep">(Singh et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01807v1#bib.bib52" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.19.2">100,000</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.19.3">190,320</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.20">
<td class="ltx_td ltx_align_left" id="A2.T6.1.20.1">
<span class="ltx_text ltx_font_smallcaps" id="A2.T6.1.20.1.1">Tülu</span> 3 Persona IF</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.20.2">29,980</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.20.3">29,962</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.21">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T6.1.21.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.21.1.1">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.1.21.2">939,344</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T6.1.21.3">4,783,043</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a multi-task instruction tuning experiment.  Using the Llama 3.1 8B model as a base, the researchers selected 939,000 samples from the unfiltered Tülu 3 dataset using various data selection methods.  The performance of models fine-tuned on these selected datasets was evaluated across multiple tasks. The results show a comparison of the performance of RDS+ against various baselines, including a balanced random selection, and the official Tülu 3 SFT model.  A separate row shows the results of using the 'Arena Hard' query set for selection with RDS+. The key takeaway is that RDS+ outperforms the official Tülu 3 SFT model.
> <details>
> <summary>read the caption</summary>
> Table 3: Multi-task performance of RDS against baselines when finetuning from Llama 3.1 8B base and selecting 939k samples from the Tülu 3 unfiltered mixture following the multitask setup in §4.2. For ‘Arena Hard’ we use samples from Arena Hard as the query set. RDS+ outperforms the official Tülu 3 SFT model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A7.T9.1">
<tr class="ltx_tr" id="A7.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A7.T9.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A7.T9.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.2.1">Avg. Perf.</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T9.1.2.1">RDS (<span class="ltx_text ltx_font_bold" id="A7.T9.1.2.1.1">ours</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.2.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.2.2.1">46.4</span></td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T9.1.3.1">- EOS token only</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.3.2">45.4</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.4">
<td class="ltx_td ltx_align_left" id="A7.T9.1.4.1">- Uniform mean-pool</td>
<td class="ltx_td ltx_align_center" id="A7.T9.1.4.2">45.8</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T9.1.5.1">- Prompt-only</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T9.1.5.2">43.2</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T9.1.6.1">- Label-only</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T9.1.6.2">45.1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the number of query and test samples used for each evaluation dataset in the paper. The query samples are used as few-shot examples during model evaluation, while the test samples are used to measure the final model performance. The number of query samples varies depending on the specific dataset and the evaluation task, ranging from 8 to 500.  The number of test samples is substantially larger than the number of query samples for all datasets.
> <details>
> <summary>read the caption</summary>
> Table 4: Query and test split counts for evaluation datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01807/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01807/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}