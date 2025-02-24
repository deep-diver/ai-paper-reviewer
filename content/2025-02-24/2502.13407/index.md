---
title: "JL1-CD: A New Benchmark for Remote Sensing Change Detection and a Robust Multi-Teacher Knowledge Distillation Framework"
summary: "JL1-CD: New all-inclusive dataset & multi-teacher knowledge distillation framework for robust remote sensing change detection, achieving state-of-the-art results!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13407 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyuan Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13407" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13407" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13407/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Deep learning in remote sensing image change detection (CD) faces challenges such as limited open-source datasets and inconsistent detection results across varying change areas. Existing algorithms struggle with highly dynamic change areas, as they rely on single-phase training approaches which degrade when addressing scenarios with wide variations in change areas, ranging from no change to complete change.



This paper introduces the **JL1-CD dataset**, which contains 5,000 pairs of high-resolution images with diverse change scenarios. To improve performance in the diverse dataset, the paper presents a multi-teacher knowledge distillation (MTKD) framework with the **O-P strategy**, where models trained on partitions are served as teachers.  The student model achieves superior detection accuracy under the supervision of multiple teachers, establishing new state-of-the-art (SOTA) results.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The JL1-CD dataset provides a valuable new resource for remote sensing change detection research. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Origin-Partition (O-P) strategy effectively addresses challenges posed by datasets with highly dynamic change areas. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Multi-Teacher Knowledge Distillation (MTKD) framework significantly improves change detection accuracy without increasing inference complexity. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces the **JL1-CD dataset**, offering high-resolution, diverse change scenarios for remote sensing.  The **MTKD framework** enhances CD model performance without increasing computational cost, setting a new baseline and inspiring further exploration of knowledge distillation techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/survey.png)

> 🔼 This figure shows a timeline summarizing the evolution of deep learning-based change detection (CD) methods in remote sensing.  It highlights key methods and the year they were introduced, illustrating the rapid advancements in the field over time.  The timeline visually represents the progression of algorithms, from early convolutional neural network (CNN)-based approaches to more recent transformer-based and foundational model (FM)-based techniques.
> <details>
> <summary>read the caption</summary>
> Figure 1: Timeline of the development of mainstream DL-based CD methods.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S2.T1.2.3.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Dataset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.2.3.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Class</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.2.3.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">Image Pairs</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.2.3.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">Image Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T1.2.3.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">Resolution</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">SZTAKI<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib46" title="">46</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.2.2.2.2">
<tr class="ltx_tr" id="S2.T1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><math alttext="952\times 640" class="ltx_Math" display="inline" id="S2.T1.1.1.1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.1.1.1.m1.1a"><mrow id="S2.T1.1.1.1.1.1.1.m1.1.1" xref="S2.T1.1.1.1.1.1.1.m1.1.1.cmml"><mn id="S2.T1.1.1.1.1.1.1.m1.1.1.2" xref="S2.T1.1.1.1.1.1.1.m1.1.1.2.cmml">952</mn><mo id="S2.T1.1.1.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T1.1.1.1.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S2.T1.1.1.1.1.1.1.m1.1.1.3" xref="S2.T1.1.1.1.1.1.1.m1.1.1.3.cmml">640</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.1.1.1.m1.1b"><apply id="S2.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.1.1.1.m1.1.1"><times id="S2.T1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S2.T1.1.1.1.1.1.1.m1.1.1.1"></times><cn id="S2.T1.1.1.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S2.T1.1.1.1.1.1.1.m1.1.1.2">952</cn><cn id="S2.T1.1.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S2.T1.1.1.1.1.1.1.m1.1.1.3">640</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.1.1.1.m1.1c">952\times 640</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.1.1.1.m1.1d">952 × 640</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.2.2.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><math alttext="1,048\times 724" class="ltx_Math" display="inline" id="S2.T1.2.2.2.2.2.1.m1.2"><semantics id="S2.T1.2.2.2.2.2.1.m1.2a"><mrow id="S2.T1.2.2.2.2.2.1.m1.2.2.1" xref="S2.T1.2.2.2.2.2.1.m1.2.2.2.cmml"><mn id="S2.T1.2.2.2.2.2.1.m1.1.1" xref="S2.T1.2.2.2.2.2.1.m1.1.1.cmml">1</mn><mo id="S2.T1.2.2.2.2.2.1.m1.2.2.1.2" xref="S2.T1.2.2.2.2.2.1.m1.2.2.2.cmml">,</mo><mrow id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.cmml"><mn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2.cmml">048</mn><mo id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1.cmml">×</mo><mn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3.cmml">724</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.2.2.1.m1.2b"><list id="S2.T1.2.2.2.2.2.1.m1.2.2.2.cmml" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1"><cn id="S2.T1.2.2.2.2.2.1.m1.1.1.cmml" type="integer" xref="S2.T1.2.2.2.2.2.1.m1.1.1">1</cn><apply id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.cmml" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1"><times id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1.cmml" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1"></times><cn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2.cmml" type="integer" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2">048</cn><cn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3.cmml" type="integer" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3">724</cn></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.2.2.1.m1.2c">1,048\times 724</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.2.2.1.m1.2d">1 , 048 × 724</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1.5</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.4.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">DSIFN<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib31" title="">31</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.4.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.4.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">394</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.4.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">512 × 512</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.4.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.5.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SECOND<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib39" title="">39</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.5.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.5.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">4,662</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.5.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">512 × 512</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.5.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.5-3</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.6.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">WHU-CD<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib47" title="">47</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.6.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.6.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.6.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">32,20 × 15,354</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.6.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.2</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.7.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">LEVIR-CD<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib32" title="">32</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.7.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.7.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">637</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.7.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">1,024 × 1,024</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.7.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.3</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.8.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">S2Looking<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib48" title="">48</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.8.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.8.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">5,000</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.8.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">1,024 × 1,024</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.8.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.5-0.8</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.9.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">CDD<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib49" title="">49</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.9.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.9.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">16,000</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.9.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">256 × 256</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.9.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.03-1</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.10.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SYSU-CD<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib50" title="">50</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.10.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.10.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">20,000</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.10.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">256 × 256</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.10.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.5</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S2.T1.2.11.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">JL1-CD</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.2.11.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.2.11.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">5,000</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.2.11.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">512 × 512</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.2.11.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.5-0.75</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of several open-source change detection (CD) datasets, highlighting key characteristics such as the number of classes, image pairs, image size, and resolution.  It also introduces the JL1-CD dataset, a new dataset proposed in this paper, and compares its features to the existing ones. This allows readers to understand the context and relative size/quality of the JL1-CD dataset compared to other publicly available datasets.
> <details>
> <summary>read the caption</summary>
> TABLE I: Information of Open-Source CD Datasets and the Proposed JL1-CD Dataset
> </details>





