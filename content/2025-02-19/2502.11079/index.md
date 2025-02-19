---
title: "Phantom: Subject-consistent video generation via cross-modal alignment"
summary: "PHANTOM: a novel framework for subject-consistent video generation, effectively aligns text and image prompts to generate videos accurately reflecting the subject from reference images."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 ByteDance",]
showSummary: true
date: 2025-02-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11079 {{< /keyword >}}
{{< keyword icon="writer" >}} Lijie Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11079" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11079" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11079/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Subject-consistent video generation, creating videos that match a reference image while following textual prompts, is a challenging problem. Current methods struggle with either creativity (text-to-video) or control (image-to-video). This paper introduces PHANTOM, a new approach that leverages a combined text-image prompt input and a redesigned model to balance creativity and subject consistency. 



PHANTOM uses a novel data pipeline with image-text-video triplets to train the model. It achieves improved subject consistency by carefully choosing reference images and focusing on the subject's appearance and actions. The results show that PHANTOM outperforms existing methods, particularly in preserving the subject's identity and following textual instructions effectively, paving the way for advanced video generation applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PHANTOM, a novel framework, improves subject-consistent video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method effectively aligns text and image prompts for accurate video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} This research advances video generation, especially in precise subject control applications. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it introduces a novel framework for subject-consistent video generation**, a challenging problem in AI.  The proposed method addresses limitations of existing text-to-video and image-to-video models by effectively aligning text and image prompts to generate videos that faithfully reflect the subject in the reference images.  This work will **advance research in video generation**, especially in applications requiring precise subject control. It opens up **new avenues for research on cross-modal alignment** and improved video editing tools.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11079/x1.png)

> 🔼 This figure showcases examples of videos generated using the PHANTOM method.  Each set of images displays a reference image followed by several frames from the generated video. The top rows demonstrate single-subject video generation, where the video focuses on a single subject from the provided reference image. The bottom rows demonstrate the method's capability to handle multiple subjects within the generated video, showing multiple reference images and their corresponding video frames.  The text prompts used to generate each video are not included in the figure.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Subject-consistent generation examples using our method, with reference images and corresponding video frames (text prompts omitted). The last three rows show multiple reference subjects.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.4.5.1.1" rowspan="2"><span class="ltx_text" id="S3.T1.4.5.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S3.T1.4.5.1.2">Identity Consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.5.1.3">Prompt Following</th>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1">FaceSim-Arc <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.2.2.2">FaceSim-Cur <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.3.3.3">FaceSim-glink <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.4.4.4">ViCLIP-T <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.4.6.1.1">ConsisID</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.1.2">0.538</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.1.3">0.417</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.1.4">0.470</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.6.1.5">21.76</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.4.7.2.1">Hailuo-ID</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.2.2">0.542</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.2.3">0.504</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.2.4">0.557</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.7.2.5">23.31</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.4.8.3.1">Phantom-ID</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.3.2"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.3.2.1">0.581</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.3.3.1">0.529</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.3.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.3.4.1">0.590</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.4.8.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.8.3.5.1">24.12</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different video generation methods across two key aspects: identity consistency and prompt following.  Identity consistency measures how well the generated videos maintain the identity of subjects from the input reference image (e.g., a specific person's face).  Prompt following assesses how accurately the generated videos reflect the textual instructions given as prompts.  The results help to understand the strengths and weaknesses of various approaches in subject-consistent video generation.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different methods based on identity consistency and prompt following
> </details>





### In-depth insights


