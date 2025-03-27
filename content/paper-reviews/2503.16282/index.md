---
title: "Generalized Few-shot 3D Point Cloud Segmentation with Vision-Language Model"
summary: "GFS-VL: Enhancing few-shot 3D segmentation by synergizing vision-language models with few-shot learning for robust real-world application."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Copenhagen",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16282 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhaochong An et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16282" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16282" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16282/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generalized Few-Shot Point Cloud Segmentation(GFS-PCS) improves models with few samples and retains base class segmentation. Current methods are limited by sparse knowledge. Meanwhile, 3D vision-language models(VLMs) have rich knowledge, but also noisy. Therefore, it is important to improve the performance of models in novel class generalization for real world usage.



This paper introduces a new framework named GFS-VL, to address these issues. It incorporates 3 new methods, including a pseudo-label selection to filter noisy data, adaptive infilling approach to enrich regions, and a novel-base mix strategy to embed few-shot samples into scenes. The work also introduces 2 challenging benchmarks. Experiments show the effectiveness of the framework.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GFS-VL framework synergizes dense pseudo-labels from 3D VLMs with precise few-shot samples for robust 3D point cloud segmentation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A prototype-guided pseudo-label selection and adaptive infilling strategy effectively expands novel class knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} New challenging benchmarks with diverse novel classes enable comprehensive evaluation of generalization capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers a novel GFS-PCS framework, bridging the gap between 3D VLMs and few-shot learning. By introducing challenging benchmarks and open-sourcing code, it propels real-world applications and inspires future research in 3D semantic understanding.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16282/x1.png)

> 🔼 Figure 1 compares the proposed framework with existing methods for generalized few-shot 3D point cloud segmentation. The top panel illustrates traditional approaches that refine class prototypes using support and query features. These methods are limited by the sparse data available in few-shot learning scenarios. In contrast, the bottom panel shows the proposed framework, which leverages the rich knowledge of 3D vision-language models (VLMs) to generate pseudo-labels for novel classes.  To address the noise inherent in VLM predictions, the framework calibrates these pseudo-labels with precise few-shot samples, effectively expanding the knowledge about novel classes while maintaining reliability.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Comparison of our framework with previous work. Top: Prior work [56, 66] primarily enhances prototypes through interaction modules that integrate support/query features, making predictions based on refined prototypes. However, they are limited by the sparse knowledge from few-shot samples. Bottom: Our framework addresses this limitation by leveraging the extensive open-world knowledge from 3D VLMs through pseudo-labels. We mitigate the noise inherent in 3D VLMs by calibrating their raw pseudo-labels with precise few-shot samples, thereby effectively expanding novel class knowledge while ensuring reliability.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">Dataset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">Base</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">Novel</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">Max (F)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">Min (F)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">Max (P)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">Min (P)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.2.1.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">S3DIS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">185</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">59,929</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">30,013</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.3.2.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">ScanNet</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">411</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">133</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">4,479</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">1,148</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4.3" style="background-color:#FFE6CC;">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.4.3.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.1.1" style="background-color:#FFE6CC;">ScanNet200</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.2.1" style="background-color:#FFE6CC;">12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.3.1" style="background-color:#FFE6CC;">45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.4.3.4.1" style="background-color:#FFE6CC;">733</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.4.3.5.1" style="background-color:#FFE6CC;">102</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.6.1" style="background-color:#FFE6CC;">12,641</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.7.1" style="background-color:#FFE6CC;">279</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5.4" style="background-color:#FFE6CC;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.2.1.5.4.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.5.4.1.1" style="background-color:#FFE6CC;">ScanNet++</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.5.4.2.1" style="background-color:#FFE6CC;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.5.4.3.1" style="background-color:#FFE6CC;">18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.5.4.4.1" style="background-color:#FFE6CC;">143</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S3.T1.2.1.5.4.5.1" style="background-color:#FFE6CC;">82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.4.6.1" style="background-color:#FFE6CC;">84,375</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.4.7.1" style="background-color:#FFE6CC;">604</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical overview of four datasets commonly used for evaluating Generalized Few-shot 3D Point Cloud Segmentation (GFS-PCS) models.  For each dataset, it lists the number of base classes (already known to the model) and novel classes (new classes the model must learn).  Crucially, it also shows the frequency distribution of novel classes.  'Max (F)' and 'Min (F)' represent the maximum and minimum number of times each novel class appears in the dataset, indicating class imbalance.  Similarly, 'Max (P)' and 'Min (P)' show the maximum and minimum average number of points per novel class, further highlighting the variability in data representation for different novel classes.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics for GFS-PCS benchmarks across four datasets. Base/Novel indicates the number of base and novel classes. Max/Min (F) is the maximum and minimum occurrences of each novel class across the entire dataset, while Max/Min (P) is the maximum and minimum average number of points per novel class.
> </details>





### In-depth insights


#### 3D VLM Synergy
The synergy of 3D Vision-Language Models (VLMs) holds immense potential for advancing various 3D understanding tasks. 3D VLMs can bring rich **semantic knowledge** learned from vast text and image datasets, offering broad comprehension of objects and scenes. However, VLMs often struggle with **geometric precision** and fine-grained details crucial for tasks like segmentation or reconstruction. By combining VLMs with methods specializing in 3D geometry, such as point cloud processing or neural radiance fields, we can create powerful systems. For example, a VLM could provide high-level semantic labels, while a point cloud network refines the object boundaries. This fusion addresses the limitations of each approach, resulting in more robust and accurate 3D scene understanding. The challenge lies in effectively **integrating information** from different modalities and representations, and future research directions include developing attention mechanisms, cross-modal embeddings, and end-to-end training strategies.

#### Pseudo-Labeling
**Pseudo-labeling** emerges as a pivotal technique, strategically leveraging the open-world knowledge embedded in 3D VLMs to augment few-shot learning. Recognizing the **inherent noise** in VLM predictions, frameworks emphasize **selective incorporation** of pseudo-labels, prioritizing high-quality regions through strategies like prototype-guided selection. This filters unreliable predictions, mitigating error accumulation. Crucially, methods employ adaptive infilling to address filtered regions, blending contextual knowledge from pseudo-labels and precise few-shot samples. This balances novel class knowledge expansion and data reliability. By combining noisy pseudo-labels with accurate samples, enhances novel class learning while maintaining robustness.

#### Novel-Base Mix
The Novel-Base Mix technique seems crucial for **integrating few-shot learning** with broader scene understanding. By embedding support samples directly into training scenes, the model learns novel classes within a relevant context. This **preserves contextual cues**, aiding the model in identifying hard-to-detect objects by not losing important relationships that may exist between objects or categories. Unlike standard data augmentation that focuses on object patterns independently, this approach emphasizes holistic scene comprehension that effectively improves novel class learning, yielding stronger generalization by having seen the object/category in relevant environments.

