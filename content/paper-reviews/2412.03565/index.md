---
title: "Inst-IT: Boosting Multimodal Instance Understanding via Explicit Visual Prompt Instruction Tuning"
summary: "INST-IT boosts multimodal instance understanding by using explicit visual prompts for instruction tuning, achieving significant improvements on various benchmarks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Innovation Institute Huawei Noah's Ark Lab",]
showSummary: true
date: 2024-12-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.03565 {{< /keyword >}}
{{< keyword icon="writer" >}} Wujian Peng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.03565" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.03565" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/inst-it-boosting-multimodal-instance" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.03565/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Large Multimodal Models (LMMs) struggle with detailed instance-level understanding in images and videos.  Existing methods often fail to capture nuanced relationships between objects or track instances effectively over time. This limits their real-world applicability in tasks requiring precise comprehension of visual details. 



To address this, the researchers introduce INST-IT.  This involves creating a new benchmark (INST-IT Bench) for evaluating instance understanding, developing a large-scale dataset (INST-IT Dataset) with detailed instance annotations generated using an automated pipeline with GPT-40, and proposing a continuous instruction tuning approach. Their method significantly improves instance understanding across various benchmarks, highlighting the importance of explicit visual cues and demonstrating the potential of this approach for building better multimodal AI systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} INST-IT, a novel instruction tuning method, significantly enhances LMMs' instance-level understanding capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed INST-IT Bench benchmark effectively evaluates instance-level understanding in multimodal models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The large-scale INST-IT Dataset, with instance-centric annotations, facilitates improved training of LMMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the limitations of existing Large Multimodal Models (LMMs) in understanding instances within images and videos.**  By introducing a novel instruction tuning approach and a benchmark dataset, it significantly improves instance-level comprehension and opens new avenues for developing more nuanced and robust multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2412.03565/x1.png)

> 🔼 The figure illustrates the limitations of current Large Multimodal Models (LMMs) in understanding visual content at the instance level.  Existing LMMs fail to capture the detailed, nuanced information about specific elements within an image or video.  To address this weakness, the authors created a large-scale dataset specifically focused on instance-level understanding, training a multimodal model on this data.  The results demonstrate that their model significantly outperforms existing models in the accuracy and detail of instance-level comprehension.
> <details>
> <summary>read the caption</summary>
> Figure 1: Current LMMs struggle with instance-level understanding, failing to capture the nuanced details about specific instances. To address this, we create a large-scale instance-specific instruction tuning dataset and train a multimodal model on it. Compared to existing models, our model show better performance in instance-level understanding.
> </details>





{{< table-caption >}}
| Method | LLM | Vision Encoder | AI2D [25] | MMMU [87] | POPE [34] | GQA [24] | MM-Vet [85] |
|---|---|---|---|---|---|---|---| 
| LLaVA-1.5 [40] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 54.8 | 35.3 | 85.9 | 62.0 | 30.5 |
| LLaVA-Next [41] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 66.6 | 35.1 | 86.4 | 64.2 | 44.1 |
| DeepStack-L [54] | Vicuna-7B [15] | CLIP-ViT-Large [61] | - | 35.7 | 86.7 | 63.1 | 29.9 |
| DeepStack-L-HD [54] | Vicuna-7B [15] | CLIP-ViT-Large [61] | - | 35.6 | 86.5 | 65.2 | 37.5 |
| VILA [38] | Vicuna-7B [15] | CLIP-ViT-Large [61] | - | - | 85.5 | 62.3 | 34.9 |
| ShareGPT4V [10] | Vicuna-7B [15] | CLIP-ViT-Large [61] |  | - | - | - | 37.6 |
| MM-1.5 [91] | MM-LLM-7B [91] | MM-CLIP [91] | 72.0 | 41.8 | 88.6 | - | 42.2 |
| InternVL2 [12] | InternLM-7B [68] | InternViT-300M [12] | 83.8 | 49.3 | - | - | 60.0 |
| LLaVA-OV (SI) [29] | Qwen2-7B [80] | SigLIP-SO400M [89] | 81.6 | 47.3 | - | - | 58.8 |
| LLaVA-OV [29] | Qwen2-7B [80] | SigLIP-SO400M [89] | 81.4 | 48.8 | - | - | 57.5 |
| Qwen2-VL-Instruct [74] | Qwen2-7B [80] | DFN-CLIP-H [20] | 83.0 | 54.1 | - | - | 62.0 |
| LLaVA-Next-Inst-IT | Vicuna-7B [15] | CLIP-ViT-Large [61] | 71.0 | 37.4 | 87.2 | 65.9 | 38.1 |
| LLaVA-Next-Inst-IT | Qwen2-7B [80] | SigLIP-SO400 [89] | 78.7 | 42.7 | 87.6 | 65.5 | 44.7 |{{< /table-caption >}}

