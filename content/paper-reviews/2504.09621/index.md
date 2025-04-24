---
title: "Tokenize Image Patches: Global Context Fusion for Effective Haze Removal in Large Images"
summary: "DehazeXL: Global context fusion for haze removal in large images."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Beijing Institute of Technology",]
showSummary: true
date: 2025-04-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.09621 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiuchen Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.09621" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.09621" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.09621/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Haze removal in large, high-resolution images is challenging due to GPU memory limitations. Existing methods often resort to image slicing or downsampling, which diminishes global information or discards high-frequency details. Therefore, innovative solutions are needed to efficiently balance global context and local details for effective haze removal in high-resolution imagery.



This paper proposes **DehazeXL**, a novel method that effectively integrates global information interaction with local details extraction, enabling the processing of large images. DehazeXL partitions the input image into patches, encodes them into feature vectors, and utilizes a global attention module for context integration. This approach, combined with a custom visual attribution method and the **8KDehaze dataset**, achieves state-of-the-art haze removal performance with reduced memory usage.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DehazeXL effectively balances global context and local feature extraction for haze removal in large images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Dehazing Attribution Map (DAM) helps identify key features contributing to model performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The 8KDehaze dataset provides a new benchmark for training and evaluating haze removal algorithms on ultra-high-resolution images. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **DehazeXL, a novel method for effective haze removal** in large images. It contributes a large-scale dataset, opening new avenues for dehazing research on high-resolution images and fostering advancements in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2504.09621/x1.png)

> 🔼 Figure 1 illustrates three different approaches to handling large images in the context of haze removal. (a) Downsampling: This method reduces the image resolution to fit within memory constraints. While efficient, it results in a loss of important high-frequency details, reducing image quality. (b) Image Slicing: This technique divides a large image into smaller overlapping patches, processes each individually, and stitches them together. While enabling the processing of larger inputs, it compromises global contextual information and object coherence, leading to artifacts at patch boundaries. (c) DehazeXL (Proposed Method): DehazeXL aims for a balance between global contextual information and local detail preservation. It processes the image in a way that mitigates the drawbacks of both downsampling and slicing, leading to improved performance in high-resolution haze removal.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between different methods for handling large images in haze removal tasks. (a) Downsampling approach, which reduces the image size but loses critical high-frequency details. (b) Image slicing technique, which processes larger inputs but compromises global contextual information and object coherence. (c) The proposed method, which aims to effectively balance global context and local feature extraction to enhance haze removal performance in high-resolution images.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_rr ltx_border_t" id="S4.T1.4.5.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.5.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.5.1.2.1">4KID</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.5.1.3.1">O-HAZY</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.5.1.4.1">8KDehaze</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S4.T1.4.6.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.6.1.1.1">Quantity</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.2" style="padding-left:2.8pt;padding-right:2.8pt;">15606</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.3" style="padding-left:2.8pt;padding-right:2.8pt;">45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">10000</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S4.T1.4.4.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.5.1">Image Size</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">3840 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><times id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">×</annotation></semantics></math> 2160</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.3.3.2">
<tr class="ltx_tr" id="S4.T1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">1286 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.1.1.m1.1"><semantics id="S4.T1.2.2.2.1.1.1.m1.1a"><mo id="S4.T1.2.2.2.1.1.1.m1.1.1" xref="S4.T1.2.2.2.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.1.1.m1.1b"><times id="S4.T1.2.2.2.1.1.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.1.1.m1.1d">×</annotation></semantics></math> 947</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.3.3.2.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">to</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.3.3.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">5436 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.3.3.3.2.2.1.m1.1"><semantics id="S4.T1.3.3.3.2.2.1.m1.1a"><mo id="S4.T1.3.3.3.2.2.1.m1.1.1" xref="S4.T1.3.3.3.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.2.2.1.m1.1b"><times id="S4.T1.3.3.3.2.2.1.m1.1.1.cmml" xref="S4.T1.3.3.3.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.2.2.1.m1.1d">×</annotation></semantics></math> 3612</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;">8192 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.m1.1.1" xref="S4.T1.4.4.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.1b"><times id="S4.T1.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.1d">×</annotation></semantics></math> 8192</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_rr ltx_border_t" id="S4.T1.4.7.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.7.2.1.1">Source</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.2.2" style="padding-left:2.8pt;padding-right:2.8pt;">Video Frames</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.2.3" style="padding-left:2.8pt;padding-right:2.8pt;">Commercial Camera</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.2.4" style="padding-left:2.8pt;padding-right:2.8pt;">Aerial Images</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_rr ltx_border_t" id="S4.T1.4.8.3.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.8.3.1.1">Content</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.8.3.2" style="padding-left:2.8pt;padding-right:2.8pt;">Urban Streets</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.8.3.3" style="padding-left:2.8pt;padding-right:2.8pt;">Parks, Suburban</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.4.8.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.8.3.4.1">
<tr class="ltx_tr" id="S4.T1.4.8.3.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.8.3.4.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">Urban, Farmland,</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.3.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.8.3.4.1.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">Mountains, Desert,</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.3.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.8.3.4.1.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">Coastlines, Rivers</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides a summary of the datasets used in the experiments described in the paper.  It lists the dataset name, the number of images in each dataset, the resolution of images within each dataset, and the source or origin of the data (e.g., video frames, commercial cameras, or aerial imagery). This information allows readers to understand the scope and characteristics of the data used for training and evaluating the proposed haze removal method, DehazeXL, and comparing it to other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of datasets used in the experiments.
> </details>





