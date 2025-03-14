---
title: "GroundingSuite: Measuring Complex Multi-Granular Pixel Grounding"
summary: "GroundingSuite: A new benchmark that measures complex multi-granular pixel grounding to overcome current dataset limitations and push forward vision-language understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Huazhong University of Science & Technology",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10596 {{< /keyword >}}
{{< keyword icon="writer" >}} Rui Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10596" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10596" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10596/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Pixel grounding has become a central area, yet existing datasets have limitations like **limited categories, textual diversity, and annotation quality**. This constrains progress. To mitigate these issues, this paper introduces GroundingSuite which overcomes the issues to advance the field and offer more diverse and high-quality data for future research.



The paper offers **GSSculpt**, an annotation framework using multiple VLMs, and a large training dataset with 9.56M referring expressions and an evaluation benchmark of 3,800 images. Using the new training data, models achieve state-of-the-art results, demonstrating the effectiveness of GroundingSuite over current datasets. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces GroundingSuite, a new resource for pixel grounding tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents GSSculpt, an automated data annotation framework that leverages VLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates substantial performance improvements using models trained on the new dataset. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is important as it introduces a **new benchmark dataset** and an **annotation framework** that can propel future research in pixel grounding. The **scale and diversity** of the dataset address limitations of existing ones, enabling the development of more robust and generalizable models, paving the way for future advances. 

------
#### Visual Insights



