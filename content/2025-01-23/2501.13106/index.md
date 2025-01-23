---
title: "VideoLLaMA 3: Frontier Multimodal Foundation Models for Image and Video Understanding"
summary: "VideoLLaMA3: Vision-centric training yields state-of-the-art image & video understanding!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 DAMO Academy, Alibaba Group",]
showSummary: true
date: 2025-01-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13106 {{< /keyword >}}
{{< keyword icon="writer" >}} Boqiang Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13106" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13106" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13106/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current multimodal large language models (MLLMs) struggle with video understanding due to the complexity of temporal dynamics and scarcity of high-quality video-text datasets.  Many existing models focus on directly handling video data, often resulting in lower efficiency and performance.  The high cost and difficulty of creating large, high-quality video datasets also hinder progress. This paper introduces a novel solution by prioritizing high-quality image data during training.  By leveraging the strong foundation of image understanding, VideoLLaMA3 successfully extends its capabilities to video, overcoming many challenges associated with direct video processing. 

The researchers developed VideoLLaMA3, a novel multimodal foundation model, using a vision-centric training paradigm and framework. This involved four stages: Vision Encoder Adaptation, Vision-Language Pretraining, Multi-task Fine-tuning, and Video-centric Fine-tuning.  Key techniques include Any-resolution Vision Tokenization (AVT) and Differential Frame Pruner (DiffFP) to efficiently handle varied video resolutions and compress redundant frames.  The model achieved state-of-the-art results on various benchmarks, showing strong performance in image, video, and document understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VideoLLaMA3 introduces a novel vision-centric training paradigm and framework design, prioritizing high-quality image-text data for both image and video understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model achieves state-of-the-art results on various image and video understanding benchmarks, demonstrating its strong capabilities in multiple tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VideoLLaMA3's vision-centric design, including any-resolution vision tokenization and differential frame pruning, improves efficiency and precision in handling various visual inputs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it presents **VideoLLaMA3**, a significant advancement in multimodal foundation models.  Its **vision-centric approach** offers a novel training paradigm and framework design, leading to **state-of-the-art performance** on various image and video understanding benchmarks. This work is relevant to current research trends in large language models and opens avenues for improving video understanding and developing more efficient and powerful multimodal AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13106/x1.png)

> 🔼 This figure compares the performance of VideoLLaMA3 against other state-of-the-art image and video Multimodal Large Language Models (MLLMs) across a variety of benchmark datasets.  These benchmarks test different capabilities, including general video understanding (VideoMME, PerceptionTest, MLVU), document comprehension (DocVQA), and mathematical reasoning (MathVista).  The results show that VideoLLaMA3 achieves highly competitive performance across all categories.  Importantly, the figure notes that two specific models, LLaVA-OneVision and LLaVA-Video, were only used for evaluating image and video benchmarks, respectively, due to their specialized nature.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance Comparison of VideoLLaMA3 with the previous advanced image/video MLLM on various representative benchmarks. As shown in the figure, VideoLLaMA3 has achieved very competitive results on various benchmarks. Specifically, VideoLLaMA3 not only demonstrates strong video understanding capabilities (VideoMME, PerceptionTest, MLVU) but also maintains excellent document comprehension abilities (DocVQA) and multimodal mathematical reasoning skills (MathVista). Note that LLaVA-OneVision is only used for evaluating image benchmarks, while LLaVA-Video is only used for evaluating video benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.3">
<tr class="ltx_tr" id="S3.T1.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.1.1.1">
<span class="ltx_p" id="S3.T1.3.1.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T1.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.1.1.2.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.3.1.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.1.2.1">
<span class="ltx_p" id="S3.T1.3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.2.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.1.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.1.3.1">
<span class="ltx_p" id="S3.T1.3.1.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.1.3.1.1.1">Amount</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.2.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.2.1.1">
<span class="ltx_p" id="S3.T1.3.2.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T1.3.2.1.1.2">Scene Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.3.2.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.2.2.1">
<span class="ltx_p" id="S3.T1.3.2.2.1.1">VL3-Syn7M-short, LLaVA-Pretrain-558k <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib55" title="">liu2023improvedllava, </a>)</cite>, Objects365-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib56" title="">Objects365, </a>)</cite>, SA-1B-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib57" title="">kirillov2023segment, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.2.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.2.3.1">
<span class="ltx_p" id="S3.T1.3.2.3.1.1" style="width:34.1pt;">11.84M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.3.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T1.3.3.1.1.1" style="width:62.6pt;">Scene Text Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.3.3.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T1.3.3.2.1.1">BLIP3-OCR-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib58" title="">Xue2024xGenMMA, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.3.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T1.3.3.3.1.1" style="width:34.1pt;">0.93M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.4.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.4.1.1">
<span class="ltx_p" id="S3.T1.3.4.1.1.1" style="width:62.6pt;">Document</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.3.4.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.4.2.1">
<span class="ltx_p" id="S3.T1.3.4.2.1.1">pdfa-eng-wds <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib59" title="">pdfa, </a>)</cite>, idl-wds <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib60" title="">idlwds </a></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.4.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.4.3.1">
<span class="ltx_p" id="S3.T1.3.4.3.1.1" style="width:34.1pt;">2.80M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.5.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.5.1.1">
<span class="ltx_p" id="S3.T1.3.5.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.3.5.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.3.5.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 details the composition of the training dataset used in the Vision Encoder Adaptation stage of the VideoLLaMA3 model training.  It shows the different types of data used (Scene Image, Scene Text Image, and Document), their respective sources (datasets), and the total amount of data samples for each category. This stage focuses on adapting the vision encoder to handle images of varying resolutions, aligning the visual feature space with the language model.
> <details>
> <summary>read the caption</summary>
> Table 1: Data mixture in vision encoder adaptation stage.
> </details>





### In-depth insights


#### Vision-Centric Paradigm
A vision-centric paradigm in multimodal learning prioritizes high-quality image-text data for foundational model training.  **This contrasts with approaches that directly leverage often-noisy video-text data**, which is more challenging to collect and annotate. By focusing initially on robust image understanding, the model acquires strong visual representation capabilities that are then efficiently adapted for video processing. **This staged approach simplifies training**, improves data efficiency, and potentially leads to superior video understanding compared to methods that tackle both image and video jointly from the start.  **The core idea hinges on the observation that video is essentially a sequence of correlated images**, making strong image representation a crucial prerequisite for effective video understanding.  A successful vision-centric model demonstrates excellence in both image and video understanding benchmarks, validating the strategy's efficacy.  **The vision-centric framework also often includes architectural adaptations**, such as dynamic resolution handling for images and temporal compression for videos, maximizing both performance and data efficiency.

#### Multi-Stage Training
Multi-stage training in large language models (LLMs) offers a structured approach to learning, enhancing performance and capabilities incrementally.  **Each stage often focuses on a specific aspect of the model's development**, such as vision encoder adaptation, vision-language alignment, and multi-task fine-tuning, each utilizing specific datasets and optimization strategies.  This allows for gradual refinement and avoids the potential pitfalls of overwhelming the model with too much complexity at once. **Vision-centric training paradigms**, prioritizing high-quality image-text data, have proven beneficial for boosting both image and video understanding.  By focusing on a strong foundation in image understanding, the model's subsequent performance on video tasks improves significantly. **The model’s architecture** could be gradually enhanced by incorporating different types of vision and language data in different stages. This iterative process facilitates improved generalization and adaptability.  The inclusion of a video compressor reduces computational demands and improves the efficiency and precision of video representation, improving performance in video understanding tasks. The multi-stage approach allows for flexibility and the possibility of adapting to various types of multimodal datasets.

#### AVT & DiffFP
The proposed AVT (Any-resolution Vision Tokenization) and DiffFP (Differential Frame Pruner) are crucial for efficient and effective multimodal processing in VideoLLaMA3.  **AVT addresses the limitations of fixed-resolution tokenization by dynamically adapting to various image and video resolutions**, ensuring detailed visual information capture regardless of input size. This adaptability significantly improves the model's flexibility and reduces information loss compared to traditional methods.  **DiffFP enhances video processing efficiency by compressing videos through frame pruning**, removing redundant information between temporally adjacent frames. By focusing on significant changes, it optimizes computational resources and makes processing long videos more manageable. The synergy of AVT and DiffFP is key to VideoLLaMA3's superior performance, enabling it to handle diverse visual inputs and complex temporal dynamics more effectively. This vision-centric design contributes to reduced model size and improved efficiency while retaining high accuracy in both image and video understanding tasks.

#### High-Quality Dataset
Creating a **high-quality dataset** is crucial for training robust and effective multimodal models.  The quality of the data directly impacts the model's performance and ability to generalize.  **High-resolution images** and **precise annotations** are essential. The dataset should also be **diverse**, representing a wide range of scenarios and visual concepts.  **Data cleaning and filtering** are vital steps to eliminate noise and inaccuracies which could hinder the model's learning process.  **Careful selection of data sources** is another critical aspect; reliable sources are necessary to minimize biases. The **size** of the dataset is important, but high quality trumps quantity; it is preferable to have a smaller, cleaner dataset than a large one with significant noise.   Finally, the design of the dataset needs to match the **training paradigm**, ensuring that the data is well-suited to the chosen model architecture and learning method for optimal effectiveness.

#### Future Research
The paper's 'Future Research' section would ideally address several key limitations.  **Improving video data quality and diversity** is paramount, necessitating a focus on larger, higher-quality datasets with richer annotations. This would likely involve exploring new data acquisition and annotation methods, potentially leveraging automated techniques and crowdsourcing.  Addressing the **computational cost of real-time video processing** is crucial for practical applications.  This requires exploring efficient model architectures and optimized inference strategies, perhaps drawing upon techniques like model quantization and pruning.  **Extending the model's capabilities to handle unseen modalities**, such as audio and speech, would greatly enhance its versatility and real-world applicability.  A focus on efficient multi-modal fusion techniques is key here. Finally, developing **advanced post-training techniques** is essential to further refine the model's performance and align it with human preferences, potentially through reinforcement learning and human-in-the-loop approaches.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13106/x2.png)

> 🔼 This figure illustrates the four-stage training pipeline of the VideoLLaMA3 model. Stage 1, Vision Encoder Adaptation, focuses on aligning the vision encoder with the language model using various image data to handle different resolutions.  Stage 2, Vision-Language Alignment, jointly tunes the vision encoder, projector, and language model using large-scale image-text data. Stage 3, Multi-task Fine-tuning, incorporates data for downstream tasks and video-text data to establish a foundation for video understanding. Finally, Stage 4, Video-centric Fine-tuning, further improves the model's video understanding capabilities by including more video data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Training paradigm of VideoLLaMA3. The training of VideoLLaMA3 has four stages: (1) Vision Encoder Adaptation, (2) Vision-Language Alignment, (3) Multi-task Fine-tuning, and (4) Video-centric Fine-tuning.
> </details>



