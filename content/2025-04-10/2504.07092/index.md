---
title: "Are We Done with Object-Centric Learning?"
summary: "OCL can be solved by sample-efficient segmentation models. But, do separated objects enhance OOD generalization? This paper introduces OCCAM to show the benefits of OCL and encourages new benchmarks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Tübingen AI Center, University of Tübingen",]
showSummary: true
date: 2025-04-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07092 {{< /keyword >}}
{{< keyword icon="writer" >}} Alexander Rubinstein et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07092" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07092" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07092/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Object-Centric Learning (OCL) aims to represent scenes by encoding objects independently, but evaluations rely on unsupervised object discovery, centering on slot-centric methods. This emphasis might overshadow the broader goals of OCL, especially considering that with sample-efficient segmentation models, we can now isolate objects at the pixel level.



To solve this, this paper introduces a training-free probe named Object-Centric Classification with Applied Masks (OCCAM), and focuses on the OOD generalization issue caused by spurious background cues. OCCAM uses segmentation-based encoding to classify images and select relevant objects, outperforming slot-based methods. This approach proves effective with segmentation models and it encourages exploration for benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Sample-efficient segmentation models excel at object discovery, surpassing traditional OCL methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Mask-based object-centric probes enhance robust classification by mitigating spurious background correlations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} OCL methods can analyze datasets and the contribution of individual objects, informing data-centric fields. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper addresses a critical question in object-centric learning (OCL): **How does separating objects contribute to broader OCL objectives like OOD generalization?** It introduces a novel approach, provides tools, and guides practical applications, prompting researchers to rethink OCL's focus and explore new benchmarks.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07092/x1.png)

> 🔼 Object-centric learning (OCL) traditionally focuses on unsupervised methods for separating objects into representation slots.  This approach, while valuable, has limitations and has not fully explored the downstream benefits and practical applications of OCL. This figure illustrates the shift proposed by the authors, towards simpler, more effective OCL methods that separate objects in pixel space (image segmentation) before encoding them. This approach is shown to mitigate spurious correlations and offers advantages in practical applications.  The figure highlights the need for new benchmarks aligned with the core objectives of OCL, emphasizing the need to assess the impact of object-centric representations on downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Where Should We Go? Object-centric learning (OCL) has focused on developing unsupervised mechanisms to separate the representation space into discrete slots. However, the inherent challenges of this task have led to comparatively less emphasis on exploring downstream applications and exploring fundamental benefits. Here, we introduce simple, effective OCL mechanisms by separating objects in pixel space and encoding them independently. We present a case study that demonstrates the downstream advantages of our approach for mitigating spurious correlations. We outline the need to develop benchmarks aligned with fundamental goals of OCL, and explore the downstream efficacy of OCL representations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.1" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S3.T1.2.1.1.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1" style="font-size:90%;">Pre-training Datasets</span></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.3" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.4.1" style="font-size:90%;">FT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.2.1.1.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.5.1" style="font-size:90%;">Movi-C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.2.1.1.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.6.1" style="font-size:90%;">Movi-E</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_border_r" id="S3.T1.2.2.2.1" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.2.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.2.1" style="font-size:90%;">Encoder</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.2.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.3.1" style="font-size:90%;">Decoder</span></td>
<td class="ltx_td ltx_border_r" id="S3.T1.2.2.2.4" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S3.T1.2.2.2.5" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.6.1" style="font-size:90%;">FG-ARI</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.7" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.7.1" style="font-size:90%;">mBO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.8" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.8.1" style="font-size:90%;">FG-ARI</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.9" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.9.1" style="font-size:90%;">mBO</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.3.3.1" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S3.T1.2.3.3.1.1" style="font-size:90%;">Slot Diffusion </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.2.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S3.T1.2.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.3.3.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.2.1" style="font-size:90%;">OpenImages (1.9M)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.3.3.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.3.1" style="font-size:90%;">COCO (118k)</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.2.3.3.4" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.3.3.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.5.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.3.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.6.1" style="font-size:90%;">66.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.3.7" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.7.1" style="font-size:90%;">43.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.3.8" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.8.1" style="font-size:90%;">67.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.3.3.9" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.3.3.9.1" style="font-size:90%;">26.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.4.4.1" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S3.T1.2.4.4.1.1" style="font-size:90%;">Dinosaur </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.2.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="S3.T1.2.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.4.4.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.2.1" style="font-size:90%;">GLD (1.2M)</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.4.4.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.3.1" style="font-size:90%;">COCO (118k)</span></td>
<td class="ltx_td ltx_border_r" id="S3.T1.2.4.4.4" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.4.4.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.5.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.4.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.6.1" style="font-size:90%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.4.7" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.7.1" style="font-size:90%;">34.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.4.8" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.8.1" style="font-size:90%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.4.9" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.4.4.9.1" style="font-size:90%;">24.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.5.5.1" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S3.T1.2.5.5.1.1" style="font-size:90%;">FT-Dinosaur </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.2.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S3.T1.2.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.5.5.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.2.1" style="font-size:90%;">GLD (1.2M)</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.5.5.3" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.3.1" style="font-size:90%;">COCO (118k)</span></td>
<td class="ltx_td ltx_border_r" id="S3.T1.2.5.5.4" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.2.5.5.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.5.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.5.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.6.1" style="font-size:90%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.5.7" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.7.1" style="font-size:90%;">44.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.5.8" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.8.1" style="font-size:90%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.5.9" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.5.5.9.1" style="font-size:90%;">29.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.6.6.1" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S3.T1.2.6.6.1.1" style="font-size:90%;">HQES </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.2.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S3.T1.2.6.6.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S3.T1.2.6.6.1.4" style="font-size:90%;"> (Ours)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T1.2.6.6.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.6.6.2.1" style="font-size:90%;">COCO (118k) + EntitySeg (33k)</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.2.6.6.3" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.6.6.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.6.6.4.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.6.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.6.6.5.1" style="font-size:90%;">79.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.6.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.6.6.6.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.6.7" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.6.6.7.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.6.6.8" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.6.6.8.1" style="font-size:90%;">63.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.2.7.7.1" style="padding-left:9.0pt;padding-right:9.0pt;">
<span class="ltx_text" id="S3.T1.2.7.7.1.1" style="font-size:90%;">SAM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.2.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S3.T1.2.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" colspan="2" id="S3.T1.2.7.7.2" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.7.7.2.1" style="font-size:90%;">SA-1b (11M)</span></td>
<td class="ltx_td ltx_border_bb ltx_border_r" id="S3.T1.2.7.7.3" style="padding-left:9.0pt;padding-right:9.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.2.7.7.4" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.7.7.4.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.7.7.5" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.7.7.5.1" style="font-size:90%;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.7.7.6" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.7.7.6.1" style="font-size:90%;">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.7.7.7" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text" id="S3.T1.2.7.7.7.1" style="font-size:90%;">84.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.7.7.8" style="padding-left:9.0pt;padding-right:9.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.7.7.8.1" style="font-size:90%;">69.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of object discovery performance on the Movi-C and Movi-E datasets for various models, including both object-centric learning (OCL) methods and a zero-shot segmentation model.  The table shows the results for several metrics: FG-ARI (Foreground-adjusted Rand Index) and mBO (mean best overlap).  The 'FT' column indicates whether the model was fine-tuned on the training data for each dataset.  The key takeaway is that the High-Quality Entity Segmentation (HQES) model significantly outperforms the OCL baselines (Slot Diffusion and Dinosaur), despite using a substantially smaller training dataset (151k samples vs. millions for the others). This suggests that sample-efficient segmentation may be a better alternative for object discovery tasks than traditional OCL methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Object Discovery Performance. Quantitative results for object discovery on Movi-C and Movi-E; column “FT” indicates whether the model was fine-tuned on the training split of the corresponding dataset (Movi-C or Movi-E). HQES outperforms the OCL baselines like Slot Diffusion and Dinosaur, despite being sample-efficient (151k training samples).
> </details>