### In-depth insights


#### Context & Limits
The context of haze removal in large images is driven by applications like surveillance, autonomous navigation, and remote sensing, where image quality is crucial for subsequent tasks. However, processing these images is limited by **GPU memory constraints**, often forcing compromises like slicing (disrupting global context) or downsampling (losing high-frequency details). Existing methods struggle to balance global context and local details effectively, particularly in high-resolution scenarios. Further limitations arise from the **scarcity of ultra-high-resolution datasets**, hindering the development and evaluation of dehazing algorithms. This context underscores the need for memory-efficient methods that preserve both global and local information, along with the creation of suitable datasets for training and benchmarking in the field. Therefore, the focus will be on addressing the efficient global modelling and memory management to achieve state-of-the-art results, and contribute to future researches with the developed dataset.

#### DehazeXL Design
DehazeXL's architecture balances local feature extraction and global context integration for effective haze removal. The encoder extracts local features, while a bottleneck module injects global information, enhancing contextual understanding. The decoder reconstructs the dehazed image. **Crucially, asynchronous processing minimizes memory consumption, enabling large image processing.** The encoder is flexible and can be the Swin Transformer V2, leveraging its hierarchical feature extraction and long-range dependency handling. The bottleneck uses an efficient Transformer block with RMSNorm and Hyper Attention, inspired by LLMs, to minimize memory usage while learning global information like haze distribution and color characteristics. The decoder reconstructs haze-free patches and skips connections which enhance information flow and gradients. **Overall, DehazeXL's design optimizes memory efficiency, contextual awareness, and feature representation for high-quality haze removal in large images.**

#### Attention Matters
**Attention mechanisms are pivotal for image dehazing**, enabling the model to focus on relevant features while suppressing noise and irrelevant information. **Spatial attention** can help the network to selectively attend to hazy regions, while **channel attention** allows the model to prioritize important feature channels. Furthermore, **integrating attention modules** at different scales can capture both fine-grained details and global contextual information, leading to more effective haze removal and improved visual quality. **Employing self-attention** can capture long-range dependencies within the image, crucial for understanding haze distribution and scene structure. By **adaptively weighting** different features based on their relevance, attention mechanisms can improve the robustness and accuracy of dehazing algorithms, resulting in enhanced performance in various real-world scenarios.

#### 8KDehaze Details
The decision to create and release the **8KDehaze dataset** is significant, as it directly addresses a gap in the availability of high-resolution resources for haze removal research. This dataset has **10,000 images at 8192x8192 resolution** sourced from aerial imagery, offering a scale and detail previously unavailable. The use of aerial images is valuable because it ensures the dataset represents real-world scenarios, offering a diverse range of haze distributions and terrains, this helps with rigorous evaluation and training of dehazing algorithms and pushes future advancements. This carefully curated collection should facilitate the training and validation of advanced dehazing models capable of processing large images effectively, which is important for real-world applications.

