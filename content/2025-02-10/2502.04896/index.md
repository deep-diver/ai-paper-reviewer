---
title: "Goku: Flow Based Video Generative Foundation Models"
summary: "Goku: a novel family of joint image-and-video generation models uses rectified flow Transformers, achieving industry-leading performance with a robust data pipeline and training infrastructure."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-02-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.04896 {{< /keyword >}}
{{< keyword icon="writer" >}} Shoufa Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.04896" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.04896" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.04896/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current video generation models face challenges in producing high-quality, coherent outputs across various applications, especially at scale. Existing methods often struggle with efficiency and the joint modeling of image and video data, limiting their potential.  This research addresses these issues by introducing a novel framework and highlighting the importance of careful data curation and efficient training strategies.

The paper introduces Goku, a family of models that leverage rectified flow Transformers and a comprehensive data processing pipeline to achieve high-quality image and video generation.  **Goku demonstrates superior performance on various benchmarks, outperforming existing state-of-the-art models.** Its innovative architecture, combined with the developed training infrastructure, provides valuable insights and practical advancements for the research community.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Goku achieves state-of-the-art results on multiple image and video generation benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Goku's rectified flow Transformer architecture enables efficient, high-quality multi-modal generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper presents a robust data curation pipeline and training infrastructure optimized for large-scale model training. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in video and image generation because it presents **Goku**, a novel model achieving state-of-the-art results.  **Goku's innovative rectified flow Transformer architecture and data processing pipeline offer valuable insights into efficient, high-quality multi-modal generation.** The work also details a robust training infrastructure optimized for large-scale model training, providing practical guidance for researchers facing similar challenges. This opens up new avenues for research in improving both the quality and efficiency of multi-modal generative models.

------
#### Visual Insights



