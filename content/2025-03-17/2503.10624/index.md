---
title: "ETCH: Generalizing Body Fitting to Clothed Humans via Equivariant Tightness"
summary: "ETCH: Equivariantly fitting bodies to clothed humans through tightness for better pose and shape accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Westlake University",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10624 {{< /keyword >}}
{{< keyword icon="writer" >}} Boqian Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10624" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10624" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10624/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Fitting a body to a 3D clothed human is a challenging task** due to clothing variations and complex poses. Traditional methods struggle with pose initialization, while learning-based approaches lack generalization. Prior works use either registration or fitting approaches. Registration focuses on matching the outer surface, whereas fitting emphasizes aligning with the underlying body. However, existing methods don't generalize well to varying poses, shapes, and clothing styles. Some approaches try to address this by separating the garment layers from the underlying body, but still, struggle with the out-of-distribution post or shapes. 



This paper introduces **ETCH**, a novel pipeline that estimates cloth-to-body surface mapping through locally approximate SE(3) equivariance. It encodes tightness as displacement vectors from the cloth surface to the underlying body. Following this mapping, pose-invariant body features regress sparse body markers, simplifying clothed human fitting into an inner-body marker fitting task. Extensive experiments on CAPE and 4D-Dress show that ETCH significantly outperforms state-of-the-art methods in body fitting accuracy, both tightness-agnostic and tightness-aware.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ETCH introduces a novel equivariant tightness fitting approach for 3D clothed humans, modeling cloth-to-body mapping with SE(3) equivariance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ETCH outperforms state-of-the-art methods in body fitting accuracy, especially on loose clothing and in out-of-distribution scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The equivariant tightness design in ETCH reduces directional errors and demonstrates strong generalization across challenging poses, shapes, and clothing styles. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**ETCH** provides a more accurate and generalizable way to fit 3D body models to clothed humans, improving pose and shape estimation. This improves applications like virtual try-on, motion capture, and biomechanics analysis, opening new research directions in human body understanding and animation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10624/x4.png)

> 🔼 Figure 1 showcases the effectiveness of the ETCH method in fitting 3D body meshes to clothed humans across various poses and clothing styles.  The images display multiple examples where the algorithm accurately estimates the underlying body shape despite the presence of clothing.  The ground truth body is represented in blue, the ETCH-fitted body in green, and ground truth markers are shown in black. The key innovation of ETCH, as highlighted in the caption, is the use of SE(3)-equivariant tightness vectors to model the cloth-to-body relationship, allowing for robust and accurate fitting even in challenging scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 1: Body Fitting on Clothed Humans. Given 3D clothed humans in any pose and clothing, ETCH accurately fits the body underneath. Our key novelty is modeling cloth-to-body SE(3)-equivariant \gradientRGBtightness vectors254,217,118192,50,26 for clothed humans, abbreviated as ETCH, which resembles “etching” from the outer clothing down to the inner body. The ground-truth body is shown in blue, our fitted body in green, and ground-truth markers as  .
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S1.F2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.F2.2.1.1">
<td class="ltx_td ltx_align_justify" id="S1.F2.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S1.F2.2.1.1.1.1">
<span class="ltx_p" id="S1.F2.2.1.1.1.1.1"><span class="ltx_text" id="S1.F2.2.1.1.1.1.1.1" style="font-size:70%;">Scan</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S1.F2.2.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.F2.2.1.1.2.1">
<span class="ltx_p" id="S1.F2.2.1.1.2.1.1"><span class="ltx_text" id="S1.F2.2.1.1.2.1.1.1" style="font-size:70%;">GT body</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S1.F2.2.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S1.F2.2.1.1.3.1">
<span class="ltx_p" id="S1.F2.2.1.1.3.1.1"><span class="ltx_text" id="S1.F2.2.1.1.3.1.1.1" style="font-size:70%;">NICP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.F2.2.1.1.3.1.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S1.F2.2.1.1.3.1.1.3.2" style="font-size:70%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S1.F2.2.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S1.F2.2.1.1.4.1">
<span class="ltx_p" id="S1.F2.2.1.1.4.1.1"><span class="ltx_text" id="S1.F2.2.1.1.4.1.1.1" style="font-size:70%;">Ours</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S1.F2.2.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S1.F2.2.1.1.5.1">
<span class="ltx_p" id="S1.F2.2.1.1.5.1.1"><span class="ltx_text" id="S1.F2.2.1.1.5.1.1.1" style="font-size:70%;color:#FF0000;">body</span><span class="ltx_text" id="S1.F2.2.1.1.5.1.1.2" style="font-size:70%;">-</span><span class="ltx_text" id="S1.F2.2.1.1.5.1.1.3" style="font-size:70%;color:#0000FF;">cloth</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of ETCH against state-of-the-art (SOTA) methods for 3D human body fitting from clothed scans.  It shows the performance of ETCH and other methods (both tightness-agnostic and tightness-aware) on two datasets: CAPE and 4D-Dress.  Evaluation metrics include vertex-to-vertex distance (V2V), mean per-joint position error (MPJPE), and Chamfer distance (CD). The table highlights ETCH's superior performance, particularly its significant improvement over ArtEq in 4D-Dress MPJPE (approximately 32.6%).  A note is included that NICP's results in this table are without post-refinement, which is detailed in a later table. 
> <details>
> <summary>read the caption</summary>
> Table 1:  Quantitative Comparison with SOTAs. ETCH clearly outperforms SOTAs, whether tightness-agnostic or -aware, in both CAPE and 4D-Dress across all metrics. In 4D-Dress-MPJPE, it surpasses the ArtEq by nearly 32.6%percent32.632.6\%32.6 %. Notably, for a fair comparison, no post-refinement is introduced to NICP [41] here, see NICP w/ post-refinement at Tab. 4.
> </details>





