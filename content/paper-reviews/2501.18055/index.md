---
title: "Current Pathology Foundation Models are unrobust to Medical Center Differences"
summary: "Current pathology foundation models struggle with center variations; this paper introduces a robustness index to quantify this, revealing model biases and advancing robust model development."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 Netherlands Cancer Institute Amsterdam",]
showSummary: true
date: 2025-01-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.18055 {{< /keyword >}}
{{< keyword icon="writer" >}} Edwin D. de Jong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.18055" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.18055" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.18055/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many AI models in healthcare, particularly pathology foundation models (FMs), are trained on data from various medical centers.  These models can unintentionally learn features specific to each center (like staining techniques or equipment), rather than focusing solely on the actual disease. This can cause problems when applying the model to patients from different centers; the model might give incorrect diagnoses. This paper identifies this major problem which hinders their widespread use in healthcare.

To tackle this, the researchers proposed a new method called a "Robustness Index." It assesses how well FMs focus on the actual disease and separate that from the center-specific factors.  They tested this index on existing pathology FMs and found that all existing models heavily rely on center-specific features.  However, they identified models that were more robust, offering directions to build better, more reliable AI for healthcare.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Pathology Foundation Models (FMs) show significant variations in robustness to medical center differences. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel robustness index effectively quantifies the dominance of biological features over confounding center-specific features in FM embeddings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study reveals a strong influence of medical center variations on downstream prediction performance, even in more sophisticated models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in medical AI and pathology because it **directly addresses the critical issue of robustness** in foundation models.  It introduces a novel metric and analysis method to **quantify and visualize model biases**, providing actionable insights for improving model reliability and clinical adoption. This work is highly relevant given the increasing use of FMs in healthcare and the urgent need for trustworthy AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2501.18055/extracted/6170945/fig/freq-same-class.png)

> 🔼 This bar chart visualizes the robustness index for each of the ten pathology foundation models evaluated in the study.  The robustness index quantifies the degree to which biological features (like cancer type) outweigh confounding features (like medical center differences) in the model's learned representation. A higher robustness index indicates a model that better focuses on biological information, making it more robust to variations between medical centers.  The chart allows for easy comparison of the robustness of different models, highlighting which models are more or less sensitive to medical center biases.
> <details>
> <summary>read the caption</summary>
> Figure 2: Robustness index for the models evaluated here.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.1"><span class="ltx_text" id="S4.T1.6.1.1.1.1" style="font-size:50%;">TSS Short Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.2"><span class="ltx_text" id="S4.T1.6.1.1.2.1" style="font-size:50%;">BRCA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.3"><span class="ltx_text" id="S4.T1.6.1.1.3.1" style="font-size:50%;">COAD</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.4"><span class="ltx_text" id="S4.T1.6.1.1.4.1" style="font-size:50%;">LIHC</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.5"><span class="ltx_text" id="S4.T1.6.1.1.5.1" style="font-size:50%;">LUSC</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.6"><span class="ltx_text" id="S4.T1.6.1.1.6.1" style="font-size:50%;">STAD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.1.1"><span class="ltx_text" id="S4.T1.6.2.1.1.1" style="font-size:50%;">Asterand</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.1.2"><span class="ltx_text" id="S4.T1.6.2.1.2.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.1.3"><span class="ltx_text" id="S4.T1.6.2.1.3.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.1.4"><span class="ltx_text" id="S4.T1.6.2.1.4.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.1.5"><span class="ltx_text" id="S4.T1.6.2.1.5.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.1.6"><span class="ltx_text" id="S4.T1.6.2.1.6.1" style="font-size:50%;color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.3.2">
<td class="ltx_td ltx_align_left" id="S4.T1.6.3.2.1"><span class="ltx_text" id="S4.T1.6.3.2.1.1" style="font-size:50%;">GPCC</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.3.2.2"><span class="ltx_text" id="S4.T1.6.3.2.2.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.3.2.3"><span class="ltx_text" id="S4.T1.6.3.2.3.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td" id="S4.T1.6.3.2.4"></td>
<td class="ltx_td" id="S4.T1.6.3.2.5"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.3.2.6"><span class="ltx_text" id="S4.T1.6.3.2.6.1" style="font-size:50%;color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4.3">
<td class="ltx_td ltx_align_left" id="S4.T1.6.4.3.1"><span class="ltx_text" id="S4.T1.6.4.3.1.1" style="font-size:50%;">IGC</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.4.3.2"><span class="ltx_text" id="S4.T1.6.4.3.2.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.4.3.3"><span class="ltx_text" id="S4.T1.6.4.3.3.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.4.3.4"><span class="ltx_text" id="S4.T1.6.4.3.4.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.4.3.5"><span class="ltx_text" id="S4.T1.6.4.3.5.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.4.3.6"><span class="ltx_text" id="S4.T1.6.4.3.6.1" style="font-size:50%;color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.5.4">
<td class="ltx_td ltx_align_left" id="S4.T1.6.5.4.1"><span class="ltx_text" id="S4.T1.6.5.4.1.1" style="font-size:50%;">ILSBio</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.5.4.2"><span class="ltx_text" id="S4.T1.6.5.4.2.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.5.4.3"><span class="ltx_text" id="S4.T1.6.5.4.3.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.5.4.4"><span class="ltx_text" id="S4.T1.6.5.4.4.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td" id="S4.T1.6.5.4.5"></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.5.4.6"><span class="ltx_text" id="S4.T1.6.5.4.6.1" style="font-size:50%;color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.6.6.5.1"><span class="ltx_text" id="S4.T1.6.6.5.1.1" style="font-size:50%;">MSKCC</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.6.6.5.2"><span class="ltx_text" id="S4.T1.6.6.5.2.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.6.6.5.3"><span class="ltx_text" id="S4.T1.6.6.5.3.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.6.6.5.4"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.6.6.5.5"><span class="ltx_text" id="S4.T1.6.6.5.5.1" style="font-size:50%;color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.6.6.5.6"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 shows the composition of the TCGA-2k dataset used in the study.  TCGA-2k is a subset of The Cancer Genome Atlas (TCGA) data, specifically focusing on five cancer types and five medical centers. The table details which cancer types (BRCA, COAD, LIHC, LUSC, STAD) are represented by samples from each of the five medical centers (Asterand, GPCC, IGC, ILSBio, MSKCC).  This information is crucial for understanding how the dataset was constructed and for interpreting the results of the analysis, which investigated the robustness of pathology foundation models to variations between medical centers.
> <details>
> <summary>read the caption</summary>
> Table 1: Composition of the  TCGA-2k dataset: Tissue Source Site (TSS), Short Name and Project Code Combinations
> </details>





