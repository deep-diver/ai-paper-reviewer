---
title: "SkyReels-A2: Compose Anything in Video Diffusion Transformers"
summary: "SkyReels-A2: A controllable video diffusion transformer that assembles arbitrary visual elements into synthesized videos, maintaining strict consistency with reference images."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Skywork AI, Kunlun Inc.",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02436 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhengcong Fei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02436" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02436" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02436/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper introduces **SkyReels-A2**, which addresses the challenges in video generation, specifically the need to assemble arbitrary visual elements (characters, objects, backgrounds) into synthesized videos while maintaining strict consistency with reference images and textual prompts. Existing methods often struggle to balance element-specific consistency with overall coherence and text alignment, limiting their applicability in fields such as AI drama and virtual e-commerce. The primary hurdles involve preserving the fidelity of each reference element, ensuring coherent scene composition, and achieving natural-looking outputs. 



To tackle these issues, **SkyReels-A2** proposes a comprehensive data pipeline to construct prompt-reference-video triplets for model training. It employs a novel image-text joint embedding model to inject multi-element representations into the generative process, balancing element-specific consistency with global coherence and text alignment. The paper also optimizes the inference pipeline for both speed and output stability and introduces A2-Bench, a benchmark for systematic evaluation. Experiments show that SkyReels-A2 generates diverse, high-quality videos with precise element control, outperforming advanced closed-source models and marking the first open-source commercial-grade model for elements-to-video generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SkyReels-A2 is a controllable video generation framework, capable of assembling arbitrary visual elements. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework maintains strict consistency with reference images for each element, enabling precise control through textual instructions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SkyReels-A2 introduces a new benchmark (A2-Bench) for evaluating elements-to-video tasks, facilitating comprehensive and automated assessments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**SkyReels-A2** offers new avenues for creative video generation by providing a controllable framework. Its open-source nature and commercial-grade quality encourage further research and application development in areas like AI drama and virtual e-commerce, expanding the possibilities of controllable video creation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02436/extracted/6332719/precase.png)

> 🔼 This figure showcases example outputs from the SkyReels-A2 model.  The model takes as input multiple reference images (e.g., of a character, an object, and a scene) and a textual description. The output is a video that combines these elements in a realistic and natural way, while maintaining the visual identity of each reference image.  For example, a character's face will appear consistent throughout the video, and the object will maintain its shape and texture.
> <details>
> <summary>read the caption</summary>
> Figure 1: Examples of elements-to-video results from our proposed SkyReels-A2 model. Given reference with multiple images and textual prompt, our method can generate realistic and naturally composed videos while preserving specific identity consistent.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.5.1.1.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.1">Dimension</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.2.1">Pika2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.3.1">Vidu2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.4.1">Keling1.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.5.1">SkyReels-A2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.2.2.1" style="padding-left:10.0pt;padding-right:10.0pt;">ID Consistency</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.388</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.455</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.2.2.4.1">0.497</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.5" style="padding-left:10.0pt;padding-right:10.0pt;">0.398</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.3.3.1" style="padding-left:10.0pt;padding-right:10.0pt;">Object Consistency</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.3.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.788</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.3.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.796</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.3.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.790</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.3.3.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.3.3.5.1">0.809</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.4.4.1" style="padding-left:10.0pt;padding-right:10.0pt;">Background Consistency</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.4.4.2.1">0.733</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.727</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.700</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.5" style="padding-left:10.0pt;padding-right:10.0pt;">0.677</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.5.5.1" style="padding-left:10.0pt;padding-right:10.0pt;">Image Quality</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.565</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.587</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.5.1">0.683</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.6.6.1" style="padding-left:10.0pt;padding-right:10.0pt;">Aesthetic Quality</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.6.2.1">0.628</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.616</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.609</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.5" style="padding-left:10.0pt;padding-right:10.0pt;">0.579</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.7.7.1" style="padding-left:10.0pt;padding-right:10.0pt;">Motion Smoothness</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.917</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.7.3.1">0.960</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.4" style="padding-left:10.0pt;padding-right:10.0pt;">0.879</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.5" style="padding-left:10.0pt;padding-right:10.0pt;">0.891</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.8.8.1" style="padding-left:10.0pt;padding-right:10.0pt;">Dynamic Degree</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.918</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.878</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.8.8.4.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.8.8.5.1">1.000</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.9.9.1" style="padding-left:10.0pt;padding-right:10.0pt;">Image-Text Similarity</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.9.9.2.1">29.128</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.3" style="padding-left:10.0pt;padding-right:10.0pt;">28.926</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.4" style="padding-left:10.0pt;padding-right:10.0pt;">27.504</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.5" style="padding-left:10.0pt;padding-right:10.0pt;">28.188</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.5.10.10.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.10.1.1">Comprehensive Score</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.10.10.2" style="padding-left:10.0pt;padding-right:10.0pt;">0.807</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.10.10.3" style="padding-left:10.0pt;padding-right:10.0pt;">0.821</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.10.10.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.10.4.1">0.826</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.5.10.10.5" style="padding-left:10.0pt;padding-right:10.0pt;">0.818</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of different video generation methods using the A2-Bench benchmark.  A2-Bench assesses three key aspects: composition consistency (how well the generated video maintains consistency across elements such as characters, objects, and background), visual quality (image clarity, aesthetics, motion smoothness), and prompt following (how accurately the video reflects the input text prompt). The results show that SkyReels-A2 achieves performance comparable to other methods, particularly excelling in objective consistency.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different methods based on the automatic metrics of A2-Bench Evaluation Dimension. It contains three major dimensions including composition consistency, visual quality, and prompt following. We can see that our SkyReels-A2 achieve comparable composition performance, especially in objective consistency.
> </details>