![](https://arxiv.org/html/2503.10596/x1.png)

> 🔼 The figure illustrates the GSSculpt automatic annotation framework, a three-phase pipeline for generating high-quality pixel grounding data. Phase 1 (Entity Spatial Localization) identifies objects of interest and creates accurate segmentation masks using a combination of global caption generation, phrase grounding, and mask generation techniques.  Phase 2 (Grounding Text Generation) produces precise and unambiguous natural language descriptions for these objects, ensuring unique identification. Finally, Phase 3 (Noise Filtering) removes ambiguous or low-quality annotations, enhancing the overall reliability of the resulting dataset. Each phase is visually represented with example images and annotations.
> <details>
> <summary>read the caption</summary>
> Figure 1: GSScuplt Automatic Annotation Framework. Our pipeline consists of three sequential phases: (1) Entity Spatial Localization, where we first identify potential objects of interest and generate high-quality segmentation masks; (2) Grounding Text Generation, where we then create unambiguous natural language descriptions that uniquely reference the segmented objects; and (3) Noise Filtering, where we finally eliminate ambiguous or low-quality samples to ensure dataset reliability.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S1.T1.1.2.1.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.1.1" style="font-size:90%;">Benchmarks</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.2.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.2.1" style="font-size:90%;">Cat.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.2.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.3.1" style="font-size:90%;">Len.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.2.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.4.1" style="font-size:90%;">Stuff</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.2.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.5.1" style="font-size:90%;">Part</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.2.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.6.1" style="font-size:90%;">Multi</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.2.1.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.2.1.7.1" style="font-size:90%;">Single</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.1.3.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S1.T1.1.3.1.1.1" style="font-size:90%;">RefCOCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.1.3.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S1.T1.1.3.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.3.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.3.1.2.1" style="font-size:90%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.3.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.3.1.3.1" style="font-size:90%;">3.6</span></td>
<td class="ltx_td ltx_border_t" id="S1.T1.1.3.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.1.3.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S1.T1.1.3.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.3.1.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.3.1.7.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.4.2.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S1.T1.1.4.2.1.1" style="font-size:90%;">RefCOCO+ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.1.4.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S1.T1.1.4.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.1.4.2.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.4.2.2.1" style="font-size:90%;">80</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.4.2.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.4.2.3.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td" id="S1.T1.1.4.2.4" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td" id="S1.T1.1.4.2.5" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td" id="S1.T1.1.4.2.6" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.4.2.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.4.2.7.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.5.3.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S1.T1.1.5.3.1.1" style="font-size:90%;">RefCOCOg </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.1.5.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S1.T1.1.5.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.3.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.5.3.2.1" style="font-size:90%;">80</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.3.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.5.3.3.1" style="font-size:90%;">8.4</span></td>
<td class="ltx_td" id="S1.T1.1.5.3.4" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td" id="S1.T1.1.5.3.5" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td" id="S1.T1.1.5.3.6" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.5.3.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.5.3.7.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.6.4.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S1.T1.1.6.4.1.1" style="font-size:90%;">gRefCOCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.1.6.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S1.T1.1.6.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.4.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.6.4.2.1" style="font-size:90%;">80</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.4.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.6.4.3.1" style="font-size:90%;">3.7</span></td>
<td class="ltx_td" id="S1.T1.1.6.4.4" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td" id="S1.T1.1.6.4.5" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.4.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.6.4.6.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.6.4.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.6.4.7.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.1.7.5.1" style="padding-left:3.5pt;padding-right:3.5pt;">
<span class="ltx_text" id="S1.T1.1.7.5.1.1" style="font-size:90%;">RefCOCOm </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T1.1.7.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S1.T1.1.7.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.5.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.7.5.2.1" style="font-size:90%;">471</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.5.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.7.5.3.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td" id="S1.T1.1.7.5.4" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.5.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.7.5.5.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td" id="S1.T1.1.7.5.6" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.7.5.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.7.5.7.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S1.T1.1.1.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1" style="font-size:90%;">GSEval</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;"><math alttext="\infty" class="ltx_Math" display="inline" id="S1.T1.1.1.1.m1.1"><semantics id="S1.T1.1.1.1.m1.1a"><mi id="S1.T1.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S1.T1.1.1.1.m1.1.1.cmml">∞</mi><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.m1.1b"><infinity id="S1.T1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.m1.1.1"></infinity></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.m1.1c">\infty</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.m1.1d">∞</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.3.1" style="font-size:90%;">16.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.1.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.1.5.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.1.6.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text" id="S1.T1.1.1.7.1" style="font-size:90%;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the GroundingSuite benchmark with other existing Referring Expression Segmentation (RES) benchmarks.  It details the number of object categories, the average length of referring expressions, and the types of annotations supported by each benchmark.  The columns show the number of categories, the average length of referring expressions, and whether the benchmark includes annotations for stuff classes (semantic segmentation of things like sky or grass), part-level annotations (segmentation of object parts, like a person's arm or a car's wheel), support for multiple objects in a single referring expression, and support for single-object referring expressions.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparisons with previous Referring Expression Segmentation benchmark. ‘Cat.’ and ‘Len.’ denote the number of categories and average text length; Stuff: includes stuff classes; Part: includes part-level annotations; Multi: supports multi-object references; Single: supports single-object references;
> </details>





### In-depth insights


#### VLM Auto-Labeling
**Vision-Language Model (VLM) Auto-Labeling** marks a significant shift in dataset creation for pixel grounding tasks. Traditional manual annotation is laborious and restricts dataset scale and diversity. VLM-based auto-labeling offers a solution by leveraging the capabilities of VLMs to automatically generate segmentation masks and textual descriptions. A robust VLM auto-labeling framework should include components like entity spatial localization, grounding text generation, and noise filtering. **Entity spatial localization** aims to discover objects and generate masks, while **grounding text generation** creates precise descriptions. **Noise filtering** is crucial for removing ambiguous samples, ensuring high-quality data. Overall, this technique offers a scalable solution, but needs careful process design to keep annotation accuracy at a high level.

#### GSSculpt Details
Apologies, but the paper does not include a section titled 'GSSculpt Details.' Instead, the research focuses on an automatic annotation framework named GSSculpt, which is a core contribution. It employs a three-stage process. **Entity spatial localization** identifies regions of interest and creates masks, **grounding text generation** creates descriptions, and **noise filtering** eliminates ambiguities. The GSSculpt helps to resolve the issues with datasets, like their restricted scope to a limited amount of object categories and a deficiency of high-quality labels. **The framework produces accurate annotations with fewer steps compared to existing auto-labeling methods**. Further details would likely elaborate on the implementation specifics, such as model architectures, training regimes, and hyperparameter tuning for each stage within the GSSculpt pipeline, for achieving high efficiency.

#### GSTrain Scale
To check the effectiveness of data scale on model performance, the researchers train their method, EVF-SAM, using different proportions of the **GSTrain-10M dataset** without other external datasets like RefCOCO. Experimental results show a notable increasing trend in performance across all aspects as data proportion increases. Specifically, the performance showed a clear rising curve along with the increase of training data ratio, which demonstrated the scalability of the method. This result indicates the potential for even greater improvements by using a larger dataset of GSTrain.

#### GSEval Diversity
While 'GSEval Diversity' isn't a direct heading, its essence is clear. The research likely emphasizes the **dataset's rich variety**, encompassing different object categories (beyond common datasets), scenes, granularities (stuff, parts, multi-object). This addresses limitations of datasets like RefCOCO, which are constrained by COCO categories. A diverse GSEval would support **robust model evaluation**, testing generalization across scenarios. This dataset enables models to handle real-world complexity, going beyond single-object grounding to context-aware and fine-grained localization. Diversity is key for benchmarking holistic grounding capabilities.

#### GSEval Metrics
When evaluating GSEval, the authors prioritize thoroughness and real-world applicability through carefully chosen metrics. For pixel-level grounding, they wisely adopt **gIoU**, which provides a balanced assessment across objects of different sizes, crucial for a dataset with diverse granularities. A key decision is to shift away from cIoU, known to favor larger objects, highlighting a commitment to fair evaluation. The box-level grounding relies on **standard REC metrics** such as accuracy at various IoU thresholds. The emphasis on the importance of **GSEval** is to have a multi-granularity grounding benchmark for the community to use and accurately measure different large multimodal models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10596/x2.png)