### In-depth insights


#### New JL1-CD Dataset
The authors introduce the JL1-CD dataset to address limitations in existing remote sensing change detection datasets. **JL1-CD aims to offer high-resolution, all-inclusive data** for improved DL algorithm development. The dataset comprises **5,000 pairs of 512x512 images** with **0.5-0.75 meter resolution**, captured in China. Unlike many datasets focused on human-induced changes, **JL1-CD encompasses diverse natural changes** (forests, water). Data split of 4,000 training and 1,000 testing pairs ensures enough data for training. **Availability of the JL1-CD dataset aims to foster progress in CD research**, addressing current dataset shortcomings.

#### O-P Train Strategy
The Origin-Partition (O-P) training strategy addresses challenges in change detection datasets with wide-ranging Change Area Ratios (CAR). Traditional methods struggle with such diversity, so O-P divides the training data based on CAR levels (small, medium, large) to train specialized models. This approach reduces the learning burden on individual models, enhancing detection accuracy across diverse change scenarios. During inference, a coarse CAR estimation determines which specialized model is used, optimizing detection. The O-P strategy is particularly effective for datasets like JL1-CD, where CAR varies significantly, improving overall performance.

#### Multi-Teacher MTKD
The Multi-Teacher Knowledge Distillation (MTKD) framework is a promising approach for enhancing change detection (CD) model performance, particularly in scenarios with diverse change patterns. MTKD leverages the collective knowledge of multiple "teacher" models, each trained on different subsets of the data or with different configurations, to guide the training of a single "student" model. This allows the student model to learn from a more comprehensive and robust representation of the data, leading to improved generalization and accuracy. **The key idea is that each teacher model captures different aspects of the underlying data distribution, and by combining their knowledge, the student model can achieve superior performance compared to models trained in isolation.** A crucial aspect of MTKD is the selection of appropriate teacher models and the design of an effective distillation strategy. **The teachers should be diverse enough to provide complementary information but also sufficiently accurate to avoid transferring noise or biases to the student.** The distillation process itself can involve various techniques, such as minimizing the distance between the teacher and student model outputs or feature representations. The MTKD framework is an effective approach to improve the performance of CD models by leveraging the strengths of multiple teachers, leading to improved generalization and accuracy. This approach also has the potential to be extended to other remote sensing tasks and other knowledge distillation frameworks. 

#### CAR Perf. Analysis
Analyzing change detection models across varying Change Area Ratios (CAR) unveils nuanced performance behaviors. Models optimized for general datasets often struggle with images exhibiting extreme CAR values (either very low or very high). The **O-P strategy** aims to mitigate this by partitioning training data based on CAR, fostering specialized models. **MTKD** further refines this by distilling knowledge from these specialized 'teacher' models into a single 'student' model, potentially boosting detection accuracy, particularly for subtle changes. Observed performance trends suggest that O-P and MTKD can significantly enhance detection accuracy for images with low CARs, indicating improved sensitivity to minor changes. However, performance may decrease for images with very high CARs, necessitating further investigation into how these strategies handle complete change scenarios. Overall, understanding CAR-specific performance is crucial for deploying change detection models effectively, and adaptive training strategies like O-P and MTKD offer promising avenues for improvement. The **graphs presented provide valuable visualization** for analyzing CAR performance in change detection models.

#### Robustness Tests
The 'Robustness Tests' section typically aims to validate the reliability and consistency of a proposed method across varying conditions or settings. It often involves **evaluating performance with different datasets**, parameter settings, or noise levels to assess the method's generalization ability. Furthermore, it may test the **sensitivity of key parameters** or analyze performance under extreme or atypical scenarios. By demonstrating consistent and acceptable results under diverse conditions, robustness tests bolster confidence in the method's real-world applicability and highlight its limitations. The aim is to provide a **comprehensive understanding** of the method's strengths and weaknesses beyond the specific experimental setup, offering insights into its practical utility.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/dataset-class.png)

> 🔼 Figure 2 presents sample images from the JL1-CD dataset, a new benchmark dataset for remote sensing change detection. Each row shows a pair of images acquired at two different times (Time 1 and Time 2) along with the corresponding ground truth change mask, which highlights the changed areas.  The six columns showcase six distinct change types frequently observed in remote sensing imagery: (a) decrease in woodland, showing deforestation or natural dieback; (b) building changes, depicting construction, demolition, or modification of structures; (c) conversion of cropland to greenhouses, indicating changes in land use; (d) road changes, such as road construction, widening, or other modifications; (e) waterbody changes, which may involve changes in lake size, river flow, or the appearance of new water bodies; and (f) surface hardening, showing areas where natural surfaces like soil or vegetation have been paved or otherwise hardened.
> <details>
> <summary>read the caption</summary>
> Figure 2: Sample images from the JL1-CD dataset. Each row, from top to bottom, represents: the image at time 1, the image at time 2, and the ground truth label. Each column corresponds to different change types: (a) Decrease in woodland; (b) Building changes; (c) Conversion of cropland to greenhouses; (d) Road changes; (e) Waterbody changes; and (f) Surface hardening (central region).
> </details>



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/pipeline.png)

> 🔼 Figure 3 illustrates the workflows for training and testing change detection models using two proposed methods: Origin-Partition (O-P) and Multi-Teacher Knowledge Distillation (MTKD).  The O-P strategy initially trains a model on the full dataset, then partitions the data based on the Change Area Ratio (CAR) to train specialized models for different CAR levels (small, medium, large).  The MTKD framework builds upon O-P by training a student model that learns from these specialized models (teachers) using knowledge distillation. The student model benefits from the strengths of each teacher but requires only a single inference step, improving efficiency.  The figure visually distinguishes training steps (green boxes) from testing steps (pink boxes) for both strategies.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the training (green boxes) and testing (pink boxes) pipelines of the proposed Origin-Partition (O-P) strategy and Multi-Teacher Knowledge Distillation (MTKD) framework.
> </details>



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/dataset.png)

