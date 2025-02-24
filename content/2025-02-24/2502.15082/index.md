---
title: "UPCORE: Utility-Preserving Coreset Selection for Balanced Unlearning"
summary: "UPCORE reduces unintended unlearning effects via coreset selection, balancing knowledge removal and utility preservation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Unsupervised Learning", "🏢 UNC Chapel Hill",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15082 {{< /keyword >}}
{{< keyword icon="writer" >}} Vaidehi Patil et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15082" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15082" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15082/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Machine unlearning aims to remove specific data from pre-trained models, but this often degrades the model's performance on other data. This collateral damage leads to poor deletion or unusable models. Current unlearning methods struggle to balance removing information and preserving other abilities of the model. Therefore, **finding the right data is crucial for utility-preserving coreset selection.**



This paper introduces UPCORE (Utility-Preserving Coreset Selection), a framework that minimizes collateral damage during unlearning. By selectively pruning the forget set to remove outliers, UPCORE reduces model degradation after unlearning. **The method uses isolation forests to identify and remove outlier data points in the forget set.** UPCORE achieves superior balance between deletion efficacy and model preservation across standard unlearning methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Variance in model representations of data is a key driver of collateral damage during unlearning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Selectively pruning outliers from the forget set based on Isolation Forests reduces variance and improves the trade-off between deletion efficacy and model utility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} UPCORE improves unlearning across multiple methods and metrics, including a new area-under-the-curve metric. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers who work on **privacy, security, and fairness in machine learning**. The method for utility preservation will offer an approach to unlearning that mitigates collateral damage. It highlights **a new metric, AUC, for evaluating the trade-off between privacy and utility**, and shows how it can be combined with existing unlearning methods to achieve better results and thus opens new avenues for future investigation. This research contributes to the development of safer, more reliable, and ethically aligned AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.15082/x1.png)

