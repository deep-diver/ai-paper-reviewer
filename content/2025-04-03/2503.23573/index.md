---
title: "DASH: Detection and Assessment of Systematic Hallucinations of VLMs"
summary: "DASH: Detect systematic VLM hallucinations in open-world settings with our automated pipeline, improving model reliability via optimized image retrieval & fine-tuning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Object Detection", "🏢 Tübingen AI Center – University of Tübingen",]
showSummary: true
date: 2025-03-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.23573 {{< /keyword >}}
{{< keyword icon="writer" >}} Maximilian Augustin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.23573" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.23573" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.23573/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision-language models(VLMs) often make mistakes by “seeing” objects that aren't there. Current tests for these errors don't fully capture how these models are used in real-world, open settings, or catch systematic errors. This paper addresses the limitations of current methods that rely on small, labeled datasets and are insufficient for assessing hallucinations in open-world scenarios and detecting systematic errors.



To fix these issues, the authors introduce an automated process, called DASH, to spot these errors, focusing on scenarios where the model incorrectly says “yes” to seeing an object. DASH uses optimized image retrieval to find misleading images and groups similar images where the VLM hallucinates. The results showed DASH can find many error clusters and that fixing the model with DASH data helps reduce these hallucinations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DASH, a novel pipeline, effectively detects systematic object hallucinations in VLMs by identifying clusters of semantically similar images that trigger these errors. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DASH-OPT, an image-based retrieval component, optimizes image generation to uncover model-specific hallucinations, outperforming text-based methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Fine-tuning VLMs with DASH-generated data mitigates object hallucinations and enhances performance on related tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **DASH**, a novel approach to identifying & mitigating object hallucinations in VLMs, a prevalent issue limiting their reliability in real-world applications. By automating the detection of systematic errors, this research **opens new avenues for improving VLM robustness and trustworthiness** in open-world settings, with potential implications for downstream tasks relying on these models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.23573/x1.png)

> 🔼 The figure showcases a visual example of systematic hallucinations in the PaliGemma-3B vision-language model.  It presents a series of real-world images to the model, asking whether a specific object (in this case, a 'fireboat') is present.  The model incorrectly identifies the presence of the fireboat in multiple images where it is clearly absent, highlighting a systematic error in the model's object recognition capabilities. This illustrates the model's tendency to hallucinate objects even in the absence of visual evidence.
> <details>
> <summary>read the caption</summary>
> Figure 1: DASH: Systematic Hallucinations of PaliGemma-3B.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S3.F3.33">
<tr class="ltx_tr" id="S3.F3.33.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.33.34.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.33.34.1.1" style="font-size:80%;">OBJ</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="9" id="S3.F3.33.34.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.33.34.2.1" style="font-size:80%;">DASH-LLM</span></td>
<td class="ltx_td" id="S3.F3.33.34.3" style="padding:-0.8pt 0.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.F3.33.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.F3.33.35.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.33.35.1.1" style="font-size:80%;">ptarmigan</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="10" id="S3.F3.33.35.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.35.2.1" style="font-size:80%;">Cluster Size: 190, Query: A mountain valley with a few scattered trees and a stream.</span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.1.1.1" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.1.1.1.g1" src="extracted/6321901/images/thumbnails/ptarmigan_7.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.2.2.2" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.2.2.2.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_0.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.3.3.3" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.3.3.3.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.4.4.4" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.4.4.4.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_2.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.5.5.5" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.5.5.5.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_3.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.6.6.6" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.6.6.6.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_4.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.7.7.7" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.7.7.7.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_5.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.8.8.8" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.8.8.8.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_6.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.9.9.9" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.9.9.9.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_7.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.10.10.10" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.10.10.10.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_8.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.11.11.11" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.11.11.11.g1" src="extracted/6321901/images/retrieval/pali_txt/si_ptarmigan/0_9.jpg" width="57"/></td>
</tr>
<tr class="ltx_tr" id="S3.F3.33.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.33.36.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.33.36.1.1" style="font-size:70%;">baumkuchen</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" colspan="10" id="S3.F3.33.36.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.36.2.1" style="font-size:80%;">Cluster Size: 389, Query: A traditional German Christmas pyramid with candles and ornaments.</span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.22.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.12.12.1" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.12.12.1.g1" src="extracted/6321901/images/thumbnails/baumkuchen_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.13.13.2" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.13.13.2.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_0.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.14.14.3" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.14.14.3.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_2.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.15.15.4" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.15.15.4.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_6.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.16.16.5" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.16.16.5.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_8.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.17.17.6" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.17.17.6.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_9.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.18.18.7" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.18.18.7.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_11.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.19.19.8" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.19.19.8.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_12.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.20.20.9" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.20.20.9.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_14.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.21.21.10" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.21.21.10.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_15.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.22.22.11" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.22.22.11.g1" src="extracted/6321901/images/retrieval/pali_txt/oim_baumkuchen/5_17.jpg" width="57"/></td>
</tr>
<tr class="ltx_tr" id="S3.F3.33.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.33.37.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.33.37.1.1" style="font-size:80%;">cello</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" colspan="10" id="S3.F3.33.37.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.33.37.2.1" style="font-size:80%;">Cluster Size: 62, Query: A music sheet with intricate notes and markings.</span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.33.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.F3.23.23.1" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.23.23.1.g1" src="extracted/6321901/images/thumbnails/Cello_6.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.24.24.2" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.24.24.2.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_0.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.25.25.3" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.25.25.3.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.26.26.4" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.26.26.4.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_2.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.27.27.5" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.27.27.5.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_3.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.28.28.6" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.28.28.6.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_4.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.29.29.7" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.29.29.7.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_5.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.30.30.8" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.30.30.8.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_6.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.31.31.9" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.31.31.9.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_7.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.32.32.10" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.32.32.10.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_8.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.33.33.11" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.33.33.11.g1" src="extracted/6321901/images/retrieval/pali_txt/obj_cello/0_9.jpg" width="57"/></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the quantitative results of the DASH system's performance on three different vision-language models: PaliGemma, LLaVA-NeXT Vicuna, and LLaVA-NeXT Mistral.  The results are categorized by the method used for query generation (DASH-LLM or DASH-OPT).  For each model and method, the table shows the total number of images retrieved, the total number of clusters identified (representing groups of semantically similar images triggering object hallucinations), the average number of clusters per object, and the average number of images per cluster.  This data provides a measure of the scale and nature of systematic false positive hallucinations in the evaluated models, revealing the effectiveness of each query generation method in uncovering them.
> <details>
> <summary>read the caption</summary>
> Table 1: Retrieval results for DASH-LLM and DASH-OPT across PaliGemma, LLaVA-NeXT Vicuna, and LLaVA-NeXT Mistral, accumulated over the 380 object categories from all datasets.
> </details>





### In-depth insights


#### VLM Hallucination
VLMs, despite advancements, are prone to **object hallucinations**, where they incorrectly assert the presence of objects in images. Current benchmarks, like POPE and AMBER, assess these hallucinations but are limited by their curated datasets, failing to capture the open-world complexity where VLMs are widely used. This can overlook significant systematic errors. The paper introduces DASH, a pipeline to identify these systematic hallucinations in real-world images, optimizing image-based retrieval to mislead the VLM. **DASH** aims to identify clusters of semantically similar images that consistently trigger hallucinations, addressing the limitations of existing benchmarks by **exploring open-world scenarios** and **uncovering unexpected contexts** for object hallucinations. Ultimately, DASH provides a means to assess and potentially mitigate these errors in VLMs.

#### DASH: Open-World
**DASH**'s focus on open-world scenarios is critical because existing VLM benchmarks often use curated datasets like MSCOCO, which limits their ability to assess hallucinations in real-world settings. **DASH** addresses this by operating on ReLAION-5B, a large-scale, real-world image dataset.This enables the discovery of systematic hallucinations that might be missed when relying on smaller, labeled datasets. By tackling open-world object hallucination, **DASH** aligns with the increasing application of AI agents that process images automatically. Unlike traditional benchmarks with a limited scope, **DASH** recognizes that objects hallucinated in a dataset might not solely originate from that data, thus necessitating broader exploration for hallucination detection.The shift towards open-world evaluation enhances the practical relevance and robustness of VLM assessments, paving the way for more dependable and trustworthy AI systems capable of handling diverse visual inputs. 

#### DASH-OPT Details
**DASH-OPT optimizes generative models** to induce VLMs to hallucinate objects. It searches the “natural image manifold” by **perturbing latent diffusion model variables**. DASH-OPT uses an object detector as a weak prior ensuring the generated image doesn't truly contain the object, thus creating false positives. **A key aspect is using CLIP and open-world detection in a loss function**. It balances fooling the VLM against low object detector confidence, achieving model-specific hallucination triggers. It can utilize text-based queries or image-based for better hallucination.

#### LLM Mitigation
While the provided paper doesn't explicitly have an "LLM Mitigation" section, it implicitly addresses mitigating **object hallucination** in Vision-Language Models (VLMs). Mitigation strategies often revolve around **robust instruction tuning**, **visual contrastive decoding**, and post-hoc methods aimed at reducing hallucinations. A key aspect of mitigating these errors involves using the **DASH pipeline** to identify systematic failure modes in VLMs and then fine-tuning the models on datasets tailored to address these specific weaknesses. This approach helps VLMs learn to avoid common pitfalls, ultimately improving their reliability in open-world settings. Another important aspect of hallucination mitigation lies in enhancing the **training data** by creating larger datasets of object hallucinations, which allows models to better differentiate between actual and spurious object detections, thereby improving the quality and trustworthiness of VLM outputs. Addressing the limited scale of existing datasets contributes significantly to VLM improvement.