#### Future Research
Future research in haze removal could significantly benefit from several avenues of exploration. **Advancements in computational efficiency** are crucial, particularly for processing ultra-high-resolution images. Exploring novel network architectures or optimization techniques that further reduce memory consumption and computational demands would enhance the practicality of dehazing models in real-world applications. Further investigation into **incorporating physical priors** and atmospheric scattering models more deeply into deep learning frameworks could lead to more robust and physically plausible dehazing results, potentially reducing artifacts and improving color fidelity. Moreover, research into **domain adaptation and generalization** is essential. Models trained on synthetic data often struggle to generalize to real-world hazy images due to differences in haze characteristics and image quality.  Creating more diverse and representative datasets, as well as developing techniques to bridge the gap between synthetic and real data, would greatly improve the robustness and applicability of dehazing methods. Finally, exploring **perceptual quality metrics** beyond PSNR and SSIM that better correlate with human visual perception could lead to the development of dehazing algorithms that produce more visually pleasing results. Furthermore, investigating the application of these techniques to **video dehazing** presents unique challenges and opportunities for future research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.09621/x2.png)

> 🔼 This figure compares the GPU memory usage of DehazeXL against other state-of-the-art haze removal methods when processing images of varying sizes.  It demonstrates that DehazeXL significantly reduces memory consumption, achieving a 65-80% reduction compared to other methods.  The chart visually shows memory usage in GB for each model at different image resolutions, highlighting DehazeXL's efficiency.  Importantly, it also points out that when using FP16 precision for inference, DehazeXL can handle extremely high-resolution images (10240x10240 pixels) with only 21GB of GPU memory, making it suitable for processing large images on mainstream GPUs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of GPU memory usage across various models. DehazeXL demonstrates a reduction in memory usage by approximately 65%-80% when processing large images compared to other methods. Notably, when employing FP16 format for inference, DehazeXL can process 10,240 ×\times× 10,240 pixel images with only 21 GB of memory.
> </details>