> 🔼 This figure illustrates the core concept of the UPCORE method.  The left panel shows how standard unlearning methods impact the entire forget set uniformly. This can lead to collateral damage where information outside the forget set is unintentionally lost due to the presence of outliers (points with high variance in the model's hidden representation) within the forget set.  The right panel demonstrates how UPCORE addresses this problem. By identifying and removing outliers, UPCORE creates a lower-variance coreset. This coreset is then used for unlearning, minimizing collateral damage.  Furthermore, UPCORE leverages positive transfer learning from the coreset to the pruned points; the pruned points benefit from the learned information of the coreset and are also successfully unlearned without causing negative transfer to the other data points.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: Standard unlearning methods are applied equally to all points in the forget set. Here, outlier points in the model’s hidden space (visualized in 2D) contribute to the unintentional forgetting of points outside of the forget set (i.e. collateral damage). Right: By finding a lower-variance coreset within the forget set, UPCORE reduces damage while maintaining forget performance via positive transfer from the coreset to the pruned points.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.7.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.2.1">Selection</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.3.1">Retain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.4.1">Neigh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.5.1">Real World</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.6.1">Real Authors</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.7.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T1.7.1.1.7.1">Model Utility</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.7.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.1.1" rowspan="3"><span class="ltx_text" id="S5.T1.7.2.1.1.1">Grad. Ascent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.1.2">Complete</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.1.3">0.488</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.1.4">0.568</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.1.5">0.720</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.1.6">0.891</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.2.1.7">0.343</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.3.2">
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.2.1">Random</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.2.2">0.495</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.2.3">0.558</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.2.4">0.731</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.2.5">0.907</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.3.2.6">0.353</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.4.3">
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.7.4.3.1.1">UPCORE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.3.2"><span class="ltx_text ltx_font_bold" id="S5.T1.7.4.3.2.1">0.523</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.3.3"><span class="ltx_text ltx_font_bold" id="S5.T1.7.4.3.3.1">0.608</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.3.4"><span class="ltx_text ltx_font_bold" id="S5.T1.7.4.3.4.1">0.769</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.3.5"><span class="ltx_text ltx_font_bold" id="S5.T1.7.4.3.5.1">0.933</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.4.3.6"><span class="ltx_text ltx_font_bold" id="S5.T1.7.4.3.6.1">0.387</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.5.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.4.1" rowspan="3"><span class="ltx_text" id="S5.T1.7.5.4.1.1">Refusal</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.4.2">Complete</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.4.3">0.493</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.4.4">0.488</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.4.5">0.714</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.4.6">0.890</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.4.7">0.366</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.6.5">
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.5.1">Random</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.5.2">0.456</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.5.3">0.458</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.5.4">0.644</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.5.5">0.819</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.6.5.6">0.332</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.6">
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.7.7.6.1.1">UPCORE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.6.2"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.6.2.1">0.500</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.6.3"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.6.3.1">0.524</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.6.4"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.6.4.1">0.744</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.6.5"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.6.5.1">0.920</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.6.6"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.6.6.1">0.381</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.8.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.7.8.7.1" rowspan="3"><span class="ltx_text" id="S5.T1.7.8.7.1.1">NPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.7.2">Complete</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.7.3">0.281</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.7.4">0.237</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.7.5">0.192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.7.6">0.342</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.8.7.7">0.199</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.9.8">
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.8.1">Random</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.8.2">0.253</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.8.3">0.271</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.8.4">0.195</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.8.5">0.308</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.9.8.6">0.186</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.10.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.7.10.9.1.1">UPCORE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.10.9.2"><span class="ltx_text ltx_font_bold" id="S5.T1.7.10.9.2.1">0.329</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.10.9.3"><span class="ltx_text ltx_font_bold" id="S5.T1.7.10.9.3.1">0.319</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.10.9.4"><span class="ltx_text ltx_font_bold" id="S5.T1.7.10.9.4.1">0.246</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.10.9.5"><span class="ltx_text ltx_font_bold" id="S5.T1.7.10.9.5.1">0.414</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.10.9.6"><span class="ltx_text ltx_font_bold" id="S5.T1.7.10.9.6.1">0.248</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the Area Under the Curve (AUC) values, which represents a trade-off between deletion effectiveness and model utility.  Deletion effectiveness is measured by (1 - ROUGE) score on the forget set (how well the model forgets the unwanted information), while model utility is evaluated using ROUGE scores across several datasets: retain set, neighborhood data, real-world data, and real-author data. An aggregate model utility score is also calculated by combining these metrics.  The results are shown for three different unlearning methods: Gradient Ascent, Refusal, and Negative Preference Optimization (NPO), and for three coreset selection methods: selecting the complete forget set, a random subset of the forget set and the UPCORE coreset.
> <details>
> <summary>read the caption</summary>
> Table 1: AUC across the two competing objectives: (1) Deletion Effectiveness, defined as (1−ROUGE)1ROUGE(1-\text{ROUGE})( 1 - ROUGE ) on the forget set (X-axis), and (2) Model Utility, averaged across Counterfact topics and evaluated via ROUGE scores on multiple utility datasets, including neighborhood data and an aggregate model utility across datasets (Y-axis). We compare three unlearning methods: Gradient Ascent, Refusal, and NPO.
> </details>





### In-depth insights


#### CoreSet Selection
**Coreset selection focuses on identifying representative subsets** of a larger dataset, aiming to maintain key properties while reducing computational burden. Traditional coreset selection emphasizes coverage, diversity, or data point importance, **improving training efficiency in supervised learning**. In the context of machine unlearning, coreset selection offers a novel approach by focusing on data points disproportionately contributing to collateral damage. This involves strategically pruning outliers to minimize utility loss while ensuring effective knowledge removal. It differs from typical coreset methods primarily targeting classification or regression tasks by **adapting to the unique challenges of unlearning**, where preserving utility and ensuring data deletion accuracy are critical and often conflicting goals.

#### Variance Impact
**Variance significantly impacts unlearning**, influencing how effectively a model forgets specific data. Higher variance indicates a wider spread of data points in the model's latent space, leading to greater collateral damage during unlearning. Removing high-variance (outlier) points reduces the overall data spread, **minimizing unintended utility degradation**. Strategies like pruning outliers or creating compact coresets effectively control variance, striking a better balance between data removal and model preservation. **Understanding and managing variance is critical** for optimizing unlearning performance and ensuring the continued usefulness of the model.

#### AUC Improvement
The paper introduces UPCORE, a method for balanced unlearning that aims to minimize the trade-off between removing information and maintaining model utility.  The paper introduces a new metric, **Area Under the Curve (AUC)**, across standard unlearning metrics to evaluate the effectiveness of unlearning methods. A higher AUC indicates a better balance, with improved forget performance and minimized degradation in model utility on non-forget data. The experimental results show that UPCORE consistently achieves higher AUC compared to baseline methods like unlearning on the complete forget set and unlearning on a randomly sampled subset. **This means UPCORE provides a superior trade-off between deletion efficacy and model utility across various unlearning methods and datasets**. The AUC improvement suggests that UPCORE is more effective in generalizing to variations of the forgotten information and is more robust to blackbox attacks attempting to extract the deleted information.

#### Positive Transfer
**Positive transfer** in machine unlearning is a fascinating yet underexplored phenomenon. It refers to the ability of an unlearning process, designed to remove specific knowledge from a model, to inadvertently improve the model's performance on related, yet distinct, tasks or data points. Intuitively, one might expect unlearning to only degrade performance, as it involves selectively 'forgetting' information. However, positive transfer suggests that this targeted forgetting can sometimes lead to a better generalization or a reduction in overfitting. One potential explanation is that unlearning can act as a form of regularization, preventing the model from memorizing noisy or irrelevant details. It is crucial to carefully evaluate and control positive transfer effects to ensure that the unlearning process achieves its intended goal of removing undesirable knowledge without compromising the model's overall utility or introducing unintended biases. Furthermore, this concept highlights the complex interplay between different pieces of information within a model.

#### Robust Unlearning
Robust unlearning aims to ensure that the **removal of specific information** from a machine learning model does not compromise its overall utility or create vulnerabilities. This is crucial because simply deleting data can lead to unintended consequences like **reduced accuracy** on other tasks or susceptibility to adversarial attacks attempting to recover the 'forgotten' knowledge. A robust unlearning method should **generalize well to rephrased inputs and be resilient to jailbreaking attempts**, indicating genuine removal rather than superficial alteration. **Balancing deletion effectiveness** with utility preservation is a key challenge, often necessitating strategies like **coreset selection** to identify and prune influential data points while retaining core knowledge. **Evaluation across diverse settings** and metrics is essential to assess robustness, considering factors like model utility, negative transfer, and resilience to various attacks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.15082/x2.png)