### In-depth insights


#### FM Robustness Index
The concept of an "FM Robustness Index" in the context of pathology foundation models (FMs) is crucial for evaluating the reliability and generalizability of these models.  A robust FM should prioritize **biological features** (tissue type, cancer type) over **confounding factors** (staining variations, medical center differences).  The index quantifies this by comparing the proximity of similar biological samples versus samples from the same medical center within the FM's embedding space.  **A higher index indicates greater robustness**, suggesting that the model's learned representation is driven more by relevant biological information than by artifacts introduced by center-specific variations. The index helps bridge the gap between theoretical robustness and practical performance, assisting researchers in identifying and addressing potential biases that limit clinical applicability.  **Developing robust FMs is critical for reliable pathology AI**, and this index provides a valuable quantitative tool to guide model development and evaluation.

#### Center Bias Impact
The research paper reveals a significant "center bias" impacting the performance and reliability of pathology foundation models.  **Medical centers employ varied staining procedures and imaging techniques**, leading to inconsistencies in the visual data.  The models, trained on this diverse data, inadvertently learn to prioritize these center-specific artifacts over genuine biological features. This **results in inaccurate classifications and reduced generalizability**.  The study introduces a novel metric to quantify this robustness and shows that models with higher robustness indices are less susceptible to center bias, demonstrating a pathway towards more reliable AI-driven diagnostics. **Visualizations of embedding spaces further highlight the disproportionate influence of center-specific characteristics**, which overshadow biologically relevant information. This underscores the crucial need to develop robust, bias-resistant models for widespread clinical adoption.  **Addressing center bias is not merely a technical challenge, but is vital for ensuring fair and equitable healthcare**. Ignoring this issue could lead to disparities in diagnosis and treatment based on geographical location rather than objective medical factors.

#### Downstream Effects
The downstream effects section of a research paper investigating the robustness of pathology foundation models (PFMs) to medical center differences would explore how variations in PFMs' performance, stemming from center-specific biases, impact subsequent analytical tasks.  **A key aspect would be the evaluation of downstream model accuracy**:  do models trained on embeddings from one PFM generalize well to data from other centers?  The analysis should also examine the type of errors introduced by PFM variations.  **Are errors random, or are they systematically biased towards specific tissue types or diagnostic categories from particular centers?** This would highlight the potential for PFMs to introduce systematic disparities in clinical decision-making.  Visualization of embedding spaces to show cluster formation by medical center rather than biological factors would strengthen this analysis. **The analysis should also consider whether different downstream tasks (e.g., classification versus regression) exhibit varying degrees of susceptibility** to PFM-induced bias. Finally, the discussion should address the broader implications of these findings for the clinical adoption of PFMs and the steps needed to mitigate center-related bias, including potential data augmentation or model training strategies to improve generalization.