### In-depth insights


#### OCL: Achieved?
The paper challenges the conventional emphasis on unsupervised slot-centric methods in OCL, suggesting that readily available, sample-efficient segmentation models now largely address the core object discovery aspect. **This implies that the initial objective of isolating objects in a scene is 'achieved'**. The authors shift the focus to downstream applications, such as OOD generalization, where the benefits of object-centric representations need further exploration. They introduce OCCAM as a tool to probe and improve OOD robustness by leveraging segmentation-based object isolation. However, challenges remain in real-world scenarios, particularly in robustly identifying the foreground object. **The paper advocates for a more application-driven approach**, focusing on creating benchmarks and methodologies that demonstrate practical advantages of OCL representations and explore fundamental questions about human cognition. **Therefore, while object discovery is largely solved, the broader potential of OCL requires a shift in focus toward demonstrating its utility in complex tasks and understanding its cognitive underpinnings**.

#### Beyond Slot-Centric
**Moving beyond slot-centric representations in object-centric learning (OCL) signifies a crucial paradigm shift.** Traditionally, OCL has heavily relied on slot-based methods to disentangle objects in a scene. **However, this focus on discrete slots may be limiting,** especially given the advancements in sample-efficient segmentation models. These models offer alternative ways to isolate objects, potentially achieving superior results without the constraints of a fixed number of slots. **This shift necessitates a re-evaluation of OCL's goals and evaluation metrics.** Instead of solely focusing on unsupervised object discovery, future research should prioritize downstream applications and fundamental questions. **This includes exploring how OCL can improve out-of-distribution generalization,** enable compositional perception, and enhance our understanding of human cognition. **Moreover, it's important to develop new benchmarks and methodologies** that assess the practical benefits of OCL in real-world scenarios, **motivating theoretical advancements with concrete use cases.** Ultimately, **moving beyond slot-centric approaches opens up new avenues** for OCL to address more complex and relevant challenges.