### In-depth insights


#### Equivariant ETCH
Based on the provided text, the core idea revolves around **Equivariant Tightness Fitting for Clothed Humans (ETCH)**. The method uses the concept of SE(3) equivariance to model the relationship between a clothed human's surface and their underlying body shape. Unlike previous methods that may struggle with generalization due to varied poses or garment types, ETCH aims to improve robustness by encoding tightness as **displacement vectors that are locally SE(3) equivariant**. This means that the learned relationship between the cloth and body remains consistent even as the body articulates or the clothing deforms. This approach combines strengths of both "equivariance" and "tightness", the intention is to achieve robust body fitting. By explicitly modeling cloth-to-body interaction in an equivariant manner, the model should demonstrate stronger generalization across different poses, body shapes, and clothing styles, representing a significant advancement in the field.

#### Tightness Vectors
The concept of **Tightness Vectors** represents a novel approach to modeling the relationship between a clothed human's outer surface and the underlying body. Instead of relying on scalar values or binary tightness indicators, **ETCH** introduces **displacement vectors** that connect corresponding points on the cloth and body surfaces. This approach enables a more nuanced representation of clothing fit, capturing both the direction and magnitude of displacement. By learning these vectors, the model can effectively "etch" through the clothing to reveal the body shape underneath, regardless of garment type or pose. This is achieved through a framework leveraging SE(3) equivariance and invariant pointwise features allowing robustness in challenging situations.

#### Sparse Markers > Dense
The comparison between sparse markers and dense correspondence reveals the strength of a **sparse marker design**. Mapping dense points to sparse markers and aggregating them with confidence creates a **voting strategy** that enhances robustness against low-confidence outliers. This is more effective than dense prediction, which can struggle with outliers and local minima. The paper's method achieves significant improvements; This validates the use of **sparse markers** over dense correspondences. Incorrect dense correspondences can misguide optimization, leading to skewed body part rotations (e.g., hands, forearms, head), while the sparse marker strategy remains robust through its weighted voting mechanism.

#### OOD Generalization
**Out-of-Distribution (OOD) generalization** is a crucial aspect of machine learning, particularly in the context of body fitting to clothed humans. It refers to the ability of a model to perform well on data that is different from the data it was trained on. This is especially important because real-world data often exhibits variations in pose, shape, clothing style, and dynamics that are not fully captured in training datasets. A model with strong OOD generalization can handle these variations and produce accurate body fits even for unseen poses, shapes, and clothing. The paper explores this by training the model on minimal data and evaluating its performance on the full validation set. Visualizations highlight how the proposed method maintains accurate inner body shape predictions and directional accuracy of the tightness vectors even with limited training data, demonstrating superior OOD generalization compared to methods lacking equivariant features. The use of **equivariant features** is key to OOD, as these features are designed to be invariant to certain transformations, such as rotations and translations, which helps the model generalize to new poses and viewpoints.