> 🔼 Figure 4 displays a series of image pairs illustrating varying change area ratios (CARs) within the JL1-CD dataset.  Each row presents a different scene, showcasing the evolution from a completely unchanged area (0% CAR) to an area with a complete change (100% CAR). Intermediate columns show progressive increases in CAR. This figure visually demonstrates the diverse range of change levels present in the dataset and highlights the challenge of creating a change detection model robust enough to handle such variation.  The images illustrate different types of changes such as land cover shifts, construction, and deforestation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Sample images with different change area ratios (CAR). Each column represents a specific CAR: (a) 0.00%; (b) 19.98%; (c) 39.93%; (d) 59.96%; (e) 80.25%; and (f) 100.00%.
> </details>



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/CAP.png)

> 🔼 This figure shows the distribution of Change Area Ratio (CAR) values across the training, validation, and test sets of the JL1-CD dataset. The x-axis represents the CAR, ranging from 0.0 to 1.0, and the y-axis represents the frequency of images with that CAR.  The distributions are shown as histograms, with separate plots for each set.  This visualization helps to understand the balance of different change amounts in the dataset, which is important for evaluating the performance of change detection models.  For example, a dataset with a large proportion of images with low CAR values may favor models that perform well on detecting minor changes but not necessarily major changes.
> <details>
> <summary>read the caption</summary>
> Figure 5: CAR distribution of the training, validation and test sets in JL1-CD.
> </details>



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/CAP-SYSUCD.png)

> 🔼 Figure 6 is a histogram showing the distribution of Change Area Ratio (CAR) values in the training and test sets of the SYSU-CD dataset.  The x-axis represents the CAR, ranging from 0 to 1 (or 0% to 100%), indicating the proportion of changed pixels in an image. The y-axis represents the frequency of images with a given CAR value.  Separate histograms are provided for the training and testing sets, allowing for a comparison of CAR distribution between the two sets used in the training and testing of models for change detection. The figure helps to visualize the range and frequency of different change magnitudes within the SYSU-CD dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: CAR distribution of the training and test sets in SYSU-CD.
> </details>



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/visual.png)

> 🔼 Figure 7 presents a visual comparison of change detection results on the JL1-CD dataset for nine different algorithms.  Each row displays a sample image pair (time 1 and time 2), the corresponding ground truth change mask, and change detection outputs from three different model training approaches: the original model, the model trained with the Origin-Partition (O-P) strategy, and the model trained with the Multi-Teacher Knowledge Distillation (MTKD) framework.  Red highlights missed detections (false negatives), and blue highlights false alarms (false positives). The specific algorithms shown are BAN-ViT-L, BIT, TTP, SNUNet, IFN, Changer-MiT-b1, ChangeFormer-MiT-b1, TinyCD, and CGNet, each in a separate column.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visual comparison on the JL1-CD dataset. Each row, from top to bottom, represents the following: image at time 1, image at time 2, ground truth, output from the original model, output from the O-P strategy, and output from the MTKD framework. Red denotes missed detections (FN), while blue indicates false alarms (FP). The selected algorithms are: (a) BAN-ViT-L, (b) BIT, (c) TTP, (d) SNUNet, (e) IFN, (f) Changer-MiT-b1, (g) ChangeFormer-MiT-b1, (h) TinyCD, and (i) CGNet.
> </details>



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/CAR_per_Partition.png)

> 🔼 Figure 8 displays the performance of three distinct change detection models (HANet, ChangeFormer-MiT-b1, and TTP) across various change area ratios (CARs).  The results are presented for both validation and test datasets, with each row representing a separate dataset. Each model's mIoU (mean Intersection over Union) score is shown as a line graph, plotted against the CAR. The left y-axis displays the CAR range (percentage of changed pixels), while the right y-axis represents the resulting mIoU. This figure effectively demonstrates how the performance of each model varies depending on the extent of the change present in an image.
> <details>
> <summary>read the caption</summary>
> Figure 8: mIoU of HANet, ChangeFormer-MiT-b1, and TTP across different CAR ranges. The first and second rows show results on the validation and test sets, respectively. In each plot, the left y-axis represents CAR size, and the right y-axis represents mIoU.
> </details>



