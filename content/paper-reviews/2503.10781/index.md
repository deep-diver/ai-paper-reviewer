---
title: "Large-scale Pre-training for Grounded Video Caption Generation"
summary: "GROVE: Pre-training on large-scale data for grounded video caption generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Czech Institute of Informatics, Robotics and Cybernetics",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10781 {{< /keyword >}}
{{< keyword icon="writer" >}} Evangelos Kazakos et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10781" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10781" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10781/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Grounded video caption generation, which involves generating natural language descriptions for videos while simultaneously localizing key objects within the video using bounding boxes, is crucial for advancing areas like human-robot interaction. However, the **lack of large-scale video datasets with dense spatio-temporal grounding** has been a major bottleneck. Existing datasets either focus on localizing single objects or provide sparse annotations, limiting the potential for training robust models. 



This work introduces a novel approach to tackle this challenge by **presenting a large-scale automatic annotation method** that aggregates captions and bounding boxes across individual frames into temporally dense and consistent annotations. They create **HowToGround1M dataset** and propose a **Grounded Video Caption Generation model, dubbed GROVE**, which is pre-trained on HowToGround1M and fine-tuned on the new **iGround dataset**. Experimental results demonstrate state-of-the-art performance on multiple datasets.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a method for large-scale automatic annotation of grounded video captions, creating the HowToGround1M dataset. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Proposes GROVE, a Grounded Video Caption Generation model, pre-trained on HowToGround1M and fine-tuned on iGround. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art results on iGround, VidSTG, and ActivityNet-Entities datasets, demonstrating the effectiveness of the approach. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it **addresses the gap in large-scale, densely annotated video datasets**, enabling more effective training of video understanding models. The introduced GROVE model and iGround dataset **set a new benchmark for grounded video captioning**, offering a valuable resource and a strong foundation for future work in embodied perception and human-robot interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10781/x2.png)