#### Limited Input Data
The challenge of **limited input data** is a critical concern in machine learning, particularly when dealing with complex tasks like 3D human body fitting. The success of deep learning models heavily relies on the availability of large, diverse, and accurately labeled datasets. Insufficient data can lead to **overfitting**, where the model learns the training data too well and fails to generalize to new, unseen examples. This is especially problematic when dealing with variations in body shapes, poses, clothing styles, and dynamics. **Data augmentation techniques** can help to mitigate this issue by artificially expanding the dataset, but these methods may not fully capture the true complexity of the data distribution. Transfer learning, where knowledge gained from a related task is applied to the target task, can also be beneficial. Furthermore, developing models that are more **data-efficient** and can learn from smaller datasets is an active area of research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10624/x5.png)

> 🔼 Figure 2 illustrates the core difference between surface registration and body fitting in the context of 3D clothed humans.  Surface registration techniques, exemplified by NICP [41], primarily focus on aligning the outer surface of the clothing with a template mesh.  This approach is sensitive to clothing variations as the outer clothing shape influences the final registration.  In contrast, body fitting methods prioritize aligning the underlying body shape with the template, resulting in a more robust solution that is less affected by diverse clothing styles and poses. The figure visually demonstrates the results of both approaches, highlighting the improved accuracy and robustness of body fitting.
> <details>
> <summary>read the caption</summary>
> Figure 2: Registration vs. Fitting. Though both registration and fitting involve placing body inside clothing, “registration”, like NICP [41], focuses on matching the outer surface, whereas “fitting” emphasizes aligning with the underlying body, making it more robust to clothing variations.
> </details>



![](https://arxiv.org/html/2503.10624/x7.png)

> 🔼 Figure 3 illustrates the key components used for preparing the data to train the ETCH model.  It shows how the model learns to map the outer surface of clothing to the underlying body.  The figure highlights three key elements: 1) Tightness Vectors (V): These vectors connect points on the outer clothing surface to corresponding points on the underlying body surface, representing the displacement caused by the clothing.  The magnitude of these vectors encodes how tightly the garment fits the body.  2) Marker-based Labels (L):  These labels assign each point on the inner body surface to one of a set of predefined sparse markers on the body. These markers act as reference points for the body's shape. 3) Confidence (C): This value represents the uncertainty or confidence associated with the tightness vector for each point. A confidence bar visually represents the geodesic distance (shortest path along the surface) from the point on the inner body to the nearest sparse marker, indicating the level of certainty in the mapping.
> <details>
> <summary>read the caption</summary>
> Figure 3: Terminology of Tightness-Vector and Marker-Confidence. We illustrate the key components used for data preparation: 1) Tightness Vectors 𝐕𝐕\mathbf{V}bold_V, which connect the outer surface points with underneath body, and transmitting 2) Marker-based Labels 𝐋𝐋\mathbf{L}bold_L and Confidence 𝐂𝐂\mathbf{C}bold_C. We also provide a 2D illustration that unifies these terms together. Sparse markers as  , and \gradientRGBconfidence bar242,171,8105,41,100 indicates the geodesic distance to the closest marker.
> </details>



