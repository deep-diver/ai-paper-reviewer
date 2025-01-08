---
title: "Sa2VA: Marrying SAM2 with LLaVA for Dense Grounded Understanding of Images and Videos"
summary: "Sa2VA marries SAM2 and LLaVA for dense grounded image and video understanding, achieving state-of-the-art results on multiple benchmarks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-01-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.04001 {{< /keyword >}}
{{< keyword icon="writer" >}} Haobo Yuan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.04001" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.04001" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/sa2va-marrying-sam2-with-llava-for-dense" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.04001/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current multi-modal large language models (MLLMs) often struggle with fine-grained video understanding, lacking either the open-ended ability of LLMs or the precise visual perception capabilities needed for tasks like referring segmentation.  Existing models either lack open-ended reasoning abilities, or lack precise visual grounding.  This necessitates a unified approach that combines the strengths of both types of models. 

Sa2VA is a novel model that addresses these limitations by integrating SAM-2 (a video segmentation model) with a LLaVA-like MLLM. The unified model uses LLM instruction tokens to guide SAM-2, enabling multi-modal visual understanding.  The researchers introduce a new, automatically-labeled dataset, Ref-SAV, to further enhance model performance. Extensive testing demonstrates Sa2VA's superior performance on multiple image and video tasks, significantly outperforming previous methods.  **Sa2VA demonstrates the power of combining vision and language models for enhanced multimodal understanding.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Sa2VA is the first unified model for dense grounded understanding of images and videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Sa2VA achieves state-of-the-art results on multiple image and video referring segmentation benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper introduces Ref-SAV, a challenging new benchmark dataset for referring video object segmentation, promoting future research in this area {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces Sa2VA, a novel unified model for understanding images and videos.  **Sa2VA bridges the gap between perception models and large language models (LLMs), enabling a wide range of tasks including referring segmentation and conversation.** This addresses a key challenge in multimodal AI, paving the way for more versatile and powerful AI systems capable of nuanced visual understanding.  The introduction of a new benchmark dataset further boosts the value of this research for future development and comparison of models.

------
#### Visual Insights