![](https://arxiv.org/html/2502.13407/extracted/6215536/pic/visual_sysucd.png)

> 🔼 Figure 9 presents a visual comparison of change detection results on the SYSU-CD dataset using three different models: Changer-MiT-b1, CGNet, and TTP.  Each row shows a pair of images (Time 1 and Time 2), the ground truth change mask, and the change detection results from each model under two training scenarios: 'Original' (standard training) and 'MTKD' (multi-teacher knowledge distillation). Red highlights missed detections (false negatives), while blue shows false alarms (false positives). The comparison aims to visually demonstrate the impact of the MTKD framework on improving the accuracy and reducing errors in change detection.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visual comparison on the SYSU-CD dataset. Red denotes missed detections (FN). Blue indicates false alarms (FP). (a) Image at Time 1. (b) Image at Time 2. (c) Ground Truth. (d) Changer-MiT-b1 (Original). (e) Changer-MiT-b1 (MTKD). (f) CGNet (Original). (g) CGNet (MTKD). (h) TTP (Original). (i) TTP (MTKD).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.2.2.2.2">
<tr class="ltx_tr" id="S2.T1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><math alttext="952\times 640" class="ltx_Math" display="inline" id="S2.T1.1.1.1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.1.1.1.m1.1a"><mrow id="S2.T1.1.1.1.1.1.1.m1.1.1" xref="S2.T1.1.1.1.1.1.1.m1.1.1.cmml"><mn id="S2.T1.1.1.1.1.1.1.m1.1.1.2" xref="S2.T1.1.1.1.1.1.1.m1.1.1.2.cmml">952</mn><mo id="S2.T1.1.1.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T1.1.1.1.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S2.T1.1.1.1.1.1.1.m1.1.1.3" xref="S2.T1.1.1.1.1.1.1.m1.1.1.3.cmml">640</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.1.1.1.m1.1b"><apply id="S2.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.1.1.1.m1.1.1"><times id="S2.T1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S2.T1.1.1.1.1.1.1.m1.1.1.1"></times><cn id="S2.T1.1.1.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S2.T1.1.1.1.1.1.1.m1.1.1.2">952</cn><cn id="S2.T1.1.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S2.T1.1.1.1.1.1.1.m1.1.1.3">640</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.1.1.1.m1.1c">952\times 640</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.1.1.1.m1.1d">952 × 640</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.2.2.2.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><math alttext="1,048\times 724" class="ltx_Math" display="inline" id="S2.T1.2.2.2.2.2.1.m1.2"><semantics id="S2.T1.2.2.2.2.2.1.m1.2a"><mrow id="S2.T1.2.2.2.2.2.1.m1.2.2.1" xref="S2.T1.2.2.2.2.2.1.m1.2.2.2.cmml"><mn id="S2.T1.2.2.2.2.2.1.m1.1.1" xref="S2.T1.2.2.2.2.2.1.m1.1.1.cmml">1</mn><mo id="S2.T1.2.2.2.2.2.1.m1.2.2.1.2" xref="S2.T1.2.2.2.2.2.1.m1.2.2.2.cmml">,</mo><mrow id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.cmml"><mn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2.cmml">048</mn><mo id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1" lspace="0.222em" rspace="0.222em" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1.cmml">×</mo><mn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3.cmml">724</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.2.2.1.m1.2b"><list id="S2.T1.2.2.2.2.2.1.m1.2.2.2.cmml" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1"><cn id="S2.T1.2.2.2.2.2.1.m1.1.1.cmml" type="integer" xref="S2.T1.2.2.2.2.2.1.m1.1.1">1</cn><apply id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.cmml" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1"><times id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1.cmml" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.1"></times><cn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2.cmml" type="integer" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.2">048</cn><cn id="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3.cmml" type="integer" xref="S2.T1.2.2.2.2.2.1.m1.2.2.1.1.3">724</cn></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.2.2.1.m1.2c">1,048\times 724</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.2.2.1.m1.2d">1 , 048 × 724</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table II provides a detailed overview of the benchmark models used in the paper's experiments. For each model, it lists the backbone network architecture (e.g., CNN, ResNet, Transformer), the number of model parameters (in millions), the number of floating point operations (in billions), the initial learning rate used for training, the lambda value (λ, a hyperparameter), the learning rate scheduler employed, the batch size used during training, and the type of GPU used for training.  This information allows readers to understand the computational complexity and resources required for each model and facilitates reproducibility of the results.
> <details>
> <summary>read the caption</summary>
> TABLE II: Benchmark Methods and the Corresponding Implementation Details
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">Backbone</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">Param (M)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">Flops (G)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">Initial LR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><math alttext="\lambda" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">italic_λ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">Scheduler</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">Batch Size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">GPU</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.2.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FC-EF<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.2.1.2.1" style="background-color:#ECF4FF;">CNN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">1.353</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">12.976</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T2.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FC-Siam-Conc<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.3.2.2.1" style="background-color:#ECF4FF;">CNN</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">1.548</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">19.956</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.4.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FC-Siam-Diff<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.4.3.2.1" style="background-color:#ECF4FF;">CNN</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">1.352</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">17.540</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">STANet-Base<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib32" title="">32</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.5.4.2.1" style="background-color:#ECF4FF;">ResNet-18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">12.764</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">70.311</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">5e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.5.4.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.6.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">IFN<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib31" title="">31</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.6.5.2.1" style="background-color:#ECF4FF;">VGG-16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">35.995</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">323.584</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.5.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.7.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SNUNet-c16<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib33" title="">33</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.7.6.2.1" style="background-color:#ECF4FF;">CNN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3.012</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">46.921</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.7.6.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.8.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">BIT<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.8.7.2.1" style="background-color:#ECF4FF;">ResNet-18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2.990</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">34.996</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.7.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.8">
<td class="ltx_td ltx_border_t" id="S4.T2.1.9.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.9.8.2.1" style="background-color:#ECF4FF;">FarSeg (ResNet-18)<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib51" title="">51</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">16.965</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.845</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.9.8.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10.9">
<td class="ltx_td ltx_align_left" id="S4.T2.1.10.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.10.9.1.1">ChangeStar<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib34" title="">34</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.10.9.2.1" style="background-color:#ECF4FF;">UPerNet (ResNet-18)<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib52" title="">52</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">13.952</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">55.634</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.10.9.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11.10">
<td class="ltx_td ltx_border_t" id="S4.T2.1.11.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.2" style="background-color:#96FFFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.11.10.2.1" style="background-color:#96FFFB;">MiT-b0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3.847</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">11.380</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">6e-5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.11.10.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.12.11">
<td class="ltx_td ltx_align_left" id="S4.T2.1.12.11.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.12.11.1.1">ChangeFormer<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib13" title="">13</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.2" style="background-color:#96FFFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.12.11.2.1" style="background-color:#96FFFB;">MiT-b1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">13.941</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">26.422</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">6e-5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">5e-4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.12.11.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.13.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">TinyCD<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib36" title="">36</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.13.12.2.1" style="background-color:#ECF4FF;">CNN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.285</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">5.791</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">3.57e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.13.12.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.14.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.14.13.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">HANet<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib35" title="">35</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.14.13.2.1" style="background-color:#ECF4FF;">CNN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3.028</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">97.548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.14.13.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">A800</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.15.14">
<td class="ltx_td ltx_border_t" id="S4.T2.1.15.14.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.2" style="background-color:#96FFFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.15.14.2.1" style="background-color:#96FFFB;">MiT-b0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3.457</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">8.523</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.15.14.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.16.15">
<td class="ltx_td" id="S4.T2.1.16.15.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.2" style="background-color:#96FFFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.16.15.2.1" style="background-color:#96FFFB;">MiT-b1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">13.355</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">23.306</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.16.15.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.17.16">
<td class="ltx_td" id="S4.T2.1.17.16.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.17.16.2.1" style="background-color:#ECF4FF;">ResNet-18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">11.391</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">23.820</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">5e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.17.16.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.18.17">
<td class="ltx_td ltx_align_left" id="S4.T2.1.18.17.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.18.17.1.1">Changer<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib14" title="">14</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.18.17.2.1" style="background-color:#ECF4FF;">ResNeSt-50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">26.693</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.241</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">5e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.18.17.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.19.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.19.18.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">LightCDNet-s<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib37" title="">37</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.19.18.2.1" style="background-color:#ECF4FF;">CNN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.342</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">6.995</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">3e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">5e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.19.18.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.20.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.20.19.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">CGNet<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.2" style="background-color:#ECF4FF;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.20.19.2.1" style="background-color:#ECF4FF;">VGG-16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">38.989</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">425.984</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">5e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.20.19.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">A800</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.21.20">
<td class="ltx_td ltx_border_t" id="S4.T2.1.21.20.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.2" style="background-color:#CBCEFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.21.20.2.1" style="background-color:#CBCEFB;">ViT-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">91.346</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.409</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.21.20.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.22.21">
<td class="ltx_td" id="S4.T2.1.22.21.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.2" style="background-color:#CBCEFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.22.21.2.1" style="background-color:#CBCEFB;">ViT-B (IN21K)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">115.712</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.142</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.22.21.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">3090</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.23.22">
<td class="ltx_td ltx_align_left" id="S4.T2.1.23.22.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.23.22.1.1">BAN<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib19" title="">19</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.2" style="background-color:#CBCEFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.23.22.2.1" style="background-color:#CBCEFB;">ViT-L</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">261.120</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">346.112</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">1e-3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">LinearLR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.23.22.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">A800</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.24.23">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S4.T2.1.24.23.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">TTP<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib21" title="">21</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.2" style="background-color:#CBCEFB;padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.24.23.2.1" style="background-color:#CBCEFB;">SAM<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13407v1#bib.bib17" title="">17</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">361.472</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">929.792</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">4e-4</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">5e-3</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">CosineAnnealingLR</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">8</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.24.23.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">A800</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of various change detection models evaluated on the JL1-CD test dataset.  The models are categorized by their strategy (original, O-P, and MTKD) and compared using metrics like mIoU (mean Intersection over Union), mAcc (mean accuracy), mPrecision (mean precision), and mFscore (mean F1-score).  Higher scores generally indicate better change detection performance.
> <details>
> <summary>read the caption</summary>
> TABLE III: Experimental Results on JL1-CD Test Set
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Strategy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">mIoU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">mAcc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">mPrecision</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">mFscore</td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">Strategy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">mIoU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">mAcc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">mPrecision</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">mFscore</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.2.2.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.2.2.1.1.1">
<span class="ltx_tr" id="S4.T3.1.2.2.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.2.2.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">STANet</span></span>
<span class="ltx_tr" id="S4.T3.1.2.2.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.2.2.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(Base)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.73</td>
<td class="ltx_td" id="S4.T3.1.2.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.2.2.8.1">IFN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">84.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.2.2.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.33</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.3">
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">64.56</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.47</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.3.3.4.1">78.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.25</td>
<td class="ltx_td" id="S4.T3.1.3.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.06</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">84.28</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.21</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.4">
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.2.1">67.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.3.1">82.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.24</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.5.1">75.10</span></td>
<td class="ltx_td" id="S4.T3.1.4.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.8.1">72.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.9.1">80.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.10.1">84.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.4.4.11.1">78.80</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.5.5.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.5.5.1.1.1">
<span class="ltx_tr" id="S4.T3.1.5.5.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.5.5.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SNUNet</span></span>
<span class="ltx_tr" id="S4.T3.1.5.5.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.5.5.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(c16)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">68.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.5.5.5.1">85.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.25</td>
<td class="ltx_td" id="S4.T3.1.5.5.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.5.5.8.1">BIT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.5.5.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.37</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.6">
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.6.2.1">71.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.6.3.1">78.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.36</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.6.5.1">77.98</span></td>
<td class="ltx_td" id="S4.T3.1.6.6.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.6.8.1">69.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.6.9.1">76.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">84.02</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.6.6.11.1">75.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.7">
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.12</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">84.96</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.56</td>
<td class="ltx_td" id="S4.T3.1.7.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">68.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.49</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.7.7.10.1">84.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.7.7.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.88</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.8.8.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.8.8.1.1.1">
<span class="ltx_tr" id="S4.T3.1.8.8.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.8.8.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">ChangeStar</span></span>
<span class="ltx_tr" id="S4.T3.1.8.8.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.8.8.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(FarSeg)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.8.8.3.1">69.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">84.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.8.8.6.1">75.57</span></td>
<td class="ltx_td" id="S4.T3.1.8.8.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.8.8.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.8.8.8.1.1">
<span class="ltx_tr" id="S4.T3.1.8.8.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.8.8.8.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">ChangeStar</span></span>
<span class="ltx_tr" id="S4.T3.1.8.8.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.8.8.8.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(UPerNet)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">64.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.12" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.8.8.12.1">88.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.8.8.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">70.19</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.9.9">
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">68.87</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.74</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.9.9.4.1">84.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.86</td>
<td class="ltx_td" id="S4.T3.1.9.9.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">64.68</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.05</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.23</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.9.9.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">70.08</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.10.10">
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.14</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.10.10.3.1">76.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.09</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.41</td>
<td class="ltx_td" id="S4.T3.1.10.10.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.10.10.8.1">65.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.10.10.9.1">70.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.69</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.10.10.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.10.10.11.1">70.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.11.11.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.11.11.1.1.1">
<span class="ltx_tr" id="S4.T3.1.11.11.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.11.11.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">ChangeFormer</span></span>
<span class="ltx_tr" id="S4.T3.1.11.11.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.11.11.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b0)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.11.11.3.1">73.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.11.11.4.1">80.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.11.11.6.1">79.70</span></td>
<td class="ltx_td" id="S4.T3.1.11.11.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.11.11.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.11.11.8.1.1">
<span class="ltx_tr" id="S4.T3.1.11.11.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.11.11.8.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">ChangeFormer</span></span>
<span class="ltx_tr" id="S4.T3.1.11.11.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.11.11.8.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b1)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.11.11.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.22</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.12.12">
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.58</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.16</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.33</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.79</td>
<td class="ltx_td" id="S4.T3.1.12.12.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.45</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.19</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.12.12.10.1">87.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.12.12.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.41</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.13.13">
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.20</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.13.13.4.1">87.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.30</td>
<td class="ltx_td" id="S4.T3.1.13.13.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.13.13.8.1">73.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.13.13.9.1">80.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.89</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.13.13.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.13.13.11.1">80.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.14.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.14.14.1.1">TinyCD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.74</td>
<td class="ltx_td" id="S4.T3.1.14.14.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.14.14.8.1">HANet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.14.14.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.39</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.15.15">
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.22</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.93</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.15.15.4.1">83.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.76</td>
<td class="ltx_td" id="S4.T3.1.15.15.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.15.15.8.1">69.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.15.15.9.1">76.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.05</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.15.15.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.15.15.11.1">75.66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.16.16">
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.16.16.2.1">72.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.16.16.3.1">80.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.17</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.16.16.5.1">79.26</span></td>
<td class="ltx_td" id="S4.T3.1.16.16.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.67</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.39</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.16.16.10.1">84.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.16.16.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.92</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.17.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.17.17.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.17.17.1.1.1">
<span class="ltx_tr" id="S4.T3.1.17.17.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.17.17.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S4.T3.1.17.17.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.17.17.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b0)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.17.17.4.1">81.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.98</td>
<td class="ltx_td" id="S4.T3.1.17.17.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.17.17.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.17.17.8.1.1">
<span class="ltx_tr" id="S4.T3.1.17.17.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.17.17.8.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S4.T3.1.17.17.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.17.17.8.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b1)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.12" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.17.17.12.1">87.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.17.17.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.93</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.18.18">
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.29</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.40</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.06</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.18.18.5.1">81.32</span></td>
<td class="ltx_td" id="S4.T3.1.18.18.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.42</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.67</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.13</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.18.18.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.43</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.19.19">
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.19.19.2.1">75.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.76</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.19.19.4.1">87.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.28</td>
<td class="ltx_td" id="S4.T3.1.19.19.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.19.19.8.1">76.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.19.19.9.1">82.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.98</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.19.19.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.19.19.11.1">82.13</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.20.20">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.20.20.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.20.20.1.1.1">
<span class="ltx_tr" id="S4.T3.1.20.20.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.20.20.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S4.T3.1.20.20.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.20.20.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(r18)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">68.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.54</td>
<td class="ltx_td" id="S4.T3.1.20.20.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.20.20.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.20.20.8.1.1">
<span class="ltx_tr" id="S4.T3.1.20.20.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.20.20.8.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S4.T3.1.20.20.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.20.20.8.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(s50)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.20.20.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.83</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.21.21">
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.2.1">70.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.3.1">77.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.4.1">83.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.5.1">77.01</span></td>
<td class="ltx_td" id="S4.T3.1.21.21.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.8.1">71.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.9.1">79.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.10.1">83.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.21.21.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.21.21.11.1">78.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.22.22">
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.45</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.26</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.86</td>
<td class="ltx_td" id="S4.T3.1.22.22.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.96</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.65</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.76</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.22.22.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">68.52</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.23.23">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.23.23.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.23.23.1.1.1">
<span class="ltx_tr" id="S4.T3.1.23.23.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.23.23.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">LightCDNet</span></span>
<span class="ltx_tr" id="S4.T3.1.23.23.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.23.23.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(s)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.46</td>
<td class="ltx_td" id="S4.T3.1.23.23.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.23.23.8.1">CGNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">85.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.23.23.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.65</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.24.24">
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.24.24.2.1">70.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.24.24.3.1">77.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.24.24.4.1">83.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.24.24.5.1">76.16</span></td>
<td class="ltx_td" id="S4.T3.1.24.24.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.95</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.71</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">85.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.24.24.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.12</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.25.25">
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">65.99</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.44</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">83.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.48</td>
<td class="ltx_td" id="S4.T3.1.25.25.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.25.25.8.1">73.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.25.25.9.1">80.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.25.25.10.1">86.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.25.25.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.25.25.11.1">79.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.26.26">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.26.26.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.26.26.1.1.1">
<span class="ltx_tr" id="S4.T3.1.26.26.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.26.26.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">BAN</span></span>
<span class="ltx_tr" id="S4.T3.1.26.26.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.26.26.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(ViT-L)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.47</td>
<td class="ltx_td" id="S4.T3.1.26.26.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.8" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.26.26.8.1">TTP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.12" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.26.26.12.1">89.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.26.26.13" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.76</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.27.27">
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.61</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.17</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.27.27.4.1">88.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.45</td>
<td class="ltx_td" id="S4.T3.1.27.27.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.69</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.27.27.9.1">83.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.27.27.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.52</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.28.28">
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.28.28.2.1">73.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.28.28.3.1">80.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.12</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.28.28.5.1">79.92</span></td>
<td class="ltx_td" id="S4.T3.1.28.28.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">MTKD</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.28.28.8.1">76.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.99</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">88.05</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.28.28.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.28.28.11.1">82.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.29.29">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.29.29.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.29.29.1.1.1">
<span class="ltx_tr" id="S4.T3.1.29.29.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.29.29.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">BAN</span></span>
<span class="ltx_tr" id="S4.T3.1.29.29.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.29.29.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(ViT-B)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.29.29.3.1">73.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.29.29.4.1">80.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">85.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.29.29.6.1">79.47</span></td>
<td class="ltx_td" id="S4.T3.1.29.29.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.8" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.29.29.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.29.29.8.1.1">
<span class="ltx_tr" id="S4.T3.1.29.29.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.29.29.8.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">BAN</span></span>
<span class="ltx_tr" id="S4.T3.1.29.29.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.29.29.8.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(ViT-B-IN21K)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.29.29.10.1">74.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.29.29.11.1">81.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.12" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.29.29.12.1">87.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.29.29.13" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.29.29.13.1">80.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.30.30">
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.47</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.78</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.30.30.4.1">86.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.58</td>
<td class="ltx_td" id="S4.T3.1.30.30.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.98</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.30.30.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.50</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.31.31">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.31.31.1.1">FC-EF</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.31.31.3.1">57.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.31.31.4.1">61.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.31.31.6.1">61.28</span></td>
<td class="ltx_td" id="S4.T3.1.31.31.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.8" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.31.31.8.1">FC-Siam-Conc</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.31.31.10.1">63.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.31.31.11.1">69.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.12" style="padding-top:1.25pt;padding-bottom:1.25pt;">84.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.31.31.13" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.31.31.13.1">69.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.32.32">
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">49.59</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">53.30</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.32.32.4.1">95.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">51.47</td>
<td class="ltx_td" id="S4.T3.1.32.32.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">60.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">63.84</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.32.32.10.1">91.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.32.32.11" style="padding-top:1.25pt;padding-bottom:1.25pt;">64.72</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.33.33">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.1.33.33.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.1.33.33.1.1">FC-Siam-Diff</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.33.33.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.33.33.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.33.33.3.1">61.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.33.33.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.33.33.4.1">66.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.33.33.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.33.33.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.33.33.6.1">66.34</span></td>
<td class="ltx_td" id="S4.T3.1.33.33.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.33.33.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.33.33.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.33.33.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.33.33.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.33.33.12" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.33.33.13" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.34.34">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.34.34.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">O-P</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.34.34.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">56.49</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.34.34.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">60.05</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.34.34.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.34.34.4.1">91.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.34.34.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">60.57</td>
<td class="ltx_td ltx_border_b" id="S4.T3.1.34.34.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_b" id="S4.T3.1.34.34.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_b" id="S4.T3.1.34.34.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_b" id="S4.T3.1.34.34.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_b" id="S4.T3.1.34.34.10" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_b" id="S4.T3.1.34.34.11" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_border_b" id="S4.T3.1.34.34.12" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table IV presents a detailed comparison of change and no-change detection performance metrics for several models.  It breaks down the Intersection over Union (IoU), Accuracy, Precision, and F1-score for each model, separately showing the change in these metrics compared to a baseline for both change and no-change regions. This allows for a more nuanced understanding of how effectively each model differentiates between changed and unchanged areas in the images.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Comparison of Detection Results on Change and No-Change Classes
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Class</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">IoU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">Precision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">Fscore</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.2.1">
<td class="ltx_td ltx_border_t" id="S5.T4.1.2.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.2.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.2.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.2.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.2.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.12</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.3.2">
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.3.2.1.1">IFN</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.3.2.3.1">+2.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.3.2.4.1">+2.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.3.2.5.1">+0.22</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.3.2.6.1">+2.82</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.4.3">
<td class="ltx_td ltx_border_t" id="S5.T4.1.4.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.4.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.4.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.4.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.4.3.5.1">+0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.4.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.06</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.5.4">
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.5.4.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.1.5.4.1.1.1">
<span class="ltx_tr" id="S5.T4.1.5.4.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.5.4.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SNUNet</span></span>
<span class="ltx_tr" id="S5.T4.1.5.4.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.5.4.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(c16)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.5.4.3.1">+4.21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.5.4.4.1">+7.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.86</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.5.4.6.1">+4.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.6.5">
<td class="ltx_td ltx_border_t" id="S5.T4.1.6.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.6.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.6.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.6.5.3.1">+0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.6.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.6.5.4.1">-0.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.6.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.6.5.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.6.5.6.1">+0.18</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.7.6">
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.7.6.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.1.7.6.1.1.1">
<span class="ltx_tr" id="S5.T4.1.7.6.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.7.6.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">ChangeFormer</span></span>
<span class="ltx_tr" id="S5.T4.1.7.6.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.7.6.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b0)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.74</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">-2.51</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.7.6.5.1">+1.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.6.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.99</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.8.7">
<td class="ltx_td ltx_border_t" id="S5.T4.1.8.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.8.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.8.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.8.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.8.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.8.7.5.1">-0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.8.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.05</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.9.8">
<td class="ltx_td ltx_align_center" id="S5.T4.1.9.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.9.8.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.1.9.8.1.1.1">
<span class="ltx_tr" id="S5.T4.1.9.8.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.9.8.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">ChangeFormer</span></span>
<span class="ltx_tr" id="S5.T4.1.9.8.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.9.8.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b1)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.9.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.9.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.9.8.3.1">+1.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.9.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.9.8.4.1">+1.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.9.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.11</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.9.8.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.9.8.6.1">+1.86</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.10.9">
<td class="ltx_td ltx_border_t" id="S5.T4.1.10.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.10.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.10.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.10.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.10.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.10.9.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.20</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.11.10">
<td class="ltx_td ltx_align_center" id="S5.T4.1.11.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.11.10.1.1">TinyCD</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.11.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.11.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.11.10.3.1">+2.72</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.11.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.11.10.4.1">+4.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.11.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.11.10.5.1">+0.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.11.10.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.11.10.6.1">+2.85</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.12.11">
<td class="ltx_td ltx_border_t" id="S5.T4.1.12.11.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.12.11.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.12.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.12.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.12.11.4.1">+0.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.12.11.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.12.11.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.19</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.13.12">
<td class="ltx_td ltx_align_center" id="S5.T4.1.13.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.13.12.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.1.13.12.1.1.1">
<span class="ltx_tr" id="S5.T4.1.13.12.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.13.12.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S5.T4.1.13.12.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.13.12.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b0)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.13.12.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.13.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.13.12.3.1">+0.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.13.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.48</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.13.12.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.13.12.5.1">+2.32</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.13.12.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.13.12.6.1">+0.41</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.14.13">
<td class="ltx_td ltx_border_t" id="S5.T4.1.14.13.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.14.13.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.14.13.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.14.13.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.14.13.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.14.13.5.1">-0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.14.13.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.01</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.15.14">
<td class="ltx_td ltx_align_center" id="S5.T4.1.15.14.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.15.14.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.1.15.14.1.1.1">
<span class="ltx_tr" id="S5.T4.1.15.14.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.15.14.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S5.T4.1.15.14.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.15.14.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b1)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.15.14.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.15.14.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.15.14.3.1">+0.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.15.14.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.15.14.4.1">+1.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.15.14.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">-1.47</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.15.14.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.15.14.6.1">+0.42</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.16.15">
<td class="ltx_td ltx_border_t" id="S5.T4.1.16.15.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.16.15.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.16.15.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.16.15.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.16.15.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.16.15.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.06</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.17.16">
<td class="ltx_td ltx_align_center" id="S5.T4.1.17.16.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.17.16.1.1">CGNet</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.17.16.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.17.16.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.17.16.3.1">+0.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.17.16.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.17.16.4.1">+0.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.17.16.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.17.16.5.1">+2.04</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.17.16.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.17.16.6.1">+0.59</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.18.17">
<td class="ltx_td ltx_border_t" id="S5.T4.1.18.17.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.18.17.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.18.17.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.18.17.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.18.17.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.18.17.5.1">-0.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.18.17.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.07</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.19.18">
<td class="ltx_td ltx_align_center" id="S5.T4.1.19.18.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.19.18.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.1.19.18.1.1.1">
<span class="ltx_tr" id="S5.T4.1.19.18.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.19.18.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">BAN</span></span>
<span class="ltx_tr" id="S5.T4.1.19.18.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.19.18.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(ViT-L)</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.19.18.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.19.18.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.19.18.3.1">+0.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.19.18.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.19.18.4.1">+1.21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.19.18.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">-1.46</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.19.18.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.19.18.6.1">+0.82</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.20.19">
<td class="ltx_td ltx_border_t" id="S5.T4.1.20.19.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.20.19.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">unchanged</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.20.19.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.20.19.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">-0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.20.19.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.20.19.5.1">+0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.20.19.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">+0.20</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.21.20">
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.21.20.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T4.1.21.20.1.1">TTP</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.21.20.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">changed</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.21.20.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.21.20.3.1">+3.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.21.20.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.21.20.4.1">+5.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.21.20.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">-3.99</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.21.20.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.21.20.6.1">+3.39</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table investigates how the number of teacher models used in the Multi-Teacher Knowledge Distillation (MTKD) framework affects the performance of change detection.  It compares the results obtained using two versus three teacher models within both the Origin-Partition (O-P) strategy and the MTKD framework.  The metrics evaluated include mean Intersection over Union (mIoU), mean Accuracy (mAcc), mean Precision (mPrecision), and mean F1-score (mFscore).  The table allows for a comparison of the effectiveness of different teacher model configurations on overall change detection accuracy.
> <details>
> <summary>read the caption</summary>
> TABLE V: Impact of Different Numbers of Teacher Models on O-P and MTKD Performance
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">Strategy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">No. of <math alttext="\mathcal{M}_{T}" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><msub id="S5.T5.1.1.1.m1.1.1" xref="S5.T5.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T5.1.1.1.m1.1.1.2" xref="S5.T5.1.1.1.m1.1.1.2.cmml">ℳ</mi><mi id="S5.T5.1.1.1.m1.1.1.3" xref="S5.T5.1.1.1.m1.1.1.3.cmml">T</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><apply id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T5.1.1.1.m1.1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T5.1.1.1.m1.1.1.2.cmml" xref="S5.T5.1.1.1.m1.1.1.2">ℳ</ci><ci id="S5.T5.1.1.1.m1.1.1.3.cmml" xref="S5.T5.1.1.1.m1.1.1.3">𝑇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\mathcal{M}_{T}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">caligraphic_M start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">mIOU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">mAcc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">mPrecision</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">mFscore</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.2.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.2.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.2.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.29 (+0.44)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.40 (-0.44)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.2.1.6.1">87.06 (+0.97)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.32 (+0.34)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.3.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.3.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.3.2.2.1">O-P</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.3.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.3.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.3.2.4.1">75.44 (+0.59)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.3.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.3.2.5.1">81.96 (+0.12)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.3.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">85.85 (-0.24)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.3.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.3.2.7.1">81.51 (+0.53)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.4.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.4.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.4.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.4.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.35 (+0.50)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.4.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.76 (-0.08)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.4.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.4.3.6.1">87.18 (+1.09)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.4.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.28 (+0.30)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.5.4.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.5.4.1.1.1">
<span class="ltx_tr" id="S5.T5.1.5.4.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.5.4.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S5.T5.1.5.4.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.5.4.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b0)</span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.5.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.5.4.2.1">MTKD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.5.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.5.4.4.1">75.72 (+0.87)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.5.4.5.1">82.30 (+0.46)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.80 (+0.71)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.4.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.5.4.7.1">81.66 (+0.68)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.6.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.6.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.6.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.6.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.42 (-0.52)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.67 (-0.32)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.5.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.6.5.6.1" style="color:#333333;">87.13 (-0.61)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.6.5.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">81.43 (-0.50)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.7.6">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.7.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.7.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.7.6.2.1">O-P</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.7.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.7.6.4.1">75.91 (-0.03)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.7.6.5.1">82.11 (+0.12)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.6.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.7.6.6.1">87.87 (+0.13)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.7.6.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.7.6.7.1">81.97 (+0.04)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.8.7">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.8.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.8.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.8.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.8.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.15 (+0.21)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.8.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.85 (+0.86)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.8.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.98 (-0.76)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.8.7.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.13 (+0.20)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.9.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.9.8.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.9.8.1.1.1">
<span class="ltx_tr" id="S5.T5.1.9.8.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.9.8.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Changer</span></span>
<span class="ltx_tr" id="S5.T5.1.9.8.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.9.8.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">(MiT-b1)</span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.9.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.9.8.2.1">MTKD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.9.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_left" id="S5.T5.1.9.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.9.8.4.1">76.77 (+0.83)</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.9.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.9.8.5.1">83.38 (+1.39)</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.9.8.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.9.8.6.1">87.30 (-0.44)</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.9.8.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.9.8.7.1">82.66 (+0.73)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.10.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.10.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.10.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.10.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.10.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.95 (-0.42)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.10.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.71 (-0.60)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.10.9.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.10.9.6.1">85.50 (+0.17)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.10.9.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.12 (-0.53)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.11.10">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.11.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.11.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.11.10.2.1">O-P</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.11.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_left" id="S5.T5.1.11.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.11.10.4.1">73.56 (+0.19)</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.11.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.11.10.5.1">80.76 (+0.45)</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.11.10.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">85.07 (-0.26)</td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.11.10.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.11.10.7.1">79.92 (+0.27)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.12.11">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.12.11.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.12.11.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.12.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.12.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.12.11.4.1">73.82 (+0.45)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.12.11.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.32 (+0.01)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.12.11.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.12.11.6.1">86.33 (+1.00)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.12.11.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.12.11.7.1">79.91 (+0.26)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.13.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.13.12.1.1">CGNet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.13.12.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.13.12.2.1">MTKD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.13.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_left" id="S5.T5.1.13.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.78 (+0.41)</td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.13.12.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.13.12.5.1">80.61 (+0.29)</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.13.12.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">85.67 (+0.34)</td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.13.12.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.89 (+0.24)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.14.13">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.14.13.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.14.13.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.14.13.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.14.13.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.14.13.4.1">76.69 (+1.64)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.14.13.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.14.13.5.1">83.48 (+3.24)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.14.13.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">87.27 (-2.55)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.14.13.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.14.13.7.1">82.52 (+1.76)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.15.14">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.15.14.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.15.14.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.15.14.2.1">O-P</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T5.1.15.14.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_left" id="S5.T5.1.15.14.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.65 (+1.60)</td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.15.14.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.98 (+2.74)</td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.15.14.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.15.14.6.1">87.39 (-2.43)</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.1.15.14.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.49 (+1.73)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.16.15">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.16.15.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.16.15.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.16.15.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">3</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.16.15.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.16.15.4.1">76.85 (+1.80)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.16.15.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.99 (+2.75)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.16.15.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.16.15.6.1">88.05 (-1.77)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.16.15.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.16.15.7.1">82.56 (+1.80)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.17.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S5.T5.1.17.16.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.17.16.1.1">TTP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S5.T5.1.17.16.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S5.T5.1.17.16.2.1">MTKD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S5.T5.1.17.16.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">2</th>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.1.17.16.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.31 (+1.26)</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.1.17.16.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.1.17.16.5.1">83.24 (+3.00)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.1.17.16.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">86.81 (-3.01)</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T5.1.17.16.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">82.22 (+1.46)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of various change detection (CD) models evaluated on the SYSU-CD test dataset.  It displays the performance metrics of different models using different training strategies: the original training approach, the Origin-Partition (O-P) strategy, and the Multi-Teacher Knowledge Distillation (MTKD) framework. The metrics shown include mean Intersection over Union (mIoU), mean accuracy (mAcc), mean precision (mPrecision), and mean F1-score (mFscore).  These metrics assess the accuracy and robustness of each CD model in identifying changes in the images.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Experimental Results on SYSU-CD Test Set
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13407/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13407/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}