#### Embedding Analysis
Embedding analysis in this pathology AI research paper focuses on **visualizing and interpreting the feature spaces** learned by foundation models.  The goal is to understand how well these models capture the essential biological information (tissue type, cancer type) versus the confounding factors (staining variations, medical center differences).  Techniques like t-SNE are used to reduce the dimensionality of the embeddings to 2D for visualization, allowing researchers to observe **patterns of clustering**. The analysis reveals the extent to which medical center of origin dominates the embedding space, indicating that **models may be overly sensitive to these irrelevant factors**, impacting the generalizability and reliability of downstream predictive tasks.  The paper further quantifies this sensitivity by analyzing the proportion of nearest neighbors from the same medical center when a model makes an incorrect prediction, showing that **medical center bias significantly influences performance**.  Overall, embedding analysis provides crucial insights into the robustness and reliability of pathology AI models, highlighting the importance of addressing these biases for clinical applications.

#### Future Directions
Future research should prioritize enhancing the **robustness** of pathology foundation models (PFMs) across diverse medical centers.  This could involve exploring novel training strategies, such as **domain generalization techniques** or **data augmentation methods** that specifically address center-specific variations in staining and imaging protocols.  Investigating the inherent biases within existing datasets is also crucial; addressing this would require developing **bias detection and mitigation techniques**.   Further exploration into **explainable AI (XAI)** methods is needed to improve the transparency and trustworthiness of PFMs, especially for clinical applications.  Finally, a **standardized evaluation framework** for PFM robustness needs to be established to allow for more rigorous comparison and benchmarking of future models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.18055/extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-together.png)

> 🔼 This figure shows the fraction of same-center confounders for each model.  Same-center confounders are defined as neighbors in the embedding space of a misclassified sample that have the same incorrect prediction and originate from the same medical center.  The x-axis represents the number of neighbors considered (k), and the y-axis represents the fraction of those neighbors that are same-center confounders.  The plot reveals that all models exhibit a substantial influence of same-center confounders, with some models demonstrating a much higher degree of sensitivity than others, highlighting the impact of medical center differences on the models' performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Fractions of same-center confounders for all models. All models are sensitive to these differences, some to a very high degree.
> </details>