![](https://arxiv.org/html/2501.04001/x2.png)

> 🔼 Figure 1 demonstrates the capabilities of Sa2VA, a novel model for dense grounded understanding of images and videos.  Panel (a) showcases Sa2VA's ability to segment a specified object within a video scene while also comprehending the broader context. Panel (b) highlights Sa2VA's versatility in handling various tasks, including image and video conversations, image and video referring segmentation, and generating grounded captions using a single-shot instruction-tuning method. Panel (c) presents a comparative analysis of Sa2VA's performance against other state-of-the-art Multimodal Large Language Models (MLLMs) across multiple image and video benchmarks, demonstrating Sa2VA's superior capabilities in tasks such as video referring segmentation and conversational question answering.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of capabilities of our proposed Sa2VA. (a). Given a video, Sa2VA is able to segment the referred object and understand the whole scene. (b).Sa2VA supports image conversation, video conversation, image referring segmentation, video referring segmentation, and grounded caption generation with single-shot instruction-tuning. (c).Sa2VA achieves strong results on multiple images, video referring segmentation, and chat benchmarks compared with existing MLLMs, such as GLaMM [66] and OMG-LLaVA [99].
> </details>





{{< table-caption >}}
| Method | Image | Video | Visual Prompts | RES | Ref-VOS | Inter-VOS | GCG | Image-Chat | Video-Chat | Video Caption | Interactive Caption | Training | 
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| LLAVA [53] | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 | 2717 | 2717 | 2717 | 2713 |
| LLaVA-OneVision [42] | 2713 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 | 2713 | 2713 | 2717 | 2713 |
| InternVL 2.0 [9] | 2713 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 | 2713 | 2713 | 2717 | 2713 |
| Osprey [92] | 2713 | 2717 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 | 2717 | 2717 | 2717 | 2713 |
| LISA [40] | 2713 | 2717 | 2713 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 |
| GLAMM [66] | 2713 | 2717 | 2713 | 2713 | 2717 | 2717 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 |
| VIP-LLaVA [5] | 2713 | 2717 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 | 2717 | 2717 | 2717 | 2713 |
| VISA [85] | 2713 | 2713 | 2713 | 2713 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 |
| OMG-LLaVA [99] | 2713 | 2713 | 2713 | 2713 | 2713 | 2717 | 2717 | 2717 | 2713 | 2713 | 2717 | 2717 | 2713 |
| PSALM [101] | 2713 | 2713 | 2717 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 |
| GSVA [83] | 2713 | 2717 | 2717 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 |
| LLaMA-VID [50] | 2713 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 | 2713 | 2713 | 2717 | 2713 |
| ST-LLM [56] | 2713 | 2713 | 2717 | 2717 | 2717 | 2717 | 2717 | 2717 | 2713 | 2713 | 2713 | 2717 | 2713 |
| F-LLM [82] | 2713 | 2717 | 2717 | 2713 | 2717 | 2717 | 2717 | 2717 | 2713 | 2717 | 2717 | 2717 | 2717 |
| Sa2VA (Ours) | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 | 2713 |{{< /table-caption >}}

> 🔼 Table 1 compares the capabilities of several representative models in handling various vision-language tasks, particularly focusing on image and video processing.  It highlights the input types each model supports (image, video, visual prompts), and whether they perform dense grounding, conversation, and various specific tasks like referring segmentation (image and video), video object tracking, and grounded caption generation.  It also notes whether each model is trained end-to-end. The table emphasizes that Sa2VA, the authors' model, uniquely supports a wide range of tasks across multiple modalities (image and video) and provides interactive prompting capabilities, an advantage illustrated in Figures 1(a) and 1(b) of the paper. 
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of capabilities of different representative models. Our method supports various tasks and modalities. Benefiting from these interactive features on video, Sa2VA can perform multiple promptable tasks in the video, as shown in Fig. 1 (a) and (b).
> </details>





### In-depth insights


#### Unified Multimodal Model
A unified multimodal model strives to **integrate various modalities**, such as text, images, and videos, into a single, coherent framework.  This contrasts with traditional approaches that treat each modality separately, often requiring complex fusion techniques.  The key advantage is the potential for **enhanced understanding and reasoning** across modalities.  A unified model can leverage information from each modality to improve the performance of tasks involving multiple modalities. For example, using image context to disambiguate text, or using text descriptions to guide image analysis. **Challenges** in creating such models include finding efficient ways to represent different modalities in a shared space, managing computational costs, and effectively training the model on diverse and potentially noisy data from multiple sources.  A successful unified model **requires careful design of the architecture** and a well-defined learning objective that considers the interdependencies between modalities.  The resulting model promises improved performance for tasks such as multimodal question answering, image captioning, and video understanding.

#### Ref-SAV Dataset
The creation of the Ref-SAV dataset is a **significant contribution** to the field of video understanding.  Its automatic generation pipeline, while innovative, highlights the **challenges in creating high-quality, large-scale datasets**. The pipeline's reliance on pre-trained models (InternVL2-76B and Qwen2-72B) introduces biases and limitations. **Manual validation of 2k video objects** was crucial for quality control, underscoring the importance of human oversight in such annotation tasks.  The resulting dataset, with its **over 72k object expressions in complex video scenes**, provides a valuable resource for benchmarking referring video object segmentation. **Focus on longer, more complex video clips with occlusions** addresses existing dataset limitations and pushes the field toward more realistic video understanding models. The dataset's detailed annotation, including relationships between objects and the scene, **enables finer-grained evaluation** metrics. However, it's crucial to understand that its automatic generation might still produce noise and inconsistencies demanding careful analysis of results before drawing robust conclusions.

#### Sa2VA Architecture
The Sa2VA architecture cleverly integrates two powerful models: **SAM-2**, a strong video segmentation model, and a **LLaVA-like MLLM**, offering both spatial-temporal perception and open-ended abilities.  A key design choice is the **decoupled architecture**, where SAM-2's decoder and memory are frozen, making Sa2VA easily adaptable to new MLLMs.  The fusion is facilitated by a special '[SEG]' token which bridges the two, guiding SAM-2's mask generation via instructions generated by the MLLM. This design efficiently leverages pre-trained knowledge while avoiding potential conflicts often seen in jointly trained models. This unification enables Sa2VA to handle a wide range of tasks, including referring segmentation and conversation, with unified instruction tuning, thus maximizing efficiency and capabilities.

#### Experimental Results
The Experimental Results section of a research paper is crucial for validating the proposed method.  A strong results section will demonstrate **superior performance** compared to existing state-of-the-art methods across multiple relevant benchmarks.  The paper should clearly present quantitative metrics, such as precision, recall, F1-score, or Intersection over Union (IoU) for tasks like segmentation.  For conversational tasks, metrics like BLEU or ROUGE scores might be used to evaluate the quality of generated text.  Visualizations, such as graphs or tables, are essential for making the results readily understandable.  Furthermore, **ablation studies** systematically analyze the impact of each component of the proposed model, demonstrating the contribution of each part and justifying design choices.  A comprehensive error analysis helps in identifying limitations and suggesting directions for future improvements.  The presentation should be clear, concise, and provide enough detail to allow readers to understand the experimental setup and replicate the findings.  **Robust statistical significance testing** should be used to ensure the reported improvements are not due to random chance.  Finally, discussion of any unexpected or surprising results, along with potential explanations, further enhances the credibility of the study.

#### Future Work
The research paper's 'Future Work' section would ideally delve into several crucial areas.  **Addressing limitations** in handling exceptionally long videos with complex referring expressions is key; the current model's online processing might struggle with such extensive temporal contexts.  Improving the balance between VQA and referring segmentation tasks is essential; the current approach shows a trade-off, potentially impacting accuracy in either task.  **Exploring different LLMs** would broaden the model's capabilities and uncover potential performance improvements. Investigating more diverse and challenging datasets, perhaps with more complex scenes and higher levels of occlusion, is important for robust model testing and development.  **Enhancing the automatic data annotation pipeline** is another critical area for refining and expanding the training data to address bias and further improve model accuracy.  Finally, exploring applications of the unified model in real-world scenarios (such as interactive video editing or robot control) would be valuable for demonstrating practical impact.  These refinements will strengthen the model's versatility and its contribution to the wider field of multimodal understanding.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.04001/x3.png)