![](https://arxiv.org/html/2503.10624/x8.png)

> 🔼 This figure illustrates the difference between articulated SO(3) equivariance, used in methods like ArtEq, and the local SO(3) equivariance used in ETCH.  In articulated SO(3) equivariance, a rigid transformation (denoted by \(\mathcal{T}\)) is applied to a body part, resulting in a consistent transformation of its features.  In contrast, ETCH's local SO(3) equivariance focuses on the tightness vector, which reflects the relationship between cloth and body.  The tightness vector's direction changes when the pose changes, but its overall behavior is similar due to its approximate equivariance, rather than a precise rigid transformation.  The rainbow circle represents the feature vector \(\mathcal{F}(\mathbf{X})\) showing the multi-dimensional features extracted from the point cloud.
> <details>
> <summary>read the caption</summary>
> Figure 4: SO(3) Equivariant Pose vs. Tightness. Rainbow circle is the feature ℱ⁢(𝐗)ℱ𝐗\mathcal{F}(\mathbf{X})caligraphic_F ( bold_X ), for articulated SO(3)-equiv, 𝒯𝒯\mathcal{T}caligraphic_T denotes approximate rigid transformation of body part, while for our case, where the clothing roughly deforms with human poses, it refers to the tightness vector rotation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S3.F3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.3.4.1">
<td class="ltx_td ltx_align_justify" id="S3.F3.3.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.3.4.1.1.1">
<span class="ltx_p" id="S3.F3.3.4.1.1.1.1"><span class="ltx_text" id="S3.F3.3.4.1.1.1.1.1" style="font-size:70%;">Tightness Vector</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.F3.3.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.3.4.1.2.1">
<span class="ltx_p" id="S3.F3.3.4.1.2.1.1"><span class="ltx_text" id="S3.F3.3.4.1.2.1.1.1" style="font-size:70%;">Marker-based Labels</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.F3.3.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.3.4.1.3.1">
<span class="ltx_p" id="S3.F3.3.4.1.3.1.1"><span class="ltx_text" id="S3.F3.3.4.1.3.1.1.1" style="font-size:70%;">Geodesic-based Confidence</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.F3.3.4.1.4">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.3.4.1.4.1">
<span class="ltx_p" id="S3.F3.3.4.1.4.1.1" style="width:142.3pt;"><span class="ltx_text" id="S3.F3.3.4.1.4.1.1.1" style="font-size:70%;">Unified 2D Illustration</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.F3.3.3">
<td class="ltx_td ltx_align_justify" id="S3.F3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.1.1.1.1">
<span class="ltx_p" id="S3.F3.1.1.1.1.1"><math alttext="\mathbf{V}" class="ltx_Math" display="inline" id="S3.F3.1.1.1.1.1.m1.1"><semantics id="S3.F3.1.1.1.1.1.m1.1a"><mi id="S3.F3.1.1.1.1.1.m1.1.1" mathsize="70%" xref="S3.F3.1.1.1.1.1.m1.1.1.cmml">𝐕</mi><annotation-xml encoding="MathML-Content" id="S3.F3.1.1.1.1.1.m1.1b"><ci id="S3.F3.1.1.1.1.1.m1.1.1.cmml" xref="S3.F3.1.1.1.1.1.m1.1.1">𝐕</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.F3.1.1.1.1.1.m1.1c">\mathbf{V}</annotation><annotation encoding="application/x-llamapun" id="S3.F3.1.1.1.1.1.m1.1d">bold_V</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.F3.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.2.2.2.1">
<span class="ltx_p" id="S3.F3.2.2.2.1.1"><math alttext="\mathbf{L}" class="ltx_Math" display="inline" id="S3.F3.2.2.2.1.1.m1.1"><semantics id="S3.F3.2.2.2.1.1.m1.1a"><mi id="S3.F3.2.2.2.1.1.m1.1.1" mathsize="70%" xref="S3.F3.2.2.2.1.1.m1.1.1.cmml">𝐋</mi><annotation-xml encoding="MathML-Content" id="S3.F3.2.2.2.1.1.m1.1b"><ci id="S3.F3.2.2.2.1.1.m1.1.1.cmml" xref="S3.F3.2.2.2.1.1.m1.1.1">𝐋</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.F3.2.2.2.1.1.m1.1c">\mathbf{L}</annotation><annotation encoding="application/x-llamapun" id="S3.F3.2.2.2.1.1.m1.1d">bold_L</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.F3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.3.3.3.1">
<span class="ltx_p" id="S3.F3.3.3.3.1.1"><math alttext="\mathbf{C}" class="ltx_Math" display="inline" id="S3.F3.3.3.3.1.1.m1.1"><semantics id="S3.F3.3.3.3.1.1.m1.1a"><mi id="S3.F3.3.3.3.1.1.m1.1.1" mathsize="70%" xref="S3.F3.3.3.3.1.1.m1.1.1.cmml">𝐂</mi><annotation-xml encoding="MathML-Content" id="S3.F3.3.3.3.1.1.m1.1b"><ci id="S3.F3.3.3.3.1.1.m1.1.1.cmml" xref="S3.F3.3.3.3.1.1.m1.1.1">𝐂</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.F3.3.3.3.1.1.m1.1c">\mathbf{C}</annotation><annotation encoding="application/x-llamapun" id="S3.F3.3.3.3.1.1.m1.1d">bold_C</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.F3.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S3.F3.3.3.4.1">
<span class="ltx_p" id="S3.F3.3.3.4.1.1" style="width:142.3pt;"></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the Equivariant Tightness Fitting for Clothed Humans (ETCH) method. It compares the performance of the full ETCH model against several variants.  These variants systematically remove or replace components of ETCH to isolate the effect of specific design choices. The components analyzed include: the use of equivariant features versus simple XYZ coordinates, the use of invariance features, the choice between sparse and dense marker correspondence, and the inclusion of the direction term in the tightness vector. The results are presented in terms of metrics such as vertex-to-vertex distance (V2V), mean per joint position error (MPJPE), and bidirectional Chamfer distance (CD), for both the CAPE and 4D-Dress datasets.  The table allows readers to quantitatively assess the contribution of each component to ETCH's overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2:  Ablation Study of ETCH. Please check Sec. 4.6 for more in-depth analysis, and Tabs. 3 and 7 to explore OOD generalization of equivariance features. For simplicity, “Inv” denotes Invariance Features, “Equiv” denotes Equivariance Features, “XYZ” denotes XYZ-Positions. The full-featured ETCH is referred to as “Ours”, while variants are labeled “Ours-X”. Ours-A and Ours-B replace equivariance features with xyz-positions and/or invariance features. Ours-C and Ours-D use dense correspondence, with Ours-D removing the direction term to assess its necessity.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.7.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.7.1.1.1" style="font-size:70%;">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="3" id="S4.T1.6.7.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.6.7.1.2.1" style="font-size:70%;">CAPE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.7.1.2.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T1.6.7.1.2.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" colspan="3" id="S4.T1.6.7.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.6.7.1.3.1" style="font-size:70%;">4D-Dress</span><span class="ltx_text" id="S4.T1.6.7.1.3.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.7.1.3.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S4.T1.6.7.1.3.4.2" style="font-size:70%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:70%;">V2V </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:70%;">MPJPE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:70%;">CD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:70%;">V2V </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:70%;">MPJPE </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.6.6.6.1" style="font-size:70%;">CD </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.m1.1.1" mathsize="70%" stretchy="false" xref="S4.T1.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.6.8.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.8.2.1.1" style="font-size:70%;">Tightness-agnostic</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.9.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.6.9.3.1.1" style="font-size:70%;">NICP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.9.3.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T1.6.9.3.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.9.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.9.3.2.1" style="font-size:70%;">1.726</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.9.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.9.3.3.1" style="font-size:70%;">1.343</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.9.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.9.3.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.9.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.9.3.5.1" style="font-size:70%;">4.754</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.9.3.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.9.3.6.1" style="font-size:70%;">3.654</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.9.3.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.9.3.7.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.10.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.6.10.4.1.1" style="font-size:70%;">ArtEq</span><span class="ltx_text" id="S4.T1.6.10.4.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.10.4.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a><span class="ltx_text" id="S4.T1.6.10.4.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.10.4.2.1" style="font-size:70%;">2.200</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.10.4.3.1" style="font-size:70%;">1.557</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.10.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.10.4.4.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.10.4.5.1" style="font-size:70%;">2.328</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.10.4.6.1" style="font-size:70%;">1.657</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.4.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.10.4.7.1" style="font-size:70%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.11.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.6.11.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.11.5.1.1" style="font-size:70%;">Tightness-aware</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.12.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.12.6.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.6.12.6.1.1" style="font-size:70%;">IPNet</span><span class="ltx_text" id="S4.T1.6.12.6.1.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.12.6.1.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S4.T1.6.12.6.1.4.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.12.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.12.6.2.1" style="font-size:70%;">2.593</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.12.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.12.6.3.1" style="font-size:70%;">1.917</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.12.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.12.6.4.1" style="font-size:70%;">1.110</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.12.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.12.6.5.1" style="font-size:70%;">3.826</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.12.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.12.6.6.1" style="font-size:70%;">2.625</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.12.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.12.6.7.1" style="font-size:70%;">1.262</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.13.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.13.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.6.13.7.1.1" style="font-size:70%;">PTF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.13.7.1.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="S4.T1.6.13.7.1.3.2" style="font-size:70%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.13.7.2.1" style="font-size:70%;">2.036</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.13.7.3.1" style="font-size:70%;">1.497</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.13.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.13.7.4.1" style="font-size:70%;">1.219</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.13.7.5.1" style="font-size:70%;">2.796</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.13.7.6.1" style="font-size:70%;">2.053</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.7.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.13.7.7.1" style="font-size:70%;">1.239</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.14.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.14.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.6.14.8.1.1" style="font-size:70%;">Ours</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.2.1" style="font-size:70%;">1.647</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.3.1" style="font-size:70%;">0.922</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.14.8.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.4.1" style="font-size:70%;">1.019</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.5.1" style="font-size:70%;">1.939</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.6.1" style="font-size:70%;">1.116</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.8.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.14.8.7.1" style="font-size:70%;">1.065</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents an ablation study on the impact of using equivariant features in the ETCH model, specifically focusing on its generalization capabilities in one-shot settings (i.e., with minimal training data).  It compares the performance of three variants of the model: one using equivariant features, one using only XYZ position information, and one using both XYZ positions and invariance features. The results are evaluated using mean and median angular errors in predicting the direction of tightness vectors, and the visualizations in Figure 7 show the directional error and the predicted inner body points for each model. The table aims to demonstrate the significant advantage of using equivariant features for robust direction prediction, especially when training data is scarce.
> <details>
> <summary>read the caption</summary>
> Table 3:   Equivariance Generalizes well in One-shot Settings  For simplicity but aligned with Tab. 1, “Inv” denotes Invariance Features, “Equiv” denotes Equivariance Features, “XYZ” denotes XYZ-Positions. Fig. 7 shows the directional error (left), and predicted inner body points (right).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.6.1">
<td class="ltx_td ltx_border_r" id="S4.T2.5.6.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_rr" colspan="7" id="S4.T2.5.6.1.2"><span class="ltx_text" id="S4.T2.5.6.1.2.1" style="font-size:70%;">Ablation Settings</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T2.5.6.1.3">
<span class="ltx_text" id="S4.T2.5.6.1.3.1" style="font-size:70%;">CAPE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.5.6.1.3.2.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T2.5.6.1.3.3.2" style="font-size:70%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.5.6.1.4">
<span class="ltx_text" id="S4.T2.5.6.1.4.1" style="font-size:70%;">4D-Dress</span><span class="ltx_text" id="S4.T2.5.6.1.4.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.5.6.1.4.3.1" style="font-size:70%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10624v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S4.T2.5.6.1.4.4.2" style="font-size:70%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.5.5.6"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.5.5.7"><span class="ltx_text" id="S4.T2.5.5.7.1" style="font-size:70%;">Tightness</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.5.5.8"><span class="ltx_text" id="S4.T2.5.5.8.1" style="font-size:70%;">Correspondence</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" colspan="3" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:70%;">Features for Direction </span><math alttext="\mathbf{d}_{i}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><msub id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.m1.1.1.2" mathsize="70%" xref="S4.T2.1.1.1.m1.1.1.2.cmml">𝐝</mi><mi id="S4.T2.1.1.1.m1.1.1.3" mathsize="70%" xref="S4.T2.1.1.1.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T2.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.m1.1.1.2">𝐝</ci><ci id="S4.T2.1.1.1.m1.1.1.3.cmml" xref="S4.T2.1.1.1.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\mathbf{d}_{i}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">bold_d start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2" rowspan="2"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:70%;">V2V <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.3" rowspan="2"><span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:70%;">MPJPE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4" rowspan="2"><span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:70%;">V2V <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5" rowspan="2"><span class="ltx_text" id="S4.T2.5.5.5.1" style="font-size:70%;">MPJPE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.7.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.7.2.1"><span class="ltx_text" id="S4.T2.5.7.2.1.1" style="font-size:70%;">Settings</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.2.2"><span class="ltx_text" id="S4.T2.5.7.2.2.1" style="font-size:70%;">direction</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.7.2.3"><span class="ltx_text" id="S4.T2.5.7.2.3.1" style="font-size:70%;">scalar</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.2.4"><span class="ltx_text" id="S4.T2.5.7.2.4.1" style="font-size:70%;">dense</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.7.2.5"><span class="ltx_text" id="S4.T2.5.7.2.5.1" style="font-size:70%;">markers</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.2.6"><span class="ltx_text" id="S4.T2.5.7.2.6.1" style="font-size:70%;">Inv</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.7.2.7"><span class="ltx_text" id="S4.T2.5.7.2.7.1" style="font-size:70%;">XYZ</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T2.5.7.2.8"><span class="ltx_text" id="S4.T2.5.7.2.8.1" style="font-size:70%;">Equiv</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.8.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.1"><span class="ltx_text" id="S4.T2.5.8.3.1.1" style="font-size:70%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.2"><span class="ltx_text" id="S4.T2.5.8.3.2.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.3"><span class="ltx_text" id="S4.T2.5.8.3.3.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.4"><span class="ltx_text" id="S4.T2.5.8.3.4.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.5"><span class="ltx_text" id="S4.T2.5.8.3.5.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.6"><span class="ltx_text" id="S4.T2.5.8.3.6.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.7"><span class="ltx_text" id="S4.T2.5.8.3.7.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T2.5.8.3.8"><span class="ltx_text" id="S4.T2.5.8.3.8.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.8.3.9.1" style="font-size:70%;">1.647</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3.10"><span class="ltx_text ltx_font_bold" id="S4.T2.5.8.3.10.1" style="font-size:70%;">0.922</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.11"><span class="ltx_text ltx_font_bold" id="S4.T2.5.8.3.11.1" style="font-size:70%;">1.939</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.3.12"><span class="ltx_text ltx_font_bold" id="S4.T2.5.8.3.12.1" style="font-size:70%;">1.116</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.9.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.9.4.1"><span class="ltx_text" id="S4.T2.5.9.4.1.1" style="font-size:70%;">A.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.9.4.2"><span class="ltx_text" id="S4.T2.5.9.4.2.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.9.4.3"><span class="ltx_text" id="S4.T2.5.9.4.3.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.9.4.4"><span class="ltx_text" id="S4.T2.5.9.4.4.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.9.4.5"><span class="ltx_text" id="S4.T2.5.9.4.5.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.9.4.6"><span class="ltx_text" id="S4.T2.5.9.4.6.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.9.4.7"><span class="ltx_text" id="S4.T2.5.9.4.7.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T2.5.9.4.8"><span class="ltx_text" id="S4.T2.5.9.4.8.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.9.4.9"><span class="ltx_text" id="S4.T2.5.9.4.9.1" style="font-size:70%;">1.661</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.9.4.10"><span class="ltx_text" id="S4.T2.5.9.4.10.1" style="font-size:70%;">0.925</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.9.4.11"><span class="ltx_text" id="S4.T2.5.9.4.11.1" style="font-size:70%;">2.033</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.9.4.12"><span class="ltx_text" id="S4.T2.5.9.4.12.1" style="font-size:70%;">1.134</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.10.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.10.5.1"><span class="ltx_text" id="S4.T2.5.10.5.1.1" style="font-size:70%;">B.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5.2"><span class="ltx_text" id="S4.T2.5.10.5.2.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.10.5.3"><span class="ltx_text" id="S4.T2.5.10.5.3.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5.4"><span class="ltx_text" id="S4.T2.5.10.5.4.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.10.5.5"><span class="ltx_text" id="S4.T2.5.10.5.5.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5.6"><span class="ltx_text" id="S4.T2.5.10.5.6.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5.7"><span class="ltx_text" id="S4.T2.5.10.5.7.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T2.5.10.5.8"><span class="ltx_text" id="S4.T2.5.10.5.8.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5.9"><span class="ltx_text" id="S4.T2.5.10.5.9.1" style="font-size:70%;">1.663</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.10.5.10"><span class="ltx_text" id="S4.T2.5.10.5.10.1" style="font-size:70%;">0.926</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5.11"><span class="ltx_text" id="S4.T2.5.10.5.11.1" style="font-size:70%;">2.307</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.5.12"><span class="ltx_text" id="S4.T2.5.10.5.12.1" style="font-size:70%;">1.314</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.11.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.11.6.1"><span class="ltx_text" id="S4.T2.5.11.6.1.1" style="font-size:70%;">C.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6.2"><span class="ltx_text" id="S4.T2.5.11.6.2.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.11.6.3"><span class="ltx_text" id="S4.T2.5.11.6.3.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6.4"><span class="ltx_text" id="S4.T2.5.11.6.4.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.11.6.5"><span class="ltx_text" id="S4.T2.5.11.6.5.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6.6"><span class="ltx_text" id="S4.T2.5.11.6.6.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6.7"><span class="ltx_text" id="S4.T2.5.11.6.7.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T2.5.11.6.8"><span class="ltx_text" id="S4.T2.5.11.6.8.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6.9"><span class="ltx_text" id="S4.T2.5.11.6.9.1" style="font-size:70%;">1.909</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.11.6.10"><span class="ltx_text" id="S4.T2.5.11.6.10.1" style="font-size:70%;">1.451</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6.11"><span class="ltx_text" id="S4.T2.5.11.6.11.1" style="font-size:70%;">2.285</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6.12"><span class="ltx_text" id="S4.T2.5.11.6.12.1" style="font-size:70%;">1.466</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.12.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.12.7.1"><span class="ltx_text" id="S4.T2.5.12.7.1.1" style="font-size:70%;">D.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7.2"><span class="ltx_text" id="S4.T2.5.12.7.2.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.12.7.3"><span class="ltx_text" id="S4.T2.5.12.7.3.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7.4"><span class="ltx_text" id="S4.T2.5.12.7.4.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.12.7.5"><span class="ltx_text" id="S4.T2.5.12.7.5.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7.6"><span class="ltx_text" id="S4.T2.5.12.7.6.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7.7"><span class="ltx_text" id="S4.T2.5.12.7.7.1" style="font-size:70%;color:#F24639;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T2.5.12.7.8"><span class="ltx_text" id="S4.T2.5.12.7.8.1" style="font-size:70%;color:#239290;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7.9"><span class="ltx_text" id="S4.T2.5.12.7.9.1" style="font-size:70%;">1.777</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.12.7.10"><span class="ltx_text" id="S4.T2.5.12.7.10.1" style="font-size:70%;">1.342</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7.11"><span class="ltx_text" id="S4.T2.5.12.7.11.1" style="font-size:70%;">2.410</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7.12"><span class="ltx_text" id="S4.T2.5.12.7.12.1" style="font-size:70%;">1.608</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 shows the results of an ablation study comparing the performance of the proposed ETCH method with and without chamfer-based post-refinement.  The study uses two datasets: CAPE (tight-fitting clothing) and 4D-Dress (loose clothing).  The results demonstrate that chamfer-based post-refinement improves the accuracy of body fitting on the CAPE dataset, which has tighter-fitting clothing. However, on the 4D-Dress dataset, which contains loose clothing, post-refinement actually degrades performance. This suggests that the benefit of post-refinement is highly dependent on the style and fit of the clothing.  For applications where clothing style and fit are uncertain, the authors recommend using the ETCH method without post-refinement for more reliable results.  The table helps illustrate the importance of the novel tightness-vector approach in handling varying clothing styles and fits.
> <details>
> <summary>read the caption</summary>
> Table 4:  Chamfer-based Post-refinement. We adopt the best tightness-agnostic approach, NICP [41], and our ETCH, to further analyze the effectiveness of chamfer-based post-refinement. Notably, ††\dagger† denotes the method w/ chamfer-based post-refinement. The results show that post-refinement improves performance on tight clothing (CAPE [39]) but degrades it for loose clothing (4D-Dress [59]). Therefore, from application perspective, when clothing styles or fit are uncertain, including the “tightness-vector” and excluding the “post-refinement” will yield plausible results.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10624/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10624/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}