#### OCCAM: A Key Probe
**OCCAM**, positioned as a pivotal probe, signifies a strategic approach to dissecting the complexities of object-centric learning. Its strength lies in its ability to **isolate** and **evaluate** the distinct contributions of individual objects within a scene, acting as a filter to mitigate the influence of confounding factors. By **ablating background information** and **focusing on foreground elements**, OCCAM offers a clearer view of how well models generalize and adapt to novel scenarios. It serves as a valuable instrument for revealing the **true capabilities** of object-centric representations. Its simplicity allows for a more direct assessment, making it a crucial tool for identifying the **specific strengths** and **weaknesses** inherent in different architectural choices. In essence, **OCCAM** provides a focused examination of object-centric learning's core principles.

#### Bias in Datasets?
**Dataset bias** is a critical concern in machine learning, stemming from skewed data reflecting societal or experimental prejudices. This can lead to models that **generalize poorly** and perpetuate unfair outcomes. Sources include **selection bias**, where training data isn't representative, and **measurement bias**, due to flawed data collection. Addressing it requires careful **data auditing**, **re-sampling techniques**, and **algorithmic fairness interventions** to mitigate discriminatory patterns. Furthermore, **data augmentation strategies** can be used to balance the dataset. Therefore, a deep evaluation of the dataset is important.

#### Multimodal OCL
Multimodal Object-Centric Learning (OCL) holds immense potential, particularly by integrating diverse sensory inputs beyond just visual data. Leveraging modalities like **audio, depth, and haptics** can lead to more robust and comprehensive scene understanding. For instance, incorporating **motion and depth cues**, as highlighted by Spelke's work, can significantly aid object segmentation and perception. The challenge lies in effectively fusing these disparate modalities. Techniques from sensor fusion and cross-modal learning become crucial. Additionally, developing **architectures that can handle asynchronous and potentially noisy multimodal data** is essential. Addressing these challenges could unlock a new wave of OCL models that more closely mimic human perception and exhibit enhanced generalization capabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07092/x2.png)

> 🔼 This figure illustrates the Object-Centric Classification with Applied Masks (OCCAM) method, which consists of two stages. The first stage generates object-centric representations by using entity segmentation masks to isolate individual objects from the scene.  Each object is assigned an index (i0, i1,...ik). The second stage performs robust classification by selecting the representation corresponding to the foreground object and using it for classification.  This allows for focusing on relevant object features while discarding potentially misleading background cues.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Object-Centric Classification with Applied Masks (OCCAM). There are two main parts. The first part (§ 3.2.1) uses entity segmentation masks for object-centric representation generation. The second part (§ 3.2.2) performs robust classification by selecting representations corresponding to the foreground object and using them for classification. Indices [i0,…,ik,…]subscript𝑖0…subscript𝑖𝑘…[i_{0},\ldots,i_{k},\ldots][ italic_i start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT , … , italic_i start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT , … ] correspond to each object in the scene.
> </details>