> 🔼 This table presents a comprehensive evaluation of various Large Multimodal Models (LMMs) on the INST-IT Bench, a newly proposed benchmark specifically designed to assess instance-level understanding capabilities in both images and videos.  The models evaluated encompass a range of open-source models (including those specialized for image or video understanding) and cutting-edge proprietary models.  The results are broken down by model, indicating the underlying Large Language Model (LLM) used, the amount of instruction-tuning data (#IT) employed during training, and the performance metrics achieved on both open-ended and multiple-choice question-answering tasks for image and video data, separately.  The '#IT' column highlights the varying amounts of instruction-tuning data used for each model, and an 'N/A' entry signifies that the exact amount of training data is unavailable.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of LMMs on Inst-IT Bench. We conduct extensive evaluations on Inst-IT Bench, including state-of-the-art open-source image models, video models, and cutting-edge proprietary models. #IT indicates the number of training samples used during the instruction-tuning stage. N/A indicates that the number of training samples is unknown.
> </details>





### In-depth insights


#### Instance-Level Focus
The concept of 'Instance-Level Focus' in computer vision research signifies a shift from holistic scene understanding to a more granular analysis of individual objects or entities within an image or video.  This paradigm emphasizes **detailed comprehension of each instance's attributes, relationships, and interactions**, moving beyond simple object detection and into a deeper semantic understanding.  A key challenge lies in effectively representing this nuanced information, which may involve integrating visual cues (e.g., bounding boxes, visual prompts) with textual descriptions to guide model training and evaluation.  Such an approach is crucial for applications requiring fine-grained understanding, like video analysis, where tracking instances across time demands a more sophisticated approach than just identifying objects at a single point in time.  The success of an instance-level focus approach hinges on the availability of high-quality datasets with detailed annotations. **Data annotation pipelines** are therefore essential, and innovative methods leveraging large language models are currently being explored to automate the process of generating fine-grained instance-level annotations.

#### Visual Prompting
Visual prompting, as discussed in the research paper, is a crucial technique for enhancing instance-level understanding in large multimodal models (LMMs).  It involves **overlaying explicit visual cues**, such as numerical IDs or bounding boxes, directly onto the instances of interest within images or videos.  This strategic addition of visual prompts serves as a form of **instance-level guidance** for the model, enabling it to focus its attention and processing on specific elements. The effectiveness of visual prompting stems from its ability to bridge the gap between holistic image/video comprehension and the granular detail required for accurate instance-level understanding.  The use of visual prompts, in conjunction with instruction tuning, allows LMMs to achieve significantly improved performance on instance-centric benchmarks, demonstrating the **synergy between visual and textual information** in driving fine-grained understanding.  This approach showcases a promising method for addressing the limitations of current LMMs in dealing with instance-level detail, thereby enabling more nuanced and accurate comprehension of complex visual scenes.

#### Instruction Tuning
Instruction tuning, a crucial method in enhancing Large Multimodal Models (LMMs), enables these models to understand and respond to user instructions.  **The effectiveness of instruction tuning hinges on the quality and diversity of the instruction-tuning dataset**.  A well-crafted dataset, like the INST-IT Dataset proposed in the paper, needs to include instance-level information in both images and videos, requiring explicit cues to guide the model's attention.  This granular level of instruction is essential for moving beyond holistic understanding towards nuanced, instance-level comprehension.  The process often involves automated annotation pipelines, possibly leveraging tools like GPT-4, to extract detailed information from the visual input and then linking this to the instructions. **The key is to ensure a strong alignment between the visual cues and the corresponding instructions, so the LMM learns to connect specific visual instances to the intended meaning within the instruction.** While datasets like LLaVA-Next-DATA are used as a starting point, adding a smaller, more focused, dataset like INST-IT significantly enhances instance-level performance and improves overall model capabilities.  Future research should explore innovative methods for creating even more comprehensive and diverse instruction-tuning datasets. 

#### Benchmarking LMMs
Benchmarking Large Multimodal Models (LMMs) is crucial for evaluating their capabilities and identifying areas for improvement.  **Effective benchmarks should encompass a wide range of tasks**, reflecting the diverse applications of LMMs. This includes tasks involving image and video understanding, question answering, and instruction following.  Furthermore, **benchmarks must consider instance-level understanding**, evaluating not only global comprehension but also the nuanced grasp of individual elements within visual inputs.  A well-designed benchmark should also incorporate **metrics for both accuracy and efficiency**, accounting for the computational resources required by different LMMs.  **Open-source and widely accessible benchmarks are vital**, fostering collaboration within the research community and driving progress in the field.  Finally, **the continuous evolution of benchmarks** is essential to keep pace with the rapid advancements in LMM technology, ensuring that evaluation remains relevant and reflects the capabilities of state-of-the-art models.

#### Future of LMMs
The future of Large Multimodal Models (LMMs) is bright, but challenging.  **Improved instance-level understanding** is crucial; current models excel at holistic comprehension but struggle with nuanced, specific details within complex scenes.  **More sophisticated visual prompting techniques**, possibly leveraging AI-assisted annotation pipelines, will be key to improving data quality for training.  **Continuous instruction tuning**, incorporating varied datasets and employing strategies like continuous SFT to mitigate distribution shifts, will be essential.  **Enhanced benchmark datasets** are needed to accurately assess model capabilities across diverse tasks and granularities.  Finally, addressing **scaling challenges** — both in model size and data volume — while maintaining efficiency and avoiding overfitting is paramount for truly robust and versatile LMMs in the years to come.  The synergy between vision and language models, enhanced through efficient multimodal fusion, offers immense potential. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.03565/x2.png)

> 🔼 This figure illustrates the automated data annotation pipeline used in the paper.  The pipeline processes video frames sequentially. For each frame, GPT-4 is given the current frame and the preceding frame as input. Based on this input, GPT-4 generates a frame-level annotation that includes instance-level captions, an image-level caption, and descriptions of temporal changes. These frame-level annotations are then aggregated to create a video-level summary and a set of open-ended question-answer pairs. This pipeline is key to creating the dataset used for training the model.
> <details>
> <summary>read the caption</summary>
> Figure 2: The automated data generation pipeline. We process the video frames sequentially. At each timestamp t𝑡titalic_t, GPT-4o is prompted to create a frame-level annotation Ytfsuperscriptsubscript𝑌𝑡𝑓Y_{t}^{f}italic_Y start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_f end_POSTSUPERSCRIPT based on the current frame Xtsubscript𝑋𝑡X_{t}italic_X start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT and the previous frame Xt⁢-⁢1subscript𝑋𝑡-1X_{t\text{-}1}italic_X start_POSTSUBSCRIPT italic_t - 1 end_POSTSUBSCRIPT. Then, all the frame-level annotations are aggregated to produce a video-level description Yv⁢i⁢dsuperscript𝑌𝑣𝑖𝑑Y^{vid}italic_Y start_POSTSUPERSCRIPT italic_v italic_i italic_d end_POSTSUPERSCRIPT and a set of open-ended question-answer pairs Yq⁢asuperscript𝑌𝑞𝑎Y^{qa}italic_Y start_POSTSUPERSCRIPT italic_q italic_a end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2412.03565/x3.png)