#### New Benchmarks
Creating new benchmarks is crucial for **advancing research**. Existing datasets might lack diversity or complexity, hindering accurate model evaluation. **Introducing new benchmarks** with more varied and challenging data helps to rigorously test the generalization capabilities of models. A good benchmark also fosters **fair comparisons** across different methods, providing a solid foundation for real-world applications and driving further innovation in the field. It is important to have a benchmark that **adequately reflects real-world complexities** so that it can encourage more research. 

#### Context Matters!
The importance of context in machine learning, particularly in tasks like few-shot learning and 3D scene understanding, cannot be overstated. **Models must move beyond simply recognizing objects in isolation and instead understand their relationships with the surrounding environment**. This is especially crucial when dealing with novel classes or adapting to new domains, as relying solely on object-level features can lead to poor generalization. **Context provides vital cues for disambiguation, helping models to infer the function, state, and likely interactions of objects within a scene**. For instance, the presence of a sink and mirror strongly suggests a bathroom setting, which in turn influences the interpretation of other objects present. Data augmentation strategies should also prioritize preserving contextual information to avoid misleading the models. **A holistic understanding of context is essential for achieving robust and reliable performance in real-world applications**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16282/x2.png)

> 🔼 Figure 2 illustrates the GFS-VL framework.  First, a novel-base mix (a,b) integrates support samples into the input point cloud (𝐗b) while preserving context. This augmented data is fed into a 3D Vision-Language Model (VLM) to generate raw predictions (𝐘̂). Then, pseudo-label selection (c) filters out noisy predictions from 𝐘̂ using support prototypes (𝐩c), and adaptive infilling (d) labels remaining unlabeled regions. The refined supervision (𝐘b′′) is then used to train the 3D segmentor.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overview of the proposed GFS-VL. (a), (b) Given an input point cloud 𝐗bsubscript𝐗b\mathbf{X}_{\rm b}bold_X start_POSTSUBSCRIPT roman_b end_POSTSUBSCRIPT, we apply a novel-base mix to embed support samples into the training scene while preserving essential context. The scene is then processed by a 3D VLM, using all class names as prompts to generate raw predictions 𝐘^^𝐘\mathbf{\hat{Y}}over^ start_ARG bold_Y end_ARG. Leveraging support prototypes {𝐩c}superscript𝐩c\{\mathbf{p}^{\rm c}\}{ bold_p start_POSTSUPERSCRIPT roman_c end_POSTSUPERSCRIPT }, the raw predictions undergo pseudo-label selection to filter out noisy regions, followed by adaptive infilling to label the filtered, unlabeled areas, yielding refined supervision 𝐘b′′subscriptsuperscript𝐘′′b\mathbf{Y}^{\rm\prime\prime}_{\rm b}bold_Y start_POSTSUPERSCRIPT ′ ′ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT roman_b end_POSTSUBSCRIPT for training the 3D segmentor. (c), (d) illustrate the details of the pseudo-label selection and adaptive infilling processes.
> </details>