> 🔼 This figure illustrates the four stages of the UPCORE algorithm.  Stage 1 involves extracting the hidden states from the large language model (LLM) being modified. These hidden states represent the LLM's internal representation of the data. Stage 2 uses Isolation Forests to identify outlier data points within the forget set (data to be removed).  These outliers are points that significantly increase the variance of the model's representation. In Stage 3, the algorithm prunes or removes these identified outliers to create a core forget set, a smaller subset of the original forget set with lower variance. Finally, Stage 4 applies an unlearning method to the LLM, using only the selected core forget set to remove the targeted information while minimizing unintended damage to the model's overall performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: UPCORE has four stages. First, we extract hidden states from the LLM to be modified; second, we identify outliers using Isolation Forests; third, we prune outliers to select a core forget set, and fourth, we perform unlearning on the coreset.
> </details>



![](https://arxiv.org/html/2502.15082/x3.png)

> 🔼 This figure demonstrates the trade-off between deletion effectiveness (how well the model forgets the unwanted information) and model utility (how well the model performs on other tasks) across different training epochs during the unlearning process.  The x-axis represents deletion effectiveness, while the y-axis represents model utility.  Each line represents a different method: complete unlearning (applying unlearning to the full forget set), random unlearning (applying unlearning to a random subset of the forget set), and UPCORE (the proposed method). The area under the curve (AUC) for each method is calculated to quantify the overall performance. UPCORE consistently achieves the highest AUC, indicating a superior balance between effective deletion and the preservation of model utility. This showcases the advantage of UPCORE over traditional unlearning methods.
> <details>
> <summary>read the caption</summary>
> Figure 3: Trading-off between deletion effectiveness and model utility forms a Pareto frontier across epochs, shown here averaged across Counterfact topics using Gradient Ascent. Our proposed AUC metric quantifies the area under these curves, with UPCORE consistently achieving the highest AUC across all settings.
> </details>



![](https://arxiv.org/html/2502.15082/x4.png)

> 🔼 This figure displays the area under the curve (AUC) for two metrics: ROUGE score on the forget set (measuring successful deletion) and ROUGE score on the neighborhood data (measuring unintended model damage).  The AUC is calculated for three different coreset selection methods: complete (using the whole forget set), random (using a random sample of the forget set), and UPCORE.  The graph shows that UPCORE consistently achieves a higher AUC across three different unlearning methods (Gradient Ascent, Refusal, and NPO), indicating a superior balance between effective deletion and preservation of model utility on related but unseen data. The results highlight that UPCORE effectively reduces unintended damage to neighborhood data by carefully selecting a coreset of the forget data.
> <details>
> <summary>read the caption</summary>
> Figure 4: AUC between forget set ROUGE and neighborhood data ROUGE averaged across topics in Counterfact. UPCORE reduces damage to neighborhood data.
> </details>



![](https://arxiv.org/html/2502.15082/x5.png)

> 🔼 This figure examines how changing the size of the coreset, created by pruning outliers, affects the model's performance.  The coreset size is varied by adjusting the percentage of data points pruned. The x-axis represents the different pruning percentages, while the y-axis shows the AUC (Area Under the Curve) score, calculated for various utility metrics (assessing the model's performance on data outside the unlearning scope). These metrics are averaged across multiple topics from the Counterfact dataset. The figure helps determine the optimal balance between effective data removal and preserving model utility by showing how AUC varies across different pruning rates.  It shows the tradeoff between deletion effectiveness and model utility in unlearning.
> <details>
> <summary>read the caption</summary>
> Figure 5: Impact of scaling the coreset size on performance: AUC scores on different utility sets, averaged across Counterfact topics, for various pruning percentages.
> </details>



![](https://arxiv.org/html/2502.15082/x6.png)

> 🔼 This figure visualizes the variance of hidden states within the forget sets generated by different methods for unlearning, namely the baseline approach and UPCORE.  It showcases the variance of hidden states for six different topics from the Counterfact dataset. Each bar represents a specific topic, and the height shows the variance. The comparison highlights that UPCORE, which employs Isolation Forests for coreset selection, significantly reduces the variance in the hidden states compared to the baseline approach. This reduction in variance is a key outcome of UPCORE, as it aims to minimize the impact of unlearning on other parts of the model by selecting a subset of forget data with lower variance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Hidden state variance of the baseline and UPCORE forget sets across the six Counterfact forget topics. UPCORE consistently reduces variance using Isolation Forest as expected.
> </details>



![](https://arxiv.org/html/2502.15082/x7.png)

> 🔼 This figure displays the relationship between model utility and the variance of the model's hidden states for data points in the forget set.  The analysis is performed across multiple topics to demonstrate that this negative correlation is consistent even across different subject matters. The correlation coefficient of -0.714 indicates a strong inverse relationship: as the variance of hidden states in the forget set increases, the model's utility decreases after unlearning.
> <details>
> <summary>read the caption</summary>
> (a) Model utility and hidden state variance of the forget data show a strong negative correlation of -0.714 across data from multiple topics.
> </details>



![](https://arxiv.org/html/2502.15082/x8.png)

> 🔼 This figure examines the relationship between the drop in model utility after unlearning and the model's confidence scores on the forget data.  The analysis reveals a weak negative correlation (Pearson correlation coefficient of -0.021), suggesting that the model's initial confidence in the data to be forgotten is not a strong predictor of the amount of utility loss experienced after unlearning. This implies that factors beyond simple confidence scores likely play a crucial role in determining the impact of unlearning on model performance.  The plot likely shows a scatter plot with model confidence on the x-axis and drop in model utility on the y-axis, with each point representing a data point from the forget set.
> <details>
> <summary>read the caption</summary>
> (b) Drop in model utility after unlearning and base model’s confidence on the forget data do not show any strong correlation with a Pearson correlation value of -0.021.
> </details>



![](https://arxiv.org/html/2502.15082/x9.png)

> 🔼 Figure 7 displays the correlation between model performance and two factors: hidden state variance and model confidence.  Panel (a) shows a strong negative correlation between model utility (measured after unlearning) and the variance of hidden states in the model's representation of the data points designated for unlearning.  Higher variance leads to lower model utility after unlearning. Panel (b) shows that there is little to no correlation between the drop in model utility after unlearning and the model's confidence scores on those same data points. This suggests that variance of model representations is a more significant factor influencing the amount of collateral damage during unlearning than model confidence.
> <details>
> <summary>read the caption</summary>
> Figure 7: (a) Relationship between model utility and hidden state variance. (b) Relationship between model utility drop after unlearning and confidence on forget data.
> </details>



![](https://arxiv.org/html/2502.15082/x10.png)

> 🔼 This figure shows the relationship between the variance of the hidden states in the core forget set and the pruning percentage applied during the coreset selection process.  The x-axis represents the percentage of data points pruned from the initial forget set, while the y-axis represents the variance of the hidden states of the remaining points (the core forget set). As the pruning percentage increases (more points are removed), the variance of the hidden states in the core forget set decreases almost linearly. This demonstrates the effectiveness of the pruning strategy in reducing the variance within the forget set, a key factor in mitigating the collateral damage during the unlearning process.
> <details>
> <summary>read the caption</summary>
> (a) Hidden state variance of the core forget set plotted against the pruning percentage across topics. The variance of the core forget data decreases nearly linearly as the pruning percentage increases.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.2.1">Selection</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.3.1">Retain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.4.1">Neigh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.5.1">Real World</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.6.1">Real Authors</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.7.1">Model Utility</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.5.2.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.5.2.1.1" rowspan="3"><span class="ltx_text" id="S5.T2.5.2.1.1.1">Grad. Ascent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.2">Complete</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.3">0.153</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.4">0.285</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.5">0.226</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.6">0.155</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.7">0.135</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.3.2">
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.1">Random</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.2">0.159</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.3">0.304</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.4">0.222</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.5">0.157</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.6">0.136</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.5.4.3.1.1">UPCORE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.4.3.2">0.165</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.4.3.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.4.3.3.1">0.318</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.4.3.4"><span class="ltx_text ltx_font_bold" id="S5.T2.5.4.3.4.1">0.227</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.4.3.5"><span class="ltx_text ltx_font_bold" id="S5.T2.5.4.3.5.1">0.158</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.4.3.6"><span class="ltx_text ltx_font_bold" id="S5.T2.5.4.3.6.1">0.147</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Gradient Ascent unlearning method applied to TriviaQA topics.  It shows the performance metrics (Retain, Neigh, Real World, Real Authors, Model Utility) from Table 1, but specifically focusing on the TriviaQA dataset. These metrics evaluate the trade-off between deletion accuracy (how well the model forgets the specified information) and model utility (how well the model performs on related and unrelated tasks). The table compares three data selection methods: using the entire forget set, a random subset of the forget set, and the coreset selected by UPCORE. This allows for a comparison of how different strategies for selecting data points to unlearn affect the overall balance between these competing objectives.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation metrics from Table 1 shown for Gradient Ascent on the TriviaQA topics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.2.1">Forget</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.3.1">Retain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.4.1">Neigh.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.5.1">Real Authors</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.6.1">Real World</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.5.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.7.1">Model Utility</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.5.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.5.2.2.1"><em class="ltx_emph ltx_font_italic" id="S5.T3.5.2.2.1.1" style="color:#808080;">Base model</em></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.5.2.2.2"><em class="ltx_emph ltx_font_italic" id="S5.T3.5.2.2.2.1" style="color:#808080;">0.997</em></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.2.2.3"><em class="ltx_emph ltx_font_italic" id="S5.T3.5.2.2.3.1" style="color:#808080;">0.546</em></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.2.2.4"><em class="ltx_emph ltx_font_italic" id="S5.T3.5.2.2.4.1" style="color:#808080;">0.820</em></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.2.2.5"><em class="ltx_emph ltx_font_italic" id="S5.T3.5.2.2.5.1" style="color:#808080;">1.000</em></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.2.2.6"><em class="ltx_emph ltx_font_italic" id="S5.T3.5.2.2.6.1" style="color:#808080;">0.872</em></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.2.2.7"><em class="ltx_emph ltx_font_italic" id="S5.T3.5.2.2.7.1" style="color:#808080;">0.433</em></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.5.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.5.3.1.1">Complete</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.5.3.1.2">0.018</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.3.1.3">0.381</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.3.1.4">0.144</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.3.1.5">0.669</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.3.1.6">0.446</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.3.1.7">0.182</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.4.2.1">Random</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.4.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.5.4.2.2.1">0.011</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.4.2.3">0.411</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.4.2.4">0.104</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.4.2.5"><span class="ltx_text ltx_font_bold" id="S5.T3.5.4.2.5.1">0.724</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.4.2.6">0.499</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.4.2.7">0.211</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.5.5.3.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.5.5.3.1.1">UPCORE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.5.5.3.2">0.017</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.3.3"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.3.3.1">0.430</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.3.4"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.3.4.1">0.190</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.3.5">0.706</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.3.6"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.3.6.1">0.528</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.5.3.7"><span class="ltx_text ltx_font_bold" id="S5.T3.5.5.3.7.1">0.350</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed comparison of ROUGE scores and model utility across different topics from the Counterfact dataset.  The experiment uses Gradient Ascent as the unlearning method, evaluating performance at a specific epoch. The table showcases UPCORE's superior balance in unlearning:  maintaining high forget rates while minimizing negative impact on data outside the target set (retain set, neighborhood data, etc.).  It highlights UPCORE's superior performance compared to using the complete forget set or a randomly selected subset, demonstrating both higher forget rates and better preservation of model utility on other data.
> <details>
> <summary>read the caption</summary>
> Table 3: ROUGE scores and model utility across topics from the Counterfact dataset for a fixed epoch of Gradient Ascent. UPCORE consistently has higher performance on data outside the forget set, with the least degradation among methods and closest performance to the base model, while still having a high forget rate.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.2.1">Random</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.5.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T4.5.1.1.3.1">UPCORE</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.5.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.2.1.1">Gradient Ascent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.2.1.2">0.022</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.2.1.3">0.053</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.3.2">
<td class="ltx_td ltx_align_center" id="S5.T4.5.3.2.1">Refusal</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.3.2.2">0.169</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.3.2.3">0.127</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.4.3.1">NPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.4.3.2">0.206</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.4.3.3">0.231</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ROUGE scores achieved on the pruned data points after applying unlearning.  It compares the results of UPCORE (which selectively prunes outliers from the forget set before unlearning) to a random subsampling method. The key observation is that even when unlearning is applied only to a subset of the forget data, the effect generalizes beyond that subset, influencing data points that were not directly unlearned. This demonstrates the presence of both positive and negative transfer: positive transfer is seen because unlearning a smaller subset (via pruning) still affects other data points within the same semantic group, while negative transfer is minimized through careful selection of the pruned points.
> <details>
> <summary>read the caption</summary>
> Table 4: ROUGE score on pruned datapoints. Both for UPCORE and random sampling, unlearning on a subset of datapoints translates to other datapoints not in the subset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.1.2.1">Selection</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.1.3.1">Retain</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.1.4.1">Neigh</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.1.5.1">Real World</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.1.6.1">Real Authors</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.6.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.1.7.1">Model Utility</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.6.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.2.1.1" rowspan="3"><span class="ltx_text" id="S5.T5.6.2.1.1.1">Jailbreak</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.2.1.2">Complete</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.2.1.3">0.417</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.2.1.4">0.474</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.2.1.5">0.599</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.2.1.6">0.743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.2.1.7">0.291</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.3.2">
<td class="ltx_td ltx_align_center" id="S5.T5.6.3.2.1">Random</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.3.2.2">0.430</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.3.2.3">0.470</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.3.2.4">0.629</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.3.2.5">0.787</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.3.2.6">0.305</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.4.3">
<td class="ltx_td ltx_align_center" id="S5.T5.6.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.6.4.3.1.1">UPCORE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.4.3.2"><span class="ltx_text ltx_font_bold" id="S5.T5.6.4.3.2.1">0.455</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.4.3.3"><span class="ltx_text ltx_font_bold" id="S5.T5.6.4.3.3.1">0.512</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.4.3.4"><span class="ltx_text ltx_font_bold" id="S5.T5.6.4.3.4.1">0.665</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.4.3.5"><span class="ltx_text ltx_font_bold" id="S5.T5.6.4.3.5.1">0.819</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.4.3.6"><span class="ltx_text ltx_font_bold" id="S5.T5.6.4.3.6.1">0.335</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.5.4.1" rowspan="3"><span class="ltx_text" id="S5.T5.6.5.4.1.1">Rephrase</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.5.4.2">Complete</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.5.4.3">0.357</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.5.4.4">0.431</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.5.4.5">0.533</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.5.4.6">0.655</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.5.4.7">0.257</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6.5">
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.5.1">Random</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.5.2">0.361</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.5.3">0.426</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.5.4">0.536</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.5.5">0.665</td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.6.5.6">0.262</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.6.7.6.1.1">UPCORE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.7.6.2"><span class="ltx_text ltx_font_bold" id="S5.T5.6.7.6.2.1">0.376</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.7.6.3"><span class="ltx_text ltx_font_bold" id="S5.T5.6.7.6.3.1">0.449</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.7.6.4"><span class="ltx_text ltx_font_bold" id="S5.T5.6.7.6.4.1">0.555</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.7.6.5"><span class="ltx_text ltx_font_bold" id="S5.T5.6.7.6.5.1">0.673</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.6.7.6.6"><span class="ltx_text ltx_font_bold" id="S5.T5.6.7.6.6.1">0.279</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the robustness of the UPCORE method against rephrased and jailbroken versions of the forgotten data.  It shows the performance of three coreset selection methods (Complete, Random, and UPCORE) across various metrics, including ROUGE scores on different data sets (Retain, Neigh, Real World, Real Authors) and overall Model Utility.  The goal is to assess how well the methods maintain the balance between deletion efficacy and model preservation when faced with attempts to circumvent the unlearning process by reformulating or attacking the forgotten information.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation metrics from Table 1 averaged across topics in Counterfact, assessed for robustness to rephrased and jailbreak variants of the forget data with the same utility data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T6.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.4.1.1.1.1">AUC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.4.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.4.1.1.2.1">Correlation with HSV</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.4.2.1.1">Retain</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.4.2.1.2">-0.421</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.4.3.2.1">Neigh</th>
<td class="ltx_td ltx_align_center" id="A2.T6.4.3.2.2">-0.507</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.4.4.3.1">Real World</th>
<td class="ltx_td ltx_align_center" id="A2.T6.4.4.3.2">-0.371</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.4.5.4.1">Real Authors</th>
<td class="ltx_td ltx_align_center" id="A2.T6.4.5.4.2">-0.489</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T6.4.6.5.1">Model Utility</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.4.6.5.2">-0.612</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the correlation coefficients between the variance of the hidden state representations of the forget set and the Area Under the Curve (AUC) values for various metrics.  The AUC values, calculated across different topics, measure the trade-off between deletion effectiveness (how well the model forgets the target information) and model utility (how well the model performs on unrelated tasks). A negative correlation indicates that as the variance of the forget set increases, the AUC decreases, suggesting a worse trade-off between forgetting and model utility. This finding aligns with the observations in Section 3.2, where a negative correlation between model utility and variance was also observed.
> <details>
> <summary>read the caption</summary>
> Table 6: Correlation between the forget set representation variance and the AUC across topics. The negative correlation values are consistent with the negative correlation of model utility and variance shown in Section 3.2.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15082/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15082/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}