![](https://arxiv.org/html/2504.09621/x3.png)

> 🔼 DehazeXL, the proposed model, processes large hazy images efficiently by dividing them into uniform patches.  These patches are encoded into tokens by the encoder, then a bottleneck module injects global context into each token to improve contextual understanding. A decoder reconstructs the tokens into image patches, ultimately creating the dehazed output image.  To enhance memory efficiency, both the encoder and decoder process mini-batches sequentially, rather than all at once. This method balances efficient memory usage with effective haze removal.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overall architecture of the proposed model. It begins by partitioning the hazy image into uniform-sized patches, which are then encoded into tokens by the Encoder. The Bottleneck injects global information into each token, enhancing the contextual representation. Subsequently, the Decoder reconstructs the tokens back into image patches, forming the final output image. Notably, to minimize memory consumption, both the Encoder and Decoder employ an asynchronous processing strategy, handling the input in multiple mini-batches sequentially rather than simultaneously. This design optimizes memory efficiency while ensuring effective haze removal.
> </details>



![](https://arxiv.org/html/2504.09621/x4.png)

> 🔼 This figure illustrates the concept of Dehazing Attribution Map (DAM), a visual attribution method used to interpret the model's dehazing process. It shows how the DAM computes the attribution map for a specific region (highlighted in red) by integrating the gradients along a path from a baseline image (the clear image) to the input hazy image.  The baseline represents what the model would reconstruct without the specific hazy features, providing a crucial reference for calculating the contribution of each pixel in reconstructing the clear image.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of the baseline image and the path function. The region enclosed by the red box indicates the attribution area.
> </details>



![](https://arxiv.org/html/2504.09621/x5.png)

> 🔼 Figure 5 presents a comparison of dehazing results on images from the 8KDehaze dataset, focusing on patches highlighted by red boxes.  The quantitative metrics PSNR and SSIM are calculated for these patches to better highlight the differences in performance between various dehazing methods.  A key takeaway is that the proposed DehazeXL method can process ultra-high-resolution images (8192x8192 pixels) directly, without needing to split the image into smaller sections ('slicing'), which is a common limitation in other methods.  The comparison shows DehazeXL effectively eliminates artifacts (e.g., segmentation errors) and produces visually superior results compared to other dehazing approaches.
> <details>
> <summary>read the caption</summary>
> Figure 5: Dehazed results on the 8KDehaze dataset. The patches for comparison are marked with red boxes in the original images. PSNR / SSIM is calculated based on the patches to better reflect the performance difference. The proposed DehazeXL can directly infer images with a resolution of 8192 ×\times× 8192 without the need for slicing inference. Compared to other methods, the proposed method effectively eliminates segmentation artifacts and achieves superior visual quality.
> </details>



![](https://arxiv.org/html/2504.09621/x6.png)

> 🔼 Figure 6 presents a comparison of dehazing results on the 4KID dataset [58], a standard benchmark for single image dehazing.  The figure showcases the effectiveness of the proposed DehazeXL method in handling high-resolution images.  It compares DehazeXL's output to those of several other state-of-the-art dehazing techniques. DehazeXL's improved performance is highlighted by its ability to maintain global consistency in the restored image by effectively leveraging global context to guide image restoration across different regions, reducing visual artifacts and improving the overall quality of the dehazed image, unlike other methods that show noticeable artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 6: Dehazed results on the 4KID [58] dataset. The proposed DehazeXL can effectively utilize global information to guide image restoration in different regions, enhancing the global consistency of the output results.
> </details>



![](https://arxiv.org/html/2504.09621/x7.png)

> 🔼 Figure 7 presents a comparison of dehazing results on the O-HAZE dataset [2], showcasing the performance of the proposed DehazeXL model against other state-of-the-art methods. The figure demonstrates DehazeXL's superior ability to restore color fidelity and intricate details in images, highlighting its effectiveness in handling real-world hazy conditions compared to existing techniques.
> <details>
> <summary>read the caption</summary>
> Figure 7: Dehazed results on the O-HAZE [2] dataset. The proposed DehazeXL demonstrates higher color fidelity and restores more details compared with other state-of-the-art methods.
> </details>



![](https://arxiv.org/html/2504.09621/x8.png)

> 🔼 Figure 8 displays a comparison of dehazing results and attribution maps from various methods.  Two example images (1-a and 2-a) highlight specific regions of interest (indicated by red boxes).  The attribution maps visualize the contribution of each pixel to the final dehazed image within these regions. This allows for a detailed analysis of how different methods handle haze removal at a pixel level and provides insights into the effectiveness of global and local information processing in those methods. The figure directly supports the discussion of the Dehazing Attribution Map (DAM) and the model's ability to utilize global context in dehazing.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Comparison of the dehazed results and attribution maps of different methods. The red box on (1-a) and (2-a) indicate the regions of interest for attribution. The attribution maps highlight how each pixel influences the dehazing results in the specified region.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.3.3.2">
<tr class="ltx_tr" id="S4.T1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.2.2.2.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">1286 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.1.1.m1.1"><semantics id="S4.T1.2.2.2.1.1.1.m1.1a"><mo id="S4.T1.2.2.2.1.1.1.m1.1.1" xref="S4.T1.2.2.2.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.1.1.m1.1b"><times id="S4.T1.2.2.2.1.1.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.1.1.m1.1d">×</annotation></semantics></math> 947</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.3.3.2.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">to</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.3.3.3.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">5436 <math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.3.3.3.2.2.1.m1.1"><semantics id="S4.T1.3.3.3.2.2.1.m1.1a"><mo id="S4.T1.3.3.3.2.2.1.m1.1.1" xref="S4.T1.3.3.3.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.2.2.1.m1.1b"><times id="S4.T1.3.3.3.2.2.1.m1.1.1.cmml" xref="S4.T1.3.3.3.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.2.2.1.m1.1d">×</annotation></semantics></math> 3612</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different image dehazing methods on three benchmark datasets: 8KDehaze, 4KID, and O-HAZE.  For each dataset and method, the table reports the Peak Signal-to-Noise Ratio (PSNR), the Structural Similarity Index (SSIM), and the average inference time.  This allows for a comprehensive evaluation of the performance and efficiency of each dehazing algorithm across various image resolutions and types of haze.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative evaluations on the 8KDehaze dataset, the 4KID dataset [58], and the O-HAZE dataset [2] in terms of PSNR, SSIM, and average infer time.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.8.3.4.1">
<tr class="ltx_tr" id="S4.T1.4.8.3.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.8.3.4.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">Urban, Farmland,</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.3.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.8.3.4.1.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">Mountains, Desert,</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.3.4.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.8.3.4.1.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">Coastlines, Rivers</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results for the DehazeXL model, focusing on the impact of different backbone architectures (Swin-T, Swin-S, Swin-B, Swin-L) and bottleneck depths (1, 2, 4) on the model's performance.  The 8KDehaze dataset was used for evaluation.  For each configuration, the table shows the Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and the average inference time. This allows for a comparison of performance and efficiency across various model variations.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study results for Backbone types and Bottleneck depth in DehazeXL on the 8KDehaze dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.09621/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09621/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}