> 🔼 This figure details the process of creating the GSEval benchmark dataset.  It begins with applying an automated annotation pipeline to unlabeled images from the COCO dataset. A Vision-Language Model (VLM) classifier then verifies the categories of the generated referring expressions.  The process continues by refining the initial segmentation masks (which may be coarse) into precise trimaps, and then applying matting techniques to achieve accurate object boundaries. Finally, human reviewers conduct a manual review of the results to ensure data quality and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Curation pipeline for GSEval Benchmark. First, we apply our annotation pipeline to unlabeled COCO images. Next, we use a VLM classifier to ensure the categories of referring prompts. Then, we translate the coarse masks to trimaps and apply matting methods for precise object boundaries. Finally, we organize human reviewers for manual checks.
> </details>



![](https://arxiv.org/html/2503.10596/x3.png)

> 🔼 Figure 3 displays a comparison of different methods' performance on the GSEval benchmark.  Each method was evaluated using publicly available code and pre-trained weights, without any fine-tuning or adaptation for this specific dataset. The zero-shot evaluation ensures that the comparison reflects the inherent capabilities of each model in handling unseen data, with all methods operating under the same conditions.
> <details>
> <summary>read the caption</summary>
> Figure 3: The visualization comparisons of different methods on GSEval. All methods are evaluated under the zero-shot setting with the public code and weights.
> </details>



![](https://arxiv.org/html/2503.10596/x4.png)

> 🔼 Figure 4 presents a comparison of several methods' performance on the GSEval-BBox benchmark, focusing on bounding box accuracy.  Specifically, it visually illustrates the results of different models (InstructSeg, LISA, EVF-SAM) in localizing objects within images, highlighting the differences in their accuracy and ability to precisely identify bounding boxes according to the given textual descriptions. All models were evaluated using publicly available code and weights under zero-shot settings.
> <details>
> <summary>read the caption</summary>
> Figure 4: The visualization comparisons of differnet methods on our GSEval-BBox. All open-source methods are evaluated under the zero-shot setting with the public code and weights.
> </details>



![](https://arxiv.org/html/2503.10596/extracted/6278345/fig/wordcloud.png)

> 🔼 This word cloud visualizes the frequency of words used in the textual descriptions within the GSEval benchmark dataset.  It offers a quick overview of the types of objects, attributes, and relationships described in the dataset, highlighting the diversity and complexity of language used to refer to visual elements within the images.  The size of each word corresponds to its frequency of occurrence.
> <details>
> <summary>read the caption</summary>
> Figure 5: The word cloud of GSEval
> </details>



![](https://arxiv.org/html/2503.10596/x5.png)

> 🔼 Figure 7 presents a diverse set of examples from the GSEval benchmark, showcasing the variety of 'stuff' class and part-level annotations.  The images illustrate the complexity of real-world scenes and the challenges in accurately identifying and segmenting objects based on natural language descriptions. The 'stuff' class examples highlight the difficulty of segmenting amorphous regions, like 'sky' or 'water', while the part-level examples demonstrate the need for fine-grained understanding to locate and segment specific parts of objects, such as 'a dog's mouth' or 'a woman's hair'.  These examples emphasize the nuanced nature of pixel grounding and the importance of a robust benchmark for evaluating model performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: More selected samples from our GSEval. Stuff class and part level
> </details>



![](https://arxiv.org/html/2503.10596/x6.png)

> 🔼 Figure 7 presents additional examples from the GSEval benchmark dataset, showcasing both multi-object and single-object scenarios.  The images illustrate the diversity of scenes and object types included in the dataset, demonstrating its ability to evaluate models across various complexities in visual grounding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: More selected samples from our GSEval. Multi object and single object
> </details>



![](https://arxiv.org/html/2503.10596/x7.png)

> 🔼 This figure shows the prompt templates used in the GroundingSuite framework for generating global image captions and grounding texts for object localization.  The global caption prompt instructs the model to produce a concise, single-paragraph description of the image, avoiding speculation and focusing only on clearly visible elements. The grounding text generation prompt is more specific, asking for a short description of a particular object (identified by its category name and bounding box coordinates). It emphasizes clarity and distinction from other objects, providing detailed instructions on handling multiple objects or incorrect classifications.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt for global caption and grounding text generation
> </details>



![](https://arxiv.org/html/2503.10596/x8.png)

> 🔼 Figure 9 shows the prompts used in the noise filtering stage of the GSSculpt framework.  Three prompts are displayed, targeting different aspects of quality control. The first prompt is for a Vision-Language Model (VLM) to assess if a red-box mask accurately represents the referring expression.  It specifies criteria for accurate annotation, such as object consistency, completeness, and avoidance of redundancy. The second prompt is for classifying the referring expression into one of four categories: stuff, part, multi-object, or single object.  The third prompt provides instructions on providing a concise numerical classification (1-4) without detailed analysis. These prompts aim to efficiently filter out inaccurate or ambiguous annotations during dataset creation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Prompt for noise filtering
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T2.2.1.1.1" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.2.1.1.2" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.2.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.2.1.1.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.3.1" style="font-size:90%;">RefCOCO/+/g</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S5.T2.2.1.1.4" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.4.1" style="font-size:90%;">GSEval</span><span class="ltx_text" id="S5.T2.2.1.1.4.2" style="font-size:90%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.2.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.2.2.1.1" style="font-size:90%;">(AVG)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.2.2.2.1" style="font-size:90%;">Stuff</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.2.2.3.1" style="font-size:90%;">Part</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.2.2.4.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.2.2.5.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.2.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.2.2.6.1" style="font-size:90%;">All</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.2.3.3.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S5.T2.2.3.3.1.1" style="font-size:90%;">LAVT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S5.T2.2.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.3.3.2" rowspan="2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T2.2.3.3.2.1" style="font-size:90%;">Specialist</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.3.3.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.3.3.3.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.3.3.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.3.3.4.1" style="font-size:90%;">6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.3.3.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.3.3.5.1" style="font-size:90%;">10.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.3.3.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.3.3.6.1" style="font-size:90%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.3.3.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.3.3.7.1" style="font-size:90%;">25.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.3.3.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.3.3.8.1" style="font-size:90%;">22.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.4.4.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S5.T2.2.4.4.1.1" style="font-size:90%;">ReLA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S5.T2.2.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.4.4.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.4.4.2.1" style="font-size:90%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.4.4.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.4.4.3.1" style="font-size:90%;">3.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.4.4.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.4.4.4.1" style="font-size:90%;">8.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.4.4.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.4.4.5.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.4.4.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.4.4.6.1" style="font-size:90%;">19.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.4.4.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.4.4.7.1" style="font-size:90%;">19.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.2.5.5.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S5.T2.2.5.5.1.1" style="font-size:90%;">LISA-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib10" title=""><span class="ltx_text" style="font-size:90%;">10</span></a><span class="ltx_text" id="S5.T2.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.2.5.5.2" rowspan="5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T2.2.5.5.2.1" style="font-size:90%;">MLLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.5.5.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.5.5.3.1" style="font-size:90%;">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.5.5.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.5.5.4.1" style="font-size:90%;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.5.5.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.5.5.5.1" style="font-size:90%;">21.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.5.5.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.5.5.6.1" style="font-size:90%;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.5.5.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.5.5.7.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.5.5.8" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.5.5.8.1" style="font-size:90%;">57.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.6.6.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S5.T2.2.6.6.1.1" style="font-size:90%;">GLaMM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S5.T2.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.6.6.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.6.6.2.1" style="font-size:90%;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.6.6.3.1" style="font-size:90%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.6.6.4.1" style="font-size:90%;">16.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.6.6.5.1" style="font-size:90%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.6.6.6.1" style="font-size:90%;">42.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.6.6.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.6.6.7.1" style="font-size:90%;">57.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.7.7.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S5.T2.2.7.7.1.1" style="font-size:90%;">PSALM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="S5.T2.2.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.7.7.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.7.7.2.1" style="font-size:90%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.7.7.3.1" style="font-size:90%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.7.7.4.1" style="font-size:90%;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.7.7.5.1" style="font-size:90%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.7.7.6.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.7.7.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.7.7.7.1" style="font-size:90%;">37.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.8.8.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S5.T2.2.8.8.1.1" style="font-size:90%;">EVF-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S5.T2.2.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.8.8.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.8.8.2.1" style="font-size:90%;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.8.8.3.1" style="font-size:90%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.8.8.4.1" style="font-size:90%;">23.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.8.8.5.1" style="font-size:90%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.8.8.6.1" style="font-size:90%;">54.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.8.8.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.8.8.7.1" style="font-size:90%;">62.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T2.2.9.9.1" style="padding-left:15.0pt;padding-right:15.0pt;">
<span class="ltx_text" id="S5.T2.2.9.9.1.1" style="font-size:90%;">InstructSeg </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.2.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S5.T2.2.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.9.9.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.9.9.2.1" style="font-size:90%;">81.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.9.9.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.9.9.3.1" style="font-size:90%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.9.9.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.9.9.4.1" style="font-size:90%;">24.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.9.9.5" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.9.9.5.1" style="font-size:90%;">66.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.9.9.6" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.9.9.6.1" style="font-size:90%;">51.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.9.9.7" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T2.2.9.9.7.1" style="font-size:90%;">52.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of state-of-the-art Referring Expression Segmentation (RES) models on the GSEval benchmark.  It shows the gIoU scores achieved on four subsets of GSEval (Stuff, Part, Multi-object, and Single-object) for several leading RES methods.  For context, average cIoU scores on the RefCOCO, RefCOCO+, and gRefCOCO benchmarks are also provided for these same methods to facilitate a comparison between specialized RES models and more generalized approaches. This allows for assessment of model generalizability and performance on diverse aspects of visual grounding tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison among previous SOTA RES methods on our GSEval in terms of gIoU, while we report average cIoU for RefCOCO/+/g.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.2.1.1.1" rowspan="2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.2.1.1.2" rowspan="2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.2.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.2.1.1.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.3.1" style="font-size:90%;">RefCOCO/+/g</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S5.T3.2.1.1.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.4.1" style="font-size:90%;">GSEval-BBox</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.2.2.1" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.1.1" style="font-size:90%;">(AVG)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.2.1" style="font-size:90%;">Stuff</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.3.1" style="font-size:90%;">Part</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.4.1" style="font-size:90%;">Multi</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.5.1" style="font-size:90%;">Single</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.2.2.6.1" style="font-size:90%;">All</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.2.3.3.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.3.3.1.1" style="font-size:90%;">Gemini-1.5-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S5.T3.2.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.3.3.2" rowspan="4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T3.2.3.3.2.1" style="font-size:90%;">Proprietary Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.3.3.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.3.3.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.4.1" style="font-size:90%;">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.3.3.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.3.3.5.1" style="font-size:90%;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.3.3.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.3.3.6.1" style="font-size:90%;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.3.3.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.3.3.7.1" style="font-size:90%;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.3.3.8" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.3.3.8.1" style="font-size:90%;">74.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.2.4.4.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.4.4.1.1" style="font-size:90%;">Doubao-1.5-vision-pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S5.T3.2.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.4.4.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.4.4.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.3.1" style="font-size:90%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.4.4.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.4.1" style="font-size:90%;">19.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.4.4.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.5.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.4.4.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.6.1" style="font-size:90%;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.4.4.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.4.4.7.1" style="font-size:90%;">56.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.2.5.5.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.5.5.1.1" style="font-size:90%;">Claude-3.7-sonnet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S5.T3.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.5.5.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.3.1" style="font-size:90%;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.4.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.5.1" style="font-size:90%;">20.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.6.1" style="font-size:90%;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.5.5.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.5.5.7.1" style="font-size:90%;">23.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.2.6.6.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.6.6.1.1" style="font-size:90%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S5.T3.2.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.6.6.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.3.1" style="font-size:90%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.4.1" style="font-size:90%;">2.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.5.1" style="font-size:90%;">15.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.6.1" style="font-size:90%;">6.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.6.6.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.6.6.7.1" style="font-size:90%;">17.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.2.7.7.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.7.7.1.1" style="font-size:90%;">InternVL2.5-78B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S5.T3.2.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.2.7.7.2" rowspan="5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_italic" id="S5.T3.2.7.7.2.1" style="font-size:90%;">Open-source Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.7.7.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.3.1" style="font-size:90%;">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.7.7.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.4.1" style="font-size:90%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.7.7.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.5.1" style="font-size:90%;">16.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.7.7.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.6.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.7.7.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.7.1" style="font-size:90%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.7.7.8" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.7.7.8.1" style="font-size:90%;">62.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.2.8.8.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.8.8.1.1" style="font-size:90%;">InternVL2.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S5.T3.2.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.8.8.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.2.1" style="font-size:90%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.3.1" style="font-size:90%;">91.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.4.1" style="font-size:90%;">7.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.5.1" style="font-size:90%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.6.1" style="font-size:90%;">47.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.8.8.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.8.8.7.1" style="font-size:90%;">58.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.2.9.9.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.9.9.1.1" style="font-size:90%;">Qwen2.5-VL-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S5.T3.2.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.9.9.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.2.1" style="font-size:90%;">90.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.9.9.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.3.1" style="font-size:90%;">88.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.9.9.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.4.1" style="font-size:90%;">31.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.9.9.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.5.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.9.9.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.6.1" style="font-size:90%;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.9.9.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.9.9.7.1" style="font-size:90%;">62.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.2.10.10.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.10.10.1.1" style="font-size:90%;">Qwen2.5-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.10.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S5.T3.2.10.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.10.10.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.10.10.2.1" style="font-size:90%;">86.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.10.10.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.10.10.3.1" style="font-size:90%;">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.10.10.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.10.10.4.1" style="font-size:90%;">17.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.10.10.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.10.10.5.1" style="font-size:90%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.10.10.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.10.10.6.1" style="font-size:90%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.10.10.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.10.10.7.1" style="font-size:90%;">66.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.2.11.11.1" style="padding-left:12.0pt;padding-right:12.0pt;">
<span class="ltx_text" id="S5.T3.2.11.11.1.1" style="font-size:90%;">DeepSeek-VL2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.2.11.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S5.T3.2.11.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.11.11.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.11.11.2.1" style="font-size:90%;">93.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.11.11.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.11.11.3.1" style="font-size:90%;">86.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.11.11.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.11.11.4.1" style="font-size:90%;">12.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.11.11.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.11.11.5.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.11.11.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.11.11.6.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.11.11.7" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S5.T3.2.11.11.7.1" style="font-size:90%;">60.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various grounding methods on the GSEval-BBox benchmark.  GSEval-BBox is a bounding box version of the GSEval benchmark, focusing on evaluating object localization accuracy rather than pixel-perfect segmentation. The table shows the performance of both proprietary and open-source models across different categories within GSEval-BBox (stuff, part, multi, single) and an overall average. The metric used is referring expression comprehension accuracy (%), which assesses how accurately the models locate the objects described in the referring expressions.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison among previous grounding methods on our GSEval-BBox. All metrics measure referring expression comprehension accuracy (%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T4.2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.1.1" style="font-size:90%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T4.2.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.2.1" style="font-size:90%;">GSTrain-10M</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.3.1" style="font-size:90%;">GSEval</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.4.1" style="font-size:90%;">gRefCOCO</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.2.1.1.5.1" style="font-size:90%;">RefCOCOm</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T4.2.2.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.2.1.1.1" style="font-size:90%;">EVF-SAM</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T4.2.2.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.2.2.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.2.1.3.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.2.2.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.2.1.4.1" style="font-size:90%;">63.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.2.2.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.2.1.5.1" style="font-size:90%;">51.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T4.2.3.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.3.2.1.1" style="font-size:90%;">EVF-SAM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T4.2.3.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.3.2.2.1" style="font-size:90%;">✓</span></th>
<td class="ltx_td ltx_align_left" id="S6.T4.2.3.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S6.T4.2.3.2.3.1" style="font-size:90%;">77.3 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T4.2.3.2.3.2" style="width:2.8pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-10.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T4.2.3.2.3.2.1"><span class="ltx_text" id="S6.T4.2.3.2.3.2.1.1" style="font-size:90%;color:#FF0000;">+14.7</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.2.3.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S6.T4.2.3.2.4.1" style="font-size:90%;">66.4 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T4.2.3.2.4.2" style="width:2.2pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-8.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T4.2.3.2.4.2.1"><span class="ltx_text" id="S6.T4.2.3.2.4.2.1.1" style="font-size:90%;color:#FF0000;">+2.9</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_left" id="S6.T4.2.3.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S6.T4.2.3.2.5.1" style="font-size:90%;">55.3 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T4.2.3.2.5.2" style="width:2.2pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-8.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T4.2.3.2.5.2.1"><span class="ltx_text" id="S6.T4.2.3.2.5.2.1.1" style="font-size:90%;color:#FF0000;">+4.0</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T4.2.4.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.4.3.1.1" style="font-size:90%;">LISA-7B</span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T4.2.4.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.2.4.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.4.3.3.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.2.4.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.4.3.4.1" style="font-size:90%;">32.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.2.4.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.4.3.5.1" style="font-size:90%;">34.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T4.2.5.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.5.4.1.1" style="font-size:90%;">LISA-7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T4.2.5.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S6.T4.2.5.4.2.1" style="font-size:90%;">✓</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.2.5.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S6.T4.2.5.4.3.1" style="font-size:90%;">73.6 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T4.2.5.4.3.2" style="width:2.8pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-10.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T4.2.5.4.3.2.1"><span class="ltx_text" id="S6.T4.2.5.4.3.2.1.1" style="font-size:90%;color:#FF0000;">+16.0</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.2.5.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S6.T4.2.5.4.4.1" style="font-size:90%;">36.3 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T4.2.5.4.4.2" style="width:2.2pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-8.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T4.2.5.4.4.2.1"><span class="ltx_text" id="S6.T4.2.5.4.4.2.1.1" style="font-size:90%;color:#FF0000;">+4.1</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T4.2.5.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S6.T4.2.5.4.5.1" style="font-size:90%;">39.3 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T4.2.5.4.5.2" style="width:2.2pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-8.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T4.2.5.4.5.2.1"><span class="ltx_text" id="S6.T4.2.5.4.5.2.1.1" style="font-size:90%;color:#FF0000;">+5.1</span></p>
</span></div>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study evaluates the impact of the GroundingSuite training dataset (GSTrain-10M) on the performance of different pixel grounding methods.  Two representative methods, EVF-SAM and LISA-7B, were tested both with and without GSTrain-10M, and their performance was compared across multiple benchmarks: GSEval, gRefCOCO, and RefCOCOm. The results demonstrate the improvement in performance achieved by incorporating GSTrain-10M, highlighting its effectiveness in enhancing pixel grounding models' capabilities.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on the effectiveness of our dataset on different methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T5.2.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.1.1" style="font-size:90%;">Data</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T5.2.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.2.1" style="font-size:90%;">GSEval</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T5.2.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.3.1" style="font-size:90%;">RefCOCO</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T5.2.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.4.1" style="font-size:90%;">gRefCOCO</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T5.2.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.2.1.1.5.1" style="font-size:90%;">RefCOCOm</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T5.2.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T5.2.2.1.1.1" style="font-size:90%;">GranD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T5.2.2.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10596v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S6.T5.2.2.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T5.2.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T5.2.2.1.2.1" style="font-size:90%;">60.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T5.2.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T5.2.2.1.3.1" style="font-size:90%;">76.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T5.2.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T5.2.2.1.4.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T5.2.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T5.2.2.1.5.1" style="font-size:90%;">37.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T5.2.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T5.2.3.2.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T5.2.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T5.2.3.2.2.1" style="font-size:90%;">74.9 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T5.2.3.2.2.2" style="width:2.8pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-10.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T5.2.3.2.2.2.1"><span class="ltx_text" id="S6.T5.2.3.2.2.2.1.1" style="font-size:90%;color:#FF0000;">+14.9</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T5.2.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T5.2.3.2.3.1" style="font-size:90%;">76.7 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T5.2.3.2.3.2" style="width:2.2pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-8.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T5.2.3.2.3.2.1"><span class="ltx_text" id="S6.T5.2.3.2.3.2.1.1" style="font-size:90%;color:#FF0000;">+0.7</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T5.2.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T5.2.3.2.4.1" style="font-size:90%;">64.8 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T5.2.3.2.4.2" style="width:1.7pt;height:0.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(-6.4pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T5.2.3.2.4.2.1"><span class="ltx_text" id="S6.T5.2.3.2.4.2.1.1" style="font-size:90%;color:#008080;">-0.8</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T5.2.3.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S6.T5.2.3.2.5.1" style="font-size:90%;">39.5 </span>
<div class="ltx_inline-block ltx_transformed_outer" id="S6.T5.2.3.2.5.2" style="width:2.2pt;height:0.8pt;vertical-align:-0.1pt;"><span class="ltx_transformed_inner" style="transform:translate(-8.1pt,2.5pt) scale(0.120689383017458,0.120689383017458) ;">
<p class="ltx_p" id="S6.T5.2.3.2.5.2.1"><span class="ltx_text" id="S6.T5.2.3.2.5.2.1.1" style="font-size:90%;color:#FF0000;">+1.6</span></p>
</span></div>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study comparing the performance of models trained on different automatically generated datasets for pixel grounding.  The study contrasts the proposed GSTrain-10M dataset with the GranD dataset, evaluating their effectiveness on standard benchmarks like GSEval, gRefCOCO, and RefCOCOm.  The metrics likely represent performance scores such as Intersection over Union (IoU) demonstrating the impact of dataset quality on model accuracy. The purpose is to show the superiority of the proposed dataset over existing automatic annotation methods.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on the effectiveness of different automated datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T6.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T6.2.1.1.1" rowspan="2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.2.1.1.1.1" style="font-size:90%;">Ratio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S6.T6.2.1.1.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.2.1.1.2.1" style="font-size:90%;">GSEval</span></th>
</tr>
<tr class="ltx_tr" id="S6.T6.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T6.2.2.2.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.2.2.1.1" style="font-size:90%;">Stuff</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T6.2.2.2.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.2.2.2.1" style="font-size:90%;">Part</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T6.2.2.2.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.2.2.3.1" style="font-size:90%;">Multi</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S6.T6.2.2.2.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.2.2.4.1" style="font-size:90%;">Single</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T6.2.2.2.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.2.2.5.1" style="font-size:90%;">All</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T6.2.3.1.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.3.1.1.1" style="font-size:90%;">0%</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.3.1.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.3.1.2.1" style="font-size:90%;">85.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.3.1.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.3.1.3.1" style="font-size:90%;">23.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.3.1.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.3.1.4.1" style="font-size:90%;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T6.2.3.1.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.3.1.5.1" style="font-size:90%;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.2.3.1.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.3.1.6.1" style="font-size:90%;">62.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T6.2.4.2.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.4.2.1.1" style="font-size:90%;">20%</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.2.4.2.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.4.2.2.1" style="font-size:90%;">93.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.4.2.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.4.2.3.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.4.2.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.4.2.4.1" style="font-size:90%;">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.2.4.2.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.4.2.5.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.4.2.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.4.2.6.1" style="font-size:90%;">75.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T6.2.5.3.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.5.3.1.1" style="font-size:90%;">50%</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.2.5.3.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.5.3.2.1" style="font-size:90%;">94.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.5.3.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.5.3.3.1" style="font-size:90%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.5.3.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.5.3.4.1" style="font-size:90%;">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.2.5.3.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.5.3.5.1" style="font-size:90%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.2.5.3.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.5.3.6.1" style="font-size:90%;">79.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T6.2.6.4.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.6.4.1.1" style="font-size:90%;">100%</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.6.4.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.6.4.2.1" style="font-size:90%;">94.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.6.4.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.6.4.3.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.6.4.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.6.4.4.1" style="font-size:90%;">89.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S6.T6.2.6.4.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.6.4.5.1" style="font-size:90%;">72.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.2.6.4.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S6.T6.2.6.4.6.1" style="font-size:90%;">80.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the scalability of the model's performance.  It shows how the model's performance on different aspects of the task (Stuff, Part, Multi, Single, All) changes as the amount of training data increases from 0% to 100%.  This demonstrates the effect of dataset size on the model's ability to generalize and perform well across various types of grounding.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablations on the scalability.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10596/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10596/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}