#### Cross-Modal Alignment
Cross-modal alignment in video generation aims to **harmoniously integrate textual and visual information**, creating videos that accurately reflect both the textual descriptions and the visual content of reference images.  This is crucial because text provides semantic meaning and intent, while images offer specific visual details and subject matter.  **Effective alignment requires a model architecture that can effectively fuse these modalities**, learning complex relationships between words, concepts, and visual features.  The challenge lies in **handling the inherent differences in the nature of text and images**, their varied levels of abstraction, and the need to ensure consistent generation across different prompts.  **Successful cross-modal alignment enables control over the video generation process**, allowing users to specify both the subject matter and the desired actions, leading to subject-consistent video generation.  The core of this alignment often relies on **multimodal training data comprising text-image-video triplets**, allowing models to learn direct mappings between these modalities.  Finally, the **evaluation of cross-modal alignment necessitates a comprehensive metric that considers both the visual fidelity and the semantic consistency** of the generated video relative to the input prompts, capturing both the text-video and image-video alignment.

#### S2V Data Pipeline
A robust Subject-to-Video (S2V) data pipeline is crucial for effective model training.  It necessitates a **triplet data structure** comprising text, image, and video, carefully aligning these modalities.  The pipeline should **differentiate between in-paired and cross-paired data**.  In-paired data, using keyframes from the target video, simplifies training but risks over-reliance on visual similarity and neglect of textual instructions. Cross-paired data, employing images from different videos, encourages the model to synthesize video based on textual descriptions, enhancing generalization.  **Careful filtering and preprocessing** are essential to mitigate visual redundancy, ensure data quality and consistency, and address potential biases.  The selection of image prompts must consider various application scenarios like single vs. multi-subject generation and human-object interactions.  Thorough annotation of videos focusing on subject description rather than generic captioning is critical for effective cross-modal alignment.  Finally, a well-designed S2V pipeline needs to **balance the diversity and controllability** of text and image inputs for better subject consistency in video generation.

#### Phantom Framework
The Phantom framework, as described, is a unified video generation model built upon existing text-to-video and image-to-video architectures.  Its core innovation lies in its **cross-modal alignment** strategy, achieved through a redesigned joint text-image injection model trained on text-image-video triplet data. This allows for the simultaneous and deep alignment of textual instructions and visual references, enhancing subject consistency.  The framework emphasizes **subject consistency** in video generation, surpassing the limitations of previous ID-preserving models, by using a data pipeline that carefully selects and categorizes image-text-video triplets to avoid simple copy-pasting from images to video. It incorporates components like a vision encoder and a text encoder that provide high-level semantic information, thereby compensating for potential limitations of basic encoders. The architecture's modular design, using established pre-trained models, suggests an efficient and scalable approach to achieving high-quality subject-consistent video generation.

#### Evaluation Metrics
To effectively evaluate subject-consistent video generation, a multifaceted approach to evaluation metrics is crucial.  **Video quality** should be assessed using established metrics like resolution, visual clarity, and aesthetic appeal. However, these are insufficient.  **Text-video consistency** needs careful measurement, perhaps using cosine similarity between video captions and input text prompts.  Crucially, the core objective of subject consistency requires dedicated metrics. This could involve comparing generated video features to reference image features using perceptual similarity measures or by employing facial recognition technology for identity preservation tasks.  **Quantitative metrics** should be supplemented by **qualitative analysis**, including human evaluation of generated videos' realism and adherence to textual instructions, to provide a comprehensive assessment.

#### Future of S2V
The future of Subject-to-Video (S2V) generation hinges on several key advancements. **Improved cross-modal alignment** is crucial, enabling more seamless integration of text and image prompts for precise control over video content.  **Enhanced data efficiency** is vital to reduce the large datasets currently needed to train robust models, facilitating broader accessibility and application.  **Development of more sophisticated architectures** capable of handling complex scenes and interactions will allow for more realistic and detailed video generation.  **Addressing ethical concerns** regarding the potential misuse of such technology for creating deepfakes or spreading misinformation is paramount; robust detection and verification techniques are required. Finally, **exploring real-time or near real-time S2V capabilities** would significantly broaden the scope of applications, including interactive storytelling and virtual reality experiences.  The integration of these factors will shape the next generation of S2V, unlocking new creative and practical possibilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11079/x2.png)