![](https://arxiv.org/html/2501.18055/extracted/6170945/fig/relation-log-reg-center-error-avg-CLS-nr_reps-5-nr_neighbors-3.png)

> 🔼 Figure 8 shows the correlation between the errors generated by k-Nearest Neighbors (knn) and logistic regression models. The x-axis represents the frequency of center-related knn errors (i.e., how often the knn model makes an incorrect prediction due to the medical center of the sample). The y-axis shows the average fraction of logistic regression errors. The figure demonstrates a strong positive correlation: samples with a higher frequency of center-related knn errors also tend to have a higher frequency of logistic regression errors. This indicates that the medical center significantly influences both the knn and logistic regression models, suggesting that center similarities affect logistic regression predictions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Relation between logistic regression errors and center-related knn errors. Samples that are more frequently misclassified by knn based on medical center are also more frequently misclassified by logistic regression, suggesting center similarities also affect logistic regression predictions.
> </details>



![](https://arxiv.org/html/2501.18055/extracted/6170945/fig/hibou-b/tsne-BRCA-medical-center.png)

> 🔼 This figure visualizes the embedding spaces of two pathology foundation models, Phikon and its improved version Phikon-v2, specifically focusing on breast cancer cases. Each point represents a tissue sample from a particular medical center. The coloring of the points indicates the medical center of origin. This visualization helps to understand how well each model separates samples based on their biological characteristics (cancer type) versus confounding factors like medical center differences.  By comparing the two plots, one can assess the impact of model improvements on robustness to center variations.
> <details>
> <summary>read the caption</summary>
> Figure 9: Embeddings for breast cancer colored by medical center for Phikon (left) and Phikon-v2 (right).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.1.1.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1.1.1.1.1" style="width:195.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1.1.1.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-phikon-v2.png" width="598"/>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1.2.2.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1.2.2.2.1" style="width:195.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1.2.2.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-phikon.png" width="598"/>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.3.3.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1.3.3.1.1" style="width:195.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1.3.3.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-UNI.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.4.4.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1.4.4.2.1" style="width:195.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1.4.4.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-UNI2-h.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S5.T1.5.5.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1.5.5.1.1" style="width:195.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1.5.5.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-Virchow-1280D.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T1.6.6.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1.6.6.2.1" style="width:195.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1.6.6.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-Virchow2-1280D.png" width="598"/>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This figure visualizes the embedding space structure of ten pathology foundation models.  For each model, it shows the fraction of samples where the k-th nearest neighbor shares the same cancer type (blue line) or the same medical center (orange line). The x-axis represents the number of nearest neighbors (k), and the y-axis represents the fraction of samples. The plot reveals that for most models, the proximity of embeddings is more strongly determined by the medical center of origin than by the cancer type itself, especially for the nearest neighbors (k<200). Only the Virchow2 model shows a different behavior, with cancer type having a slightly stronger influence than medical center for k<200.  This indicates that many current pathology foundation models are more sensitive to medical center variations than to actual biological differences in tissue samples.
> <details>
> <summary>read the caption</summary>
> Figure 1: Fraction of samples for which the k-th neighbor has the same cancer type (blue) or medical center (orange), in order of increasing robustness. See Appendix 12 for all results. For all models, closeness in embedding space is strongly determined by whether the image comes from the same medical center. For all models except Virchow2, the medical center more strongly determines embedding proximity than the cancer type for the nearest 200 neighbors.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1a.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1a.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S5.T1a.1.1.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.1.1.1.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.1.1.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-phikon-v2-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1a.2.2.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.2.2.2.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.2.2.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-prov-gigapath-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1a.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S5.T1a.3.3.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.3.3.1.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.3.3.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-UNI-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1a.4.4.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.4.4.2.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.4.4.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-H-optimus-0-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1a.6.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S5.T1a.5.5.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.5.5.1.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.5.5.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-phikon-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1a.6.6.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.6.6.2.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.6.6.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-UNI2-h-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1a.8.8">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S5.T1a.7.7.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.7.7.1.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.7.7.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-Virchow-1280D-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T1a.8.8.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S5.T1a.8.8.2.1" style="width:173.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S5.T1a.8.8.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-Virchow2-1280D-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This figure displays the impact of medical center differences on the performance of pathology foundation models.  For each model, three lines are shown. The red line shows the fraction of incorrectly classified samples where the nearest neighbors in the model's embedding space are from the same medical center as the misclassified sample. The green line shows the accuracy of predicting the tissue type or cancer type. The blue line shows the accuracy of predicting the medical center of the sample. The models are ordered by increasing center-robustness, indicating how well the model separates biological features from medical center artifacts.  All models show a strong influence of same-center confounders, meaning that errors are linked to the medical center rather than just random chance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Fraction of same-center confounders for neighbors from the incorrectly predicted class (red); accuracy of tissue / cancer type prediction (green); accuracy of medical center prediction (blue), sorted by order of increasing center-robustness for selected FMs. All models show a substantial and significant influence of same-center confounders. See Appendix 9.3 for a complete overview.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1b.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1b.14.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.14.15.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1b.14.15.1.1.1" style="font-size:50%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1b.14.15.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1b.14.15.1.2.1" style="font-size:50%;">Cancer Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T1b.14.15.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1b.14.15.1.3.1" style="font-size:50%;">Medical Center</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1b.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.2.2.3"><span class="ltx_text" id="S5.T1b.2.2.3.1" style="font-size:50%;">hibou-b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1b.1.1.1.g1" src="extracted/6170945/fig/hibou-b/embeddings-hibou-b-patch-level-tsne-2D-colored-by-project_code.png" width="204"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.2.2.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1b.2.2.2.g1" src="extracted/6170945/fig/hibou-b/embeddings-hibou-b-patch-level-tsne-2D-colored-by-shortname.png" width="204"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1b.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.4.4.3"><span class="ltx_text" id="S5.T1b.4.4.3.1" style="font-size:50%;">phikon</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.3.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.3.3.1.g1" src="extracted/6170945/fig/phikon/embeddings-phikon-patch-level-tsne-2D-colored-by-project_code.png" width="192"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.4.4.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.4.4.2.g1" src="extracted/6170945/fig/phikon/embeddings-phikon-patch-level-tsne-2D-colored-by-shortname.png" width="192"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1b.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.6.6.3"><span class="ltx_text" id="S5.T1b.6.6.3.1" style="font-size:50%;">phikon-v2</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.5.5.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.5.5.1.g1" src="extracted/6170945/fig/phikon-v2/embeddings-phikon-v2-patch-level-tsne-2D-colored-by-project_code.png" width="192"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.6.6.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.6.6.2.g1" src="extracted/6170945/fig/phikon-v2/embeddings-phikon-v2-patch-level-tsne-2D-colored-by-shortname.png" width="192"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1b.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.8.8.3"><span class="ltx_text" id="S5.T1b.8.8.3.1" style="font-size:50%;">EXAONEPath</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.7.7.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.7.7.1.g1" src="extracted/6170945/fig/EXAONEPath/embeddings-EXAONEPath-patch-level-tsne-2D-CLS-colored-by-project_code.png" width="192"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.8.8.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.8.8.2.g1" src="extracted/6170945/fig/EXAONEPath/embeddings-EXAONEPath-patch-level-tsne-2D-CLS-colored-by-shortname.png" width="192"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1b.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.10.10.3"><span class="ltx_text" id="S5.T1b.10.10.3.1" style="font-size:50%;">UNI</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.9.9.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.9.9.1.g1" src="extracted/6170945/fig/UNI/embeddings-UNI-patch-level-tsne-2D-colored-by-project_code.png" width="192"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.10.10.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.10.10.2.g1" src="extracted/6170945/fig/UNI/embeddings-UNI-patch-level-tsne-2D-colored-by-shortname.png" width="192"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1b.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.12.12.3"><span class="ltx_text" id="S5.T1b.12.12.3.1" style="font-size:50%;">UNI2-h</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.11.11.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.11.11.1.g1" src="extracted/6170945/fig/UNI2-h/embeddings-UNI2-h-patch-level-tsne-2D-CLS-colored-by-project_code.png" width="192"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1b.12.12.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.12.12.2.g1" src="extracted/6170945/fig/UNI2-h/embeddings-UNI2-h-patch-level-tsne-2D-CLS-colored-by-shortname.png" width="192"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1b.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S5.T1b.14.14.3"><span class="ltx_text" id="S5.T1b.14.14.3.1" style="font-size:50%;">SRA_MoCo_v3</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T1b.13.13.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="144" id="S5.T1b.13.13.1.g1" src="extracted/6170945/fig/SRA_MoCo_v3/embeddings-SRA_MoCo_v3-patch-level-tsne-2D-colored-by-project_code.png" width="192"/></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T1b.14.14.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1b.14.14.2.g1" src="extracted/6170945/fig/SRA_MoCo_v3/embeddings-SRA_MoCo_v3-patch-level-tsne-2D-colored-by-shortname.png" width="204"/></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This figure visualizes the 2D representation of high-dimensional embedding vectors generated by t-SNE for different pathology foundation models.  Each point in the 2D plots represents a tissue patch. The left column displays the patches colored by cancer type, while the right column shows the same patches colored by their originating medical center.  Comparing these visualizations allows for an assessment of how strongly the models' embedding spaces are organized by biological features (cancer type) versus confounding factors (medical center).
> <details>
> <summary>read the caption</summary>
> Figure 5: Colorings of the t-SNE embeddings of all patches by cancer type (left) and medical center (right)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1c.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1c.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1c.2.2.3"><span class="ltx_text" id="S5.T1c.2.2.3.1" style="font-size:50%;">Virchow-1280D</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.1.1.1.g1" src="extracted/6170945/fig/Virchow-1280D/embeddings-Virchow-1280D-patch-level-tsne-2D-CLS-colored-by-project_code.png" width="204"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.2.2.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.2.2.2.g1" src="extracted/6170945/fig/Virchow-1280D/embeddings-Virchow-1280D-patch-level-tsne-2D-CLS-colored-by-shortname.png" width="204"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1c.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1c.4.4.3"><span class="ltx_text" id="S5.T1c.4.4.3.1" style="font-size:50%;">Virchow-2560D</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.3.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.3.3.1.g1" src="extracted/6170945/fig/Virchow-2560D/embeddings-Virchow-2560D-patch-level-tsne-2D-CLS-avg-patch-colored-by-project_code.png" width="204"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.4.4.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.4.4.2.g1" src="extracted/6170945/fig/Virchow-2560D/embeddings-Virchow-2560D-patch-level-tsne-2D-CLS-avg-patch-colored-by-shortname.png" width="204"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1c.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1c.6.6.3"><span class="ltx_text" id="S5.T1c.6.6.3.1" style="font-size:50%;">Virchow2-1280D</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.5.5.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.5.5.1.g1" src="extracted/6170945/fig/Virchow2-1280D/embeddings-Virchow2-1280D-patch-level-tsne-2D-CLS-colored-by-project_code.png" width="204"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.6.6.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.6.6.2.g1" src="extracted/6170945/fig/Virchow2-1280D/embeddings-Virchow2-1280D-patch-level-tsne-2D-CLS-colored-by-shortname.png" width="204"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1c.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1c.8.8.3"><span class="ltx_text" id="S5.T1c.8.8.3.1" style="font-size:50%;">Virchow2-2560D</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.7.7.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.7.7.1.g1" src="extracted/6170945/fig/Virchow2-2560D/embeddings-Virchow2-2560D-patch-level-tsne-2D-CLS-avg-patch-colored-by-project_code.png" width="204"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.8.8.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.8.8.2.g1" src="extracted/6170945/fig/Virchow2-2560D/embeddings-Virchow2-2560D-patch-level-tsne-2D-CLS-avg-patch-colored-by-shortname.png" width="204"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1c.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T1c.10.10.3"><span class="ltx_text" id="S5.T1c.10.10.3.1" style="font-size:50%;">H-optimus-0</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.9.9.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.9.9.1.g1" src="extracted/6170945/fig/H-optimus-0/embeddings-H-optimus-0-patch-level-tsne-2D-colored-by-project_code.png" width="204"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1c.10.10.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.10.10.2.g1" src="extracted/6170945/fig/H-optimus-0/embeddings-H-optimus-0-patch-level-tsne-2D-colored-by-shortname.png" width="204"/></td>
</tr>
<tr class="ltx_tr" id="S5.T1c.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S5.T1c.12.12.3"><span class="ltx_text" id="S5.T1c.12.12.3.1" style="font-size:50%;">prov-gigapath</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T1c.11.11.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.11.11.1.g1" src="extracted/6170945/fig/prov-gigapath/embeddings-prov-gigapath-patch-level-tsne-2D-colored-by-project_code.png" width="204"/></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T1c.12.12.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="153" id="S5.T1c.12.12.2.g1" src="extracted/6170945/fig/prov-gigapath/embeddings-prov-gigapath-patch-level-tsne-2D-colored-by-shortname.png" width="204"/></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This figure visualizes the embedding space of pathology foundation models using t-distributed Stochastic Neighbor Embedding (t-SNE).  The left column shows the t-SNE projection of the embeddings colored by cancer type. The right column shows the same t-SNE projection, but this time colored by the medical center where the tissue sample originated. This visualization helps to understand how well the models separate samples based on biological features (cancer type) versus confounding factors (medical center). The degree of separation within each column indicates the model's robustness to medical center variations. Clear separation by cancer type shows the model's focus on biological features, whereas clear separation by medical center indicates a stronger influence of technical factors on the embeddings.
> <details>
> <summary>read the caption</summary>
> Figure 6: Colorings of the t-SNE embeddings of all patches by cancer type (left) and medical center (right)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1.1" style="font-size:50%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.2.1" style="font-size:50%;">Mean Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.3.1" style="font-size:50%;">Std Dev</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.4.1" style="font-size:50%;">Mean Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.5.1" style="font-size:50%;">Std Dev</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.1.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.2.2.2.1" style="font-size:50%;">Cancer Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.2.2.3.1" style="font-size:50%;">Cancer Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.2.2.4.1" style="font-size:50%;">Medical Center</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.2.2.5.1" style="font-size:50%;">Med. Center</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S5.T2.1.3.1.1"><span class="ltx_text" id="S5.T2.1.3.1.1.1" style="font-size:50%;">SRA_MoCo_v3</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.3.1.2"><span class="ltx_text" id="S5.T2.1.3.1.2.1" style="font-size:50%;">0.486</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.3.1.3"><span class="ltx_text" id="S5.T2.1.3.1.3.1" style="font-size:50%;">0.036</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.3.1.4"><span class="ltx_text" id="S5.T2.1.3.1.4.1" style="font-size:50%;">0.692</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.3.1.5"><span class="ltx_text" id="S5.T2.1.3.1.5.1" style="font-size:50%;">0.027</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.4.2.1"><span class="ltx_text" id="S5.T2.1.4.2.1.1" style="font-size:50%;">phikon</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.2.2"><span class="ltx_text" id="S5.T2.1.4.2.2.1" style="font-size:50%;">0.829</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.2.3"><span class="ltx_text" id="S5.T2.1.4.2.3.1" style="font-size:50%;">0.037</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.2.4"><span class="ltx_text" id="S5.T2.1.4.2.4.1" style="font-size:50%;">0.987</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.2.5"><span class="ltx_text" id="S5.T2.1.4.2.5.1" style="font-size:50%;">0.012</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.5.3.1"><span class="ltx_text" id="S5.T2.1.5.3.1.1" style="font-size:50%;">phikon-v2</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.3.2"><span class="ltx_text" id="S5.T2.1.5.3.2.1" style="font-size:50%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.3.3"><span class="ltx_text" id="S5.T2.1.5.3.3.1" style="font-size:50%;">0.038</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.3.4"><span class="ltx_text" id="S5.T2.1.5.3.4.1" style="font-size:50%;">0.993</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.3.5"><span class="ltx_text" id="S5.T2.1.5.3.5.1" style="font-size:50%;">0.007</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.6.4.1"><span class="ltx_text" id="S5.T2.1.6.4.1.1" style="font-size:50%;">UNI</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.4.2"><span class="ltx_text" id="S5.T2.1.6.4.2.1" style="font-size:50%;">0.713</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.4.3"><span class="ltx_text" id="S5.T2.1.6.4.3.1" style="font-size:50%;">0.034</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.4.4"><span class="ltx_text" id="S5.T2.1.6.4.4.1" style="font-size:50%;">0.956</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.4.5"><span class="ltx_text" id="S5.T2.1.6.4.5.1" style="font-size:50%;">0.013</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.7.5.1"><span class="ltx_text" id="S5.T2.1.7.5.1.1" style="font-size:50%;">UNI2-h</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.5.2"><span class="ltx_text" id="S5.T2.1.7.5.2.1" style="font-size:50%;">0.754</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.5.3"><span class="ltx_text" id="S5.T2.1.7.5.3.1" style="font-size:50%;">0.027</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.5.4"><span class="ltx_text" id="S5.T2.1.7.5.4.1" style="font-size:50%;">0.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.5.5"><span class="ltx_text" id="S5.T2.1.7.5.5.1" style="font-size:50%;">0.014</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.8.6.1"><span class="ltx_text" id="S5.T2.1.8.6.1.1" style="font-size:50%;">hibou-b</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.6.2"><span class="ltx_text" id="S5.T2.1.8.6.2.1" style="font-size:50%;">0.689</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.6.3"><span class="ltx_text" id="S5.T2.1.8.6.3.1" style="font-size:50%;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.6.4"><span class="ltx_text" id="S5.T2.1.8.6.4.1" style="font-size:50%;">0.933</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.8.6.5"><span class="ltx_text" id="S5.T2.1.8.6.5.1" style="font-size:50%;">0.017</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.9.7.1"><span class="ltx_text" id="S5.T2.1.9.7.1.1" style="font-size:50%;">Virchow-1280D</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.9.7.2"><span class="ltx_text" id="S5.T2.1.9.7.2.1" style="font-size:50%;">0.727</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.9.7.3"><span class="ltx_text" id="S5.T2.1.9.7.3.1" style="font-size:50%;">0.038</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.9.7.4"><span class="ltx_text" id="S5.T2.1.9.7.4.1" style="font-size:50%;">0.932</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.9.7.5"><span class="ltx_text" id="S5.T2.1.9.7.5.1" style="font-size:50%;">0.022</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.10.8.1"><span class="ltx_text" id="S5.T2.1.10.8.1.1" style="font-size:50%;">Virchow2-1280D</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.8.2"><span class="ltx_text" id="S5.T2.1.10.8.2.1" style="font-size:50%;">0.786</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.8.3"><span class="ltx_text" id="S5.T2.1.10.8.3.1" style="font-size:50%;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.8.4"><span class="ltx_text" id="S5.T2.1.10.8.4.1" style="font-size:50%;">0.957</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.10.8.5"><span class="ltx_text" id="S5.T2.1.10.8.5.1" style="font-size:50%;">0.016</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.11.9.1"><span class="ltx_text" id="S5.T2.1.11.9.1.1" style="font-size:50%;">H-optimus-0</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.11.9.2"><span class="ltx_text" id="S5.T2.1.11.9.2.1" style="font-size:50%;">0.767</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.11.9.3"><span class="ltx_text" id="S5.T2.1.11.9.3.1" style="font-size:50%;">0.038</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.11.9.4"><span class="ltx_text" id="S5.T2.1.11.9.4.1" style="font-size:50%;">0.948</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.11.9.5"><span class="ltx_text" id="S5.T2.1.11.9.5.1" style="font-size:50%;">0.019</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S5.T2.1.12.10.1"><span class="ltx_text" id="S5.T2.1.12.10.1.1" style="font-size:50%;">prov-gigapath</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.12.10.2"><span class="ltx_text" id="S5.T2.1.12.10.2.1" style="font-size:50%;">0.711</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.12.10.3"><span class="ltx_text" id="S5.T2.1.12.10.3.1" style="font-size:50%;">0.031</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.12.10.4"><span class="ltx_text" id="S5.T2.1.12.10.4.1" style="font-size:50%;">0.934</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.12.10.5"><span class="ltx_text" id="S5.T2.1.12.10.5.1" style="font-size:50%;">0.019</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S5.T2.1.13.11.1"><span class="ltx_text" id="S5.T2.1.13.11.1.1" style="font-size:50%;">EXAONEPath</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2.1.13.11.2"><span class="ltx_text" id="S5.T2.1.13.11.2.1" style="font-size:50%;">0.808</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2.1.13.11.3"><span class="ltx_text" id="S5.T2.1.13.11.3.1" style="font-size:50%;">0.037</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2.1.13.11.4"><span class="ltx_text" id="S5.T2.1.13.11.4.1" style="font-size:50%;">0.987</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2.1.13.11.5"><span class="ltx_text" id="S5.T2.1.13.11.5.1" style="font-size:50%;">0.011</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different pathology foundation models in predicting cancer type and medical center using logistic regression.  The 'Mean Accuracy' and 'Std Dev' columns show the average accuracy and standard deviation, respectively, for each model's predictions of both cancer type and the medical center from which the tissue sample originated.  This helps quantify how well each model can distinguish between biological features (cancer type) and confounding factors (medical center).
> <details>
> <summary>read the caption</summary>
> Table 2: Mean and standard deviation for the accuracy of cancer type prediction and medical center prediction using the full embedding vectors as input and logistic regression as the learning method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2a.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2a.2.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S5.T2a.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="225" id="S5.T2a.1.1.1.g1" src="extracted/6170945/fig/accuracy-ctype-center-full-embeddings-knn-nr_models-11-cv-5-rep-5-v1.png" width="299"/></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2a.2.2.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="225" id="S5.T2a.2.2.2.g1" src="extracted/6170945/fig/accuracy-ctype-center-full-embeddings-logistic-regression-nr_models-11-cv-5-rep-5-v1.png" width="299"/></td>
</tr>
<tr class="ltx_tr" id="S5.T2a.4.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r" id="S5.T2a.3.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="225" id="S5.T2a.3.3.1.g1" src="extracted/6170945/fig/accuracy-ctype-center-tsne-2D-knn-nr_models-13-cv-5-rep-5-v1.png" width="299"/></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T2a.4.4.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="225" id="S5.T2a.4.4.2.g1" src="extracted/6170945/fig/accuracy-ctype-center-tsne-2D-logistic-regression-nr_models-13-cv-5-rep-5-v1.png" width="299"/></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This figure displays the relationship between the accuracy of cancer type prediction and the accuracy of medical center prediction.  The top row shows results using the full embedding vectors, while the bottom row uses 2D t-SNE reduced embedding vectors.  Both rows present results for two classification methods: k-Nearest Neighbors (knn) and logistic regression. This visualization helps to understand the trade-off between accuracy and robustness to medical center variations in pathology foundation models.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Top row: Accuracy of cancer type prediction vs. center prediction when using the full embedding vectors as input using knn (left) and logistic regression (right). Bottom row: Accuracy of cancer type prediction vs. center prediction when using the 2D t-SNE embedding vectors as input using knn (left) and logistic regression (right).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S9.T2.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S9.T2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S9.T2.1.1.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.1.1.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.1.1.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-phikon-v2-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S9.T2.2.2.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.2.2.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.2.2.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-EXAONEPath-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T2.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2.3.3.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.3.3.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.3.3.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-phikon-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2.4.4.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.4.4.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.4.4.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-UNI-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2.6.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2.5.5.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.5.5.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.5.5.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-prov-gigapath-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2.6.6.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.6.6.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.6.6.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-H-optimus-0-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2.8.8">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2.7.7.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.7.7.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.7.7.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-hibou-b-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2.8.8.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.8.8.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.8.8.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-SRA_MoCo_v3-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2.10.10">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2.9.9.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.9.9.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.9.9.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-Virchow-1280D-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2.10.10.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.10.10.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.10.10.2.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-Virchow2-1280D-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2.11.11">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S9.T2.11.11.1">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S9.T2.11.11.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2.11.11.1.1.g1" src="extracted/6170945/fig/confounding-neighbors-fraction-same-center/confounding-neighbors-fraction-same-center-UNI2-h-nr_reps-5-nr_points-9.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T2.11.11.2"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This figure visualizes the impact of medical center variations on pathology foundation models.  It displays three key metrics for ten different models: 1) The accuracy of predicting the tissue type or cancer type, represented in green; 2) The accuracy of predicting the medical center of origin, shown in blue; and 3) The fraction of classification errors that are attributable to samples from the same medical center as the incorrectly classified sample (same-center confounders), depicted in red. The plot reveals a strong correlation between the model's sensitivity to medical center variations and its error rate.  Most models exhibit a significant and substantial influence of same-center confounders.
> <details>
> <summary>read the caption</summary>
> Figure 11: Fraction of same-center confounders: (i) accuracy of tissue of origin / cancer type prediction (green), (ii) the accuracy of medical center prediction (blue), and (iii) fraction of same-center confounders. All models show a substantial and significant influence of same-center confounders.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S9.T2a.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S9.T2a.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S9.T2a.1.1.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.1.1.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.1.1.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-phikon-v2.png" width="598"/>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S9.T2a.2.2.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.2.2.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.2.2.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-EXAONEPath.png" width="598"/>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T2a.4.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2a.3.3.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.3.3.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.3.3.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-phikon.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2a.4.4.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.4.4.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.4.4.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-prov-gigapath.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2a.6.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2a.5.5.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.5.5.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.5.5.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-SRA_MoCo_v3.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2a.6.6.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.6.6.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_centering ltx_img_landscape" height="449" id="S9.T2a.6.6.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-UNI.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2a.8.8">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2a.7.7.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.7.7.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.7.7.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-hibou-b.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2a.8.8.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.8.8.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.8.8.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-H-optimus-0.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2a.10.10">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S9.T2a.9.9.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.9.9.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.9.9.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-Virchow-1280D.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T2a.10.10.2" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.10.10.2.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.10.10.2.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-UNI2-h.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S9.T2a.11.11">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S9.T2a.11.11.1" style="padding-bottom:-8.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_top" id="S9.T2a.11.11.1.1" style="width:156.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="S9.T2a.11.11.1.1.g1" src="extracted/6170945/fig/freq-same-class/freq-same-class-Virchow2-1280D.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T2a.11.11.2" style="padding-bottom:-8.0pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This figure shows, for each of the ten pathology foundation models evaluated, the fraction of samples where the k-th nearest neighbor in the model's embedding space shares the same cancer type and the fraction of samples where the k-th nearest neighbor shares the same medical center.  The x-axis represents the number of nearest neighbors (k), and the y-axis shows the fraction of samples. The lines are colored blue for cancer type and orange for medical center.  The models are ordered by increasing robustness, meaning the degree to which biological information (cancer type) dominates confounding information (medical center). A robustness index greater than 1 indicates that biological features are more influential than confounding features.
> <details>
> <summary>read the caption</summary>
> Figure 12: Fraction of samples for which the k-th neighbor has the same cancer type (blue) or medical center (orange), in order of increasing robustness
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.18055/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18055/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}