![](https://arxiv.org/html/2504.07092/x3.png)

> 🔼 This figure displays qualitative results on object discovery using various methods.  The first three columns show results from existing object-centric learning (OCL) approaches: Dinosaur, SlotDiffusion, and FT-Dinosaur.  The last two columns present results from zero-shot segmentation methods: SAM and HQES. All images are taken from the Movi-E dataset. The comparison highlights that SAM and HQES generate masks that more accurately fit the objects within the image, compared to the OCL methods.  Note that the data in the first three columns is taken from a previous publication ([11]).
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative Results on Object Discovery. Dinosaur, SlotDiffusion, and FT-Dinosaur are existing object-centric learning (OCL) approaches. Sam and HQES refer to zero-shot segmentation methods. Images are from Movi-E. Sam and HQES masks fit objects much better than the masks predicted by OCL methods. All columns except for HQES are taken from [11].
> </details>



![](https://arxiv.org/html/2504.07092/x4.png)

> 🔼 This ROC curve compares different methods for foreground object detection.  Each curve represents a different scoring scheme used to identify foreground objects in images from the ImageNet validation set. The x-axis shows the false positive rate (the proportion of background objects incorrectly identified as foreground), while the y-axis shows the true positive rate (the proportion of foreground objects correctly identified).  A higher curve indicates better performance, with a curve closer to the top-left corner signifying high accuracy in identifying foreground objects while minimizing false positives. More details on the experiment setup and the scoring schemes are provided in section E of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 4: Foreground Object Detection. ROC-curves for foreground detection methods. For each scoring scheme, we measure how well the true foreground objects in the ImageNet-validation dataset are detected. More details in § E.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.F3.24">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.24.25.1">
<td class="ltx_td ltx_align_center" id="S3.F3.24.25.1.1" style="padding-bottom:-15.00002pt;padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.24.25.1.1.1" style="font-size:80%;">Image</span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.24.25.1.2" style="padding-bottom:-15.00002pt;padding:18.5pt 2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.F3.24.25.1.2.1" style="font-size:80%;">Dinosaur</span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.24.25.1.3" style="padding-bottom:-15.00002pt;padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.24.25.1.3.1" style="font-size:80%;">SlotDiffusion</span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.24.25.1.4" style="padding-bottom:-15.00002pt;padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.24.25.1.4.1" style="font-size:80%;">FT-<span class="ltx_text ltx_font_smallcaps" id="S3.F3.24.25.1.4.1.1">Dinosaur</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.24.25.1.5" style="padding-bottom:-15.00002pt;padding:18.5pt 2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.F3.24.25.1.5.1" style="font-size:80%;">Sam</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.F3.24.25.1.6" style="padding-bottom:-15.00002pt;padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.24.25.1.6.1" style="font-size:80%;">HQES</span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.6.6">
<td class="ltx_td ltx_align_center" id="S3.F3.1.1.1" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.1.1.1.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.1.1.1.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.1.1.1.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.1.1.1.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.1.1.1.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.1.1.1.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.1.1.1.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/images/movi_e/011.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.2.2.2" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.2.2.2.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.2.2.2.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.2.2.2.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.2.2.2.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.2.2.2.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.2.2.2.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.2.2.2.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/dinosaur/movi_e/011.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.3.3.3" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.3.3.3.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.3.3.3.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.3.3.3.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.3.3.3.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.3.3.3.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.3.3.3.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.3.3.3.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/slotdiff/movi_e/011.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.4.4.4" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.4.4.4.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.4.4.4.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.4.4.4.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.4.4.4.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.4.4.4.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.4.4.4.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.4.4.4.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/hires_base/movi_e/011.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.5.5.5" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.5.5.5.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.5.5.5.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.5.5.5.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.5.5.5.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.5.5.5.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.5.5.5.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.5.5.5.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/sam/movi_e/011.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.F3.6.6.6" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.6.6.6.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.6.6.6.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.6.6.6.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.6.6.6.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.6.6.6.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.6.6.6.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.6.6.6.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/crop_former/movi_e/011.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.12.12">
<td class="ltx_td ltx_align_center" id="S3.F3.7.7.1" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.7.7.1.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.7.7.1.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.7.7.1.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.7.7.1.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.7.7.1.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.7.7.1.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.7.7.1.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/images/movi_e/046.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.8.8.2" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.8.8.2.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.8.8.2.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.8.8.2.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.8.8.2.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.8.8.2.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.8.8.2.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.8.8.2.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/dinosaur/movi_e/046.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.9.9.3" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.9.9.3.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.9.9.3.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.9.9.3.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.9.9.3.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.9.9.3.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.9.9.3.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.9.9.3.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/slotdiff/movi_e/046.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.10.10.4" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.10.10.4.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.10.10.4.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.10.10.4.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.10.10.4.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.10.10.4.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.10.10.4.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.10.10.4.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/hires_base/movi_e/046.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.11.11.5" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.11.11.5.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.11.11.5.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.11.11.5.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.11.11.5.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.11.11.5.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.11.11.5.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.11.11.5.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/sam/movi_e/046.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.F3.12.12.6" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.12.12.6.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.12.12.6.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.12.12.6.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.12.12.6.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.12.12.6.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.12.12.6.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.12.12.6.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/crop_former/movi_e/046.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.18.18">
<td class="ltx_td ltx_align_center" id="S3.F3.13.13.1" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.13.13.1.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.13.13.1.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.13.13.1.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.13.13.1.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.13.13.1.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.13.13.1.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.13.13.1.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/images/movi_e/055.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.14.14.2" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.14.14.2.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.14.14.2.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.14.14.2.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.14.14.2.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.14.14.2.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.14.14.2.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.14.14.2.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/dinosaur/movi_e/055.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.15.15.3" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.15.15.3.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.15.15.3.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.15.15.3.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.15.15.3.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.15.15.3.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.15.15.3.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.15.15.3.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/slotdiff/movi_e/055.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.16.16.4" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.16.16.4.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.16.16.4.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.16.16.4.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.16.16.4.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.16.16.4.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.16.16.4.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.16.16.4.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/hires_base/movi_e/055.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.17.17.5" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.17.17.5.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.17.17.5.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.17.17.5.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.17.17.5.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.17.17.5.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.17.17.5.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.17.17.5.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/sam/movi_e/055.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.F3.18.18.6" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.18.18.6.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.18.18.6.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.18.18.6.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.18.18.6.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.18.18.6.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.18.18.6.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.18.18.6.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/crop_former/movi_e/055.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.24.24">
<td class="ltx_td ltx_align_center" id="S3.F3.19.19.1" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.19.19.1.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.19.19.1.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.19.19.1.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.19.19.1.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.19.19.1.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.19.19.1.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.19.19.1.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/images/movi_e/086.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.20.20.2" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.20.20.2.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.20.20.2.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.20.20.2.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.20.20.2.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.20.20.2.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.20.20.2.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.20.20.2.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/dinosaur/movi_e/086.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.21.21.3" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.21.21.3.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.21.21.3.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.21.21.3.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.21.21.3.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.21.21.3.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.21.21.3.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.21.21.3.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/slotdiff/movi_e/086.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.22.22.4" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.22.22.4.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.22.22.4.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.22.22.4.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.22.22.4.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.22.22.4.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.22.22.4.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.22.22.4.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/hires_base/movi_e/086.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="S3.F3.23.23.5" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.23.23.5.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.23.23.5.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.23.23.5.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.23.23.5.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.23.23.5.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.23.23.5.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.23.23.5.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/sam/movi_e/086.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.F3.24.24.6" style="padding:18.5pt 2.0pt;"><span class="ltx_text" id="S3.F3.24.24.6.1">
<span class="ltx_inline-block ltx_markedasmath ltx_align_bottom" id="S3.F3.24.24.6.1.m1.1.1.1">
<span class="ltx_p" id="S3.F3.24.24.6.1.m1.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.F3.24.24.6.1.m1.1.1.1.1.1" style="width:74.4pt;height:74.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(0.0pt,0.0pt) scale(1,1) ;">
<span class="ltx_p" id="S3.F3.24.24.6.1.m1.1.1.1.1.1.1"><span class="ltx_text" id="S3.F3.24.24.6.1.m1.1.1.1.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="103" id="S3.F3.24.24.6.1.m1.1.1.1.1.1.1.1.g1" src="extracted/6349064/figures/images_movie/crop_former/movi_e/086.jpg" width="103"/></span></span>
</span></span></span>
</span></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different methods for object-centric learning, focusing on their performance in handling spurious background cues during out-of-distribution (OOD) generalization.  The results are organized by the backbone architecture used in each method.  Included are accuracy metrics for several datasets, with a breakdown for specific subsets, like ImageNet-D's background subset and ImageNet-9's mixed random subset.  Worst group accuracy (WGA) is also reported.  Methods are categorized into those using the OCCAM pipeline (O-H and O-D, representing HQES and FT-Dinosaur mask generators, respectively) and those from existing literature.  State-of-the-art results are highlighted for each benchmark.
> <details>
> <summary>read the caption</summary>
> Table 2: Object-Centric Learning for Spurious Background OOD Generalization. We report versions of accuracy in each benchmark. Results are grouped according to backbone architecture. “ImgNet-D (BG)” stands for the ImageNet-D “background” subset. “ImgNet-9 (MR)” stands for the ImageNet-9 “mixed rand” subset. “WGA” stands for the worst group accuracies. O-H/O-D stands for OCCAM with HQES/FT-Dinosaur masks generator correspondingly. For cited methods, we show results reported in the papers [1] and [81]. ⋆⋆\star⋆ indicates the state-of-the-art results in each benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" colspan="2" id="S4.T2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.3.1.1.1" style="font-size:90%;">(a) ImgNet-D (BG) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib81" title=""><span class="ltx_text" style="font-size:90%;">81</span></a>]</cite></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.2"><span class="ltx_text" id="S4.T2.1.1.2.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;">Acc. (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.2" style="font-size:90%;">)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.2.4.1.1"><span class="ltx_text" id="S4.T2.2.4.1.1.1" style="font-size:90%;">CLIP ViT-L</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.5.2.1">
<span class="ltx_text" id="S4.T2.2.5.2.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.2.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T2.2.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.5.2.2"><span class="ltx_text" id="S4.T2.2.5.2.2.1" style="font-size:90%;">23.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.6.3.1"><span class="ltx_text" id="S4.T2.2.6.3.1.1" style="font-size:90%;">O-D (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.3.2"><span class="ltx_text" id="S4.T2.2.6.3.2.1" style="font-size:90%;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.7.4.1"><span class="ltx_text" id="S4.T2.2.7.4.1.1" style="font-size:90%;">O-H (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.4.2"><span class="ltx_text" id="S4.T2.2.7.4.2.1" style="font-size:90%;">68.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.8.5.1">
<span class="ltx_text" id="S4.T2.2.8.5.1.1" style="font-size:90%;">CLIP-SigLip </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.2.8.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="S4.T2.2.8.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.5.2"><span class="ltx_text" id="S4.T2.2.8.5.2.1" style="font-size:90%;">59.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.9.6.1"><span class="ltx_text" id="S4.T2.2.9.6.1.1" style="font-size:90%;">O-D-SigLip (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.6.2"><span class="ltx_text" id="S4.T2.2.9.6.2.1" style="font-size:90%;">71.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.10.7.1"><span class="ltx_text" id="S4.T2.2.10.7.1.1" style="font-size:90%;">O-H-SigLip (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.10.7.2.1" style="font-size:90%;">78.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.2.11.8.1"><span class="ltx_text" id="S4.T2.2.11.8.1.1" style="font-size:90%;">Multi-modal LLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.12.9.1">
<span class="ltx_text" id="S4.T2.2.12.9.1.1" style="font-size:90%;">MiniGPT-4 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.2.12.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a><span class="ltx_text" id="S4.T2.2.12.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.12.9.2"><span class="ltx_text" id="S4.T2.2.12.9.2.1" style="font-size:90%;">71.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.13.10.1">
<span class="ltx_text" id="S4.T2.2.13.10.1.1" style="font-size:90%;">LLaVa </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.2.13.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a><span class="ltx_text" id="S4.T2.2.13.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.10.2"><span class="ltx_text" id="S4.T2.2.13.10.2.1" style="font-size:90%;">52.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.14.11.1">
<span class="ltx_text" id="S4.T2.2.14.11.1.1" style="font-size:90%;">LLaVa-NeXT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.2.14.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="S4.T2.2.14.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.11.2"><span class="ltx_text" id="S4.T2.2.14.11.2.1" style="font-size:90%;">68.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.2.2">
<span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:90%;">LLaVa-1.5 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.2.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S4.T2.2.2.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.1">
<span class="ltx_text" id="S4.T2.2.2.1.1" style="font-size:90%;">73.3</span><sup class="ltx_sup" id="S4.T2.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.1.2.1" style="font-size:90%;">⋆</span></sup>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a data-centric analysis using object-centric learning (OCL) methods on the CounterAnimals dataset.  The CounterAnimals dataset is designed to highlight the impact of spurious background correlations on model performance, with a 'Common' subset featuring typical backgrounds and a 'Counter' subset with unusual ones.  The table shows the classification accuracy achieved on both subsets using two different OCL approaches (one using HQES and the other using FT-Dinosaur masks) and a baseline without background removal. The key observation is that, while OCL methods reduce the reliance on spurious cues, there remains a significant performance gap between the 'Common' and 'Counter' subsets, indicating that factors beyond background influence the task difficulty.
> <details>
> <summary>read the caption</summary>
> Table 3: Data-Centric Understanding using OCL. We report the accuracies on the Common and Counter subset of the CounterAnimals dataset. We see that after eliminating the spurious background using OCL methods, the gap (Cmn-Ctr) does not substantially decrease.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" colspan="2" id="S4.T2.4.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.4.3.1.1.1" style="font-size:90%;">(b) UrbanCars <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.3.1.2"><span class="ltx_text" id="S4.T2.3.1.2.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.1.1">
<span class="ltx_text" id="S4.T2.3.1.1.1" style="font-size:90%;">WGA (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.1.1.m1.1"><semantics id="S4.T2.3.1.1.m1.1a"><mo id="S4.T2.3.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.1.1.m1.1b"><ci id="S4.T2.3.1.1.m1.1.1.cmml" xref="S4.T2.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T2.3.1.1.2" style="font-size:90%;">)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.4.4.1.1"><span class="ltx_text" id="S4.T2.4.4.1.1.1" style="font-size:90%;">ViT-L-14 CLIP</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.4.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.5.2.1">
<span class="ltx_text" id="S4.T2.4.5.2.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.4.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T2.4.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.5.2.2"><span class="ltx_text" id="S4.T2.4.5.2.2.1" style="font-size:90%;">87.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.6.3.1"><span class="ltx_text" id="S4.T2.4.6.3.1.1" style="font-size:90%;">O-D (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.6.3.2"><span class="ltx_text" id="S4.T2.4.6.3.2.1" style="font-size:90%;">98.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.7.4.1"><span class="ltx_text" id="S4.T2.4.7.4.1.1" style="font-size:90%;">O-H (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.7.4.2.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.4.8.5.1"><span class="ltx_text" id="S4.T2.4.8.5.1.1" style="font-size:90%;">ResNet50 CLIP</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.4.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.9.6.1">
<span class="ltx_text" id="S4.T2.4.9.6.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.4.9.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T2.4.9.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.9.6.2"><span class="ltx_text" id="S4.T2.4.9.6.2.1" style="font-size:90%;">64.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.10.7.1"><span class="ltx_text" id="S4.T2.4.10.7.1.1" style="font-size:90%;">O-D (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.10.7.2"><span class="ltx_text" id="S4.T2.4.10.7.2.1" style="font-size:90%;">98.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.11.8.1"><span class="ltx_text" id="S4.T2.4.11.8.1.1" style="font-size:90%;">O-H (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.11.8.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.11.8.2.1" style="font-size:90%;">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.12.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.4.12.9.1"><span class="ltx_text" id="S4.T2.4.12.9.1.1" style="font-size:90%;">ResNet50</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.4.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.13.10.1">
<span class="ltx_text" id="S4.T2.4.13.10.1.1" style="font-size:90%;">CoBalT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.4.13.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T2.4.13.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.13.10.2"><span class="ltx_text" id="S4.T2.4.13.10.2.1" style="font-size:90%;">80.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.14.11.1">
<span class="ltx_text" id="S4.T2.4.14.11.1.1" style="font-size:90%;">LfF </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.4.14.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.T2.4.14.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.14.11.2"><span class="ltx_text" id="S4.T2.4.14.11.2.1" style="font-size:90%;">34.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.15.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.15.12.1">
<span class="ltx_text" id="S4.T2.4.15.12.1.1" style="font-size:90%;">JTT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.4.15.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T2.4.15.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.15.12.2"><span class="ltx_text" id="S4.T2.4.15.12.2.1" style="font-size:90%;">55.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.16.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.16.13.1">
<span class="ltx_text" id="S4.T2.4.16.13.1.1" style="font-size:90%;">SPARE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.4.16.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib78" title=""><span class="ltx_text" style="font-size:90%;">78</span></a><span class="ltx_text" id="S4.T2.4.16.13.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.16.13.2"><span class="ltx_text" id="S4.T2.4.16.13.2.1" style="font-size:90%;">76.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.4.2.2">
<span class="ltx_text" id="S4.T2.4.2.2.1" style="font-size:90%;">LLE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.4.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2.4.2.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.2.1">
<span class="ltx_text" id="S4.T2.4.2.1.1" style="font-size:90%;">90.8</span><sup class="ltx_sup" id="S4.T2.4.2.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.4.2.1.2.1" style="font-size:90%;">⋆</span></sup>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a factor analysis examining the impact of different components on robust classification performance in the presence of spurious background correlations.  The analysis uses the ViT-L-14 CLIP architecture and evaluates different masking methods (Gray Crop, AlphaCLIP α-channel), mask generation models (FT-Dinosaur, HQES), and foreground detectors (Ens. H, Class-Aided) across five benchmark datasets known for their spurious correlations: Waterbirds, ImageNet-9, ImageNet-D, UrbanCars, and CounterAnimals.  For CounterAnimals, the table reports the performance gap between the common and counter subsets, with a smaller gap indicating better generalization. The table systematically varies these components to assess their relative contributions to overall robustness.
> <details>
> <summary>read the caption</summary>
> Table 4: Factor Analysis for Spurious Background OOD Generalization. Accuracies on spurious correlations datasets when varying factors for the ViT-L-14 CLIP architecture. We use AlphaCLIP for α𝛼\alphaitalic_α-channel masking and CLIP for Gray Crop masking. We first report their baseline performances without masking (where mask method and model are both “-”) and with 2 different mask models (FT-Dinosaur and HQES) as well as 2 different foreground detectors (Ens. ℋℋ\mathcal{H}caligraphic_H and Class-Aided). Results are reported on 5 benchmark datasets, Waterbirds (WB), ImageNet-9 (IN-9), ImageNet-D (IN-D), UrbanCars (UC), and CounterAnimals (Cmn-Ctr). For the CounterAnimals results, we report the gap between the common-split (Cmn) and the counter-split (Ctr) accuracies. Unlike other metrics, a smaller Cmn-Ctr gap is deemed a better generalization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.T2.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.6.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" colspan="2" id="S4.T2.6.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.3.1.1.1" style="font-size:90%;">(c) ImgNet-9 (MR) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.5.1.2"><span class="ltx_text" id="S4.T2.5.1.2.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1">
<span class="ltx_text" id="S4.T2.5.1.1.1" style="font-size:90%;">Acc. (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.1.1.m1.1"><semantics id="S4.T2.5.1.1.m1.1a"><mo id="S4.T2.5.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.5.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.1.1.m1.1b"><ci id="S4.T2.5.1.1.m1.1.1.cmml" xref="S4.T2.5.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T2.5.1.1.2" style="font-size:90%;">)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.6.4.1.1"><span class="ltx_text" id="S4.T2.6.4.1.1.1" style="font-size:90%;">ViT-L-14 CLIP</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.5.2.1">
<span class="ltx_text" id="S4.T2.6.5.2.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T2.6.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.5.2.2"><span class="ltx_text" id="S4.T2.6.5.2.2.1" style="font-size:90%;">91.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.6.3.1"><span class="ltx_text" id="S4.T2.6.6.3.1.1" style="font-size:90%;">O-D (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.3.2"><span class="ltx_text" id="S4.T2.6.6.3.2.1" style="font-size:90%;">93.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.7.4.1"><span class="ltx_text" id="S4.T2.6.7.4.1.1" style="font-size:90%;">O-H (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.7.4.2.1" style="font-size:90%;">95.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.6.8.5.1"><span class="ltx_text" id="S4.T2.6.8.5.1.1" style="font-size:90%;">ResNet50 CLIP</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.9.6.1">
<span class="ltx_text" id="S4.T2.6.9.6.1.1" style="font-size:90%;">CLIP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.9.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T2.6.9.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.9.6.2"><span class="ltx_text" id="S4.T2.6.9.6.2.1" style="font-size:90%;">81.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.10.7.1"><span class="ltx_text" id="S4.T2.6.10.7.1.1" style="font-size:90%;">O-D (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.10.7.2"><span class="ltx_text" id="S4.T2.6.10.7.2.1" style="font-size:90%;">80.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.11.8.1"><span class="ltx_text" id="S4.T2.6.11.8.1.1" style="font-size:90%;">O-H (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.11.8.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.11.8.2.1" style="font-size:90%;">85.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.12.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T2.6.12.9.1"><span class="ltx_text" id="S4.T2.6.12.9.1.1" style="font-size:90%;">ResNet50</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.13.10.1">
<span class="ltx_text" id="S4.T2.6.13.10.1.1" style="font-size:90%;">CoBalT </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.13.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S4.T2.6.13.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.13.10.2"><span class="ltx_text" id="S4.T2.6.13.10.2.1" style="font-size:90%;">80.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.14.11.1">
<span class="ltx_text" id="S4.T2.6.14.11.1.1" style="font-size:90%;">SIN </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.14.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T2.6.14.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.14.11.2"><span class="ltx_text" id="S4.T2.6.14.11.2.1" style="font-size:90%;">63.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.15.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.15.12.1">
<span class="ltx_text" id="S4.T2.6.15.12.1.1" style="font-size:90%;">INSIN </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.15.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T2.6.15.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.15.12.2"><span class="ltx_text" id="S4.T2.6.15.12.2.1" style="font-size:90%;">78.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.16.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.16.13.1">
<span class="ltx_text" id="S4.T2.6.16.13.1.1" style="font-size:90%;">INCGN </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.16.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S4.T2.6.16.13.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.16.13.2"><span class="ltx_text" id="S4.T2.6.16.13.2.1" style="font-size:90%;">80.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.17.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.17.14.1">
<span class="ltx_text" id="S4.T2.6.17.14.1.1" style="font-size:90%;">MaskTune </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.17.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S4.T2.6.17.14.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.17.14.2"><span class="ltx_text" id="S4.T2.6.17.14.2.1" style="font-size:90%;">78.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.6.2.2">
<span class="ltx_text" id="S4.T2.6.2.2.1" style="font-size:90%;">CIM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T2.6.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07092v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="S4.T2.6.2.2.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.2.1">
<span class="ltx_text" id="S4.T2.6.2.1.1" style="font-size:90%;">81.1</span><sup class="ltx_sup" id="S4.T2.6.2.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.6.2.1.2.1" style="font-size:90%;">⋆</span></sup>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of different foreground detection methods for robust image classification using object-centric representations.  The Waterbirds dataset is used for evaluation, with foreground masks generated using High-Quality Entity Segmentation (HQES) and applied using the 'Gray BG + Crop' technique. The classification is performed using the CLIP ViT-L-14 model.  Several foreground detection methods are compared, including the 'Max Prob' method (maximum probability across classes, similar to confidence), the 'Class-Aided' method (based on ground truth class probability), and the 'Ens. H' method (ensemble entropy).  The results show worst-group accuracies and are compared against a ground truth baseline (using ground truth foreground masks from a separate source).
> <details>
> <summary>read the caption</summary>
> Table 5: Different foreground detectors on Waterbirds We report the worst-group accuracies on the Waterbirds dataset for different foreground detectors. Masks are generated by HQES and applied via “Gray BG + Crop” (see § 3.2.1). The classification model is CLIP ViT-L-14 [52]. “-” stands for classification of original images without using any masks. Max Prob stands for foreground detector that uses the following score (in terms of § 3.2.2): gmax_prob⁢(x,m)=maxc⁡pc⁢(ψ⁢(a⁢(x,m)))subscript𝑔max_prob𝑥𝑚subscriptmax𝑐superscript𝑝𝑐𝜓𝑎𝑥𝑚g_{\text{max\_prob}}(x,m)=\operatorname{max}_{c}p^{c}(\psi(a(x,m)))italic_g start_POSTSUBSCRIPT max_prob end_POSTSUBSCRIPT ( italic_x , italic_m ) = roman_max start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT italic_p start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT ( italic_ψ ( italic_a ( italic_x , italic_m ) ) ) - maximum probability across all possible classes (its computation is equivalent to confidence in § 4.3). Class-Aided and Ens. ℋℋ\mathcal{H}caligraphic_H are described in § 3.2.2. Ground Truth stands for ground truth foreground masks that are taken from [29].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07092/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07092/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}