> 🔼 This figure visualizes a sample from the INST-IT dataset, showcasing its multi-level annotation approach.  It highlights three key aspects: (a) Frame-level annotations, providing individual instance captions, a holistic scene caption, and a description of changes between frames; (b) A comprehensive video-level description summarizing the entire video; (c) Open-ended question-answer pairs focusing on specific instances and their interactions.  The dataset emphasizes individual 'instances of interest,' meticulously detailing their state in each frame, their changes over time, and generating questions specifically about those details.  Instance boundaries are highlighted for clarity.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of an data example from our Inst-IT Dataset. For each video, we provide (a) frame-level annotations, (b) a video-level description, and (c) open-ended question-answer pairs. Each frame-level annotation consists of three parts: captions for individual instances, a caption for the entire scene, and captions describing the temporal changes involving specific instances. A key feature of our dataset is its emphasis on instances of interest, including their state in each frame, how they change between frames, and questions and answers focused on their specific details throughout the video. The contours of instances in this example are deliberately highlighted for better visualization. A complete data example can be found in Sec. C.2.
> </details>



![](https://arxiv.org/html/2412.03565/x4.png)

> 🔼 The figure showcases the application of Set-of-Marks (SoM) visual prompting, a technique used to enhance instance-level understanding in videos.  In the original video frames, each individual instance (object or person of interest) is overlaid with a unique numerical ID. This ID remains consistent throughout the video sequence, allowing for easy tracking and identification of specific instances across different frames. This method simplifies the annotation process and enables the model to better understand individual instances and their interactions within a video.
> <details>
> <summary>read the caption</summary>
> Figure 4: Set-of-Marks visual prompting on the original videos. Each instance is assigned a unique numeric ID, which remains consistent across all frames.
> </details>



![](https://arxiv.org/html/2412.03565/x5.png)

> 🔼 Figure 5 illustrates the process of evaluating the correctness of open-ended question answering using GPT-4.  The evaluator is provided with a question, the ground truth answer, and a response from a model. The evaluator then scores the response on a scale of 0 to 1, with 1 representing complete correctness.  For video evaluations, additional contextual information (underlined in the figure) is provided, such as time-related details.  Placeholders (italicized in the figure) are used to insert the actual question, ground truth, and model answer during evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 5: GPT-4o-based open-ended question answering correctness assessment. The underlined parts in the figure are included only when evaluating the video split, while the italicized parts will be replaced by the actual sample for scoring.
> </details>



![](https://arxiv.org/html/2412.03565/x6.png)

> 🔼 This figure shows the prompt template used to instruct GPT-4 to generate frame-level annotations for images and videos.  The prompt guides GPT-4 on how to describe each marked object's visual attributes (color, shape, size, text) and the overall scene (objects, actions, background, etc.). Additionally, it specifies requirements for describing changes between consecutive frames (object movements, interactions, environmental shifts, and inferred causes). The italicized sections within the prompt are placeholders for the actual image/video data fed to the model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Frame-level annotation task prompt, the italicized part are placeholders for the actual inputs.
> </details>



![](https://arxiv.org/html/2412.03565/x7.png)

> 🔼 This figure shows the prompt used for instructing GPT-40 to generate video-level annotations.  The prompt guides GPT-40 to aggregate frame-level descriptions into a coherent summary of the entire video while adhering to specific guidelines, including using chronological order, object IDs, and proper timestamp formatting.  The prompt ensures the annotation accurately reflects the video content without speculation or inference.  Placeholders within the prompt are denoted by italicized text to indicate where actual video data is inputted for annotation.
> <details>
> <summary>read the caption</summary>
> Figure 7: Video-level annotation task prompt, the italicized part are placeholders for the actual inputs.
> </details>



![](https://arxiv.org/html/2412.03565/x8.png)

> 🔼 This figure shows the prompt used to instruct GPT-4 to generate open-ended question-answer pairs from video frame descriptions.  The prompt provides guidelines for question quality and diversity, specifying the format for referencing objects and timestamps within the video.  It also includes instructions on structuring the output as a list of question-answer pairs. The italicized sections are placeholders for the actual video data inputted to the model during the data annotation process.  This detailed prompt is crucial for ensuring the quality and consistency of the generated questions and answers used in the INST-IT dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Open-ended question-answer pairs generation task prompt, the italicized part are placeholders for the actual inputs.
> </details>



![](https://arxiv.org/html/2412.03565/x9.png)

> 🔼 Figure 9 shows an example from the INST-IT Bench benchmark dataset, which evaluates multimodal models' instance-level understanding. Each test sample includes both open-ended and multiple-choice question-answer pairs. The questions are designed to assess understanding of individual instances within an image or video, as well as the relationships and interactions between them. This detailed approach contrasts with benchmarks that primarily evaluate holistic image or video comprehension.  The figure visually illustrates this by showing the example questions and answers.
> <details>
> <summary>read the caption</summary>
> Figure 9: A data example from Inst-IT Bench. Each test sample includes both open-ended QA and multiple-choice QA, focusing on specific instances or the relationships and interactions between instances.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | LLM | Vision Encoder | ANet-QA [86] | EgoSchema [47] | Next-QA [77] | VideoMME [21] | TempCompass [42] |
|---|---|---|---|---|---|---|---| 
|  |  |  | (open-ended) | (subset) | (val) | (w/o subs) | (3 avg) |
| DeepStack-L [54] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 49.3 | 38.4 | 61.0 | - | - |
| IG-VLM [26] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 54.3 | 35.8 | 63.1 | - | - |
| LLaVA-Next [41] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 53.8 | - | - | - | - |
| SF-LLaVA [78] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 55.5 | 47.2 | 64.2 | - |  |
| Video-ChatGPT [46] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 35.2 | 47.3 | - | - | - |
| VideoLLaMA2 [13] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 50.2 | - | 51.7 | - | - |
| LLaVA-Next-Video [96] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 53.5 | 43.9 | - | 46.5 | - |
| LLaVA-Next-Video-DPO [96] | Vicuna-7B [15] | CLIP-ViT-Large [61] | 60.2 |  | - | - | 58.3 |
| LongVA [93] | Qwen2-7B [80] | CLIP-ViT-Large [61] | - |  | 68.3 | 52.4 | 61.3 |
| MM-1.5-Video-SFT [91] | MM-LLM-7B [91] | MM-CLIP [91] | 60.9 | 57.2 | 76.8 | 53.5 | - |
| InternVL2 [12] | InternLM-7B [68] | InternViT-300M [12] | - | - | - | 54.0 | - |
| LLaVA-OV [29] | Qwen2-7B [80] | SigLIP-SO400M [89] | 56.6 | 60.1 | 79.4 | 58.2 | 69.4 |
| LLaVA-Video [97] | Qwen2-7B [80] | SigLIP-SO400M [89] | 56.5 | 57.3 | 83.2 | 63.3 | - |
| Qwen2-VL-Instruct [74] | Qwen2-7B [80] | DFN-CLIP-H [20] | - | 66.7 | - | 63.3 | 72.9 |
| LLaVA-Next-Inst-IT | Vicuna-7B [15] | CLIP-ViT-Large [61] | 53.7 | 57.8 | 70.2 | 44.3 | 59.8 |
| LLaVA-Next-Inst-IT | Qwen2-7B [80] | SigLIP-SO400 [89] | 55.2 | 50.4 | 73.0 | 54.0 | 63.9 |{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various Large Multimodal Models (LMMs) on several image understanding benchmarks.  It shows the quantitative results of each model on benchmarks such as AI2D, MMMU, POPE, GQA, and MM-VET, indicating their capabilities in understanding and reasoning about images.  The models' performances are compared in terms of accuracy or F1 scores, providing a quantitative overview of their strengths and weaknesses in handling various image-related tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Main results on image benchmarks.
> </details>

{{< table-caption >}}
| CL | Tune Enc | Data comb | AI2D | MMMU | POPE | GQA | Inst-IT-I | Next-QA | VideoMME | Inst-IT-V |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
|  | Tune Enc | Data comb | AI2D | MMMU | POPE | GQA | Inst-IT-I | Next-QA | VideoMME | Inst-IT-V |
|  |  |  | (test) | (val) | (test F1) | (val) | (mc) | (mc) | (w/o subt) | (mc) |
|  | All layers | LLaVA-Next | 61.1 | 35.9 | 86.9 | 61.4 | 45.3 | 56.6 | 45.7 | 31.3 |
|  | All layers | LLaVA-Next & Inst-IT Dataset<sub>video</sub> | 60.7 | 34.7 | 86.1 | 61.2 | 60.7 | 59.7 | 47.1 | 43.0 |
| ✓ | All layers | LLaVA-Next & Inst-IT Dataset<sub>video</sub> | 62.3 | 35.7 | 86.7 | 62.9 | 61.8 | 62.4 | 46.7 | 44.4 |
| ✓ | None | LLaVA-Next & Inst-IT Dataset<sub>video</sub> | 63.1 | 35.0 | 86.9 | 62.5 | 60.2 | 63.2 | 47.2 | 44.3 |
| ✓ | Last 12 | LLaVA-Next & Inst-IT Dataset<sub>video</sub> | 63.2 | 34.9 | 87.0 | 62.5 | 60.1 | 63.3 | 47.2 | 44.0 |
| ✓ | Last 12 | LLaVA-Next & Inst-IT Dataset (img+vid) | 63.0 | 36.1 | 87.2 | 62.7 | 59.6 | 64.3 | 46.6 | 43.7 |{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Multimodal Models (LMMs) on a range of video understanding benchmarks.  The benchmarks assess different aspects of video comprehension, including open-ended question answering, yes/no question answering, and caption matching. For the TempCompass benchmark, the average score across three sub-tasks is reported to provide a more comprehensive evaluation of temporal understanding. The results demonstrate the relative strengths and weaknesses of each LLM in handling various video understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Main results on video benchmarks. We report the average of 3 parts (MCQA, Y/N, Caption Match) of TempCompass for determinism results.
> </details>

{{< table-caption >}}
| # | Data Combination | AI2D | MMMU | POPE | GQA | Inst-IT-I | Next-QA | VideoMME | Inst-IT-V |
|---|---|---|---|---|---|---|---|---|---| 
|  |  | (test) | (val) | (F1) | (val) | (mc) | (mc) | (w/o subt) | (mc) |
| 0 | LLaVA-Next | 61.1 | 35.9 | 86.9 | 61.4 | 45.3 | 56.6 | 45.7 | 31.3 |
| 1 | + inst-cap & img-cap | 63.0 | 35.1 | 86.1 | 62.7 | 58.9 | 62.4 | 46.0 | 33.8 |
| 2 | + temporal diff | 63.0 | 35.6 | 87.1 | 62.7 | 59.6 | 64.2 | 45.6 | 36.9 |
| 3 | + video-description & qa | 63.2 | 34.9 | 87.0 | 62.5 | 60.1 | 63.3 | 47.2 | 44.0 |
| 4 | + Inst-IT Dataset<sub>image</sub> | 63.0 | 36.1 | 87.2 | 62.7 | 59.6 | 64.3 | 46.6 | 43.7 |{{< /table-caption >}}
> 🔼 This table presents an ablation study on the data training recipe used in the paper.  The researchers use LLaVA-Qwen2-1.5B-CLIP336 as a baseline model and evaluate the performance of different training data combinations on the Inst-IT Bench.  Inst-IT-I and Inst-IT-V represent the image and video subsets respectively of the Inst-IT Bench's multiple choice questions. The table shows how different configurations (e.g., inclusion of the Inst-IT dataset, fine-tuning all layers or only the last 12 layers of the model) impact model performance on image and video understanding tasks, as measured by the Inst-IT Bench. This analysis helps determine the optimal training recipe that balances the Inst-IT-specific fine-tuning with general multimodal instruction tuning.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on data training recipe. We utilize LLaVA-Qwen2-1.5B-CLIP336 as the baseline model. Inst-IT-I and Inst-IT-V indicate the multi-choice splits of the image and video part of our Inst-IT Bench, separately.
> </details>

{{< table-caption >}}
| Model | Rec | OCR | Know | Math | Rel | Lang | All | Rec | OCR | Know | Math | Rel | Lang | All |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| GPT-4V-turbo-detail:high [1] | 58.1 | 69.8 | 59.5 | 71.0 | 61.4 | 51.9 | 60.7 | 56.9 | 69.7 | 63.7 | 80.6 | 61.1 | 45.6 | 59.9 |
| GPT-4V-turbo-detail:low [1] | 53.2 | 50.3 | 55.6 | 67.7 | 57.5 | 57.5 | 52.8 | 51.7 | 50.3 | 59.3 | 60.3 | 55.0 | 43.8 | 51.4 |
| InstructBLIP-7B [16] | 36.9 | 16.3 | 34.2 | 22.3 | 26.8 | 7.5 | 31.7 | 38.9 | 17 | 35.4 | 9.7 | 29.3 | 17.5 | 33.3 |
| Shikra-7B [9] | 40.2 | 10.0 | 28.0 | 3.5 | 18.9 | 20.6 | 33.7 | – | – | – | – | – | – | – |
| GPT4ROI-7B [94] | 35.6 | 16.7 | 29.7 | 9.7 | 32.5 | 13.8 | 35.1 | – | – | – | – | – | – | – |
| Kosmos-2 [58] | 29.5 | 14.2 | 18.5 | 9.7 | 7.5 | 21.9 | 26.9 | – | – | – | – | – | – | – |
| LLaVA-1.5-7B [40] | 50.8 | 12.4 | 49.2 | 6.5 | 51.8 | 23.8 | 41.6 | 49.1 | 13.0 | 42.9 | 9.7 | 50.0 | 27.5 | 40.2 |
| Qwen-VL-Chat [4] | 43.0 | 30.4 | 40.2 | 9.7 | 25.7 | 28.7 | 39.2 | 48.7 | 22.1 | 41.2 | 6.5 | 48.2 | 25.0 | 41.7 |
| ViP-LLaVA-7B [5] | 54.8 | 18.8 | 52.9 | 9.7 | 53.9 | 42.5 | 45.5 | 55.3 | 17.6 | 45.9 | 8.1 | 44.6 | 33.1 | 46.8 |
| LLaVA-Next-Inst-IT-Vicuna-7B | 51.3 | 23.7 | 54.2 | 12.9 | 64.3 | 46.2 | 45.1 | 55.0 | 21.3 | 52.5 | 16.1 | 57.5 | 40.6 | 48.2 |
| LLaVA-Next-Inst-IT-Qwen2-7B | 58.9 | 24.5 | 48.5 | 12.9 | 48.2 | 46.3 | 50.5 | 57.7 | 22.5 | 53.2 | 19.4 | 53.6 | 45.0 | 49.0 |{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different components within the INST-IT dataset on the model's performance.  It starts with a baseline model (line #0) and progressively adds components of the INST-IT dataset: line #1 adds instance and image captions, line #2 adds information about temporal changes, line #3 incorporates all video-related annotations from INST-IT, and finally, line #4 adds image annotations to create the complete INST-IT dataset. The table shows the results of this incremental approach, demonstrating the contribution of each data aspect on various image and video benchmarks. 
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on detailed data combination. The dataset combination in line #3 corresponds to the video part of Inst-IT Dataset, while line #4 represents the complete Inst-IT Dataset by incorporating the image part into line #3.
> </details>

{{< table-caption >}}
| Dataset Name | Ann. Type | Split | Sample Num. |
|---|---|---|---|
| **Video Instance Segmentation** |  |  |  |
| BRUST [3] | mask | training | 500 |
| UVO [75] | mask | training | 5,135 |
| OVIS [59] | mask | training | 599 |
| LVVIS [71] | mask | training | 3,057 |
| YoutubeVIS [82] | mask | training | 2,897 |
| **Video Object Tracking** |  |  |  |
| BenSMOT [35] | box | training | 2,261 |
| VidOR [67] | box | training | 6,969 |
| **Image** |  |  |  |
| SA-1B [59] | none | 1-5 | 51,101 |{{< /table-caption >}}
> 🔼 Table 6 presents the results of evaluating the Inst-IT models on the ViP-Bench benchmark.  ViP-Bench focuses on instance-level understanding, and this table shows how the Inst-IT models perform compared to other state-of-the-art models on various subtasks within ViP-Bench.  The results are broken down across several metrics (Rec, OCR, Know, Math, Rel, Lang, All) for various models and different types of prompts (synthesized visual prompts with tight bounding boxes and visual prompts from humans, e.g., arrows, circles). This allows for a comprehensive comparison of performance across different models and prompting strategies, highlighting the strengths and weaknesses of each approach on this specific benchmark focused on instance understanding.
> <details>
> <summary>read the caption</summary>
> Table 6: ViP-Bench Evaluation Results. We direct perform evaluation with our Inst-IT models.
> </details>

{{< table-caption >}}
| Frame | Instance-level Captions | Image-level Captions | Temporal Differences |
|---|---|---|---|
| <img src="https://arxiv.org/html/2412.03565/1.png" width="124" height="81"> timestamp&lt;1&gt; | 1: Wearing a light gray suit with a white shirt, standing indoors. 2: Wearing a sleeveless white lace dress, holding an object in the hand. 3: Wearing a dark floral-patterned dress with long wavy hair. | [1] [2] [3] are standing closely together in an indoor setting. [1] is on the left side wearing a formal, light gray suit with a white shirt. [2], in the middle, is wearing a sleeveless white lace dress, holding something in their hand. [3] is on the right side in a dark floral-patterned dress with long, wavy hair. They appear to be in a room with wooden paneling and some framed art on the wall. |  |
| <img src="https://arxiv.org/html/2412.03565/2.png" width="124" height="82"> timestamp&lt;2&gt; | 1: A person wearing a gray suit with a white shirt, short hair. 2: A person in a white, sleeveless dress with long dark hair. 3: A person wearing a dark floral dress with long dark hair. 5: A person wearing red, partially visible in the background. 6: A small black cellphone held in a hand. | The scene appears to be in an office setting with a wooden table at the foreground. [1] is standing to the left, facing [2], and appears to be holding [2]’s finger or hand. [2] stands slightly to the right, returning focus with [1]. [3] is to the right of [2], slightly in the background, smiling and looking forward. A bouquet of white flowers lies on the table near [2]. [5] is partially visible in the background on the right, seated and wearing red. [6] is a cellphone held by [5]. Background shows a wooden wall and a reflection in a window. | [1] has moved closer to [2] and is now in contact with [2]’s hand. [2] has turned slightly towards [1] compared to the previous frame. [3] remains in a similar position, but the expression suggests more engagement with the scene. [5] and [6] have appeared in the frame; [5] is visible in the background holding [6]. The table with a bouquet of flowers is now visible, indicating a shift in camera angle slightly to include more of the right side of the room. |
| <img src="https://arxiv.org/html/2412.03565/3.png" width="124" height="82"> timestamp&lt;3&gt; | 1: Wearing a grey suit, standing beside [2] and slightly turned towards them. 2: Wearing a white, sleeveless dress with floral textures. Holding a bouquet of white flowers. 3: Wearing a dark patterned dress, standing slightly behind [2]. 4: Partially visible, wearing dark clothing, located at the edge of the left side of the frame. 5: Seated, wearing a red outfit. Holding a white object above their head, possibly obscuring their face. | The scene shows [1] [2] [3] near a wooden conference table in a professional setting, possibly an office. [1] wears a grey suit and is standing to the left, engaged with [2] who is wearing a white dress and holding flowers. [3], who is in a patterned dress, stands closely behind [2]. The newly appeared [4] is seated to the far left, partially visible at the edge of the frame. [5] is seated on the right side, holding an object above their head, possibly obscuring their face. The room has wooden walls and a framed picture hanging on the wall. | Object [5] has lifted an object above their head, possibly a piece of paper. Object [4] has appeared in the scene, seated on the left side of the frame, which was not visible earlier. The positions of objects [1], [2], and [3] remain unchanged, as does the background and setting of the room. Overall, no significant movement is noticed in terms of camera angle or position for objects [1] [2] [3]. |
| <img src="https://arxiv.org/html/2412.03565/4.png" width="124" height="82"> timestamp&lt;4&gt; | 1: Wearing a light gray suit jacket, white dress shirt, and dark pants. 2: Wearing a white dress with a lace overlay, fitted at the waist. 3: Wearing a patterned dress with a floral design, strapless. 4: Visible part of a person wearing a dark shirt, seated or standing near the table. | The setting appears to be indoors, with [1] [2] and [3] standing together around a table with a bouquet of flowers on it. [1] is interacting with [2], who is at the center, and they are possibly holding hands or engaged in some form of exchange. [3] is standing beside [2] and looking on, slightly leaning towards her. The room has wooden walls and a large framed picture in the background. The setting suggests a formal or ceremonial atmosphere, possibly a wedding or an official gathering. The camera angle is focused on this group, highlighting their interaction. | [1] has moved slightly closer to [2], and they appear to be holding hands or exchanging something. [5] is no longer visible in the frame, possibly due to a change in camera angle or positioning of the individuals. |
| <img src="https://arxiv.org/html/2412.03565/5.png" width="124" height="82"> timestamp&lt;5&gt; | 1: An adult wearing a light gray suit with button details and a white shirt. The expression and stance suggest focus and engagement. 2: An adult in a white, lacy dress with thin straps. The person has long dark hair and appears to be smiling, holding hands with [1]. 3: An adult wearing a multicolored, patterned dress. The person has long, wavy hair and is smiling while observing [1] and [2]. | The current frame captures a moment in an interior setting with [1] wearing a light gray suit, [2] in a white lace dress, and [3] in a patterned dress. [1] and [2] are engaged, with [1] facing [2] and holding their hand, suggesting an exchange, possibly a ring. [2] smiles, indicating a moment of happiness. [3] stands to the right, smiling and observing the interaction, detached but engaged with the scene. The background shows a wooden wall and framed picture, reflecting a formal environment possibly used for ceremonies. A bouquet of flowers rests on the table in front of the group. | Between the previous and the current frame, [1] and [2] have shifted slightly closer, with [1] now directly holding [2]’s hand, indicating a progression in their interaction, possibly the continuation or conclusion of an exchange, such as the placing of a ring. [3] remains in a similar position but continues to observe [1] and [2], emphasizing their passive role in the interaction. There is no notable change in the background or environment. |{{< /table-caption >}}
> 🔼 Table 7 details the data sources used in the INST-IT dataset.  It lists seven video datasets and one image dataset, specifying the type of annotation provided (mask or bounding box), the data split used (training), and the total number of samples available for each dataset. This table is crucial for understanding the scale and composition of the data used in the training and evaluation of the models presented in the paper. The information provided facilitates the reproducibility and interpretation of the research.
> <details>
> <summary>read the caption</summary>
> Table 7: Data sources. We use 7 video datasets and 1 image dataset as our data sources. We demonstrate their annotation formats, splits we used, and the number of samples from each dataset.
> </details>

{{< table-caption >}}
| Frame | Instance-level Captions | Image-level Captions | Temporal Differences |
|---|---|---|---| 
| <img src="https://arxiv.org/html/2412.03565/6.png" width="124" height="82"> timestamp &lt; 6 &gt; | 1: [1] is wearing a grey suit with a white shirt, looking forward, standing upright and smiling slightly. 2: [2] is wearing a white sleeveless dress, with hair tied back, and is standing with a calm expression. 3: [3] is wearing a floral dress with an energetic expression, standing with arms slightly bent. | The image depicts a formal setting with a group of three adults, [1], [2], and [3], standing closely together. The background features a wooden paneled wall and a framed picture. [1] and [2] are positioned in the center, both facing forward, suggesting they are the focus of the occasion. [1] is on the left, wearing a grey suit, and [2] is to the right of [1] in a white dress. They appear to be engaged in a ceremony or formal event. [3] is to the right of [2], wearing a floral dress, and displays a cheerful demeanor. The lighting is bright, illuminating their faces and creating a formal, celebratory atmosphere. | Between the frames, there is a noticeable shift in the poses and expressions of [1] and [2]. In the current frame, [1] is now standing upright with a slight smile, while previously [1] was leaning towards [2], holding [2]’s hand, suggesting a shift from interaction to posing. [2], who was previously looking at [1], is now facing forward with a calm expression, indicating a change from an interactive pose to a more neutral one. Both [1] and [2] have adjusted their posture to face the camera more directly. [3] remains in similar positioning as before but has moved slightly closer to [2] and is displaying a more energetic expression, emphasizing the cheerful atmosphere. The objects on the table in the foreground, visible in the previous frame, are no longer the focal point, showing that the primary focus is now the individuals standing together. |
| <img src="https://arxiv.org/html/2412.03565/7.png" width="124" height="82"> timestamp &lt; 7 &gt; | 1: [1] is dressed in a grey suit with a white shirt, looking formal and neat. 2: [2] is wearing a white, sleeveless dress with a lightly patterned texture. 4: [4] is dressed in a dark outfit, including a dark scarf or similar accessory. | In the current frame, [1] is positioned in the center, wearing a grey suit and a white shirt. [2] is to the right of [1], dressed in a white sleeveless dress. [4] appears on the left side of the image, wearing a dark outfit, which includes a scarf, giving a formal look. The environment is a room with wooden walls, and a large map or blueprint hangs on the wall in the background. The lighting highlights the three individuals, [1] [2] [4], and the focus is on them standing in a formal setting. [1] and [2] appear to be closer together, engaged in the setting’s activity, with [4] seeming to join or rejoin the group. | [3] is no longer visible in the current frame. [4] has appeared, standing to the left side of [1] and [2]. [1] and [2] remain in similar positions as in the previous frame, but the group now includes [4]. |
| <img src="https://arxiv.org/html/2412.03565/8.png" width="124" height="82"> timestamp &lt; 8 &gt; | 1: Person in a gray suit with a white shirt underneath. 2: Person wearing a white dress with long dark hair. 3: Person with long hair wearing a patterned dress, standing in the background. | The current frame shows a group of three individuals indoors, with [1] on the left in a gray suit and white shirt, facing slightly towards [2], who is dressed in a white dress with long dark hair. [2] is looking at [1], suggesting an interaction or communication between them. [3] is slightly behind [2] and smiling, indicating a positive mood. The environment appears to be an office or meeting room with a large map or artwork on the wall in the background and a wooden wall, suggesting a formal or semi-formal setting. The lighting is bright, coming from the windows in the background, creating a clear but slightly shadowed detail on the individuals. | From the previous frame to the current one, [1] and [2] appear to have shifted slightly closer to each other, with [2]’s head turned towards [1] indicating interaction. [3] is now visible in the scene, having entered from the right, which suggests a new addition to the group. [4] from the previous frame is no longer visible, indicating they may have exited the frame or moved out of view. The overall composition suggests a change in group dynamics as [3] enters and [1] and [2] interact more closely. |{{< /table-caption >}}
> 🔼 This table presents a detailed, frame-by-frame annotation of a video segment (frames 1-5) from the INST-IT dataset.  Each frame's annotation includes instance-level captions (describing individual objects by their ID and attributes), image-level captions (describing the overall scene and object interactions), and a description of temporal changes between consecutive frames. The table is designed to showcase the level of detail provided in the dataset for instance-level understanding.
> <details>
> <summary>read the caption</summary>
> Table 8: Inst-IT Dataset Frame-level Annotation, Part I (frame 1-5). Please zoom in to view the instance ID labels.
> </details>

{{< table-caption >}}
| Frame | Instance-level Captions | Image-level Captions | Temporal Differences |
|---|---|---|---| 
| <img src="https://arxiv.org/html/2412.03565/9.png" width="124" height="82"> timestamp &lt; 9 &gt; | 1: Wearing a light gray suit with a white shirt, standing with arms relaxed at the sides. 2: Wearing a sleeveless white dress, with black hair visible, standing sideways. 3: Clapping hands, wearing a dark, sleeveless floral-patterned dress. 4: Visible hands clapping, appearing on the left side of the frame. | In the current frame, [1] is standing next to [2], both are positioned near a wooden wall, with a large framed picture or window in the background. [2] is wearing a white dress and stands slightly leaning towards [1], who is dressed in a gray suit. [3] is to the right, wearing a patterned dress and clapping her hands. On the left side of the frame, [4]’s hands are visible, indicating a clapping gesture. The environment appears to be well-lit, possibly indicating a celebratory or formal gathering. | [4] has appeared in the current frame, clapping, which was not present in the previous frame. [1] and [2] have slightly shifted positions, indicating a minor adjustment in posture. The lighting in the room appears brighter in the current frame. |
| <img src="https://arxiv.org/html/2412.03565/10.png" width="124" height="82"> timestamp &lt; 10 &gt; | 1: [1] is wearing a grey suit with a white shirt. The person’s expression is neutral. 2: [2] is wearing a white dress, has long dark hair, and is smiling. 3: [3] is wearing a dark patterned dress, has long dark hair, and is smiling. 4: [4] is partially visible, clapping hands, wearing a long sleeve. | In the current frame, [1] stands on the left wearing a grey suit and appears slightly more composed than before. [2], next to [1], in a white dress, continues smiling, directed towards [1]. [3] stands behind [2] with a continuous smile and hands still positioned as if clapping, indicating a joyous or celebratory mood. [4] is partially visible on the edge, with both hands shown as if engaged in clapping. The background remains the same, with wall decor and a wooden frame, suggesting an indoor setting. The lighting is consistent, highlighting a positive atmosphere. | Between the previous and current frames, [1] has shifted from smiling to a neutral expression. [2]’s expression remains unchanged, still smiling. [3] continues to smile, maintaining the same engagement level. [4] shows hands in clapping motion slightly more forward than before. The physical positions of all individuals are largely the same, with slight adjustments in posture, possibly due to motion between shots. |
| <img src="https://arxiv.org/html/2412.03565/11.png" width="124" height="82"> timestamp &lt; 11 &gt; | 1: Individual in a grey suit with a light-colored shirt underneath. 2: Individual in a white dress with a flower in their hair. 3: Individual in a dark floral dress with bare shoulders. 4: Visible hand, partially in the frame, with a watch on the wrist. | The current frame captures four adults in what appears to be an intimate celebration setting, inside a room with a wooden backdrop and a framed picture on the wall. [1] and [2] are the main focus, engaged in a kiss. Both are facing each other, with [1] in a grey suit and [2] in a white dress. [3] stands to the side, clapping, and appears joyous, indicating approval or celebration. The environment is that of a seemingly formal setting with elements suggesting a personal or official celebration. [4] is partially visible, with just a hand showing, suggesting a congratulatory gesture. | Between the previous and current frames, [1] and [2] have moved from standing side by side to facing each other and kissing, indicating a change from a neutral to an intimate interaction. [3] continues to display a supportive gesture by clapping, suggesting this action started in the previous frame and continued into the current one. The position of [4] indicates movement from a neutral position to a congratulatory gesture, seen by the positioning of the arm and hand. The overall increase in physical interaction between [1] and [2] and the supportive gestures by [3] and [4] contribute to a more emotionally engaging scene in the current frame. |
| <img src="https://arxiv.org/html/2412.03565/12.png" width="124" height="82"> timestamp &lt; 12 &gt; | 1: Adult wearing a light grey suit with a white shirt. Short dark hair, clean-shaven, and standing upright. 2: Adult in a white, sleeveless dress. Long dark hair pulled back. Appears to be smiling with eyes partially closed. 3: Adult in a dark floral dress with a sleeveless design. Long dark hair down and clapping. | In the current frame, [1] and [2] stand close together in the center of the image. [1] is wearing a grey suit with a white shirt and appears to be speaking or smiling. [2], dressed in a white dress, is leaning slightly towards [1] with a content expression. [3] is on the right, wearing a dark floral dress and clapping, seemingly celebrating with [1] and [2]. The environment is indoors with a wooden wall and a large framed picture in the background. The overall mood is celebratory, suggesting an event or occasion has taken place. | Compared to the previous frame, [1] and [2] were previously kissing, but now they are standing apart, with [2] leaning slightly towards [1]. [1] has shifted from facing [2] to facing slightly outward and appears to be speaking or smiling. [3] remains in the same position but continues clapping, indicating ongoing celebration. The celebratory mood persists, reflecting a continuation of the event captured in the previous frame. |{{< /table-caption >}}
> 🔼 This table presents a detailed, frame-by-frame annotation of a video segment (frames 6-8) from the INST-IT dataset.  Each frame's annotation includes instance-level captions describing the appearance and actions of individual objects, image-level captions providing a comprehensive overview of the entire scene, and temporal difference descriptions highlighting changes between consecutive frames. The table is designed to illustrate the rich and nuanced annotations characteristic of the INST-IT dataset, which focuses on instance-level understanding of both image and video data.
> <details>
> <summary>read the caption</summary>
> Table 9: Inst-IT Dataset Frame-level Annotation, Part II (frame 6-8). Please zoom in to view the instance ID labels.
> </details>

{{< table-caption >}}
| Question | Answer |
|---|---| 
| What change occurs with [1]’s expression between &lt;10&gt; and the previous frame? | [1] changes from smiling to a neutral expression. |
| What activity are [1] and [2] involved in at &lt;11&gt;? | [1] and [2] are engaged in a kiss. |
| What is the overall mood during &lt;11&gt; as suggested by [3]’s actions? | A celebratory or joyous event. |
| What interaction occurs between [1] and [2] at &lt;5&gt;? | [1] holds [2]’s hand, suggesting an intimate gesture or exchange, likely a ring. |
| Who joins [1] and [2] in the frame at &lt;7&gt;? | [4] appears in the frame, joining [1] and [2]. |
| What changes in the group’s composition between &lt;7&gt; and &lt;8&gt;? | [3] reappears, and [4] is no longer visible. |
| What common setting element is seen throughout the frames &lt;1&gt; to &lt;12&gt;? | The scene is in an indoor setting with wooden paneling and framed art. |
| What type of event is likely taking place based on the atmosphere in &lt;4&gt; and &lt;6&gt;? | A formal event, possibly a wedding or official gathering. |
| What new elements are introduced in the scene at &lt;2&gt;? | [5] holds a cellphone in the background, partially visible. |
| What is the mood and lighting like at &lt;6&gt;? | The mood is formal and celebratory, with bright lighting enhancing this atmosphere. |
| What new background element appears at &lt;7&gt;? | There is a map or blueprint on the wall. |
| What is notable about [5]’s actions at &lt;3&gt;? | [5] is lifting an object above their head, possibly a piece of paper. |
| What is the setting like in &lt;3&gt;? | The group is gathered near a wooden conference table in a formal setting. |
| How are [1] and [2] interacting at &lt;8&gt;? | They are engaged in conversation or communication, indicated by body language and focus. |
| What does [1]’s expression suggest at &lt;12&gt;? | [1] speaks or smiles, suggesting engagement with [2] or others. |
| What shift occurs in the focus of the camera between &lt;5&gt; and &lt;6&gt;? | The camera focuses more on individuals standing together, reducing focus on the foreground objects. |
| What are [3] and [4] doing at &lt;9&gt;? | They clapping their hands in celebration. |
| What decorative element is visible at &lt;2&gt;? | A bouquet of flowers lies on the table near [2]. |
| How has the posture of [1] and [2] changed by &lt;6&gt;? | [1] and [2] face slightly outward, suggesting a pose for a photograph or audience. |
| What overall physical change occurs between [1] and [2] from &lt;10&gt; to &lt;11&gt;? | There’s a noticeable increase in their physical interaction, enhancing emotional engagement. |{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of frame-level annotations for frames 9 through 12 of a video in the INST-IT dataset.  Each frame's annotation includes instance-level captions (descriptions of individual objects, including their attributes and actions), image-level captions (a holistic description of the entire scene, including object interactions and environmental details), and temporal difference descriptions (capturing changes between consecutive frames). This level of detail highlights the dataset's emphasis on instance-level understanding and provides a rich source of data for training and evaluating multimodal models.
> <details>
> <summary>read the caption</summary>
> Table 10: Inst-IT Dataset Frame-level Annotation, Part III (frame 9-12). Please zoom in to view the instance ID labels.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.03565/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.03565/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}