> 🔼 The Sa2VA model processes input text, visual prompts, images, and videos.  First, these inputs are converted into token embeddings. These embeddings are then fed into a Large Language Model (LLM) which processes the information and outputs text tokens.  Importantly, these text tokens are used to generate a special '[SEG]' token which acts as an instruction for the next stage.  The LLM also generates other associated language outputs, such as answers to questions. Finally, the image and video features, along with the '[SEG]' token, are passed to the SAM-2 decoder, which generates the corresponding image and video masks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our proposed Sa2VA model. The model first encodes the input texts, visual prompts, images, and videos into token embeddings. These tokens are then processed through a large language model (LLM). The output text tokens are used to generate the [SEG] token and associated language outputs. The SAM-2 decoder receives the image and video features from the SAM-2 encoder, along with the [SEG] token, to generate corresponding image and video masks.
> </details>



![](https://arxiv.org/html/2501.04001/x4.png)

> 🔼 This figure illustrates the three-stage automatic data annotation pipeline used to create the Ref-SAV dataset.  The first stage, object/part-level annotation, involves cropping objects from video frames and using a large language model (InternVL2-76B) to generate detailed descriptions.  These descriptions are checked for consistency by another model (Qwen2-72B). The second stage, scene-level annotation, uses the object/part-level descriptions and the image (with the object highlighted) to create a more comprehensive scene description. Finally, the video-level annotation stage combines the scene-level descriptions with uniformly sampled video frames to generate a final video-level description.  Different colors in the final description highlight information from each stage.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data annotation pipeline. Our proposed automatic data annotation pipeline consists of three stages: object/part-level, scene-level, and video-level text expression annotation. We use different colors in the final expression to highlight the information derived from each stage. Best view on screen and zoom out.
> </details>



![](https://arxiv.org/html/2501.04001/x5.png)

> 🔼 Figure 4 showcases examples from the Ref-SAV benchmark dataset, highlighting its key characteristics:  It includes a variety of scenarios with different levels of complexity, including cases with multiple objects (multi-granularity), significant occlusions where objects are partially hidden, objects that disappear and reappear (reappearing), and descriptions that range from short and concise to long and detailed (short and long-format text expressions). These diverse examples are designed to thoroughly evaluate the robustness and accuracy of models in referring video object segmentation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: The samples of our Ref-SAV benchmark. Our proposed benchmark features multi-granularity, complex occlusion and reappearing, and both short and long-format text expressions.
> </details>



![](https://arxiv.org/html/2501.04001/x6.png)

> 🔼 This figure showcases the effectiveness of the Sa2VA model in performing image referring segmentation.  Each row displays a prompt (instructing the model to segment a specific object) followed by the corresponding image and the model's generated segmentation mask.  The masks accurately highlight the requested objects (cooker, pasta, cameraman, person on a bicycle, bicycle, car, motorcycle, and trash can), demonstrating Sa2VA's capacity for precise object localization and segmentation based on natural language instructions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization results on image referring segmentation task.
> </details>



![](https://arxiv.org/html/2501.04001/x7.png)

> 🔼 This figure showcases the model's video referring segmentation capabilities.  Multiple video clips are presented, each with a corresponding textual instruction for object segmentation. The model successfully identifies and segments the requested object (e.g., a backpack, a dog) within the complex video frames, accurately outlining the object's shape and boundaries throughout the video's duration.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization results on video referring segmentation.
> </details>



![](https://arxiv.org/html/2501.04001/x8.png)

> 🔼 This figure showcases the model's visual prompt understanding capabilities.  The masks generated by the model for the grounded caption generation (GCG) task are used as input visual prompts. The model then provides detailed region-level descriptions corresponding to the input masks. The figure displays multiple examples, with each object mask and its accompanying description shown in the same color for easy visual comparison and understanding.  This demonstrates the model's ability to interpret and describe image regions based on fine-grained segmentation and contextual understanding.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization results on visual prompt understanding task. We use the masks predicted by our model under the GCG task as visual prompts, and generated region-level descriptions for these masks. The object masks and their captions for the corresponding region are highlighted in the same color.
> </details>



![](https://arxiv.org/html/2501.04001/x9.png)

> 🔼 Figure 8 presents a comparison of Grounded Caption Generation (GCG) results between the proposed Sa2VA model and the previous state-of-the-art model, OMG-LLaVA. The figure visually demonstrates Sa2VA's superior performance in generating more accurate and detailed captions aligned with the segmented object regions in images and videos. Sa2VA exhibits stronger grounding ability and more precise text-mask alignment compared to OMG-LLaVA.
> <details>
> <summary>read the caption</summary>
> Figure 8: Visualization results on GCG tasks. Top: our method. Bottom: OMG-LLaVA [99]. Note that, our method has stronger and fined-grained grounding ability and text alignment than OMG-LLaVA [99], previous strong baseline.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | Image Segmentation |  |  | Video Segmentation |  |  | Image Chat |  | Video Chat |  | GCG |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| RefCOCO [36] | RefCOCO+ [36] | RefCOCOg [90] | MeViS [13] | Ref-DAVIS17 [38] | ReVOS [85] | LAVA-1.5-13B [54] | MME [19] | MMBench [59] | SEED-Bench [41] | Video-MME [20] | MMBench-Video [17] | GCG [66] |
| LLAVA-1.5-13B [54] | - | - | - | - | - | - | 1531 | 68.8 | 70.1 | - | - | - |
| Video-LLaVA-7B [51] | - | - | - | - | - | - | - | 60.9 | - | 39.9 | 1.03 | - |
| LLaMA-VID-7B [50] | - | - | - | - | - | - | 1521 | 65.1 | 59.9 | - | 1.08 | - |
| mPLUG-Owl3-8B [89] | - | - | - | - | - | - | - | 77.6 | - | 53.5 | 1.35 | - |
| InternVL2-8B [9] | - | - | - | - | - | - | - | 81.7 | 76.2 | 54.0 | 1.28 | - |
| PixelLM-7B [68] | 73.0 | 66.3 | 69.3 | - | - | - | 309/135 | 17.4 | - | - | - | - |
| LaSagnA [77] | 76.8 | 66.4 | 70.6 | - | - | - | 0/0 | 0.0 | - | - | - | - |
| LISA-7B [40] | 74.1 | 62.4 | 66.4 | - | - | - | 1/1 | 0.4 | - | - | - | - |
| GLaMM-7B [66] | 79.5 | 72.6 | 74.2 | - | - | - | 14/9 | 36.8 | - | - | - | 28.9 |
| LLaVA-G-7B [96] | 77.1 | 68.8 | 71.5 | - | - | - | - | - | - | - | - | - |
| GSVA-13B [83] | 79.2 | 70.3 | 75.7 | - | - | - | - | - | - | - | - | - |
| OMG-LLaVA-7B [99] | 78.0 | 69.1 | 72.9 | - | - | - | 1177/235 | 47.9 | 56.5 | - | - | 29.9 |
| VISA-13B [85] | 72.4 | 59.8 | 65.5 | 44.5 | 70.4 | 50.9 | - | - | - | - | - | - |
| Sa2VA-1B (Ours) | 77.4 | 69.9 | 72.3 | 50.8 | 72.3 | 47.6 | 1381/405 | 68.3 | 64.8 | 39.9 | 1.07 | 23.8 |
| Sa2VA-4B (Ours) | 78.9 | 71.7 | 74.1 | 52.1 | 73.8 | 53.2 | 1536/530 | 77.3 | 73.3 | 50.4 | 1.23 | 28.2 |
| Sa2VA-8B (Ours) | 81.6 | 76.2 | 78.7 | 57.0 | 75.2 | 57.6 | 1617/511 | 81.6 | 75.1 | 52.1 | 1.34 | 31.0 |
| Sa2VA-26B (Ours) | 82.5 | 78.8 | 79.7 | 57.3 | 77.0 | 58.4 | 1691/538 | 83.7 | 76.8 | 52.6 | 1.45 | 33.5 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Sa2VA and other state-of-the-art models on several image and video benchmarks.  These benchmarks cover various tasks including image referring segmentation (RefCOCO, RefCOCO+, RefCOCOg, MeViS, Ref-DAVIS17, ReVOS, MME), video referring segmentation (the same metrics as image), and image and video chat (MMBench, SEED-Bench, Video-MME, MMBench-Video).  The table allows for a direct comparison of Sa2VA's performance across multiple modalities and tasks, highlighting its strengths and demonstrating its performance relative to other leading models.
> <details>
> <summary>read the caption</summary>
> Table 2: Experiment results on image/video referring segmentation benchmarks and image/video chat benchmarks.
> </details>

{{< table-caption >}}
| Type | Datasets |
|---|---| 
| Image QA | LLaVA 1.5 (665K) |
| Image Segmentation | RefCOCO (17K), RefCOCO+ (17K), RefCOCOg (22K), Grand-f (214K) |
| Video QA | ChatUniVi (100K) |
| Video Segmentation | Ref-YTVOS (3.5K), MeVIS (0.6K), ReVOS (1.7K), Ref-SAV (37K) |{{< /table-caption >}}
> 🔼 This table lists the datasets used to train and evaluate the Sa2VA model.  It breaks down the datasets by task type (Image QA, Image Segmentation, Video QA, Video Segmentation), showing the names and sizes of each dataset used in the respective tasks. This provides context for understanding the model's training and the benchmarks used for evaluation.
> <details>
> <summary>read the caption</summary>
> Table 3: Datasets used for experiments.
> </details>

{{< table-caption >}}
| Method | MME<sup>[19]</sup> | MMBench<sup>[59]</sup> | SEED-Bench<sup>[41]</sup> | AI2D<sup>[37]</sup> | MMStar<sup>[7]</sup> | MMMU<sup>[93]</sup> | SQA<sup>test</sup><sup>[60]</sup> | RefCOCO | RefCOCO+ | RefCOCOg |
|---|---|---|---|---|---|---|---|---|---|---|
| LISA-7B<sup>[40]</sup> | 1/1 | 0.4 | - | 0.0 | - | - | - | 74.1 | 62.4 | 66.4 |
| PixelLM-7B<sup>[68]</sup> | 309/135 | 17.4 | - | 0.0 | - | - | - | 73.0 | 66.3 | 69.3 |
| LaSagnA-7B<sup>[77]</sup> | 0/0 | 0.0 | - | 0.0 | - | - | - | 76.8 | 66.4 | 70.6 |
| GLaMM-7B<sup>[66]</sup> | 14/9 | 36.8 | - | 28.2 | - | - | - | 79.5 | 72.6 | 74.2 |
| OMG-LLaVA-7B<sup>[99]</sup> | 1177/235 | 47.9 | 56.5 | 42.9 | - | - | - | 78.0 | 69.1 | 72.9 |
| Sa2VA-4B (ours) | 1553/540 | 76.8 | 72.6 | 79.9 | 53.7 | 46.2 | 95.8 | 80.4 | 74.3 | 76.7 |
| Sa2VA-8B (ours) | 1651/578 | 82.4 | 75.5 | 82.1 | 60.3 | 44.7 | 96.8 | 81.9 | 76.5 | 78.9 |{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of different models' performance on several image-level benchmarks.  These benchmarks evaluate two key capabilities: image chat (the model's ability to engage in conversation about images) and referring segmentation (the model's ability to accurately segment specific objects within an image based on textual descriptions). The table highlights that the Sa2VA model achieves the best balance between strong performance on both image chat and referring segmentation tasks, indicating a superior ability to integrate visual understanding and language processing.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance on image-level benchmarks. Our method achieves the best accuracy trade-off between image chat and referring segmentation datasets.
> </details>

{{< table-caption >}}
| Method | Long J | Long F | Long J&F | Short J | Short F | Short J&F | Overall J | Overall F | Overall J&F |
|---|---|---|---|---|---|---|---|---|---| 
| UniRef++ [79] (zs) | 14.1 | 10.8 | 12.5 | 9.0 | 8.2 | 8.6 | 11.6 | 9.5 | 10.5 |
| UNINEXT [84] (zs) | 11.7 | 8.3 | 10.0 | 5.8 | 4.4 | 5.1 | 8.8 | 6.4 | 7.6 |
| MeVIS [13] (zs) | 12.1 | 7.1 | 11.3 | 6.2 | 5.3 | 5.5 | 12.2 | 9.8 | 10.3 |
| VISA [85] (zs) | 16.1 | 12.2 | 14.1 | 12.3 | 9.6 | 9.2 | 13.2 | 11.3 | 11.8 |
| Sa2VA-8b (zs) | 47.7 | 50.9 | 49.3 | 31.5 | 35.0 | 33.3 | 39.6 | 43.0 | 41.3 |
| Sa2VA-8b (ft ) | 57.0 | 60.4 | 58.7 | 39.5 | 42.9 | 41.2 | 48.3 | 51.7 | 50.0 |{{< /table-caption >}}
> 🔼 Table 5 presents the results of the Ref-SAV validation set.  Two different testing scenarios are shown: zero-shot testing (zs), where the model is evaluated without any training on the Ref-SAV dataset; and fine-tuned testing (ft), where the model is trained using the newly proposed Ref-SAV training dataset. This allows comparison of performance with and without the benefit of the newly created dataset.
> <details>
> <summary>read the caption</summary>
> Table 5: Ref SAV validation sets. zs: zero-shot testing. ft: trained with our proposed Ref-SAV training dataset.
> </details>

{{< table-caption >}}
| Model Type | RefCOCO | RefCOCO+ | RefCOCOg |
|---|---|---|---|
| LAVT [88] | 72.7 | 62.1 | 61.2 |
| GlaMM-7B [66] | 79.5 | 72.6 | 74.2 |
| OMG-LLaVA-7B [99] | 78.0 | 69.1 | 72.9 |
| F-LLM-7B [82] | 76.1 | 65.2 | 68.5 |
| Sa2VA-4B (ours) | 80.4 | 74.3 | 75.7 |
| Sa2VA-8B (ours) | 82.3 | 77.3 | 79.3 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Sa2VA against other fine-tuned models on the Ref-SAV validation set.  It shows the Jaccard index (J) and F-measure (F) scores for both short and long text descriptions, providing a comprehensive evaluation of the model's ability to perform referring video object segmentation. The results are broken down by different model types, allowing for a direct comparison of Sa2VA's performance against state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison with Fine-tuned Models.
> </details>

{{< table-caption >}}
| Data | Image Segmentation |  |  | Video Segmentation |  | Image Chat |  |  | Video Chat |  |
|---|---|---|---|---|---|---|---|---|---|---|
|  | RefCOCO | RefCOCO+ | RefCOCOg | MeViS | Ref-DAVIS17 | MME | MMBench | SEED-Bench | Video-MME | MMBench-Video |
| All Data | 77.4 | 69.9 | 72.3 | 50.8 | 72.3 | 1381/405 | 68.3 | 64.8 | 39.9 | 1.07 |
| w/o Image QA | 78.0 | 70.1 | 72.2 | 48.3 | 73.0 | 1298/359 | 63.4 | 63.8 | 39.7 | 0.39 |
| w/o Image Segmentation | 20.2 | 20.6 | 23.2 | 38.0 | 48.8 | 1393/408 | 70.1 | 65.7 | 41.2 | 1.08 |
| w/o Video QA | 78.0 | 70.4 | 72.6 | 50.7 | 74.3 | 1370/402 | 69.1 | 65.0 | 41.3 | 0.71 |
| w/o Video Segmentation | 77.4 | 69.1 | 72.4 | 44.4 | 69.0 | 1403/398 | 67.8 | 64.9 | 40.4 | 1.04 |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of co-training on multiple datasets. It shows how the model's performance on various image and video tasks changes when different combinations of datasets (image QA, image segmentation, video QA, video segmentation) are excluded during training. This demonstrates the relative importance of each dataset type for the model's overall performance and highlights the benefits of a comprehensive co-training approach.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study on co-training effect on multiple datasets.
> </details>

{{< table-caption >}}
| Base | Image Segmentation |  |  |  | Video Segmentation |  | Image Chat |  |  |  |  |  |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| MLLM | RefCOCO<sup>[36]</sup> | RefCOCO+<sup>[36]</sup> | RefCOCOg<sup>[90]</sup> | MeViS<sup>[13]</sup> | Ref-DAVIS17<sup>[38]</sup> | MME<sup>[19]</sup> | MMBench<sup>[59]</sup> | SEED-Bench<sup>[41]</sup> | AI2D<sup>[37]</sup> | MMStar<sup>[7]</sup> | SQA<sup>test</sup><sup>[60]</sup> |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| InternVL2.0-4B | 80.4 | 74.3 | 76.7 | 52.1 | 73.8 | 1553/540 | 76.8 | 72.6 | 79.9 | 53.7 | 95.8 |
| InternVL2.0-8B | 81.9 | 76.5 | 78.9 | 57.0 | 75.2 | 1651/578 | 82.4 | 75.5 | 82.1 | 60.3 | 96.8 |
| InternVL2.5-4B | 82.4 | 77.6 | 79.7 | 55.9 | 73.7 | 1691/610 | 81.8 | 74.9 | 81.4 | 57.9 | 96.8 |
| InternVL2.5-8B | 82.6 | 78.0 | 80.3 | 58.9 | 75.9 | 1690/610 | 84.4 | 76.5 | 82.7 | 62.4 | 97.4 |{{< /table-caption >}}
> 🔼 This table presents the performance comparison of Sa2VA models using two different versions of InternVL2 (InternVL2.0 and InternVL2.5) as the base multi-modal large language model. It shows the impact of using a stronger MLLM on the overall performance of Sa2VA across multiple image and video benchmarks, including referring segmentation and image/video chat tasks.
> <details>
> <summary>read the caption</summary>
> Table 8: Experiment results using stronger InternVL2.5 in our Sa2VA.
> </details>

{{< table-caption >}}
| Type | RefCOCO | RefCOCO+ | RefCOCOg | DAVIS | MeVIS |
|---|---|---|---|---|---| 
| Single | 77.4 | 69.9 | 72.3 | 72.3 | 50.8 |
| Repeat | 77.3 | 70.2 | 72.5 | 71.1 | 49.6 |
| Multiple | 77.6 | 70.3 | 72.4 | 68.6 | 46.3 |{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different strategies for designing the '[SEG]' token within the Sa2VA model.  The '[SEG]' token serves as a bridge between the large language model (LLM) and the SAM-2 model, guiding the segmentation process. The study investigates three distinct '[SEG]' token designs: a single token, repeated tokens, and multiple tokens.  The table shows the performance (measured by J&F scores) of each design on several video object segmentation benchmarks (MeViS, Ref-DAVIS17, ReVOS). This ablation helps assess the impact of this crucial design element on the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation study on [SEG] token design.
> </details>

{{< table-caption >}}
| Dataset | Size | RefCOCO | RefCOCOg | MMBench | MME | MeVIS |
|---|---|---|---|---|---|---|
| baseline | 1.2M | 77.4 | 72.3 | 68.3 | 1381/405 | 50.8 |
| Inifinity-MM [22] | 1.2M+3M | 77.1(-0.3) | 72.6(+0.3) | 70.4(+2.1) | 1396/346(-44) | 51.2(+0.4) |
| Ref-SAV | 1.2M+37K | 77.2(-0.2) | 72.6(+0.3) | 68.2(-0.1) | 1384/418(+16) | 52.5(+1.7) |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of using additional datasets for training the Sa2VA model.  It shows how the model's performance changes on various image and video benchmarks when different combinations of datasets (image QA, image segmentation, video QA, and video segmentation) are included or excluded during training. This allows an assessment of the contribution of each dataset type to the overall performance and helps understand the effectiveness of the model's joint co-training strategy.
> <details>
> <summary>read the caption</summary>
> Table 10: Ablation study on using more datasets.
> </details>

{{< table-caption >}}
| Model Type | MeViS | ReVOS | Ref-DAVIS17 |
|---|---|---|---|
| PG-Video-LLaVA [61] | 18.87 | - | - |
| GLaMM + SAM2 [62] | 38.7 | - | - |
| VideoGLaMM [62] | 45.2 | - | - |
| ViLLa [102] | - | - | 64.4 |
| VISA-13B [85] | 44.5 | 50.9 | 70.4 |
| VideoLISA-3.8B [3] | 44.4 | - | 68.8 |
| Sa2VA-4B (ours) | 52.1 | 53.2 | 73.8 |{{< /table-caption >}}
> 🔼 Table 11 compares Sa2VA's performance with other state-of-the-art video-based large language models (MLLMs) on various video-related benchmarks.  It specifically shows the comparative results for different video object segmentation and video question answering tasks, highlighting Sa2VA's strengths in these areas.
> <details>
> <summary>read the caption</summary>
> Table 11: Comparison with Recent Video MLLMs.
> </details>

{{< table-caption >}}
| Model Type | RefCOCO | RefCOCO+ | RefCOCOg | MeVIS | Ref-DAVIS17 |
|---|---|---|---|---|---| 
| LAVT [<a href="https://arxiv.org/html/2501.04001v1#bib.bib88">88</a>] | 72.7 | 62.1 | 61.2 | - | - |
| ReferFormer [<a href="https://arxiv.org/html/2501.04001v1#bib.bib78">78</a>] | - | - | - | 31.0 | 61.1 |
| UniRef++-L [<a href="https://arxiv.org/html/2501.04001v1#bib.bib79">79</a>] | 81.4 | 74.0 | 76.0 | - | 67.2 |
| EVF-SAM [<a href="https://arxiv.org/html/2501.04001v1#bib.bib100">100</a>] | 82.4 | 76.5 | 78.2 | - | - |
| LMPM [<a href="https://arxiv.org/html/2501.04001v1#bib.bib13">13</a>] | - | - | - | 37.2 | - |
| UniVS [<a href="https://arxiv.org/html/2501.04001v1#bib.bib46">46</a>] | - | - | - | - | 59.4 |
| Sa2VA-26B (ours) | 82.5 | 78.8 | 79.7 | 57.3 | 77.0 |{{< /table-caption >}}
> 🔼 This table compares the performance of Sa2VA against several state-of-the-art vision-expert models on various image and video referring segmentation benchmarks, showcasing Sa2VA's ability to achieve competitive results with vision-specialized models, thereby highlighting its versatility and effectiveness in tackling complex visual tasks.
> <details>
> <summary>read the caption</summary>
> Table 12: Comparison with Vision Expert Models.
> </details>

{{< table-caption >}}
| MLLM Type | RefCOCO | RefCOCO+ | RefCOCOg | Ref-DAVIS17 | MeVIS | ReVOS |
|---|---|---|---|---|---|---|
| Sa2VA: Qwen2-VL-2B [2] | 76.9 | 68.7 | 72.9 | 72.0 | 49.4 | 40.0 |
| Sa2VA: Intern-VL2-1B | 77.4 | 69.9 | 72.3 | 72.3 | 50.8 | 47.6 |
| Sa2VA: Intern-VL2-4B | 78.9 | 71.7 | 74.1 | 73.8 | 52.1 | 53.2 |{{< /table-caption >}}
> 🔼 This table presents the performance of the Sa2VA model when using the Qwen2-VL model as its backbone.  It shows the zero-shot and fine-tuned results (trained with the Ref-SAV dataset) on various video object segmentation benchmarks, including MeViS, ReVOS, and Ref-DAVIS17.
> <details>
> <summary>read the caption</summary>
> Table 13: Sa2VA with Qwen2-VL model.
> </details>

{{< table-caption >}}
| Method | Long J | Long F | Long J&F | Short J | Short F | Short J&F | Overall J | Overall F | Overall J&F |
|---|---|---|---|---|---|---|---|---|---| 
| UniRef++ (zs) | 14.1 | 10.8 | 12.5 | 9.0 | 8.2 | 8.6 | 11.6 | 9.5 | 10.5 |
| UniRef++ (ft) | 19.2 | 15.1 | 17.2 | 12.3 | 11.7 | 12.0 | 15.8 | 13.4 | 14.6 |{{< /table-caption >}}
> 🔼 This table presents the results of the Ref-SAV (Referring Video Object Segmentation) validation dataset.  It compares the performance of models tested in two conditions: zero-shot testing ('zs'), where the model is evaluated without any fine-tuning on the Ref-SAV dataset, and fine-tuning ('ft'), where the model is trained specifically on the Ref-SAV dataset. This comparison demonstrates the effectiveness of the Ref-SAV dataset for improving the performance of referring video object segmentation models.
> <details>
> <summary>read the caption</summary>
> Table 14: Ref SAV validation sets. ft: trained with our proposed Ref-SAV training dataset. zs: zero-shot testing.
> </details>

{{< table-caption >}}
| Method | Sa2VA-4B | OMG-LLaVA [99] | Osprey [92] | GLaMM [66] | GRIT [81] | Kosmos-2 [64] |
|---|---|---|---|---|---|---|
| METEOR | 17.3 | 15.3 | 16.6 | 16.2 | 15.2 | 14.1 |{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different models on the RefCOCOg dataset for the task of region captioning. It shows the METEOR scores achieved by each model, indicating their ability to generate accurate and relevant captions for specific image regions.
> <details>
> <summary>read the caption</summary>
> Table 15: Region caption performance on RefCOCOg dataset.
> </details>

{{< table-caption >}}
| Property | DAVIS17-RVOS | ReVOS | Ref-YT-VOS | MeVIS | Ours |
|---|---|---|---|---|---| 
| Short Text | ✓ | ✓ | ✓ | ✓ | ✓ |
| Long Text | ✗ | ✓ | ✗ | ✗ | ✓ |
| Large Object Motion | ✗ | ✗ | ✓ | ✗ | ✓ |
| Large Camera Motion | ✓ | ✓ | ✗ | ✗ | ✓ |
| Heavy Occlusion | ✗ | ✗ | ✗ | ✗ | ✓ |{{< /table-caption >}}
> 🔼 Table 16 compares the performance of the Sa2VA model against existing Ref-VOS (Referring Video Object Segmentation) benchmarks. It highlights the differences in several key aspects: the length of text descriptions used, the presence of large object motion, significant camera movement, and heavy occlusion. This comparison helps demonstrate Sa2VA's ability to handle complex scenarios not well-addressed in previous benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 16: Comparison with previous Ref-VOS benchmarks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.04001/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.04001/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}