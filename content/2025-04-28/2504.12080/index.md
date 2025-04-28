---
title: "DC-SAM: In-Context Segment Anything in Images and Videos via Dual Consistency"
summary: "DC-SAM: Adapting Segment Anything Model for in-context image and video segmentation with dual consistency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Beijing University of Posts and Telecommunications",]
showSummary: true
date: 2025-04-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12080 {{< /keyword >}}
{{< keyword icon="writer" >}} Mengshi Qi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12080" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12080" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12080/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent Segment Anything Models (SAMs) have shown remarkable performance in interactive segmentation but struggle with in-context segmentation, where the goal is to segment objects based on a single example. Existing methods often rely on backbone features alone, overlooking the distinctive properties of SAM-derived representations. This limitation impacts the accuracy, particularly in scenarios with limited semantic priors. Moreover, there is a lack of benchmarks for evaluating in-context video segmentation capabilities, hindering progress in this area. 



This paper presents Dual Consistency SAM (DC-SAM), a prompt-tuning method to adapt SAM for in-context segmentation in images and videos. It enhances SAM's prompt encoder by providing high-quality visual prompts and using a cycle-consistent cross-attention mechanism to ensure consistency between features and visual prompts. DC-SAM introduces a dual-branch design to leverage discriminative positive and negative prompts, and adapts this to video by mask-tube training. The authors introduce the first In-Context Video Object Segmentation (IC-VOS) benchmark to evaluate performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DC-SAM improves in-context segmentation by incorporating SAM features, using dual positive/negative prompts, and cyclic-consistent cross-attention. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new benchmark, IC-VOS, is introduced to evaluate in-context video object segmentation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments show state-of-the-art performance of DC-SAM on image and video in-context segmentation tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **DC-SAM, a novel approach for in-context segmentation** which is seamlessly extended to the video domain. The creation of IC-VOS, the **first benchmark for in-context video segmentation**, offers a valuable resource for the community, addressing a gap in existing benchmarks and fostering further research in video semantic understanding. DC-SAM achieves SOTA on IC-VOS,COCO, and PASCAL, demonstrating the potential impact of the research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12080/x1.png)

> 🔼 Figure 1 provides a comprehensive overview of the Dual Consistency Segment Anything Model (DC-SAM) and the In-Context Video Object Segmentation (IC-VOS) benchmark.  Part (a) compares different few-shot segmentation approaches, highlighting the unique features of DC-SAM. DC-SAM integrates multi-source features to generate positive and negative prompts, ensuring consistency in the prompt generation process. This approach allows DC-SAM to perform in-context segmentation for both images and videos by leveraging the strengths of SAM and SAM2.  Part (b) shows a visual representation of how DC-SAM processes both image and video inputs. Part (c) presents quantitative comparisons between DC-SAM and state-of-the-art methods on COCO-20, PASCAL-5, and the newly proposed IC-VOS benchmark, illustrating DC-SAM's performance improvements in terms of mean Intersection over Union (mIoU) and the J&F score.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the proposed DC-SAM method and IC-VOS benchmark. a) Comparison of the previous few-shot segmentation methods in 1), existing methods based on SAM/SAM2 in 2), and DC-SAM in 3). DC-SAM leverages multi-source features and generates positive and negative prompts by ensuring prompt consistency, integrating with SAM/SAM2 to achieve in-context segmentation for both images and videos; b) Visualization of image and video settings by DC-SAM; c) Quantitative comparison of DC-SAM with state-of-the-art approaches in terms of mIoU on COCO-20i and PASCAL-5i, 𝒥&ℱ𝒥ℱ\mathcal{J\&F}caligraphic_J & caligraphic_F on the IC-VOS benchmark.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.10.1">
<tr class="ltx_tr" id="S3.T1.10.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.10.1.1.1" rowspan="2"><span class="ltx_text" id="S3.T1.10.1.1.1.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.1.1.2" rowspan="2"><span class="ltx_text" id="S3.T1.10.1.1.2.1" style="font-size:90%;">Videos</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.1.1.3"><span class="ltx_text" id="S3.T1.10.1.1.3.1" style="font-size:90%;">Mean</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.1.1.4"><span class="ltx_text" id="S3.T1.10.1.1.4.1" style="font-size:90%;">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.1.1.5" rowspan="2"><span class="ltx_text" id="S3.T1.10.1.1.5.1" style="font-size:90%;">Classes</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.10.1.1.6"><span class="ltx_text" id="S3.T1.10.1.1.6.1" style="font-size:90%;">Annotations</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.2">
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.2.1"><span class="ltx_text" id="S3.T1.10.1.2.1.1" style="font-size:90%;">Frames</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.2.2"><span class="ltx_text" id="S3.T1.10.1.2.2.1" style="font-size:90%;">Frames</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.2.3"><span class="ltx_text" id="S3.T1.10.1.2.3.1" style="font-size:90%;">Type</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.10.1.3.1">
<span class="ltx_text" id="S3.T1.10.1.3.1.1" style="font-size:90%;">DAVIS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib27" title="">27</a><span class="ltx_text" id="S3.T1.10.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.1.3.2"><span class="ltx_text" id="S3.T1.10.1.3.2.1" style="font-size:90%;">90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.1.3.3"><span class="ltx_text" id="S3.T1.10.1.3.3.1" style="font-size:90%;">69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.1.3.4"><span class="ltx_text" id="S3.T1.10.1.3.4.1" style="font-size:90%;">6298</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.1.3.5"><span class="ltx_text" id="S3.T1.10.1.3.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.1.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.10.1.3.6.1" style="font-size:90%;">M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.1.4.1">
<span class="ltx_text" id="S3.T1.10.1.4.1.1" style="font-size:90%;">MOSE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib30" title="">30</a><span class="ltx_text" id="S3.T1.10.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.4.2"><span class="ltx_text" id="S3.T1.10.1.4.2.1" style="font-size:90%;">2149</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.4.3"><span class="ltx_text" id="S3.T1.10.1.4.3.1" style="font-size:90%;">73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.4.4"><span class="ltx_text" id="S3.T1.10.1.4.4.1" style="font-size:90%;">159,600</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.4.5"><span class="ltx_text" id="S3.T1.10.1.4.5.1" style="font-size:90%;">36</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.10.1.4.6.1" style="font-size:90%;">M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.1.5.1">
<span class="ltx_text" id="S3.T1.10.1.5.1.1" style="font-size:90%;">LVOS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib28" title="">28</a><span class="ltx_text" id="S3.T1.10.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.5.2"><span class="ltx_text" id="S3.T1.10.1.5.2.1" style="font-size:90%;">220</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.5.3"><span class="ltx_text" id="S3.T1.10.1.5.3.1" style="font-size:90%;">576</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.5.4"><span class="ltx_text" id="S3.T1.10.1.5.4.1" style="font-size:90%;">126,280</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.5.5"><span class="ltx_text" id="S3.T1.10.1.5.5.1" style="font-size:90%;">27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.5.6"><span class="ltx_text ltx_font_bold" id="S3.T1.10.1.5.6.1" style="font-size:90%;">M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.1.6.1">
<span class="ltx_text" id="S3.T1.10.1.6.1.1" style="font-size:90%;">LVOS v2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib29" title="">29</a><span class="ltx_text" id="S3.T1.10.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.6.2"><span class="ltx_text" id="S3.T1.10.1.6.2.1" style="font-size:90%;">720</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.6.3"><span class="ltx_text" id="S3.T1.10.1.6.3.1" style="font-size:90%;">412</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.6.4"><span class="ltx_text" id="S3.T1.10.1.6.4.1" style="font-size:90%;">296,401</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.6.5"><span class="ltx_text" id="S3.T1.10.1.6.5.1" style="font-size:90%;">44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.10.1.6.6.1" style="font-size:90%;">M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.1.7.1">
<span class="ltx_text" id="S3.T1.10.1.7.1.1" style="font-size:90%;">YouTube-VOS</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib26" title="">26</a><span class="ltx_text" id="S3.T1.10.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.7.2"><span class="ltx_text" id="S3.T1.10.1.7.2.1" style="font-size:90%;">4453</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.7.3"><span class="ltx_text" id="S3.T1.10.1.7.3.1" style="font-size:90%;">27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.7.4"><span class="ltx_text" id="S3.T1.10.1.7.4.1" style="font-size:90%;">120,532</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.7.5"><span class="ltx_text" id="S3.T1.10.1.7.5.1" style="font-size:90%;">94</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.7.6"><span class="ltx_text ltx_font_bold" id="S3.T1.10.1.7.6.1" style="font-size:90%;">M</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.10.1.8.1">
<span class="ltx_text" id="S3.T1.10.1.8.1.1" style="font-size:90%;">UAV20L </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.10.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib71" title="">71</a><span class="ltx_text" id="S3.T1.10.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.8.2"><span class="ltx_text" id="S3.T1.10.1.8.2.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.8.3"><span class="ltx_text" id="S3.T1.10.1.8.3.1" style="font-size:90%;">2934</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.8.4"><span class="ltx_text" id="S3.T1.10.1.8.4.1" style="font-size:90%;">59,000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.8.5"><span class="ltx_text" id="S3.T1.10.1.8.5.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.1.8.6"><span class="ltx_text ltx_font_bold" id="S3.T1.10.1.8.6.1" style="font-size:90%;">B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.10.1.9.1"><span class="ltx_text" id="S3.T1.10.1.9.1.1" style="font-size:90%;">IC-VOS (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.10.1.9.2"><span class="ltx_text" id="S3.T1.10.1.9.2.1" style="font-size:90%;">369</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.10.1.9.3"><span class="ltx_text" id="S3.T1.10.1.9.3.1" style="font-size:90%;">270</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.10.1.9.4"><span class="ltx_text" id="S3.T1.10.1.9.4.1" style="font-size:90%;">99,549</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.10.1.9.5"><span class="ltx_text" id="S3.T1.10.1.9.5.1" style="font-size:90%;">30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.10.1.9.6"><span class="ltx_text ltx_font_bold" id="S3.T1.10.1.9.6.1" style="font-size:90%;">M</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the video portion of the newly proposed In-Context Video Object Segmentation (IC-VOS) benchmark dataset with several existing well-known video object segmentation (VOS) datasets.  The comparison includes the number of videos, the average number of frames per video, the total number of frames, the number of classes, and the type of annotation provided (either mask or bounding box).  It highlights the differences in scale and annotation detail between the IC-VOS benchmark and established VOS datasets.
> <details>
> <summary>read the caption</summary>
> TABLE I: Comparison of the video portion of our proposed benchmark with other well-known VOS datasets. Annotation type indicates whether a mask M or a bounding box B is provided.
> </details>





### In-depth insights


#### Dual-Cons SAM
Dual-Consistency SAM (DC-SAM) is a segmentation approach leveraging **dual consistency** to enhance performance. This likely involves enforcing consistency between different views or representations of the data. This could mean consistency between **image and video** domains, ensuring the model performs well across both. It could also involve consistency between **positive and negative prompts**, allowing for more precise boundary delineation. By enforcing these dual consistencies, the model is likely to achieve improved accuracy and robustness in segmentation tasks. This architecture likely includes **cycle-consistent cross-attention**, ensuring semantic label consistency between features and queries by aligning highly relevant support pixels with their corresponding categories, effectively suppressing conflicting semantic information and focusing the generated prompts on critical regions. DC-SAM could also use a dual-branch approach to generate **positive and negative prompts** from foreground and background masks, enhancing fine-grained control over generated masks by leveraging the interaction between these prompts. These features combined may contribute to **state-of-the-art** in segmentation.

#### In-Context VOS
**In-Context Video Object Segmentation (VOS)** represents a paradigm shift, moving away from reliance on first-frame annotations. Traditional VOS tracks pixels over time, demanding initial manual input. In-Context VOS aims to segment target semantics within a video clip, given a support image and its mask. This mimics few-shot learning, transferring knowledge from a static image to a dynamic video. The goal is to enable models to automatically identify and segment target semantics in videos, thereby eliminating the need for first-frame annotation, enhancing automation and reducing manual effort. This creates significant challenges, it requires robust semantic understanding and effective transfer of knowledge from the support image to track and segment the object accurately across the video frames despite appearance changes, occlusions, and motion blur. In-Context VOS necessitates models that can generalize from limited examples and handle the temporal dynamics of video data which are challenging research problem in the field.

#### Prompt Enhance
**Prompt enhancement** appears crucial for adapting foundation models like SAM to in-context segmentation. While SAM excels at interactive segmentation, its direct applicability to one-shot learning is limited. Effective prompt tuning, especially with positive and negative cues, seems key to guiding SAM towards accurate segmentation of target objects in new images and videos. The paper's approach of generating high-quality visual prompts by leveraging both backbone and SAM features is noteworthy. Furthermore, imposing cyclic consistency ensures that the prompts focus on the most relevant regions. This indicates that carefully designed prompts can significantly boost SAM's ability to generalize to novel scenarios, potentially surpassing methods that rely solely on backbone features or extensive in-domain training. The development of specialized prompt generation modules that account for the unique characteristics of the model is the key.

#### Cycle Consistency
**Cycle consistency** is a powerful concept often used in various computer vision tasks. The core idea is that transforming an input from a source domain to a target domain and then back to the original domain should ideally reconstruct the initial input. This constraint helps to learn more robust and meaningful mappings between domains, even when paired training data is scarce or unavailable. It ensures that the learned transformations are not arbitrary but capture the underlying structure and relationships between the domains. This concept is particularly useful in tasks such as image-to-image translation, where the goal is to transform images from one style to another while preserving the content. By enforcing cycle consistency, the model is encouraged to learn transformations that are invertible and preserve the semantic information of the input image. It also facilitates more stable training and better generalization performance, as the model is penalized for introducing inconsistencies during the forward and backward transformations. Essentially, by imposing cycle consistency, we can make the features learned more robust.

#### Few-Shot SAM2
While the paper doesn't explicitly discuss a "Few-Shot SAM2" section, we can extrapolate. Given SAM2's improved video understanding and the paper's focus on in-context learning, a 'Few-Shot SAM2' extension would involve adapting the model to segment novel objects in videos using very few labeled video examples. The **DC-SAM framework could be leveraged to achieve few-shot capability for SAM2**, by training the prompt encoder to generate effective prompts with limited video instances. A key challenge would be **maintaining temporal consistency** with limited data. The method could achieve better performance in in-context segmentation using a few video examples, compared to the baseline SAM2. It needs further investigation to **improve the generalization ability** of SAM2 and the existing benchmark needs modification for future research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.12080/x2.png)

> 🔼 Figure 2 provides a comprehensive overview of the newly constructed IC-VOS benchmark dataset for in-context video object segmentation.  Panel (a) shows the distribution of videos across three existing video object segmentation datasets (DAVIS, MOSE, and LVOS v2), indicating their relative contributions to the IC-VOS dataset.  Panel (b) presents a word cloud visualizing the frequency of different semantic categories within the dataset. The size of each word is proportional to its occurrence frequency, offering insights into the dominant classes present in IC-VOS. Panel (c) displays a detailed breakdown of the dataset, presenting the number of video clips and frames per category. This provides precise statistical information about the dataset's composition. Finally, panel (d) showcases several exemplary cases illustrating how the support image, its corresponding mask, and the query video are structured within the IC-VOS benchmark.  These examples offer visual insights into the data format and the task's nature.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our constructed IC-VOS benchmark. a) Distribution of video sources and their proportions. b) Word cloud of expressions. c) Categories in the dataset with the number of clips and frames for each category. d) Example cases illustrating the support image, support mask, and query video.
> </details>