> 🔼 This figure illustrates the relationships between different cross-modal video generation tasks. It shows how text-to-video, image-to-video, and subject-to-video generation methods are interconnected and build upon each other.  The central concept is 'alignment', showing how these methods strive to align visual content with textual descriptions, and how subject-to-video generation aims to achieve a balance between the two to maintain subject consistency.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Relationship in cross-modal video generation tasks.
> </details>



![](https://arxiv.org/html/2502.11079/x3.png)

> 🔼 This figure illustrates the data processing pipeline used in the PHANTOM model for cross-modal video generation.  It details how image, text, and video data are combined and prepared for training. The process begins with retrieving and matching data sources, filtering and captioning the data.  Then, the pipeline separates the data into in-paired and cross-paired data sets, which are further segmented based on application scenarios such as multi-person interactions or human-object interactions.  These steps aim to achieve a balance between visual consistency and textual control during the generation process, preventing over-reliance on simple image copying while incorporating the richness provided by text prompts.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data processing pipeline for cross-modal video generation
> </details>



![](https://arxiv.org/html/2502.11079/x4.png)

> 🔼 This figure presents a detailed architecture of the Phantom model, which is a unified video generation framework designed for subject-consistent video generation.  It shows the model's input processing, including the way text and image prompts are encoded and combined with video features. The core components are highlighted, such as the triplet data input head, vision and text branches, and the MMDiT block. The figure also depicts how the model utilizes a Variational Autoencoder (VAE) and CLIP for image feature extraction and integration within the DiT module. This detailed illustration clarifies the model's flow of processing text and visual information to produce subject-consistent videos.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overview of the Phantom architecture
> </details>



![](https://arxiv.org/html/2502.11079/x5.png)

> 🔼 This figure presents a comparative analysis of video generation quality and multi-subject consistency. The left panel displays a radar chart summarizing the video quality assessment across several metrics, including clarity, aesthetic quality, structure, background consistency, and dynamic degree.  Each metric is scored against the video generation results of the Phantom model, compared to various benchmark systems.  The right panel presents the results of a user study focusing on multi-subject consistency where participants rate different models including Phantom, Vidu 2.0, Pika 2.1, and Keling 1.6. The user ratings reflect preferences for different methods in terms of subject consistency and prompt adherence.
> <details>
> <summary>read the caption</summary>
> Figure 5: Video quality evaluation (left) and user study results for multi-subject consistency (right).
> </details>



![](https://arxiv.org/html/2502.11079/x6.png)

> 🔼 This figure displays a comparison of video generation results from four different methods (Ours, Vidu2.0, Pika2.1, and Keling1.6) given a single reference image and corresponding text prompt.  Each row showcases a different scenario, with the reference image shown at the far left, followed by video frames generated by each method.  The objective is to evaluate the methods’ ability to maintain subject consistency (i.e., how well they generate videos that accurately reflect the subject and content from the reference image and text prompt). The caption highlights that the comparisons shown in this image are based on single-subject videos.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparative results of single reference subject-to-video generation
> </details>



![](https://arxiv.org/html/2502.11079/x7.png)

> 🔼 This figure showcases comparative results from different video generation methods when using multiple reference images as input.  The goal is to generate videos that are consistent with multiple subjects depicted in the provided reference images.  Each row displays a different scenario with different subjects, using the same prompts. The results from four different models (Ours, Keling1.6, Pika2.1, and Vidu2.0) are shown side-by-side to illustrate the differences in the generated video quality and subject consistency.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparative results of multi-reference subject-to-video generation
> </details>



![](https://arxiv.org/html/2502.11079/x8.png)

> 🔼 Figure 8 presents a comparison of video generation results focusing on face ID preservation.  It showcases examples generated by different methods, including the authors' method (Phantom), ConsisID, and Hailuo, all applied to the same set of input images. The figure's purpose is to visually demonstrate the relative strengths and weaknesses of each method in maintaining the identity of the individuals across the generated video frames, highlighting differences in visual quality, motion clarity, and overall faithfulness to the input image. Each set of generated video frames is accompanied by a brief text description of the scenario.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparative results of video generation for face ID preservation
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11079/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11079/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}