### In-depth insights


#### E2V Control Achieved
While the provided document does not explicitly detail 'E2V Control Achieved,' we can infer its meaning from the paper's content, focusing on the SkyReels-A2 framework. It seems that **controlling element integration in video generation (E2V)** is a core objective. This control is achieved via a novel image-text joint embedding and specialized training, enabling the consistent assembly of characters, objects, and backgrounds from reference images guided by textual prompts. This system excels in both preserving the characteristics of the given visual prompts and maintaining fidelity with the supplied textual commands. The development of the A2-Bench offers a means to assess the performance of the framework by applying automated and user study based metrics. Finally, SkyReels-A2 appears to represent a significant advancement in controllable video generation, offering both enhanced quality and flexibility for diverse creative applications.

#### Joint Embedding E2V
While the paper doesn't explicitly use the heading "Joint Embedding E2V," we can infer its relevance. Given the task of Elements-to-Video (E2V), **a joint embedding approach is crucial for effectively fusing information from different modalities**, namely the reference images of individual elements (characters, objects, backgrounds) and the textual prompt describing the desired scene. The success of SkyReels-A2 hinges on its ability to learn a shared representation space where visual features extracted from the reference images and semantic information encoded in the text prompt are aligned. **This joint embedding should capture not only the appearance of each element but also the relationships between them**, ensuring coherent composition and natural-looking video generation. The model's design, which uses two distinct branches to encode reference images, combined with a cross-attention mechanism, points towards the implementation of such a joint embedding strategy. By concatenating spatial features from the 3D VAE with semantic features from the CLIP image encoder, the model likely creates a more holistic representation of each element, allowing it to be seamlessly integrated into the final video. **Furthermore, optimizing this joint embedding for both element-specific consistency and global coherence is likely a key factor in achieving realistic and controllable video generation**, enabling the model to preserve identities and relationships while adhering to the user's textual instructions.

#### A2-Bench: E2V Eval
A2-Bench represents a **critical advancement** in evaluating elements-to-video (E2V) generation, a task lacking comprehensive benchmarks. Traditional video evaluation metrics don't fully capture the nuances of multi-element consistency. A2-Bench addresses this gap by offering a **systematic framework** designed to assess the quality of composition video generation models. The key dimensions covered include composition consistency (evaluating character ID, object, and background consistency), visual quality (incorporating image quality, aesthetic appeal, motion smoothness, and dynamic degree), and prompt following (measuring semantic alignment between text and video). This benchmark's automated metrics offer **rigorous assessment**, ensuring reliable and replicable performance measurements of diverse E2V models. By emphasizing these aspects, A2-Bench seeks to provide a **robust foundation** for advancements in controllable video synthesis, fostering innovation and pushing the boundaries of E2V research.