![](https://arxiv.org/html/2504.12080/x3.png)

> 🔼 This figure illustrates the architecture of the Dual Consistency Segment Anything Model (DC-SAM).  It shows how DC-SAM enhances the Segment Anything Model (SAM) for in-context image segmentation by using positive and negative branches to generate more precise prompts.  These branches improve the quality of the mask boundaries. The incorporation of SAM features into the prompt generation process further refines the accuracy. A cyclic consistent cross-attention mechanism is also implemented to filter out irrelevant feature points, thereby further increasing prompt precision and the quality of segmentation masks produced.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the proposed DC-SAM framework. We use positive and negative branches to generate respective prompts, thereby refining the scope of the final generated mask. Additionally, we incorporate SAM features during the prompt generation process to better capture the characteristics of SAM, resulting in more accurate prompt boundaries. During the prompt generation process, we introduce cyclic consistent cross-attention to filter out non-cycle-consistent feature points, enhancing the precision of the prompts.
> </details>



![](https://arxiv.org/html/2504.12080/x4.png)

> 🔼 Figure 4 illustrates the cyclic consistent cross-attention mechanism, a key component of the proposed DC-SAM model.  It focuses on the process applied to query features using a single attention head. The diagram visually represents how the 'Cyc' operation (detailed in Equation 19 of the paper) functions. This operation calculates a bias that effectively filters out features which do not exhibit cycle-consistency, strengthening the alignment and relevance of features used for prompt generation. Cycle consistency, in this context, ensures a strong correspondence between features from the support and query images, improving the accuracy of mask generation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of our proposed cyclic consistent cross-attention mechanism. This figure shows the version applied to query features with one head. The “Cyc” operation represents the process described in Equation 19, which ultimately generates a bias to filter out features that are not cycle-consistent.
> </details>



![](https://arxiv.org/html/2504.12080/x5.png)

> 🔼 This figure demonstrates the impact of using negative prompts in addition to positive prompts within the SAM (Segment Anything Model) framework.  The image shows a segmentation task where the goal is to segment a cage containing a dinosaur.  Subfigure (a) displays the results when using only positive prompts; the segmentation is somewhat imprecise and includes some background elements. Subfigure (b) illustrates the result when both positive and negative prompts are used.  The inclusion of negative prompts results in a significantly better differentiation between the cage, the dinosaur, and the background, leading to a more accurate and refined segmentation of the target object (the cage).  Even though the result isn't perfect, it showcases the effectiveness of negative prompts in improving segmentation accuracy by explicitly defining regions that should *not* be included in the segmentation mask.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of SAM segmentation results with and without negative prompts. (a) Segmentation of the cage using only positive prompts. (b) Segmentation of the cage using both positive and negative prompts. Although not achieving optimal segmentation results, adding negative prompts allowed for better differentiation between the background, the dinosaur, and the cage, resulting in a significantly improved result.
> </details>



![](https://arxiv.org/html/2504.12080/x6.png)

> 🔼 This figure illustrates the architecture of the Dual Consistency Segment Anything Model (DC-SAM) adapted for video segmentation using the Segment Anything Model 2 (SAM2).  Unlike the image-only version of DC-SAM, the video version trains the entire model end-to-end.  The key modification is the use of data augmentation techniques on the input query video frames. These augmented frames are then assembled into a 'mask tube', a temporal sequence of masks, which becomes the training data.  This mask tube approach allows the model to learn the temporal consistency and context needed for accurate video segmentation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Illustration of our proposed DC-SAM framework with SAM2. Unlike the image-level framework, we train the entire model for the video to acquire the image-to-video prompt ability. We apply different data augmentation techniques to the query image, and the augmented images compose a mask tube for training.
> </details>



![](https://arxiv.org/html/2504.12080/x7.png)

> 🔼 Figure 7 presents a comparison of segmentation results obtained from four different methods on the PASCAL-5i dataset. Each row showcases an RGB image alongside its corresponding ground truth segmentation mask and the segmentation outputs generated by PerSAM, Matcher, VRP-SAM, and the proposed DC-SAM method.  Yellow 'x' markings highlight notable errors in the segmentation results, allowing for a visual assessment of the methods' accuracy and identifying areas where improvements are needed. The figure helps to illustrate the performance differences between the various techniques.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of segmentation results from different methods on the PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT. Each row displays an RGB image along with its corresponding ground truth segmentation and the results of the four methods. Notable errors are marked with a yellow “×\times×”.
> </details>



![](https://arxiv.org/html/2504.12080/x8.png)

> 🔼 Figure 8 showcases a comparison of the performance of three different models—DC-SAM (the proposed model), PFENet, and VRP-SAM—on a video object segmentation task.  A video clip depicting a motorcycle is used as the query.  The support image and mask (identifying the semantic category 'motorcycle') are identical for all three models. This allows for a direct comparison of how effectively each model segments the motorcycle throughout the video sequence using only this single reference image and mask. The results highlight the superior performance of DC-SAM in accurately segmenting the motorcycle across the video frames compared to the other models.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visual comparisons of our proposed model with PFENet and VRP-SAM on our proposed benchmark. The support mask in the video indicates the semantic category of motorcycle, and all three models share the same support image and mask.
> </details>



![](https://arxiv.org/html/2504.12080/x9.png)

> 🔼 This ablation study analyzes the effect of varying the number of queries used in the DC-SAM model's positive and negative branches on the model's performance. The x-axis shows the number of queries in a single branch (positive or negative), while the y-axis represents the model's mean Intersection over Union (mIoU) performance.  Since DC-SAM uses both positive and negative branches, the total number of queries is double the value shown on the x-axis.  The experiment was conducted on the PASCAL-5i dataset.
> <details>
> <summary>read the caption</summary>
> Figure 9: Ablation study on the number of queries. The x𝑥xitalic_x-axis represents the number of queries in one branch. Note that since our DC-SAM consists of both positive and negative branches, the total number of queries is twice the number shown on the x𝑥xitalic_x-axis. The y𝑦yitalic_y-axis represents the model’s performance. These experiments are conducted on the PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT dataset.
> </details>



![](https://arxiv.org/html/2504.12080/x10.png)

> 🔼 Figure 10 shows two examples where the proposed DC-SAM model for in-context video object segmentation fails. The top row illustrates a case of occlusion, where parts of the target object are hidden from view, leading to an incomplete segmentation mask. The bottom row displays a scene with multiple instances of the same object class and fast motion. In this situation, the model struggles to accurately track and segment all instances throughout the video sequence. These failure cases highlight the challenges of in-context video object segmentation, particularly when dealing with occlusions or rapidly changing scenes.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visualization of two failure cases of our proposed DC-SAM on IC-VOS. We still find missing matching objects due to the occlusion (in the top) and multiple instance inputs with the fast motion (in the bottom).
> </details>



![](https://arxiv.org/html/2504.12080/x11.png)

> 🔼 This figure presents a comparison of one-shot segmentation results obtained using four different methods: VRP-SAM, Per-SAM, Matcher, and the proposed DC-SAM. Each row displays an RGB image along with its corresponding ground truth segmentation and the segmentation results produced by each of the four methods.  The examples illustrate the relative performance of each model on various objects and scenes within the PASCAL-5isuperscript2 dataset.  'x' symbols highlight notable errors or inconsistencies.
> <details>
> <summary>read the caption</summary>
> Figure 11: Comparison of one-shot segmentation results on the PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT dataset.
> </details>



![](https://arxiv.org/html/2504.12080/x12.png)

> 🔼 This figure presents a comparison of semantic segmentation results for the 'Sheep' category obtained using three different methods (VRP-SAM, PFENet, and DC-SAM) on the IC-VOS dataset.  Each method's performance is visually shown across multiple frames of a video sequence where sheep are present.  This allows for a direct visual comparison of the accuracy and effectiveness of each method in segmenting sheep from their backgrounds, especially in video contexts that present challenges in object segmentation, such as changes in viewpoint or occlusion.
> <details>
> <summary>read the caption</summary>
> Figure 12: Comparison of semantic segmentation results for the “Sheep” category on the IC-VOS dataset.
> </details>



![](https://arxiv.org/html/2504.12080/x13.png)

> 🔼 This figure presents a visual comparison of semantic segmentation results for the 'Dog' category from the IC-VOS dataset. It shows the results generated by three different models: DC-SAM, PFENet, and VRP-SAM, alongside the ground truth segmentation. Each row in the figure represents a frame from a video sequence, where the dog is the subject of segmentation.  The comparison allows for a visual assessment of each model's ability to accurately segment the dog across various frames within the video.  It highlights the performance differences between the models and showcases the effectiveness of DC-SAM in accurately delineating the dog across different frames and potential challenges such as changes in pose or presence of occlusions.
> <details>
> <summary>read the caption</summary>
> Figure 13: Comparison of semantic segmentation results for the “Dog” category on the IC-VOS dataset.
> </details>



![](https://arxiv.org/html/2504.12080/x14.png)

> 🔼 Figure 14 presents a visual comparison of semantic segmentation results for the 'Cup' category from the IC-VOS dataset.  It showcases how three different models—DC-SAM, PFENet, and VRP-SAM—perform on this task. The figure displays a series of frames from a video, demonstrating the models' ability to segment cups consistently throughout the video sequence. By comparing the model outputs to the ground truth, one can assess the accuracy and robustness of each model in handling variations in cup appearance and context within the video.
> <details>
> <summary>read the caption</summary>
> Figure 14: Comparison of semantic segmentation results for the “Cup” category on the IC-VOS dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T2.8">
<tr class="ltx_tr" id="S5.T2.8.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T2.8.5.1"><span class="ltx_text" id="S5.T2.8.5.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.8.5.2"><span class="ltx_text" id="S5.T2.8.5.2.1" style="font-size:90%;">F-0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.8.5.3"><span class="ltx_text" id="S5.T2.8.5.3.1" style="font-size:90%;">F-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.8.5.4"><span class="ltx_text" id="S5.T2.8.5.4.1" style="font-size:90%;">F-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.8.5.5"><span class="ltx_text" id="S5.T2.8.5.5.1" style="font-size:90%;">F-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.8.5.6"><span class="ltx_text" id="S5.T2.8.5.6.1" style="font-size:90%;">Means</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.8.6.1">
<span class="ltx_text" id="S5.T2.8.6.1.1" style="font-size:90%;">Painter* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib19" title="">19</a><span class="ltx_text" id="S5.T2.8.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.6.2"><span class="ltx_text" id="S5.T2.8.6.2.1" style="font-size:90%;">31.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.6.3"><span class="ltx_text" id="S5.T2.8.6.3.1" style="font-size:90%;">35.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.6.4"><span class="ltx_text" id="S5.T2.8.6.4.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.6.5"><span class="ltx_text" id="S5.T2.8.6.5.1" style="font-size:90%;">32.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.6.6"><span class="ltx_text" id="S5.T2.8.6.6.1" style="font-size:90%;">33.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.8.7.1">
<span class="ltx_text" id="S5.T2.8.7.1.1" style="font-size:90%;">SegGPT* </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.8.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib20" title="">20</a><span class="ltx_text" id="S5.T2.8.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.7.2"><span class="ltx_text" id="S5.T2.8.7.2.1" style="font-size:90%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.7.3"><span class="ltx_text" id="S5.T2.8.7.3.1" style="font-size:90%;">57.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.7.4"><span class="ltx_text" id="S5.T2.8.7.4.1" style="font-size:90%;">58.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.7.5"><span class="ltx_text" id="S5.T2.8.7.5.1" style="font-size:90%;">51.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.7.6"><span class="ltx_text" id="S5.T2.8.7.6.1" style="font-size:90%;">56.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.5.1.1">
<span class="ltx_text" id="S5.T2.5.1.1.1" style="font-size:90%;">PerSAM-F </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.5.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib23" title="">23</a><span class="ltx_text" id="S5.T2.5.1.1.3.2" style="font-size:90%;">]</span></cite><math alttext="{\dagger}" class="ltx_Math" display="inline" id="S5.T2.5.1.1.m1.1"><semantics id="S5.T2.5.1.1.m1.1a"><mo id="S5.T2.5.1.1.m1.1.1" mathsize="90%" xref="S5.T2.5.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.1.1.m1.1b"><ci id="S5.T2.5.1.1.m1.1.1.cmml" xref="S5.T2.5.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.1.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.1.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.2"><span class="ltx_text" id="S5.T2.5.1.2.1" style="font-size:90%;">22.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.3"><span class="ltx_text" id="S5.T2.5.1.3.1" style="font-size:90%;">24.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.4"><span class="ltx_text" id="S5.T2.5.1.4.1" style="font-size:90%;">23.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.5.1.5"><span class="ltx_text" id="S5.T2.5.1.5.1" style="font-size:90%;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.6"><span class="ltx_text" id="S5.T2.5.1.6.1" style="font-size:90%;">23.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.6.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.6.2.1">
<span class="ltx_text" id="S5.T2.6.2.1.1" style="font-size:90%;">Matcher </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.6.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib24" title="">24</a><span class="ltx_text" id="S5.T2.6.2.1.3.2" style="font-size:90%;">]</span></cite><math alttext="{\dagger}" class="ltx_Math" display="inline" id="S5.T2.6.2.1.m1.1"><semantics id="S5.T2.6.2.1.m1.1a"><mo id="S5.T2.6.2.1.m1.1.1" mathsize="90%" xref="S5.T2.6.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.2.1.m1.1b"><ci id="S5.T2.6.2.1.m1.1.1.cmml" xref="S5.T2.6.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.2.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.2.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.2"><span class="ltx_text" id="S5.T2.6.2.2.1" style="font-size:90%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.3"><span class="ltx_text" id="S5.T2.6.2.3.1" style="font-size:90%;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.4"><span class="ltx_text" id="S5.T2.6.2.4.1" style="font-size:90%;">52,6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.6.2.5"><span class="ltx_text" id="S5.T2.6.2.5.1" style="font-size:90%;">52.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.6.2.6"><span class="ltx_text" id="S5.T2.6.2.6.1" style="font-size:90%;">52.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.7.3.1">
<span class="ltx_text" id="S5.T2.7.3.1.1" style="font-size:90%;">VRP-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T2.7.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib25" title="">25</a><span class="ltx_text" id="S5.T2.7.3.1.3.2" style="font-size:90%;">]</span></cite><math alttext="{\dagger}" class="ltx_Math" display="inline" id="S5.T2.7.3.1.m1.1"><semantics id="S5.T2.7.3.1.m1.1a"><mo id="S5.T2.7.3.1.m1.1.1" mathsize="90%" xref="S5.T2.7.3.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.3.1.m1.1b"><ci id="S5.T2.7.3.1.m1.1.1.cmml" xref="S5.T2.7.3.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.3.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.3.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_t" id="S5.T2.7.3.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.7.3.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.7.3.4"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.7.3.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.7.3.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.8.8.1"><span class="ltx_text" id="S5.T2.8.8.1.1" style="font-size:90%;">   - ResNet50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.2"><span class="ltx_text" id="S5.T2.8.8.2.1" style="font-size:90%;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.3"><span class="ltx_text" id="S5.T2.8.8.3.1" style="font-size:90%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.4"><span class="ltx_text" id="S5.T2.8.8.4.1" style="font-size:90%;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.8.5"><span class="ltx_text" id="S5.T2.8.8.5.1" style="font-size:90%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.6"><span class="ltx_text" id="S5.T2.8.8.6.1" style="font-size:90%;">53.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.8.9.1"><span class="ltx_text" id="S5.T2.8.9.1.1" style="font-size:90%;">   - DINO v2-B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.9.2"><span class="ltx_text ltx_font_bold" id="S5.T2.8.9.2.1" style="font-size:90%;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.9.3.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.9.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.9.4.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.9.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.9.5.1" style="font-size:90%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.8.9.6.1" style="font-size:90%;">60.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.8.4.1">
<span class="ltx_text" id="S5.T2.8.4.1.1" style="font-size:90%;">DC-SAM</span><math alttext="{\dagger}" class="ltx_Math" display="inline" id="S5.T2.8.4.1.m1.1"><semantics id="S5.T2.8.4.1.m1.1a"><mo id="S5.T2.8.4.1.m1.1.1" mathsize="90%" xref="S5.T2.8.4.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T2.8.4.1.m1.1b"><ci id="S5.T2.8.4.1.m1.1.1.cmml" xref="S5.T2.8.4.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.4.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.4.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.4.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.4.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.4.4"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.8.4.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.4.6"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.8.10.1"><span class="ltx_text" id="S5.T2.8.10.1.1" style="font-size:90%;">   - ResNet50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.10.2"><span class="ltx_text" id="S5.T2.8.10.2.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.10.3"><span class="ltx_text" id="S5.T2.8.10.3.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.10.4"><span class="ltx_text" id="S5.T2.8.10.4.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.8.10.5"><span class="ltx_text" id="S5.T2.8.10.5.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.10.6"><span class="ltx_text" id="S5.T2.8.10.6.1" style="font-size:90%;">55.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T2.8.11.1"><span class="ltx_text" id="S5.T2.8.11.1.1" style="font-size:90%;">   - DINO v2-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.8.11.2"><span class="ltx_text ltx_font_bold" id="S5.T2.8.11.2.1" style="font-size:90%;">56.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.8.11.3"><span class="ltx_text ltx_font_bold" id="S5.T2.8.11.3.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.8.11.4"><span class="ltx_text ltx_font_bold" id="S5.T2.8.11.4.1" style="font-size:90%;">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.8.11.5"><span class="ltx_text ltx_font_bold" id="S5.T2.8.11.5.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.8.11.6"><span class="ltx_text ltx_font_bold" id="S5.T2.8.11.6.1" style="font-size:90%;">62.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various few-shot segmentation models, particularly those using foundational models, on the COCO-2020² dataset.  The results are broken down by four folds (F-0, F-1, F-2, F-3) and then averaged to get an overall mean mIoU score. Models that used external data for training are indicated with an asterisk (*), while models based on the Segment Anything Model (SAM) are marked with a dagger (†). This allows readers to easily compare the performance of different approaches and understand the impact of factors like external data and the use of SAM.
> <details>
> <summary>read the caption</summary>
> TABLE II: Comparison with other few-shot segmentation models with foundational models on the COCO-2020isuperscript20𝑖20^{i}20 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT dataset. Methods marked with * indicate using external data. Methods marked with a ††{\dagger}† symbol indicate SAM-based models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.6.2">
<tr class="ltx_tr" id="S5.T3.6.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.6.2.2.3" rowspan="2" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.2.3.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.2.4" rowspan="2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.2.4.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.6.2.2.4.1.1">
<span class="ltx_tr" id="S5.T3.6.2.2.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.6.2.2.4.1.1.1.1" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.2.4.1.1.1.1.1">Image</span></span></span>
<span class="ltx_tr" id="S5.T3.6.2.2.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.6.2.2.4.1.1.2.1" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.2.4.1.1.2.1.1">encoder</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="5" id="S5.T3.5.1.1.1" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.1.1" style="font-size:80%;">COCO-20<sup class="ltx_sup" id="S5.T3.5.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.5.1.1.1.1.1.1">i</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S5.T3.6.2.2.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.2.2.1" style="font-size:80%;">PASCAL-5<sup class="ltx_sup" id="S5.T3.6.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S5.T3.6.2.2.2.1.1.1">i</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.3.1" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.1.1" style="font-size:80%;">F-0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.3.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.2.1" style="font-size:80%;">F-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.3.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.3.1" style="font-size:80%;">F-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.3.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.4.1" style="font-size:80%;">F-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.3.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.5.1" style="font-size:80%;">Mean</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.3.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.6.1" style="font-size:80%;">F-0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.3.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.7.1" style="font-size:80%;">F-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.3.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.8.1" style="font-size:80%;">F-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.3.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.9.1" style="font-size:80%;">F-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.3.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.3.10.1" style="font-size:80%;">Mean</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.6.2.4.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.4.1.1" style="font-size:80%;">PFENet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib12" title="">12</a><span class="ltx_text" id="S5.T3.6.2.4.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.4.2" rowspan="4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.2.1" style="font-size:80%;">VGG-16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.4.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.3.1" style="font-size:80%;">35.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.4.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.4.1" style="font-size:80%;">38.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.4.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.5.1" style="font-size:80%;">36.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.4.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.6.1" style="font-size:80%;">34.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.4.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.7.1" style="font-size:80%;">36.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.4.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.8.1" style="font-size:80%;">56.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.4.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.9.1" style="font-size:80%;">68.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.4.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.10.1" style="font-size:80%;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.4.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.11.1" style="font-size:80%;">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.4.12" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.4.12.1" style="font-size:80%;">58.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.5.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.5.1.1" style="font-size:80%;">BAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib13" title="">13</a><span class="ltx_text" id="S5.T3.6.2.5.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.5.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.2.1" style="font-size:80%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.5.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.3.1" style="font-size:80%;">47.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.5.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.4.1" style="font-size:80%;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.5.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.5.1" style="font-size:80%;">41.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.5.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.6.1" style="font-size:80%;">42.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.5.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.7.1" style="font-size:80%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.5.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.8.1" style="font-size:80%;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.5.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.9.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.5.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.10.1" style="font-size:80%;">57.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.5.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.5.11.1" style="font-size:80%;">64.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.6.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.6.1.1" style="font-size:80%;">HDMNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib15" title="">15</a><span class="ltx_text" id="S5.T3.6.2.6.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.6.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.2.1" style="font-size:80%;">40.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.6.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.3.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.6.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.4.1" style="font-size:80%;">48.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.6.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.5.1" style="font-size:80%;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.6.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.6.1" style="font-size:80%;">45.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.6.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.7.1" style="font-size:80%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.6.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.8.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.6.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.9.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.6.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.10.1" style="font-size:80%;">56.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.6.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.6.11.1" style="font-size:80%;">65.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.7.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.7.1.1" style="font-size:80%;">VRP-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib25" title="">25</a><span class="ltx_text" id="S5.T3.6.2.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.7.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.2.1" style="font-size:80%;">43.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.7.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.3.1" style="font-size:80%;">51.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.7.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.4.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.7.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.5.1" style="font-size:80%;">46.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.7.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.6.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.7.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.7.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.7.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.8.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.7.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.9.1" style="font-size:80%;">68.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.7.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.10.1" style="font-size:80%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.7.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.7.11.1" style="font-size:80%;">68.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.6.2.8.1" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.1.1" style="font-size:80%;">DC-SAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.8.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.2.1" style="font-size:80%;">VGG-16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.8.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.3.1" style="font-size:80%;">44.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.8.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.4.1" style="font-size:80%;">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.8.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.8.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.6.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.8.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.7.1" style="font-size:80%;">51.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.8.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.8.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.8.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.9.1" style="font-size:80%;">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.8.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.10.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.8.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.11.1" style="font-size:80%;">63.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.8.12" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.8.12.1" style="font-size:80%;">70.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.6.2.9.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.9.1.1" style="font-size:80%;">PFENet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib12" title="">12</a><span class="ltx_text" id="S5.T3.6.2.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.9.2" rowspan="12" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.2.1" style="font-size:80%;">ResNet-50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.9.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.3.1" style="font-size:80%;">36.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.9.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.4.1" style="font-size:80%;">38.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.9.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.5.1" style="font-size:80%;">34.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.9.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.6.1" style="font-size:80%;">33.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.9.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.7.1" style="font-size:80%;">35.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.9.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.8.1" style="font-size:80%;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.9.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.9.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.9.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.10.1" style="font-size:80%;">55.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.9.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.11.1" style="font-size:80%;">56.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.9.12" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.9.12.1" style="font-size:80%;">60.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.10.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.10.1.1" style="font-size:80%;">HSNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib80" title="">80</a><span class="ltx_text" id="S5.T3.6.2.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.10.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.2.1" style="font-size:80%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.10.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.3.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.10.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.4.1" style="font-size:80%;">38.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.10.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.5.1" style="font-size:80%;">38.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.10.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.6.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.10.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.7.1" style="font-size:80%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.10.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.8.1" style="font-size:80%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.10.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.9.1" style="font-size:80%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.10.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.10.1" style="font-size:80%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.10.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.10.11.1" style="font-size:80%;">64.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.11.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.11.1.1" style="font-size:80%;">CyCTR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib14" title="">14</a><span class="ltx_text" id="S5.T3.6.2.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.11.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.2.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.11.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.3.1" style="font-size:80%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.11.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.4.1" style="font-size:80%;">39.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.11.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.5.1" style="font-size:80%;">39.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.11.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.6.1" style="font-size:80%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.11.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.7.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.11.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.8.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.11.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.9.1" style="font-size:80%;">59.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.11.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.10.1" style="font-size:80%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.11.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.11.11.1" style="font-size:80%;">64.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.12.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.12.1.1" style="font-size:80%;">SSP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.12.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib81" title="">81</a><span class="ltx_text" id="S5.T3.6.2.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.12.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.2.1" style="font-size:80%;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.12.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.3.1" style="font-size:80%;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.12.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.4.1" style="font-size:80%;">37.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.12.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.5.1" style="font-size:80%;">36.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.12.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.6.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.12.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.7.1" style="font-size:80%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.12.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.8.1" style="font-size:80%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.12.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.9.1" style="font-size:80%;">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.12.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.10.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.12.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.12.11.1" style="font-size:80%;">61.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.13.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.13.1.1" style="font-size:80%;">NTRENet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.13.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib82" title="">82</a><span class="ltx_text" id="S5.T3.6.2.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.13.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.2.1" style="font-size:80%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.13.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.3.1" style="font-size:80%;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.13.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.4.1" style="font-size:80%;">39.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.13.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.5.1" style="font-size:80%;">37.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.13.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.6.1" style="font-size:80%;">39.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.13.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.7.1" style="font-size:80%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.13.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.8.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.13.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.9.1" style="font-size:80%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.13.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.10.1" style="font-size:80%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.13.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.13.11.1" style="font-size:80%;">64.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.14.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.14.1.1" style="font-size:80%;">DPCN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.14.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib83" title="">83</a><span class="ltx_text" id="S5.T3.6.2.14.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.14.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.2.1" style="font-size:80%;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.14.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.3.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.14.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.4.1" style="font-size:80%;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.14.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.5.1" style="font-size:80%;">39.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.14.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.6.1" style="font-size:80%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.14.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.7.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.14.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.8.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.14.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.9.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.14.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.10.1" style="font-size:80%;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.14.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.14.11.1" style="font-size:80%;">66.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.15.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.15.1.1" style="font-size:80%;">VAT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.15.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib52" title="">52</a><span class="ltx_text" id="S5.T3.6.2.15.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.15.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.2.1" style="font-size:80%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.15.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.3.1" style="font-size:80%;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.15.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.4.1" style="font-size:80%;">42.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.15.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.5.1" style="font-size:80%;">39.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.15.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.6.1" style="font-size:80%;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.15.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.7.1" style="font-size:80%;">67.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.15.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.8.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.15.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.9.1" style="font-size:80%;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.15.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.10.1" style="font-size:80%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.15.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.15.11.1" style="font-size:80%;">65.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.16.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.16.1.1" style="font-size:80%;">BAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.16.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib13" title="">13</a><span class="ltx_text" id="S5.T3.6.2.16.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.16.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.2.1" style="font-size:80%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.16.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.3.1" style="font-size:80%;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.16.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.4.1" style="font-size:80%;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.16.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.5.1" style="font-size:80%;">45.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.16.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.6.1" style="font-size:80%;">45.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.16.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.7.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.16.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.8.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.16.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.9.1" style="font-size:80%;">67.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.16.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.10.1" style="font-size:80%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.16.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.16.11.1" style="font-size:80%;">67.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.17.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.17.1.1" style="font-size:80%;">HDMNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.17.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib15" title="">15</a><span class="ltx_text" id="S5.T3.6.2.17.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.17.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.2.1" style="font-size:80%;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.17.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.3.1" style="font-size:80%;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.17.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.4.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.17.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.5.1" style="font-size:80%;">49.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.17.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.6.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.17.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.7.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.17.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.8.1" style="font-size:80%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.17.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.9.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.17.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.10.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.17.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.17.11.1" style="font-size:80%;">69.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.18.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.18.1.1" style="font-size:80%;">AMNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.18.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib16" title="">16</a><span class="ltx_text" id="S5.T3.6.2.18.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.18.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.2.1" style="font-size:80%;">44.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.18.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.3.1" style="font-size:80%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.18.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.4.1" style="font-size:80%;">52.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.18.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.5.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.18.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.6.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.18.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.7.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.18.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.8.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.18.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.9.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.18.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.10.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.18.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.18.11.1" style="font-size:80%;">70.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.19.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.19.1.1" style="font-size:80%;">ABCB </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.19.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib17" title="">17</a><span class="ltx_text" id="S5.T3.6.2.19.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.19.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.2.1" style="font-size:80%;">44.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.19.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.3.1" style="font-size:80%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.19.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.4.1" style="font-size:80%;">52.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.19.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.5.1" style="font-size:80%;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.19.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.6.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.19.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.7.1" style="font-size:80%;">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.19.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.8.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.19.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.9.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.19.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.10.1" style="font-size:80%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.19.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.19.11.1" style="font-size:80%;">70.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.6.2.20.1" style="padding:0.8pt 9.7pt;">
<span class="ltx_text" id="S5.T3.6.2.20.1.1" style="font-size:80%;">VRP-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T3.6.2.20.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib25" title="">25</a><span class="ltx_text" id="S5.T3.6.2.20.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.20.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.2.1" style="font-size:80%;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.20.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.3.1" style="font-size:80%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.20.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.4.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.20.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.5.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.20.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.6.1" style="font-size:80%;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.20.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.7.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.20.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.8.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.20.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.20.9.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.6.2.20.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.20.10.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.20.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.20.11.1" style="font-size:80%;">71.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.21">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.6.2.21.1" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.21.1.1" style="font-size:80%;">DC-SAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.6.2.21.2" rowspan="2" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.21.2.1" style="font-size:80%;">ResNet-50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.21.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.21.3.1" style="font-size:80%;">50.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.21.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.21.4.1" style="font-size:80%;">56.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.21.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.21.5.1" style="font-size:80%;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.21.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.21.6.1" style="font-size:80%;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.21.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.21.7.1" style="font-size:80%;">55.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.21.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.21.8.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.21.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.21.9.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.21.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.21.10.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.6.2.21.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.21.11.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.2.21.12" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.21.12.1" style="font-size:80%;">73.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.22">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.6.2.22.1" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.22.1.1" style="font-size:80%;">DC-SAM (SAM2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.2.22.2" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.22.2.1" style="font-size:80%;">49.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.2.22.3" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.22.3.1" style="font-size:80%;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.2.22.4" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.22.4.1" style="font-size:80%;">63.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.6.2.22.5" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.22.5.1" style="font-size:80%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.6.2.22.6" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.22.6.1" style="font-size:80%;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.2.22.7" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.22.7.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.2.22.8" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.6.2.22.8.1" style="font-size:80%;">78.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.2.22.9" style="padding:0.8pt 9.7pt;"><span class="ltx_text" id="S5.T3.6.2.22.9.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.6.2.22.10" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.22.10.1" style="font-size:80%;">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.2.22.11" style="padding:0.8pt 9.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.2.22.11.1" style="font-size:80%;">74.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table III presents a comparison of the proposed DC-SAM model's performance against state-of-the-art few-shot segmentation methods on two widely used datasets: COCO-20 and PASCAL-5.  The table shows the mean Intersection over Union (mIoU) scores achieved by each method across different folds of each dataset.  Results are broken down by the image encoder used (VGG-16, ResNet-50),  allowing for analysis of the impact of different feature extraction backbones on performance.  The best and second-best results for each metric are highlighted to easily identify top performers.
> <details>
> <summary>read the caption</summary>
> TABLE III: Comparison with the state-of-the-art few-shot segmentation methods on COCO-20isuperscript20𝑖20^{i}20 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT [74] and PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT [75]. The best results are highlighted in bold, while the second-best results are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.3">
<tr class="ltx_tr" id="S5.T4.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.3.3.4"><span class="ltx_text" id="S5.T4.3.3.4.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1"><math alttext="\mathcal{J}" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T4.1.1.1.m1.1.1" mathsize="90%" xref="S5.T4.1.1.1.m1.1.1.cmml">𝒥</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">𝒥</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\mathcal{J}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">caligraphic_J</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.2.2"><math alttext="\mathcal{F}" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T4.2.2.2.m1.1.1" mathsize="90%" xref="S5.T4.2.2.2.m1.1.1.cmml">ℱ</mi><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><ci id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">ℱ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">caligraphic_F</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.3.3.3"><math alttext="\mathcal{J\&amp;F}" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mrow id="S5.T4.3.3.3.m1.1.1" xref="S5.T4.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T4.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T4.3.3.3.m1.1.1.2.cmml">𝒥</mi><mo id="S5.T4.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S5.T4.3.3.3.m1.1.1.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S5.T4.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T4.3.3.3.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><apply id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1"><and id="S5.T4.3.3.3.m1.1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1.1"></and><ci id="S5.T4.3.3.3.m1.1.1.2.cmml" xref="S5.T4.3.3.3.m1.1.1.2">𝒥</ci><ci id="S5.T4.3.3.3.m1.1.1.3.cmml" xref="S5.T4.3.3.3.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\mathcal{J\&amp;F}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.3.4.1">
<span class="ltx_text" id="S5.T4.3.4.1.1" style="font-size:90%;">PerSAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib23" title="">23</a><span class="ltx_text" id="S5.T4.3.4.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T4.3.4.1.4" style="font-size:90%;"> + SAM2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.4.2"><span class="ltx_text" id="S5.T4.3.4.2.1" style="font-size:90%;">32.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.4.3"><span class="ltx_text" id="S5.T4.3.4.3.1" style="font-size:90%;">36.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.4.4"><span class="ltx_text" id="S5.T4.3.4.4.1" style="font-size:90%;">34.52</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.3.5.1">
<span class="ltx_text" id="S5.T4.3.5.1.1" style="font-size:90%;">PerSAM-F </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib23" title="">23</a><span class="ltx_text" id="S5.T4.3.5.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T4.3.5.1.4" style="font-size:90%;"> + SAM2</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.2"><span class="ltx_text" id="S5.T4.3.5.2.1" style="font-size:90%;">31.52</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.3"><span class="ltx_text" id="S5.T4.3.5.3.1" style="font-size:90%;">36.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.5.4"><span class="ltx_text" id="S5.T4.3.5.4.1" style="font-size:90%;">34.18</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.3.6.1">
<span class="ltx_text" id="S5.T4.3.6.1.1" style="font-size:90%;">Matcher </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib24" title="">24</a><span class="ltx_text" id="S5.T4.3.6.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T4.3.6.1.4" style="font-size:90%;"> + SAM2</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.2"><span class="ltx_text" id="S5.T4.3.6.2.1" style="font-size:90%;">26.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.3"><span class="ltx_text" id="S5.T4.3.6.3.1" style="font-size:90%;">24.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.6.4"><span class="ltx_text" id="S5.T4.3.6.4.1" style="font-size:90%;">20.44</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.3.7.1">
<span class="ltx_text" id="S5.T4.3.7.1.1" style="font-size:90%;">VRP-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib25" title="">25</a><span class="ltx_text" id="S5.T4.3.7.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T4.3.7.1.4" style="font-size:90%;"> + SAM2</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.7.2"><span class="ltx_text" id="S5.T4.3.7.2.1" style="font-size:90%;">50.77</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.7.3"><span class="ltx_text" id="S5.T4.3.7.3.1" style="font-size:90%;">56.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.7.4"><span class="ltx_text" id="S5.T4.3.7.4.1" style="font-size:90%;">53.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.3.8.1">
<span class="ltx_text" id="S5.T4.3.8.1.1" style="font-size:90%;">PFENet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib12" title="">12</a><span class="ltx_text" id="S5.T4.3.8.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T4.3.8.1.4" style="font-size:90%;"> + SAM2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.8.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.3.8.2.1" style="font-size:90%;">62.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.3.8.3.1" style="font-size:90%;">66.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.3.8.4.1" style="font-size:90%;">64.26</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.3.9.1">
<span class="ltx_text" id="S5.T4.3.9.1.1" style="font-size:90%;">HDMNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib15" title="">15</a><span class="ltx_text" id="S5.T4.3.9.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T4.3.9.1.4" style="font-size:90%;"> + SAM2</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.9.2"><span class="ltx_text" id="S5.T4.3.9.2.1" style="font-size:90%;">53.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.9.3"><span class="ltx_text" id="S5.T4.3.9.3.1" style="font-size:90%;">57.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.9.4"><span class="ltx_text" id="S5.T4.3.9.4.1" style="font-size:90%;">55.28</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.3.10.1">
<span class="ltx_text" id="S5.T4.3.10.1.1" style="font-size:90%;">AMNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib16" title="">16</a><span class="ltx_text" id="S5.T4.3.10.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S5.T4.3.10.1.4" style="font-size:90%;"> + SAM2</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.10.2"><span class="ltx_text" id="S5.T4.3.10.2.1" style="font-size:90%;">53.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.10.3"><span class="ltx_text" id="S5.T4.3.10.3.1" style="font-size:90%;">58.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.10.4"><span class="ltx_text" id="S5.T4.3.10.4.1" style="font-size:90%;">55.94</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.3.11.1"><span class="ltx_text" id="S5.T4.3.11.1.1" style="font-size:90%;">DC-SAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.3.11.2"><span class="ltx_text ltx_font_bold" id="S5.T4.3.11.2.1" style="font-size:90%;">68.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.3.11.3"><span class="ltx_text ltx_font_bold" id="S5.T4.3.11.3.1" style="font-size:90%;">74.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.3.11.4"><span class="ltx_text ltx_font_bold" id="S5.T4.3.11.4.1" style="font-size:90%;">71.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different state-of-the-art few-shot video object segmentation methods on the newly introduced In-Context Video Object Segmentation (IC-VOS) benchmark.  The benchmark is designed for evaluating in-context segmentation capabilities of models on video data.  The table shows the mean Intersection over Union (mIoU), region similarity (J), and contour accuracy (F) scores, along with the combined J&F score, for each method. The best and second-best results are highlighted for easy comparison.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Results on IC-VOS benchmark. Bold and underlined texts indicate the best and second-best results, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.3.1">
<tr class="ltx_tr" id="S5.T5.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T5.3.1.1.2"><span class="ltx_text" id="S5.T5.3.1.1.2.1" style="font-size:90%;">Ablation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.1.3"><span class="ltx_text" id="S5.T5.3.1.1.3.1" style="font-size:90%;">F-0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.1.4"><span class="ltx_text" id="S5.T5.3.1.1.4.1" style="font-size:90%;">F-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.1.5"><span class="ltx_text" id="S5.T5.3.1.1.5.1" style="font-size:90%;">F-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.3.1.1.6"><span class="ltx_text" id="S5.T5.3.1.1.6.1" style="font-size:90%;">F-3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.1.7"><span class="ltx_text" id="S5.T5.3.1.1.7.1" style="font-size:90%;">Means</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S5.T5.3.1.1.1.m1.1"><semantics id="S5.T5.3.1.1.1.m1.1a"><mi id="S5.T5.3.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T5.3.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S5.T5.3.1.1.1.m1.1b"><ci id="S5.T5.3.1.1.1.m1.1.1.cmml" xref="S5.T5.3.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.3.1.2.1">
<span class="ltx_text" id="S5.T5.3.1.2.1.1" style="font-size:90%;">VRP-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.3.1.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib25" title="">25</a><span class="ltx_text" id="S5.T5.3.1.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.2"><span class="ltx_text" id="S5.T5.3.1.2.2.1" style="font-size:90%;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.3"><span class="ltx_text" id="S5.T5.3.1.2.3.1" style="font-size:90%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.4"><span class="ltx_text" id="S5.T5.3.1.2.4.1" style="font-size:90%;">70.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.3.1.2.5"><span class="ltx_text" id="S5.T5.3.1.2.5.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.6"><span class="ltx_text" id="S5.T5.3.1.2.6.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.7"><span class="ltx_text" id="S5.T5.3.1.2.7.1" style="font-size:90%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.3.1.3.1"><span class="ltx_text" id="S5.T5.3.1.3.1.1" style="font-size:90%;">+ Pos-Neg Branch</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.2"><span class="ltx_text" id="S5.T5.3.1.3.2.1" style="font-size:90%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.3"><span class="ltx_text" id="S5.T5.3.1.3.3.1" style="font-size:90%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.4"><span class="ltx_text" id="S5.T5.3.1.3.4.1" style="font-size:90%;">70.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.3.1.3.5"><span class="ltx_text" id="S5.T5.3.1.3.5.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.6"><span class="ltx_text" id="S5.T5.3.1.3.6.1" style="font-size:90%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.7"><span class="ltx_text" id="S5.T5.3.1.3.7.1" style="font-size:90%;">+0.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.3.1.4.1"><span class="ltx_text" id="S5.T5.3.1.4.1.1" style="font-size:90%;">+ SAM Feature Fusion</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.2"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.4.2.1" style="font-size:90%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.3"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.4.3.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.3.1.4.4.1" style="font-size:90%;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.3.1.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.3.1.4.5.1" style="font-size:90%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.3.1.4.6.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.7"><span class="ltx_text" id="S5.T5.3.1.4.7.1" style="font-size:90%;">+0.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T5.3.1.5.1"><span class="ltx_text" id="S5.T5.3.1.5.1.1" style="font-size:90%;">+ Cyclic Consistent</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.5.2"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.5.2.1" style="font-size:90%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.3.1.5.3.1" style="font-size:90%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.5.4"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.5.4.1" style="font-size:90%;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.3.1.5.5"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.5.5.1" style="font-size:90%;">66.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.5.6"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.5.6.1" style="font-size:90%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.5.7"><span class="ltx_text" id="S5.T5.3.1.5.7.1" style="font-size:90%;">+0.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of each component in the proposed DC-SAM model on the PASCAL-5i dataset.  Starting with VRP-SAM as a baseline, the study incrementally adds different components of DC-SAM (positive/negative branches, SAM feature fusion, and cyclic consistent cross-attention) to evaluate their individual contributions to the overall performance.  The results demonstrate the effect of each added component on the model's accuracy.
> <details>
> <summary>read the caption</summary>
> TABLE V: Ablation study on each innovation of the model. We start with VRP-SAM [25] as the baseline and incrementally add our innovations on the PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.3">
<tr class="ltx_tr" id="S5.T6.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T6.3.3.4"><span class="ltx_text" id="S5.T6.3.3.4.1" style="font-size:90%;">Ablation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1"><math alttext="\mathcal{J}" class="ltx_Math" display="inline" id="S5.T6.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T6.1.1.1.m1.1.1" mathsize="90%" xref="S5.T6.1.1.1.m1.1.1.cmml">𝒥</mi><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.m1.1b"><ci id="S5.T6.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.m1.1.1">𝒥</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.m1.1c">\mathcal{J}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.m1.1d">caligraphic_J</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.2.2"><math alttext="\mathcal{F}" class="ltx_Math" display="inline" id="S5.T6.2.2.2.m1.1"><semantics id="S5.T6.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T6.2.2.2.m1.1.1" mathsize="90%" xref="S5.T6.2.2.2.m1.1.1.cmml">ℱ</mi><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.m1.1b"><ci id="S5.T6.2.2.2.m1.1.1.cmml" xref="S5.T6.2.2.2.m1.1.1">ℱ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.m1.1c">\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.m1.1d">caligraphic_F</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.3.3.3"><math alttext="\mathcal{J\&amp;F}" class="ltx_Math" display="inline" id="S5.T6.3.3.3.m1.1"><semantics id="S5.T6.3.3.3.m1.1a"><mrow id="S5.T6.3.3.3.m1.1.1" xref="S5.T6.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T6.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T6.3.3.3.m1.1.1.2.cmml">𝒥</mi><mo id="S5.T6.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S5.T6.3.3.3.m1.1.1.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S5.T6.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T6.3.3.3.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.3.m1.1b"><apply id="S5.T6.3.3.3.m1.1.1.cmml" xref="S5.T6.3.3.3.m1.1.1"><and id="S5.T6.3.3.3.m1.1.1.1.cmml" xref="S5.T6.3.3.3.m1.1.1.1"></and><ci id="S5.T6.3.3.3.m1.1.1.2.cmml" xref="S5.T6.3.3.3.m1.1.1.2">𝒥</ci><ci id="S5.T6.3.3.3.m1.1.1.3.cmml" xref="S5.T6.3.3.3.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.3.m1.1c">\mathcal{J\&amp;F}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.3.4.1"><span class="ltx_text" id="S5.T6.3.4.1.1" style="font-size:90%;">w/o pre-trained</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.4.2"><span class="ltx_text" id="S5.T6.3.4.2.1" style="font-size:90%;">58.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.4.3"><span class="ltx_text" id="S5.T6.3.4.3.1" style="font-size:90%;">64.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.4.4"><span class="ltx_text" id="S5.T6.3.4.4.1" style="font-size:90%;">61.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.3.5.1"><span class="ltx_text" id="S5.T6.3.5.1.1" style="font-size:90%;">Prompt Generator</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.5.2"><span class="ltx_text" id="S5.T6.3.5.2.1" style="font-size:90%;">64.16</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.5.3"><span class="ltx_text" id="S5.T6.3.5.3.1" style="font-size:90%;">70.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.3.5.4"><span class="ltx_text" id="S5.T6.3.5.4.1" style="font-size:90%;">67.23</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.3.6.1"><span class="ltx_text" id="S5.T6.3.6.1.1" style="font-size:90%;">Prompt Generator and decoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.3.6.2"><span class="ltx_text ltx_font_bold" id="S5.T6.3.6.2.1" style="font-size:90%;">67.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.3.6.3"><span class="ltx_text ltx_font_bold" id="S5.T6.3.6.3.1" style="font-size:90%;">73.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.3.6.4"><span class="ltx_text ltx_font_bold" id="S5.T6.3.6.4.1" style="font-size:90%;">70.59</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different model pre-training strategies on the In-Context Video Object Segmentation (IC-VOS) benchmark.  Three variations are compared: (1) a model trained directly on mask tubes for 50,000 iterations without any pre-training; (2) a model where only the prompt generator was pre-trained before fine-tuning; and (3) a model where both the prompt generator and SAM2 decoder were pre-trained before fine-tuning. The results are evaluated using three metrics: region similarity (I), contour accuracy (F), and the Jaccard Index (J&F).  The table shows the effectiveness of pre-training both the prompt generator and the SAM2 decoder before fine-tuning, which leads to a significant performance improvement.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Performance comparison of different pre-trained modules. During fine-tuning, the SAM2 decoder parameters were unfrozen and adjusted. The term “w/o pre-trained” indicates direct training using mask tubes over 50,000 iterations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T7.7">
<tr class="ltx_tr" id="S5.T7.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.3.3.4"><span class="ltx_text" id="S5.T7.3.3.4.1" style="font-size:90%;">decoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T7.3.3.5"><span class="ltx_text" id="S5.T7.3.3.5.1" style="font-size:90%;">Memory</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1"><math alttext="\mathcal{J}" class="ltx_Math" display="inline" id="S5.T7.1.1.1.m1.1"><semantics id="S5.T7.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T7.1.1.1.m1.1.1" mathsize="90%" xref="S5.T7.1.1.1.m1.1.1.cmml">𝒥</mi><annotation-xml encoding="MathML-Content" id="S5.T7.1.1.1.m1.1b"><ci id="S5.T7.1.1.1.m1.1.1.cmml" xref="S5.T7.1.1.1.m1.1.1">𝒥</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.1.1.1.m1.1c">\mathcal{J}</annotation><annotation encoding="application/x-llamapun" id="S5.T7.1.1.1.m1.1d">caligraphic_J</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.2.2"><math alttext="\mathcal{F}" class="ltx_Math" display="inline" id="S5.T7.2.2.2.m1.1"><semantics id="S5.T7.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T7.2.2.2.m1.1.1" mathsize="90%" xref="S5.T7.2.2.2.m1.1.1.cmml">ℱ</mi><annotation-xml encoding="MathML-Content" id="S5.T7.2.2.2.m1.1b"><ci id="S5.T7.2.2.2.m1.1.1.cmml" xref="S5.T7.2.2.2.m1.1.1">ℱ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.2.2.2.m1.1c">\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S5.T7.2.2.2.m1.1d">caligraphic_F</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.3.3.3"><math alttext="\mathcal{J\&amp;F}" class="ltx_Math" display="inline" id="S5.T7.3.3.3.m1.1"><semantics id="S5.T7.3.3.3.m1.1a"><mrow id="S5.T7.3.3.3.m1.1.1" xref="S5.T7.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T7.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T7.3.3.3.m1.1.1.2.cmml">𝒥</mi><mo id="S5.T7.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S5.T7.3.3.3.m1.1.1.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S5.T7.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T7.3.3.3.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T7.3.3.3.m1.1b"><apply id="S5.T7.3.3.3.m1.1.1.cmml" xref="S5.T7.3.3.3.m1.1.1"><and id="S5.T7.3.3.3.m1.1.1.1.cmml" xref="S5.T7.3.3.3.m1.1.1.1"></and><ci id="S5.T7.3.3.3.m1.1.1.2.cmml" xref="S5.T7.3.3.3.m1.1.1.2">𝒥</ci><ci id="S5.T7.3.3.3.m1.1.1.3.cmml" xref="S5.T7.3.3.3.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.3.3.3.m1.1c">\mathcal{J\&amp;F}</annotation><annotation encoding="application/x-llamapun" id="S5.T7.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T7.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T7.4.4.1.m1.1"><semantics id="S5.T7.4.4.1.m1.1a"><mi id="S5.T7.4.4.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T7.4.4.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T7.4.4.1.m1.1b"><ci id="S5.T7.4.4.1.m1.1.1.cmml" xref="S5.T7.4.4.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.4.4.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T7.4.4.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T7.4.4.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.3"><span class="ltx_text" id="S5.T7.4.4.3.1" style="font-size:90%;">67.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.4"><span class="ltx_text" id="S5.T7.4.4.4.1" style="font-size:90%;">73.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.4.4.5"><span class="ltx_text" id="S5.T7.4.4.5.1" style="font-size:90%;">70.59</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.5.5">
<td class="ltx_td" id="S5.T7.5.5.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.5.5.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T7.5.5.1.m1.1"><semantics id="S5.T7.5.5.1.m1.1a"><mi id="S5.T7.5.5.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T7.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T7.5.5.1.m1.1b"><ci id="S5.T7.5.5.1.m1.1.1.cmml" xref="S5.T7.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T7.5.5.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.5.3"><span class="ltx_text" id="S5.T7.5.5.3.1" style="font-size:90%;">68.27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.5.4"><span class="ltx_text" id="S5.T7.5.5.4.1" style="font-size:90%;">74.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.5.5.5"><span class="ltx_text" id="S5.T7.5.5.5.1" style="font-size:90%;">71.23</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.7.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.6.6.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T7.6.6.1.m1.1"><semantics id="S5.T7.6.6.1.m1.1a"><mi id="S5.T7.6.6.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T7.6.6.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T7.6.6.1.m1.1b"><ci id="S5.T7.6.6.1.m1.1.1.cmml" xref="S5.T7.6.6.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.6.6.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T7.6.6.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.7.7.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T7.7.7.2.m1.1"><semantics id="S5.T7.7.7.2.m1.1a"><mi id="S5.T7.7.7.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T7.7.7.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T7.7.7.2.m1.1b"><ci id="S5.T7.7.7.2.m1.1.1.cmml" xref="S5.T7.7.7.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.7.7.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T7.7.7.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.7.7.3"><span class="ltx_text ltx_font_bold" id="S5.T7.7.7.3.1" style="font-size:90%;">68.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.7.7.4"><span class="ltx_text ltx_font_bold" id="S5.T7.7.7.4.1" style="font-size:90%;">74.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.7.7.5"><span class="ltx_text ltx_font_bold" id="S5.T7.7.7.5.1" style="font-size:90%;">71.52</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study comparing the performance of fine-tuning different components of the SAM2 model. It shows how the model's performance (measured by the J&F score) is affected by fine-tuning the decoder, memory, or both components.  The table allows researchers to understand the contribution of each module to the overall performance on the IC-VOS benchmark.
> <details>
> <summary>read the caption</summary>
> TABLE VII: Comparison of fine-tuning with different modules.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T8.3">
<tr class="ltx_tr" id="S5.T8.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T8.3.3.4"><span class="ltx_text" id="S5.T8.3.3.4.1" style="font-size:90%;">Ablation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.1.1.1"><math alttext="\mathcal{J}" class="ltx_Math" display="inline" id="S5.T8.1.1.1.m1.1"><semantics id="S5.T8.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T8.1.1.1.m1.1.1" mathsize="90%" xref="S5.T8.1.1.1.m1.1.1.cmml">𝒥</mi><annotation-xml encoding="MathML-Content" id="S5.T8.1.1.1.m1.1b"><ci id="S5.T8.1.1.1.m1.1.1.cmml" xref="S5.T8.1.1.1.m1.1.1">𝒥</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.1.1.1.m1.1c">\mathcal{J}</annotation><annotation encoding="application/x-llamapun" id="S5.T8.1.1.1.m1.1d">caligraphic_J</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.2.2"><math alttext="\mathcal{F}" class="ltx_Math" display="inline" id="S5.T8.2.2.2.m1.1"><semantics id="S5.T8.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T8.2.2.2.m1.1.1" mathsize="90%" xref="S5.T8.2.2.2.m1.1.1.cmml">ℱ</mi><annotation-xml encoding="MathML-Content" id="S5.T8.2.2.2.m1.1b"><ci id="S5.T8.2.2.2.m1.1.1.cmml" xref="S5.T8.2.2.2.m1.1.1">ℱ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.2.2.2.m1.1c">\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S5.T8.2.2.2.m1.1d">caligraphic_F</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.3.3.3"><math alttext="\mathcal{J\&amp;F}" class="ltx_Math" display="inline" id="S5.T8.3.3.3.m1.1"><semantics id="S5.T8.3.3.3.m1.1a"><mrow id="S5.T8.3.3.3.m1.1.1" xref="S5.T8.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T8.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T8.3.3.3.m1.1.1.2.cmml">𝒥</mi><mo id="S5.T8.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S5.T8.3.3.3.m1.1.1.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S5.T8.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T8.3.3.3.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.3.3.3.m1.1b"><apply id="S5.T8.3.3.3.m1.1.1.cmml" xref="S5.T8.3.3.3.m1.1.1"><and id="S5.T8.3.3.3.m1.1.1.1.cmml" xref="S5.T8.3.3.3.m1.1.1.1"></and><ci id="S5.T8.3.3.3.m1.1.1.2.cmml" xref="S5.T8.3.3.3.m1.1.1.2">𝒥</ci><ci id="S5.T8.3.3.3.m1.1.1.3.cmml" xref="S5.T8.3.3.3.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.3.3.3.m1.1c">\mathcal{J\&amp;F}</annotation><annotation encoding="application/x-llamapun" id="S5.T8.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T8.3.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.3.4.1"><span class="ltx_text" id="S5.T8.3.4.1.1" style="font-size:90%;">w/o mask tube</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.3.4.2"><span class="ltx_text" id="S5.T8.3.4.2.1" style="font-size:90%;">63.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.3.4.3"><span class="ltx_text" id="S5.T8.3.4.3.1" style="font-size:90%;">70.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.3.4.4"><span class="ltx_text" id="S5.T8.3.4.4.1" style="font-size:90%;">66.94</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.3.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T8.3.5.1"><span class="ltx_text" id="S5.T8.3.5.1.1" style="font-size:90%;">w/ mask tube</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.3.5.2"><span class="ltx_text ltx_font_bold" id="S5.T8.3.5.2.1" style="font-size:90%;">67.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.3.5.3"><span class="ltx_text ltx_font_bold" id="S5.T8.3.5.3.1" style="font-size:90%;">73.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.3.5.4"><span class="ltx_text ltx_font_bold" id="S5.T8.3.5.4.1" style="font-size:90%;">70.59</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study comparing the performance of fine-tuning a model for video segmentation with and without using mask tubes.  The experiment used 50,000 training iterations. The results are evaluated using three metrics: Intersection over Union (I), Frequency (F), and Jaccard Index & Frequency (J&F).  The table shows how incorporating mask tubes impacts performance as measured by these metrics.
> <details>
> <summary>read the caption</summary>
> TABLE VIII: Comparison of fine-tuning with and without mask tubes. The total number of training iterations is 50k.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T9.5.1">
<tr class="ltx_tr" id="S5.T9.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T9.5.1.1.1">Shots</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T9.5.1.1.2">Backbone</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.5.1.1.3">F-0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.5.1.1.4">F-1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.5.1.1.5">F-2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T9.5.1.1.6">F-3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T9.5.1.1.7">Means</td>
</tr>
<tr class="ltx_tr" id="S5.T9.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T9.5.1.2.1">1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T9.5.1.2.2" rowspan="3"><span class="ltx_text" id="S5.T9.5.1.2.2.1">VGG-16 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib73" title="">73</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.2.3">71.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.2.4">77.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.2.5">69.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T9.5.1.2.6">63.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.2.7">70.4</td>
</tr>
<tr class="ltx_tr" id="S5.T9.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.5.1.3.1" rowspan="2"><span class="ltx_text" id="S5.T9.5.1.3.1.1">5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.3.2">76.9</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.3.3">79.6</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.3.4">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.5.1.3.5">69.3</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.3.6">74.3</td>
</tr>
<tr class="ltx_tr" id="S5.T9.5.1.4">
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.4.1">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.4.1.1">+5.2</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.4.2">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.4.2.1">+2.4</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.4.3">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.4.3.1">+2.4</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.5.1.4.4">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.4.4.1">+5.5</span>)</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.4.5">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.4.5.1">+3.9</span>)</td>
</tr>
<tr class="ltx_tr" id="S5.T9.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T9.5.1.5.1">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T9.5.1.5.2" rowspan="3"><span class="ltx_text" id="S5.T9.5.1.5.2.1">ResNet-50 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib62" title="">62</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.5.3">74.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.5.4">79.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.5.5">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T9.5.1.5.6">66.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.5.1.5.7">73.0</td>
</tr>
<tr class="ltx_tr" id="S5.T9.5.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T9.5.1.6.1" rowspan="2"><span class="ltx_text" id="S5.T9.5.1.6.1.1">5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.6.2">78.2</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.6.3">81.4</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.6.4">72.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T9.5.1.6.5">73.8</td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.1.6.6">76.5</td>
</tr>
<tr class="ltx_tr" id="S5.T9.5.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.5.1.7.1">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.7.1.1">+3.4</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.5.1.7.2">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.7.2.1">+2.3</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.5.1.7.3">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.7.3.1">+1.3</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T9.5.1.7.4">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.7.4.1">+7.3</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.5.1.7.5">(<span class="ltx_text ltx_font_bold" id="S5.T9.5.1.7.5.1">+3.5</span>)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Dual Consistency Segment Anything Model (DC-SAM) on the PASCAL-5i dataset in few-shot learning settings.  It shows the performance of DC-SAM using different numbers of support examples (shots). The evaluation metrics used are the mean Intersection over Union (mIoU) for each of the four test folds (F-0 to F-3) and the overall mean across all folds. Different backbone networks might be used for feature extraction. The table aims to demonstrate the model's ability to generalize to unseen categories with limited training data.
> <details>
> <summary>read the caption</summary>
> TABLE IX: Evaluation of DC-SAM in few-shot scenarios on the PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T10.10">
<tr class="ltx_tr" id="S5.T10.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.3.3.4"><span class="ltx_text" id="S5.T10.3.3.4.1" style="font-size:90%;">Decoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.3.3.5"><span class="ltx_text" id="S5.T10.3.3.5.1" style="font-size:90%;">Memory</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T10.3.3.6"><span class="ltx_text" id="S5.T10.3.3.6.1" style="font-size:90%;">LoRA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.3.3.7"><span class="ltx_text" id="S5.T10.3.3.7.1" style="font-size:90%;"># param</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.1.1.1"><math alttext="\mathcal{J}" class="ltx_Math" display="inline" id="S5.T10.1.1.1.m1.1"><semantics id="S5.T10.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T10.1.1.1.m1.1.1" mathsize="90%" xref="S5.T10.1.1.1.m1.1.1.cmml">𝒥</mi><annotation-xml encoding="MathML-Content" id="S5.T10.1.1.1.m1.1b"><ci id="S5.T10.1.1.1.m1.1.1.cmml" xref="S5.T10.1.1.1.m1.1.1">𝒥</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.1.1.1.m1.1c">\mathcal{J}</annotation><annotation encoding="application/x-llamapun" id="S5.T10.1.1.1.m1.1d">caligraphic_J</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.2.2.2"><math alttext="\mathcal{F}" class="ltx_Math" display="inline" id="S5.T10.2.2.2.m1.1"><semantics id="S5.T10.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T10.2.2.2.m1.1.1" mathsize="90%" xref="S5.T10.2.2.2.m1.1.1.cmml">ℱ</mi><annotation-xml encoding="MathML-Content" id="S5.T10.2.2.2.m1.1b"><ci id="S5.T10.2.2.2.m1.1.1.cmml" xref="S5.T10.2.2.2.m1.1.1">ℱ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.2.2.2.m1.1c">\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S5.T10.2.2.2.m1.1d">caligraphic_F</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T10.3.3.3"><math alttext="\mathcal{J\&amp;F}" class="ltx_Math" display="inline" id="S5.T10.3.3.3.m1.1"><semantics id="S5.T10.3.3.3.m1.1a"><mrow id="S5.T10.3.3.3.m1.1.1" xref="S5.T10.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T10.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T10.3.3.3.m1.1.1.2.cmml">𝒥</mi><mo id="S5.T10.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S5.T10.3.3.3.m1.1.1.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S5.T10.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T10.3.3.3.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T10.3.3.3.m1.1b"><apply id="S5.T10.3.3.3.m1.1.1.cmml" xref="S5.T10.3.3.3.m1.1.1"><and id="S5.T10.3.3.3.m1.1.1.1.cmml" xref="S5.T10.3.3.3.m1.1.1.1"></and><ci id="S5.T10.3.3.3.m1.1.1.2.cmml" xref="S5.T10.3.3.3.m1.1.1.2">𝒥</ci><ci id="S5.T10.3.3.3.m1.1.1.3.cmml" xref="S5.T10.3.3.3.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.3.3.3.m1.1c">\mathcal{J\&amp;F}</annotation><annotation encoding="application/x-llamapun" id="S5.T10.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T10.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.4.4.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T10.4.4.1.m1.1"><semantics id="S5.T10.4.4.1.m1.1a"><mi id="S5.T10.4.4.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T10.4.4.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T10.4.4.1.m1.1b"><ci id="S5.T10.4.4.1.m1.1.1.cmml" xref="S5.T10.4.4.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.4.4.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T10.4.4.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_border_t" id="S5.T10.4.4.2"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T10.4.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.4.4.4"><span class="ltx_text" id="S5.T10.4.4.4.1" style="font-size:90%;">3.95M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.4.4.5"><span class="ltx_text" id="S5.T10.4.4.5.1" style="font-size:90%;">67.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.4.4.6"><span class="ltx_text" id="S5.T10.4.4.6.1" style="font-size:90%;">73.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.4.4.7"><span class="ltx_text" id="S5.T10.4.4.7.1" style="font-size:90%;">70.59</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.5.5">
<td class="ltx_td" id="S5.T10.5.5.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T10.5.5.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T10.5.5.1.m1.1"><semantics id="S5.T10.5.5.1.m1.1a"><mi id="S5.T10.5.5.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T10.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T10.5.5.1.m1.1b"><ci id="S5.T10.5.5.1.m1.1.1.cmml" xref="S5.T10.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T10.5.5.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_border_r" id="S5.T10.5.5.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T10.5.5.4"><span class="ltx_text" id="S5.T10.5.5.4.1" style="font-size:90%;">7.31M</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.5.5.5"><span class="ltx_text" id="S5.T10.5.5.5.1" style="font-size:90%;">68.27</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.5.5.6"><span class="ltx_text" id="S5.T10.5.5.6.1" style="font-size:90%;">74.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.5.5.7"><span class="ltx_text" id="S5.T10.5.5.7.1" style="font-size:90%;">71.23</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.7.7">
<td class="ltx_td ltx_align_center" id="S5.T10.6.6.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T10.6.6.1.m1.1"><semantics id="S5.T10.6.6.1.m1.1a"><mi id="S5.T10.6.6.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T10.6.6.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T10.6.6.1.m1.1b"><ci id="S5.T10.6.6.1.m1.1.1.cmml" xref="S5.T10.6.6.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.6.6.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T10.6.6.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T10.7.7.2.m1.1"><semantics id="S5.T10.7.7.2.m1.1a"><mi id="S5.T10.7.7.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T10.7.7.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T10.7.7.2.m1.1b"><ci id="S5.T10.7.7.2.m1.1.1.cmml" xref="S5.T10.7.7.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.7.7.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T10.7.7.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_border_r" id="S5.T10.7.7.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.4"><span class="ltx_text" id="S5.T10.7.7.4.1" style="font-size:90%;">11.26M</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.5"><span class="ltx_text ltx_font_bold" id="S5.T10.7.7.5.1" style="font-size:90%;">68.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.6"><span class="ltx_text ltx_font_bold" id="S5.T10.7.7.6.1" style="font-size:90%;">74.65</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.7.7.7"><span class="ltx_text ltx_font_bold" id="S5.T10.7.7.7.1" style="font-size:90%;">71.52</span></td>
</tr>
<tr class="ltx_tr" id="S5.T10.10.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.8.8.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T10.8.8.1.m1.1"><semantics id="S5.T10.8.8.1.m1.1a"><mi id="S5.T10.8.8.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T10.8.8.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T10.8.8.1.m1.1b"><ci id="S5.T10.8.8.1.m1.1.1.cmml" xref="S5.T10.8.8.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.8.8.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T10.8.8.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.9.9.2"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T10.9.9.2.m1.1"><semantics id="S5.T10.9.9.2.m1.1a"><mi id="S5.T10.9.9.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T10.9.9.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T10.9.9.2.m1.1b"><ci id="S5.T10.9.9.2.m1.1.1.cmml" xref="S5.T10.9.9.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.9.9.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T10.9.9.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T10.10.10.3"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S5.T10.10.10.3.m1.1"><semantics id="S5.T10.10.10.3.m1.1a"><mi id="S5.T10.10.10.3.m1.1.1" mathsize="90%" mathvariant="normal" xref="S5.T10.10.10.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S5.T10.10.10.3.m1.1b"><ci id="S5.T10.10.10.3.m1.1.1.cmml" xref="S5.T10.10.10.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T10.10.10.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S5.T10.10.10.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.10.10.4"><span class="ltx_text" id="S5.T10.10.10.4.1" style="font-size:90%;">0.11M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.10.10.5"><span class="ltx_text" id="S5.T10.10.10.5.1" style="font-size:90%;">66.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.10.10.6"><span class="ltx_text" id="S5.T10.10.10.6.1" style="font-size:90%;">72.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T10.10.10.7"><span class="ltx_text" id="S5.T10.10.10.7.1" style="font-size:90%;">69.79</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different fine-tuning approaches for the SAM2 model, focusing on the impact on model performance (measured by Intersection over Union, contour accuracy, and J&F score) and the number of trainable parameters.  Different fine-tuning strategies are compared, varying in which components of SAM2 are fine-tuned (decoder, memory, or both). The LoRA technique for efficient parameter tuning is also evaluated. The results offer insights into how the different fine-tuning strategies affect both model accuracy and model size.
> <details>
> <summary>read the caption</summary>
> TABLE X: Performance and SAM2 trainable parameters of different fine-tuning versions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T11.7.1">
<tr class="ltx_tr" id="S5.T11.7.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T11.7.1.1.1"><span class="ltx_text" id="S5.T11.7.1.1.1.1" style="font-size:90%;">Fold</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T11.7.1.1.2"><span class="ltx_text" id="S5.T11.7.1.1.2.1" style="font-size:90%;">Test Classes</span></td>
</tr>
<tr class="ltx_tr" id="S5.T11.7.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T11.7.1.2.1"><span class="ltx_text" id="S5.T11.7.1.2.1.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T11.7.1.2.2"><span class="ltx_text" id="S5.T11.7.1.2.2.1" style="font-size:90%;">Aeroplane, Boat, Chair, Dining table, Dog, Person</span></td>
</tr>
<tr class="ltx_tr" id="S5.T11.7.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T11.7.1.3.1"><span class="ltx_text" id="S5.T11.7.1.3.1.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T11.7.1.3.2"><span class="ltx_text" id="S5.T11.7.1.3.2.1" style="font-size:90%;">Horse, Sofa, Bicycle, Bus</span></td>
</tr>
<tr class="ltx_tr" id="S5.T11.7.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T11.7.1.4.1"><span class="ltx_text" id="S5.T11.7.1.4.1.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T11.7.1.4.2"><span class="ltx_text" id="S5.T11.7.1.4.2.1" style="font-size:90%;">Bird, Car, Potted plant, Sheep, Train, TV/monitor</span></td>
</tr>
<tr class="ltx_tr" id="S5.T11.7.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T11.7.1.5.1"><span class="ltx_text" id="S5.T11.7.1.5.1.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T11.7.1.5.2"><span class="ltx_text" id="S5.T11.7.1.5.2.1" style="font-size:90%;">Bottle, Cow, Cat, Motorbike</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the class splits used for evaluating the generalization performance of the DC-SAM model in a domain adaptation setting.  Specifically, it shows how the PASCAL-5i dataset was divided into four folds for cross-validation, with each fold serving as a test set while the remaining three folds comprised the training set.  Crucially, the classes in each PASCAL-5i test fold were chosen to be non-overlapping with the classes used in the corresponding training fold derived from the COCO-20i dataset.  This setup is designed to assess how well a model trained on COCO-20i can generalize to unseen classes in PASCAL-5i, simulating a real-world domain shift scenario where training and testing data come from different distributions.
> <details>
> <summary>read the caption</summary>
> TABLE XI: Details of the data split for PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT in the domain shift scenario. Each row represents non-overlapping classes in the training set, corresponding to the respective fold of COCO-20isuperscript20𝑖20^{i}20 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T12.5">
<tr class="ltx_tr" id="S5.T12.5.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T12.5.1.1"><span class="ltx_text" id="S5.T12.5.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T12.5.1.2"><span class="ltx_text" id="S5.T12.5.1.2.1" style="font-size:90%;">Image Encoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T12.5.1.3"><span class="ltx_text" id="S5.T12.5.1.3.1" style="font-size:90%;">Means</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T12.5.2.1">
<span class="ltx_text" id="S5.T12.5.2.1.1" style="font-size:90%;">RPMM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib84" title="">84</a><span class="ltx_text" id="S5.T12.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.5.2.2" rowspan="5"><span class="ltx_text" id="S5.T12.5.2.2.1" style="font-size:90%;">ResNet-50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.5.2.3"><span class="ltx_text" id="S5.T12.5.2.3.1" style="font-size:90%;">49.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.3">
<td class="ltx_td ltx_align_left" id="S5.T12.5.3.1">
<span class="ltx_text" id="S5.T12.5.3.1.1" style="font-size:90%;">PFENet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib12" title="">12</a><span class="ltx_text" id="S5.T12.5.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T12.5.3.2"><span class="ltx_text" id="S5.T12.5.3.2.1" style="font-size:90%;">61.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.4">
<td class="ltx_td ltx_align_left" id="S5.T12.5.4.1">
<span class="ltx_text" id="S5.T12.5.4.1.1" style="font-size:90%;">RePRI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib85" title="">85</a><span class="ltx_text" id="S5.T12.5.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T12.5.4.2"><span class="ltx_text" id="S5.T12.5.4.2.1" style="font-size:90%;">63.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.5">
<td class="ltx_td ltx_align_left" id="S5.T12.5.5.1">
<span class="ltx_text" id="S5.T12.5.5.1.1" style="font-size:90%;">VAT-HM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib86" title="">86</a><span class="ltx_text" id="S5.T12.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T12.5.5.2"><span class="ltx_text" id="S5.T12.5.5.2.1" style="font-size:90%;">65.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.6">
<td class="ltx_td ltx_align_left" id="S5.T12.5.6.1">
<span class="ltx_text" id="S5.T12.5.6.1.1" style="font-size:90%;">VRP-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib25" title="">25</a><span class="ltx_text" id="S5.T12.5.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T12.5.6.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T12.5.6.2.1" style="font-size:90%;">75.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T12.5.7.1">
<span class="ltx_text" id="S5.T12.5.7.1.1" style="font-size:90%;">HSNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib80" title="">80</a><span class="ltx_text" id="S5.T12.5.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.5.7.2" rowspan="2"><span class="ltx_text" id="S5.T12.5.7.2.1" style="font-size:90%;">ResNet-101</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.5.7.3"><span class="ltx_text" id="S5.T12.5.7.3.1" style="font-size:90%;">64.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.8">
<td class="ltx_td ltx_align_left" id="S5.T12.5.8.1">
<span class="ltx_text" id="S5.T12.5.8.1.1" style="font-size:90%;">DGPNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib87" title="">87</a><span class="ltx_text" id="S5.T12.5.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T12.5.8.2"><span class="ltx_text" id="S5.T12.5.8.2.1" style="font-size:90%;">70.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T12.5.9.1">
<span class="ltx_text" id="S5.T12.5.9.1.1" style="font-size:90%;">FP-Trans </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T12.5.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib88" title="">88</a><span class="ltx_text" id="S5.T12.5.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.5.9.2"><span class="ltx_text" id="S5.T12.5.9.2.1" style="font-size:90%;">DeiT-B/16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T12.5.9.3"><span class="ltx_text" id="S5.T12.5.9.3.1" style="font-size:90%;">69.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T12.5.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S5.T12.5.10.1"><span class="ltx_text" id="S5.T12.5.10.1.1" style="font-size:90%;">DC-SAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S5.T12.5.10.2"><span class="ltx_text" id="S5.T12.5.10.2.1" style="font-size:90%;">ResNet-50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S5.T12.5.10.3"><span class="ltx_text ltx_font_bold" id="S5.T12.5.10.3.1" style="font-size:90%;">76.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the generalization capabilities of the DC-SAM model.  Specifically, it shows the mean Intersection over Union (mIoU) scores achieved when the model, trained on the COCO dataset, is applied to the PASCAL-5i dataset. The PASCAL-5i dataset is a subset of the PASCAL VOC 2012 dataset that contains 5 images per class and is intended to measure the model's ability to generalize to unseen data.  Different image encoders (ResNet50, ResNet101, DeiT-B/16) were used to compare performance.
> <details>
> <summary>read the caption</summary>
> TABLE XII: Generalization performance on the PASCAL-5isuperscript5𝑖5^{i}5 start_POSTSUPERSCRIPT italic_i end_POSTSUPERSCRIPT dataset using Mean IoU (%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T13.3">
<tr class="ltx_tr" id="S5.T13.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T13.3.3.4"><span class="ltx_text" id="S5.T13.3.3.4.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T13.3.3.5"><span class="ltx_text" id="S5.T13.3.3.5.1" style="font-size:90%;">SAM2 Version</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T13.1.1.1"><math alttext="\mathcal{J}" class="ltx_Math" display="inline" id="S5.T13.1.1.1.m1.1"><semantics id="S5.T13.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T13.1.1.1.m1.1.1" mathsize="90%" xref="S5.T13.1.1.1.m1.1.1.cmml">𝒥</mi><annotation-xml encoding="MathML-Content" id="S5.T13.1.1.1.m1.1b"><ci id="S5.T13.1.1.1.m1.1.1.cmml" xref="S5.T13.1.1.1.m1.1.1">𝒥</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T13.1.1.1.m1.1c">\mathcal{J}</annotation><annotation encoding="application/x-llamapun" id="S5.T13.1.1.1.m1.1d">caligraphic_J</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T13.2.2.2"><math alttext="\mathcal{F}" class="ltx_Math" display="inline" id="S5.T13.2.2.2.m1.1"><semantics id="S5.T13.2.2.2.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S5.T13.2.2.2.m1.1.1" mathsize="90%" xref="S5.T13.2.2.2.m1.1.1.cmml">ℱ</mi><annotation-xml encoding="MathML-Content" id="S5.T13.2.2.2.m1.1b"><ci id="S5.T13.2.2.2.m1.1.1.cmml" xref="S5.T13.2.2.2.m1.1.1">ℱ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T13.2.2.2.m1.1c">\mathcal{F}</annotation><annotation encoding="application/x-llamapun" id="S5.T13.2.2.2.m1.1d">caligraphic_F</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T13.3.3.3"><math alttext="\mathcal{J\&amp;F}" class="ltx_Math" display="inline" id="S5.T13.3.3.3.m1.1"><semantics id="S5.T13.3.3.3.m1.1a"><mrow id="S5.T13.3.3.3.m1.1.1" xref="S5.T13.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T13.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T13.3.3.3.m1.1.1.2.cmml">𝒥</mi><mo id="S5.T13.3.3.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S5.T13.3.3.3.m1.1.1.1.cmml">&amp;</mo><mi class="ltx_font_mathcaligraphic" id="S5.T13.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T13.3.3.3.m1.1.1.3.cmml">ℱ</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T13.3.3.3.m1.1b"><apply id="S5.T13.3.3.3.m1.1.1.cmml" xref="S5.T13.3.3.3.m1.1.1"><and id="S5.T13.3.3.3.m1.1.1.1.cmml" xref="S5.T13.3.3.3.m1.1.1.1"></and><ci id="S5.T13.3.3.3.m1.1.1.2.cmml" xref="S5.T13.3.3.3.m1.1.1.2">𝒥</ci><ci id="S5.T13.3.3.3.m1.1.1.3.cmml" xref="S5.T13.3.3.3.m1.1.1.3">ℱ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T13.3.3.3.m1.1c">\mathcal{J\&amp;F}</annotation><annotation encoding="application/x-llamapun" id="S5.T13.3.3.3.m1.1d">caligraphic_J &amp; caligraphic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T13.3.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T13.3.4.1" rowspan="2"><span class="ltx_text" id="S5.T13.3.4.1.1" style="font-size:90%;">IC-VOS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T13.3.4.2"><span class="ltx_text" id="S5.T13.3.4.2.1" style="font-size:90%;">original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T13.3.4.3"><span class="ltx_text" id="S5.T13.3.4.3.1" style="font-size:90%;">87.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T13.3.4.4"><span class="ltx_text" id="S5.T13.3.4.4.1" style="font-size:90%;">92.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T13.3.4.5"><span class="ltx_text" id="S5.T13.3.4.5.1" style="font-size:90%;">89.93</span></td>
</tr>
<tr class="ltx_tr" id="S5.T13.3.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T13.3.5.1"><span class="ltx_text" id="S5.T13.3.5.1.1" style="font-size:90%;">fine-tuned</span></td>
<td class="ltx_td ltx_align_center" id="S5.T13.3.5.2"><span class="ltx_text" id="S5.T13.3.5.2.1" style="font-size:90%;">89.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T13.3.5.3"><span class="ltx_text" id="S5.T13.3.5.3.1" style="font-size:90%;">94.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T13.3.5.4"><span class="ltx_text" id="S5.T13.3.5.4.1" style="font-size:90%;">91.74</span></td>
</tr>
<tr class="ltx_tr" id="S5.T13.3.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T13.3.6.1" rowspan="2"><span class="ltx_text" id="S5.T13.3.6.1.1" style="font-size:90%;">LVOS v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib29" title="">29</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T13.3.6.2"><span class="ltx_text" id="S5.T13.3.6.2.1" style="font-size:90%;">original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T13.3.6.3"><span class="ltx_text" id="S5.T13.3.6.3.1" style="font-size:90%;">75.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T13.3.6.4"><span class="ltx_text" id="S5.T13.3.6.4.1" style="font-size:90%;">81.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T13.3.6.5"><span class="ltx_text" id="S5.T13.3.6.5.1" style="font-size:90%;">78.58</span></td>
</tr>
<tr class="ltx_tr" id="S5.T13.3.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T13.3.7.1"><span class="ltx_text" id="S5.T13.3.7.1.1" style="font-size:90%;">fine-tuned</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T13.3.7.2"><span class="ltx_text" id="S5.T13.3.7.2.1" style="font-size:90%;">71.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T13.3.7.3"><span class="ltx_text" id="S5.T13.3.7.3.1" style="font-size:90%;">80.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T13.3.7.4"><span class="ltx_text" id="S5.T13.3.7.4.1" style="font-size:90%;">75.92</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the original SAM2 model and a fine-tuned version of SAM2 on two video object segmentation datasets: the proposed IC-VOS benchmark and the LVOS dataset.  For both models, the evaluation begins with providing the semantic/instance mask from the first frame of each video as input. The comparison highlights the impact of fine-tuning the SAM2 model on video object segmentation accuracy, revealing any improvements or degradations in performance between the original and fine-tuned models across both datasets. The results are presented using the J&F metric (mean of region similarity and contour accuracy).
> <details>
> <summary>read the caption</summary>
> TABLE XIII: Results by the original SAM2 and the fine-tuned SAM2 on the proposed benchmark IC-VOS and the LVOS dataset. Both models were provided with the semantic/instance mask of the first frame of the video.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T14.4">
<tr class="ltx_tr" id="S5.T14.4.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T14.4.1.1"><span class="ltx_text" id="S5.T14.4.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T14.4.1.2"><span class="ltx_text" id="S5.T14.4.1.2.1" style="font-size:90%;">FLOPs (G)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T14.4.1.3"><span class="ltx_text" id="S5.T14.4.1.3.1" style="font-size:90%;">Learnable Parameters</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.4.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T14.4.2.1">
<span class="ltx_text" id="S5.T14.4.2.1.1" style="font-size:90%;">VRP-SAM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T14.4.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib25" title="">25</a><span class="ltx_text" id="S5.T14.4.2.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T14.4.2.2"><span class="ltx_text" id="S5.T14.4.2.2.1" style="font-size:90%;">218.949</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T14.4.2.3"><span class="ltx_text" id="S5.T14.4.2.3.1" style="font-size:90%;">1.6M</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T14.4.3.1">
<span class="ltx_text" id="S5.T14.4.3.1.1" style="font-size:90%;">PFENet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T14.4.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.12080v2#bib.bib12" title="">12</a><span class="ltx_text" id="S5.T14.4.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T14.4.3.2"><span class="ltx_text" id="S5.T14.4.3.2.1" style="font-size:90%;">207.582</span></td>
<td class="ltx_td ltx_align_center" id="S5.T14.4.3.3"><span class="ltx_text" id="S5.T14.4.3.3.1" style="font-size:90%;">10.8M</span></td>
</tr>
<tr class="ltx_tr" id="S5.T14.4.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T14.4.4.1"><span class="ltx_text" id="S5.T14.4.4.1.1" style="font-size:90%;">DC-SAM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T14.4.4.2"><span class="ltx_text" id="S5.T14.4.4.2.1" style="font-size:90%;">278.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T14.4.4.3"><span class="ltx_text" id="S5.T14.4.4.3.1" style="font-size:90%;">1.9M</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the computational cost and model size among three different models: DC-SAM (the proposed model), VRP-SAM, and PFENet.  It shows the number of GFLOPs (giga-floating-point operations), a measure of computational complexity, and the number of learnable parameters (in millions), reflecting the model's size and capacity. This allows for a quantitative assessment of the efficiency and resource requirements of each model.
> <details>
> <summary>read the caption</summary>
> TABLE XIV: GFLOPs and learnable parameter analysis of our proposed model DC-SAM, VRP-SAM, and PFENet.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12080/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12080/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}