#### DASH Limitations
While DASH offers a powerful approach to detecting systematic hallucinations in VLMs, it's essential to acknowledge its limitations. **Achieving exhaustive coverage is impossible** due to the inherent complexities and vastness of the image space. Even with ReLAION-5B's significant coverage, some image categories remain underrepresented, potentially leading to missed hallucinations. **The reliance on a conservative object detector threshold** could also pose a limitation for more advanced VLMs, potentially overlooking subtle instances of hallucination. Despite these limitations, DASH represents a significant step forward in understanding and mitigating the challenges of object hallucinations in VLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.23573/extracted/6321901/images/pipeline.png)

> 🔼 This figure illustrates the DASH pipeline.  The pipeline begins by selecting an object class (e.g., 'dining table').  Two methods are used to generate queries: DASH-LLM generates text-based queries, while DASH-OPT optimizes latent variables in a diffusion process to create images likely to cause the Vision-Language Model (VLM) to hallucinate.  These queries are then used to retrieve images from the ReLAION-5B dataset.  The retrieval process is done in two stages: exploration (initial retrieval) and exploitation (retrieving similar images to those already identified as causing hallucinations).  Finally, images resulting in a 'yes' response from the VLM (indicating hallucination) but a 'no' from the object detector (confirming the object's absence) are clustered to identify groups of semantically similar images that consistently trigger false-positive hallucinations.
> <details>
> <summary>read the caption</summary>
> Figure 2: DASH: Given an object class, e.g. dining table, we generate text-based queries with DASH-LLM or image-based queries with DASH-OPT. Optimization: we optimize the latent variables of a diffusion process to generate an image which yields “yes” for the VLM (“Can you see a dining table in this image?”) and at the same time the object detector states that no “dining table” is present in the image. Exploration: the text and image queries are used for kNN-retrieval using CLIP similarity on ReLaion-5B. Exploitation: for successful images (VLM “yes”, object detector “no”) of the exploration phase we retrieve novel images via kNN-retrieval to check if the hallucination transfers to semantically similar images. Clustering: Finally, we cluster successful images of the exploitation step into semantically similar clusters of hallucinations of the VLM.
> </details>



![](https://arxiv.org/html/2503.23573/x2.png)

> 🔼 This figure showcases examples of systematic false-positive hallucinations identified by the DASH framework in the PaliGemma vision-language model (VLM). Six clusters of images are displayed, three generated using DASH-LLM (text-based queries) and three using DASH-OPT (image-based queries). Each cluster contains semantically similar images where the model incorrectly identifies the presence of a specific object. The figure highlights the model's tendency to hallucinate objects based on contextual cues or associations between other present image elements, even when the object is absent.  Each cluster shows a small selection of the images, along with the total number of images in that cluster, the query used, and confidence scores (object detection confidence < 0.1 and model's 'yes' response). This illustrates how DASH can identify systematic errors in VLMs, revealing both expected and unexpected patterns in model behaviour.
> <details>
> <summary>read the caption</summary>
> Figure 3: Examples of systematic FP-hallucination clusters found by DASH for PaliGemma: We present six hallucination clusters, each for a different object—three identified by DASH-LLM and three by DASH-OPT. For each cluster, we show a sample of images and the total number of images. For each of these images, PaliGemma answers “yes” to “Can you see a OBJ in this image?” while the object detector reports a confidence below 0.1. None of the images actually contain the object. We also provide the text (DASH-LLM) and image queries (DASH-OPT) used for retrieval during exploration for the majority of the cluster.
> </details>



![](https://arxiv.org/html/2503.23573/x3.png)

> 🔼 This histogram displays the minimum CLIP embedding distance between images successfully identified as causing false positive hallucinations by the model (VLM says 'yes', object detector says 'no') and their nearest initial LLM-generated prompt.  The distribution for DASH-OPT (image-based query generation) shows a wider spread and higher minimum distances compared to DASH-LLM (text-based query generation). This indicates that DASH-OPT is more effective at uncovering unexpected hallucinations that are less semantically related to the initial prompts than DASH-LLM.
> <details>
> <summary>read the caption</summary>
> Figure 4: Histogram illustrating the minimum embedding distance from success images to the nearest LLM prompt for DASH-LLM and DASH-OPT. While both methods use these LLM prompts in their exploration stage, the image-based method is able to find unexpected hallucinations far away from the initial LLM prompts.
> </details>



![](https://arxiv.org/html/2503.23573/x4.png)

> 🔼 Figure 5 presents a comparison of results from two different methods, DASH-LLM and DASH-OPT, used to identify systematic hallucinations in the LLaVA-NeXT Vicuna vision-language model. Both methods aim to find clusters of images that cause the model to incorrectly identify the presence of a 'Dam' even when it is absent.  DASH-LLM uses text-based queries generated by a large language model (LLM) to retrieve relevant images. DASH-OPT, on the other hand, uses an image-based retrieval method to generate images specifically designed to mislead the VLM. The figure shows that DASH-OPT discovers a significantly larger number of image clusters and a wider range of visual patterns that trigger hallucinations, including unexpected and unrelated objects like cartoon frogs and dinosaurs.  DASH-LLM, in contrast, primarily identifies clusters that are semantically related to the concept of a dam, such as images of water. This difference highlights the ability of DASH-OPT to uncover more model-specific and systematic errors compared to DASH-LLM.
> <details>
> <summary>read the caption</summary>
> Figure 5: All clusters for DASH-LLM and DASH-OPT for the object ’Dam’ using LLaVA-NeXT Vicuna. DASH-OPT identifies a larger total number of clusters and images, capturing a broader diversity of visuals. This demonstrates that DASH-OPT can uncover unexpected systematic hallucination patterns, such as cartoon frogs and dinosaurs, orange leaves, bare feet, or a park bench, whereas DASH-LLM tends to highlight failure modes more directly linked to the object, such as water associated with ’Dam’.
> </details>



![](https://arxiv.org/html/2503.23573/x5.png)

> 🔼 Figure 6 showcases examples from the DASH-B benchmark dataset, specifically focusing on cases where the object is absent.  The dataset is comprised of images and their corresponding object labels.  The figure highlights instances where the GPT-40-mini model, identified as the top-performing model on the DASH-B benchmark (detailed in Table J of the paper), incorrectly identifies the presence of objects that are not actually present within the image. This demonstrates the model's susceptibility to generating false positives even in a controlled setting.
> <details>
> <summary>read the caption</summary>
> Figure 6: Object hallucination benchmark DASH-B: examples from the negative set of DASH-B (images and object label) where GPT-4o-mini, the best scoring model on DASH-B (see Tab. J) hallucinates the object even though it is not present in the image.
> </details>



![](https://arxiv.org/html/2503.23573/x6.png)

> 🔼 This figure shows the prompt used to instruct the large language model (LLM) to generate text queries for the DASH-LLM component of the DASH pipeline. The goal is to produce prompts that might cause a vision-language model (VLM) to incorrectly identify an object in an image due to spurious features, even when that object is not actually there.  The instructions emphasize creating unique prompts, avoiding mentioning the target object or its parts, focusing on spurious features (visual elements that frequently co-occur with the object but aren't part of it), and maintaining a realistic, unbiased style.  Examples for different objects are provided to illustrate the desired style of the prompts.
> <details>
> <summary>read the caption</summary>
> Figure 7: DASH-LLM prompt for generating the text queries (1/3)
> </details>



![](https://arxiv.org/html/2503.23573/x7.png)

> 🔼 This figure shows the second part of a three-part prompt used to instruct a large language model (LLM) to generate text queries for the DASH system. The goal is to create prompts that would lead an AI model to incorrectly identify objects in images due to spurious features (elements that frequently co-occur with a given object but are not part of the object itself).  The prompt provides examples of correct and incorrect prompts to help the LLM understand the task.  It emphasizes the importance of not mentioning the object or its parts, avoiding direct or indirect references, and focusing on the spurious features.
> <details>
> <summary>read the caption</summary>
> Figure 8: DASH-LLM prompt for generating the text queries (2/3)
> </details>



![](https://arxiv.org/html/2503.23573/x8.png)

> 🔼 This figure shows the detailed instructions and guidelines for using the DASH-LLM prompt to generate text queries. It emphasizes the importance of avoiding any direct or indirect mention of the object's name or parts, focusing instead on creating prompts that emphasize spurious features frequently associated with the object. The instructions highlight the need for prompt diversity, avoiding repetitions, and ensuring adherence to proper language and grammar while being inclusive and free of bias.  It provides examples of correct and incorrect prompts for various objects, further clarifying the guidelines.
> <details>
> <summary>read the caption</summary>
> Figure 9: DASH-LLM prompt for generating the text queries (3/3)
> </details>



![](https://arxiv.org/html/2503.23573/x13.png)

> 🔼 This figure shows the follow-up prompt used in the DASH-LLM method of the paper.  The initial prompt instructs the LLM to generate image captions containing only spurious features, avoiding any mention of the target object or its parts.  This follow-up prompt emphasizes the importance of reviewing and correcting any previously generated prompts that deviate from the given guidelines, ensuring that the final prompts precisely adhere to the instructions and avoid direct or indirect mentions of the object.
> <details>
> <summary>read the caption</summary>
> Figure 10: DASH-LLM follow-up prompt for generating the text queries
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S3.F3.66">
<tr class="ltx_tr" id="S3.F3.66.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.66.34.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.66.34.1.1" style="font-size:80%;">OBJ</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="9" id="S3.F3.66.34.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.66.34.2.1" style="font-size:80%;">DASH-OPT</span></td>
<td class="ltx_td" id="S3.F3.66.34.3" style="padding:-0.8pt 0.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.F3.66.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.F3.66.35.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.66.35.1.1" style="font-size:80%;">tench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.F3.66.35.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.66.35.2.1" style="font-size:80%;">Query</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="7" id="S3.F3.66.35.3" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.66.35.3.1" style="font-size:80%;">Cluster Size: 170</span></td>
<td class="ltx_td ltx_border_tt" id="S3.F3.66.35.4" style="padding:-0.8pt 0.5pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.F3.66.35.5" style="padding:-0.8pt 0.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.F3.44.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.34.1.1" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.34.1.1.g1" src="extracted/6321901/images/thumbnails/tench_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.35.2.2" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.35.2.2.g1" src="extracted/6321901/images/retrieval/pali_img/query_images/tench_250.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.36.3.3" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.36.3.3.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_8.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.37.4.4" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.37.4.4.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.38.5.5" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.38.5.5.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_2.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.39.6.6" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.39.6.6.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_3.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.40.7.7" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.40.7.7.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_4.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.41.8.8" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.41.8.8.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_5.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.42.9.9" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.42.9.9.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_6.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.43.10.10" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.43.10.10.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_7.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.44.11.11" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.44.11.11.g1" src="extracted/6321901/images/retrieval/pali_img/si_tench/48_8.jpg" width="57"/></td>
</tr>
<tr class="ltx_tr" id="S3.F3.66.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.66.36.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.66.36.1.1" style="font-size:80%;">leopard</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.66.36.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.66.36.2.1" style="font-size:80%;">Query</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" colspan="7" id="S3.F3.66.36.3" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.66.36.3.1" style="font-size:80%;">Cluster Size: 276</span></td>
<td class="ltx_td ltx_border_t" id="S3.F3.66.36.4" style="padding:-0.8pt 0.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.F3.66.36.5" style="padding:-0.8pt 0.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.F3.55.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.45.12.1" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.45.12.1.g1" src="extracted/6321901/images/thumbnails/leopard_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.46.13.2" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.46.13.2.g1" src="extracted/6321901/images/retrieval/pali_img/query_images/leopard_320.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.47.14.3" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.47.14.3.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.48.15.4" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.48.15.4.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_3.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.49.16.5" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.49.16.5.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_4.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.50.17.6" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.50.17.6.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_5.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.51.18.7" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.51.18.7.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_6.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.52.19.8" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.52.19.8.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_7.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.53.20.9" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.53.20.9.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_8.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.54.21.10" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.54.21.10.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_9.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.F3.55.22.11" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.55.22.11.g1" src="extracted/6321901/images/retrieval/pali_img/si_leopard/0_0.jpg" width="57"/></td>
</tr>
<tr class="ltx_tr" id="S3.F3.66.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.66.37.1" style="padding:-0.8pt 0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.66.37.1.1" style="font-size:80%;">piano</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.66.37.2" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.66.37.2.1" style="font-size:80%;">Query</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" colspan="7" id="S3.F3.66.37.3" style="padding:-0.8pt 0.5pt;"><span class="ltx_text" id="S3.F3.66.37.3.1" style="font-size:80%;">Cluster Size: 150</span></td>
<td class="ltx_td ltx_border_t" id="S3.F3.66.37.4" style="padding:-0.8pt 0.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.F3.66.37.5" style="padding:-0.8pt 0.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.F3.66.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.F3.56.23.1" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.56.23.1.g1" src="extracted/6321901/images/thumbnails/piano_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.F3.57.24.2" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.57.24.2.g1" src="extracted/6321901/images/retrieval/pali_img/query_images/piano_220.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.58.25.3" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.58.25.3.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_4.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.59.26.4" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.59.26.4.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_5.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.60.27.5" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.60.27.5.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_6.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.61.28.6" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.61.28.6.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_7.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.62.29.7" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.62.29.7.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_8.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.63.30.8" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.63.30.8.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_1.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.64.31.9" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.64.31.9.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_0.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.65.32.10" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.65.32.10.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_2.jpg" width="57"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.F3.66.33.11" style="padding:-0.8pt 0.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S3.F3.66.33.11.g1" src="extracted/6321901/images/retrieval/pali_img/oic_piano/0_3.jpg" width="57"/></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of transferring the systematic false-positive hallucinations identified by DASH (on three different Vision-Language Models) to seven other unseen VLMs.  It explores how different components of the VLMs (LLM backbone, vision encoder, and model scale) influence their susceptibility to these hallucinations. The transfer rate, representing the proportion of images causing hallucinations in the original models that also trigger hallucinations in the unseen models, is shown.  The true positive rate (TPR-ICO) is also reported, calculated using ground truth data from ImageNet, COCO, and Objects365, providing insights into the overall accuracy of the VLMs in detecting objects when they are actually present.
> <details>
> <summary>read the caption</summary>
> Table 2: Transfer of DASH images (rows) to different VLMs (columns) Different LLM backbones(LLaVA-NeXT) and different vision encoders (Prismatic) have a significant impact on the vulnerability to FP-hallucinations, but the LLM size (Qwen2-VL) shows only a small effect. TPR-ICO is the true positive rate calculated on ground-truth validation data from ImageNet, COCO, and Objects365 corresponding to the employed object categories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.2">
<tr class="ltx_tr" id="S4.T1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.2.1.1.1"></span><span class="ltx_text" id="S4.T1.2.1.1.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T1.2.1.1.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.2.1.1.3.1">
<span class="ltx_tr" id="S4.T1.2.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.1.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Source</span></span>
<span class="ltx_tr" id="S4.T1.2.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.1.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Model</span></span>
</span></span><span class="ltx_text" id="S4.T1.2.1.1.4"></span><span class="ltx_text" id="S4.T1.2.1.1.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.2.1.2.1"></span><span class="ltx_text" id="S4.T1.2.1.2.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T1.2.1.2.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.2.1.2.3.1">
<span class="ltx_tr" id="S4.T1.2.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.2.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">DASH</span></span>
<span class="ltx_tr" id="S4.T1.2.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.2.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Variant</span></span>
</span></span><span class="ltx_text" id="S4.T1.2.1.2.4"></span><span class="ltx_text" id="S4.T1.2.1.2.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.2.1.3.1"></span><span class="ltx_text" id="S4.T1.2.1.3.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T1.2.1.3.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.2.1.3.3.1">
<span class="ltx_tr" id="S4.T1.2.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.3.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Total</span></span>
<span class="ltx_tr" id="S4.T1.2.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.3.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Images</span></span>
</span></span><span class="ltx_text" id="S4.T1.2.1.3.4"></span><span class="ltx_text" id="S4.T1.2.1.3.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.2.1.4.1"></span><span class="ltx_text" id="S4.T1.2.1.4.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T1.2.1.4.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.2.1.4.3.1">
<span class="ltx_tr" id="S4.T1.2.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Total</span></span>
<span class="ltx_tr" id="S4.T1.2.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Clusters</span></span>
</span></span><span class="ltx_text" id="S4.T1.2.1.4.4"></span><span class="ltx_text" id="S4.T1.2.1.4.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.2.1.5.1"></span><span class="ltx_text" id="S4.T1.2.1.5.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T1.2.1.5.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.2.1.5.3.1">
<span class="ltx_tr" id="S4.T1.2.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Avg Clstr</span></span>
<span class="ltx_tr" id="S4.T1.2.1.5.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">per Object</span></span>
</span></span><span class="ltx_text" id="S4.T1.2.1.5.4"></span><span class="ltx_text" id="S4.T1.2.1.5.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.6" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S4.T1.2.1.6.1"></span><span class="ltx_text" id="S4.T1.2.1.6.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T1.2.1.6.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.2.1.6.3.1">
<span class="ltx_tr" id="S4.T1.2.1.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.6.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Avg Imgs</span></span>
<span class="ltx_tr" id="S4.T1.2.1.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.1.6.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">per Clstr</span></span>
</span></span><span class="ltx_text" id="S4.T1.2.1.6.4"></span><span class="ltx_text" id="S4.T1.2.1.6.5" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.2.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.2.1.1" style="font-size:80%;">PaliG</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.2.3.1" style="font-size:80%;">99.3K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.2.4.1" style="font-size:80%;">1892</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.2.5.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.2.6.1" style="font-size:80%;">52.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.3.1.1" style="font-size:80%;">OPT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.3.2.1" style="font-size:80%;">221.7K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.3.3.1" style="font-size:80%;">3895</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.3.4.1" style="font-size:80%;">10.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.3.5.1" style="font-size:80%;">56.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.4.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.4.1.1" style="font-size:80%;">LN Vic</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.4.2.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.4.3.1" style="font-size:80%;">162.4K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.4.4.1" style="font-size:80%;">3632</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.4.5.1" style="font-size:80%;">9.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.4.6.1" style="font-size:80%;">44.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.5.1.1" style="font-size:80%;">OPT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.5.2.1" style="font-size:80%;">252.0K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.5.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.5.3.1" style="font-size:80%;">4632</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.5.4.1" style="font-size:80%;">12.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.5.5.1" style="font-size:80%;">54.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.2.6.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.6.1.1" style="font-size:80%;">LN Mis</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.6.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.6.2.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.6.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.6.3.1" style="font-size:80%;">78.5K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.6.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.6.4.1" style="font-size:80%;">2001</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.6.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.6.5.1" style="font-size:80%;">5.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.6.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.6.6.1" style="font-size:80%;">39.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.7.1.1" style="font-size:80%;">OPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.7.2.1" style="font-size:80%;">133.8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.7.3.1" style="font-size:80%;">3229</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.7.4.1" style="font-size:80%;">8.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.7.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T1.2.7.5.1" style="font-size:80%;">41.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the DASH-B benchmark with the POPE benchmark for evaluating object hallucination in vision-language models.  DASH-B is a newly proposed benchmark in this paper. The table highlights that DASH-B is not saturated, unlike POPE, as indicated by significantly lower true negative rates (TNR).  A saturated benchmark means that the models already perform nearly perfectly on it, leaving little room for improvement or further distinguishing between models.  The lower TNR in DASH-B suggests it's a more challenging and informative benchmark for assessing the hallucination capabilities of vision-language models. More detailed results for this benchmark are provided in Table 6 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 3: Object Hallucination Benchmark DASH-B: Compared to POPE, DASH-B is not saturated as demonstrated by the substantially lower true negative rates (TNR). More results in Tab. 6.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S4.F5.12">
<tr class="ltx_tr" id="S4.F5.12.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="6" id="S4.F5.12.13.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F5.12.13.1.1">DASH-LLM<span class="ltx_text ltx_font_medium" id="S4.F5.12.13.1.1.1"> - Dam - 4 Clusters and 84 images</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.12.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.F5.12.14.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.12.14.1.1" style="font-size:80%;">Cluster Size: 45</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.F5.12.14.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.12.14.2.1" style="font-size:80%;">Cluster Size: 15</span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.1.1.1.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/0_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.2.2.2.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/0_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F5.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.3.3.3.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/0_2.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.4.4.4.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/3_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.5.5.5.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/3_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.6.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.6.6.6.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/3_2.jpg" width="52"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.12.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F5.12.15.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.12.15.1.1" style="font-size:80%;">Cluster Size: 13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="3" id="S4.F5.12.15.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.12.15.2.1" style="font-size:80%;">Cluster Size: 11</span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.7.7.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.7.7.1.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/1_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.8.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.8.8.2.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/1_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.F5.9.9.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.9.9.3.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/1_2.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.10.10.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.10.10.4.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/2_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.11.11.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.11.11.5.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/2_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.12.12.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.12.12.6.g1" src="extracted/6321901/images/all_clusters/lnv_llm/si_dam/2_2.jpg" width="52"/></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of fine-tuning the PaliGemma language model using the dataset created by the DASH method.  The fine-tuning process aimed to reduce false positive hallucinations (where the model incorrectly identifies objects not present in an image). The table compares the model's performance before and after fine-tuning on several benchmark datasets.  These benchmarks assess various aspects of vision-language model capabilities, including detecting hallucinations and the model's ability to provide accurate image captions. The key observation is that fine-tuning with the DASH dataset significantly improved the model's accuracy on DASH-B (a newly proposed benchmark), Amber Existence, and R-Bench, while showing only a minor negative impact on other benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 4: Fine-tuning on DASH: Our fine-tuning strategy improves performance on DASH-B, Amber Existence and R-Bench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S4.F5.42">
<tr class="ltx_tr" id="S4.F5.42.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="6" id="S4.F5.42.31.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.F5.42.31.1.1">DASH-OPT<span class="ltx_text ltx_font_medium" id="S4.F5.42.31.1.1.1"> - Dam - 10 Clusters and 186 Images</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.42.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.F5.42.32.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.32.1.1" style="font-size:80%;">Cluster Size: 57</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.F5.42.32.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.32.2.1" style="font-size:80%;">Cluster Size: 34</span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.18.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.13.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.13.1.1.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/0_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.14.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.14.2.2.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/0_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F5.15.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.15.3.3.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/0_2.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.16.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.16.4.4.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/5_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.17.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.17.5.5.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/5_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.18.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.18.6.6.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/5_2.jpg" width="52"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.42.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F5.42.33.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.33.1.1" style="font-size:80%;">Cluster Size: 24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="3" id="S4.F5.42.33.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.33.2.1" style="font-size:80%;">Cluster Size: 20</span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.24.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.19.7.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.19.7.1.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/3_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.20.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.20.8.2.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/3_4.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F5.21.9.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.21.9.3.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/3_8.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.22.10.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.22.10.4.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/9_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.23.11.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.23.11.5.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/9_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.24.12.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.24.12.6.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/9_2.jpg" width="52"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.42.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F5.42.34.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.34.1.1" style="font-size:80%;">Cluster Size: 17</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="S4.F5.42.34.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.34.2.1" style="font-size:80%;">Cluster Size: 10</span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.30.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.25.13.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.25.13.1.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/8_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.26.14.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.26.14.2.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/8_10.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F5.27.15.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.27.15.3.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/8_16.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.28.16.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.28.16.4.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/6_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.29.17.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.29.17.5.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/6_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.30.18.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.30.18.6.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/6_2.jpg" width="52"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.42.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F5.42.35.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.35.1.1" style="font-size:80%;">Cluster Size: 7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="3" id="S4.F5.42.35.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.35.2.1" style="font-size:80%;">Cluster Size: 6</span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.36.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.31.19.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.31.19.1.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/1_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.32.20.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.32.20.2.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/1_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F5.33.21.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.33.21.3.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/1_2.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.34.22.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.34.22.4.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/2_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.35.23.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.35.23.5.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/2_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F5.36.24.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.36.24.6.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/2_2.jpg" width="52"/></td>
</tr>
<tr class="ltx_tr" id="S4.F5.42.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F5.42.36.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.36.1.1" style="font-size:80%;">Cluster Size: 6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="3" id="S4.F5.42.36.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F5.42.36.2.1" style="font-size:80%;">Cluster Size: 5</span></td>
</tr>
<tr class="ltx_tr" id="S4.F5.42.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.37.25.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.37.25.1.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/11_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.38.26.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.38.26.2.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/11_2.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.F5.39.27.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.39.27.3.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/11_3.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.40.28.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.40.28.4.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/10_0.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.41.29.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.41.29.5.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/10_1.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F5.42.30.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F5.42.30.6.g1" src="extracted/6321901/images/all_clusters/lnv_opt/si_dam/10_2.jpg" width="52"/></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the Vision-Language Models (VLMs) used in the transfer experiments section of the paper.  For each VLM, it provides details about the Large Language Model (LLM) used as its backbone, the vision encoder employed, and the specific checkpoint or weights used in the experiments.  The information allows readers to reproduce the experiments and understand the specific configurations used for each VLM, facilitating a deeper analysis of the results.
> <details>
> <summary>read the caption</summary>
> Table 5: VLMs used for transfer experiments
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.2">
<tr class="ltx_tr" id="S4.T2.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1" style="font-size:80%;">VLM Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.2.1.2"><span class="ltx_text" id="S4.T2.2.1.2.1" style="font-size:80%;">PaliGemma</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.2.1.3"><span class="ltx_text" id="S4.T2.2.1.3.1" style="font-size:80%;">—LLaVA-NeXT—</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.2.1.4"><span class="ltx_text" id="S4.T2.2.1.4.1" style="font-size:80%;">—Prismatic—</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.2.1.5"><span class="ltx_text" id="S4.T2.2.1.5.1" style="font-size:80%;">—Qwen2-VL—</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.6"><span class="ltx_text" id="S4.T2.2.1.6.1" style="font-size:80%;">Llama 3.2-VL</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" colspan="2" id="S4.T2.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.1.1" style="font-size:80%;">Vision Encoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:80%;">SigLIP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.3"><span class="ltx_text" id="S4.T2.2.2.3.1" style="font-size:80%;">CLIP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.4"><span class="ltx_text" id="S4.T2.2.2.4.1" style="font-size:80%;">CLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.5"><span class="ltx_text" id="S4.T2.2.2.5.1" style="font-size:80%;">CLIP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6"><span class="ltx_text" id="S4.T2.2.2.6.1" style="font-size:80%;">CLIP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.7"><span class="ltx_text" id="S4.T2.2.2.7.1" style="font-size:80%;">SigLIP</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8"><span class="ltx_text" id="S4.T2.2.2.8.1" style="font-size:80%;">Custom</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.9"><span class="ltx_text" id="S4.T2.2.2.9.1" style="font-size:80%;">Custom</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10"><span class="ltx_text" id="S4.T2.2.2.10.1" style="font-size:80%;">Custom</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" colspan="2" id="S4.T2.2.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.3.1.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.3.2"><span class="ltx_text" id="S4.T2.2.3.2.1" style="font-size:80%;">Gemma</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.3"><span class="ltx_text" id="S4.T2.2.3.3.1" style="font-size:80%;">Vicuna</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.4"><span class="ltx_text" id="S4.T2.2.3.4.1" style="font-size:80%;">Mistral</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.3.5"><span class="ltx_text" id="S4.T2.2.3.5.1" style="font-size:80%;">Llama 3.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.6"><span class="ltx_text" id="S4.T2.2.3.6.1" style="font-size:80%;">Vicuna</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.3.7"><span class="ltx_text" id="S4.T2.2.3.7.1" style="font-size:80%;">Vicuna</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.8"><span class="ltx_text" id="S4.T2.2.3.8.1" style="font-size:80%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.3.9"><span class="ltx_text" id="S4.T2.2.3.9.1" style="font-size:80%;">Qwen2-72B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.10"><span class="ltx_text" id="S4.T2.2.3.10.1" style="font-size:80%;">Llama 3.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.4.1" rowspan="2"><span class="ltx_text" id="S4.T2.2.4.1.1" style="font-size:80%;">PaliG</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.4.2"><span class="ltx_text" id="S4.T2.2.4.2.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.4.3"><span class="ltx_text" id="S4.T2.2.4.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4"><span class="ltx_text" id="S4.T2.2.4.4.1" style="font-size:80%;">0.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.5"><span class="ltx_text" id="S4.T2.2.4.5.1" style="font-size:80%;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.4.6"><span class="ltx_text" id="S4.T2.2.4.6.1" style="font-size:80%;">0.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.7"><span class="ltx_text" id="S4.T2.2.4.7.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.4.8"><span class="ltx_text" id="S4.T2.2.4.8.1" style="font-size:80%;">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.9"><span class="ltx_text" id="S4.T2.2.4.9.1" style="font-size:80%;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.4.10"><span class="ltx_text" id="S4.T2.2.4.10.1" style="font-size:80%;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.11"><span class="ltx_text" id="S4.T2.2.4.11.1" style="font-size:80%;">0.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.5.1"><span class="ltx_text" id="S4.T2.2.5.1.1" style="font-size:80%;">OPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.5.2"><span class="ltx_text" id="S4.T2.2.5.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.3"><span class="ltx_text" id="S4.T2.2.5.3.1" style="font-size:80%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4"><span class="ltx_text" id="S4.T2.2.5.4.1" style="font-size:80%;">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.5.5"><span class="ltx_text" id="S4.T2.2.5.5.1" style="font-size:80%;">0.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.6"><span class="ltx_text" id="S4.T2.2.5.6.1" style="font-size:80%;">0.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.5.7"><span class="ltx_text" id="S4.T2.2.5.7.1" style="font-size:80%;">0.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.8"><span class="ltx_text" id="S4.T2.2.5.8.1" style="font-size:80%;">0.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.5.9"><span class="ltx_text" id="S4.T2.2.5.9.1" style="font-size:80%;">0.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.10"><span class="ltx_text" id="S4.T2.2.5.10.1" style="font-size:80%;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.6.1" rowspan="2"><span class="ltx_text" id="S4.T2.2.6.1.1" style="font-size:80%;">LN Vic</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.6.2"><span class="ltx_text" id="S4.T2.2.6.2.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.6.3"><span class="ltx_text" id="S4.T2.2.6.3.1" style="font-size:80%;">0.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.4"><span class="ltx_text" id="S4.T2.2.6.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.5"><span class="ltx_text" id="S4.T2.2.6.5.1" style="font-size:80%;">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.6.6"><span class="ltx_text" id="S4.T2.2.6.6.1" style="font-size:80%;">0.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.7"><span class="ltx_text" id="S4.T2.2.6.7.1" style="font-size:80%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.6.8"><span class="ltx_text" id="S4.T2.2.6.8.1" style="font-size:80%;">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.9"><span class="ltx_text" id="S4.T2.2.6.9.1" style="font-size:80%;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.6.10"><span class="ltx_text" id="S4.T2.2.6.10.1" style="font-size:80%;">0.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.11"><span class="ltx_text" id="S4.T2.2.6.11.1" style="font-size:80%;">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.7.1"><span class="ltx_text" id="S4.T2.2.7.1.1" style="font-size:80%;">OPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.7.2"><span class="ltx_text" id="S4.T2.2.7.2.1" style="font-size:80%;">0.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.3"><span class="ltx_text" id="S4.T2.2.7.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.4"><span class="ltx_text" id="S4.T2.2.7.4.1" style="font-size:80%;">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.7.5"><span class="ltx_text" id="S4.T2.2.7.5.1" style="font-size:80%;">0.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.6"><span class="ltx_text" id="S4.T2.2.7.6.1" style="font-size:80%;">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.7.7"><span class="ltx_text" id="S4.T2.2.7.7.1" style="font-size:80%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.8"><span class="ltx_text" id="S4.T2.2.7.8.1" style="font-size:80%;">0.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.7.9"><span class="ltx_text" id="S4.T2.2.7.9.1" style="font-size:80%;">0.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.10"><span class="ltx_text" id="S4.T2.2.7.10.1" style="font-size:80%;">0.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.8.1" rowspan="2"><span class="ltx_text" id="S4.T2.2.8.1.1" style="font-size:80%;">LN Mis</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.8.2"><span class="ltx_text" id="S4.T2.2.8.2.1" style="font-size:80%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.8.3"><span class="ltx_text" id="S4.T2.2.8.3.1" style="font-size:80%;">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.8.4"><span class="ltx_text" id="S4.T2.2.8.4.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.8.5"><span class="ltx_text" id="S4.T2.2.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.8.6"><span class="ltx_text" id="S4.T2.2.8.6.1" style="font-size:80%;">0.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.8.7"><span class="ltx_text" id="S4.T2.2.8.7.1" style="font-size:80%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.8.8"><span class="ltx_text" id="S4.T2.2.8.8.1" style="font-size:80%;">0.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.8.9"><span class="ltx_text" id="S4.T2.2.8.9.1" style="font-size:80%;">0.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.8.10"><span class="ltx_text" id="S4.T2.2.8.10.1" style="font-size:80%;">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.8.11"><span class="ltx_text" id="S4.T2.2.8.11.1" style="font-size:80%;">0.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.9.1"><span class="ltx_text" id="S4.T2.2.9.1.1" style="font-size:80%;">OPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.9.2"><span class="ltx_text" id="S4.T2.2.9.2.1" style="font-size:80%;">0.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.3"><span class="ltx_text" id="S4.T2.2.9.3.1" style="font-size:80%;">0.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.4"><span class="ltx_text" id="S4.T2.2.9.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.9.5"><span class="ltx_text" id="S4.T2.2.9.5.1" style="font-size:80%;">0.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.6"><span class="ltx_text" id="S4.T2.2.9.6.1" style="font-size:80%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.9.7"><span class="ltx_text" id="S4.T2.2.9.7.1" style="font-size:80%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.8"><span class="ltx_text" id="S4.T2.2.9.8.1" style="font-size:80%;">0.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.9.9"><span class="ltx_text" id="S4.T2.2.9.9.1" style="font-size:80%;">0.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.10"><span class="ltx_text" id="S4.T2.2.9.10.1" style="font-size:80%;">0.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" colspan="2" id="S4.T2.2.10.1"><span class="ltx_text" id="S4.T2.2.10.1.1" style="font-size:80%;">Average transfer</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.10.2"><span class="ltx_text" id="S4.T2.2.10.2.1" style="font-size:80%;">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.10.3"><span class="ltx_text" id="S4.T2.2.10.3.1" style="font-size:80%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.10.4"><span class="ltx_text" id="S4.T2.2.10.4.1" style="font-size:80%;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.10.5"><span class="ltx_text" id="S4.T2.2.10.5.1" style="font-size:80%;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.10.6"><span class="ltx_text" id="S4.T2.2.10.6.1" style="font-size:80%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.10.7"><span class="ltx_text" id="S4.T2.2.10.7.1" style="font-size:80%;">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.10.8"><span class="ltx_text" id="S4.T2.2.10.8.1" style="font-size:80%;">0.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.10.9"><span class="ltx_text" id="S4.T2.2.10.9.1" style="font-size:80%;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.10.10"><span class="ltx_text" id="S4.T2.2.10.10.1" style="font-size:80%;">0.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.2.11.1"><span class="ltx_text" id="S4.T2.2.11.1.1" style="font-size:80%;">TPR-ICO</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T2.2.11.2"><span class="ltx_text" id="S4.T2.2.11.2.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T2.2.11.3"><span class="ltx_text" id="S4.T2.2.11.3.1" style="font-size:80%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T2.2.11.4"><span class="ltx_text" id="S4.T2.2.11.4.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T2.2.11.5"><span class="ltx_text" id="S4.T2.2.11.5.1" style="font-size:80%;">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T2.2.11.6"><span class="ltx_text" id="S4.T2.2.11.6.1" style="font-size:80%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T2.2.11.7"><span class="ltx_text" id="S4.T2.2.11.7.1" style="font-size:80%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T2.2.11.8"><span class="ltx_text" id="S4.T2.2.11.8.1" style="font-size:80%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T2.2.11.9"><span class="ltx_text" id="S4.T2.2.11.9.1" style="font-size:80%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T2.2.11.10"><span class="ltx_text" id="S4.T2.2.11.10.1" style="font-size:80%;">0.80</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the performance of various Vision-Language Models (VLMs) on two object hallucination benchmarks: POPE and DASH-B.  For each VLM, the table shows the accuracy, true negative rate (TNR), true positive rate (TPR), and the harmonic mean (HM) of TNR and TPR.  Accuracy represents the overall performance, balancing the model's ability to correctly identify the absence and presence of objects. TNR and TPR offer a more granular view of the model's performance in terms of correctly identifying the absence and presence of objects, respectively. The harmonic mean provides a balanced measure by considering both rates.  It's important to note that three of the models (PaliGemma-3B, LLaVA-NeXT Vicuna, and LLaVA-NeXT Mistral) were used in the creation of the DASH-B benchmark, potentially introducing bias into the results for those models.
> <details>
> <summary>read the caption</summary>
> Table 6: DASH-B: We report accuracy (for POPE and DASH-B) as well as the true negative rate (TNR), true positive positive rate (TPR), and the harmonic mean of TNR and TPR (HM). While the accuracy reflects the detection-hallucination trade-off, the individual values of TNR and TPR can give further insides into the vulnerability to FP-hallucinations. Note that PaliGemma-3B, LN Vicuna, and LN Mistral were used in the creation of the benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.F6.18">
<tr class="ltx_tr" id="S4.F6.18.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.F6.18.19.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F6.18.19.1.1" style="font-size:80%;">coil spring</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="3" id="S4.F6.18.19.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F6.18.19.2.1" style="font-size:80%;">shipping box</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.1.1.1.g1" src="extracted/6321901/images/fp_4o_mini/coil_spring/2242121161.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.2.2.2.g1" src="extracted/6321901/images/fp_4o_mini/coil_spring/3939397236.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F6.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.3.3.3.g1" src="extracted/6321901/images/fp_4o_mini/coil_spring/4118087331.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.4.4.4.g1" src="extracted/6321901/images/fp_4o_mini/shipping_box/1265012265.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.5.5.5.g1" src="extracted/6321901/images/fp_4o_mini/shipping_box/2225337055.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.6.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.6.6.6.g1" src="extracted/6321901/images/fp_4o_mini/shipping_box/893798705.jpg" width="52"/></td>
</tr>
<tr class="ltx_tr" id="S4.F6.18.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F6.18.20.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F6.18.20.1.1" style="font-size:80%;">balance beam</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="S4.F6.18.20.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F6.18.20.2.1" style="font-size:80%;">vase</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.7.7.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.7.7.1.g1" src="extracted/6321901/images/fp_4o_mini/balance_beam/1422166611.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.8.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.8.8.2.g1" src="extracted/6321901/images/fp_4o_mini/balance_beam/2577365777.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.F6.9.9.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.9.9.3.g1" src="extracted/6321901/images/fp_4o_mini/balance_beam/94850992.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.10.10.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.10.10.4.g1" src="extracted/6321901/images/fp_4o_mini/vase/3322621943.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.11.11.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.11.11.5.g1" src="extracted/6321901/images/fp_4o_mini/vase/4761778007.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.F6.12.12.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.12.12.6.g1" src="extracted/6321901/images/fp_4o_mini/vase/769529087.jpg" width="52"/></td>
</tr>
<tr class="ltx_tr" id="S4.F6.18.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="3" id="S4.F6.18.21.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F6.18.21.1.1" style="font-size:80%;">watch</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="S4.F6.18.21.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.F6.18.21.2.1" style="font-size:80%;">postcard</span></td>
</tr>
<tr class="ltx_tr" id="S4.F6.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F6.13.13.1" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.13.13.1.g1" src="extracted/6321901/images/fp_4o_mini/watch/1700365645.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F6.14.14.2" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.14.14.2.g1" src="extracted/6321901/images/fp_4o_mini/watch/2386584459.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.F6.15.15.3" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.15.15.3.g1" src="extracted/6321901/images/fp_4o_mini/watch/3585285242.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F6.16.16.4" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.16.16.4.g1" src="extracted/6321901/images/fp_4o_mini/postcard/1012921416.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F6.17.17.5" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.17.17.5.g1" src="extracted/6321901/images/fp_4o_mini/postcard/3892044790.jpg" width="52"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.F6.18.18.6" style="padding-left:1.0pt;padding-right:1.0pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="52" id="S4.F6.18.18.6.g1" src="extracted/6321901/images/fp_4o_mini/postcard/5180324251.jpg" width="52"/></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for fine-tuning the PaliGemma model.  The hyperparameters shown are the optimizer used (Adam), the beta1 and beta2 values for the Adam optimizer, the learning rate, the number of epochs used for training, the batch size used during training, and the rank of the LoRA (Low-Rank Adaptation) used for efficient parameter updates.
> <details>
> <summary>read the caption</summary>
> Table 7: Fine-tuning hyperparameters
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.10">
<tr class="ltx_tr" id="S4.T3.10.11">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.10.11.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.11.1.1" style="font-size:80%;">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.10.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.10.11.2.1" style="font-size:80%;">PaliG2-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.10.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.10.11.3.1" style="font-size:80%;">Ovis2-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.10.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.10.11.4.1" style="font-size:80%;">LLaVa-OneVision</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.10.11.5.1" style="font-size:80%;">4o-mini</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T3.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.4.4.5.1" style="font-size:80%;">DASH-B Acc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="68.9\%" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mn id="S4.T3.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T3.1.1.1.m1.1.1.2.cmml">68.9</mn><mo id="S4.T3.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.T3.1.1.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1.1">percent</csymbol><cn id="S4.T3.1.1.1.m1.1.1.2.cmml" type="float" xref="S4.T3.1.1.1.m1.1.1.2">68.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">68.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">68.9 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="71.4\%" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mrow id="S4.T3.2.2.2.m1.1.1" xref="S4.T3.2.2.2.m1.1.1.cmml"><mn id="S4.T3.2.2.2.m1.1.1.2" mathsize="80%" xref="S4.T3.2.2.2.m1.1.1.2.cmml">71.4</mn><mo id="S4.T3.2.2.2.m1.1.1.1" mathsize="80%" xref="S4.T3.2.2.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1.1">percent</csymbol><cn id="S4.T3.2.2.2.m1.1.1.2.cmml" type="float" xref="S4.T3.2.2.2.m1.1.1.2">71.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">71.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">71.4 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="75.1\%" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mrow id="S4.T3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.m1.1.1.cmml"><mn id="S4.T3.3.3.3.m1.1.1.2" mathsize="80%" xref="S4.T3.3.3.3.m1.1.1.2.cmml">75.1</mn><mo id="S4.T3.3.3.3.m1.1.1.1" mathsize="80%" xref="S4.T3.3.3.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><apply id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1"><csymbol cd="latexml" id="S4.T3.3.3.3.m1.1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1.1">percent</csymbol><cn id="S4.T3.3.3.3.m1.1.1.2.cmml" type="float" xref="S4.T3.3.3.3.m1.1.1.2">75.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">75.1\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">75.1 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="86.3\%" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><mrow id="S4.T3.4.4.4.m1.1.1" xref="S4.T3.4.4.4.m1.1.1.cmml"><mn id="S4.T3.4.4.4.m1.1.1.2" mathsize="80%" xref="S4.T3.4.4.4.m1.1.1.2.cmml">86.3</mn><mo id="S4.T3.4.4.4.m1.1.1.1" mathsize="80%" xref="S4.T3.4.4.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><apply id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1"><csymbol cd="latexml" id="S4.T3.4.4.4.m1.1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1.1">percent</csymbol><cn id="S4.T3.4.4.4.m1.1.1.2.cmml" type="float" xref="S4.T3.4.4.4.m1.1.1.2">86.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">86.3\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">86.3 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T3.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.7.7.4.1" style="font-size:80%;">DASH-B TNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="40.9\%" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><mrow id="S4.T3.5.5.1.m1.1.1" xref="S4.T3.5.5.1.m1.1.1.cmml"><mn id="S4.T3.5.5.1.m1.1.1.2" mathsize="80%" xref="S4.T3.5.5.1.m1.1.1.2.cmml">40.9</mn><mo id="S4.T3.5.5.1.m1.1.1.1" mathsize="80%" xref="S4.T3.5.5.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><apply id="S4.T3.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.5.5.1.m1.1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1.1">percent</csymbol><cn id="S4.T3.5.5.1.m1.1.1.2.cmml" type="float" xref="S4.T3.5.5.1.m1.1.1.2">40.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">40.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">40.9 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="44.8\%" class="ltx_Math" display="inline" id="S4.T3.6.6.2.m1.1"><semantics id="S4.T3.6.6.2.m1.1a"><mrow id="S4.T3.6.6.2.m1.1.1" xref="S4.T3.6.6.2.m1.1.1.cmml"><mn id="S4.T3.6.6.2.m1.1.1.2" mathsize="80%" xref="S4.T3.6.6.2.m1.1.1.2.cmml">44.8</mn><mo id="S4.T3.6.6.2.m1.1.1.1" mathsize="80%" xref="S4.T3.6.6.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.2.m1.1b"><apply id="S4.T3.6.6.2.m1.1.1.cmml" xref="S4.T3.6.6.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.6.6.2.m1.1.1.1.cmml" xref="S4.T3.6.6.2.m1.1.1.1">percent</csymbol><cn id="S4.T3.6.6.2.m1.1.1.2.cmml" type="float" xref="S4.T3.6.6.2.m1.1.1.2">44.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.2.m1.1c">44.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.2.m1.1d">44.8 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="60.1\%" class="ltx_Math" display="inline" id="S4.T3.7.7.3.m1.1"><semantics id="S4.T3.7.7.3.m1.1a"><mrow id="S4.T3.7.7.3.m1.1.1" xref="S4.T3.7.7.3.m1.1.1.cmml"><mn id="S4.T3.7.7.3.m1.1.1.2" mathsize="80%" xref="S4.T3.7.7.3.m1.1.1.2.cmml">60.1</mn><mo id="S4.T3.7.7.3.m1.1.1.1" mathsize="80%" xref="S4.T3.7.7.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.3.m1.1b"><apply id="S4.T3.7.7.3.m1.1.1.cmml" xref="S4.T3.7.7.3.m1.1.1"><csymbol cd="latexml" id="S4.T3.7.7.3.m1.1.1.1.cmml" xref="S4.T3.7.7.3.m1.1.1.1">percent</csymbol><cn id="S4.T3.7.7.3.m1.1.1.2.cmml" type="float" xref="S4.T3.7.7.3.m1.1.1.2">60.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.3.m1.1c">60.1\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.3.m1.1d">60.1 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.7.7.5.1" style="font-size:80%;">76.7%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T3.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T3.10.10.4.1" style="font-size:80%;">POPE TNR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="97.3\%" class="ltx_Math" display="inline" id="S4.T3.8.8.1.m1.1"><semantics id="S4.T3.8.8.1.m1.1a"><mrow id="S4.T3.8.8.1.m1.1.1" xref="S4.T3.8.8.1.m1.1.1.cmml"><mn id="S4.T3.8.8.1.m1.1.1.2" mathsize="80%" xref="S4.T3.8.8.1.m1.1.1.2.cmml">97.3</mn><mo id="S4.T3.8.8.1.m1.1.1.1" mathsize="80%" xref="S4.T3.8.8.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.1.m1.1b"><apply id="S4.T3.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.8.8.1.m1.1.1.1.cmml" xref="S4.T3.8.8.1.m1.1.1.1">percent</csymbol><cn id="S4.T3.8.8.1.m1.1.1.2.cmml" type="float" xref="S4.T3.8.8.1.m1.1.1.2">97.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.1.m1.1c">97.3\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.1.m1.1d">97.3 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="94.9\%" class="ltx_Math" display="inline" id="S4.T3.9.9.2.m1.1"><semantics id="S4.T3.9.9.2.m1.1a"><mrow id="S4.T3.9.9.2.m1.1.1" xref="S4.T3.9.9.2.m1.1.1.cmml"><mn id="S4.T3.9.9.2.m1.1.1.2" mathsize="80%" xref="S4.T3.9.9.2.m1.1.1.2.cmml">94.9</mn><mo id="S4.T3.9.9.2.m1.1.1.1" mathsize="80%" xref="S4.T3.9.9.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.2.m1.1b"><apply id="S4.T3.9.9.2.m1.1.1.cmml" xref="S4.T3.9.9.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.9.9.2.m1.1.1.1.cmml" xref="S4.T3.9.9.2.m1.1.1.1">percent</csymbol><cn id="S4.T3.9.9.2.m1.1.1.2.cmml" type="float" xref="S4.T3.9.9.2.m1.1.1.2">94.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.2.m1.1c">94.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.2.m1.1d">94.9 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="95.8\%" class="ltx_Math" display="inline" id="S4.T3.10.10.3.m1.1"><semantics id="S4.T3.10.10.3.m1.1a"><mrow id="S4.T3.10.10.3.m1.1.1" xref="S4.T3.10.10.3.m1.1.1.cmml"><mn id="S4.T3.10.10.3.m1.1.1.2" mathsize="80%" xref="S4.T3.10.10.3.m1.1.1.2.cmml">95.8</mn><mo id="S4.T3.10.10.3.m1.1.1.1" mathsize="80%" xref="S4.T3.10.10.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.3.m1.1b"><apply id="S4.T3.10.10.3.m1.1.1.cmml" xref="S4.T3.10.10.3.m1.1.1"><csymbol cd="latexml" id="S4.T3.10.10.3.m1.1.1.1.cmml" xref="S4.T3.10.10.3.m1.1.1.1">percent</csymbol><cn id="S4.T3.10.10.3.m1.1.1.2.cmml" type="float" xref="S4.T3.10.10.3.m1.1.1.2">95.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.3.m1.1c">95.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.3.m1.1d">95.8 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T3.10.10.5.1" style="font-size:80%;">-</span><span class="ltx_note ltx_role_footnote" id="footnotex2"><sup class="ltx_note_mark">2</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">2</sup><span class="ltx_tag ltx_tag_note">2</span><span class="ltx_text" id="footnotex2.1" style="font-size:80%;">In our POPE evaluation, GPT-4o-mini only provided valid replies for </span><math alttext="77.5\%" class="ltx_Math" display="inline" id="footnotex3.m1a.1"><semantics id="footnotex3.m1a.1b"><mrow id="footnotex3.m1a.1.1" xref="footnotex3.m1a.1.1.cmml"><mn id="footnotex3.m1a.1.1.2" xref="footnotex3.m1a.1.1.2.cmml">77.5</mn><mo id="footnotex3.m1a.1.1.1" xref="footnotex3.m1a.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="footnotex3.m1a.1c"><apply id="footnotex3.m1a.1.1.cmml" xref="footnotex3.m1a.1.1"><csymbol cd="latexml" id="footnotex3.m1a.1.1.1.cmml" xref="footnotex3.m1a.1.1.1">percent</csymbol><cn id="footnotex3.m1a.1.1.2.cmml" type="float" xref="footnotex3.m1a.1.1.2">77.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="footnotex3.m1a.1d">77.5\%</annotation><annotation encoding="application/x-llamapun" id="footnotex3.m1a.1e">77.5 %</annotation></semantics></math><span class="ltx_text" id="footnotex2.2" style="font-size:80%;"> of the images and achieved a TNR of </span><math alttext="92.7\%" class="ltx_Math" display="inline" id="footnotex3.m2a.1"><semantics id="footnotex3.m2a.1b"><mrow id="footnotex3.m2a.1.1" xref="footnotex3.m2a.1.1.cmml"><mn id="footnotex3.m2a.1.1.2" xref="footnotex3.m2a.1.1.2.cmml">92.7</mn><mo id="footnotex3.m2a.1.1.1" xref="footnotex3.m2a.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="footnotex3.m2a.1c"><apply id="footnotex3.m2a.1.1.cmml" xref="footnotex3.m2a.1.1"><csymbol cd="latexml" id="footnotex3.m2a.1.1.1.cmml" xref="footnotex3.m2a.1.1.1">percent</csymbol><cn id="footnotex3.m2a.1.1.2.cmml" type="float" xref="footnotex3.m2a.1.1.2">92.7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="footnotex3.m2a.1d">92.7\%</annotation><annotation encoding="application/x-llamapun" id="footnotex3.m2a.1e">92.7 %</annotation></semantics></math><span class="ltx_text" id="footnotex2.3" style="font-size:80%;"> among those.</span></span></span></span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance evaluation results of a fine-tuned vision-language model (VLM) on various tasks.  The model was fine-tuned using a large-scale dataset of images ('DASH') designed to identify systematic hallucinations in VLMs. The metrics include the accuracy on a validation set of images (not seen during training), the accuracy on several established benchmarks for evaluating object hallucinations (Amber Existence, R-Bench), and the true positive rate (TPR) on positive samples from ImageNet, COCO, and Objects365.  The table also shows the effect of fine-tuning on more general tasks such as Visual Question Answering (VQA) and image captioning.  A key observation is the improvement in robustness against hallucinations after fine-tuning, even for unseen data, although some performance trade-offs are observed in other tasks. The impact of the source of positive samples (retrieved vs. original dataset) is also explored, highlighting the influence of data bias on fine-tuning results.
> <details>
> <summary>read the caption</summary>
> Table 8: Accuracies on our Validation set, Amber Existence, and R-Bench and TPR on positive samples from the validation sets of ImageNet, COCO and OpenImages. Fine-tuning on DASH results (+ftp⁢r⁢esubscriptft𝑝𝑟𝑒\text{ft}_{pre}ft start_POSTSUBSCRIPT italic_p italic_r italic_e end_POSTSUBSCRIPT) can improve robustness against hallucinations significantly, even on clusters not seen during training. It also improves on related hallucination benchmarks while the performance on more general VQA and captioning tasks becomes slightly worse. The reduction in TPR-ICO is caused by the retrieved positive samples for Objects365. After replacing these with images (+ft) from the original training set of Objects365, the fine-tuning even improves average TPR-ICO.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.12">
<tr class="ltx_tr" id="S4.T4.12.13">
<td class="ltx_td ltx_border_rr" id="S4.T4.12.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.12.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.12.13.2.1" style="font-size:80%;">DASH-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.12.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.12.13.3.1" style="font-size:80%;">Amber Ex.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.12.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.12.13.4.1" style="font-size:80%;">R-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T4.12.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.12.13.5.1" style="font-size:80%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.12.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.12.13.6.1" style="font-size:80%;">Caption</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.12.13.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.12.13.7.1" style="font-size:80%;">VQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T4.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.6.6.7.1" style="font-size:80%;">PaliG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="56.4\%" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mrow id="S4.T4.1.1.1.m1.1.1" xref="S4.T4.1.1.1.m1.1.1.cmml"><mn id="S4.T4.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T4.1.1.1.m1.1.1.2.cmml">56.4</mn><mo id="S4.T4.1.1.1.m1.1.1.1" mathsize="80%" xref="S4.T4.1.1.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1"><csymbol cd="latexml" id="S4.T4.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1.1">percent</csymbol><cn id="S4.T4.1.1.1.m1.1.1.2.cmml" type="float" xref="S4.T4.1.1.1.m1.1.1.2">56.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">56.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">56.4 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="93.2\%" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mrow id="S4.T4.2.2.2.m1.1.1" xref="S4.T4.2.2.2.m1.1.1.cmml"><mn id="S4.T4.2.2.2.m1.1.1.2" mathsize="80%" xref="S4.T4.2.2.2.m1.1.1.2.cmml">93.2</mn><mo id="S4.T4.2.2.2.m1.1.1.1" mathsize="80%" xref="S4.T4.2.2.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><apply id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1"><csymbol cd="latexml" id="S4.T4.2.2.2.m1.1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1.1">percent</csymbol><cn id="S4.T4.2.2.2.m1.1.1.2.cmml" type="float" xref="S4.T4.2.2.2.m1.1.1.2">93.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">93.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">93.2 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="79.9\%" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mrow id="S4.T4.3.3.3.m1.1.1" xref="S4.T4.3.3.3.m1.1.1.cmml"><mn id="S4.T4.3.3.3.m1.1.1.2" mathsize="80%" xref="S4.T4.3.3.3.m1.1.1.2.cmml">79.9</mn><mo id="S4.T4.3.3.3.m1.1.1.1" mathsize="80%" xref="S4.T4.3.3.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><apply id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1"><csymbol cd="latexml" id="S4.T4.3.3.3.m1.1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1.1">percent</csymbol><cn id="S4.T4.3.3.3.m1.1.1.2.cmml" type="float" xref="S4.T4.3.3.3.m1.1.1.2">79.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">79.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">79.9 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{87.2\%}" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mrow id="S4.T4.4.4.4.m1.1.1" xref="S4.T4.4.4.4.m1.1.1.cmml"><mn class="ltx_mathvariant_bold" id="S4.T4.4.4.4.m1.1.1.2" mathsize="80%" mathvariant="bold" xref="S4.T4.4.4.4.m1.1.1.2.cmml">87.2</mn><mo id="S4.T4.4.4.4.m1.1.1.1" mathsize="80%" xref="S4.T4.4.4.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><apply id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1"><csymbol cd="latexml" id="S4.T4.4.4.4.m1.1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1.1">percent</csymbol><cn id="S4.T4.4.4.4.m1.1.1.2.cmml" type="float" xref="S4.T4.4.4.4.m1.1.1.2">87.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\mathbf{87.2\%}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">bold_87.2 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{101.0}" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><mn class="ltx_mathvariant_bold" id="S4.T4.5.5.5.m1.1.1" mathsize="80%" mathvariant="bold" xref="S4.T4.5.5.5.m1.1.1.cmml">101.0</mn><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><cn id="S4.T4.5.5.5.m1.1.1.cmml" type="float" xref="S4.T4.5.5.5.m1.1.1">101.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">\mathbf{101.0}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">bold_101.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{70.4\%}" class="ltx_Math" display="inline" id="S4.T4.6.6.6.m1.1"><semantics id="S4.T4.6.6.6.m1.1a"><mrow id="S4.T4.6.6.6.m1.1.1" xref="S4.T4.6.6.6.m1.1.1.cmml"><mn class="ltx_mathvariant_bold" id="S4.T4.6.6.6.m1.1.1.2" mathsize="80%" mathvariant="bold" xref="S4.T4.6.6.6.m1.1.1.2.cmml">70.4</mn><mo id="S4.T4.6.6.6.m1.1.1.1" mathsize="80%" xref="S4.T4.6.6.6.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.m1.1b"><apply id="S4.T4.6.6.6.m1.1.1.cmml" xref="S4.T4.6.6.6.m1.1.1"><csymbol cd="latexml" id="S4.T4.6.6.6.m1.1.1.1.cmml" xref="S4.T4.6.6.6.m1.1.1.1">percent</csymbol><cn id="S4.T4.6.6.6.m1.1.1.2.cmml" type="float" xref="S4.T4.6.6.6.m1.1.1.2">70.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.m1.1c">\mathbf{70.4\%}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.m1.1d">bold_70.4 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.12.12">
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T4.12.12.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.12.12.7.1" style="font-size:80%;">+ft</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{68.0\%}" class="ltx_Math" display="inline" id="S4.T4.7.7.1.m1.1"><semantics id="S4.T4.7.7.1.m1.1a"><mrow id="S4.T4.7.7.1.m1.1.1" xref="S4.T4.7.7.1.m1.1.1.cmml"><mn class="ltx_mathvariant_bold" id="S4.T4.7.7.1.m1.1.1.2" mathsize="80%" mathvariant="bold" xref="S4.T4.7.7.1.m1.1.1.2.cmml">68.0</mn><mo id="S4.T4.7.7.1.m1.1.1.1" mathsize="80%" xref="S4.T4.7.7.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.1.m1.1b"><apply id="S4.T4.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.1.m1.1.1"><csymbol cd="latexml" id="S4.T4.7.7.1.m1.1.1.1.cmml" xref="S4.T4.7.7.1.m1.1.1.1">percent</csymbol><cn id="S4.T4.7.7.1.m1.1.1.2.cmml" type="float" xref="S4.T4.7.7.1.m1.1.1.2">68.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.1.m1.1c">\mathbf{68.0\%}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.1.m1.1d">bold_68.0 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{95.4\%}" class="ltx_Math" display="inline" id="S4.T4.8.8.2.m1.1"><semantics id="S4.T4.8.8.2.m1.1a"><mrow id="S4.T4.8.8.2.m1.1.1" xref="S4.T4.8.8.2.m1.1.1.cmml"><mn class="ltx_mathvariant_bold" id="S4.T4.8.8.2.m1.1.1.2" mathsize="80%" mathvariant="bold" xref="S4.T4.8.8.2.m1.1.1.2.cmml">95.4</mn><mo id="S4.T4.8.8.2.m1.1.1.1" mathsize="80%" xref="S4.T4.8.8.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.2.m1.1b"><apply id="S4.T4.8.8.2.m1.1.1.cmml" xref="S4.T4.8.8.2.m1.1.1"><csymbol cd="latexml" id="S4.T4.8.8.2.m1.1.1.1.cmml" xref="S4.T4.8.8.2.m1.1.1.1">percent</csymbol><cn id="S4.T4.8.8.2.m1.1.1.2.cmml" type="float" xref="S4.T4.8.8.2.m1.1.1.2">95.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.2.m1.1c">\mathbf{95.4\%}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.2.m1.1d">bold_95.4 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\mathbf{80.2\%}" class="ltx_Math" display="inline" id="S4.T4.9.9.3.m1.1"><semantics id="S4.T4.9.9.3.m1.1a"><mrow id="S4.T4.9.9.3.m1.1.1" xref="S4.T4.9.9.3.m1.1.1.cmml"><mn class="ltx_mathvariant_bold" id="S4.T4.9.9.3.m1.1.1.2" mathsize="80%" mathvariant="bold" xref="S4.T4.9.9.3.m1.1.1.2.cmml">80.2</mn><mo id="S4.T4.9.9.3.m1.1.1.1" mathsize="80%" xref="S4.T4.9.9.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.3.m1.1b"><apply id="S4.T4.9.9.3.m1.1.1.cmml" xref="S4.T4.9.9.3.m1.1.1"><csymbol cd="latexml" id="S4.T4.9.9.3.m1.1.1.1.cmml" xref="S4.T4.9.9.3.m1.1.1.1">percent</csymbol><cn id="S4.T4.9.9.3.m1.1.1.2.cmml" type="float" xref="S4.T4.9.9.3.m1.1.1.2">80.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.3.m1.1c">\mathbf{80.2\%}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.3.m1.1d">bold_80.2 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T4.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="86.4\%" class="ltx_Math" display="inline" id="S4.T4.10.10.4.m1.1"><semantics id="S4.T4.10.10.4.m1.1a"><mrow id="S4.T4.10.10.4.m1.1.1" xref="S4.T4.10.10.4.m1.1.1.cmml"><mn id="S4.T4.10.10.4.m1.1.1.2" mathsize="80%" xref="S4.T4.10.10.4.m1.1.1.2.cmml">86.4</mn><mo id="S4.T4.10.10.4.m1.1.1.1" mathsize="80%" xref="S4.T4.10.10.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.4.m1.1b"><apply id="S4.T4.10.10.4.m1.1.1.cmml" xref="S4.T4.10.10.4.m1.1.1"><csymbol cd="latexml" id="S4.T4.10.10.4.m1.1.1.1.cmml" xref="S4.T4.10.10.4.m1.1.1.1">percent</csymbol><cn id="S4.T4.10.10.4.m1.1.1.2.cmml" type="float" xref="S4.T4.10.10.4.m1.1.1.2">86.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.4.m1.1c">86.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.4.m1.1d">86.4 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="99.2" class="ltx_Math" display="inline" id="S4.T4.11.11.5.m1.1"><semantics id="S4.T4.11.11.5.m1.1a"><mn id="S4.T4.11.11.5.m1.1.1" mathsize="80%" xref="S4.T4.11.11.5.m1.1.1.cmml">99.2</mn><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.5.m1.1b"><cn id="S4.T4.11.11.5.m1.1.1.cmml" type="float" xref="S4.T4.11.11.5.m1.1.1">99.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.5.m1.1c">99.2</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.5.m1.1d">99.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="69.5\%" class="ltx_Math" display="inline" id="S4.T4.12.12.6.m1.1"><semantics id="S4.T4.12.12.6.m1.1a"><mrow id="S4.T4.12.12.6.m1.1.1" xref="S4.T4.12.12.6.m1.1.1.cmml"><mn id="S4.T4.12.12.6.m1.1.1.2" mathsize="80%" xref="S4.T4.12.12.6.m1.1.1.2.cmml">69.5</mn><mo id="S4.T4.12.12.6.m1.1.1.1" mathsize="80%" xref="S4.T4.12.12.6.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.12.12.6.m1.1b"><apply id="S4.T4.12.12.6.m1.1.1.cmml" xref="S4.T4.12.12.6.m1.1.1"><csymbol cd="latexml" id="S4.T4.12.12.6.m1.1.1.1.cmml" xref="S4.T4.12.12.6.m1.1.1.1">percent</csymbol><cn id="S4.T4.12.12.6.m1.1.1.2.cmml" type="float" xref="S4.T4.12.12.6.m1.1.1.2">69.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.12.12.6.m1.1c">69.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T4.12.12.6.m1.1d">69.5 %</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating how well the identified systematic hallucinations transfer to unseen vision-language models (VLMs).  The experiment used ten different question prompts to query the VLMs about the presence of a specific object in images. The table shows the transfer rate (proportion of images that trigger hallucinations across different prompts) for three VLMs: PaliGemma, LLaVA-NeXT Vicuna, and LLaVA-NeXT Mistral.  The results demonstrate that while some models (LLaVA-NeXT Vicuna and Mistral) exhibit consistent transfer rates across various prompts, PaliGemma, which was pretrained with a specific prompt, shows lower transfer rates for similar questions. However, this improved robustness to systematic hallucinations in PaliGemma does not extend to prompts that differ significantly.
> <details>
> <summary>read the caption</summary>
> Table 9: Transfer across prompts: While transfer rates for LN Vicuna and LN Mistral are stable, PaliGemma was pretrained on this task using the prompt 'Is OBJ in the image?' and shows lower transfer rates on similar prompts. However, this improved robustness against systematic hallucinations does not generalize to less similar prompts.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.23573/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.23573/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}