![](https://arxiv.org/html/2503.16282/x3.png)

> 🔼 This figure presents a qualitative comparison of the segmentation results obtained using two different methods: GW [66] and the proposed GFS-VL method, on the ScanNet200 dataset.  The comparison highlights the effectiveness of the GFS-VL approach. For each scene, there are three columns: the ground truth segmentation, the segmentation produced by GW, and the segmentation produced by GFS-VL.  The color coding for each class is shown at the top of the figure, allowing for easy visual comparison between the methods. This allows one to visually assess the accuracy and quality of each segmentation method in segmenting various objects and scene elements within the selected scenes from the ScanNet200 dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Qualitative comparison between GW [66] and our GFS-VL on ScanNet200. Class colors are shown at the top.
> </details>



![](https://arxiv.org/html/2503.16282/x4.png)

> 🔼 Figure 4 presents a visual comparison of pseudo-labels before and after applying the proposed pseudo-label selection (PS) and adaptive infilling (AI) methods.  The figure showcases how PS effectively filters out noisy predictions from the 3D Vision-Language Model (VLM), resulting in cleaner pseudo-labels.  It then demonstrates how AI successfully addresses incomplete or missing labels, particularly for novel classes.  This is visualized by highlighting regions where AI identifies missed novel object classes (red circles) and fills in partially labeled regions (green circles) to improve the overall quality and completeness of the pseudo-labels.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Visualization of the improvements in pseudo-label quality after applying Pseudo-label Selection (PS) and Adaptive Infilling (AI). Note that AI effectively discovers missed novel classes in the red circles and completes partial pseudo-labels in the green circles.
> </details>



![](https://arxiv.org/html/2503.16282/x5.png)

> 🔼 Figure 5 compares three different data augmentation strategies: (a) Instance Mix randomly inserts novel class objects from foreground masks into scenes; (b) Mix3D overlays two scenes for out-of-context augmentation; and (c) Novel-Base Mix, which is the proposed method in this paper.  The red and green boxes highlight the novel samples incorporated into the training scene using the different techniques. Novel-Base Mix focuses on preserving the contextual cues in the scene, which is crucial for improved novel class learning.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Visual illustration of mixing strategies. The red and green boxes represent the two novel samples mixed into the scene.
> </details>



![](https://arxiv.org/html/2503.16282/x6.png)

> 🔼 This figure visualizes the results of the Novel-Base Mix data augmentation technique.  The Novel-Base Mix method integrates novel class samples into the training data while preserving the essential context of the base scene. This helps the model learn to identify novel classes more effectively.  The image shows several point cloud segmentation results. Each segmentation shows the same scene with base classes and two novel classes added.  The red and green boxes highlight the locations of the two novel samples which have been incorporated into the scene. The novel class labels are displayed at the top of the image for reference. The image demonstrates how the technique integrates the novel classes into a typical scene.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Visualization of the outputs from the proposed Novel-Base Mix. The red and green boxes represent the two novel samples mixed into the scene. The novel class colors are shown at the top.
> </details>



![](https://arxiv.org/html/2503.16282/x7.png)

> 🔼 Figure 7 presents a qualitative comparison of the performance of the proposed GFS-VL model against the GW model on the ScanNet200 dataset.  The figure displays several example point cloud segmentation results. Each row shows a different scene, with the 'Query' column showing the input point cloud, 'Ground Truth' showing the accurate segmentation labels, 'GW' showing the segmentation results produced by the GW model, and 'GFS-VL (Ours)' displaying the results from the proposed GFS-VL model.  The visualizations clearly highlight GFS-VL's improved accuracy and ability to generalize to novel classes, demonstrating its superior performance compared to the GW model. To enhance clarity and focus on the key differences, the color legend only includes classes present in the ground truth annotations for each scene.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Qualitative comparison between GW [66] and our GFS-VL on ScanNet200. The visualizations demonstrate the superior segmentation performance and novel class generalization capabilities of GFS-VL. For clarity, class colors are displayed on the right and are restricted to those present in the ground truth annotations.
> </details>



![](https://arxiv.org/html/2503.16282/x8.png)

> 🔼 Figure 8 visualizes the improvement in pseudo-label quality achieved by the proposed method's Pseudo-label Selection (PS) and Adaptive Infilling (AI) modules.  The figure showcases several examples of point cloud segmentations at different stages of processing. The first column ('Query') shows the initial input point cloud. The second column ('Base Class Labels') displays the base class labels before any novel class prediction. The third column ('Full Class Labels') displays the ground truth, including novel classes. The next three columns show the results after applying the 3D VLM, applying the Pseudo-label Selection (PS) module, and applying the Adaptive Infilling (AI) module. Red circles highlight novel objects identified by AI but missed by the initial 3D VLM prediction, while green circles show areas where AI successfully fills in previously incomplete or partially incorrect segmentation of novel classes. The colors at the top correspond to the class labels, offering a clear visual comparison between the different processing stages. This demonstrates how AI and PS refine the initially noisy 3D VLM predictions to produce much higher quality pseudo-labels.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Visualization of pseudo-label refinement using Pseudo-label Selection (PS) and Adaptive Infilling (AI). Red circles indicate novel objects discovered by AI that were missed in the raw pseudo-labels, while green circles indicate regions where AI completes previously partially segmented areas. For clarity, class colors are displayed at the top and correspond to labels present in the full class annotations.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.2.1.1.1.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.1.1.1.1">
<span class="ltx_p" id="S5.T2.2.1.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S5.T2.2.1.1.1.1.1.1.1">Method</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S5.T2.2.1.1.1.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">5-shot</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T2.2.1.1.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.1.1.3.1">
<span class="ltx_p" id="S5.T2.2.1.1.1.3.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.1.1.3.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S5.T2.2.1.1.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">1-shot</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.2.2.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.1.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.1.1.1" style="width:71.1pt;"></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.2.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.2.1.1" style="width:42.7pt;">mIoU-B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.3.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.3.1.1" style="width:42.7pt;">mIoU-N</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.4.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.4.1.1" style="width:42.7pt;">mIoU-A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.5.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.5.1.1" style="width:42.7pt;">HM</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.2.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.6.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.2.2.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.7.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.7.1.1" style="width:42.7pt;">mIoU-B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.8.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.8.1.1" style="width:42.7pt;">mIoU-N</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.9.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.9.1.1" style="width:42.7pt;">mIoU-A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.2.2.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.2.2.10.1">
<span class="ltx_p" id="S5.T2.2.1.2.2.10.1.1" style="width:42.7pt;">HM</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.3.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.3.3.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.1.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.1.1.1" style="width:71.1pt;">Fully Supervised</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.2.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.2.1.1" style="width:42.7pt;">68.70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.3.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.3.1.1" style="width:42.7pt;">39.32</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.4.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.4.1.1" style="width:42.7pt;">45.51</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.5.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.5.1.1" style="width:42.7pt;">50.02</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.6.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.3.3.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.7.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.7.1.1" style="width:42.7pt;">68.70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.8.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.8.1.1" style="width:42.7pt;">39.32</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.9.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.9.1.1" style="width:42.7pt;">45.51</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.3.3.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.3.3.10.1">
<span class="ltx_p" id="S5.T2.2.1.3.3.10.1.1" style="width:42.7pt;">50.02</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.4.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.4.4.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.1.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.1.1.1" style="width:71.1pt;">PIFS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.2.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.2.1.1" style="width:42.7pt;">28.78</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.3.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.3.1.1" style="width:42.7pt;">3.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.4.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.4.1.1" style="width:42.7pt;">9.07</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.5.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.5.1.1" style="width:42.7pt;">6.71</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.4.4.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.6.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.4.4.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.7.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.7.1.1" style="width:42.7pt;">17.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.8.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.8.1.1" style="width:42.7pt;">2.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.9.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.9.1.1" style="width:42.7pt;">6.02</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.1.4.4.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.4.4.10.1">
<span class="ltx_p" id="S5.T2.2.1.4.4.10.1.1" style="width:42.7pt;">4.88</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.5.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.5.5.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.1.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.1.1.1" style="width:71.1pt;">attMPTI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.2.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.2.1.1" style="width:42.7pt;">37.13</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.3.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.3.1.1" style="width:42.7pt;">4.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.4.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.4.1.1" style="width:42.7pt;">11.76</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.5.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.5.1.1" style="width:42.7pt;">8.79</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.6.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.5.5.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.7.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.7.1.1" style="width:42.7pt;">54.84</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.8.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.8.1.1" style="width:42.7pt;">3.28</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.9.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.9.1.1" style="width:42.7pt;">14.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.5.5.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.5.5.10.1">
<span class="ltx_p" id="S5.T2.2.1.5.5.10.1.1" style="width:42.7pt;">6.17</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.6.6">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.6.6.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.1.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.1.1.1" style="width:71.1pt;">COSeg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.2.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.2.1.1" style="width:42.7pt;">57.67</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.3.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.3.1.1" style="width:42.7pt;">5.21</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.4.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.4.1.1" style="width:42.7pt;">16.25</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.5.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.5.1.1" style="width:42.7pt;">9.54</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.6.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.6.6.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.7.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.7.1.1" style="width:42.7pt;">47.03</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.8.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.8.1.1" style="width:42.7pt;">4.03</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.9.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.9.1.1" style="width:42.7pt;">13.09</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.6.6.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.6.6.10.1">
<span class="ltx_p" id="S5.T2.2.1.6.6.10.1.1" style="width:42.7pt;">7.42</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.7.7">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.7.7.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.1.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.1.1.1" style="width:71.1pt;">GW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.2.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.2.1.1" style="width:42.7pt;">59.28</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.3.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.3.1.1" style="width:42.7pt;">8.30</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.4.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.4.1.1" style="width:42.7pt;">19.03</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.5.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.5.1.1" style="width:42.7pt;">14.55</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.6.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.7.7.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.7.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.7.1.1" style="width:42.7pt;">55.23</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.8.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.8.1.1" style="width:42.7pt;">6.47</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.9.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.9.1.1" style="width:42.7pt;">16.74</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.1.7.7.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.7.7.10.1">
<span class="ltx_p" id="S5.T2.2.1.7.7.10.1.1" style="width:42.7pt;">11.56</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.8.8">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.2.1.8.8.1" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.1.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S5.T2.2.1.8.8.1.1.1.1" style="background-color:#E6E6E6;">GFS-VL (ours)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.2" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.2.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.2.1.1.1" style="background-color:#E6E6E6;">67.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.3" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.3.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.3.1.1.1" style="background-color:#E6E6E6;">31.67</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.4" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.4.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.4.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.4.1.1.1" style="background-color:#E6E6E6;">39.23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.5" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.5.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.5.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.5.1.1.1" style="background-color:#E6E6E6;">43.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.6" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.6.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T2.2.1.8.8.6.1.1.1" style="background-color:#E6E6E6;"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.7" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.7.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.7.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.7.1.1.1" style="background-color:#E6E6E6;">68.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.8" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.8.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.8.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.8.1.1.1" style="background-color:#E6E6E6;">29.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.9" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.9.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.9.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.9.1.1.1" style="background-color:#E6E6E6;">37.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.1.8.8.10" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.8.8.10.1">
<span class="ltx_p" id="S5.T2.2.1.8.8.10.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.8.8.10.1.1.1" style="background-color:#E6E6E6;">40.92</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different methods on the ScanNet200 benchmark dataset for generalized few-shot 3D point cloud segmentation.  The methods compared include several baselines from prior work and the proposed method (GFS-VL).  The performance is evaluated using four metrics: mean Intersection over Union (mIoU) for base classes (mIoU-B), mIoU for novel classes (mIoU-N), mIoU for all classes (mIoU-A), and the harmonic mean of mIoU-B and mIoU-N (HM). Results are shown for both 5-shot and 1-shot settings, indicating the number of support samples used for novel class learning.  The best performing method for each metric is shown in bold.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparisons of our method with baselines on the new ScanNet200 benchmark. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.2.1.1.1.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.1.1.1.1">
<span class="ltx_p" id="S5.T3.2.1.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S5.T3.2.1.1.1.1.1.1.1">Method</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S5.T3.2.1.1.1.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">5-shot</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T3.2.1.1.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.1.1.3.1">
<span class="ltx_p" id="S5.T3.2.1.1.1.3.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.1.1.3.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S5.T3.2.1.1.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">1-shot</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.2.2.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.1.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.1.1.1" style="width:71.1pt;"></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.2.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.2.1.1" style="width:42.7pt;">mIoU-B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.3.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.3.1.1" style="width:42.7pt;">mIoU-N</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.4.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.4.1.1" style="width:42.7pt;">mIoU-A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.5.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.5.1.1" style="width:42.7pt;">HM</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.2.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.6.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.2.2.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.7.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.7.1.1" style="width:42.7pt;">mIoU-B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.8.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.8.1.1" style="width:42.7pt;">mIoU-N</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.9.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.9.1.1" style="width:42.7pt;">mIoU-A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.2.2.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.2.2.10.1">
<span class="ltx_p" id="S5.T3.2.1.2.2.10.1.1" style="width:42.7pt;">HM</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.2.1.3.3.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.1.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.1.1.1" style="width:71.1pt;">Fully Supervised</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.2.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.2.1.1" style="width:42.7pt;">65.45</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.3.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.3.1.1" style="width:42.7pt;">37.24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.4.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.4.1.1" style="width:42.7pt;">48.53</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.5.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.5.1.1" style="width:42.7pt;">47.47</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.6.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.3.3.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.7.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.7.1.1" style="width:42.7pt;">65.45</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.8.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.8.1.1" style="width:42.7pt;">37.24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.9.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.9.1.1" style="width:42.7pt;">48.53</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.3.3.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.3.3.10.1">
<span class="ltx_p" id="S5.T3.2.1.3.3.10.1.1" style="width:42.7pt;">47.47</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.4.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.2.1.4.4.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.1.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.1.1.1" style="width:71.1pt;">PIFS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.2.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.2.1.1" style="width:42.7pt;">39.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.3.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.3.1.1" style="width:42.7pt;">5.74</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.4.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.4.1.1" style="width:42.7pt;">19.44</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.5.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.5.1.1" style="width:42.7pt;">10.03</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.4.4.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.6.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.4.4.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.7.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.7.1.1" style="width:42.7pt;">36.66</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.8.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.8.1.1" style="width:42.7pt;">4.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.9.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.9.1.1" style="width:42.7pt;">17.63</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.1.4.4.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.4.4.10.1">
<span class="ltx_p" id="S5.T3.2.1.4.4.10.1.1" style="width:42.7pt;">8.71</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.5.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.5.5.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.1.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.1.1.1" style="width:71.1pt;">attMPTI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.2.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.2.1.1" style="width:42.7pt;">55.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.3.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.3.1.1" style="width:42.7pt;">4.19</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.4.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.4.1.1" style="width:42.7pt;">24.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.5.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.5.1.1" style="width:42.7pt;">7.78</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.6.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.5.5.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.7.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.7.1.1" style="width:42.7pt;">53.16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.8.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.8.1.1" style="width:42.7pt;">3.55</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.9.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.9.1.1" style="width:42.7pt;">23.40</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.5.5.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.5.5.10.1">
<span class="ltx_p" id="S5.T3.2.1.5.5.10.1.1" style="width:42.7pt;">6.66</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.6.6">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.6.6.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.1.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.1.1.1" style="width:71.1pt;">COSeg <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.2.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.2.1.1" style="width:42.7pt;">59.34</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.3.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.3.1.1" style="width:42.7pt;">6.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.4.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.4.1.1" style="width:42.7pt;">27.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.5.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.5.1.1" style="width:42.7pt;">12.45</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.6.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.6.6.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.7.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.7.1.1" style="width:42.7pt;">58.49</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.8.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.8.1.1" style="width:42.7pt;">6.24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.9.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.9.1.1" style="width:42.7pt;">27.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.6.6.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.6.6.10.1">
<span class="ltx_p" id="S5.T3.2.1.6.6.10.1.1" style="width:42.7pt;">11.26</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.7.7">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.1.7.7.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.1.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.1.1.1" style="width:71.1pt;">GW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.2.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.2.1.1" style="width:42.7pt;">51.35</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.3.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.3.1.1" style="width:42.7pt;">11.03</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.4.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.4.1.1" style="width:42.7pt;">27.16</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.5.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.5.1.1" style="width:42.7pt;">18.15</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.6.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.7.7.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.7.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.7.1.1" style="width:42.7pt;">46.71</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.8.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.8.1.1" style="width:42.7pt;">6.63</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.9.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.9.1.1" style="width:42.7pt;">22.66</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.1.7.7.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.7.7.10.1">
<span class="ltx_p" id="S5.T3.2.1.7.7.10.1.1" style="width:42.7pt;">11.59</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.8.8">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.2.1.8.8.1" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.1.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S5.T3.2.1.8.8.1.1.1.1" style="background-color:#E6E6E6;">GFS-VL (ours)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.2" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.2.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.2.1.1.1" style="background-color:#E6E6E6;">60.05</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.3" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.3.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.3.1.1.1" style="background-color:#E6E6E6;">21.66</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.4" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.4.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.4.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.4.1.1.1" style="background-color:#E6E6E6;">37.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.5" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.5.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.5.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.5.1.1.1" style="background-color:#E6E6E6;">31.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.6" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.6.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T3.2.1.8.8.6.1.1.1" style="background-color:#E6E6E6;"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.7" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.7.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.7.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.7.1.1.1" style="background-color:#E6E6E6;">61.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.8" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.8.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.8.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.8.1.1.1" style="background-color:#E6E6E6;">19.42</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.9" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.9.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.9.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.9.1.1.1" style="background-color:#E6E6E6;">36.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.1.8.8.10" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.8.8.10.1">
<span class="ltx_p" id="S5.T3.2.1.8.8.10.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.8.8.10.1.1.1" style="background-color:#E6E6E6;">29.47</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different methods on the ScanNet++ benchmark dataset for generalized few-shot 3D point cloud segmentation.  It shows the mean Intersection over Union (mIoU) scores for base classes (mIoU-B), novel classes (mIoU-N), and all classes (mIoU-A), as well as the harmonic mean (HM) of mIoU-B and mIoU-N.  The comparison includes the proposed method (GFS-VL) and several baseline methods (Fully Supervised, PIFS, attMPTI, COSeg, and GW) for both 5-shot and 1-shot scenarios.  The best performing method for each metric is highlighted in bold, demonstrating the effectiveness of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparisons of our method with baselines on the new ScanNet++ benchmark. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.2.1.1.1.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.1.1.1.1">
<span class="ltx_p" id="S5.T4.2.1.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S5.T4.2.1.1.1.1.1.1.1">Method</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S5.T4.2.1.1.1.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">5-shot</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T4.2.1.1.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.1.1.3.1">
<span class="ltx_p" id="S5.T4.2.1.1.1.3.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.1.1.3.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S5.T4.2.1.1.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">1-shot</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.1.2.2.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.1.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.1.1.1" style="width:71.1pt;"></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.2.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.2.1.1" style="width:42.7pt;">mIoU-B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.3.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.3.1.1" style="width:42.7pt;">mIoU-N</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.4.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.4.1.1" style="width:42.7pt;">mIoU-A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.5.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.5.1.1" style="width:42.7pt;">HM</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.2.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.6.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.2.2.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.7.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.7.1.1" style="width:42.7pt;">mIoU-B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.8.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.8.1.1" style="width:42.7pt;">mIoU-N</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.9.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.9.1.1" style="width:42.7pt;">mIoU-A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.2.2.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.2.2.10.1">
<span class="ltx_p" id="S5.T4.2.1.2.2.10.1.1" style="width:42.7pt;">HM</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.3.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.2.1.3.3.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.1.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.1.1.1" style="width:71.1pt;">Fully Supervised</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.2.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.2.1.1" style="width:42.7pt;">78.71</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.3.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.3.1.1" style="width:42.7pt;">60.37</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.4.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.4.1.1" style="width:42.7pt;">72.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.5.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.5.1.1" style="width:42.7pt;">68.33</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.6.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.3.3.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.7.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.7.1.1" style="width:42.7pt;">78.71</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.8.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.8.1.1" style="width:42.7pt;">60.37</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.9.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.9.1.1" style="width:42.7pt;">72.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.3.3.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.3.3.10.1">
<span class="ltx_p" id="S5.T4.2.1.3.3.10.1.1" style="width:42.7pt;">68.33</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.4.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.2.1.4.4.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.1.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.1.1.1" style="width:71.1pt;">attMPTI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib77" title=""><span class="ltx_text" style="font-size:90%;">77</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.2.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.2.1.1" style="width:42.7pt;">16.31</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.3.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.3.1.1" style="width:42.7pt;">3.12</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.4.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.4.1.1" style="width:42.7pt;">12.35</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.5.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.5.1.1" style="width:42.7pt;">5.21</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.4.4.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.6.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.4.4.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.7.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.7.1.1" style="width:42.7pt;">12.97</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.8.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.8.1.1" style="width:42.7pt;">1.62</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.9.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.9.1.1" style="width:42.7pt;">9.57</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.1.4.4.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.4.4.10.1">
<span class="ltx_p" id="S5.T4.2.1.4.4.10.1.1" style="width:42.7pt;">2.88</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.5.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.1.5.5.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.1.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.1.1.1" style="width:71.1pt;">PIFS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.2.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.2.1.1" style="width:42.7pt;">35.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.3.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.3.1.1" style="width:42.7pt;">3.21</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.4.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.4.1.1" style="width:42.7pt;">25.56</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.5.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.5.1.1" style="width:42.7pt;">5.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.6.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.5.5.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.7.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.7.1.1" style="width:42.7pt;">35.80</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.8.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.8.1.1" style="width:42.7pt;">2.54</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.9.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.9.1.1" style="width:42.7pt;">25.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.5.5.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.5.5.10.1">
<span class="ltx_p" id="S5.T4.2.1.5.5.10.1.1" style="width:42.7pt;">4.75</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.6.6">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.1.6.6.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.1.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.1.1.1" style="width:71.1pt;">CAPL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.2.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.2.1.1" style="width:42.7pt;">38.22</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.3.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.3.1.1" style="width:42.7pt;">14.39</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.4.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.4.1.1" style="width:42.7pt;">31.07</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.5.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.5.1.1" style="width:42.7pt;">20.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.6.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.6.6.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.7.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.7.1.1" style="width:42.7pt;">38.70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.8.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.8.1.1" style="width:42.7pt;">10.59</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.9.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.9.1.1" style="width:42.7pt;">30.27</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.6.6.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.6.6.10.1">
<span class="ltx_p" id="S5.T4.2.1.6.6.10.1.1" style="width:42.7pt;">16.53</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.7.7">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.1.7.7.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.1.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.1.1.1" style="width:71.1pt;">GW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.2.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.2.1.1" style="width:42.7pt;">40.18</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.3.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.3.1.1" style="width:42.7pt;">18.58</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.4.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.4.1.1" style="width:42.7pt;">33.70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.5.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.5.1.1" style="width:42.7pt;">25.39</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.6.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.7.7.6.1.1.1"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.7.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.7.1.1" style="width:42.7pt;">40.06</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.8.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.8.1.1" style="width:42.7pt;">14.78</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.9.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.9.1.1" style="width:42.7pt;">32.47</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.1.7.7.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.7.7.10.1">
<span class="ltx_p" id="S5.T4.2.1.7.7.10.1.1" style="width:42.7pt;">21.55</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.8.8">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.2.1.8.8.1" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.1.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="S5.T4.2.1.8.8.1.1.1.1" style="background-color:#E6E6E6;">GFS-VL (ours)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.2" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.2.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.2.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.2.1.1.1" style="background-color:#E6E6E6;">78.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.3" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.3.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.3.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.3.1.1.1" style="background-color:#E6E6E6;">51.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.4" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.4.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.4.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.4.1.1.1" style="background-color:#E6E6E6;">69.75</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.5" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.5.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.5.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.5.1.1.1" style="background-color:#E6E6E6;">61.91</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.6" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.6.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.6.1.1" style="width:0.3pt;"><span class="ltx_text ltx_phantom" id="S5.T4.2.1.8.8.6.1.1.1" style="background-color:#E6E6E6;"><span style="visibility:hidden">a</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.7" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.7.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.7.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.7.1.1.1" style="background-color:#E6E6E6;">78.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.8" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.8.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.8.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.8.1.1.1" style="background-color:#E6E6E6;">49.72</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.9" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.9.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.9.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.9.1.1.1" style="background-color:#E6E6E6;">69.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.1.8.8.10" style="background-color:#E6E6E6;padding-top:-0.25pt;padding-bottom:-0.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.8.8.10.1">
<span class="ltx_p" id="S5.T4.2.1.8.8.10.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.8.8.10.1.1.1" style="background-color:#E6E6E6;">60.88</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the proposed GFS-VL method against several baseline methods for generalized few-shot 3D point cloud segmentation on the established ScanNet benchmark.  It shows the performance metrics (mIoU-B for base classes, mIoU-N for novel classes, mIoU-A for all classes, and HM, the harmonic mean of mIoU-B and mIoU-N) achieved by each method under both 5-shot and 1-shot learning scenarios.  The 'Fully Supervised' row represents an upper performance bound, achieved by training a model with complete ground truth labels. The best performing method for each metric is highlighted in bold, allowing for easy comparison of the effectiveness of different approaches in handling both base and novel classes with limited training data.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparisons of our method with baselines on the old ScanNet benchmark. The best results are highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.st1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.st1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.st1.2.1.1.1.1" style="padding:-0.85pt 3.0pt;">PS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st1.2.1.1.1.2" style="padding:-0.85pt 3.0pt;">AI</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st1.2.1.1.1.3" style="padding:-0.85pt 3.0pt;">NB-Mix</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st1.2.1.1.1.4" style="padding:-0.85pt 3.0pt;">mIoU-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st1.2.1.1.1.5" style="padding:-0.85pt 3.0pt;">mIoU-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st1.2.1.1.1.6" style="padding:-0.85pt 3.0pt;">mIoU-A</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st1.2.1.1.1.7" style="padding:-0.85pt 3.0pt;">HM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.st1.2.1.2.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T5.st1.2.1.2.1.1" style="padding:-0.85pt 3.0pt;"></th>
<td class="ltx_td ltx_border_t" id="S5.T5.st1.2.1.2.1.2" style="padding:-0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T5.st1.2.1.2.1.3" style="padding:-0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st1.2.1.2.1.4" style="padding:-0.85pt 3.0pt;">65.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st1.2.1.2.1.5" style="padding:-0.85pt 3.0pt;">22.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st1.2.1.2.1.6" style="padding:-0.85pt 3.0pt;">31.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st1.2.1.2.1.7" style="padding:-0.85pt 3.0pt;">33.28</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st1.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st1.2.1.3.2.1" style="padding:-0.85pt 3.0pt;">✓</th>
<td class="ltx_td" id="S5.T5.st1.2.1.3.2.2" style="padding:-0.85pt 3.0pt;"></td>
<td class="ltx_td" id="S5.T5.st1.2.1.3.2.3" style="padding:-0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.3.2.4" style="padding:-0.85pt 3.0pt;">69.26</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.3.2.5" style="padding:-0.85pt 3.0pt;">26.51</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.3.2.6" style="padding:-0.85pt 3.0pt;">35.51</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.3.2.7" style="padding:-0.85pt 3.0pt;">38.35</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st1.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st1.2.1.4.3.1" style="padding:-0.85pt 3.0pt;">✓</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.4.3.2" style="padding:-0.85pt 3.0pt;">✓</td>
<td class="ltx_td" id="S5.T5.st1.2.1.4.3.3" style="padding:-0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.4.3.4" style="padding:-0.85pt 3.0pt;">66.25</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.4.3.5" style="padding:-0.85pt 3.0pt;">28.03</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.4.3.6" style="padding:-0.85pt 3.0pt;">36.07</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.4.3.7" style="padding:-0.85pt 3.0pt;">39.39</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st1.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st1.2.1.5.4.1" style="padding:-0.85pt 3.0pt;">✓</th>
<td class="ltx_td" id="S5.T5.st1.2.1.5.4.2" style="padding:-0.85pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.5.4.3" style="padding:-0.85pt 3.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.5.4.4" style="padding:-0.85pt 3.0pt;">66.94</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.5.4.5" style="padding:-0.85pt 3.0pt;">28.21</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.5.4.6" style="padding:-0.85pt 3.0pt;">36.36</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st1.2.1.5.4.7" style="padding:-0.85pt 3.0pt;">39.69</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st1.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.st1.2.1.6.5.1" style="padding:-0.85pt 3.0pt;">✓</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st1.2.1.6.5.2" style="padding:-0.85pt 3.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st1.2.1.6.5.3" style="padding:-0.85pt 3.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st1.2.1.6.5.4" style="padding:-0.85pt 3.0pt;">67.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st1.2.1.6.5.5" style="padding:-0.85pt 3.0pt;">31.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st1.2.1.6.5.6" style="padding:-0.85pt 3.0pt;">39.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st1.2.1.6.5.7" style="padding:-0.85pt 3.0pt;">43.22</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5a presents ablation study results assessing the individual and combined contributions of the three novel techniques introduced in the GFS-VL framework: Pseudo-label Selection (PS), Adaptive Infilling (AI), and Novel-Base Mix (NB-Mix).  Each row represents a different combination of these techniques, showing the impact on mIoU-B (base class mean Intersection over Union), mIoU-N (novel class mIoU), mIoU-A (overall mIoU), and HM (harmonic mean of mIoU-B and mIoU-N) metrics. The baseline uses raw pseudo-labels from the 3D VLM without any filtering or refinement.  The results demonstrate the incremental improvements achieved by progressively incorporating PS, AI, and NB-Mix into the framework, highlighting their effectiveness in enhancing the accuracy and completeness of the novel class predictions.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.st2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.st2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.st2.2.1.1.1.1" style="padding:0.25pt 3.0pt;">3D VLM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st2.2.1.1.1.2" style="padding:0.25pt 3.0pt;">mIoU-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st2.2.1.1.1.3" style="padding:0.25pt 3.0pt;">mIoU-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st2.2.1.1.1.4" style="padding:0.25pt 3.0pt;">mIoU-A</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st2.2.1.1.1.5" style="padding:0.25pt 3.0pt;">HM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.st2.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.st2.2.1.2.1.1" style="padding:0.25pt 3.0pt;">RegionPLC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st2.2.1.2.1.2" style="padding:0.25pt 3.0pt;">46.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st2.2.1.2.1.3" style="padding:0.25pt 3.0pt;">23.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st2.2.1.2.1.4" style="padding:0.25pt 3.0pt;">28.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st2.2.1.2.1.5" style="padding:0.25pt 3.0pt;">31.56</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st2.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st2.2.1.3.2.1" style="padding:0.25pt 3.0pt;">Ours (RegionPLC)</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.3.2.2" style="padding:0.25pt 3.0pt;">67.42</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.3.2.3" style="padding:0.25pt 3.0pt;">31.81</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.3.2.4" style="padding:0.25pt 3.0pt;">39.30</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.3.2.5" style="padding:0.25pt 3.0pt;">43.22</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st2.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st2.2.1.4.3.1" style="padding:0.25pt 3.0pt;">Openscene <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.4.3.2" style="padding:0.25pt 3.0pt;">53.07</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.4.3.3" style="padding:0.25pt 3.0pt;">15.16</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.4.3.4" style="padding:0.25pt 3.0pt;">23.14</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st2.2.1.4.3.5" style="padding:0.25pt 3.0pt;">23.58</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st2.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.st2.2.1.5.4.1" style="padding:0.25pt 3.0pt;">Ours (Openscene)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st2.2.1.5.4.2" style="padding:0.25pt 3.0pt;">68.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st2.2.1.5.4.3" style="padding:0.25pt 3.0pt;">20.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st2.2.1.5.4.4" style="padding:0.25pt 3.0pt;">30.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st2.2.1.5.4.5" style="padding:0.25pt 3.0pt;">31.07</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results, specifically focusing on the impact of different components within the GFS-VL framework. It details the effects of using raw pseudo-labels, pseudo-label selection, adaptive infilling, and the novel-base mix strategy on the model's performance, measured by mIoU-B (base class mIoU), mIoU-N (novel class mIoU), mIoU-A (overall mIoU), and HM (harmonic mean of mIoU-B and mIoU-N).  The results showcase the incremental improvement achieved by adding each component and the overall effectiveness of the GFS-VL framework.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.st3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.st3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.st3.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\delta" class="ltx_Math" display="inline" id="S5.T5.st3.1.1.1.1.m1.1"><semantics id="S5.T5.st3.1.1.1.1.m1.1a"><mi id="S5.T5.st3.1.1.1.1.m1.1.1" xref="S5.T5.st3.1.1.1.1.m1.1.1.cmml">δ</mi><annotation-xml encoding="MathML-Content" id="S5.T5.st3.1.1.1.1.m1.1b"><ci id="S5.T5.st3.1.1.1.1.m1.1.1.cmml" xref="S5.T5.st3.1.1.1.1.m1.1.1">𝛿</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.st3.1.1.1.1.m1.1c">\delta</annotation><annotation encoding="application/x-llamapun" id="S5.T5.st3.1.1.1.1.m1.1d">italic_δ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st3.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">mIoU-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st3.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">mIoU-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st3.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">mIoU-A</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st3.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">HM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.st3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.st3.1.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">0.80</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st3.1.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st3.1.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">30.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st3.1.1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">38.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st3.1.1.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">41.77</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st3.1.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">0.85</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">66.29</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">31.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">38.43</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.3.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">42.24</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st3.1.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">0.90</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">67.42</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">31.81</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">39.30</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st3.1.1.4.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">43.22</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st3.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.st3.1.1.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">0.95</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st3.1.1.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">66.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st3.1.1.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">30.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st3.1.1.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">38.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st3.1.1.5.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">41.94</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5c presents ablation study results, specifically focusing on how the threshold (δ) in the Adaptive Infilling (AI) module impacts the model's performance. It shows that various thresholds were tested, and δ = 0.9 achieves the best results.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.st4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.st4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.st4.1.1.1.1" style="padding:-0.5pt 2.4pt;"><math alttext="\tau" class="ltx_Math" display="inline" id="S5.T5.st4.1.1.1.1.m1.1"><semantics id="S5.T5.st4.1.1.1.1.m1.1a"><mi id="S5.T5.st4.1.1.1.1.m1.1.1" xref="S5.T5.st4.1.1.1.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S5.T5.st4.1.1.1.1.m1.1b"><ci id="S5.T5.st4.1.1.1.1.m1.1.1.cmml" xref="S5.T5.st4.1.1.1.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.st4.1.1.1.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S5.T5.st4.1.1.1.1.m1.1d">italic_τ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st4.1.1.1.2" style="padding:-0.5pt 2.4pt;">mIoU-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st4.1.1.1.3" style="padding:-0.5pt 2.4pt;">mIoU-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st4.1.1.1.4" style="padding:-0.5pt 2.4pt;">mIoU-A</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st4.1.1.1.5" style="padding:-0.5pt 2.4pt;">HM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.st4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.st4.1.1.2.1.1" style="padding:-0.5pt 2.4pt;">0.5</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st4.1.1.2.1.2" style="padding:-0.5pt 2.4pt;">67.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st4.1.1.2.1.3" style="padding:-0.5pt 2.4pt;">31.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st4.1.1.2.1.4" style="padding:-0.5pt 2.4pt;">38.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st4.1.1.2.1.5" style="padding:-0.5pt 2.4pt;">42.73</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st4.1.1.3.2.1" style="padding:-0.5pt 2.4pt;">0.6</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.3.2.2" style="padding:-0.5pt 2.4pt;">67.42</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.3.2.3" style="padding:-0.5pt 2.4pt;">31.81</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.3.2.4" style="padding:-0.5pt 2.4pt;">39.30</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.3.2.5" style="padding:-0.5pt 2.4pt;">43.22</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st4.1.1.4.3.1" style="padding:-0.5pt 2.4pt;">0.7</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.4.3.2" style="padding:-0.5pt 2.4pt;">66.69</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.4.3.3" style="padding:-0.5pt 2.4pt;">30.56</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.4.3.4" style="padding:-0.5pt 2.4pt;">38.17</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st4.1.1.4.3.5" style="padding:-0.5pt 2.4pt;">41.92</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.st4.1.1.5.4.1" style="padding:-0.5pt 2.4pt;">0.8</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st4.1.1.5.4.2" style="padding:-0.5pt 2.4pt;">68.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st4.1.1.5.4.3" style="padding:-0.5pt 2.4pt;">30.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st4.1.1.5.4.4" style="padding:-0.5pt 2.4pt;">38.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st4.1.1.5.4.5" style="padding:-0.5pt 2.4pt;">42.28</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results, specifically focusing on the impact of varying the threshold (τ) in the Pseudo-label Selection (PS) module of the GFS-VL framework.  The experiment is performed on the ScanNet200 dataset with a single set of 5-shot support samples. The table shows how changes in the threshold affect the performance metrics (mIoU-B, mIoU-N, mIoU-A, and HM) of the model. It demonstrates the robustness of the Pseudo-label Selection module across different threshold values.
> <details>
> <summary>read the caption</summary>
> (d)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.st5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.st5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.st5.1.1.1.1" style="padding:-0.5pt 2.4pt;"><math alttext="n" class="ltx_Math" display="inline" id="S5.T5.st5.1.1.1.1.m1.1"><semantics id="S5.T5.st5.1.1.1.1.m1.1a"><mi id="S5.T5.st5.1.1.1.1.m1.1.1" xref="S5.T5.st5.1.1.1.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S5.T5.st5.1.1.1.1.m1.1b"><ci id="S5.T5.st5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.st5.1.1.1.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.st5.1.1.1.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S5.T5.st5.1.1.1.1.m1.1d">italic_n</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st5.1.1.1.2" style="padding:-0.5pt 2.4pt;">mIoU-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st5.1.1.1.3" style="padding:-0.5pt 2.4pt;">mIoU-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st5.1.1.1.4" style="padding:-0.5pt 2.4pt;">mIoU-A</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st5.1.1.1.5" style="padding:-0.5pt 2.4pt;">HM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.st5.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.st5.1.1.2.1.1" style="padding:-0.5pt 2.4pt;">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st5.1.1.2.1.2" style="padding:-0.5pt 2.4pt;">67.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st5.1.1.2.1.3" style="padding:-0.5pt 2.4pt;">27.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st5.1.1.2.1.4" style="padding:-0.5pt 2.4pt;">35.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st5.1.1.2.1.5" style="padding:-0.5pt 2.4pt;">38.68</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st5.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st5.1.1.3.2.1" style="padding:-0.5pt 2.4pt;">2</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.3.2.2" style="padding:-0.5pt 2.4pt;">67.95</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.3.2.3" style="padding:-0.5pt 2.4pt;">27.71</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.3.2.4" style="padding:-0.5pt 2.4pt;">36.18</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.3.2.5" style="padding:-0.5pt 2.4pt;">39.36</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st5.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st5.1.1.4.3.1" style="padding:-0.5pt 2.4pt;">3</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.4.3.2" style="padding:-0.5pt 2.4pt;">66.94</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.4.3.3" style="padding:-0.5pt 2.4pt;">28.21</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.4.3.4" style="padding:-0.5pt 2.4pt;">36.36</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st5.1.1.4.3.5" style="padding:-0.5pt 2.4pt;">39.69</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st5.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.st5.1.1.5.4.1" style="padding:-0.5pt 2.4pt;">4</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st5.1.1.5.4.2" style="padding:-0.5pt 2.4pt;">67.84</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st5.1.1.5.4.3" style="padding:-0.5pt 2.4pt;">27.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st5.1.1.5.4.4" style="padding:-0.5pt 2.4pt;">36.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st5.1.1.5.4.5" style="padding:-0.5pt 2.4pt;">39.44</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5e shows the ablation study on the impact of using different numbers of novel mix blocks (n) on the model's performance. It demonstrates that the model is robust to variations in the number of blocks used in the novel-base mix strategy, indicating that the strategy effectively integrates novel class information into the training process, regardless of the precise number of blocks.
> <details>
> <summary>read the caption</summary>
> (e)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.st6.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.st6.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.st6.2.1.1.1.1" style="padding:2.25pt 2.4pt;">Backbone</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st6.2.1.1.1.2" style="padding:2.25pt 2.4pt;">mIoU-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st6.2.1.1.1.3" style="padding:2.25pt 2.4pt;">mIoU-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st6.2.1.1.1.4" style="padding:2.25pt 2.4pt;">mIoU-A</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st6.2.1.1.1.5" style="padding:2.25pt 2.4pt;">HM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.st6.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.st6.2.1.2.1.1" style="padding:2.25pt 2.4pt;">PTv3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st6.2.1.2.1.2" style="padding:2.25pt 2.4pt;">67.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st6.2.1.2.1.3" style="padding:2.25pt 2.4pt;">31.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st6.2.1.2.1.4" style="padding:2.25pt 2.4pt;">39.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st6.2.1.2.1.5" style="padding:2.25pt 2.4pt;">43.22</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st6.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.st6.2.1.3.2.1" style="padding:2.25pt 2.4pt;">SCN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st6.2.1.3.2.2" style="padding:2.25pt 2.4pt;">61.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st6.2.1.3.2.3" style="padding:2.25pt 2.4pt;">31.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st6.2.1.3.2.4" style="padding:2.25pt 2.4pt;">38.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st6.2.1.3.2.5" style="padding:2.25pt 2.4pt;">42.13</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5f presents ablation study results focusing on the impact of different backbones on the model's performance.  The table compares the model's performance using two different backbones: Point Transformer V3 (PTv3) and SparseConvNet (SCN).  The metrics used for comparison are mIoU-B (mean Intersection over Union for base classes), mIoU-N (mean IoU for novel classes), mIoU-A (mean IoU for all classes), and HM (harmonic mean of mIoU-B and mIoU-N).  The results demonstrate the model's robustness and generalizability across different backbones.
> <details>
> <summary>read the caption</summary>
> (f)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.st7.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.st7.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.st7.2.1.1.1.1" style="padding:0.65pt 2.4pt;">Mix</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st7.2.1.1.1.2" style="padding:0.65pt 2.4pt;">mIoU-B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st7.2.1.1.1.3" style="padding:0.65pt 2.4pt;">mIoU-N</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st7.2.1.1.1.4" style="padding:0.65pt 2.4pt;">mIoU-A</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.st7.2.1.1.1.5" style="padding:0.65pt 2.4pt;">HM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.st7.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.st7.2.1.2.1.1" style="padding:0.65pt 2.4pt;">Instance Mix</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st7.2.1.2.1.2" style="padding:0.65pt 2.4pt;">68.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st7.2.1.2.1.3" style="padding:0.65pt 2.4pt;">23.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st7.2.1.2.1.4" style="padding:0.65pt 2.4pt;">33.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.st7.2.1.2.1.5" style="padding:0.65pt 2.4pt;">35.44</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st7.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.st7.2.1.3.2.1" style="padding:0.65pt 2.4pt;">Mix3D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16282v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.st7.2.1.3.2.2" style="padding:0.65pt 2.4pt;">68.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st7.2.1.3.2.3" style="padding:0.65pt 2.4pt;">24.80</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st7.2.1.3.2.4" style="padding:0.65pt 2.4pt;">34.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.st7.2.1.3.2.5" style="padding:0.65pt 2.4pt;">36.42</td>
</tr>
<tr class="ltx_tr" id="S5.T5.st7.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.st7.2.1.4.3.1" style="padding:0.65pt 2.4pt;">NB-Mix</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st7.2.1.4.3.2" style="padding:0.65pt 2.4pt;">67.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st7.2.1.4.3.3" style="padding:0.65pt 2.4pt;">27.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st7.2.1.4.3.4" style="padding:0.65pt 2.4pt;">36.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.st7.2.1.4.3.5" style="padding:0.65pt 2.4pt;">39.36</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5g compares different data mixing strategies for integrating novel support samples into the training data.  The methods compared are Instance Mix, which randomly inserts novel class objects into scenes; Mix3D, which overlays two scenes to create out-of-context data augmentation; and the proposed Novel-Base Mix (NB-Mix).  The table shows the impact of each mixing strategy on the performance metrics mIoU-B, mIoU-N, mIoU-A, and HM (harmonic mean of mIoU-B and mIoU-N), demonstrating the effectiveness of NB-Mix in preserving essential scene context for improved novel class learning.
> <details>
> <summary>read the caption</summary>
> (g)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16282/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16282/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}