#### DiT Scalability E2V
DiT scalability in the context of Elements-to-Video (E2V) generation is a critical area of exploration. Scaling diffusion transformers (DiTs) to handle the complexities of E2V tasks presents unique challenges and opportunities. **E2V demands precise control over multiple visual elements**, requiring the model to maintain fidelity to reference images while adhering to textual prompts. This necessitates **robust attention mechanisms** that can effectively integrate information from various modalities. As DiTs scale, computational costs increase significantly, requiring **efficient training strategies** and inference pipelines. Furthermore, **data requirements** grow exponentially, necessitating large-scale datasets with high-quality text-reference-video triplets. Overcoming these challenges is crucial for unlocking the full potential of DiTs in E2V, enabling the generation of diverse, high-quality videos with precise element control. **Balancing element-specific consistency with global coherence** and text alignment becomes increasingly important as the model scales.

#### No Data Mixing E2V
The idea of 'No Data Mixing' for Elements-to-Video (E2V) suggests a training strategy that avoids combining single-element and multi-element datasets. **The aim would be to isolate learning signals**, preventing potential interference or negative transfer between the two. This could be particularly useful if the characteristics of single-element and multi-element videos differ significantly (e.g., complexity, dynamics). By training separate models or using distinct training phases, 'No Data Mixing E2V' might enhance the fidelity and coherence of videos generated with multiple, integrated elements, by **focusing on how to correctly compose separate entities** into a coherent video.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02436/extracted/6332719/framework.png)

> 🔼 SkyReels-A2 uses two encoding branches for reference images: a spatial branch (3D VAE encoder) for per-composition image processing, and a semantic branch (CLIP vision encoder + MLP projection) for semantic information extraction.  Spatial features are combined with noisy video tokens, and semantic features are integrated via cross-attention layers within diffusion transformers, ensuring effective semantic context integration during video generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Skyreels-A2 framework. Our approach initiates by encoding all reference images using two distinct branches. The first, termed the spatial feature branch (represented in red bottom arrow), leverages a fine-grained 3D VAE encoder to process per-composition images. The second, identified as the semantic feature branch (represented in red top arrow), utilizes a CLIP vision encoder followed by an MLP projection to encode semantic references. Subsequently, the spatial features are concatenated with the noised video tokens along the channel dimension before being passed through the diffusion transformer blocks. Meanwhile, the semantic features extracted from the reference images are incorporated into the diffusion transformers via supplementary cross-attention layers, ensuring that the semantic context is effectively integrated during diffusion.
> </details>