![](https://arxiv.org/html/2502.04896/x1.png)

> 🔼 This figure displays a collection of images generated from text prompts using the Goku model.  The samples highlight the model's ability to generate diverse and detailed images from a wide range of text descriptions. These examples showcase its capacity for generating high-quality and visually appealing images.
> <details>
> <summary>read the caption</summary>
> (a) Text-to-Image Samples
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.2">
<tr class="ltx_tr" id="S2.T1.2.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.1.1" style="padding:0.75pt 8.0pt;">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.1.2" style="padding:0.75pt 8.0pt;">Layer</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.1.3" style="padding:0.75pt 8.0pt;">Model Dimension</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.1.4" style="padding:0.75pt 8.0pt;">FFN Dimension</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.1.5" style="padding:0.75pt 8.0pt;">Attention Heads</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.1" style="padding:0.75pt 8.0pt;">
<span class="ltx_text" id="S2.T1.2.2.1.1">Goku</span>-1B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.2" style="padding:0.75pt 8.0pt;">28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.3" style="padding:0.75pt 8.0pt;">1152</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.4" style="padding:0.75pt 8.0pt;">4608</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.5" style="padding:0.75pt 8.0pt;">16</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.3">
<td class="ltx_td ltx_align_center" id="S2.T1.2.3.1" style="padding:0.75pt 8.0pt;">
<span class="ltx_text" id="S2.T1.2.3.1.1">Goku</span>-2B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.3.2" style="padding:0.75pt 8.0pt;">28</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.3.3" style="padding:0.75pt 8.0pt;">1792</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.3.4" style="padding:0.75pt 8.0pt;">7168</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.3.5" style="padding:0.75pt 8.0pt;">28</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.4.1" style="padding:0.75pt 8.0pt;">
<span class="ltx_text" id="S2.T1.2.4.1.1">Goku</span>-8B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.4.2" style="padding:0.75pt 8.0pt;">40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.4.3" style="padding:0.75pt 8.0pt;">3072</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.4.4" style="padding:0.75pt 8.0pt;">12288</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.4.5" style="padding:0.75pt 8.0pt;">48</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the architectural configurations of the various Goku models.  It shows the model's layer count, model dimension (embedding size), feed-forward network (FFN) dimension, and number of attention heads.  The sizes of these parameters influence the model's capacity and computational requirements.  The Goku-1B model, with relatively smaller parameters, served primarily as a testbed for pilot experiments in Section 2.3 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Architecture configurations for Goku Models. Goku-1B model is only used for pilot experiments in Section 2.3
> </details>





### In-depth insights


#### Goku's Flow-Based Design
Goku's architecture centers on a novel flow-based approach, specifically rectified flow, integrated with transformer networks. This design is noteworthy for its ability to handle both images and videos within a unified framework, using a 3D joint image-video variational autoencoder (VAE) to compress inputs into a shared latent space. This shared latent space is crucial as it allows for seamless joint training of image and video data, leading to highly coherent and high-quality outputs across both modalities.  **The rectified flow formulation is key**, streamlining the generation process and leading to faster convergence during training. This contrasts with more computationally intensive diffusion-based methods. The use of full attention, despite the computational demands, is also a pivotal design choice. This approach, optimized with techniques like FlashAttention and sequence parallelism, allows the model to capture complex temporal and spatial relationships crucial for generating high-quality videos.  In short, Goku's design elegantly merges advanced architectural components, including rectified flows and transformers, resulting in an efficient and high-performing system for multi-modal visual generation.  **The unified framework** and careful optimization are crucial factors contributing to its success in achieving state-of-the-art performance.

#### Data Curation Pipeline
The 'Data Curation Pipeline' section in this research paper is crucial for understanding the foundation of the Goku model's success.  It highlights the **meticulous approach to data collection and processing**, emphasizing the need for high-quality, large-scale datasets for robust video generation. The pipeline's multi-stage approach involving advanced techniques like **video and image filtering based on aesthetic scores, OCR-driven content analysis, and subjective evaluations** shows a commitment to high quality and contextually relevant data.  The use of multimodal large language models to generate and refine captions demonstrates an understanding of the need for accurate and descriptive textual data. The resulting robust dataset, comprising approximately 36 million video-text and 160 million image-text pairs, is a testament to the scale and quality achieved.  This section underscores the significance of data curation in achieving state-of-the-art results in video generation.  The detailed description of each step, including data collection sources, balancing strategies and filtering criteria, highlights the importance of a carefully designed pipeline to support training of high-performing models.

#### Multi-Stage Training
The proposed multi-stage training strategy for joint image-and-video generation models is a **pragmatic approach** to address the complexity of learning both spatial and temporal dynamics simultaneously.  The initial stage focuses on **establishing a solid understanding of text-to-image relationships**, allowing the model to ground itself in basic visual semantics before tackling the complexities of video. This sequential approach avoids overwhelming the model with multi-modal data early on, improving stability. By first pre-training on image data, a strong foundation is built before introducing video.  **Subsequent stages progressively integrate video data**, building upon this initial understanding, allowing the model to effectively learn temporal dependencies.  The final stage is dedicated to **modality-specific finetuning**, optimizing each modality separately, further enhancing quality. This carefully staged approach of learning is designed to address the resource-intensive nature of video data while leveraging the benefits of both image and video data.  **This staged approach contrasts with single-stage methods**, likely yielding more efficient and robust models.  The strategy is crucial for large-scale model training, enhancing performance and stability.

#### Ablation Study Insights
Ablation studies in the context of a video generation model like Goku would systematically assess the contribution of individual components to the overall performance.  **Model scaling**, for instance, would compare variations with differing numbers of parameters (e.g., 2B vs. 8B).  Insights would reveal whether increased model size translates to improved visual quality and generation fidelity, or if there are diminishing returns.  Investigating **joint image-and-video training** helps determine if this approach, compared to separate training pipelines, enhances temporal coherence, scene consistency, and overall video quality. The results could indicate whether joint training yields superior performance across multiple evaluation metrics.  Analyzing the impact of specific architectural components such as the **Rectified Flow formulation** can provide insights into its efficacy in modeling temporal dependencies and generating high-quality videos.  By removing or modifying elements of the data processing pipeline (e.g., filtering steps, caption generation techniques), researchers can uncover the influence of data quality and textual descriptions on the model's performance. Such studies can reveal how the **data curation pipeline** improves various attributes like semantic consistency and realism. Ultimately, a thorough ablation study would provide critical understanding of the model's strengths, weaknesses, and design choices, facilitating future improvements and development of even more advanced video generation models.

#### Joint Image-Video VAE
The concept of a 'Joint Image-Video VAE' presents a powerful approach to visual data representation, particularly for tasks involving both images and videos.  **By encoding both image and video data into a shared latent space**, this method enables the model to learn unified representations, capturing commonalities and differences between the two modalities. This shared latent space is crucial for efficient and effective joint training, allowing the model to leverage information from both images and videos to improve overall performance.  The effectiveness hinges on the **VAE's ability to compress high-dimensional visual data into a lower-dimensional latent space while preserving essential information**.  Successfully implementing this requires a robust VAE architecture capable of handling the unique challenges of temporal and spatial dependencies inherent in video data. The advantages are considerable; **joint training can lead to more robust and generalized models**, capable of handling diverse visual inputs and generating high-quality outputs for both image and video generation tasks. However, the complexity of designing and training such a model is non-trivial, demanding careful consideration of both architectural design and training strategies to address computational costs and potential overfitting.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.04896/x2.png)

> 🔼 The figure displays several video clips generated by the Goku model in response to text prompts. Each video showcases the model's ability to generate coherent and visually appealing videos based on the given text descriptions. The videos demonstrate a wide range of scenarios and visual styles.
> <details>
> <summary>read the caption</summary>
> (b) Text-to-Video Samples
> </details>



![](https://arxiv.org/html/2502.04896/x3.png)

> 🔼 Figure 1 showcases examples of images and videos generated by the Goku model.  The text-to-image samples demonstrate Goku's ability to generate diverse and high-quality images based on textual descriptions. Similarly, the text-to-video samples highlight Goku's capability to create coherent and detailed videos from textual prompts. Key components of the pipeline responsible for generating these outputs are highlighted in red for emphasis.
> <details>
> <summary>read the caption</summary>
> Figure 1: Generated samples from Goku. Key components are highlighted in RED.
> </details>



![](https://arxiv.org/html/2502.04896/extracted/6186370/figures/label_distribution_bar.png)

> 🔼 This figure illustrates the data processing pipeline used to create the dataset for training the Goku model.  The process begins with collecting large volumes of video and image data from the internet.  Subsequently, these raw data undergo several filtering stages to ensure high quality. This involves video and image filtering to remove low-quality or inappropriate content (e.g., NSFW content), using techniques such as aesthetic score filtering, OCR to eliminate images with excessive text, and motion analysis.  Following this, the pipeline generates captions for both images and videos utilizing a combination of Multimodal Large Language Models (MLLMs) and Large Language Models (LLMs). These captions ensure that the text descriptions are both accurate and descriptive. The final step involves balancing the distribution of the data to correct any biases.
> <details>
> <summary>read the caption</summary>
> Figure 2: The data curation pipeline in Goku. Given a large volume of video/image data collected from Internet, we generate high-quality video/image-text pairs through a series of data filtering, captioning and balancing steps.
> </details>



![](https://arxiv.org/html/2502.04896/x4.png)

> 🔼 The figure shows the distribution of video clips across different semantic categories in the training dataset.  The primary categories are displayed with their respective percentages, illustrating the relative abundance of each category in the dataset. This visualization helps in understanding the dataset's composition and the balance of various themes represented.
> <details>
> <summary>read the caption</summary>
> (a) Semantic distribution of video clips.
> </details>



![](https://arxiv.org/html/2502.04896/x5.png)

> 🔼 This figure is a pie chart that visualizes the balanced distribution of subcategories within the video dataset used for training the Goku model.  The dataset was initially imbalanced, with some categories over-represented and others under-represented.  To address this, the authors implemented data balancing techniques.  This chart shows the resulting balanced distribution after applying these techniques, indicating a more even representation of diverse video content across various subcategories. Each slice of the pie chart represents a subcategory, and the size of the slice corresponds to the proportion of videos belonging to that subcategory in the balanced dataset.
> <details>
> <summary>read the caption</summary>
> (b) The balanced semantic distribution of subcategories.
> </details>



![](https://arxiv.org/html/2502.04896/x6.png)

> 🔼 Figure 3 presents the balanced distribution of video clips across different semantic categories.  Subfigure (a) shows the distribution of primary categories (e.g., human, scenery, animals, food), revealing the relative frequency of each category in the training dataset.  Subfigure (b) breaks down the data further, illustrating the distribution of subcategories within each primary category (e.g., different types of human activities, specific animal breeds, various food items). This balanced distribution is achieved through data curation techniques such as downsampling overrepresented categories and upsampling underrepresented ones.
> <details>
> <summary>read the caption</summary>
> Figure 3: Training data distributions. The balanced semantic distribution of primary categories and subcategories are shown in (a) and (b), respectively.
> </details>



![](https://arxiv.org/html/2502.04896/x7.png)

> 🔼 Figure 4 showcases examples of Goku-I2V (Goku Image-to-Video), a model that generates videos conditioned on a given image and text prompt.  The figure's leftmost column displays the reference images used as input. Each row presents the corresponding text prompt (with key words highlighted in red) and the resulting video frames.  The prompts have been shortened from their original lengths to highlight only essential details, illustrating how Goku-I2V generates videos based on a combination of image and text. The videos effectively combine the reference image with the visual elements described in the text prompt.
> <details>
> <summary>read the caption</summary>
> Figure 4: Samples of Goku-I2V. Reference images are presented in the leftmost columns. We omitted redundant information from the long prompts, displaying only the key details in each one. Key words are highlighted in RED.
> </details>



![](https://arxiv.org/html/2502.04896/x8.png)

> 🔼 This figure presents ablation study results on the impact of model scaling on Goku-T2V.  The left-hand side shows video results from the Goku-T2V(2B) model, which has 2 billion parameters. The right-hand side shows video results from the Goku-T2V(8B) model, which has 8 billion parameters. The goal is to demonstrate that increasing model size (and thus increasing parameters) improves the quality of the generated videos, specifically reducing the occurrence of artifacts such as distorted objects.
> <details>
> <summary>read the caption</summary>
> (a) Model Scaling
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T2.5">
<tr class="ltx_tr" id="S2.T2.5.5">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.5.5.6" style="padding:0.6pt 9.0pt;">Loss</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.5.5.7" style="padding:0.6pt 9.0pt;">Steps</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.1.1.1" style="padding:0.6pt 9.0pt;">FID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T2.1.1.1.m1.1"><semantics id="S2.T2.1.1.1.m1.1a"><mo id="S2.T2.1.1.1.m1.1.1" stretchy="false" xref="S2.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T2.1.1.1.m1.1b"><ci id="S2.T2.1.1.1.m1.1.1.cmml" xref="S2.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.2.2.2" style="padding:0.6pt 9.0pt;">sFID <math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T2.2.2.2.m1.1"><semantics id="S2.T2.2.2.2.m1.1a"><mo id="S2.T2.2.2.2.m1.1.1" stretchy="false" xref="S2.T2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T2.2.2.2.m1.1b"><ci id="S2.T2.2.2.2.m1.1.1.cmml" xref="S2.T2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.3.3.3" style="padding:0.6pt 9.0pt;">IS <math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T2.3.3.3.m1.1"><semantics id="S2.T2.3.3.3.m1.1a"><mo id="S2.T2.3.3.3.m1.1.1" stretchy="false" xref="S2.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T2.3.3.3.m1.1b"><ci id="S2.T2.3.3.3.m1.1.1.cmml" xref="S2.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.4.4.4" style="padding:0.6pt 9.0pt;">Precision <math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T2.4.4.4.m1.1"><semantics id="S2.T2.4.4.4.m1.1a"><mo id="S2.T2.4.4.4.m1.1.1" stretchy="false" xref="S2.T2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T2.4.4.4.m1.1b"><ci id="S2.T2.4.4.4.m1.1.1.cmml" xref="S2.T2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.5.5.5" style="padding:0.6pt 9.0pt;">Recall <math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T2.5.5.5.m1.1"><semantics id="S2.T2.5.5.5.m1.1a"><mo id="S2.T2.5.5.5.m1.1.1" stretchy="false" xref="S2.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T2.5.5.5.m1.1b"><ci id="S2.T2.5.5.5.m1.1.1.cmml" xref="S2.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T2.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.6.1" style="padding:0.6pt 9.0pt;">DDPM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.6.2" style="padding:0.6pt 9.0pt;">200k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.6.3" style="padding:0.6pt 9.0pt;">3.0795</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.6.4" style="padding:0.6pt 9.0pt;">4.3498</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.6.5" style="padding:0.6pt 9.0pt;">226.4783</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.6.6" style="padding:0.6pt 9.0pt;">0.8387</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.6.7" style="padding:0.6pt 9.0pt;">0.5317</td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.7">
<td class="ltx_td ltx_align_center" id="S2.T2.5.7.1" style="padding:0.6pt 9.0pt;">DDPM</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.7.2" style="padding:0.6pt 9.0pt;">400k</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.7.3" style="padding:0.6pt 9.0pt;">2.5231</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.7.4" style="padding:0.6pt 9.0pt;">4.3821</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.7.5" style="padding:0.6pt 9.0pt;">265.0612</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.7.6" style="padding:0.6pt 9.0pt;">0.8399</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.7.7" style="padding:0.6pt 9.0pt;">0.5591</td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.8">
<td class="ltx_td ltx_align_center" id="S2.T2.5.8.1" style="padding:0.6pt 9.0pt;">DDPM</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.8.2" style="padding:0.6pt 9.0pt;">1000k</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.8.3" style="padding:0.6pt 9.0pt;">2.2568</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.8.4" style="padding:0.6pt 9.0pt;">4.4887</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.8.5" style="padding:0.6pt 9.0pt;">286.5601</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.8.6" style="padding:0.6pt 9.0pt;">0.8319</td>
<td class="ltx_td ltx_align_center" id="S2.T2.5.8.7" style="padding:0.6pt 9.0pt;">0.5849</td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.9.1" style="padding:0.6pt 9.0pt;">Rectified Flow</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.9.2" style="padding:0.6pt 9.0pt;">200k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.9.3" style="padding:0.6pt 9.0pt;">2.7472</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.9.4" style="padding:0.6pt 9.0pt;">4.6416</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.9.5" style="padding:0.6pt 9.0pt;">232.3090</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.9.6" style="padding:0.6pt 9.0pt;">0.8239</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.5.9.7" style="padding:0.6pt 9.0pt;">0.5590</td>
</tr>
<tr class="ltx_tr" id="S2.T2.5.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.5.10.1" style="padding:0.6pt 9.0pt;">Rectified Flow</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.5.10.2" style="padding:0.6pt 9.0pt;">400k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.5.10.3" style="padding:0.6pt 9.0pt;">2.1572</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.5.10.4" style="padding:0.6pt 9.0pt;">4.5022</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.5.10.5" style="padding:0.6pt 9.0pt;">261.1203</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.5.10.6" style="padding:0.6pt 9.0pt;">0.8210</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.5.10.7" style="padding:0.6pt 9.0pt;">0.5871</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of two training methods, Rectified Flow and Denoising Diffusion Probabilistic Model (DDPM), on the task of class-conditional image generation using the ImageNet dataset with 256x256 resolution images.  The metrics used to evaluate performance include FID (Fréchet Inception Distance),  SFID (modified FID), IS (Inception Score), precision, and recall. The table shows the values of these metrics for both methods at different training steps (200k, 400k, and 1000k).  The key takeaway is that Rectified Flow demonstrates significantly faster convergence towards better performance (lower FID and SFID, higher IS) than DDPM.
> <details>
> <summary>read the caption</summary>
> Table 2: Proof-of-concept experiments of class-conditional generation on ImageNet 256×\times×256. Rectified flow achieves faster convergency compared to DDPM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.5">
<tr class="ltx_tr" id="S4.T3.5.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.5.6.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.5.6.1.1">
<span class="ltx_p" id="S4.T3.5.6.1.1.1">Parameter</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.5.6.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.5.6.2.1">
<span class="ltx_p" id="S4.T3.5.6.2.1.1">Description</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.5.6.3" style="width:151.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.5.6.3.1">
<span class="ltx_p" id="S4.T3.5.6.3.1.1">Threshold</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.2.1.1">Duration</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.1">
<span class="ltx_p" id="S4.T3.1.1.3.1.1">Raw video length</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.1" style="width:151.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.1"><math alttext="\geq" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><geq id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">≥</annotation></semantics></math> 4 seconds</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.3.3" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.3.1">
<span class="ltx_p" id="S4.T3.3.3.3.1.1">Resolution</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.3.4" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.4.1">
<span class="ltx_p" id="S4.T3.3.3.4.1.1">Width and height of the video</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.3.3.2" style="width:151.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.2.2">
<span class="ltx_p" id="S4.T3.3.3.2.2.2"><math alttext="min" class="ltx_Math" display="inline" id="S4.T3.2.2.1.1.1.m1.1"><semantics id="S4.T3.2.2.1.1.1.m1.1a"><mrow id="S4.T3.2.2.1.1.1.m1.1.1" xref="S4.T3.2.2.1.1.1.m1.1.1.cmml"><mi id="S4.T3.2.2.1.1.1.m1.1.1.2" xref="S4.T3.2.2.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T3.2.2.1.1.1.m1.1.1.1" xref="S4.T3.2.2.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.2.2.1.1.1.m1.1.1.3" xref="S4.T3.2.2.1.1.1.m1.1.1.3.cmml">i</mi><mo id="S4.T3.2.2.1.1.1.m1.1.1.1a" xref="S4.T3.2.2.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.2.2.1.1.1.m1.1.1.4" xref="S4.T3.2.2.1.1.1.m1.1.1.4.cmml">n</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.1.1.m1.1b"><apply id="S4.T3.2.2.1.1.1.m1.1.1.cmml" xref="S4.T3.2.2.1.1.1.m1.1.1"><times id="S4.T3.2.2.1.1.1.m1.1.1.1.cmml" xref="S4.T3.2.2.1.1.1.m1.1.1.1"></times><ci id="S4.T3.2.2.1.1.1.m1.1.1.2.cmml" xref="S4.T3.2.2.1.1.1.m1.1.1.2">𝑚</ci><ci id="S4.T3.2.2.1.1.1.m1.1.1.3.cmml" xref="S4.T3.2.2.1.1.1.m1.1.1.3">𝑖</ci><ci id="S4.T3.2.2.1.1.1.m1.1.1.4.cmml" xref="S4.T3.2.2.1.1.1.m1.1.1.4">𝑛</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.1.1.m1.1c">min</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.1.1.m1.1d">italic_m italic_i italic_n</annotation></semantics></math>{ height, width} <math alttext="\geq" class="ltx_Math" display="inline" id="S4.T3.3.3.2.2.2.m2.1"><semantics id="S4.T3.3.3.2.2.2.m2.1a"><mo id="S4.T3.3.3.2.2.2.m2.1.1" xref="S4.T3.3.3.2.2.2.m2.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.2.2.2.m2.1b"><geq id="S4.T3.3.3.2.2.2.m2.1.1.cmml" xref="S4.T3.3.3.2.2.2.m2.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.2.2.2.m2.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.2.2.2.m2.1d">≥</annotation></semantics></math> 480</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.4.4.2" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.2.1">
<span class="ltx_p" id="S4.T3.4.4.2.1.1">Bitrate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.4.4.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.3.1">
<span class="ltx_p" id="S4.T3.4.4.3.1.1">Amount of data processed per second during playback, which impacts the video’s quality, clarity, and file size</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.4.4.1" style="width:151.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.1.1">
<span class="ltx_p" id="S4.T3.4.4.1.1.1"><math alttext="\geq" class="ltx_Math" display="inline" id="S4.T3.4.4.1.1.1.m1.1"><semantics id="S4.T3.4.4.1.1.1.m1.1a"><mo id="S4.T3.4.4.1.1.1.m1.1.1" xref="S4.T3.4.4.1.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.1.1.m1.1b"><geq id="S4.T3.4.4.1.1.1.m1.1.1.cmml" xref="S4.T3.4.4.1.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.1.1.m1.1d">≥</annotation></semantics></math> 500 kbps</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.5.5.2" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.5.5.2.1">
<span class="ltx_p" id="S4.T3.5.5.2.1.1">Frame Rate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.5.5.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.5.5.3.1">
<span class="ltx_p" id="S4.T3.5.5.3.1.1">Frames displayed per second</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S4.T3.5.5.1" style="width:151.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.5.5.1.1">
<span class="ltx_p" id="S4.T3.5.5.1.1.1"><math alttext="\geq" class="ltx_Math" display="inline" id="S4.T3.5.5.1.1.1.m1.1"><semantics id="S4.T3.5.5.1.1.1.m1.1a"><mo id="S4.T3.5.5.1.1.1.m1.1.1" xref="S4.T3.5.5.1.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.1.1.m1.1b"><geq id="S4.T3.5.5.1.1.1.m1.1.1.cmml" xref="S4.T3.5.5.1.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.1.1.m1.1d">≥</annotation></semantics></math> 24 FPS (Film Standard) / 23.976 FPS (NTSC Standard)</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 details the criteria for filtering and standardizing raw video data to ensure data quality and consistency for training the Goku model.  It outlines specific thresholds for several key video parameters: Duration (minimum video length), Resolution (minimum dimensions), Bitrate (data processed per second impacting video quality), and Frame Rate (frames per second).  These thresholds help filter out low-quality, inconsistent, or unsuitable videos before model training.
> <details>
> <summary>read the caption</summary>
> Table 3: Summary of video quality parameters and their thresholds for preprocessing. The table outlines the criteria used to filter and standardize raw videos based on essential attributes, ensuring uniformity and compatibility in the dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.18">
<tr class="ltx_tr" id="S4.T4.18.19">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.18.19.1" style="padding:0.6pt 5.0pt;">Stage</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.18.19.2" style="padding:0.6pt 5.0pt;">Amount</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.18.19.3" style="padding:0.6pt 5.0pt;">Resolution</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.18.19.4" style="padding:0.6pt 5.0pt;">DINO-Sim.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.18.19.5" style="padding:0.6pt 5.0pt;">Aesthetic</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.18.19.6" style="padding:0.6pt 5.0pt;">OCR</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.18.19.7" style="padding:0.6pt 5.0pt;">Motion</td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.7" style="padding:0.6pt 5.0pt;">480p</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.8" style="padding:0.6pt 5.0pt;">36M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" xref="S4.T4.1.1.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><geq id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">≥</annotation></semantics></math> 480<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m2.1"><semantics id="S4.T4.2.2.2.m2.1a"><mo id="S4.T4.2.2.2.m2.1.1" xref="S4.T4.2.2.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m2.1b"><times id="S4.T4.2.2.2.m2.1.1.cmml" xref="S4.T4.2.2.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m2.1d">×</annotation></semantics></math>864</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" xref="S4.T4.3.3.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><geq id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">≥</annotation></semantics></math>0.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.m1.1.1" xref="S4.T4.4.4.4.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><geq id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">≥</annotation></semantics></math> 4.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.9" style="padding:0.6pt 5.0pt;">&lt;= 0.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6" style="padding:0.6pt 5.0pt;">0.3 <math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><mo id="S4.T4.5.5.5.m1.1.1" xref="S4.T4.5.5.5.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><leq id="S4.T4.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">≤</annotation></semantics></math> score <math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.6.6.6.m2.1"><semantics id="S4.T4.6.6.6.m2.1a"><mo id="S4.T4.6.6.6.m2.1.1" xref="S4.T4.6.6.6.m2.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.m2.1b"><leq id="S4.T4.6.6.6.m2.1.1.cmml" xref="S4.T4.6.6.6.m2.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.m2.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.m2.1d">≤</annotation></semantics></math> 20.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.12.12">
<td class="ltx_td ltx_align_center" id="S4.T4.12.12.7" style="padding:0.6pt 5.0pt;">720p</td>
<td class="ltx_td ltx_align_center" id="S4.T4.12.12.8" style="padding:0.6pt 5.0pt;">24M</td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.2" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.7.7.1.m1.1"><semantics id="S4.T4.7.7.1.m1.1a"><mo id="S4.T4.7.7.1.m1.1.1" xref="S4.T4.7.7.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.1.m1.1b"><geq id="S4.T4.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.1.m1.1d">≥</annotation></semantics></math> 720<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.8.8.2.m2.1"><semantics id="S4.T4.8.8.2.m2.1a"><mo id="S4.T4.8.8.2.m2.1.1" xref="S4.T4.8.8.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.2.m2.1b"><times id="S4.T4.8.8.2.m2.1.1.cmml" xref="S4.T4.8.8.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.2.m2.1d">×</annotation></semantics></math>1280</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.3" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.9.9.3.m1.1"><semantics id="S4.T4.9.9.3.m1.1a"><mo id="S4.T4.9.9.3.m1.1.1" xref="S4.T4.9.9.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.3.m1.1b"><geq id="S4.T4.9.9.3.m1.1.1.cmml" xref="S4.T4.9.9.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.3.m1.1d">≥</annotation></semantics></math>0.90</td>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.4" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.10.10.4.m1.1"><semantics id="S4.T4.10.10.4.m1.1a"><mo id="S4.T4.10.10.4.m1.1.1" xref="S4.T4.10.10.4.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.4.m1.1b"><geq id="S4.T4.10.10.4.m1.1.1.cmml" xref="S4.T4.10.10.4.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.4.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.4.m1.1d">≥</annotation></semantics></math> 4.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.12.12.9" style="padding:0.6pt 5.0pt;">&lt;= 0.01</td>
<td class="ltx_td ltx_align_center" id="S4.T4.12.12.6" style="padding:0.6pt 5.0pt;">0.5 <math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.11.11.5.m1.1"><semantics id="S4.T4.11.11.5.m1.1a"><mo id="S4.T4.11.11.5.m1.1.1" xref="S4.T4.11.11.5.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.5.m1.1b"><leq id="S4.T4.11.11.5.m1.1.1.cmml" xref="S4.T4.11.11.5.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.5.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.5.m1.1d">≤</annotation></semantics></math> score <math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.12.12.6.m2.1"><semantics id="S4.T4.12.12.6.m2.1a"><mo id="S4.T4.12.12.6.m2.1.1" xref="S4.T4.12.12.6.m2.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.12.12.6.m2.1b"><leq id="S4.T4.12.12.6.m2.1.1.cmml" xref="S4.T4.12.12.6.m2.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.12.12.6.m2.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.12.12.6.m2.1d">≤</annotation></semantics></math> 15.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.18.18">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.18.18.7" style="padding:0.6pt 5.0pt;">1080p</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.18.18.8" style="padding:0.6pt 5.0pt;">7M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.14.14.2" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.13.13.1.m1.1"><semantics id="S4.T4.13.13.1.m1.1a"><mo id="S4.T4.13.13.1.m1.1.1" xref="S4.T4.13.13.1.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.13.13.1.m1.1b"><geq id="S4.T4.13.13.1.m1.1.1.cmml" xref="S4.T4.13.13.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.13.13.1.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.13.13.1.m1.1d">≥</annotation></semantics></math> 1080<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.14.14.2.m2.1"><semantics id="S4.T4.14.14.2.m2.1a"><mo id="S4.T4.14.14.2.m2.1.1" xref="S4.T4.14.14.2.m2.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.14.14.2.m2.1b"><times id="S4.T4.14.14.2.m2.1.1.cmml" xref="S4.T4.14.14.2.m2.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.14.14.2.m2.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.14.14.2.m2.1d">×</annotation></semantics></math>1920</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.15.15.3" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.15.15.3.m1.1"><semantics id="S4.T4.15.15.3.m1.1a"><mo id="S4.T4.15.15.3.m1.1.1" xref="S4.T4.15.15.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.15.15.3.m1.1b"><geq id="S4.T4.15.15.3.m1.1.1.cmml" xref="S4.T4.15.15.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.15.15.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.15.15.3.m1.1d">≥</annotation></semantics></math>0.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.16.16.4" style="padding:0.6pt 5.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="S4.T4.16.16.4.m1.1"><semantics id="S4.T4.16.16.4.m1.1a"><mo id="S4.T4.16.16.4.m1.1.1" xref="S4.T4.16.16.4.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="S4.T4.16.16.4.m1.1b"><geq id="S4.T4.16.16.4.m1.1.1.cmml" xref="S4.T4.16.16.4.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.16.16.4.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.16.16.4.m1.1d">≥</annotation></semantics></math> 4.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.18.18.9" style="padding:0.6pt 5.0pt;">&lt;= 0.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.18.18.6" style="padding:0.6pt 5.0pt;">0.5 <math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.17.17.5.m1.1"><semantics id="S4.T4.17.17.5.m1.1a"><mo id="S4.T4.17.17.5.m1.1.1" xref="S4.T4.17.17.5.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.17.17.5.m1.1b"><leq id="S4.T4.17.17.5.m1.1.1.cmml" xref="S4.T4.17.17.5.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.17.17.5.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.17.17.5.m1.1d">≤</annotation></semantics></math> score <math alttext="\leq" class="ltx_Math" display="inline" id="S4.T4.18.18.6.m2.1"><semantics id="S4.T4.18.18.6.m2.1a"><mo id="S4.T4.18.18.6.m2.1.1" xref="S4.T4.18.18.6.m2.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S4.T4.18.18.6.m2.1b"><leq id="S4.T4.18.18.6.m2.1.1.cmml" xref="S4.T4.18.18.6.m2.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.18.18.6.m2.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S4.T4.18.18.6.m2.1d">≤</annotation></semantics></math> 8.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 details the dataset filtering process for a multi-stage video and image training pipeline.  It outlines the thresholds applied at each stage for various quality metrics, including resolution, DINO similarity score (a measure of visual similarity), aesthetic score (subjective assessment of visual appeal), OCR text coverage (proportion of text detected), and motion score (degree of motion in video clips). The table shows how these thresholds were used to filter the data and the amount of data remaining after each filtering step for different resolution categories (480p, 720p, 1080p). This provides a quantitative understanding of data selection criteria and resulting dataset characteristics.
> <details>
> <summary>read the caption</summary>
> Table 4: Overview of multi-stage training data.This table summarizes the thresholds for each filtering criterion, including resolution, DINO similarity, aesthetic score, OCR text coverage, motion score, and the corresponding data quantities.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.15">
<tr class="ltx_tr" id="S5.T5.15.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S5.T5.15.16.1" rowspan="2" style="padding:0.6pt 1.5pt;"><span class="ltx_text" id="S5.T5.15.16.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_tt" id="S5.T5.15.16.2" style="padding:0.6pt 1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.15.16.3" style="padding:0.6pt 1.5pt;">GenEval</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T5.15.16.4" style="padding:0.6pt 1.5pt;">T2I-CompBench</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S5.T5.15.16.5" style="padding:0.6pt 1.5pt;">DPG-Bench</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.17.1" style="padding:0.6pt 1.5pt;">Text Enc.</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.17.2" style="padding:0.6pt 1.5pt;">Overall</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.17.3" style="padding:0.6pt 1.5pt;">Color</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.17.4" style="padding:0.6pt 1.5pt;">Shape</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.17.5" style="padding:0.6pt 1.5pt;">Texture</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.17.6" style="padding:0.6pt 1.5pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.15.18.1" style="padding:0.6pt 1.5pt;">SDv1.5 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib65" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.15.18.2" style="padding:0.6pt 1.5pt;">CLIP ViT-L/14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.15.18.3" style="padding:0.6pt 1.5pt;">0.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.15.18.4" style="padding:0.6pt 1.5pt;">0.3730</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.15.18.5" style="padding:0.6pt 1.5pt;">0.3646</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.15.18.6" style="padding:0.6pt 1.5pt;">0.4219</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.15.18.7" style="padding:0.6pt 1.5pt;">63.18</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.19.1" style="padding:0.6pt 1.5pt;">DALL-E 2 <cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib64" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.19.2" style="padding:0.6pt 1.5pt;">CLIP ViT-H/16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.19.3" style="padding:0.6pt 1.5pt;">0.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.19.4" style="padding:0.6pt 1.5pt;">0.5750</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.19.5" style="padding:0.6pt 1.5pt;">0.5464</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.19.6" style="padding:0.6pt 1.5pt;">0.6374</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.19.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.20.1" style="padding:0.6pt 1.5pt;">SDv2.1 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib65" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.20.2" style="padding:0.6pt 1.5pt;">CLIP ViT-H/14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.20.3" style="padding:0.6pt 1.5pt;">0.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.20.4" style="padding:0.6pt 1.5pt;">0.5694</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.20.5" style="padding:0.6pt 1.5pt;">0.4495</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.20.6" style="padding:0.6pt 1.5pt;">0.4982</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.20.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.21.1" style="padding:0.6pt 1.5pt;">SDX <cite class="ltx_cite ltx_citemacro_citep">(Podell et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib61" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.21.2" style="padding:0.6pt 1.5pt;">CLIP ViT-bigG</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.21.3" style="padding:0.6pt 1.5pt;">0.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.21.4" style="padding:0.6pt 1.5pt;">0.6369</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.21.5" style="padding:0.6pt 1.5pt;">0.5408</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.21.6" style="padding:0.6pt 1.5pt;">0.5637</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.21.7" style="padding:0.6pt 1.5pt;">74.65</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.1.1.1" style="padding:0.6pt 1.5pt;">PixArt-<math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mi id="S5.T5.1.1.1.m1.1.1" xref="S5.T5.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">italic_α</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_citep">(Chen et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib11" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.1.1.2" style="padding:0.6pt 1.5pt;">Flan-T5-XXL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.1.1.3" style="padding:0.6pt 1.5pt;">0.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.1.1.4" style="padding:0.6pt 1.5pt;">0.6886</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.1.1.5" style="padding:0.6pt 1.5pt;">0.5582</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.1.1.6" style="padding:0.6pt 1.5pt;">0.7044</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.1.1.7" style="padding:0.6pt 1.5pt;">71.11</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.6.6.6" style="padding:0.6pt 1.5pt;">DALL-E 3 <cite class="ltx_cite ltx_citemacro_citep">(Betker et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib5" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.6.6.7" style="padding:0.6pt 1.5pt;">Flan-T5-XXL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.2.2.1" style="padding:0.6pt 1.5pt;">  0.67<sup class="ltx_sup" id="S5.T5.2.2.1.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.3.3.2" style="padding:0.6pt 1.5pt;">0.8110<sup class="ltx_sup" id="S5.T5.3.3.2.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.4.4.3" style="padding:0.6pt 1.5pt;">0.6750<sup class="ltx_sup" id="S5.T5.4.4.3.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.5.5.4" style="padding:0.6pt 1.5pt;">0.8070<sup class="ltx_sup" id="S5.T5.5.5.4.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.6.6.5" style="padding:0.6pt 1.5pt;">83.50<sup class="ltx_sup" id="S5.T5.6.6.5.1">†</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.22.1" style="padding:0.6pt 1.5pt;">GenTron <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib12" title="">Chen et al., 2024a, </a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.22.2" style="padding:0.6pt 1.5pt;">CLIP T5XXL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.22.3" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.22.4" style="padding:0.6pt 1.5pt;">0.7674</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.22.5" style="padding:0.6pt 1.5pt;">0.5700</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.22.6" style="padding:0.6pt 1.5pt;">0.7150</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.22.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.23.1" style="padding:0.6pt 1.5pt;">SD3 <cite class="ltx_cite ltx_citemacro_citep">(Esser et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib25" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.23.2" style="padding:0.6pt 1.5pt;">Flan-T5-XXL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.23.3" style="padding:0.6pt 1.5pt;">0.74</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.23.4" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.23.5" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.23.6" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.23.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.24.1" style="padding:0.6pt 1.5pt;">Show-o <cite class="ltx_cite ltx_citemacro_citep">(Xie et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib86" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.24.2" style="padding:0.6pt 1.5pt;">Phi-1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.24.3" style="padding:0.6pt 1.5pt;">0.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.24.4" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.24.5" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.24.6" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.24.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.25.1" style="padding:0.6pt 1.5pt;">Transfusion <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib96" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.25.2" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.25.3" style="padding:0.6pt 1.5pt;">0.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.25.4" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.25.5" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.25.6" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.25.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.26.1" style="padding:0.6pt 1.5pt;">Chameleon <cite class="ltx_cite ltx_citemacro_citep">(Lu et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib54" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.26.2" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.26.3" style="padding:0.6pt 1.5pt;">0.39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.26.4" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.26.5" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.26.6" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.26.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.15.27.1" style="padding:0.6pt 1.5pt;">LlamaGen <cite class="ltx_cite ltx_citemacro_citep">(Sun et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib73" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.27.2" style="padding:0.6pt 1.5pt;">FLAN-T5 XL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.27.3" style="padding:0.6pt 1.5pt;">0.32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.27.4" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.27.5" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.15.27.6" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.15.27.7" style="padding:0.6pt 1.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S5.T5.10.10.5" style="padding:0.6pt 1.5pt;">Emu 3 <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib81" title="">Wang et al., 2024b, </a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.10.10.6" style="padding:0.6pt 1.5pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.7.7.1" style="padding:0.6pt 1.5pt;">  0.66<sup class="ltx_sup" id="S5.T5.7.7.1.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.8.8.2" style="padding:0.6pt 1.5pt;">0.7913<sup class="ltx_sup" id="S5.T5.8.8.2.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.9.9.3" style="padding:0.6pt 1.5pt;">0.5846<sup class="ltx_sup" id="S5.T5.9.9.3.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S5.T5.10.10.4" style="padding:0.6pt 1.5pt;">0.7422<sup class="ltx_sup" id="S5.T5.10.10.4.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T5.10.10.7" style="padding:0.6pt 1.5pt;">80.60</td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.15.28.1" style="padding:0.6pt 1.5pt;">
<span class="ltx_text" id="S5.T5.15.28.1.1">Goku</span>-T2I (2B)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.15.28.2" rowspan="2" style="padding:0.6pt 1.5pt;"><span class="ltx_text" id="S5.T5.15.28.2.1">FLAN-T5 XL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.15.28.3" style="padding:0.6pt 1.5pt;">0.70</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.15.28.4" style="padding:0.6pt 1.5pt;">0.7521</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.15.28.5" style="padding:0.6pt 1.5pt;">0.4832</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.15.28.6" style="padding:0.6pt 1.5pt;">0.6691</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.15.28.7" rowspan="2" style="padding:0.6pt 1.5pt;"><span class="ltx_text" id="S5.T5.15.28.7.1">83.65</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.15.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S5.T5.11.11.1" style="padding:0.6pt 1.5pt;">
<span class="ltx_text" id="S5.T5.11.11.1.1">Goku</span>-T2I (2B)<sup class="ltx_sup" id="S5.T5.11.11.1.2">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.12.12.2" style="padding:0.6pt 1.5pt;">0.76<sup class="ltx_sup" id="S5.T5.12.12.2.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T5.13.13.3" style="padding:0.6pt 1.5pt;">0.7561<sup class="ltx_sup" id="S5.T5.13.13.3.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T5.14.14.4" style="padding:0.6pt 1.5pt;">0.5759<sup class="ltx_sup" id="S5.T5.14.14.4.1">†</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S5.T5.15.15.5" style="padding:0.6pt 1.5pt;">0.7071<sup class="ltx_sup" id="S5.T5.15.15.5.1">†</sup>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparative analysis of Goku-T2I's performance against other state-of-the-art image generation models across three widely recognized benchmarks: GenEval, T2I-CompBench, and DPG-Bench.  GenEval assesses overall image quality and alignment with the text prompt. T2I-CompBench evaluates the model's ability to generate images with accurate color, shape, and texture, as specified in the prompts.  DPG-Bench tests the model's performance on complex, detailed prompts.  The table indicates results obtained using both original prompts and, where applicable (marked with †), prompts that have been rewritten to enhance clarity and detail.  The comparison highlights Goku-T2I's strengths in achieving high-quality image generation and alignment with the given text prompts.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison with state-of-the-art models on image generation benchmarks. We evaluate on GenEval (Ghosh et al.,, 2024); T2I-CompBench (Huang et al.,, 2023) and DPG-Bench (Hu et al.,, 2024). Following  (Wang et al., 2024b, ), we use † to indicate the result with prompt rewriting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.14">
<tr class="ltx_tr" id="S5.T6.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T6.2.2.3" style="padding:0.6pt 8.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.2.4" style="padding:0.6pt 8.0pt;">Resolution</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1" style="padding:0.6pt 8.0pt;">FVD (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T6.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.m1.1a"><mo id="S5.T6.1.1.1.m1.1.1" stretchy="false" xref="S5.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.m1.1b"><ci id="S5.T6.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.m1.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.2.2" style="padding:0.6pt 8.0pt;">IS (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T6.2.2.2.m1.1"><semantics id="S5.T6.2.2.2.m1.1a"><mo id="S5.T6.2.2.2.m1.1.1" stretchy="false" xref="S5.T6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.m1.1b"><ci id="S5.T6.2.2.2.m1.1.1.cmml" xref="S5.T6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.m1.1d">↑</annotation></semantics></math> )</td>
</tr>
<tr class="ltx_tr" id="S5.T6.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.3.3.2" style="padding:0.6pt 8.0pt;">CogVideo (Chinese) <cite class="ltx_cite ltx_citemacro_citep">(Hong et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib37" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.3.1" style="padding:0.6pt 8.0pt;">480<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.3.3.1.m1.1"><semantics id="S5.T6.3.3.1.m1.1a"><mo id="S5.T6.3.3.1.m1.1.1" xref="S5.T6.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.1.m1.1b"><times id="S5.T6.3.3.1.m1.1.1.cmml" xref="S5.T6.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.1.m1.1d">×</annotation></semantics></math>480</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.3.3" style="padding:0.6pt 8.0pt;">751.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.3.3.4" style="padding:0.6pt 8.0pt;">23.55</td>
</tr>
<tr class="ltx_tr" id="S5.T6.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.4.4.2" style="padding:0.6pt 8.0pt;">CogVideo (English) <cite class="ltx_cite ltx_citemacro_citep">(Hong et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib37" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.1" style="padding:0.6pt 8.0pt;">480<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.4.4.1.m1.1"><semantics id="S5.T6.4.4.1.m1.1a"><mo id="S5.T6.4.4.1.m1.1.1" xref="S5.T6.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.1.m1.1b"><times id="S5.T6.4.4.1.m1.1.1.cmml" xref="S5.T6.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.1.m1.1d">×</annotation></semantics></math>480</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.3" style="padding:0.6pt 8.0pt;">701.59</td>
<td class="ltx_td ltx_align_center" id="S5.T6.4.4.4" style="padding:0.6pt 8.0pt;">25.27</td>
</tr>
<tr class="ltx_tr" id="S5.T6.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.5.5.2" style="padding:0.6pt 8.0pt;">Make-A-Video <cite class="ltx_cite ltx_citemacro_citep">(Singer et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib69" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.1" style="padding:0.6pt 8.0pt;">256<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.5.5.1.m1.1"><semantics id="S5.T6.5.5.1.m1.1a"><mo id="S5.T6.5.5.1.m1.1.1" xref="S5.T6.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.5.5.1.m1.1b"><times id="S5.T6.5.5.1.m1.1.1.cmml" xref="S5.T6.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.5.5.1.m1.1d">×</annotation></semantics></math>256</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.3" style="padding:0.6pt 8.0pt;">367.23</td>
<td class="ltx_td ltx_align_center" id="S5.T6.5.5.4" style="padding:0.6pt 8.0pt;">33.00</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.14.15.1" style="padding:0.6pt 8.0pt;">VideoLDM <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib7" title="">Blattmann et al., 2023b, </a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.15.2" style="padding:0.6pt 8.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.15.3" style="padding:0.6pt 8.0pt;">550.61</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.15.4" style="padding:0.6pt 8.0pt;">33.45</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.6.6.2" style="padding:0.6pt 8.0pt;">LVDM <cite class="ltx_cite ltx_citemacro_citep">(He et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib33" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.1" style="padding:0.6pt 8.0pt;">256<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.6.6.1.m1.1"><semantics id="S5.T6.6.6.1.m1.1a"><mo id="S5.T6.6.6.1.m1.1.1" xref="S5.T6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.6.6.1.m1.1b"><times id="S5.T6.6.6.1.m1.1.1.cmml" xref="S5.T6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.6.6.1.m1.1d">×</annotation></semantics></math>256</td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.3" style="padding:0.6pt 8.0pt;">372.00</td>
<td class="ltx_td ltx_align_center" id="S5.T6.6.6.4" style="padding:0.6pt 8.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.14.16.1" style="padding:0.6pt 8.0pt;">MagicVideo <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib97" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.16.2" style="padding:0.6pt 8.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.16.3" style="padding:0.6pt 8.0pt;">655.00</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.16.4" style="padding:0.6pt 8.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.14.17.1" style="padding:0.6pt 8.0pt;">PixelDance <cite class="ltx_cite ltx_citemacro_citep">(Zeng et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib91" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.17.2" style="padding:0.6pt 8.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.17.3" style="padding:0.6pt 8.0pt;">242.82</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.17.4" style="padding:0.6pt 8.0pt;">42.10</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.14.18.1" style="padding:0.6pt 8.0pt;">PYOCO <cite class="ltx_cite ltx_citemacro_citep">(Ge et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib27" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.18.2" style="padding:0.6pt 8.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.18.3" style="padding:0.6pt 8.0pt;">355.19</td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.18.4" style="padding:0.6pt 8.0pt;">47.76</td>
</tr>
<tr class="ltx_tr" id="S5.T6.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.7.7.2" style="padding:0.6pt 8.0pt;">Emu-Video <cite class="ltx_cite ltx_citemacro_citep">(Girdhar et al.,, <a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib29" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.1" style="padding:0.6pt 8.0pt;">256<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.7.7.1.m1.1"><semantics id="S5.T6.7.7.1.m1.1a"><mo id="S5.T6.7.7.1.m1.1.1" xref="S5.T6.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.7.7.1.m1.1b"><times id="S5.T6.7.7.1.m1.1.1.cmml" xref="S5.T6.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.7.7.1.m1.1d">×</annotation></semantics></math>256</td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.3" style="padding:0.6pt 8.0pt;">317.10</td>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.4" style="padding:0.6pt 8.0pt;">42.7</td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.8.8.2" style="padding:0.6pt 8.0pt;">SVD <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2502.04896v1#bib.bib6" title="">Blattmann et al., 2023a, </a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.8.1" style="padding:0.6pt 8.0pt;">240<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.8.8.1.m1.1"><semantics id="S5.T6.8.8.1.m1.1a"><mo id="S5.T6.8.8.1.m1.1.1" xref="S5.T6.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.8.8.1.m1.1b"><times id="S5.T6.8.8.1.m1.1.1.cmml" xref="S5.T6.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.8.8.1.m1.1d">×</annotation></semantics></math>360</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.8.3" style="padding:0.6pt 8.0pt;">242.02</td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.8.4" style="padding:0.6pt 8.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.10.10.3" style="padding:0.6pt 8.0pt;">
<span class="ltx_text" id="S5.T6.10.10.3.1">Goku</span>-2B (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.9.9.1" style="padding:0.6pt 8.0pt;">256<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.9.9.1.m1.1"><semantics id="S5.T6.9.9.1.m1.1a"><mo id="S5.T6.9.9.1.m1.1.1" xref="S5.T6.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.9.9.1.m1.1b"><times id="S5.T6.9.9.1.m1.1.1.cmml" xref="S5.T6.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.9.9.1.m1.1d">×</annotation></semantics></math>256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.10.10.4" style="padding:0.6pt 8.0pt;">246.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.10.10.2" style="padding:0.6pt 8.0pt;">45.77 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T6.10.10.2.m1.1"><semantics id="S5.T6.10.10.2.m1.1a"><mo id="S5.T6.10.10.2.m1.1.1" xref="S5.T6.10.10.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T6.10.10.2.m1.1b"><csymbol cd="latexml" id="S5.T6.10.10.2.m1.1.1.cmml" xref="S5.T6.10.10.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.10.10.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T6.10.10.2.m1.1d">±</annotation></semantics></math> 1.10</td>
</tr>
<tr class="ltx_tr" id="S5.T6.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.12.12.3" style="padding:0.6pt 8.0pt;">
<span class="ltx_text" id="S5.T6.12.12.3.1">Goku</span>-2B (ours)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.1" style="padding:0.6pt 8.0pt;">240<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.11.11.1.m1.1"><semantics id="S5.T6.11.11.1.m1.1a"><mo id="S5.T6.11.11.1.m1.1.1" xref="S5.T6.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.11.11.1.m1.1b"><times id="S5.T6.11.11.1.m1.1.1.cmml" xref="S5.T6.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.11.11.1.m1.1d">×</annotation></semantics></math>360</td>
<td class="ltx_td ltx_align_center" id="S5.T6.12.12.4" style="padding:0.6pt 8.0pt;">254.47</td>
<td class="ltx_td ltx_align_center" id="S5.T6.12.12.2" style="padding:0.6pt 8.0pt;">46.64 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T6.12.12.2.m1.1"><semantics id="S5.T6.12.12.2.m1.1a"><mo id="S5.T6.12.12.2.m1.1.1" xref="S5.T6.12.12.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T6.12.12.2.m1.1b"><csymbol cd="latexml" id="S5.T6.12.12.2.m1.1.1.cmml" xref="S5.T6.12.12.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.12.12.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T6.12.12.2.m1.1d">±</annotation></semantics></math> 1.08</td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T6.14.14.3" style="padding:0.6pt 8.0pt;">
<span class="ltx_text" id="S5.T6.14.14.3.1">Goku</span>-2B (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.13.13.1" style="padding:0.6pt 8.0pt;">128<math alttext="\times" class="ltx_Math" display="inline" id="S5.T6.13.13.1.m1.1"><semantics id="S5.T6.13.13.1.m1.1a"><mo id="S5.T6.13.13.1.m1.1.1" xref="S5.T6.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T6.13.13.1.m1.1b"><times id="S5.T6.13.13.1.m1.1.1.cmml" xref="S5.T6.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T6.13.13.1.m1.1d">×</annotation></semantics></math>128</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.14.14.4" style="padding:0.6pt 8.0pt;">217.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.14.14.2" style="padding:0.6pt 8.0pt;">42.30 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T6.14.14.2.m1.1"><semantics id="S5.T6.14.14.2.m1.1a"><mo id="S5.T6.14.14.2.m1.1.1" xref="S5.T6.14.14.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T6.14.14.2.m1.1b"><csymbol cd="latexml" id="S5.T6.14.14.2.m1.1.1.cmml" xref="S5.T6.14.14.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.14.14.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T6.14.14.2.m1.1d">±</annotation></semantics></math> 1.03</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of zero-shot text-to-video generation performance on the UCF-101 dataset.  The table contrasts different models, showing their Frechet Video Distance (FVD) and Inception Score (IS) for videos generated at three different resolutions (256x256, 240x360, 128x128). Lower FVD values and higher IS values indicate better video quality. This allows for evaluation of model performance at various resolutions and a more comprehensive assessment of video generation capabilities.
> <details>
> <summary>read the caption</summary>
> Table 6: Zero-shot text-to-video performance on UCF-101. We generate videos of different resolutions, including 256×\times×256, 240×\times×360, 128×\times×128, for comprehensive comparisons.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T7.2">
<tr class="ltx_tr" id="S5.T7.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T7.2.1.1" rowspan="2" style="padding:0.6pt 3.5pt;"><span class="ltx_text" id="S5.T7.2.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.2" style="padding:0.6pt 3.5pt;">Human</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.3" rowspan="2" style="padding:0.6pt 3.5pt;"><span class="ltx_text" id="S5.T7.2.1.3.1">Scene</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.4" style="padding:0.6pt 3.5pt;">Dynamic</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.5" style="padding:0.6pt 3.5pt;">Multiple</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.6" style="padding:0.6pt 3.5pt;">Appear.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.7" style="padding:0.6pt 3.5pt;">Quality</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.8" style="padding:0.6pt 3.5pt;">Semantic</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.1.9" rowspan="2" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.9.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.2">
<td class="ltx_td ltx_align_center" id="S5.T7.2.2.1" style="padding:0.6pt 3.5pt;">Action</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.2.2" style="padding:0.6pt 3.5pt;">Degree</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.2.3" style="padding:0.6pt 3.5pt;">Objects</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.2.4" style="padding:0.6pt 3.5pt;">Style</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.2.5" style="padding:0.6pt 3.5pt;">Score</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.2.6" style="padding:0.6pt 3.5pt;">Score</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.2.3.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/guoyww/AnimateDiff" title="">AnimateDiff-V2</a></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.2" style="padding:0.6pt 3.5pt;">92.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.3" style="padding:0.6pt 3.5pt;">50.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.4" style="padding:0.6pt 3.5pt;">40.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.5" style="padding:0.6pt 3.5pt;">36.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.6" style="padding:0.6pt 3.5pt;">22.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.7" style="padding:0.6pt 3.5pt;">82.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.8" style="padding:0.6pt 3.5pt;">69.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.3.9" style="padding:0.6pt 3.5pt;">80.27</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.4">
<td class="ltx_td ltx_align_left" id="S5.T7.2.4.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/AILab-CVC/VideoCrafter" title="">VideoCrafter-2.0</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.2" style="padding:0.6pt 3.5pt;">95.00</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.3" style="padding:0.6pt 3.5pt;">55.29</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.4" style="padding:0.6pt 3.5pt;">42.50</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.5" style="padding:0.6pt 3.5pt;">40.66</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.6" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.4.6.1">25.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.7" style="padding:0.6pt 3.5pt;">82.20</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.8" style="padding:0.6pt 3.5pt;">73.42</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.4.9" style="padding:0.6pt 3.5pt;">80.44</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.5">
<td class="ltx_td ltx_align_left" id="S5.T7.2.5.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/hpcai-tech/OpenSora-STDiT-v3" title="">OpenSora V1.2</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.2" style="padding:0.6pt 3.5pt;">85.80</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.3" style="padding:0.6pt 3.5pt;">42.47</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.4" style="padding:0.6pt 3.5pt;">47.22</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.5" style="padding:0.6pt 3.5pt;">58.41</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.6" style="padding:0.6pt 3.5pt;">23.89</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.7" style="padding:0.6pt 3.5pt;">80.71</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.8" style="padding:0.6pt 3.5pt;">73.30</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.5.9" style="padding:0.6pt 3.5pt;">79.23</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.6">
<td class="ltx_td ltx_align_left" id="S5.T7.2.6.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/showlab/Show-1" title="">Show-1</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.2" style="padding:0.6pt 3.5pt;">95.60</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.3" style="padding:0.6pt 3.5pt;">47.03</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.4" style="padding:0.6pt 3.5pt;">44.44</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.5" style="padding:0.6pt 3.5pt;">45.47</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.6" style="padding:0.6pt 3.5pt;">23.06</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.7" style="padding:0.6pt 3.5pt;">80.42</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.8" style="padding:0.6pt 3.5pt;">72.98</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.6.9" style="padding:0.6pt 3.5pt;">78.93</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.7">
<td class="ltx_td ltx_align_left" id="S5.T7.2.7.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://runwayml.com/research/introducing-gen-3-alpha" title="">Gen-3</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.2" style="padding:0.6pt 3.5pt;">96.40</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.3" style="padding:0.6pt 3.5pt;">54.57</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.4" style="padding:0.6pt 3.5pt;">60.14</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.5" style="padding:0.6pt 3.5pt;">53.64</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.6" style="padding:0.6pt 3.5pt;">24.31</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.7" style="padding:0.6pt 3.5pt;">84.11</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.8" style="padding:0.6pt 3.5pt;">75.17</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.7.9" style="padding:0.6pt 3.5pt;">82.32</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.8">
<td class="ltx_td ltx_align_left" id="S5.T7.2.8.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://pika.art" title="">Pika-1.0</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.2" style="padding:0.6pt 3.5pt;">86.20</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.3" style="padding:0.6pt 3.5pt;">49.83</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.4" style="padding:0.6pt 3.5pt;">47.50</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.5" style="padding:0.6pt 3.5pt;">43.08</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.6" style="padding:0.6pt 3.5pt;">22.26</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.7" style="padding:0.6pt 3.5pt;">82.92</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.8" style="padding:0.6pt 3.5pt;">71.77</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.8.9" style="padding:0.6pt 3.5pt;">80.69</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.9">
<td class="ltx_td ltx_align_left" id="S5.T7.2.9.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/THUDM/CogVideo" title="">CogVideoX-5B</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.2" style="padding:0.6pt 3.5pt;">99.40</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.3" style="padding:0.6pt 3.5pt;">53.20</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.4" style="padding:0.6pt 3.5pt;">70.97</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.5" style="padding:0.6pt 3.5pt;">62.11</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.6" style="padding:0.6pt 3.5pt;">24.91</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.7" style="padding:0.6pt 3.5pt;">82.75</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.8" style="padding:0.6pt 3.5pt;">77.04</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.9.9" style="padding:0.6pt 3.5pt;">81.61</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.10">
<td class="ltx_td ltx_align_left" id="S5.T7.2.10.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://klingai.kuaishou.com/" title="">Kling</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.2" style="padding:0.6pt 3.5pt;">93.40</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.3" style="padding:0.6pt 3.5pt;">50.86</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.4" style="padding:0.6pt 3.5pt;">46.94</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.5" style="padding:0.6pt 3.5pt;">68.05</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.6" style="padding:0.6pt 3.5pt;">19.62</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.7" style="padding:0.6pt 3.5pt;">83.39</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.8" style="padding:0.6pt 3.5pt;">75.68</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.10.9" style="padding:0.6pt 3.5pt;">81.85</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.11">
<td class="ltx_td ltx_align_left" id="S5.T7.2.11.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/mira-space/Mira" title="">Mira</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.2" style="padding:0.6pt 3.5pt;">63.80</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.3" style="padding:0.6pt 3.5pt;">16.34</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.4" style="padding:0.6pt 3.5pt;">60.33</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.5" style="padding:0.6pt 3.5pt;">12.52</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.6" style="padding:0.6pt 3.5pt;">21.89</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.7" style="padding:0.6pt 3.5pt;">78.78</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.8" style="padding:0.6pt 3.5pt;">44.21</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.11.9" style="padding:0.6pt 3.5pt;">71.87</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.12">
<td class="ltx_td ltx_align_left" id="S5.T7.2.12.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://causvid.github.io/" title="">CausVid</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.2" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.12.2.1">99.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.3" style="padding:0.6pt 3.5pt;">56.58</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.4" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.12.4.1">92.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.5" style="padding:0.6pt 3.5pt;">72.15</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.6" style="padding:0.6pt 3.5pt;">24.27</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.7" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.12.7.1">85.65</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.8" style="padding:0.6pt 3.5pt;">78.75</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.12.9" style="padding:0.6pt 3.5pt;">84.27</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.13">
<td class="ltx_td ltx_align_left" id="S5.T7.2.13.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://lumalabs.ai/dream-machine" title="">Luma</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.2" style="padding:0.6pt 3.5pt;">96.40</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.3" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.13.3.1">58.98</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.4" style="padding:0.6pt 3.5pt;">44.26</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.5" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.13.5.1">82.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.6" style="padding:0.6pt 3.5pt;">24.66</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.7" style="padding:0.6pt 3.5pt;">83.47</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.8" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.13.8.1">84.17</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.13.9" style="padding:0.6pt 3.5pt;">83.61</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.14">
<td class="ltx_td ltx_align_left" id="S5.T7.2.14.1" style="padding:0.6pt 3.5pt;"><a class="ltx_ref ltx_href" href="https://github.com/Tencent/HunyuanVideo" title="">HunyuanVideo</a></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.2" style="padding:0.6pt 3.5pt;">94.40</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.3" style="padding:0.6pt 3.5pt;">53.88</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.4" style="padding:0.6pt 3.5pt;">70.83</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.5" style="padding:0.6pt 3.5pt;">68.55</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.6" style="padding:0.6pt 3.5pt;">19.80</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.7" style="padding:0.6pt 3.5pt;">85.09</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.8" style="padding:0.6pt 3.5pt;">75.82</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.14.9" style="padding:0.6pt 3.5pt;">83.24</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.15">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T7.2.15.1" style="padding:0.6pt 3.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T7.2.15.1.1">Goku</span> (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.2" style="padding:0.6pt 3.5pt;">97.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.3" style="padding:0.6pt 3.5pt;">57.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.4" style="padding:0.6pt 3.5pt;">76.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.5" style="padding:0.6pt 3.5pt;">79.48</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.6" style="padding:0.6pt 3.5pt;">23.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.7" style="padding:0.6pt 3.5pt;">85.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.8" style="padding:0.6pt 3.5pt;">81.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.2.15.9" style="padding:0.6pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.2.15.9.1">84.85</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comprehensive comparison of Goku's text-to-video (T2V) performance against leading models on the VBench benchmark. VBench is a rigorous evaluation framework assessing video generation quality across 16 different dimensions, covering aspects like human action representation, dynamic scene elements, multiple object generation, aesthetic quality, and semantic alignment. Goku demonstrates state-of-the-art overall performance, excelling particularly in areas such as dynamic object generation and human action representation.  For a detailed breakdown of performance across each of the 16 individual evaluation dimensions, refer to Table 8 in the appendix.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison with leading T2V models on VBench. Goku achieves state-of-the-art overall performance. Detailed results across all 16 evaluation dimensions are provided in Table 8 in the Appendix.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.04896/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04896/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}