![](https://arxiv.org/html/2501.13106/x3.png)

> 🔼 VideoLLaMA3 processes image and video inputs using a two-stage pipeline. First, Any-Resolution Vision Tokenization (AVT) converts images/videos of any resolution into 1D token sequences, which allows for flexible input sizes.  Then, the Differential Frame Pruner (DiffFP) acts as a video compressor, removing redundant frames in videos to improve efficiency, particularly for long videos. This process ultimately feeds the information into a large language model for multimodal understanding.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overall pipeline of our VideoLLaMA3. There are two key technical points: ❶ Any-resolution Vision Tokenization (AVT): AVT converts images or videos of any resolution into a set of 1-D token sequences, enabling compatibility with varying amounts of input images and videos of different resolutions, thereby supporting more flexible vision input; ❷ Differential Frame Pruner (DiffFP): Serving as a video compressor, DiffFP eliminates video content with minimal differences between adjacent frames. This approach enhances video processing efficiency, particularly for long-form videos.
> </details>



![](https://arxiv.org/html/2501.13106/x4.png)

> 🔼 The figure illustrates the process of Differential Frame Pruning (DiffFP), a video compression technique.  DiffFP analyzes video frames by comparing patches (small regions) between consecutive frames. The distance between these patches in pixel space is calculated (using 1-norm distance). Patches with small distances, representing high similarity and minimal changes between frames, are pruned (removed). This reduces the number of tokens used to represent the video, making video processing more efficient, especially for long videos with lots of redundant information. The output is a more compact and efficient representation of the video.
> <details>
> <summary>read the caption</summary>
> Figure 4: The calculation flow of our DiffFP. We prune video tokens based on patch similarities in pixel space, removing patches with smaller distances to the previous frame.
> </details>



![](https://arxiv.org/html/2501.13106/x5.png)

> 🔼 Figure 5 illustrates how different data types (image sequences, video sequences, and streaming video sequences) are formatted for input into the VideoLLaMA3 model.  Different symbols are used to delineate various aspects of the data. For image sequences, a newline character ('\n') separates tokens representing different images. Video sequences use 'Time: xxs' to mark timestamps for each frame, commas (',') to separate frames, and newlines ('\n') to distinguish between videos. Lastly, streaming video sequences organize video and text tokens in an interleaved structure.
> <details>
> <summary>read the caption</summary>
> Figure 5: Data formats for different data types. ❶ For image sequence, we use '\n' to separate image tokens from different image; ❷ For video sequence, we use 'Time: xxs' to indicate timestamps of each frame, ',' to separate different frames, and '\n' to separate tokens from different videos; ❸ For streaming video sequence, videos and texts are organized in an interleaved format.
> </details>



![](https://arxiv.org/html/2501.13106/x6.png)

> 🔼 This figure showcases two examples of VideoLLaMA3's chart image understanding capabilities.  The first example demonstrates the model's ability to analyze stock trends and provide investment advice based on the visual information presented in a stock chart. The second example shows VideoLLaMA3 comparing the performance of different large language models (LLMs) based on a chart displaying their average performance and number of parameters.  This highlights the model's ability to extract and interpret quantitative information from chart visualizations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Case study of chart images understanding.
> </details>



![](https://arxiv.org/html/2501.13106/x7.png)

> 🔼 This figure showcases two examples demonstrating VideoLLaMA 3's capabilities in Optical Character Recognition (OCR) and understanding document images. The first example shows the model successfully extracting and interpreting text from a design image, offering suggestions for improvement. The second example demonstrates the model's ability to accurately perform OCR on a more complex, dense document image.
> <details>
> <summary>read the caption</summary>
> Figure 7: Case study of OCR and document images.
> </details>



![](https://arxiv.org/html/2501.13106/x8.png)

> 🔼 This figure showcases VideoLLaMA3's capacity for multi-image understanding through three distinct examples.  The first demonstrates the model's ability to differentiate between two bird species based on visual features. The second example highlights the model's comprehension of complex visual and textual information within a document, surpassing basic OCR capabilities by extracting answers from a document containing multiple images.  The final example illustrates VideoLLaMA3's understanding of narratives presented in a comic strip format, demonstrating the model's capacity for storytelling and contextual comprehension.
> <details>
> <summary>read the caption</summary>
> Figure 8: Case study of multi-image understanding.
> </details>



![](https://arxiv.org/html/2501.13106/x9.png)

> 🔼 This figure showcases three examples where the VideoLLaMA3 model demonstrates its ability to understand images within the context of general knowledge.  The first example involves a basketball free throw, illustrating the model's grasp of sports imagery and terminology. The second shows the Mona Lisa, highlighting its understanding of art history and cultural significance. The last displays a space-themed video with puppies in astronaut suits, and shows how the model can describe the video.  Each example demonstrates VideoLLaMA3's comprehensive understanding beyond simple image recognition and its capacity to connect images to broader contextual information.
> <details>
> <summary>read the caption</summary>
> Figure 9: Case study of images with general knowledge.
> </details>



![](https://arxiv.org/html/2501.13106/x10.png)

> 🔼 Figure 10 presents several case studies showcasing VideoLLaMA3's video understanding capabilities.  Each case study demonstrates the model's ability to handle various tasks including identifying objects within a video and their positions, recognizing the last key to disappear on a keyboard, identifying unusual aspects (like bears eating sushi), detailing video contents, and understanding video competitions.
> <details>
> <summary>read the caption</summary>
> Figure 10: Case study of video understanding.
> </details>



![](https://arxiv.org/html/2501.13106/x11.png)

> 🔼 Figure 11 showcases VideoLLaMA 3's capabilities in handling complex video understanding tasks. It presents three examples demonstrating the model's proficiency in long video understanding, temporal grounding, and video-image joint understanding.  The first example involves describing a long video; the second shows temporal grounding by identifying specific timestamps within a video when an action occurs; and the third example demonstrates joint understanding by connecting a video clip with a separate image.
> <details>
> <summary>read the caption</summary>
> Figure 11: Case study of long video understanding, temporal grounding, and video-image joint understanding.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3">
<tr class="ltx_tr" id="S3.T2.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.1.1.1">
<span class="ltx_p" id="S3.T2.3.1.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T2.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.1.1.2.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.1.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.1.2.1">
<span class="ltx_p" id="S3.T2.3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.1.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.1.3.1">
<span class="ltx_p" id="S3.T2.3.1.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.3.1.1.1">Amount</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.2.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.2.1.1">
<span class="ltx_p" id="S3.T2.3.2.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T2.3.2.1.1.2">Scene Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.2.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.2.2.1">
<span class="ltx_p" id="S3.T2.3.2.2.1.1">VL3-Syn7M-detailed, Objects365-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib56" title="">Objects365, </a>)</cite>, SA-1B-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib57" title="">kirillov2023segment, </a>)</cite>, COCO2017-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib61" title="">lin2014microsoft, </a>)</cite>, ShareGPT4o <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib53" title="">Chen2024HowFA, </a>)</cite>, TextCaps <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib62" title="">sidorov2020textcaps, </a>)</cite>, ShareGPT4V <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib63" title="">chen2023sharegpt4v, </a>)</cite>, DenseFusion <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib64" title="">li2024densefusion, </a>)</cite>, LLaVA-ReCap (LCS-558K) <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib28" title="">li2024llavaonevision, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.2.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.2.3.1">
<span class="ltx_p" id="S3.T2.3.2.3.1.1" style="width:34.1pt;">12.56M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.3.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.3.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.3.1.1.1" style="width:62.6pt;">Scene Text Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.3.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.3.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.3.2.1.1">Laion-OCR <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib65" title="">schuhmann2022laion, </a>)</cite>, COCO-Text <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib66" title="">veit2016coco, </a>)</cite>, TextOCR <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib67" title="">singh2021textocr, </a>)</cite>, BLIP3-OCR-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib58" title="">Xue2024xGenMMA, </a>)</cite>, LSVT <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib68" title="">Sun2019ICDAR2C, </a>)</cite>, ReCTS <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib69" title="">liu2019icdar, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.3.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.3.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.3.3.1.1" style="width:34.1pt;">4.69M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.4.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.4.1.1">
<span class="ltx_p" id="S3.T2.3.4.1.1.1" style="width:62.6pt;">Document</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.4.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.4.2.1">
<span class="ltx_p" id="S3.T2.3.4.2.1.1">SynthDoG-EN <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib70" title="">kim2022ocr, </a>)</cite>, SynthDoG-ZH <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib70" title="">kim2022ocr, </a>)</cite>, UReader-TR <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib71" title="">Ye2023UReaderUO, </a>)</cite>, FUNSD <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib72" title="">funsd, </a>)</cite>, DUDE <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib73" title="">van2023icdar, </a>)</cite>, Vary-600k <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib74" title="">wei2023vary, </a>)</cite>, pdfa-eng-wds <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib59" title="">pdfa, </a>)</cite>, idl-wds <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib60" title="">idlwds, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.4.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.4.3.1">
<span class="ltx_p" id="S3.T2.3.4.3.1.1" style="width:34.1pt;">2.68M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.5" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.5.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.5.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.5.1.1.1" style="width:62.6pt;">Chart</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.5.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.5.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.5.2.1.1">Chart-to-Text <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib75" title="">2022Chart, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.5.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.5.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.5.3.1.1" style="width:34.1pt;">0.04M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.6.1.1">
<span class="ltx_p" id="S3.T2.3.6.1.1.1" style="width:62.6pt;">Fine-grained</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.6.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.6.2.1">
<span class="ltx_p" id="S3.T2.3.6.2.1.1">Osprey-724K <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib76" title="">yuan2024osprey, </a>)</cite>, MDVP-Data <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib77" title="">lin2024draw, </a>)</cite>, ADE20K-Recap <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib78" title="">zhou2019semantic, </a>)</cite>, Object365 <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib56" title="">Objects365, </a>)</cite>, Flickr-30K <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib79" title="">young2014image, </a>)</cite>, GranD <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib80" title="">rasheed2024glamm, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.6.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.6.3.1">
<span class="ltx_p" id="S3.T2.3.6.3.1.1" style="width:34.1pt;">1.00M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.7" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.7.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.7.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.7.1.1.1" style="width:62.6pt;">Text-only</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.7.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.7.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.7.2.1.1">Evol-Instruct-143K <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib81" title="">chen2024allava, </a>)</cite>, Infinity-Instruct-code <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib82" title="">InfinityInstruct2024, </a>)</cite>, Infinity-Instruct-commonsense <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib82" title="">InfinityInstruct2024 </a></cite>, Infinity-Instruct-math <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib82" title="">InfinityInstruct2024, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.7.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.7.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T2.3.7.3.1.1" style="width:34.1pt;">6.25M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.8.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.3.8.1.1">
<span class="ltx_p" id="S3.T2.3.8.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T2.3.8.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.3.8.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the training dataset used in the Vision-Language Alignment stage of the VideoLLaMA3 model training. It breaks down the dataset by the type of data included (Scene Image, Scene Text Image, Document, Chart, Fine-grained, and Text-only) and the amount of data for each type.  This breakdown helps to understand the balance of different data modalities used to train the model to effectively link visual and linguistic information.
> <details>
> <summary>read the caption</summary>
> Table 2: Data mixture in vision-language alignment stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.3">
<tr class="ltx_tr" id="S3.T3.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.1.1.1">
<span class="ltx_p" id="S3.T3.3.1.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T3.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.1.2.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.1.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.1.2.1">
<span class="ltx_p" id="S3.T3.3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.2.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.1.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.1.3.1">
<span class="ltx_p" id="S3.T3.3.1.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.3.1.1.1">Amount</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.2.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.2.1.1">
<span class="ltx_p" id="S3.T3.3.2.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T3.3.2.1.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.3.2.1.1.2.1">Image &amp; Text Data</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.2.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.2.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.3.3.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.3.1.1">
<span class="ltx_p" id="S3.T3.3.3.1.1.1" style="width:62.6pt;">General</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.3.3.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.3.2.1">
<span class="ltx_p" id="S3.T3.3.3.2.1.1">LLaVA-SFT-665K <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib38" title="">li2024llava, </a>)</cite>, LLaVA-OV-SI <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib28" title="">li2024llavaonevision, </a>)</cite>, Cambrian-cleaned <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib39" title="">tong2024cambrian, </a>)</cite>, Pixmo (docs, cap, points, cap-qa, ask-model-anything) <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib35" title="">molmo2024, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.3.3.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.3.3.1">
<span class="ltx_p" id="S3.T3.3.3.3.1.1" style="width:34.1pt;">9.87M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.4" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.4.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.4.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.4.1.1.1" style="width:62.6pt;">Document</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.4.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.4.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.4.2.1.1">DocVQA <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib40" title="">mathew2021docvqadatasetvqadocument, </a>)</cite>, Docmatix <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib41" title="">laurençon2024building, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.4.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.4.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.4.3.1.1" style="width:34.1pt;">1.31M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.5.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.5.1.1">
<span class="ltx_p" id="S3.T3.3.5.1.1.1" style="width:62.6pt;">Chart/Figure</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.5.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.5.2.1">
<span class="ltx_p" id="S3.T3.3.5.2.1.1">ChartQA <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib42" title="">masry2022chartqa, </a>)</cite>, MMC_Instruction <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib83" title="">liu2023mmc, </a>)</cite>, DVQA <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib84" title="">kafle2018dvqa, </a>)</cite>,
LRV_Instruction <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib85" title="">liu2023aligning, </a>)</cite>, ChartGemma <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib86" title="">masry2024chartgemmavisualinstructiontuningchart, </a>)</cite>, InfoVQA <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib87" title="">mathew2022infographicvqa, </a>)</cite>, PlotQA <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib88" title="">methani2020plotqa, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.5.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.5.3.1">
<span class="ltx_p" id="S3.T3.3.5.3.1.1" style="width:34.1pt;">1.00M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.6" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.6.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.6.1.1.1" style="width:62.6pt;">OCR</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.6.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.6.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.6.2.1.1">MultiUI <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib89" title="">liu2024harnessingwebpageuistextrich, </a>)</cite>, <span class="ltx_text" id="S3.T3.3.6.2.1.1.1" style="color:#808080;background-color:#EBEBEB;">in-house data</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.6.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.6.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.6.3.1.1" style="width:34.1pt;">0.83M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.7.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.7.1.1">
<span class="ltx_p" id="S3.T3.3.7.1.1.1" style="width:62.6pt;">Grounding</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.7.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.7.2.1">
<span class="ltx_p" id="S3.T3.3.7.2.1.1">RefCoco <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib90" title="">kazemzadeh2014referitgame, </a>)</cite>, VCR <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib91" title="">zellers2019vcr, </a>)</cite>, <span class="ltx_text" id="S3.T3.3.7.2.1.1.1" style="color:#808080;">in-house data</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.7.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.7.3.1">
<span class="ltx_p" id="S3.T3.3.7.3.1.1" style="width:34.1pt;">0.50M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.8" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.8.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.8.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.8.1.1.1" style="width:62.6pt;">Multi-Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.8.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.8.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.8.2.1.1">Demon-Full <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib92" title="">li2024fine, </a>)</cite>, Contrastive_Caption <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib93" title="">jiang2024mantisinterleavedmultiimageinstruction, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.8.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.8.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.8.3.1.1" style="width:34.1pt;">0.41M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.9.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.9.1.1">
<span class="ltx_p" id="S3.T3.3.9.1.1.1" style="width:62.6pt;">Text-only</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.9.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.9.2.1">
<span class="ltx_p" id="S3.T3.3.9.2.1.1">Magpie <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib94" title="">xu2024magpie, </a>)</cite>, Magpie-Pro <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib94" title="">xu2024magpie, </a>)</cite>, Synthia <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib95" title="">Synthia-70B-v1.2, </a>)</cite>, Infinity-Instruct-subjective <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib82" title="">InfinityInstruct2024, </a>)</cite>, NuminaMath <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib96" title="">li2024numinamath, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.9.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.9.3.1">
<span class="ltx_p" id="S3.T3.3.9.3.1.1" style="width:34.1pt;">2.21M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.3.10.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.10.1.1">
<span class="ltx_p" id="S3.T3.3.10.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.3.10.1.1.1.1">Video Data</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.3.10.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.3.10.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.11" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.3.11.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.11.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.11.1.1.1" style="width:62.6pt;">General</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.3.11.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.11.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.11.2.1.1">LLaVA-Video-178K <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib24" title="">zhang2024video, </a>)</cite>, ShareGPT4o-Video <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib27" title="">chen2024sharegpt4video, </a>)</cite>, FineVideo <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib97" title="">Farré2024FineVideo, </a>)</cite>, CinePile <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib98" title="">rawal2024cinepile, </a>)</cite>, ShareGemini-k400 <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib99" title="">sharegemini, </a>)</cite>, ShareGemini-WebVID <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib99" title="">sharegemini, </a>)</cite>, VCG-Human <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib21" title="">Maaz2024VideoGPT+, </a>)</cite>, VCG-Plus <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib21" title="">Maaz2024VideoGPT+, </a>)</cite>, <span class="ltx_text" id="S3.T3.3.11.2.1.1.1" style="color:#808080;background-color:#EBEBEB;">VideoLLaMA2 in-house data</span>, <span class="ltx_text" id="S3.T3.3.11.2.1.1.2" style="color:#808080;background-color:#EBEBEB;">Temporal Grounding in-house data</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T3.3.11.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.11.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T3.3.11.3.1.1" style="width:34.1pt;">2.92M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.12.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.3.12.1.1">
<span class="ltx_p" id="S3.T3.3.12.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.3.12.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T3.3.12.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the training data used in the Multi-task Fine-tuning stage of the VideoLLaMA3 model.  It breaks down the dataset into categories (General, Document, Chart/Figure, OCR, Grounding, Multi-Image, and Text-only),  listing the specific datasets used within each category and the amount of data in each. This stage focuses on preparing the model for downstream tasks by exposing it to a wide variety of image and text-based tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Data mixture in massive multi-task fine-tuning stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.3">
<tr class="ltx_tr" id="S3.T4.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.1.1">
<span class="ltx_p" id="S3.T4.3.1.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T4.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.1.1.2.1">Task</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.1.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.2.1">
<span class="ltx_p" id="S3.T4.3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.2.1.1.1">Dataset</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.1.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.3.1">
<span class="ltx_p" id="S3.T4.3.1.3.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.3.1.1.1">Amount</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.2.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.1.1">
<span class="ltx_p" id="S3.T4.3.2.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
<span class="ltx_p" id="S3.T4.3.2.1.1.2">General Video</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.2.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.2.1">
<span class="ltx_p" id="S3.T4.3.2.2.1.1">LLaVA-Video-178K <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib24" title="">zhang2024video, </a>)</cite>, ShareGPT4o-Video <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib27" title="">chen2024sharegpt4video, </a>)</cite>, FineVideo <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib97" title="">Farré2024FineVideo, </a>)</cite>, CinePile <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib98" title="">rawal2024cinepile, </a>)</cite>, ShareGemini-k400 <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib99" title="">sharegemini, </a>)</cite>, ShareGemini-WebVID <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib99" title="">sharegemini, </a>)</cite>, VCG-Human <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib21" title="">Maaz2024VideoGPT+, </a>)</cite>, VCG-Plus <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib21" title="">Maaz2024VideoGPT+, </a>)</cite>, VideoRefer <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib100" title="">yuan2024videorefer, </a>)</cite>, <span class="ltx_text" id="S3.T4.3.2.2.1.1.1" style="color:#808080;">VideoLLaMA2 in-house data</span>, <span class="ltx_text" id="S3.T4.3.2.2.1.1.2" style="color:#808080;">In-house synthetic data</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.2.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.3.1">
<span class="ltx_p" id="S3.T4.3.2.3.1.1" style="width:34.1pt;">3.03M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.3" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.3.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.3.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T4.3.3.1.1.1" style="width:62.6pt;">Streaming Video</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.3.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.3.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T4.3.3.2.1.1">ActivityNet <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib101" title="">krishna2017dense, </a>)</cite>, YouCook2 <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib102" title="">zhou2018towards, </a>)</cite>, Ego4D-narration <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib103" title="">grauman2022ego4d, </a>)</cite>, Ego4D-livechat <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib104" title="">chen2024videollm, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.3.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.3.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T4.3.3.3.1.1" style="width:34.1pt;">36.2K</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.4.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.4.1.1">
<span class="ltx_p" id="S3.T4.3.4.1.1.1" style="width:62.6pt;">Temporal Grounding</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.4.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.4.2.1">
<span class="ltx_p" id="S3.T4.3.4.2.1.1">ActivityNet <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib101" title="">krishna2017dense, </a>)</cite>, YouCook2 <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib102" title="">zhou2018towards, </a>)</cite>, ViTT <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib105" title="">huang2020multimodal, </a>)</cite>, QuerYD <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib106" title="">oncescu2021queryd, </a>)</cite>, HiREST <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib107" title="">zala2023hierarchical, </a>)</cite>, Charades-STA <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib108" title="">gao2017tall, </a>)</cite>, Moment-10M <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib109" title="">qian2024momentor, </a>)</cite>, COIN <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib110" title="">tang2019coin, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.4.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.4.3.1">
<span class="ltx_p" id="S3.T4.3.4.3.1.1" style="width:34.1pt;">0.21M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.5" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.5.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.5.1.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T4.3.5.1.1.1" style="width:62.6pt;">Image-only</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.5.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.5.2.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T4.3.5.2.1.1">LLaVA-SFT-665K <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib38" title="">li2024llava, </a>)</cite>, LLaVA-OV-SI <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib28" title="">li2024llavaonevision, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.5.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.5.3.1" style="background-color:#EBEBEB;">
<span class="ltx_p" id="S3.T4.3.5.3.1.1" style="width:34.1pt;">0.88M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.6.1.1">
<span class="ltx_p" id="S3.T4.3.6.1.1.1" style="width:62.6pt;">Text-only</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.6.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.6.2.1">
<span class="ltx_p" id="S3.T4.3.6.2.1.1">Magpie <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib94" title="">xu2024magpie, </a>)</cite>, Tulu 3 <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib111" title="">lambert2024tulu3, </a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.6.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.6.3.1">
<span class="ltx_p" id="S3.T4.3.6.3.1.1" style="width:34.1pt;">1.56M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.7.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.7.1.1">
<span class="ltx_p" id="S3.T4.3.7.1.1.1" style="width:62.6pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.7.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T4.3.7.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the training dataset used in the Video-centric Fine-tuning stage of the VideoLLaMA3 model training. It breaks down the data by task type (General Video, Streaming Video, Temporal Grounding, Image-only, Text-only) and lists the specific datasets used for each.  This stage focuses on enhancing video understanding capabilities, and the data mixture reflects this emphasis.
> <details>
> <summary>read the caption</summary>
> Table 4: Data mixture in video-centric fine-tuning stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.17">
<tr class="ltx_tr" id="S4.T5.7.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.3.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_nopad ltx_align_top" id="S4.T5.3.1.1.1">
<span class="ltx_p" id="S4.T5.3.1.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span><svg height="19.22" overflow="visible" version="1.1" width="133.86"><g transform="translate(0,19.22) scale(1,-1)"><path d="M 0,19.22 133.86,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="68.26">
<span class="ltx_inline-block" id="S4.T5.3.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T5.3.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S4.T5.3.1.1.1.pic1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.1.1.pic1.1.1.1.1.1">Benchmark</span></span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(96.19,9.61)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S4.T5.3.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S4.T5.3.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S4.T5.3.1.1.1.pic1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.1.1.pic1.2.1.1.1.1">Model</span></span>
</span>
</span></foreignobject></g></g></g></svg>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.4.2.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T5.4.2.2.1">
<span class="ltx_para ltx_noindent" id="S4.T5.4.2.2.1.p1">
<span class="ltx_p" id="S4.T5.4.2.2.1.p1.1"><span class="ltx_text" id="S4.T5.4.2.2.1.p1.1.2"></span> <span class="ltx_text" id="S4.T5.4.2.2.1.p1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.4.2.2.1.p1.1.1.1">
<span class="ltx_tr" id="S4.T5.4.2.2.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.4.2.2.1.p1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="15" id="S4.T5.4.2.2.1.p1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/huggingface.png" width="15"/> <span class="ltx_text ltx_font_bold" id="S4.T5.4.2.2.1.p1.1.1.1.1.1.1">SmolVLM</span></span></span>
<span class="ltx_tr" id="S4.T5.4.2.2.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.4.2.2.1.p1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.2.2.1.p1.1.1.1.2.1.1">2B</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.4.2.2.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.5.3.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T5.5.3.3.1">
<span class="ltx_para ltx_noindent" id="S4.T5.5.3.3.1.p1">
<span class="ltx_p" id="S4.T5.5.3.3.1.p1.1"><span class="ltx_text" id="S4.T5.5.3.3.1.p1.1.2"></span> <span class="ltx_text" id="S4.T5.5.3.3.1.p1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.5.3.3.1.p1.1.1.1">
<span class="ltx_tr" id="S4.T5.5.3.3.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.5.3.3.1.p1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T5.5.3.3.1.p1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/opengvlab.jpeg" width="12"/> <span class="ltx_text ltx_font_bold" id="S4.T5.5.3.3.1.p1.1.1.1.1.1.1">InternVL2.5</span></span></span>
<span class="ltx_tr" id="S4.T5.5.3.3.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.5.3.3.1.p1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.3.3.1.p1.1.1.1.2.1.1">2B</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.5.3.3.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.6.4.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T5.6.4.4.1">
<span class="ltx_para ltx_noindent" id="S4.T5.6.4.4.1.p1">
<span class="ltx_p" id="S4.T5.6.4.4.1.p1.1"><span class="ltx_text" id="S4.T5.6.4.4.1.p1.1.2"></span> <span class="ltx_text" id="S4.T5.6.4.4.1.p1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.6.4.4.1.p1.1.1.1">
<span class="ltx_tr" id="S4.T5.6.4.4.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.6.4.4.1.p1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T5.6.4.4.1.p1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/qwen.png" width="12"/> <span class="ltx_text ltx_font_bold" id="S4.T5.6.4.4.1.p1.1.1.1.1.1.1">Qwen2-VL</span></span></span>
<span class="ltx_tr" id="S4.T5.6.4.4.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.6.4.4.1.p1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.4.4.1.p1.1.1.1.2.1.1">2B</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.6.4.4.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify" id="S4.T5.7.5.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T5.7.5.5.1">
<span class="ltx_para ltx_noindent" id="S4.T5.7.5.5.1.p1">
<span class="ltx_p" id="S4.T5.7.5.5.1.p1.1"><span class="ltx_text" id="S4.T5.7.5.5.1.p1.1.1"></span> <span class="ltx_text" id="S4.T5.7.5.5.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.7.5.5.1.p1.1.2.1">
<span class="ltx_tr" id="S4.T5.7.5.5.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.7.5.5.1.p1.1.2.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.7.5.5.1.p1.1.2.1.1.1.1">VideoLLaMA3</span></span></span>
<span class="ltx_tr" id="S4.T5.7.5.5.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.7.5.5.1.p1.1.2.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.7.5.5.1.p1.1.2.1.2.1.1">2B</span></span></span>
</span></span><span class="ltx_text" id="S4.T5.7.5.5.1.p1.1.3"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.16" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="5" id="S4.T5.17.16.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.16.1.1">
<span class="ltx_p" id="S4.T5.17.16.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>      <em class="ltx_emph ltx_font_italic" id="S4.T5.17.16.1.2">Document/Chart/Scene Text Understanding</em>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.17.17.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.17.1.1">
<span class="ltx_p" id="S4.T5.17.17.1.1.1" style="width:85.4pt;">ChartQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.17.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.17.2.1">
<span class="ltx_p" id="S4.T5.17.17.2.1.1">65.3*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.17.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.17.3.1">
<span class="ltx_p" id="S4.T5.17.17.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.17.17.3.1.1.1">79.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.17.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.17.4.1">
<span class="ltx_p" id="S4.T5.17.17.4.1.1">73.5<span class="ltx_text ltx_phantom" id="S4.T5.17.17.4.1.1.1"><span style="visibility:hidden">-</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.17.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.17.5.1">
<span class="ltx_p" id="S4.T5.17.17.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.17.17.5.1.1.1">79.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.8.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.8.6.1.1">
<span class="ltx_p" id="S4.T5.8.6.1.1.1" style="width:85.4pt;">DocVQA<sub class="ltx_sub" id="S4.T5.8.6.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.8.6.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.8.6.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.8.6.2.1">
<span class="ltx_p" id="S4.T5.8.6.2.1.1">81.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.8.6.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.8.6.3.1">
<span class="ltx_p" id="S4.T5.8.6.3.1.1">88.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.8.6.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.8.6.4.1">
<span class="ltx_p" id="S4.T5.8.6.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.8.6.4.1.1.1">90.1</span><span class="ltx_text ltx_phantom" id="S4.T5.8.6.4.1.1.2"><span style="visibility:hidden">-</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.8.6.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.8.6.5.1">
<span class="ltx_p" id="S4.T5.8.6.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.8.6.5.1.1.1">91.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.9.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.9.7.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.9.7.1.1">
<span class="ltx_p" id="S4.T5.9.7.1.1.1" style="width:85.4pt;">InfoVQA<sub class="ltx_sub" id="S4.T5.9.7.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.9.7.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.9.7.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.9.7.2.1">
<span class="ltx_p" id="S4.T5.9.7.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.9.7.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.9.7.3.1">
<span class="ltx_p" id="S4.T5.9.7.3.1.1">60.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.9.7.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.9.7.4.1">
<span class="ltx_p" id="S4.T5.9.7.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.9.7.4.1.1.1">65.5</span><span class="ltx_text ltx_phantom" id="S4.T5.9.7.4.1.1.2"><span style="visibility:hidden">-</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.9.7.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.9.7.5.1">
<span class="ltx_p" id="S4.T5.9.7.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.9.7.5.1.1.1">69.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.10.8.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.10.8.2.1">
<span class="ltx_p" id="S4.T5.10.8.2.1.1" style="width:85.4pt;">OCRBench</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.10.8.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.10.8.3.1">
<span class="ltx_p" id="S4.T5.10.8.3.1.1">622*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.10.8.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.10.8.4.1">
<span class="ltx_p" id="S4.T5.10.8.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.10.8.4.1.1.1">804<span class="ltx_text ltx_phantom ltx_font_medium" id="S4.T5.10.8.4.1.1.1.1"><span style="visibility:hidden">.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.10.8.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.10.8.1.1">
<span class="ltx_p" id="S4.T5.10.8.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T5.10.8.1.1.1.1"><span style="visibility:hidden">–</span></span>767<sup class="ltx_sup" id="S4.T5.10.8.1.1.1.2">∗</sup><span class="ltx_text ltx_phantom" id="S4.T5.10.8.1.1.1.3"><span style="visibility:hidden">.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.10.8.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.10.8.5.1">
<span class="ltx_p" id="S4.T5.10.8.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.10.8.5.1.1.1">779</span><span class="ltx_text ltx_phantom" id="S4.T5.10.8.5.1.1.2"><span style="visibility:hidden">.</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.18" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="5" id="S4.T5.17.18.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T5.17.18.1.1" style="background-color:#E6E6E6;">Math</em></td>
</tr>
<tr class="ltx_tr" id="S4.T5.11.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.11.9.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.11.9.1.1">
<span class="ltx_p" id="S4.T5.11.9.1.1.1" style="width:85.4pt;">MathVista<sub class="ltx_sub" id="S4.T5.11.9.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.11.9.1.1.1.1.1">testmini</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.11.9.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.11.9.2.1">
<span class="ltx_p" id="S4.T5.11.9.2.1.1">44.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.11.9.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.11.9.3.1">
<span class="ltx_p" id="S4.T5.11.9.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.11.9.3.1.1.1">51.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.11.9.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.11.9.4.1">
<span class="ltx_p" id="S4.T5.11.9.4.1.1">43.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.11.9.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.11.9.5.1">
<span class="ltx_p" id="S4.T5.11.9.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.11.9.5.1.1.1">59.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.12.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.12.10.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.12.10.1.1">
<span class="ltx_p" id="S4.T5.12.10.1.1.1" style="width:85.4pt;">MathVision<sub class="ltx_sub" id="S4.T5.12.10.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.12.10.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.12.10.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.12.10.2.1">
<span class="ltx_p" id="S4.T5.12.10.2.1.1">6.5*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.12.10.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.12.10.3.1">
<span class="ltx_p" id="S4.T5.12.10.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.12.10.3.1.1.1">14.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.12.10.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.12.10.4.1">
<span class="ltx_p" id="S4.T5.12.10.4.1.1">12.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.12.10.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.12.10.5.1">
<span class="ltx_p" id="S4.T5.12.10.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.12.10.5.1.1.1">15.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.19" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="5" id="S4.T5.17.19.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T5.17.19.1.1" style="background-color:#E6E6E6;">Multi Image</em></td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.17.20.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.20.1.1">
<span class="ltx_p" id="S4.T5.17.20.1.1.1" style="width:85.4pt;">MMMU-Pro</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.20.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.20.2.1">
<span class="ltx_p" id="S4.T5.17.20.2.1.1">17.1*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.20.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.20.3.1">
<span class="ltx_p" id="S4.T5.17.20.3.1.1">23.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.20.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.20.4.1">
<span class="ltx_p" id="S4.T5.17.20.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.17.20.4.1.1.1">26.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.20.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.20.5.1">
<span class="ltx_p" id="S4.T5.17.20.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.17.20.5.1.1.1">28.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.13.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.13.11.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.13.11.1.1">
<span class="ltx_p" id="S4.T5.13.11.1.1.1" style="width:85.4pt;">MMMU<sub class="ltx_sub" id="S4.T5.13.11.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.13.11.1.1.1.1.1">val</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.13.11.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.13.11.2.1">
<span class="ltx_p" id="S4.T5.13.11.2.1.1">38.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.13.11.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.13.11.3.1">
<span class="ltx_p" id="S4.T5.13.11.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.13.11.3.1.1.1">43.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.13.11.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.13.11.4.1">
<span class="ltx_p" id="S4.T5.13.11.4.1.1">41.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.13.11.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.13.11.5.1">
<span class="ltx_p" id="S4.T5.13.11.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.13.11.5.1.1.1">45.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.15.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.14.12.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.14.12.1.1">
<span class="ltx_p" id="S4.T5.14.12.1.1.1" style="width:85.4pt;">BLINK<sub class="ltx_sub" id="S4.T5.14.12.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T5.14.12.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.15.13.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.15.13.3.1">
<span class="ltx_p" id="S4.T5.15.13.3.1.1">42.3*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.15.13.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.15.13.4.1">
<span class="ltx_p" id="S4.T5.15.13.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.15.13.4.1.1.1">44.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.15.13.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.15.13.2.1">
<span class="ltx_p" id="S4.T5.15.13.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T5.15.13.2.1.1.1"><span style="visibility:hidden">–</span></span>43.1<sup class="ltx_sup" id="S4.T5.15.13.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.15.13.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.15.13.5.1">
<span class="ltx_p" id="S4.T5.15.13.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.15.13.5.1.1.1">44.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.21" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="5" id="S4.T5.17.21.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T5.17.21.1.1" style="background-color:#E6E6E6;">Knowledge/General QA</em></td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.17.22.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.22.1.1">
<span class="ltx_p" id="S4.T5.17.22.1.1.1" style="width:85.4pt;">RealWorldQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.22.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.22.2.1">
<span class="ltx_p" id="S4.T5.17.22.2.1.1">48.8*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.22.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.22.3.1">
<span class="ltx_p" id="S4.T5.17.22.3.1.1">60.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.22.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.22.4.1">
<span class="ltx_p" id="S4.T5.17.22.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.17.22.4.1.1.1">62.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.22.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.22.5.1">
<span class="ltx_p" id="S4.T5.17.22.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.17.22.5.1.1.1">67.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.17.23.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.23.1.1">
<span class="ltx_p" id="S4.T5.17.23.1.1.1" style="width:85.4pt;">AI2D</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.23.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.23.2.1">
<span class="ltx_p" id="S4.T5.17.23.2.1.1">62.1*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.23.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.23.3.1">
<span class="ltx_p" id="S4.T5.17.23.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.17.23.3.1.1.1">74.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.23.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.23.4.1">
<span class="ltx_p" id="S4.T5.17.23.4.1.1">69.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.23.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.23.5.1">
<span class="ltx_p" id="S4.T5.17.23.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.17.23.5.1.1.1">78.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.16.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.16.14.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.16.14.2.1">
<span class="ltx_p" id="S4.T5.16.14.2.1.1" style="width:85.4pt;">GQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.16.14.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.16.14.3.1">
<span class="ltx_p" id="S4.T5.16.14.3.1.1">49.2*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.16.14.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.16.14.4.1">
<span class="ltx_p" id="S4.T5.16.14.4.1.1">59.5*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.16.14.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.16.14.1.1">
<span class="ltx_p" id="S4.T5.16.14.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T5.16.14.1.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.16.14.1.1.1.2">59.8</span><sup class="ltx_sup" id="S4.T5.16.14.1.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.16.14.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.16.14.5.1">
<span class="ltx_p" id="S4.T5.16.14.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.16.14.5.1.1.1">62.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.17.15.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.15.2.1">
<span class="ltx_p" id="S4.T5.17.15.2.1.1" style="width:85.4pt;">MME</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.15.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.15.3.1">
<span class="ltx_p" id="S4.T5.17.15.3.1.1">1600*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.15.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.15.1.1">
<span class="ltx_p" id="S4.T5.17.15.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T5.17.15.1.1.1.2"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_phantom" id="S4.T5.17.15.1.1.1.3"><span style="visibility:hidden">.</span></span><span class="ltx_text ltx_font_bold" id="S4.T5.17.15.1.1.1.1">2005<sup class="ltx_sup" id="S4.T5.17.15.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T5.17.15.1.1.1.1.1.1">∗</span></sup></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T5.17.15.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.15.4.1">
<span class="ltx_p" id="S4.T5.17.15.4.1.1"><span class="ltx_text ltx_phantom" id="S4.T5.17.15.4.1.1.1"><span style="visibility:hidden">.</span></span>1872</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.15.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.15.5.1">
<span class="ltx_p" id="S4.T5.17.15.5.1.1"><span class="ltx_text ltx_phantom" id="S4.T5.17.15.5.1.1.1"><span style="visibility:hidden">.</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.17.15.5.1.1.2">1901</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.17.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T5.17.24.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.17.24.1.1">
<span class="ltx_p" id="S4.T5.17.24.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.24.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.24.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.24.4" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T5.17.24.5" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several 2-billion parameter image LLMs on a variety of image understanding benchmarks.  The models compared are SmolVLM, InternVL 2.5, Qwen2-VL, and VideoLLaMA3.  The benchmarks cover document and chart understanding, mathematical reasoning, multi-image understanding, and general knowledge question answering. Results are presented as percentages, with the best result for each benchmark shown in bold and the second-best result underlined.  Results marked with an asterisk (*) indicate that they were reproduced by the authors, rather than taken directly from the original benchmark's leaderboard. This allows for a more consistent and fair comparison across models.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation results of 2B models on image benchmarks. ∗ denotes the reproduced results. The best results are in bold and the second best ones are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.20">
<tr class="ltx_tr" id="S4.T6.9.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.9.5.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.9.5.6.1">
<span class="ltx_p" id="S4.T6.9.5.6.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.5.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T6.5.1.1.1.1" style="width:64.2pt;height:75.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:66.0pt;transform:translate(-0.91pt,-19.58pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T6.5.1.1.1.1.1"><span class="ltx_text" id="S4.T6.5.1.1.1.1.1.2"></span><span class="ltx_text" id="S4.T6.5.1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.5.1.1.1.1.1.1.1">
<span class="ltx_tr" id="S4.T6.5.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.5.1.1.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.1.1.1.1.1.2.1.1">Molmo-7B-D</span></span></span>
<span class="ltx_tr" id="S4.T6.5.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.5.1.1.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.1.1.1.1.1.1.1.1">7B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="9" id="S4.T6.5.1.1.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/ai2.png" width="27"/></span></span>
</span></span> <span class="ltx_text" id="S4.T6.5.1.1.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.6.2.2" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T6.6.2.2.1.1" style="width:62.5pt;height:72.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:62.6pt;transform:translate(-0.05pt,-18.09pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T6.6.2.2.1.1.1"><span class="ltx_text" id="S4.T6.6.2.2.1.1.1.2"></span><span class="ltx_text" id="S4.T6.6.2.2.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.6.2.2.1.1.1.1.1">
<span class="ltx_tr" id="S4.T6.6.2.2.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.6.2.2.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.6.2.2.1.1.1.1.1.2.1.1">InternVL2.5</span></span></span>
<span class="ltx_tr" id="S4.T6.6.2.2.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.6.2.2.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.6.2.2.1.1.1.1.1.1.1.1">8B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T6.6.2.2.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/opengvlab.jpeg" width="12"/></span></span>
</span></span> <span class="ltx_text" id="S4.T6.6.2.2.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.7.3.3" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T6.7.3.3.1.1" style="width:75.9pt;height:95.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:89.4pt;transform:translate(-6.76pt,-29.71pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T6.7.3.3.1.1.1"><span class="ltx_text" id="S4.T6.7.3.3.1.1.1.2"></span><span class="ltx_text" id="S4.T6.7.3.3.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.7.3.3.1.1.1.1.1">
<span class="ltx_tr" id="S4.T6.7.3.3.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.7.3.3.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.7.3.3.1.1.1.1.1.2.1.1">LLaVA-OneVision</span></span></span>
<span class="ltx_tr" id="S4.T6.7.3.3.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.7.3.3.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.7.3.3.1.1.1.1.1.1.1.1">7B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T6.7.3.3.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/bytedance.jpg" width="14"/></span></span>
</span></span> <span class="ltx_text" id="S4.T6.7.3.3.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.8.4.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.8.4.4.1">
<span class="ltx_inline-block ltx_align_center ltx_transformed_outer" id="S4.T6.8.4.4.1.1" style="width:52.7pt;height:55.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:43.0pt;transform:translate(4.84pt,-9.61pt) rotate(-60deg) ;">
<span class="ltx_p" id="S4.T6.8.4.4.1.1.1"><span class="ltx_text" id="S4.T6.8.4.4.1.1.1.2"></span><span class="ltx_text" id="S4.T6.8.4.4.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.8.4.4.1.1.1.1.1">
<span class="ltx_tr" id="S4.T6.8.4.4.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.8.4.4.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.8.4.4.1.1.1.1.1.2.1.1">NVILA</span></span></span>
<span class="ltx_tr" id="S4.T6.8.4.4.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.8.4.4.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.8.4.4.1.1.1.1.1.1.1.1">8B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="12" id="S4.T6.8.4.4.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/nvidia.jpg" width="16"/></span></span>
</span></span> <span class="ltx_text" id="S4.T6.8.4.4.1.1.1.3"></span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.9.5.5" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T6.9.5.5.1.1" style="width:59.2pt;height:66.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:56.1pt;transform:translate(1.55pt,-15.31pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T6.9.5.5.1.1.1"><span class="ltx_text" id="S4.T6.9.5.5.1.1.1.2"></span><span class="ltx_text" id="S4.T6.9.5.5.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.9.5.5.1.1.1.1.1">
<span class="ltx_tr" id="S4.T6.9.5.5.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.9.5.5.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.9.5.5.1.1.1.1.1.2.1.1">Qwen2-VL</span></span></span>
<span class="ltx_tr" id="S4.T6.9.5.5.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.9.5.5.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.9.5.5.1.1.1.1.1.1.1.1">8B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T6.9.5.5.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/qwen.png" width="11"/></span></span>
</span></span> <span class="ltx_text" id="S4.T6.9.5.5.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.9.5.7" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T6.9.5.7.1" style="width:68.1pt;height:81.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:73.8pt;transform:translate(-2.86pt,-22.95pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T6.9.5.7.1.1"><span class="ltx_text" id="S4.T6.9.5.7.1.1.1"></span><span class="ltx_text" id="S4.T6.9.5.7.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T6.9.5.7.1.1.2.1">
<span class="ltx_tr" id="S4.T6.9.5.7.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.9.5.7.1.1.2.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.9.5.7.1.1.2.1.1.1.1">VideoLLaMA3</span></span></span>
<span class="ltx_tr" id="S4.T6.9.5.7.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T6.9.5.7.1.1.2.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.9.5.7.1.1.2.1.2.1.1">7B</span></span></span>
</span></span> <span class="ltx_text" id="S4.T6.9.5.7.1.1.3"></span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.17" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="7" id="S4.T6.20.17.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.17.1.1">
<span class="ltx_p" id="S4.T6.20.17.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>      <em class="ltx_emph ltx_font_italic" id="S4.T6.20.17.1.2">Document/Chart/Scene Text Understanding</em>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.20.18.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.18.1.1">
<span class="ltx_p" id="S4.T6.20.18.1.1.1" style="width:85.4pt;">ChartQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.18.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.18.2.1">
<span class="ltx_p" id="S4.T6.20.18.2.1.1">84.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.18.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.18.3.1">
<span class="ltx_p" id="S4.T6.20.18.3.1.1">84.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.18.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.18.4.1">
<span class="ltx_p" id="S4.T6.20.18.4.1.1">80.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.18.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.18.5.1">
<span class="ltx_p" id="S4.T6.20.18.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.20.18.5.1.1.1">86.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.18.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.18.6.1">
<span class="ltx_p" id="S4.T6.20.18.6.1.1">83.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.18.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.18.7.1">
<span class="ltx_p" id="S4.T6.20.18.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.20.18.7.1.1.1">86.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.10.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.10.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.10.6.1.1">
<span class="ltx_p" id="S4.T6.10.6.1.1.1" style="width:85.4pt;">DocVQA<sub class="ltx_sub" id="S4.T6.10.6.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T6.10.6.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.10.6.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.10.6.2.1">
<span class="ltx_p" id="S4.T6.10.6.2.1.1">92.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.10.6.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.10.6.3.1">
<span class="ltx_p" id="S4.T6.10.6.3.1.1">93.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.10.6.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.10.6.4.1">
<span class="ltx_p" id="S4.T6.10.6.4.1.1">87.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.10.6.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.10.6.5.1">
<span class="ltx_p" id="S4.T6.10.6.5.1.1">93.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.10.6.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.10.6.6.1">
<span class="ltx_p" id="S4.T6.10.6.6.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.10.6.6.1.1.1">94.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.10.6.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.10.6.7.1">
<span class="ltx_p" id="S4.T6.10.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.10.6.7.1.1.1">94.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.11.7.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.11.7.1.1">
<span class="ltx_p" id="S4.T6.11.7.1.1.1" style="width:85.4pt;">InfoVQA<sub class="ltx_sub" id="S4.T6.11.7.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T6.11.7.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.11.7.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.11.7.2.1">
<span class="ltx_p" id="S4.T6.11.7.2.1.1">72.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.11.7.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.11.7.3.1">
<span class="ltx_p" id="S4.T6.11.7.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.11.7.3.1.1.1">77.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.11.7.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.11.7.4.1">
<span class="ltx_p" id="S4.T6.11.7.4.1.1">68.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.11.7.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.11.7.5.1">
<span class="ltx_p" id="S4.T6.11.7.5.1.1">70.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.11.7.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.11.7.6.1">
<span class="ltx_p" id="S4.T6.11.7.6.1.1">76.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.11.7.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.11.7.7.1">
<span class="ltx_p" id="S4.T6.11.7.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.11.7.7.1.1.1">78.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.20.19.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.19.1.1">
<span class="ltx_p" id="S4.T6.20.19.1.1.1" style="width:85.4pt;">OCRBench</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.19.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.19.2.1">
<span class="ltx_p" id="S4.T6.20.19.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.19.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.19.3.1">
<span class="ltx_p" id="S4.T6.20.19.3.1.1">822<span class="ltx_text ltx_phantom" id="S4.T6.20.19.3.1.1.1"><span style="visibility:hidden">.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.19.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.19.4.1">
<span class="ltx_p" id="S4.T6.20.19.4.1.1">621<span class="ltx_text ltx_phantom" id="S4.T6.20.19.4.1.1.1"><span style="visibility:hidden">.</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.19.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.19.5.1">
<span class="ltx_p" id="S4.T6.20.19.5.1.1">676*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.19.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.19.6.1">
<span class="ltx_p" id="S4.T6.20.19.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.20.19.6.1.1.1">845<span class="ltx_text ltx_phantom ltx_font_medium" id="S4.T6.20.19.6.1.1.1.1"><span style="visibility:hidden">.</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.19.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.19.7.1">
<span class="ltx_p" id="S4.T6.20.19.7.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.20.19.7.1.1.1">828</span><span class="ltx_text ltx_phantom" id="S4.T6.20.19.7.1.1.2"><span style="visibility:hidden">.</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.20" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="7" id="S4.T6.20.20.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T6.20.20.1.1" style="background-color:#E6E6E6;">Math</em></td>
</tr>
<tr class="ltx_tr" id="S4.T6.12.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.12.8.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.12.8.1.1">
<span class="ltx_p" id="S4.T6.12.8.1.1.1" style="width:85.4pt;">MathVista<sub class="ltx_sub" id="S4.T6.12.8.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T6.12.8.1.1.1.1.1">testmini</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.12.8.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.12.8.2.1">
<span class="ltx_p" id="S4.T6.12.8.2.1.1">51.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.12.8.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.12.8.3.1">
<span class="ltx_p" id="S4.T6.12.8.3.1.1">64.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.12.8.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.12.8.4.1">
<span class="ltx_p" id="S4.T6.12.8.4.1.1">63.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.12.8.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.12.8.5.1">
<span class="ltx_p" id="S4.T6.12.8.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.12.8.5.1.1.1">65.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.12.8.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.12.8.6.1">
<span class="ltx_p" id="S4.T6.12.8.6.1.1">58.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.12.8.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.12.8.7.1">
<span class="ltx_p" id="S4.T6.12.8.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.12.8.7.1.1.1">67.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.13.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.13.9.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.13.9.1.1">
<span class="ltx_p" id="S4.T6.13.9.1.1.1" style="width:85.4pt;">MathVision<sub class="ltx_sub" id="S4.T6.13.9.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T6.13.9.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.13.9.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.13.9.2.1">
<span class="ltx_p" id="S4.T6.13.9.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.13.9.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.13.9.3.1">
<span class="ltx_p" id="S4.T6.13.9.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.13.9.3.1.1.1">19.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.13.9.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.13.9.4.1">
<span class="ltx_p" id="S4.T6.13.9.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.13.9.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.13.9.5.1">
<span class="ltx_p" id="S4.T6.13.9.5.1.1">11.9*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.13.9.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.13.9.6.1">
<span class="ltx_p" id="S4.T6.13.9.6.1.1">16.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.13.9.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.13.9.7.1">
<span class="ltx_p" id="S4.T6.13.9.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.13.9.7.1.1.1">26.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.21" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="7" id="S4.T6.20.21.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T6.20.21.1.1" style="background-color:#E6E6E6;">Multi Image</em></td>
</tr>
<tr class="ltx_tr" id="S4.T6.15.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.15.11.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.15.11.3.1">
<span class="ltx_p" id="S4.T6.15.11.3.1.1" style="width:85.4pt;">MMMU-Pro</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.15.11.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.15.11.4.1">
<span class="ltx_p" id="S4.T6.15.11.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.15.11.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.15.11.5.1">
<span class="ltx_p" id="S4.T6.15.11.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.15.11.5.1.1.1">34.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.14.10.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.14.10.1.1">
<span class="ltx_p" id="S4.T6.14.10.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.14.10.1.1.1.1"><span style="visibility:hidden">–</span></span>24.1<sup class="ltx_sup" id="S4.T6.14.10.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T6.14.10.1.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.15.11.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.15.11.6.1">
<span class="ltx_p" id="S4.T6.15.11.6.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.15.11.6.1.1.1"><span style="visibility:hidden">–</span></span>29.5*</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.15.11.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.15.11.2.1">
<span class="ltx_p" id="S4.T6.15.11.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.15.11.2.1.1.1"><span style="visibility:hidden">–</span></span>31.4<sup class="ltx_sup" id="S4.T6.15.11.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.15.11.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.15.11.7.1">
<span class="ltx_p" id="S4.T6.15.11.7.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.15.11.7.1.1.1">33.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.16.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.16.12.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.16.12.1.1">
<span class="ltx_p" id="S4.T6.16.12.1.1.1" style="width:85.4pt;">MMMU<sub class="ltx_sub" id="S4.T6.16.12.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T6.16.12.1.1.1.1.1">val</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.16.12.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.16.12.2.1">
<span class="ltx_p" id="S4.T6.16.12.2.1.1">45.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.16.12.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.16.12.3.1">
<span class="ltx_p" id="S4.T6.16.12.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.16.12.3.1.1.1">56.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.16.12.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.16.12.4.1">
<span class="ltx_p" id="S4.T6.16.12.4.1.1">48.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.16.12.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.16.12.5.1">
<span class="ltx_p" id="S4.T6.16.12.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.16.12.5.1.1.1">49.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.16.12.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.16.12.6.1">
<span class="ltx_p" id="S4.T6.16.12.6.1.1">54.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.16.12.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.16.12.7.1">
<span class="ltx_p" id="S4.T6.16.12.7.1.1">48.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.19.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.17.13.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.17.13.1.1">
<span class="ltx_p" id="S4.T6.17.13.1.1.1" style="width:85.4pt;">BLINK<sub class="ltx_sub" id="S4.T6.17.13.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T6.17.13.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.19.15.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.19.15.4.1">
<span class="ltx_p" id="S4.T6.19.15.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.19.15.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.19.15.5.1">
<span class="ltx_p" id="S4.T6.19.15.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.19.15.5.1.1.1">54.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.19.15.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.19.15.6.1">
<span class="ltx_p" id="S4.T6.19.15.6.1.1">48.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.18.14.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.18.14.2.1">
<span class="ltx_p" id="S4.T6.18.14.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.18.14.2.1.1.1"><span style="visibility:hidden">–</span></span>47.0<sup class="ltx_sup" id="S4.T6.18.14.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.19.15.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.19.15.3.1">
<span class="ltx_p" id="S4.T6.19.15.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.19.15.3.1.1.1"><span style="visibility:hidden">–</span></span>43.1<sup class="ltx_sup" id="S4.T6.19.15.3.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.19.15.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.19.15.7.1">
<span class="ltx_p" id="S4.T6.19.15.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.19.15.7.1.1.1">55.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.22" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="7" id="S4.T6.20.22.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T6.20.22.1.1" style="background-color:#E6E6E6;">Knowledge/General QA</em></td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.20.23.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.23.1.1">
<span class="ltx_p" id="S4.T6.20.23.1.1.1" style="width:85.4pt;">RealWorldQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.23.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.23.2.1">
<span class="ltx_p" id="S4.T6.20.23.2.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.20.23.2.1.1.1">70.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.23.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.23.3.1">
<span class="ltx_p" id="S4.T6.20.23.3.1.1">70.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.23.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.23.4.1">
<span class="ltx_p" id="S4.T6.20.23.4.1.1">66.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.23.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.23.5.1">
<span class="ltx_p" id="S4.T6.20.23.5.1.1">68.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.23.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.23.6.1">
<span class="ltx_p" id="S4.T6.20.23.6.1.1">70.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.23.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.23.7.1">
<span class="ltx_p" id="S4.T6.20.23.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.20.23.7.1.1.1">72.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.24">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.20.24.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.24.1.1">
<span class="ltx_p" id="S4.T6.20.24.1.1.1" style="width:85.4pt;">AI2D</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.24.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.24.2.1">
<span class="ltx_p" id="S4.T6.20.24.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.20.24.2.1.1.1">93.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.24.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.24.3.1">
<span class="ltx_p" id="S4.T6.20.24.3.1.1">84.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.24.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.24.4.1">
<span class="ltx_p" id="S4.T6.20.24.4.1.1">81.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.24.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.24.5.1">
<span class="ltx_p" id="S4.T6.20.24.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.20.24.5.1.1.1">92.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.24.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.24.6.1">
<span class="ltx_p" id="S4.T6.20.24.6.1.1">83.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.24.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.24.7.1">
<span class="ltx_p" id="S4.T6.20.24.7.1.1">84.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.20.16.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.16.2.1">
<span class="ltx_p" id="S4.T6.20.16.2.1.1" style="width:85.4pt;">GQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.16.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.16.3.1">
<span class="ltx_p" id="S4.T6.20.16.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.16.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.16.4.1">
<span class="ltx_p" id="S4.T6.20.16.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.16.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.16.5.1">
<span class="ltx_p" id="S4.T6.20.16.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.20.16.5.1.1.1">62.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.16.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.16.6.1">
<span class="ltx_p" id="S4.T6.20.16.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.16.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.16.1.1">
<span class="ltx_p" id="S4.T6.20.16.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.20.16.1.1.1.1"><span style="visibility:hidden">–</span></span>62.4<sup class="ltx_sup" id="S4.T6.20.16.1.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.16.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.16.7.1">
<span class="ltx_p" id="S4.T6.20.16.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.20.16.7.1.1.1">64.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.20.25.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.25.1.1">
<span class="ltx_p" id="S4.T6.20.25.1.1.1" style="width:85.4pt;">MME</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.25.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.25.2.1">
<span class="ltx_p" id="S4.T6.20.25.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.25.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.25.3.1">
<span class="ltx_p" id="S4.T6.20.25.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.20.25.3.1.1.1"><span style="visibility:hidden">.</span></span><span class="ltx_text ltx_font_bold" id="S4.T6.20.25.3.1.1.2">2344</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.25.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.25.4.1">
<span class="ltx_p" id="S4.T6.20.25.4.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.20.25.4.1.1.1"><span style="visibility:hidden">.</span></span>1998</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.25.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.25.5.1">
<span class="ltx_p" id="S4.T6.20.25.5.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.20.25.5.1.1.1"><span style="visibility:hidden">.</span></span>2219</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T6.20.25.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.25.6.1">
<span class="ltx_p" id="S4.T6.20.25.6.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.20.25.6.1.1.1"><span style="visibility:hidden">.</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.20.25.6.1.1.2">2327</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.25.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.25.7.1">
<span class="ltx_p" id="S4.T6.20.25.7.1.1"><span class="ltx_text ltx_phantom" id="S4.T6.20.25.7.1.1.1"><span style="visibility:hidden">.</span></span>2102</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.20.26">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T6.20.26.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T6.20.26.1.1">
<span class="ltx_p" id="S4.T6.20.26.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.26.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.26.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.26.4" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.26.5" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.26.6" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T6.20.26.7" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several 7B parameter large language models (LLMs) on a variety of image-based benchmarks.  The benchmarks assess capabilities in document/chart/scene text understanding, mathematical reasoning, multi-image understanding, and general knowledge question answering.  Results are shown as percentages and are categorized by benchmark type.  The table highlights the top-performing model for each task, indicating the best and second-best results using bold and underline formatting respectively.  Some results denoted by ∗ are reproduced from other sources and some results denoted by † are from the official leaderboard.  This allows readers to easily compare VideoLLaMA3's performance against other state-of-the-art models in image understanding.
> <details>
> <summary>read the caption</summary>
> Table 6: Evaluation results of 7B models on image benchmarks. ∗ denotes the reproduced results. † denotes the results retrieved from the official leaderboard. The best results are in bold and the second best ones are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.27">
<tr class="ltx_tr" id="S4.T7.7.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.3.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_nopad ltx_align_top" id="S4.T7.3.1.1.1">
<span class="ltx_p" id="S4.T7.3.1.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span><svg height="19.22" overflow="visible" version="1.1" width="133.86"><g transform="translate(0,19.22) scale(1,-1)"><path d="M 0,19.22 133.86,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="68.26">
<span class="ltx_inline-block" id="S4.T7.3.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T7.3.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S4.T7.3.1.1.1.pic1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.3.1.1.1.pic1.1.1.1.1.1">Benchmark</span></span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(96.19,9.61)"><g transform="translate(0,9.61) scale(1, -1)"><foreignobject height="9.61" overflow="visible" width="37.67">
<span class="ltx_inline-block" id="S4.T7.3.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S4.T7.3.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S4.T7.3.1.1.1.pic1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.3.1.1.1.pic1.2.1.1.1.1">Model</span></span>
</span>
</span></foreignobject></g></g></g></svg>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.4.2.2" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T7.4.2.2.1">
<span class="ltx_para ltx_noindent" id="S4.T7.4.2.2.1.p1">
<span class="ltx_p" id="S4.T7.4.2.2.1.p1.1"><span class="ltx_text" id="S4.T7.4.2.2.1.p1.1.2"></span> <span class="ltx_text" id="S4.T7.4.2.2.1.p1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T7.4.2.2.1.p1.1.1.1">
<span class="ltx_tr" id="S4.T7.4.2.2.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.4.2.2.1.p1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T7.4.2.2.1.p1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/meta.png" width="12"/> <span class="ltx_text ltx_font_bold" id="S4.T7.4.2.2.1.p1.1.1.1.1.1.1">Apollo</span></span></span>
<span class="ltx_tr" id="S4.T7.4.2.2.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.4.2.2.1.p1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.2.2.1.p1.1.1.1.2.1.1">2B</span></span></span>
</span></span><span class="ltx_text" id="S4.T7.4.2.2.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.5.3.3" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T7.5.3.3.1">
<span class="ltx_para ltx_noindent" id="S4.T7.5.3.3.1.p1">
<span class="ltx_p" id="S4.T7.5.3.3.1.p1.1"><span class="ltx_text" id="S4.T7.5.3.3.1.p1.1.2"></span> <span class="ltx_text" id="S4.T7.5.3.3.1.p1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T7.5.3.3.1.p1.1.1.1">
<span class="ltx_tr" id="S4.T7.5.3.3.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.5.3.3.1.p1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T7.5.3.3.1.p1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/opengvlab.jpeg" width="12"/> <span class="ltx_text ltx_font_bold" id="S4.T7.5.3.3.1.p1.1.1.1.1.1.1">InternVL2.5</span></span></span>
<span class="ltx_tr" id="S4.T7.5.3.3.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.5.3.3.1.p1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.5.3.3.1.p1.1.1.1.2.1.1">2B</span></span></span>
</span></span><span class="ltx_text" id="S4.T7.5.3.3.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.6.4.4" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T7.6.4.4.1">
<span class="ltx_para ltx_noindent" id="S4.T7.6.4.4.1.p1">
<span class="ltx_p" id="S4.T7.6.4.4.1.p1.1"><span class="ltx_text" id="S4.T7.6.4.4.1.p1.1.2"></span> <span class="ltx_text" id="S4.T7.6.4.4.1.p1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T7.6.4.4.1.p1.1.1.1">
<span class="ltx_tr" id="S4.T7.6.4.4.1.p1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.6.4.4.1.p1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T7.6.4.4.1.p1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/qwen.png" width="12"/> <span class="ltx_text ltx_font_bold" id="S4.T7.6.4.4.1.p1.1.1.1.1.1.1">Qwen2-VL</span></span></span>
<span class="ltx_tr" id="S4.T7.6.4.4.1.p1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.6.4.4.1.p1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.6.4.4.1.p1.1.1.1.2.1.1">2B</span></span></span>
</span></span><span class="ltx_text" id="S4.T7.6.4.4.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify" id="S4.T7.7.5.5" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S4.T7.7.5.5.1">
<span class="ltx_para ltx_noindent" id="S4.T7.7.5.5.1.p1">
<span class="ltx_p" id="S4.T7.7.5.5.1.p1.1"><span class="ltx_text" id="S4.T7.7.5.5.1.p1.1.1"></span> <span class="ltx_text" id="S4.T7.7.5.5.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T7.7.5.5.1.p1.1.2.1">
<span class="ltx_tr" id="S4.T7.7.5.5.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.7.5.5.1.p1.1.2.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.7.5.5.1.p1.1.2.1.1.1.1">VideoLLaMA3</span></span></span>
<span class="ltx_tr" id="S4.T7.7.5.5.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.7.5.5.1.p1.1.2.1.2.1" style="padding-top:2pt;padding-bottom:2pt;">2B</span></span>
</span></span><span class="ltx_text" id="S4.T7.7.5.5.1.p1.1.3"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.26" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="5" id="S4.T7.27.26.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.26.1.1">
<span class="ltx_p" id="S4.T7.27.26.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>      <em class="ltx_emph ltx_font_italic" id="S4.T7.27.26.1.2">General Video Understanding</em>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.27.27.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.27.1.1">
<span class="ltx_p" id="S4.T7.27.27.1.1.1" style="width:85.4pt;">VideoMME <em class="ltx_emph ltx_font_italic" id="S4.T7.27.27.1.1.1.1" style="font-size:70%;">w/o sub</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.27.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.27.2.1">
<span class="ltx_p" id="S4.T7.27.27.2.1.1">53.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.27.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.27.3.1">
<span class="ltx_p" id="S4.T7.27.27.3.1.1">51.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.27.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.27.4.1">
<span class="ltx_p" id="S4.T7.27.27.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.27.27.4.1.1.1">55.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.27.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.27.5.1">
<span class="ltx_p" id="S4.T7.27.27.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.27.27.5.1.1.1">59.6</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.28">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.27.28.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.28.1.1">
<span class="ltx_p" id="S4.T7.27.28.1.1.1" style="width:85.4pt;">VideoMME <em class="ltx_emph ltx_font_italic" id="S4.T7.27.28.1.1.1.1" style="font-size:70%;">w/ sub</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.28.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.28.2.1">
<span class="ltx_p" id="S4.T7.27.28.2.1.1">54.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.28.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.28.3.1">
<span class="ltx_p" id="S4.T7.27.28.3.1.1">54.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.28.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.28.4.1">
<span class="ltx_p" id="S4.T7.27.28.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.27.28.4.1.1.1">60.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.28.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.28.5.1">
<span class="ltx_p" id="S4.T7.27.28.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.27.28.5.1.1.1">63.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.10.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.8.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.8.6.1.1">
<span class="ltx_p" id="S4.T7.8.6.1.1.1" style="width:85.4pt;">MMVU<sub class="ltx_sub" id="S4.T7.8.6.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T7.8.6.1.1.1.1.1">val</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.10.8.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.10.8.4.1">
<span class="ltx_p" id="S4.T7.10.8.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.9.7.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.9.7.2.1">
<span class="ltx_p" id="S4.T7.9.7.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.9.7.2.1.1.1"><span style="visibility:hidden">–</span></span>33.6<sup class="ltx_sup" id="S4.T7.9.7.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.10.8.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.10.8.3.1">
<span class="ltx_p" id="S4.T7.10.8.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.10.8.3.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.10.8.3.1.1.2">36.5</span><sup class="ltx_sup" id="S4.T7.10.8.3.1.1.3"><span class="ltx_text ltx_font_italic" id="S4.T7.10.8.3.1.1.3.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.10.8.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.10.8.5.1">
<span class="ltx_p" id="S4.T7.10.8.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.10.8.5.1.1.1">39.9</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.29">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.27.29.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.29.1.1">
<span class="ltx_p" id="S4.T7.27.29.1.1.1" style="width:85.4pt;">MVBench</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.29.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.29.2.1">
<span class="ltx_p" id="S4.T7.27.29.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.29.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.29.3.1">
<span class="ltx_p" id="S4.T7.27.29.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.27.29.3.1.1.1">68.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.29.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.29.4.1">
<span class="ltx_p" id="S4.T7.27.29.4.1.1">63.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.29.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.29.5.1">
<span class="ltx_p" id="S4.T7.27.29.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.27.29.5.1.1.1">65.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.12.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.11.9.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.11.9.1.1">
<span class="ltx_p" id="S4.T7.11.9.1.1.1" style="width:85.4pt;">EgoSchema<sub class="ltx_sub" id="S4.T7.11.9.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T7.11.9.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.12.10.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.12.10.3.1">
<span class="ltx_p" id="S4.T7.12.10.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.12.10.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.12.10.2.1">
<span class="ltx_p" id="S4.T7.12.10.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.12.10.2.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.12.10.2.1.1.2">58.1</span><sup class="ltx_sup" id="S4.T7.12.10.2.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.12.10.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.12.10.4.1">
<span class="ltx_p" id="S4.T7.12.10.4.1.1">54.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.12.10.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.12.10.5.1">
<span class="ltx_p" id="S4.T7.12.10.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.12.10.5.1.1.1">58.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.14.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.13.11.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.13.11.1.1">
<span class="ltx_p" id="S4.T7.13.11.1.1.1" style="width:85.4pt;">PerceptionTest<sub class="ltx_sub" id="S4.T7.13.11.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T7.13.11.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.14.12.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.14.12.3.1">
<span class="ltx_p" id="S4.T7.14.12.3.1.1">61.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.14.12.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.14.12.2.1">
<span class="ltx_p" id="S4.T7.14.12.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.14.12.2.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.14.12.2.1.1.2">66.3</span><sup class="ltx_sup" id="S4.T7.14.12.2.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.14.12.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.14.12.4.1">
<span class="ltx_p" id="S4.T7.14.12.4.1.1">53.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.14.12.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.14.12.5.1">
<span class="ltx_p" id="S4.T7.14.12.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.14.12.5.1.1.1">68.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.16.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.16.14.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.16.14.3.1">
<span class="ltx_p" id="S4.T7.16.14.3.1.1" style="width:85.4pt;">ActivityNet-QA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.16.14.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.16.14.4.1">
<span class="ltx_p" id="S4.T7.16.14.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.15.13.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.15.13.1.1">
<span class="ltx_p" id="S4.T7.15.13.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.15.13.1.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.15.13.1.1.1.2">54.1</span><sup class="ltx_sup" id="S4.T7.15.13.1.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.16.14.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.16.14.2.1">
<span class="ltx_p" id="S4.T7.16.14.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.16.14.2.1.1.1"><span style="visibility:hidden">–</span></span>53.3<sup class="ltx_sup" id="S4.T7.16.14.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.16.14.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.16.14.5.1">
<span class="ltx_p" id="S4.T7.16.14.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.16.14.5.1.1.1">58.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.30" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="5" id="S4.T7.27.30.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T7.27.30.1.1" style="background-color:#E6E6E6;">Long Video Understanding</em></td>
</tr>
<tr class="ltx_tr" id="S4.T7.19.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.17.15.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.17.15.1.1">
<span class="ltx_p" id="S4.T7.17.15.1.1.1" style="width:85.4pt;">MLVU<sub class="ltx_sub" id="S4.T7.17.15.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T7.17.15.1.1.1.1.1">dev</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.19.17.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.19.17.4.1">
<span class="ltx_p" id="S4.T7.19.17.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.19.17.4.1.1.1">63.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.18.16.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.18.16.2.1">
<span class="ltx_p" id="S4.T7.18.16.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.18.16.2.1.1.1"><span style="visibility:hidden">–</span></span>58.9<sup class="ltx_sup" id="S4.T7.18.16.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.19.17.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.19.17.3.1">
<span class="ltx_p" id="S4.T7.19.17.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.19.17.3.1.1.1"><span style="visibility:hidden">–</span></span>62.7<sup class="ltx_sup" id="S4.T7.19.17.3.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.19.17.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.19.17.5.1">
<span class="ltx_p" id="S4.T7.19.17.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.19.17.5.1.1.1">65.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.21.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.20.18.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.20.18.1.1">
<span class="ltx_p" id="S4.T7.20.18.1.1.1" style="width:85.4pt;">LongVideoBench<sub class="ltx_sub" id="S4.T7.20.18.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T7.20.18.1.1.1.1.1">val</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.21.19.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.21.19.3.1">
<span class="ltx_p" id="S4.T7.21.19.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.21.19.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.21.19.4.1">
<span class="ltx_p" id="S4.T7.21.19.4.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.21.19.4.1.1.1">52.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.21.19.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.21.19.2.1">
<span class="ltx_p" id="S4.T7.21.19.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.21.19.2.1.1.1"><span style="visibility:hidden">–</span></span>48.7<sup class="ltx_sup" id="S4.T7.21.19.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.21.19.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.21.19.5.1">
<span class="ltx_p" id="S4.T7.21.19.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.21.19.5.1.1.1">57.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.23.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.23.21.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.23.21.3.1">
<span class="ltx_p" id="S4.T7.23.21.3.1.1" style="width:85.4pt;">LVBench</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.23.21.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.23.21.4.1">
<span class="ltx_p" id="S4.T7.23.21.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.22.20.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.22.20.1.1">
<span class="ltx_p" id="S4.T7.22.20.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.22.20.1.1.1.1"><span style="visibility:hidden">–</span></span>37.3<sup class="ltx_sup" id="S4.T7.22.20.1.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.23.21.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.23.21.2.1">
<span class="ltx_p" id="S4.T7.23.21.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.23.21.2.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.23.21.2.1.1.2">38.0</span><sup class="ltx_sup" id="S4.T7.23.21.2.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.23.21.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.23.21.5.1">
<span class="ltx_p" id="S4.T7.23.21.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.23.21.5.1.1.1">40.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.31" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="5" id="S4.T7.27.31.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T7.27.31.1.1" style="background-color:#E6E6E6;">Temporal Reasoning</em></td>
</tr>
<tr class="ltx_tr" id="S4.T7.25.23">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.25.23.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.25.23.3.1">
<span class="ltx_p" id="S4.T7.25.23.3.1.1" style="width:85.4pt;">TempCompass</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.25.23.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.25.23.4.1">
<span class="ltx_p" id="S4.T7.25.23.4.1.1">60.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.24.22.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.24.22.1.1">
<span class="ltx_p" id="S4.T7.24.22.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.24.22.1.1.1.1"><span style="visibility:hidden">–</span></span>57.7<sup class="ltx_sup" id="S4.T7.24.22.1.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.25.23.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.25.23.2.1">
<span class="ltx_p" id="S4.T7.25.23.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.25.23.2.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.25.23.2.1.1.2">62.2</span><sup class="ltx_sup" id="S4.T7.25.23.2.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.25.23.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.25.23.5.1">
<span class="ltx_p" id="S4.T7.25.23.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.25.23.5.1.1.1">63.4</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.27.25.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.25.3.1">
<span class="ltx_p" id="S4.T7.27.25.3.1.1" style="width:85.4pt;">NextQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.25.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.25.4.1">
<span class="ltx_p" id="S4.T7.27.25.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.26.24.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.26.24.1.1">
<span class="ltx_p" id="S4.T7.26.24.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.26.24.1.1.1.1"><span style="visibility:hidden">–</span></span>75.6<sup class="ltx_sup" id="S4.T7.26.24.1.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.25.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.25.2.1">
<span class="ltx_p" id="S4.T7.27.25.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T7.27.25.2.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T7.27.25.2.1.1.2">77.2</span><sup class="ltx_sup" id="S4.T7.27.25.2.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.25.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.25.5.1">
<span class="ltx_p" id="S4.T7.27.25.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.27.25.5.1.1.1">81.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.32">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.27.32.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.32.1.1">
<span class="ltx_p" id="S4.T7.27.32.1.1.1" style="width:85.4pt;">Charades-STA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.32.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.32.2.1">
<span class="ltx_p" id="S4.T7.27.32.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.32.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.32.3.1">
<span class="ltx_p" id="S4.T7.27.32.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T7.27.32.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.32.4.1">
<span class="ltx_p" id="S4.T7.27.32.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.32.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.32.5.1">
<span class="ltx_p" id="S4.T7.27.32.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T7.27.32.5.1.1.1">55.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T7.27.33">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T7.27.33.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T7.27.33.1.1">
<span class="ltx_p" id="S4.T7.27.33.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.33.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.33.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.33.4" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T7.27.33.5" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comparison of the performance of four different 2-billion parameter models on a range of video understanding benchmarks.  The models are compared across various video understanding tasks, categorized into general video understanding, long video understanding, and temporal reasoning.  For each task and model, the table shows the performance score, indicating the model's accuracy or effectiveness.  Results marked with '*' represent reproduced results from existing studies, and those marked with '†' were retrieved directly from the official leaderboard for the specific benchmark.  The highest score for each task is highlighted in bold, and the second-highest score is underlined, providing clear visual indicators of the best-performing models and offering a clear ranking system for comparison across models and tasks. This allows for a direct and easy comparison of the different models' capabilities across diverse video understanding scenarios.
> <details>
> <summary>read the caption</summary>
> Table 7: Evaluation results of 2B models on video benchmarks. * denotes the reproduced results. † denotes the results retrieved from the official leaderboard. The best results are in bold and the second best ones are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T8.38">
<tr class="ltx_tr" id="S4.T8.7.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.7.5.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.7.5.6.1">
<span class="ltx_p" id="S4.T8.7.5.6.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.3.1.1" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T8.3.1.1.1.1" style="width:59.2pt;height:66.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:56.1pt;transform:translate(1.55pt,-15.31pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T8.3.1.1.1.1.1"><span class="ltx_text" id="S4.T8.3.1.1.1.1.1.2"></span><span class="ltx_text" id="S4.T8.3.1.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T8.3.1.1.1.1.1.1.1">
<span class="ltx_tr" id="S4.T8.3.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.3.1.1.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.1.1.1.1.1.1.1.2.1.1">Qwen2-VL</span></span></span>
<span class="ltx_tr" id="S4.T8.3.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.3.1.1.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.1.1.1.1.1.1.1.1.1.1">7B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T8.3.1.1.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/qwen.png" width="11"/></span></span>
</span></span> <span class="ltx_text" id="S4.T8.3.1.1.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.4.2.2" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T8.4.2.2.1.1" style="width:62.5pt;height:72.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:62.6pt;transform:translate(-0.05pt,-18.09pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T8.4.2.2.1.1.1"><span class="ltx_text" id="S4.T8.4.2.2.1.1.1.2"></span><span class="ltx_text" id="S4.T8.4.2.2.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T8.4.2.2.1.1.1.1.1">
<span class="ltx_tr" id="S4.T8.4.2.2.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.4.2.2.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.4.2.2.1.1.1.1.1.2.1.1">InternVL2.5</span></span></span>
<span class="ltx_tr" id="S4.T8.4.2.2.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.4.2.2.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.4.2.2.1.1.1.1.1.1.1.1">8B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T8.4.2.2.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/opengvlab.jpeg" width="12"/></span></span>
</span></span> <span class="ltx_text" id="S4.T8.4.2.2.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.5.3.3" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T8.5.3.3.1.1" style="width:65.8pt;height:78pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:69.3pt;transform:translate(-1.74pt,-21.02pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T8.5.3.3.1.1.1"><span class="ltx_text" id="S4.T8.5.3.3.1.1.1.2"></span><span class="ltx_text" id="S4.T8.5.3.3.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T8.5.3.3.1.1.1.1.1">
<span class="ltx_tr" id="S4.T8.5.3.3.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.5.3.3.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.3.3.1.1.1.1.1.2.1.1">LLaVA-Video</span></span></span>
<span class="ltx_tr" id="S4.T8.5.3.3.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.5.3.3.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.3.3.1.1.1.1.1.1.1.1">7B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T8.5.3.3.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/bytedance.jpg" width="14"/></span></span>
</span></span> <span class="ltx_text" id="S4.T8.5.3.3.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.6.4.4" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T8.6.4.4.1.1" style="width:52.7pt;height:55.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:43.0pt;transform:translate(4.84pt,-9.61pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T8.6.4.4.1.1.1"><span class="ltx_text" id="S4.T8.6.4.4.1.1.1.2"></span><span class="ltx_text" id="S4.T8.6.4.4.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T8.6.4.4.1.1.1.1.1">
<span class="ltx_tr" id="S4.T8.6.4.4.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.6.4.4.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.4.4.1.1.1.1.1.2.1.1">NVILA</span></span></span>
<span class="ltx_tr" id="S4.T8.6.4.4.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.6.4.4.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.4.4.1.1.1.1.1.1.1.1">8B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="12" id="S4.T8.6.4.4.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/nvidia.jpg" width="16"/></span></span>
</span></span> <span class="ltx_text" id="S4.T8.6.4.4.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.7.5.5" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T8.7.5.5.1.1" style="width:51.2pt;height:52.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:40.1pt;transform:translate(5.57pt,-8.36pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T8.7.5.5.1.1.1"><span class="ltx_text" id="S4.T8.7.5.5.1.1.1.2"></span><span class="ltx_text" id="S4.T8.7.5.5.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T8.7.5.5.1.1.1.1.1">
<span class="ltx_tr" id="S4.T8.7.5.5.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.7.5.5.1.1.1.1.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.5.5.1.1.1.1.1.2.1.1">Apollo</span></span></span>
<span class="ltx_tr" id="S4.T8.7.5.5.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.7.5.5.1.1.1.1.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.5.5.1.1.1.1.1.1.1.1">7B</span>  <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="12" id="S4.T8.7.5.5.1.1.1.1.1.1.1.g1" src="extracted/6148862/figures/icons/meta.png" width="12"/></span></span>
</span></span> <span class="ltx_text" id="S4.T8.7.5.5.1.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.7.5.7" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T8.7.5.7.1" style="width:65.6pt;height:77.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:68.8pt;transform:translate(-1.61pt,-20.78pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T8.7.5.7.1.1"><span class="ltx_text" id="S4.T8.7.5.7.1.1.1"></span><span class="ltx_text" id="S4.T8.7.5.7.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T8.7.5.7.1.1.2.1">
<span class="ltx_tr" id="S4.T8.7.5.7.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.7.5.7.1.1.2.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.5.7.1.1.2.1.1.1.1">VideoLLaMA</span></span></span>
<span class="ltx_tr" id="S4.T8.7.5.7.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.7.5.7.1.1.2.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.5.7.1.1.2.1.2.1.1">2.1-7B</span></span></span>
</span></span> <span class="ltx_text" id="S4.T8.7.5.7.1.1.3"></span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.7.5.8" style="padding-top:2pt;padding-bottom:2pt;">
<div class="ltx_inline-block ltx_align_top ltx_transformed_outer" id="S4.T8.7.5.8.1" style="width:65.6pt;height:77.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:68.8pt;transform:translate(-1.61pt,-20.78pt) rotate(-60deg) ;">
<p class="ltx_p" id="S4.T8.7.5.8.1.1"><span class="ltx_text" id="S4.T8.7.5.8.1.1.1"></span><span class="ltx_text" id="S4.T8.7.5.8.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T8.7.5.8.1.1.2.1">
<span class="ltx_tr" id="S4.T8.7.5.8.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.7.5.8.1.1.2.1.1.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.5.8.1.1.2.1.1.1.1">VideoLLaMA</span></span></span>
<span class="ltx_tr" id="S4.T8.7.5.8.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.7.5.8.1.1.2.1.2.1" style="padding-top:2pt;padding-bottom:2pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.5.8.1.1.2.1.2.1.1">3-7B</span></span></span>
</span></span> <span class="ltx_text" id="S4.T8.7.5.8.1.1.3"></span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.37" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="8" id="S4.T8.38.37.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.37.1.1">
<span class="ltx_p" id="S4.T8.38.37.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>      <em class="ltx_emph ltx_font_italic" id="S4.T8.38.37.1.2">General Video Understanding</em>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.38">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.38.38.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.1.1">
<span class="ltx_p" id="S4.T8.38.38.1.1.1" style="width:85.4pt;">VideoMME <em class="ltx_emph ltx_font_italic" id="S4.T8.38.38.1.1.1.1" style="font-size:70%;">w/o sub</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.38.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.2.1">
<span class="ltx_p" id="S4.T8.38.38.2.1.1">63.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.38.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.3.1">
<span class="ltx_p" id="S4.T8.38.38.3.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.38.38.3.1.1.1">64.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.38.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.4.1">
<span class="ltx_p" id="S4.T8.38.38.4.1.1">63.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.38.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.5.1">
<span class="ltx_p" id="S4.T8.38.38.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.38.38.5.1.1.1">64.2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.38.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.6.1">
<span class="ltx_p" id="S4.T8.38.38.6.1.1">61.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.38.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.7.1">
<span class="ltx_p" id="S4.T8.38.38.7.1.1">54.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.38.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.38.8.1">
<span class="ltx_p" id="S4.T8.38.38.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.38.38.8.1.1.1">66.2</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.39">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.38.39.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.1.1">
<span class="ltx_p" id="S4.T8.38.39.1.1.1" style="width:85.4pt;">VideoMME <em class="ltx_emph ltx_font_italic" id="S4.T8.38.39.1.1.1.1" style="font-size:70%;">w/ sub</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.39.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.2.1">
<span class="ltx_p" id="S4.T8.38.39.2.1.1">69.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.39.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.3.1">
<span class="ltx_p" id="S4.T8.38.39.3.1.1">66.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.39.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.4.1">
<span class="ltx_p" id="S4.T8.38.39.4.1.1">69.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.39.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.5.1">
<span class="ltx_p" id="S4.T8.38.39.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.38.39.5.1.1.1">70.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.39.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.6.1">
<span class="ltx_p" id="S4.T8.38.39.6.1.1">63.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.39.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.7.1">
<span class="ltx_p" id="S4.T8.38.39.7.1.1">56.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.39.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.39.8.1">
<span class="ltx_p" id="S4.T8.38.39.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.38.39.8.1.1.1">70.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.13.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.8.6.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.8.6.1.1">
<span class="ltx_p" id="S4.T8.8.6.1.1.1" style="width:85.4pt;">MMVU<sub class="ltx_sub" id="S4.T8.8.6.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.8.6.1.1.1.1.1">val</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.9.7.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.9.7.2.1">
<span class="ltx_p" id="S4.T8.9.7.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.9.7.2.1.1.1"><span style="visibility:hidden">–</span></span>42.1<sup class="ltx_sup" id="S4.T8.9.7.2.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T8.9.7.2.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.10.8.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.10.8.3.1">
<span class="ltx_p" id="S4.T8.10.8.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.10.8.3.1.1.1"><span style="visibility:hidden">–</span></span>41.1<sup class="ltx_sup" id="S4.T8.10.8.3.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T8.10.8.3.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.11.9.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.11.9.4.1">
<span class="ltx_p" id="S4.T8.11.9.4.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.11.9.4.1.1.1"><span style="visibility:hidden">–</span></span>42.4<sup class="ltx_sup" id="S4.T8.11.9.4.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.12.10.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.12.10.5.1">
<span class="ltx_p" id="S4.T8.12.10.5.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.12.10.5.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.12.10.5.1.1.2">43.7</span><sup class="ltx_sup" id="S4.T8.12.10.5.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.13.11.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.13.11.7.1">
<span class="ltx_p" id="S4.T8.13.11.7.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.13.11.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.13.11.6.1">
<span class="ltx_p" id="S4.T8.13.11.6.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.13.11.6.1.1.1"><span style="visibility:hidden">–</span></span>39.5<sup class="ltx_sup" id="S4.T8.13.11.6.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T8.13.11.6.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.13.11.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.13.11.8.1">
<span class="ltx_p" id="S4.T8.13.11.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.13.11.8.1.1.1">44.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.40">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.38.40.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.1.1">
<span class="ltx_p" id="S4.T8.38.40.1.1.1" style="width:85.4pt;">MVBench</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.40.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.2.1">
<span class="ltx_p" id="S4.T8.38.40.2.1.1">67.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.40.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.3.1">
<span class="ltx_p" id="S4.T8.38.40.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.38.40.3.1.1.1">72.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.40.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.4.1">
<span class="ltx_p" id="S4.T8.38.40.4.1.1">58.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.40.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.5.1">
<span class="ltx_p" id="S4.T8.38.40.5.1.1">68.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.40.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.6.1">
<span class="ltx_p" id="S4.T8.38.40.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.40.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.7.1">
<span class="ltx_p" id="S4.T8.38.40.7.1.1">57.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.40.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.40.8.1">
<span class="ltx_p" id="S4.T8.38.40.8.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.38.40.8.1.1.1">69.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.16.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.14.12.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.14.12.1.1">
<span class="ltx_p" id="S4.T8.14.12.1.1.1" style="width:85.4pt;">EgoSchema<sub class="ltx_sub" id="S4.T8.14.12.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.14.12.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.16.14.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.16.14.4.1">
<span class="ltx_p" id="S4.T8.16.14.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.16.14.4.1.1.1">66.7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.15.13.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.15.13.2.1">
<span class="ltx_p" id="S4.T8.15.13.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.15.13.2.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.15.13.2.1.1.2">66.2</span><sup class="ltx_sup" id="S4.T8.15.13.2.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.16.14.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.16.14.5.1">
<span class="ltx_p" id="S4.T8.16.14.5.1.1">57.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.16.14.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.16.14.3.1">
<span class="ltx_p" id="S4.T8.16.14.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.16.14.3.1.1.1"><span style="visibility:hidden">–</span></span>54.3<sup class="ltx_sup" id="S4.T8.16.14.3.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.16.14.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.16.14.6.1">
<span class="ltx_p" id="S4.T8.16.14.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.16.14.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.16.14.7.1">
<span class="ltx_p" id="S4.T8.16.14.7.1.1">53.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.16.14.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.16.14.8.1">
<span class="ltx_p" id="S4.T8.16.14.8.1.1">63.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.20.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.17.15.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.17.15.1.1">
<span class="ltx_p" id="S4.T8.17.15.1.1.1" style="width:85.4pt;">PerceptionTest<sub class="ltx_sub" id="S4.T8.17.15.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.17.15.1.1.1.1.1">test</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.20.18.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.20.18.5.1">
<span class="ltx_p" id="S4.T8.20.18.5.1.1">62.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.18.16.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.18.16.2.1">
<span class="ltx_p" id="S4.T8.18.16.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.18.16.2.1.1.1"><span style="visibility:hidden">–</span></span>68.9<sup class="ltx_sup" id="S4.T8.18.16.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.19.17.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.19.17.3.1">
<span class="ltx_p" id="S4.T8.19.17.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.19.17.3.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.19.17.3.1.1.2">67.9</span><sup class="ltx_sup" id="S4.T8.19.17.3.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.20.18.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.20.18.4.1">
<span class="ltx_p" id="S4.T8.20.18.4.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.20.18.4.1.1.1"><span style="visibility:hidden">–</span></span>65.4<sup class="ltx_sup" id="S4.T8.20.18.4.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.20.18.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.20.18.6.1">
<span class="ltx_p" id="S4.T8.20.18.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.20.18.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.20.18.7.1">
<span class="ltx_p" id="S4.T8.20.18.7.1.1">54.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.20.18.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.20.18.8.1">
<span class="ltx_p" id="S4.T8.20.18.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.20.18.8.1.1.1">72.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.22.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.22.20.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.22.20.3.1">
<span class="ltx_p" id="S4.T8.22.20.3.1.1" style="width:85.4pt;">ActivityNet-QA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.21.19.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.21.19.1.1">
<span class="ltx_p" id="S4.T8.21.19.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.21.19.1.1.1.1"><span style="visibility:hidden">–</span></span>57.4<sup class="ltx_sup" id="S4.T8.21.19.1.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.22.20.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.22.20.2.1">
<span class="ltx_p" id="S4.T8.22.20.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.22.20.2.1.1.1"><span style="visibility:hidden">–</span></span>58.9<sup class="ltx_sup" id="S4.T8.22.20.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.22.20.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.22.20.4.1">
<span class="ltx_p" id="S4.T8.22.20.4.1.1">56.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.22.20.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.22.20.5.1">
<span class="ltx_p" id="S4.T8.22.20.5.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.22.20.5.1.1.1">60.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.22.20.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.22.20.6.1">
<span class="ltx_p" id="S4.T8.22.20.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.22.20.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.22.20.7.1">
<span class="ltx_p" id="S4.T8.22.20.7.1.1">53.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.22.20.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.22.20.8.1">
<span class="ltx_p" id="S4.T8.22.20.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.22.20.8.1.1.1">61.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.41" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="8" id="S4.T8.38.41.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T8.38.41.1.1" style="background-color:#E6E6E6;">Long Video Understanding</em></td>
</tr>
<tr class="ltx_tr" id="S4.T8.27.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.23.21.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.23.21.1.1">
<span class="ltx_p" id="S4.T8.23.21.1.1.1" style="width:85.4pt;">MLVU<sub class="ltx_sub" id="S4.T8.23.21.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.23.21.1.1.1.1.1">dev</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.24.22.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.24.22.2.1">
<span class="ltx_p" id="S4.T8.24.22.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.24.22.2.1.1.1"><span style="visibility:hidden">–</span></span>69.8<sup class="ltx_sup" id="S4.T8.24.22.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.25.23.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.25.23.3.1">
<span class="ltx_p" id="S4.T8.25.23.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.25.23.3.1.1.1"><span style="visibility:hidden">–</span></span>69.0<sup class="ltx_sup" id="S4.T8.25.23.3.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.26.24.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.26.24.4.1">
<span class="ltx_p" id="S4.T8.26.24.4.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.26.24.4.1.1.1"><span style="visibility:hidden">–</span></span>70.8<sup class="ltx_sup" id="S4.T8.26.24.4.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.27.25.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.27.25.5.1">
<span class="ltx_p" id="S4.T8.27.25.5.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.27.25.5.1.1.1"><span style="visibility:hidden">–</span></span>70.6<sup class="ltx_sup" id="S4.T8.27.25.5.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.27.25.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.27.25.6.1">
<span class="ltx_p" id="S4.T8.27.25.6.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.27.25.6.1.1.1">70.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.27.25.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.27.25.7.1">
<span class="ltx_p" id="S4.T8.27.25.7.1.1">57.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.27.25.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.27.25.8.1">
<span class="ltx_p" id="S4.T8.27.25.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.27.25.8.1.1.1">73.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.29.27">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.28.26.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.28.26.1.1">
<span class="ltx_p" id="S4.T8.28.26.1.1.1" style="width:85.4pt;">LongVideoBench<sub class="ltx_sub" id="S4.T8.28.26.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.28.26.1.1.1.1.1">val</span></sub></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.29.27.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.29.27.2.1">
<span class="ltx_p" id="S4.T8.29.27.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.29.27.2.1.1.1"><span style="visibility:hidden">–</span></span>55.6<sup class="ltx_sup" id="S4.T8.29.27.2.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T8.29.27.2.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.29.27.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.29.27.3.1">
<span class="ltx_p" id="S4.T8.29.27.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.29.27.3.1.1.1">60.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.29.27.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.29.27.4.1">
<span class="ltx_p" id="S4.T8.29.27.4.1.1">58.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.29.27.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.29.27.5.1">
<span class="ltx_p" id="S4.T8.29.27.5.1.1">57.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.29.27.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.29.27.6.1">
<span class="ltx_p" id="S4.T8.29.27.6.1.1">58.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.29.27.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.29.27.7.1">
<span class="ltx_p" id="S4.T8.29.27.7.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.29.27.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.29.27.8.1">
<span class="ltx_p" id="S4.T8.29.27.8.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.29.27.8.1.1.1">59.8</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.33.31">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.33.31.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.33.31.5.1">
<span class="ltx_p" id="S4.T8.33.31.5.1.1" style="width:85.4pt;">LVBench</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.30.28.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.30.28.1.1">
<span class="ltx_p" id="S4.T8.30.28.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.30.28.1.1.1.2"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_font_bold" id="S4.T8.30.28.1.1.1.1">44.2<sup class="ltx_sup" id="S4.T8.30.28.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T8.30.28.1.1.1.1.1.1">∗</span></sup></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.31.29.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.31.29.2.1">
<span class="ltx_p" id="S4.T8.31.29.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.31.29.2.1.1.1"><span style="visibility:hidden">–</span></span>41.5<sup class="ltx_sup" id="S4.T8.31.29.2.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.32.30.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.32.30.3.1">
<span class="ltx_p" id="S4.T8.32.30.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.32.30.3.1.1.1"><span style="visibility:hidden">–</span></span>40.3<sup class="ltx_sup" id="S4.T8.32.30.3.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.33.31.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.33.31.4.1">
<span class="ltx_p" id="S4.T8.33.31.4.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.33.31.4.1.1.1"><span style="visibility:hidden">–</span></span>42.6<sup class="ltx_sup" id="S4.T8.33.31.4.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.33.31.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.33.31.6.1">
<span class="ltx_p" id="S4.T8.33.31.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.33.31.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.33.31.7.1">
<span class="ltx_p" id="S4.T8.33.31.7.1.1">36.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.33.31.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.33.31.8.1">
<span class="ltx_p" id="S4.T8.33.31.8.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.33.31.8.1.1.1">43.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.42" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" colspan="8" id="S4.T8.38.42.1" style="padding-top:2pt;padding-bottom:2pt;"><em class="ltx_emph ltx_font_italic" id="S4.T8.38.42.1.1" style="background-color:#E6E6E6;">Temporal Reasoning</em></td>
</tr>
<tr class="ltx_tr" id="S4.T8.36.34">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.36.34.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.36.34.4.1">
<span class="ltx_p" id="S4.T8.36.34.4.1.1" style="width:85.4pt;">TempCompass</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.34.32.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.34.32.1.1">
<span class="ltx_p" id="S4.T8.34.32.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.34.32.1.1.1.1"><span style="visibility:hidden">–</span></span>67.9<sup class="ltx_sup" id="S4.T8.34.32.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T8.34.32.1.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.35.33.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.35.33.2.1">
<span class="ltx_p" id="S4.T8.35.33.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.35.33.2.1.1.1"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.35.33.2.1.1.2">68.3</span><sup class="ltx_sup" id="S4.T8.35.33.2.1.1.3">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.36.34.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.36.34.5.1">
<span class="ltx_p" id="S4.T8.36.34.5.1.1">65.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.36.34.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.36.34.3.1">
<span class="ltx_p" id="S4.T8.36.34.3.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.36.34.3.1.1.2"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_font_bold" id="S4.T8.36.34.3.1.1.1">69.7<sup class="ltx_sup" id="S4.T8.36.34.3.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T8.36.34.3.1.1.1.1.1">∗</span></sup></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.36.34.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.36.34.6.1">
<span class="ltx_p" id="S4.T8.36.34.6.1.1">64.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.36.34.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.36.34.7.1">
<span class="ltx_p" id="S4.T8.36.34.7.1.1">56.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.36.34.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.36.34.8.1">
<span class="ltx_p" id="S4.T8.36.34.8.1.1">68.1</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.36">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.38.36.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.36.3.1">
<span class="ltx_p" id="S4.T8.38.36.3.1.1" style="width:85.4pt;">NextQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.37.35.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.37.35.1.1">
<span class="ltx_p" id="S4.T8.37.35.1.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.37.35.1.1.1.1"><span style="visibility:hidden">–</span></span>81.2<sup class="ltx_sup" id="S4.T8.37.35.1.1.1.2">∗</sup></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.36.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.36.2.1">
<span class="ltx_p" id="S4.T8.38.36.2.1.1"><span class="ltx_text ltx_phantom" id="S4.T8.38.36.2.1.1.2"><span style="visibility:hidden">–</span></span><span class="ltx_text ltx_font_bold" id="S4.T8.38.36.2.1.1.1">85.0<sup class="ltx_sup" id="S4.T8.38.36.2.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S4.T8.38.36.2.1.1.1.1.1">∗</span></sup></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.36.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.36.4.1">
<span class="ltx_p" id="S4.T8.38.36.4.1.1">83.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.36.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.36.5.1">
<span class="ltx_p" id="S4.T8.38.36.5.1.1">82.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.36.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.36.6.1">
<span class="ltx_p" id="S4.T8.38.36.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.36.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.36.7.1">
<span class="ltx_p" id="S4.T8.38.36.7.1.1">75.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.36.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.36.8.1">
<span class="ltx_p" id="S4.T8.38.36.8.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.38.36.8.1.1.1">84.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.43">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.38.43.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.1.1">
<span class="ltx_p" id="S4.T8.38.43.1.1.1" style="width:85.4pt;">Charades-STA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.43.2" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.2.1">
<span class="ltx_p" id="S4.T8.38.43.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.43.3" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.3.1">
<span class="ltx_p" id="S4.T8.38.43.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.43.4" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.4.1">
<span class="ltx_p" id="S4.T8.38.43.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.43.5" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.5.1">
<span class="ltx_p" id="S4.T8.38.43.5.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.43.6" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.6.1">
<span class="ltx_p" id="S4.T8.38.43.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r" id="S4.T8.38.43.7" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.7.1">
<span class="ltx_p" id="S4.T8.38.43.7.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.43.8" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.43.8.1">
<span class="ltx_p" id="S4.T8.38.43.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T8.38.43.8.1.1.1">60.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.38.44">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T8.38.44.1" style="padding-top:2pt;padding-bottom:2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T8.38.44.1.1">
<span class="ltx_p" id="S4.T8.38.44.1.1.1" style="width:85.4pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.44.2" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.44.3" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.44.4" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.44.5" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.44.6" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.44.7" style="padding-top:2pt;padding-bottom:2pt;"></td>
<td class="ltx_td ltx_align_justify" id="S4.T8.38.44.8" style="padding-top:2pt;padding-bottom:2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comparison of the performance of several 7B parameter multimodal large language models (MLLMs) on various video understanding benchmarks.  The benchmarks are categorized into three key areas: general video understanding, long video understanding, and temporal reasoning.  The table displays the scores achieved by each model on each benchmark.  The scores reflect the models' abilities to understand and respond to various tasks involving video data, including question answering, caption generation, and temporal reasoning.  Reproduced results are marked with an asterisk (*), while results from official leaderboards are indicated with a dagger (†).  The highest score for each benchmark is shown in bold, with the second-highest score underlined. This allows for a direct comparison of the different models' capabilities in processing and understanding video content, providing a comprehensive overview of their relative strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Table 8: Evaluation results of 7B models on video benchmarks. * denotes the reproduced results. † denotes the results retrieved from the official leaderboard. The best results are in bold and the second best ones are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T9.1.1">
<tr class="ltx_tr" id="S4.T9.1.1.1">
<td class="ltx_td ltx_align_left" id="S4.T9.1.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.2.1">Model</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.3.1">GQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.4.1">AI2D</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.5.1">ChartQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.1.1">DocVQA<sub class="ltx_sub" id="S4.T9.1.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T9.1.1.1.1.1.1.1">val</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.1.6.1">MME</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.1.2">
<td class="ltx_td ltx_align_left" id="S4.T9.1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>clip-vit-large-patch14-336 <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib136" title="">radford2021learning </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">61.50</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">56.28</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.2.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">18.32</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.2.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">24.86</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.2.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.2.6.1">1668.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T9.1.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">dfn5B-clip-vit-h-14-378 <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib137" title="">fang2023data </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">62.70</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">56.87</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.3.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">16.40</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.3.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">23.09</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.3.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">1665.35</td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T9.1.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">siglip-so400m-patch14-384 <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2501.13106v1#bib.bib54" title="">Zhai2023SigmoidLF </a></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.4.2.1">62.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.4.3.1">57.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.4.4.1">22.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.4.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.1.1.4.5.1">31.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.4.6" style="padding-top:2.5pt;padding-bottom:2.5pt;">1667.92</td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T9.1.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T9.1.1.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"></td>
<td class="ltx_td" id="S4.T9.1.1.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"></td>
<td class="ltx_td" id="S4.T9.1.1.5.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"></td>
<td class="ltx_td" id="S4.T9.1.1.5.5" style="padding-top:2.5pt;padding-bottom:2.5pt;"></td>
<td class="ltx_td" id="S4.T9.1.1.5.6" style="padding-top:2.5pt;padding-bottom:2.5pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study conducted on different vision encoders used in the VideoLLaMA3 model.  It compares the performance of three different pre-trained vision encoders (CLIP, DFN, and SigLIP) across various downstream tasks. The goal is to determine the impact of the choice of vision encoder on the model's overall performance on image understanding benchmarks including GQA, AI2D, ChartQA, DocVQA, and MME. The results help to justify the selection of SigLIP as the base vision encoder for VideoLLaMA3. 
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation Study on Vision Encoders.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13106/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13106/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}