![](https://arxiv.org/html/2504.02436/extracted/6332719/datapipeline.png)

> 🔼 This figure details the data processing pipeline used in the SkyReels-A2 model.  It starts with preprocessing raw videos, filtering them based on factors like resolution, labels, type, and source.  Then, keyframes are used for temporal segmentation. A proprietary multi-expert video captioning model creates both overall descriptions of video clips and structured annotations detailing specific concepts.  Object detection and segmentation models then extract visual elements (humans, objects, backgrounds). To prevent redundant data, reference images are selected from other clips using clip and facial similarity scores. Additional refinement steps involve facial detection and human parsing to extract facial and clothing elements.  Finally, the extracted elements are paired with their corresponding descriptions to create training triplets consisting of visual elements, video clips, and textual captions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data processing pipeline in SkyReels-A2. The pipeline begins with preprocessing, where raw videos are filtered by resolution, labels, types, and sources, followed by temporal segmentation based on key-frames. Next, a proprietary multi-expert video captioning model generates both holistic descriptions for video clips and structured concept annotations. Subsequently, detection and segmentation models extract visual elements (e.g., humans, objects, environments). To mitigate duplication, reference images are retrieved from other clips based on clip/facial similarity score. Further refinement includes face detection and human parsing to obtain facial/attire elements. Finally, the extracted elements are matched with structured descriptions to form training triplets (visual elements, video clips, and textual captions).
> </details>



![](https://arxiv.org/html/2504.02436/extracted/6332719/bench.png)

> 🔼 A2-Bench is a comprehensive evaluation benchmark for elements-to-video (E2V) tasks.  It assesses both the automatic metrics and user study results, considering multiple perspectives to accurately reflect the quality of generated videos.  The figure illustrates the dimensions evaluated by A2-Bench, including composition consistency (Character ID consistency, Object consistency, Background consistency), visual quality (Comprehensive image quality, Aesthetic quality, Motion smoothness, Dynamic degree), and prompt following (Image-Text similarity). Each dimension uses both automatic metrics and (optionally) user study scores to provide a holistic evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 4: The dimensions covered in A2-Bench.  Our evaluation consider both automatic metrics and user study, meantime, it covers multiple perspectives that precisely reflects the quality of E2V task.
> </details>



![](https://arxiv.org/html/2504.02436/extracted/6332719/user_study.png)

> 🔼 Figure 5 presents a comprehensive comparison of SkyReels-A2's performance against top-tier commercial video generation models, as assessed through user studies.  The radar charts visually represent the consistency and video quality metrics from these studies.  Each axis represents a key aspect of video generation, such as character consistency, background consistency, or motion smoothness. The position of each model's point on each axis reflects its performance on that particular aspect, providing a multi-faceted view of the overall generation capabilities. The results demonstrate that SkyReels-A2 achieves comparable performance to the closed-source commercial models, indicating its strong potential as a competitive open-source alternative.
> <details>
> <summary>read the caption</summary>
> Figure 5: Consistency and video quality of user study results for elements-to-video generation. We can see that our SkyReels-A2 achieve comparable generative performance compared with top-tier closed source commercial video models.
> </details>



![](https://arxiv.org/html/2504.02436/extracted/6332719/results2.png)

> 🔼 Figure 6 presents a comparison of video generation results between SkyReels-A2 and three leading commercial closed-source models (Pika, Vidu, and Keling).  Each row showcases a different elements-to-video scenario.  The results highlight SkyReels-A2's comparable performance in overall composition, while demonstrating its superiority in rendering realistic lighting and shadow effects. The figure demonstrates that SkyReels-A2 is competitive with leading commercial models, and its unique strength lies in the detail of light and shadow.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparative results of elements-to-video generation with closed-source models. We can see that our SkyReels-A2 achieve achieves similar performance in composition and excels in the texture of light and shadow.
> </details>



![](https://arxiv.org/html/2504.02436/extracted/6332719/results1.png)

> 🔼 Figure 7 showcases various video generation results produced by the SkyReels-A2 model.  Each row presents a unique example consisting of input reference images (character, object, scene) and the resulting generated video frames. The figure highlights SkyReels-A2's capacity to synthesize videos from diverse combinations of input elements, demonstrating its robust generalization capabilities and ability to handle a wide range of composition scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 7: More generated results of SkyReels-A2. Our model has strong generalization ability and supports reference combinations of any subjects.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.10.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.10.9.1.1" rowspan="2"><span class="ltx_text" id="S3.T2.10.9.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T2.10.9.1.2">Composition Consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.10.9.1.3">Visual Quality</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.10.9.1.4">Prompt Following</th>
</tr>
<tr class="ltx_tr" id="S3.T2.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.3.1.1">ID <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.1.1.m1.1"><semantics id="S3.T2.3.1.1.m1.1a"><mo id="S3.T2.3.1.1.m1.1.1" stretchy="false" xref="S3.T2.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.1.1.m1.1b"><ci id="S3.T2.3.1.1.m1.1.1.cmml" xref="S3.T2.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.4.2.2">Obj. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.4.2.2.m1.1"><semantics id="S3.T2.4.2.2.m1.1a"><mo id="S3.T2.4.2.2.m1.1.1" stretchy="false" xref="S3.T2.4.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.2.2.m1.1b"><ci id="S3.T2.4.2.2.m1.1.1.cmml" xref="S3.T2.4.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.5.3.3">Back. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.3.3.m1.1"><semantics id="S3.T2.5.3.3.m1.1a"><mo id="S3.T2.5.3.3.m1.1.1" stretchy="false" xref="S3.T2.5.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.3.3.m1.1b"><ci id="S3.T2.5.3.3.m1.1.1.cmml" xref="S3.T2.5.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.6.4.4">Image Quality <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.4.4.m1.1"><semantics id="S3.T2.6.4.4.m1.1a"><mo id="S3.T2.6.4.4.m1.1.1" stretchy="false" xref="S3.T2.6.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.4.4.m1.1b"><ci id="S3.T2.6.4.4.m1.1.1.cmml" xref="S3.T2.6.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T2.7.5.5">Similarity <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.5.5.m1.1"><semantics id="S3.T2.7.5.5.m1.1a"><mo id="S3.T2.7.5.5.m1.1.1" stretchy="false" xref="S3.T2.7.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.5.5.m1.1b"><ci id="S3.T2.7.5.5.m1.1.1.cmml" xref="S3.T2.7.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.10.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.10.10.1.1">Before VAE</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.1.2">0.398</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.1.3">0.809</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.1.4">0.677</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.1.5">0.683</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.1.6">28.188</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.10.11.2.1">After VAE</th>
<td class="ltx_td ltx_align_center" id="S3.T2.10.11.2.2">0.388</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.11.2.3">0.798</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.11.2.4">0.697</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.11.2.5">0.667</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.11.2.6">28.186</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.10.12.3.1">Frame No Repeat</th>
<td class="ltx_td ltx_align_center" id="S3.T2.10.12.3.2">0.372</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.12.3.3">0.756</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.12.3.4">0.612</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.12.3.5">0.642</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.12.3.6">26.232</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.10.13.4.1">Cross-2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.13.4.2">0.362</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.13.4.3">0.732</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.13.4.4">0.612</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.13.4.5">0.631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.13.4.6">27.832</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.10.14.5.1">Cross-1</th>
<td class="ltx_td ltx_align_center" id="S3.T2.10.14.5.2">0.398</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.14.5.3">0.809</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.14.5.4">0.677</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.14.5.5">0.683</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.14.5.6">28.188</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.10.15.6.1">Full</th>
<td class="ltx_td ltx_align_center" id="S3.T2.10.15.6.2">0.389</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.15.6.3">0.798</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.15.6.4">0.670</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.15.6.5">0.692</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.15.6.6">28.021</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.8.6.1">
<math alttext="\alpha" class="ltx_Math" display="inline" id="S3.T2.8.6.1.m1.1"><semantics id="S3.T2.8.6.1.m1.1a"><mi id="S3.T2.8.6.1.m1.1.1" xref="S3.T2.8.6.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S3.T2.8.6.1.m1.1b"><ci id="S3.T2.8.6.1.m1.1.1.cmml" xref="S3.T2.8.6.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.6.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.6.1.m1.1d">italic_α</annotation></semantics></math> = 2:1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.6.2">0.375</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.6.3">0.772</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.6.4">0.642</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.6.5">0.642</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.6.6">26.312</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.9.7.1">
<math alttext="\alpha" class="ltx_Math" display="inline" id="S3.T2.9.7.1.m1.1"><semantics id="S3.T2.9.7.1.m1.1a"><mi id="S3.T2.9.7.1.m1.1.1" xref="S3.T2.9.7.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S3.T2.9.7.1.m1.1b"><ci id="S3.T2.9.7.1.m1.1.1.cmml" xref="S3.T2.9.7.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.7.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.7.1.m1.1d">italic_α</annotation></semantics></math> = 1:1</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.2">0.386</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.3">0.798</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.4">0.665</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.5">0.671</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.7.6">27.561</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.10.8.1">
<math alttext="\alpha" class="ltx_Math" display="inline" id="S3.T2.10.8.1.m1.1"><semantics id="S3.T2.10.8.1.m1.1a"><mi id="S3.T2.10.8.1.m1.1.1" xref="S3.T2.10.8.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S3.T2.10.8.1.m1.1b"><ci id="S3.T2.10.8.1.m1.1.1.cmml" xref="S3.T2.10.8.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.8.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.8.1.m1.1d">italic_α</annotation></semantics></math> = 0:1</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.8.2">0.398</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.8.3">0.809</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.8.4">0.677</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.8.5">0.683</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.10.8.6">28.188</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of design choices on the SkyReels-A2 model's performance.  It compares different architectural components and training strategies to determine the optimal configuration.  Specifically, it investigates the effects of using a Variational Autoencoder (VAE) for feature extraction, including or excluding frame repetition within the VAE process, incorporating cross-attention mechanisms at different stages (cross-1 and cross-2 denote different implementations), and varying the ratio (α) of single-element vs. multiple-element data used during training (1:0 represents a bias towards single-element data). The table shows the results across various metrics, including Identity, Object, and Background consistency, overall Image quality, and prompt following, helping to identify the combination of techniques that yield the best performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study. We compare different design space in SkyReels-A2, and select the best optimal algorithm, i.e., after VAE with frame repeat, cross-1, and 1:0 data mixing ration, in the final version. In between, α𝛼\alphaitalic_α denote the single and multiple visual element data mixing ratio.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx1.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx1.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="Sx1.T3.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.1.1.1.1">Evaluation Dimension</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="Sx1.T3.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.1.1.2.1">Evaluation Criteria and Details</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx1.T3.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="Sx1.T3.1.1.2.1.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.2.1.1.1">Face Consistency</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="Sx1.T3.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.2.1.2.1">1:</span> Completely unable to identify as the same individual (facial features are unrelated to the reference image).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.3.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.3.2.1.1">3:</span> Noticeable differences are present, but identification is still possible (e.g., variations in eye size or alterations in nose shape).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.4.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.4.3.1.1">5:</span> All facial features are fully consistent (e.g., no differences in eye shape, nose curvature, or lip thickness).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.5.4.1" rowspan="10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.5.4.1.1">Dress Consistency</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.5.4.2.1">1:</span> The clothing is completely unrelated to the reference image (different style, color, and pattern).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.6.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">For example, the reference wears traditional Hanfu, while the generated image shows swimwear.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.7.6">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.7.6.1.1">2:</span> Significant style differences exist, with partial matches in color or pattern.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.8.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">For instance, the reference wears a suit, and the generated image shows athletic wear, both in dark blue.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.9.8">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.9.8.1.1">3:</span> The styles are similar, but key elements have changed (e.g., long sleeves to short sleeves).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.10.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">For example, the reference wears blue jeans, while the generated image features black casual pants with a similar cut.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.11.10">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.11.10.1.1">4:</span> The styles are consistent, with minor acceptable differences (e.g., color brightness or slight pattern scaling).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.12.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">For example, the reference wears a white dress, and the generated image is in off-white, with matching hem lengths.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.13.12">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.13.12.1.1">5:</span> The clothing style, color, and pattern are identical (e.g., no differences in button placement or pattern details).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.14.13">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">For instance, the reference wears a red plaid shirt, and the generated image matches the plaid pattern perfectly.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.15.14">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.15.14.1" rowspan="10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.15.14.1.1">Background Consistency</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.15.14.2.1">1:</span> The background is completely unrelated to the reference image (different scene, lighting, and objects).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.16.15">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">For example, the reference is in an office, while the generated image is a spacecraft.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.17.16">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.17.16.1.1">2:</span> There are significant scene type differences, with only partial matches in elements (e.g., color or material).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.18.17">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">For instance, the reference is at the beach, while the generated image is a forest, both with green vegetation.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.19.18">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.19.18.1.1">3:</span> The scene types are similar, but key elements have changed (e.g., indoor to outdoor, day to night).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.20.19">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.20.19.1" style="padding-top:1pt;padding-bottom:1pt;">For example, the reference is in a kitchen, while the generated image shows a living room, with a consistent color scheme.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.21.20">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.21.20.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.21.20.1.1">4:</span> The scene types are consistent, with minor acceptable differences (e.g., lighting or object placement).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.22.21">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.22.21.1" style="padding-top:1pt;padding-bottom:1pt;">For instance, the reference is in a sunny park, while the generated image is cloudy, but vegetation and bench positions match.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.23.22">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.23.22.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.23.22.1.1">5:</span> The scene elements are identical (e.g., no differences in furniture layout or decorations).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.24.23">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.24.23.1" style="padding-top:1pt;padding-bottom:1pt;">For example, the reference is in front of a library bookshelf, and the generated image matches the shelf arrangement exactly.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.25.24">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.25.24.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.25.24.1.1">Object Consistency</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.25.24.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.25.24.2.1">1:</span> Completely unrecognizable as the same object (features unrelated to the reference image).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.26.25">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.26.25.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.26.25.1.1">3:</span> Noticeable differences but still recognizable (e.g., changes in size or shape).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.27.26">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.27.26.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.27.26.1.1">5:</span> All object features are completely consistent (e.g., size, shape, and texture show no differences).</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.28.27">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.28.27.1" rowspan="7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.28.27.1.1">Instruction Following</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.28.27.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.28.27.2.1">1:</span> Fails to follow the instructions or only minimally aligns; significant deviation in theme and key elements.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.29.28">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.29.28.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.29.28.1.1">2:</span> Partially follows the instructions, but with notable deviations; key elements are present but lack completeness and accuracy.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.30.29">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.30.29.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.30.29.1.1">3:</span> Generally adheres to the instructions; main content and key elements are aligned, presenting the instruction adequately,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.31.30">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.31.30.1" style="padding-top:1pt;padding-bottom:1pt;">though with minor details missing or inaccurate.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.32.31">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.32.31.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.32.31.1.1">4:</span> Highly adheres to the instructions; accurately presents key content and elements without deviation.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.33.32">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.33.32.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.33.32.1.1">5:</span> Perfectly follows the instructions and extends beyond; the generated content adheres fully to the theme,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.34.33">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.34.33.1" style="padding-top:1pt;padding-bottom:1pt;">elements, and style, with enhancements that improve the overall effectiveness.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.35.34">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.35.34.1" rowspan="10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.35.34.1.1">Rationality</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.35.34.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.35.34.2.1">1:</span> Spatial relationships are entirely irrational; positions and interactions between subjects and backgrounds</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.36.35">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.36.35.1" style="padding-top:1pt;padding-bottom:1pt;">or multiple subjects are contradictory, lacking any logical coherence.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.37.36">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.37.36.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.37.36.1.1">2:</span> Many spatial relationships among objects are flawed; interactions between subjects and backgrounds or among</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.38.37">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.38.37.1" style="padding-top:1pt;padding-bottom:1pt;">multiple subjects show significant unnatural positioning and occlusion, severely impacting the video’s realism and credibility.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.39.38">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.39.38.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.39.38.1.1">3:</span> Some spatial relationships are unreasonable; occasional issues with positioning, interactions,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.40.39">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.40.39.1" style="padding-top:1pt;padding-bottom:1pt;">or unnatural occlusion arise, but they do not significantly affect the overall presentation.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.41.40">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.41.40.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.41.40.1.1">4:</span> Only a few spatial relationships show slight deviations but are generally logical; interactions among</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.42.41">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.42.41.1" style="padding-top:1pt;padding-bottom:1pt;">multiple subjects are reasonably coherent, and the overall output aligns closely with the instructions.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.43.42">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.43.42.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.43.42.1.1">5:</span> All positional, occlusion, and interaction relationships among objects are highly rational and natural,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.44.43">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.44.43.1" style="padding-top:1pt;padding-bottom:1pt;">with meticulous detail handling, resulting in an almost perfect overall presentation.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.45.44">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.45.44.1" rowspan="5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.45.44.1.1">Subject Coherence</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.45.44.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.45.44.2.1">1:</span> The main subject is completely distorted, or there are significant differences between frames.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.46.45">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.46.45.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.46.45.1.1">2:</span> Multiple areas or large sections show distortion.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.47.46">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.47.46.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.47.46.1.1">3:</span> Minor distortions in details, such as slight finger twisting when holding objects.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.48.47">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.48.47.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.48.47.1.1">4:</span> No distortion or issues with the character.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.49.48">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.49.48.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.49.48.1.1">5:</span> No distortion at all, with additional strengths like natural facial expressions, resulting in excellent overall quality.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.50.49">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.50.49.1" rowspan="9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.50.49.1.1">Motion Smoothness</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.50.49.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.50.49.2.1">1:</span> Movement is very jerky; severe stuttering and noticeable jumps create a poor viewing experience with no coherent motion.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.51.50">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.51.50.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.51.50.1.1">2:</span> Clear stuttering and disjointed movement; transitions between actions are abrupt,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.52.51">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.52.51.1" style="padding-top:1pt;padding-bottom:1pt;">making most scenes feel unnatural and hindering content understanding.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.53.52">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.53.52.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.53.52.1.1">3:</span> Movement smoothness is average; occasional stutters or disconnections occur, but overall can still</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.54.53">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.54.53.1" style="padding-top:1pt;padding-bottom:1pt;">follow the motion rhythm, minimally impacting viewing of the main content.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.55.54">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.55.54.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.55.54.1.1">4:</span> Movement is relatively smooth and natural with no significant stuttering;</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.56.55">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.56.55.1" style="padding-top:1pt;padding-bottom:1pt;">the motion feels fluid, and the trajectory is reasonable, providing a good overall experience.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.57.56">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.57.56.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.57.56.1.1">5:</span> Movement is extremely smooth and fluid, resembling natural motion with no stuttering or</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.58.57">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.58.57.1" style="padding-top:1pt;padding-bottom:1pt;">disconnections, almost indistinguishable from real human movement.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.59.58">
<td class="ltx_td ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.59.58.1" rowspan="9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.59.58.1.1">Aesthetic Quality</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.59.58.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.59.58.2.1">1:</span> Extremely poor quality; severe distortion of the main subject or complete failure to meet prompt requirements,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.60.59">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.60.59.1" style="padding-top:1pt;padding-bottom:1pt;">rendering it unusable.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.61.60">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.61.60.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.61.60.1.1">2:</span> Overall quality is low; follows more than half of the instructions but presents incomplete content</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.62.61">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.62.61.1" style="padding-top:1pt;padding-bottom:1pt;">(process without results or vice versa) and lacks basic aesthetics.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.63.62">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.63.62.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.63.62.1.1">3:</span> Moderate quality; conveys the prompt’s information reasonably well with some detail flaws that</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.64.63">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.64.63.1" style="padding-top:1pt;padding-bottom:1pt;">don’t impact the main storyline, exhibiting some aesthetic value but not immediately usable.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.65.64">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.65.64.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.65.64.1.1">4:</span> Good overall performance; fully meets instructions and presents the prompt information clearly without distortion</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.66.65">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.66.65.1" style="padding-top:1pt;padding-bottom:1pt;">or missing elements, suitable for low-cost production.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.67.66">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.67.66.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.67.66.1.1">5:</span> Perfect overall performance.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.68.67">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="Sx1.T3.1.1.68.67.1" rowspan="7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.68.67.1.1">Video Quality</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="Sx1.T3.1.1.68.67.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.68.67.2.1">1:</span> Severe quality issues; the image is blurry with noticeable pixelation or other major visual flaws, making it nearly unwatchable.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.69.68">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.69.68.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.69.68.1.1">2:</span> Poor image quality; blurriness is evident, and while the content can be vaguely recognized,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.70.69">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.70.69.1" style="padding-top:1pt;padding-bottom:1pt;">it significantly affects the viewing experience.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.71.70">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.71.70.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.71.70.1.1">3:</span> Average quality; minor flaws like slight blurriness or noise are present but do not hinder understanding of the main content.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.72.71">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.72.71.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.72.71.1.1">4:</span> Acceptable quality for viewing; clear images with no significant flaws, providing good visual effects on various devices.</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.73.72">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="Sx1.T3.1.1.73.72.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="Sx1.T3.1.1.73.72.1.1">5:</span> Exceptional quality; professional-level image clarity without flaws in resolution, color,</td>
</tr>
<tr class="ltx_tr" id="Sx1.T3.1.1.74.73">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="Sx1.T3.1.1.74.73.1" style="padding-top:1pt;padding-bottom:1pt;">contrast, or detail, suitable for high-quality display and dissemination.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the criteria used in a user preference study to evaluate the quality of elements-to-video generation.  It breaks down the evaluation into dimensions such as Face Consistency (how well the generated video's faces match the reference images), Dress Consistency (consistency of clothing), Background Consistency (scene consistency), Object Consistency (object consistency), Instruction Following (how well the generated video followed the instructions), Rationality (logical coherence of spatial relationships), Subject Coherence (consistency of the main subject across frames), Motion Smoothness (smoothness of motion), Aesthetic Quality (overall aesthetic appeal), and Video Quality (overall video quality).  Each dimension is further assessed using a five-point scale, with descriptions of what each score (1-5) represents.
> <details>
> <summary>read the caption</summary>
> Table 3: Dimensions and Criteria for User Preference Studies.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02436/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02436/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}