> 🔼 This figure showcases the GROVE model's output for an instructional video.  The model generates a video-level caption (at the bottom) and highlights key objects mentioned in the caption with color-coded bounding boxes (at the top).  These boxes track the objects consistently across different frames, even as the objects change size and position.  Importantly, the model correctly identifies when a person is occluded, represented by the absence of a bounding box in frames where the person or their hand is not visible.
> <details>
> <summary>read the caption</summary>
> Figure 1: Output of our GROunded Video caption gEneration (GROVE) model on an instructional video. The model outputs a video-level caption (bottom) with key noun phrases in the caption coloured and localised (grounded) in the video by temporally consistent bounding boxes (top). Note how the objects are consistently annotated (with the same color) despite changes in scale and viewpoint and how the person is marked as occluded (orange box not present) in frames 1 and 4 when the person (or their hand) is not visible.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.tab1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.tab1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S2.tab1.1.1.1.1.1">Dataset</th>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S2.tab1.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S2.tab1.1.1.1.1.2.1">
<span class="ltx_p" id="S2.tab1.1.1.1.1.2.1.1" style="width:34.1pt;">Annot.</span>
</span>
</td>
<td class="ltx_td ltx_border_tt" id="S2.tab1.1.1.1.1.3"></td>
<td class="ltx_td ltx_border_tt" id="S2.tab1.1.1.1.1.4"></td>
<td class="ltx_td ltx_border_tt" id="S2.tab1.1.1.1.1.5"></td>
<td class="ltx_td ltx_border_tt" id="S2.tab1.1.1.1.1.6"></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S2.tab1.1.1.2.2.1"></th>
<td class="ltx_td ltx_align_left" id="S2.tab1.1.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S2.tab1.1.1.2.2.2.1">
<span class="ltx_p" id="S2.tab1.1.1.2.2.2.1.1" style="width:34.1pt;">Multiple</span>
</span>
</td>
<td class="ltx_td" id="S2.tab1.1.1.2.2.3"></td>
<td class="ltx_td" id="S2.tab1.1.1.2.2.4"></td>
<td class="ltx_td" id="S2.tab1.1.1.2.2.5"></td>
<td class="ltx_td" id="S2.tab1.1.1.2.2.6"></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S2.tab1.1.1.3.3.1"></th>
<td class="ltx_td ltx_align_left" id="S2.tab1.1.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S2.tab1.1.1.3.3.2.1">
<span class="ltx_p" id="S2.tab1.1.1.3.3.2.1.1" style="width:51.2pt;">Multi-object</span>
</span>
</td>
<td class="ltx_td" id="S2.tab1.1.1.3.3.3"></td>
<td class="ltx_td" id="S2.tab1.1.1.3.3.4"></td>
<td class="ltx_td" id="S2.tab1.1.1.3.3.5"></td>
<td class="ltx_td" id="S2.tab1.1.1.3.3.6"></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.4.4">
<th class="ltx_td ltx_th ltx_th_row" id="S2.tab1.1.1.4.4.1"></th>
<td class="ltx_td ltx_align_left" id="S2.tab1.1.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S2.tab1.1.1.4.4.2.1">
<span class="ltx_p" id="S2.tab1.1.1.4.4.2.1.1" style="width:34.1pt;">Num.</span>
</span>
</td>
<td class="ltx_td" id="S2.tab1.1.1.4.4.3"></td>
<td class="ltx_td" id="S2.tab1.1.1.4.4.4"></td>
<td class="ltx_td" id="S2.tab1.1.1.4.4.5"></td>
<td class="ltx_td" id="S2.tab1.1.1.4.4.6"></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.5.5">
<th class="ltx_td ltx_th ltx_th_row" id="S2.tab1.1.1.5.5.1"></th>
<td class="ltx_td ltx_align_left" id="S2.tab1.1.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S2.tab1.1.1.5.5.2.1">
<span class="ltx_p" id="S2.tab1.1.1.5.5.2.1.1" style="width:34.1pt;">Num.</span>
</span>
</td>
<td class="ltx_td" id="S2.tab1.1.1.5.5.3"></td>
<td class="ltx_td" id="S2.tab1.1.1.5.5.4"></td>
<td class="ltx_td" id="S2.tab1.1.1.5.5.5"></td>
<td class="ltx_td" id="S2.tab1.1.1.5.5.6"></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.6.6">
<th class="ltx_td ltx_th ltx_th_row" id="S2.tab1.1.1.6.6.1"></th>
<td class="ltx_td ltx_align_left" id="S2.tab1.1.1.6.6.2">instances</td>
<td class="ltx_td" id="S2.tab1.1.1.6.6.3"></td>
<td class="ltx_td" id="S2.tab1.1.1.6.6.4"></td>
<td class="ltx_td" id="S2.tab1.1.1.6.6.5"></td>
<td class="ltx_td" id="S2.tab1.1.1.6.6.6"></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.tab1.1.1.7.7.1">VidSTG <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.tab1.1.1.7.7.2">Manual</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.tab1.1.1.7.7.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.tab1.1.1.7.7.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.tab1.1.1.7.7.5">36.2K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.tab1.1.1.7.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.tab1.1.1.7.7.6.1">9.9M</span></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.tab1.1.1.8.8.1">HC-STVG <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.8.8.2">Manual</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.8.8.3">✓</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.8.8.4">✗</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.8.8.5">10.1K</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.8.8.6">1.5M</td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.tab1.1.1.9.9.1">ActivityNet-Entities <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.9.9.2">Manual</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.9.9.3">✗</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.9.9.4">✓</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.9.9.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.tab1.1.1.9.9.5.1">37.4K</span></td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.9.9.6">93.6K</td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.tab1.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.10.10.1.1">HowToGround1M (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.10.10.2">Automatic</td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.10.10.3"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.10.10.3.1">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.10.10.4"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.10.10.4.1">✓</span></td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.10.10.5"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.10.10.5.1">1M</span></td>
<td class="ltx_td ltx_align_center" id="S2.tab1.1.1.10.10.6"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.10.10.6.1">80.1M</span></td>
</tr>
<tr class="ltx_tr" id="S2.tab1.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S2.tab1.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.11.11.1.1">iGround (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.tab1.1.1.11.11.2">Manual</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.tab1.1.1.11.11.3"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.11.11.3.1">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.tab1.1.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S2.tab1.1.1.11.11.4.1">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.tab1.1.1.11.11.5">2K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.tab1.1.1.11.11.6">236.9K</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the key characteristics of various video grounding datasets, including two newly introduced datasets: iGround and HowToGround1M.  For each dataset, it shows the type of annotation (manual or automatic), whether multiple objects are annotated, whether multi-object grounding is performed, the number of frames, the number of videos, and the number of annotated instances. The table highlights the relative scale and annotation density of these datasets, demonstrating the size and quality of the datasets developed by the authors versus existing datasets.
> <details>
> <summary>read the caption</summary>
> Table 1:  Comparison of our two datasets iGround and HowToGround1M with state-of-the-art video grounding datasets.
> </details>





### In-depth insights


#### Video GROVE Model
The paper introduces GROVE, a **novel model** for grounded video caption generation. GROVE innovates by extending state-of-the-art image-based methods to the video domain. A key aspect is generating not just captions, but also **temporally dense** bounding boxes localizing noun phrases, along with an objectness score to handle occlusions and frame exits. GROVE employs **spatio-temporal adapters with pooling** for efficient video representation, leveraging pre-trained decoder weights and a dedicated temporal objectness head. This design enables the model to produce both informative captions and reliable spatio-temporal grounding in videos. This is critical for advancing areas such as human-robot interaction and embodied perception. The architecture builds upon GLaMM, adapting it for video with crucial modifications.

#### HowToGround1M
**HowToGround1M is a large-scale dataset** derived from HowTo100M, **automatically annotated** for grounded video captioning. This addresses the **limited training data** issue by providing **over 1M videos** with captions and dense spatio-temporal bounding boxes. The dataset uses a pipeline of frame-wise captioning, video-level caption aggregation using LLMs, and temporal bounding box annotation. **It's designed for pre-training models** like GROVE, to improve performance on video understanding tasks. By leveraging HowTo100M's diverse content, it offers a wealth of annotated data for spatio-temporal reasoning in videos.

#### Spatio-Temporal
Spatio-temporal considerations are crucial in video analysis, adding complexity compared to static images. **Object tracking** through time requires managing occlusions and viewpoint changes, ensuring consistent labeling. Models must capture **both spatial relationships** within each frame and **temporal dynamics** across frames. Datasets need dense annotations, going beyond sparse keyframes to capture continuous object presence. Methods that effectively integrate spatial and temporal information are key to achieving robust video understanding, but it is hard to evaluate the overall quality of annotations. **Temporal coherence** is essential for tasks like grounded captioning, where descriptions must align with the visual content across the video duration. Challenges lie in designing models that efficiently process sequential data and maintain consistency, especially when dealing with objects that temporarily disappear or undergo significant transformations.

#### Objectness Head
The paper introduces a **temporal objectness head** to explicitly model objects that might temporarily leave the frame or become occluded in video, a crucial challenge for video-based grounded captioning. Unlike image-based object detection, where objectness aims to identify objects present, this temporal head predicts the **visibility of an object at a given frame**. This is achieved by predicting scores indicating presence or absence. During inference, a threshold is applied to these scores, selecting bounding boxes only when the objectness score exceeds the threshold. This mechanism is distinct from prior work and is tailored towards videos by handling partial visibility and occlusions, leading to more **robust and temporally consistent grounding**.

#### iGround Dataset
The iGround dataset introduces **manually annotated captions and densely grounded spatio-temporal bounding boxes** for 3500 videos. With train/val/test splits, it enables progress measurement and fine-tuning, addressing the need for high-quality data in grounded video captioning. The dataset focuses on active objects humans interact with, rather than densely describing every scene object. Each bounding box is also annotated with a short phrase, linking vision and language. Manual annotation ensures greater precision, although it's more time-consuming than automatic methods. iGround offers an avenue **to improve existing models like GROVE** and benchmark progress, offering a counterpoint to larger, automatically labeled datasets.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10781/x3.png)

> 🔼 This figure illustrates a three-stage automatic annotation method for generating spatio-temporally grounded video captions.  Stage 1 shows frame-wise grounded caption generation using a still-image model, resulting in temporally inconsistent outputs. Stage 2 aggregates these frame-level captions into a single, consistent video-level caption, focusing on the most important actions and objects.  Finally, Stage 3 associates frame-level phrases and bounding boxes across time to create temporally consistent, dense bounding box annotations for the entire video.
> <details>
> <summary>read the caption</summary>
> Figure 2: A method for automatic annotation of spatio-temporally grounded captions. In the first stage (left), we apply a still-image grounded caption generation model on individual video frames producing temporally inconsistent outputs. In the second stage (middle), the captions from individual frames are aggregated into a single video-level caption describing the most salient actions/objects in the video. Third (right), individual frame-level phrases and bounding boxes are associated over time into a temporally consistent and dense labelling of object bounding boxes over the video.
> </details>



![](https://arxiv.org/html/2503.10781/x4.png)

> 🔼 This figure illustrates the architecture of the GROVE model, which is designed for generating grounded video captions.  Key components highlighted are spatio-temporal adapters that efficiently model temporal information in video, a bounding box decoder for generating spatially accurate bounding boxes, and a temporal objectness head to handle occluded or temporarily absent objects. The model takes a video clip as input and outputs a natural language caption along with spatio-temporal bounding boxes that ground the objects mentioned in the caption. 
> <details>
> <summary>read the caption</summary>
> Figure 3: An overview of our GROVE model for grounded video caption generation. Dashed red rectangles outline the key technical contributions enabling grounded caption generation in video and include: (i) spatio-temporal adapters; (ii) the bounding box decoder and (iii) the temporal objectness head.
> </details>



![](https://arxiv.org/html/2503.10781/x5.png)

> 🔼 This table presents a comparison of the performance of the GROVE model on the ActivityNet-Entities dataset [45], a benchmark dataset for spatio-temporal grounding. The comparison is done between three training scenarios: only fine-tuning (FT), only pre-training (PT), and both pre-training and fine-tuning (PT+FT).  The results show that the model achieves improved performance (indicated by the metrics in the table, which are not included in this JSON since their detail is not provided in the question) when both pre-training and fine-tuning are employed, highlighting the benefit of large-scale pre-training using the automatically generated HowToGround1M dataset.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on the validation set of ActivityNet-Entities [45]. Large-scale pretraining (PT+FT) results in an improvement over fine-tuning only (FT) for our model GROVE.
> </details>



![](https://arxiv.org/html/2503.10781/x6.png)

> 🔼 Figure 4 presents example outputs from the GROVE model, highlighting its ability to generate video-level captions that accurately describe the main action, ground multiple objects within the video by associating them with phrases in the caption, and maintain temporal consistency in the bounding box annotations across the video frames.  The model successfully localizes objects even when there are changes in viewpoint or scale.  However, the figure also points out a limitation where, in one instance, the temporal consistency of bounding boxes doesn't perfectly align with the semantic meaning of the caption.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative examples showing predictions of our GROVE model. Please note that GROVE is able to: (i) produce video-level natural language captions describing the main action in the video; (ii) ground multiple objects; and (iii) produce spatio-temporally consistent bounding box predictions. Please note that the second row shows an example of model prediction that is partly incorrect as the blue box, while temporally consistent, does not depict a “yarn”. More qualitative results including video results are in the supp. mat.
> </details>



![](https://arxiv.org/html/2503.10781/x7.png)

> 🔼 This figure shows the performance of the GROVE model on the iGround validation set as a function of the size of the pre-training dataset.  Two scenarios are presented: one where the model is only pre-trained (PT) and another where it's both pre-trained and fine-tuned (PT+FT) on the iGround dataset. The metrics used are CIDEr, AP50, and recall, all commonly used in image captioning and object detection tasks. The graph visually demonstrates how increasing the size of the pre-training data improves the model's performance across all three metrics, highlighting the benefit of larger pre-training datasets for this task.
> <details>
> <summary>read the caption</summary>
> Figure 5: Results after pre-training (PT) vs. after fine-tuning and pre-training (PT+FT) as a function of the pre-training dataset size. Results are reported on the iGround validation set.
> </details>



![](https://arxiv.org/html/2503.10781/x8.png)

> 🔼 This ablation study investigates the impact of two key components of the GROVE model on the iGround validation set performance.  The first component evaluated is the spatio-temporal adapters (AD), which help the model efficiently process spatio-temporal video information. The second component is the bounding box decoder and its associated projection layers.  The table shows the model's performance (measured by METEOR, CIDEr, AP50, and Recall) under different configurations: with both AD and unfreezing enabled, with only one of them enabled, and with neither enabled.  This analysis reveals the contribution of each component to the overall accuracy and efficiency of the model.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation of spatio-temporal adapters (AD) and unfreezing the bounding box decoder and projection layers (unfreeze). We report results on the iGround validation set.
> </details>



![](https://arxiv.org/html/2503.10781/x9.png)

> 🔼 This figure displays the impact of using a temporal objectness threshold on the performance of the GROVE model. The left panel shows the Average Precision at 50% Intersection over Union (AP50), while the right panel shows the recall, both evaluated on the iGround validation dataset.  Different lines represent different thresholds applied to the temporal objectness scores, demonstrating how the model's performance changes with varying thresholds for determining object presence/absence in a frame.
> <details>
> <summary>read the caption</summary>
> Table 6: Benefits of temporal objectness. AP50 (left) and recall (right) of our model for different temporal objectness thresholds. Results are reported on the iGround validation set.
> </details>



![](https://arxiv.org/html/2503.10781/x10.png)

> 🔼 This table compares the performance of the proposed automatic annotation method with three alternative approaches. The alternatives modify different stages of the annotation pipeline.  'Alt. Stage 1' replaces the initial grounded caption generation stage with a combination of GIT [37] for generating captions, Llama3 [8] for extracting noun phrases and OWLv2 [23] for object localization. 'Alt. Stage 2' uses full frame-level captions in the caption aggregation step, instead of using just subject-verb-object triplets. Finally, 'Alt. Stage 3' substitutes the temporal bounding box association with CoTracker3 [14], a visual tracker.  The evaluation metric used is the iGround validation set.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of our automatic annotation approach vs. its alternatives: “Alt. Stage 1” is based on GIT [37], Llama3 [8] and OWLv2 [23]. In “Alt. Stage 2”, we use the full caption instead of Subject-Verb-Object triplets. “Alt. Stage 3” is based on CoTracker3 [14] for tracking the objects of interest. Results are reported on the iGround validation set.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.2.1.1">
<td class="ltx_td ltx_border_tt" id="S6.T2.2.1.1.1" style="padding:0.8pt 4.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S6.T2.2.1.1.2" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.1.1.2.1">
<span class="ltx_p" id="S6.T2.2.1.1.2.1.1"><span class="ltx_text" id="S6.T2.2.1.1.2.1.1.1" style="font-size:80%;">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.1.1.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.1.1.3.1" style="font-size:80%;">METEOR</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.1.1.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.1.1.4.1" style="font-size:80%;">CIDER</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.1.1.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.1.1.5.1" style="font-size:80%;">AP50</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.1.1.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.1.1.6.1" style="font-size:80%;">Recall</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.2.2.1" rowspan="3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.2.2.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S6.T2.2.2.2.1.1.1" style="width:5.5pt;height:23.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.4pt;transform:translate(-8.94pt,-8.94pt) rotate(-90deg) ;">
<span class="ltx_p" id="S6.T2.2.2.2.1.1.1.1">Center</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S6.T2.2.2.2.2" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.2.2.2.1">
<span class="ltx_p" id="S6.T2.2.2.2.2.1.1"><span class="ltx_text" id="S6.T2.2.2.2.2.1.1.1" style="font-size:80%;">a. GLaMM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T2.2.2.2.2.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S6.T2.2.2.2.2.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.2.2.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.2.2.3.1" style="font-size:80%;">11.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.2.2.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.2.2.4.1" style="font-size:80%;">29.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.2.2.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.2.2.5.1" style="font-size:80%;">20.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.2.2.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.2.2.6.1" style="font-size:80%;">19.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.3.3">
<td class="ltx_td ltx_align_justify" id="S6.T2.2.3.3.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.3.3.1.1">
<span class="ltx_p" id="S6.T2.2.3.3.1.1.1"><span class="ltx_text" id="S6.T2.2.3.3.1.1.1.1" style="font-size:80%;">b. GROVE - PT (Ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.3.3.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.3.3.2.1" style="font-size:80%;">14.5</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.3.3.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.3.3.3.1" style="font-size:80%;">49.9</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.3.3.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.3.3.4.1" style="font-size:80%;">26.7</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.3.3.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.3.3.5.1" style="font-size:80%;">23.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.4.4">
<td class="ltx_td ltx_align_justify" id="S6.T2.2.4.4.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.4.4.1.1">
<span class="ltx_p" id="S6.T2.2.4.4.1.1.1"><span class="ltx_text" id="S6.T2.2.4.4.1.1.1.1" style="font-size:80%;">c. GROVE - PT+FT (Ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.4.4.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.4.4.2.1" style="font-size:80%;">21.7</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.4.4.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.4.4.3.1" style="font-size:80%;">85.4</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.4.4.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.4.4.4.1" style="font-size:80%;">31.9</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.4.4.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.4.4.5.1" style="font-size:80%;">25.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S6.T2.2.5.5.1" rowspan="4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.5.5.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S6.T2.2.5.5.1.1.1" style="width:5.6pt;height:10.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:10.4pt;transform:translate(-2.44pt,-2.44pt) rotate(-90deg) ;">
<span class="ltx_p" id="S6.T2.2.5.5.1.1.1.1">All</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S6.T2.2.5.5.2" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.5.5.2.1">
<span class="ltx_p" id="S6.T2.2.5.5.2.1.1"><span class="ltx_text" id="S6.T2.2.5.5.2.1.1.1" style="font-size:80%;">d. Automatic annotation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.5.5.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.5.5.3.1" style="font-size:80%;">13.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.5.5.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.5.5.4.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.5.5.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.5.5.5.1" style="font-size:80%;">27.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T2.2.5.5.6" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.5.5.6.1" style="font-size:80%;">20.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.6.6">
<td class="ltx_td ltx_align_justify" id="S6.T2.2.6.6.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.6.6.1.1">
<span class="ltx_p" id="S6.T2.2.6.6.1.1.1"><span class="ltx_text" id="S6.T2.2.6.6.1.1.1.1" style="font-size:80%;">e. GROVE - PT (Ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.6.6.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.6.6.2.1" style="font-size:80%;">14.5</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.6.6.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.6.6.3.1" style="font-size:80%;">49.9</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.6.6.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.6.6.4.1" style="font-size:80%;">34.2</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.6.6.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.6.6.5.1" style="font-size:80%;">25.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.7.7">
<td class="ltx_td ltx_align_justify" id="S6.T2.2.7.7.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.7.7.1.1">
<span class="ltx_p" id="S6.T2.2.7.7.1.1.1"><span class="ltx_text" id="S6.T2.2.7.7.1.1.1.1" style="font-size:80%;">f. GROVE - FT (Ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.7.7.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.7.7.2.1" style="font-size:80%;">21.0</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.7.7.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.7.7.3.1" style="font-size:80%;">81.7</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.7.7.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.7.7.4.1" style="font-size:80%;">15.7</span></td>
<td class="ltx_td ltx_align_left" id="S6.T2.2.7.7.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T2.2.7.7.5.1" style="font-size:80%;">17.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.8.8">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S6.T2.2.8.8.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T2.2.8.8.1.1">
<span class="ltx_p" id="S6.T2.2.8.8.1.1.1"><span class="ltx_text" id="S6.T2.2.8.8.1.1.1.1" style="font-size:80%;">g. GROVE - PT+FT (Ours)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T2.2.8.8.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.8.8.2.1" style="font-size:80%;">21.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T2.2.8.8.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.8.8.3.1" style="font-size:80%;">85.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T2.2.8.8.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.8.8.4.1" style="font-size:80%;">40.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T2.2.8.8.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.8.8.5.1" style="font-size:80%;">28.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of grounded video caption generation on the manually-annotated iGround test set. It compares the performance of the GROVE model with different training strategies: pre-training only (PT), fine-tuning only (FT), and pre-training followed by fine-tuning (PT+FT).  The results are also compared against a baseline using the GLaMM model [28] and a method that directly applies automatic annotation.  The evaluation metrics include METEOR, CIDEr, AP50, and Recall, and are shown separately for evaluations using only the center frame of videos and all frames.  The results clearly show that the PT+FT strategy significantly outperforms other methods.
> <details>
> <summary>read the caption</summary>
> Table 2:  Grounded video caption generation on manually-annotated iGround test set. Pre-training on our new large-scale HowToGround1M dataset followed by finetuning on manually-annotated iGround training data (PT+FT) clearly outperforms pre-training only (PT) and finetuning only (FT) as well as the GLaMM baseline [28] (a.) and directly applying automatic annotation (d.). We show center frame (“Center”) and all frame (“All”) evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.2.1.1.1"><span class="ltx_text" id="S6.T3.2.1.1.1.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.2.1.1.2">
<span class="ltx_text" id="S6.T3.2.1.1.2.1" style="font-size:80%;">m</span><sub class="ltx_sub" id="S6.T3.2.1.1.2.2"><span class="ltx_text" id="S6.T3.2.1.1.2.2.1" style="font-size:80%;">sIoU</span></sub>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.2.2.1.1">
<span class="ltx_text" id="S6.T3.2.2.1.1.1" style="font-size:80%;">STVGBert </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.2.2.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S6.T3.2.2.1.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S6.T3.2.2.1.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S6.T3.2.2.1.2"><span class="ltx_text" id="S6.T3.2.2.1.2.1" style="font-size:80%;">47.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.3.2.1">
<span class="ltx_text" id="S6.T3.2.3.2.1.1" style="font-size:80%;">TubeDETR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.2.3.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S6.T3.2.3.2.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S6.T3.2.3.2.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T3.2.3.2.2"><span class="ltx_text" id="S6.T3.2.3.2.2.1" style="font-size:80%;">59.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.4.3.1">
<span class="ltx_text" id="S6.T3.2.4.3.1.1" style="font-size:80%;">STCAT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.2.4.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S6.T3.2.4.3.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S6.T3.2.4.3.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T3.2.4.3.2"><span class="ltx_text" id="S6.T3.2.4.3.2.1" style="font-size:80%;">61.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.5.4.1">
<span class="ltx_text" id="S6.T3.2.5.4.1.1" style="font-size:80%;">DenseVOC </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T3.2.5.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="S6.T3.2.5.4.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S6.T3.2.5.4.1.4" style="font-size:80%;"></span>
</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T3.2.5.4.2"><span class="ltx_text" id="S6.T3.2.5.4.2.1" style="font-size:80%;">61.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.6.5.1"><span class="ltx_text" id="S6.T3.2.6.5.1.1" style="font-size:80%;">GROVE FT (Ours)</span></th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T3.2.6.5.2"><span class="ltx_text" id="S6.T3.2.6.5.2.1" style="font-size:80%;">61.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T3.2.7.6.1"><span class="ltx_text" id="S6.T3.2.7.6.1.1" style="font-size:80%;">GROVE PT+FT (Ours)</span></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S6.T3.2.7.6.2"><span class="ltx_text ltx_font_bold" id="S6.T3.2.7.6.2.1" style="font-size:80%;">62.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the GROVE model's performance on the VidSTG [43] test set against other state-of-the-art spatial grounding models.  All models utilize ground truth temporal localization. The table highlights that the GROVE model, when pre-trained at a large scale and then fine-tuned (PT+FT), significantly outperforms the same model trained only through fine-tuning (FT), demonstrating the benefits of large-scale pre-training.
> <details>
> <summary>read the caption</summary>
> Table 3: State-of-the-art comparison of spatial grounding on the VidSTG [43] test set. All models use ground truth temporal localization. Large-scale pretraining (PT+FT) results in an improvement over fine-tuning only (FT) for our model GROVE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.fig1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.fig1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.fig1.1.1.1.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.fig1.1.1.1.1.1">
<span class="ltx_p" id="S6.T4.fig1.1.1.1.1.1.1"><span class="ltx_text" id="S6.T4.fig1.1.1.1.1.1.1.1" style="font-size:80%;">Method</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.fig1.1.1.1.2" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="S6.T4.fig1.1.1.1.2.1" style="font-size:80%;">F1</span><sub class="ltx_sub" id="S6.T4.fig1.1.1.1.2.2"><span class="ltx_text" id="S6.T4.fig1.1.1.1.2.2.1" style="font-size:80%;">all</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.fig1.1.1.1.3" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="S6.T4.fig1.1.1.1.3.1" style="font-size:80%;">F1</span><sub class="ltx_sub" id="S6.T4.fig1.1.1.1.3.2"><span class="ltx_text" id="S6.T4.fig1.1.1.1.3.2.1" style="font-size:80%;">all_per_sent</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.fig1.1.1.1.4" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="S6.T4.fig1.1.1.1.4.1" style="font-size:80%;">F1</span><sub class="ltx_sub" id="S6.T4.fig1.1.1.1.4.2"><span class="ltx_text" id="S6.T4.fig1.1.1.1.4.2.1" style="font-size:80%;">loc</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.fig1.1.1.1.5" style="padding:0.8pt 4.0pt;">
<span class="ltx_text" id="S6.T4.fig1.1.1.1.5.1" style="font-size:80%;">F1</span><sub class="ltx_sub" id="S6.T4.fig1.1.1.1.5.2"><span class="ltx_text" id="S6.T4.fig1.1.1.1.5.2.1" style="font-size:80%;">loc_per_sent</span></sub>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.fig1.1.2.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S6.T4.fig1.1.2.1.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.fig1.1.2.1.1.1">
<span class="ltx_p" id="S6.T4.fig1.1.2.1.1.1.1"><span class="ltx_text" id="S6.T4.fig1.1.2.1.1.1.1.1" style="font-size:80%;">GVD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S6.T4.fig1.1.2.1.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10781v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="S6.T4.fig1.1.2.1.1.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.fig1.1.2.1.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.2.1.2.1" style="font-size:80%;">07.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.fig1.1.2.1.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.2.1.3.1" style="font-size:80%;">17.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.fig1.1.2.1.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.2.1.4.1" style="font-size:80%;">23.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.fig1.1.2.1.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.2.1.5.1" style="font-size:80%;">59.20</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.fig1.1.3.2">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S6.T4.fig1.1.3.2.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.fig1.1.3.2.1.1">
<span class="ltx_p" id="S6.T4.fig1.1.3.2.1.1.1"><span class="ltx_text" id="S6.T4.fig1.1.3.2.1.1.1.1" style="font-size:80%;">GROVE FT (Ours)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S6.T4.fig1.1.3.2.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.3.2.2.1" style="font-size:80%;">09.51</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.fig1.1.3.2.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.3.2.3.1" style="font-size:80%;">21.15</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.fig1.1.3.2.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.3.2.4.1" style="font-size:80%;">30.96</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.fig1.1.3.2.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text" id="S6.T4.fig1.1.3.2.5.1" style="font-size:80%;">68.79</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.fig1.1.4.3">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="S6.T4.fig1.1.4.3.1" style="padding:0.8pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S6.T4.fig1.1.4.3.1.1">
<span class="ltx_p" id="S6.T4.fig1.1.4.3.1.1.1"><span class="ltx_text" id="S6.T4.fig1.1.4.3.1.1.1.1" style="font-size:80%;">GROVE PT+FT (Ours)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.fig1.1.4.3.2" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.fig1.1.4.3.2.1" style="font-size:80%;">13.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.fig1.1.4.3.3" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.fig1.1.4.3.3.1" style="font-size:80%;">24.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.fig1.1.4.3.4" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.fig1.1.4.3.4.1" style="font-size:80%;">43.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.fig1.1.4.3.5" style="padding:0.8pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.fig1.1.4.3.5.1" style="font-size:80%;">76.99</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the statistics for two datasets: HowToGround1M and iGround.  HowToGround1M is a large-scale dataset automatically generated for pre-training a grounded video captioning model, while iGround is a smaller, manually annotated dataset used for fine-tuning and evaluation. The statistics shown include the average number of frames per video, average video duration, average number of instances (objects) per video, total number of instances, average bounding box dimensions (width x height), average length of object tracks (in frames), and the average length of captions (in words).  These statistics highlight the differences in scale and annotation quality between the two datasets.
> <details>
> <summary>read the caption</summary>
> Table 8: Statistics of HowToGround1M and iGround datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10781/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10781/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}