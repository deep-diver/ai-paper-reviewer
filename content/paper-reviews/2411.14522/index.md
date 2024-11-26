---
title: "GMAI-VL & GMAI-VL-5.5M: A Large Vision-Language Model and A Comprehensive Multimodal Dataset Towards General Medical AI"
summary: "GMAI-VL-5.5M & GMAI-VL: A new multimodal medical dataset and vision-language model achieve state-of-the-art results in various medical tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Washington",]
showSummary: true
date: 2024-11-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.14522 {{< /keyword >}}
{{< keyword icon="writer" >}} Tianbin Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.14522" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.14522" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/gmai-vl-gmai-vl-5-5m-a-large-vision-language" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.14522/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current large vision-language models (LVLMs) struggle with medical applications due to the lack of specialized medical knowledge.  This limits their ability to accurately integrate and analyze diverse medical data modalities (images, text, clinical records), hindering accurate diagnoses and treatment decisions. Existing medical datasets are often limited in scope, quality, or multimodal representation, further exacerbating the challenges. 

To tackle these issues, the researchers created GMAI-VL-5.5M, a comprehensive multimodal medical dataset with high-quality image-text pairs covering diverse medical tasks.  They then developed GMAI-VL, a vision-language model trained using a three-stage strategy to effectively integrate visual and textual information.  Their results demonstrate state-of-the-art performance across several medical benchmarks, showcasing the model's superior capabilities in multimodal medical question-answering and image diagnosis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A comprehensive multimodal medical dataset, GMAI-VL-5.5M, was created by converting hundreds of specialized datasets into image-text pairs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} GMAI-VL, a new vision-language model, significantly improves the ability to process multimodal medical data, achieving state-of-the-art performance in various tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The three-stage training strategy for GMAI-VL significantly enhances the model's ability to integrate visual and linguistic features. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in medical AI and vision-language modeling.  It **introduces a large-scale, high-quality multimodal medical dataset (GMAI-VL-5.5M) and a novel vision-language model (GMAI-VL)**, setting new benchmarks for multiple medical tasks. This work directly addresses the critical need for domain-specific solutions in medical AI, opening avenues for improved medical image analysis, diagnosis, and clinical decision-making.  The dataset and model will accelerate progress in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2411.14522/x1.png)

> 🔼 Figure 1 provides a comprehensive overview of the GMAI-VL model and its associated dataset, GMAI-VL-5.5M.  Panel (a) details the sources and composition of the GMAI-VL-5.5M dataset, showing the various medical departments, imaging modalities, task types and instruction formats included.  Panel (b) illustrates the architecture of the GMAI-VL model itself, highlighting its three key components: a Vision Encoder for processing images, a Projector for converting image features into a format compatible with the language model, and a Large Language Model (LLM) for understanding and generating text.  Finally, panel (c) depicts the three-stage training process:  Stage 1 (shallow alignment) focuses on establishing basic image-text associations; Stage 2 (deep alignment) refines these associations, and Stage 3 (instruction tuning) fine-tunes the model on instruction-following tasks.  The diagram uses flame icons to show training components and snowflake icons to highlight frozen model parameters at each stage.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of GMAI-VL and GMAI-VL-5.5M. (a) illustrates the sources, departments, modalities, task types, and instruction formats of the GMAI-VL-5.5M dataset. (b) Architecture of GMAI-VL, integrating a Vision Encoder, Projector, and Large Language Model. (c) Three-stage training process of GMAI-VL, including shallow alignment, deep alignment, and instruction tuning with corresponding data sizes and training components. The flame symbol  denotes the training part, while the snowflake symbol  indicates frozen part.
> </details>





{{< table-caption >}}
| Datasets | Data Size | Modality | Language | Traceability | Data Source |
|---|---|---|---|---|---| 
| PathVQA [29] | 32.7k | Pathology | EN | × | Textbooks |
| MIMIC-CXR [33] | 227k | X-Ray | EN | ✓ | Hospital |
| quilt-1M [32] | 1M | Pathology | EN | × | YouTube & PubMed |
| MedDr VQA [28] | 197k | Multimodal | EN | ✓ | 13 medical datasets |
| PMC-OA [43] | 1.65M | Multimodal | EN | × | PubMed |
| PMC-VQA [80] | 413k | Multimodal | EN | × | PubMed |
| LLaVA-Med VQA [39] | 56,702 | Multimodal | EN | × | PubMed |
| ChiMed-VL [48] | 1.05M | Multimodal | CN | × | PubMed |
| PMC-CaseReport [70] | 438k | Multimodal | EN | × | PubMed |
| PubMedVision [14] | 1.29M | Multimodal | EN&CN | × | PubMed |
| **GMAI-VL-5.5M (ours)** | 5.5M | Multimodal | EN&CN | ✓ | 219 specialized medical imaging datasets |{{< /table-caption >}}

> 🔼 This table compares various medical multimodal datasets across several key features.  It provides a comprehensive overview of each dataset's size (number of samples), the types of medical imaging modalities included (e.g., X-ray, pathology images), the languages used in the dataset annotations, whether the data sources are traceable, and finally, the original sources of the data. This allows for a direct comparison of the datasets' scope, quality, and suitability for various medical AI tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of various medical multimodal datasets, including details on the dataset size, modality type, language, data traceability, and sources of information.
> </details>





### In-depth insights


#### GMAI-VL: Model Intro
The GMAI-VL model is introduced as a **general-purpose medical vision-language model**, designed to overcome limitations of existing large vision-language models (LVLMs) in medical applications.  Its core strength lies in its ability to effectively integrate visual and textual medical data, improving accuracy in diagnoses and clinical decision-making.  **A three-stage training strategy** is employed, beginning with shallow alignment to establish basic associations between image and text features, proceeding to deep alignment for stronger multimodal integration, and finally instruction tuning to refine the model's ability to follow instructions and handle complex medical tasks.  This phased approach is key to GMAI-VL's success, allowing it to efficiently learn and generalize across a diverse range of medical data modalities and tasks. The model's architecture is also noteworthy, employing a **CLIP-based vision encoder** for robust visual feature extraction and a powerful large language model for comprehensive text processing. The integration is facilitated via a projector module, creating a cohesive multimodal understanding system.  **The model's state-of-the-art performance** on several established medical benchmarks demonstrates its potential to significantly advance the field of general medical AI.

#### Multimodal Dataset
The research paper highlights the crucial role of a **comprehensive multimodal dataset** in advancing general medical AI.  The dataset's creation involved converting numerous specialized medical datasets into image-text pairs, a process guided by annotation to ensure high quality. This approach addresses the limitations of existing datasets which often lack diversity, high quality, or comprehensive task coverage. The resulting dataset is characterized by its **rich multimodal representation**, encompassing various imaging modalities and text data types, and its **extensive task coverage**, spanning a wide range of medical scenarios and clinical specialties.  This dataset's strength lies in its ability to support the development of robust, generalizable models capable of handling the complexity of real-world medical applications,  pushing the boundaries of current medical AI research by facilitating the creation of more effective and accurate diagnostic and treatment solutions.

#### Training Strategies
The paper details a three-stage training strategy for its GMAI-VL model.  **Stage 1 (Shallow Alignment)** focuses on establishing a basic association between visual and textual features by training only the projector while keeping the LLM and vision encoder frozen.  This initial alignment uses a massive dataset of image-text pairs. **Stage 2 (Deep Alignment)** refines this alignment by unfreezing and training the vision encoder and projector, bridging the gap between general image features and medical image semantics.  **Stage 3 (Instruction Tuning)** fine-tunes the entire model using instruction-following data, improving its ability to interpret and respond to complex medical queries.  This multi-stage approach is crucial because it progressively builds the model's understanding, starting from basic feature association and culminating in nuanced medical reasoning capabilities. The use of soft packing, enhancing efficiency by integrating multiple sequences within each sample, is noteworthy. The methodology is innovative because it carefully considers the unique challenges of applying large language models to the medical domain, tackling both data quantity and quality, and incorporating techniques to handle multimodal data efficiently.

#### Benchmark Results
The benchmark results section of a research paper is crucial for evaluating the performance of a proposed model against existing state-of-the-art solutions.  A thoughtful analysis would delve into the specific metrics used, the datasets employed for evaluation, and the models included in the comparison. **The choice of metrics is key**; it reflects what aspects of the model's capabilities the researchers value most, and could include accuracy, precision, recall, F1-score, or more nuanced measures depending on the task.  The datasets used should be thoroughly scrutinized; their size, diversity, and relevance to the task directly impact the generalizability and reliability of the results.  **A robust benchmark should include a range of diverse datasets**, which helps to understand how well the model performs across different scenarios.  Finally, the selection of comparative models is also critical. Are these models truly representative of the existing state-of-the-art or are there significant omissions?  A thorough exploration of the benchmark results section reveals much about the rigor and validity of the research itself.  **Significant attention should be given to any limitations or caveats mentioned by the authors**, as these insights help assess the trustworthiness and applicability of the results beyond the specific context of the study.

#### Future of GMAI
The future of General Medical AI (GMAI) hinges on **overcoming current limitations** in data availability, model generalizability, and clinical integration.  Addressing the scarcity of high-quality, diverse, and well-annotated multimodal medical datasets is crucial for training robust and reliable models.  Future GMAI systems will likely leverage **advanced techniques** such as federated learning to protect patient privacy while enhancing data diversity and model training.  Moreover,  research efforts must focus on creating more **generalizable models** that perform well across different medical subspecialties and imaging modalities, thereby reducing the need for extensive fine-tuning.  Ultimately, successful GMAI integration into clinical workflows requires addressing explainability, trust, and ethical concerns related to algorithmic bias and decision-making transparency.  **Human-in-the-loop** systems, where AI assists clinicians but does not replace their judgment, may be the most viable path forward.  The future of GMAI promises improved diagnostics, treatment planning, personalized medicine, and more efficient healthcare, but responsible development and ethical considerations will be paramount.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.14522/x6.png)

> 🔼 This figure illustrates the comparison between two data generation methods: one without annotation guidance and the other with annotation guidance.  The without-annotation method uses only the image as input to a large language model (like GPT-4), resulting in descriptions that are often less accurate and detailed. The annotation-guided method includes the image and additional metadata like modality, label, department, and bounding box information in the prompt, resulting in higher-quality, more accurate, and complete descriptions.  The figure highlights the difference in output quality between these two approaches.
> <details>
> <summary>read the caption</summary>
> Figure 2:  The prompt-driven data generation pipeline comparing without-annotation-guided and annotation-guided methods. The annotation-guided approach integrates specific annotation information (e.g., <image, modality, label, department, bbox [optional]>) to generate high-quality, accurate descriptions, while the without-annotation-guided approach often results in lower-quality outputs. Figure with complete prompt and response is provided in Supp. Mat..
> </details>



![](https://arxiv.org/html/2411.14522/x7.png)

> 🔼 Figure 3 expands on Figure 2, illustrating the data generation pipeline for creating high-quality image-text pairs for medical datasets.  It compares two methods: one using annotation guidance and another without. The figure shows how integrating specific annotations (image modality, label, department, bounding box) leads to more accurate and detailed descriptions compared to the unguided approach, which often produces lower-quality results.
> <details>
> <summary>read the caption</summary>
> Figure 3: The full version of Fig. 2 in the main text illustrates the complete of data generation pipeline， comparing without-annotation-guided and annotation-guided methods. The annotation-guided approach integrates specific annotation information (e.g., <image, modality, label, department, bbox [optional]>) to generate high-quality, accurate descriptions, while the without-annotation-guided approach often results in lower-quality outputs.
> </details>



![](https://arxiv.org/html/2411.14522/x8.png)

> 🔼 The figure shows a pie chart visualizing the distribution of various medical imaging modalities within the GMAI-VL-5.5M dataset.  The modalities represented include common types such as CT, MRI, and X-ray, and less common types such as fundus photography, dermoscopy, microscopy, ultrasound, endoscopy, and PET scans.  The chart provides a quantitative breakdown of the proportion of each modality present in the dataset, illustrating the dataset's diversity in terms of imaging techniques used.
> <details>
> <summary>read the caption</summary>
> (a) (a) Modality distribution
> </details>



![](https://arxiv.org/html/2411.14522/x9.png)

> 🔼 The figure shows a pie chart illustrating the distribution of original tasks within the GMAI-VL-5.5M dataset. The most frequent task is 2D classification (50.4%), followed by 3D segmentation (30.3%), 2D segmentation (12.7%), and 2D detection (6.6%).  This visualization highlights the variety of tasks covered by the dataset, showcasing its comprehensive nature for training multimodal medical vision-language models.
> <details>
> <summary>read the caption</summary>
> (b) (b) Original task distribution
> </details>



![](https://arxiv.org/html/2411.14522/x10.png)

> 🔼 This figure shows the distribution of medical data across different departments in the GMAI-VL-5.5M dataset.  It visually represents the percentage of data originating from various medical specialties, such as Pulmonary Medicine, General Surgery, Cardiology, and Dermatology. The size of each segment is proportional to the amount of data from that department, providing insights into the dataset's coverage of different clinical areas.
> <details>
> <summary>read the caption</summary>
> (c) (c) Department distribution
> </details>



![](https://arxiv.org/html/2411.14522/x11.png)

> 🔼 The figure shows the distribution of clinical tasks within the GMAI-VL-5.5M dataset.  It breaks down the percentage of different types of clinical tasks included in the dataset, such as disease diagnosis, organ recognition, and various other attribute recognitions.  This illustrates the dataset's comprehensiveness in covering a wide spectrum of medical tasks.
> <details>
> <summary>read the caption</summary>
> (d) (d) Clinical task distribution
> </details>



![](https://arxiv.org/html/2411.14522/x12.png)

> 🔼 Figure 4 shows the distribution of data within the GMAI-VL-5.5M multimodal medical dataset across four key aspects: original tasks, imaging modalities, medical departments, and clinical tasks.  The dataset is diverse, covering various types of image analysis tasks (2D classification, 3D segmentation, 2D segmentation, 2D detection) and a wide range of modalities (CT, MRI, X-ray, pathology, dermoscopy, microscopy, PET).  The data comes from numerous medical departments, with orthopedic surgery and general surgery being the most represented, but also including less common departments such as endocrinology, infectious diseases and urology.  Clinical tasks are also varied,  including disease diagnosis and organ recognition, as well as more specialized tasks such as muscle, nervous tissue and microorganism recognition. Note that the statistics only reflect the multimodal portion of the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Distribution of GMAI-VL-5.5M across tasks, modalities, departments, and clinical tasks. (a) Original Task Distribution: The dataset includes 2D Classification (50.4%), 3D Segmentation (30.3%), 2D Segmentation (12.7%), and 2D Detection (6.6%). (b) Modality Distribution: In addition to CT (26.8%) and MR (24.7%), X-ray (12.6%), Pathology (11.2%), and less common modalities like Dermoscopy (3.5%), Microscopy (2.4%), and PET (0.2%) are represented. (c) Department Distribution: While Orthopedic Surgery (12.9%) and General Surgery (10.3%) are the top contributors, departments like Endocrinology (1.3%), Infectious Diseases (0.8%), and Urology (0.7%) also provide data. (d) Clinical Task Distribution: Besides Disease Diagnosis (40.4%) and Organ Recognition (16.0%), tasks such as Muscle Recognition (3.3%), Nervous Tissue Recognition (1.5%), and Microorganism Recognition (1.2%) are included. Note: The distribution statistics shown here pertain only to the multimodal components of GMAI-VL-5.5M.
> </details>



![](https://arxiv.org/html/2411.14522/x13.png)

> 🔼 Figure 5 is a pie chart visualizing the distribution of the training data used for the GMAI-VL model. The chart is divided into several concentric rings. The innermost ring represents the main categories of datasets (Medical Caption, Medical Instruction, Medical Text, General Instruction, General Text, Report Generation), each shown in a distinct color. The next ring breaks down each main category into its subcategories. The outermost ring gives the specific name and the size of the datasets. The size of each segment is proportional to the amount of data in that category or subcategory, as detailed in the legend.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of all our training data. The inner ring represents major categories, each depicted in a different color. The outer ring corresponds to the subcategories within each major category. The size of each segment is proportional to the amount of data, as indicated in the legend, where the data volume for each subcategory is also provided.
> </details>



![](https://arxiv.org/html/2411.14522/x14.png)

> 🔼 The figure illustrates the three-stage training process for the GMAI-VL model. Stage 1 (Shallow Alignment) involves freezing the language model and vision encoder while training only the projector to establish an initial alignment between images and text. Stage 2 (Deep Alignment) unfreezes the vision encoder and continues training the projector to enhance the alignment. Finally, Stage 3 (Instruction Tuning) fine-tunes the entire model using instruction-following data to improve its ability to understand and respond to various instructions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Diagram of the three-stage training process.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model | VQA-RAD | SLAKE | PMC-VQA | Avg. |
|---|---|---|---|---|
| Med-Flamingo [54] | 45.4 | 43.5 | 23.3 | 37.4 |
| RadFM [70] | 50.6 | 34.6 | 25.9 | 37.0 |
| LLAVA-Med-7B [39] | 51.4 | 48.6 | 24.7 | 41.6 |
| Qwen-VL-Chat [6] | 47.0 | 56.0 | 36.6 | 46.5 |
| Yi-VL-34B [77] | 53.0 | 58.9 | 39.5 | 50.5 |
| LLAVA-v1.6-7B [46] | 52.6 | 57.9 | 35.5 | 48.7 |
| LLAVA-v1.6-13B [46] | 55.8 | 58.9 | 36.6 | 50.8 |
| LLAVA-v1.6-34B [46] | 58.6 | 67.3 | 44.4 | 56.8 |
| HuatuoGPT-Vision-7B [14] | 63.8 | 74.5 | 52.7 | **63.7** |
| GMAI-VL(w/o our data) | 62.3 | 66.3 | 39.0 | 55.9 |
| **GMAI-VL(ours)** | **66.3** | **72.9** | **54.3** | **64.5** |{{< /table-caption >}}
> 🔼 This table presents a comparison of various Vision-Language Models (VLMs) on three established medical Visual Question Answering (VQA) benchmark datasets: VQA-RAD, SLAKE, and PMC-VQA.  Each dataset focuses on different aspects of medical image understanding and question answering. The table displays the performance (accuracy) of each VLM on each benchmark dataset. The highest accuracy score in each column (dataset) is highlighted in red, and the second-highest score is highlighted in blue, making it easy to identify top-performing models for each specific VQA task.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on Traditional Medical VQA Benchmarks. The highest performance in each column is highlighted in red, and the second-highest performance is highlighted in blue.
> </details>

{{< table-caption >}}
| Model | MR | AI | DD | LG | OBA | Overall |
|---|---|---|---|---|---|---|
| Random Guess | 25.00 | 25.84 | 28.41 | 25.40 | 37.49 | 28.28 |
| Open-Source LLMs |  |  |  |  |  |  |
| MiniGPT-4 [81] | 36.98 | 32.68 | 24.19 | 20.45 | 26.14 | 27.59 |
| LLaVA [45] | 52.30 | 35.27 | 11.80 | 9.77 | 24.70 | 22.86 |
| LLaMA_Adapter_v2 [27] | 58.45 | 38.18 | 29.12 | 23.73 | 30.97 | 35.08 |
| InstructBLIP [20] | 72.35 | 39.90 | 32.01 | 43.80 | 47.91 | 41.14 |
| BLIP-2 [40] | 57.48 | 49.83 | 46.21 | 30.52 | 73.52 | 50.77 |
| Qwen-VL-Chat [6] | 33.69 | 10.95 | 16.27 | 6.71 | 41.68 | 20.29 |
| mPLUG-Owl2 [76] | 78.01 | 48.52 | 39.68 | 20.56 | 59.36 | 48.44 |
| LLaVa-NeXT [46] | 68.23 | 46.74 | 41.21 | 18.43 | 39.57 | 45.57 |
| DeepSeek-VL [49] | 74.01 | 51.94 | 45.46 | 21.06 | 29.04 | 48.76 |
| Yi-VL [77] | 59.56 | 44.81 | 48.97 | 32.93 | 24.63 | 47.28 |
| InternVL2-40B [18] | 96.76 | 64.25 | 76.28 | 76.50 | 76.27 | 78.70 |
| Medical Special Model |  |  |  |  |  |  |
| MedVInT-TE [80] | 62.62 | 41.03 | 40.57 | 12.17 | 45.17 | 43.83 |
| LLaVA-Med [39] | 48.41 | 27.96 | 23.72 | 16.10 | 21.94 | 27.82 |
| Med-Flamingo [54] | 26.74 | 25.10 | 23.80 | 28.04 | 16.26 | 23.82 |
| RadFM [70] | 27.45 | 21.65 | 23.75 | 16.94 | 20.05 | 23.48 |
| MedDr [28] | 91.37 | 51.62 | 65.56 | 73.18 | 74.52 | 68.27 |
| HuatuoGPT-Vision-34B [14] | 95.06 | 75.67 | 66.51 | 72.83 | 74.92 | 73.23 |
| Our Model |  |  |  |  |  |  |
| GMAI-VL(w/o our data) | 96.40 | 80.97 | 79.14 | 70.29 | 75.66 | 79.96 |
| GMAI-VL(ours) | 98.64 | 92.95 | 88.7 | 87.21 | 82.95 | 88.48 |{{< /table-caption >}}
> 🔼 This table compares the performance of various large vision-language models (LVLMs), including the GMAI-VL model, on the OmniMedVQA benchmark dataset.  The comparison is broken down by five different question types within the benchmark: Modality Recognition (MR), Anatomy Identification (AI), Disease Diagnosis (DD), Lesion Grading (LG), and Other Biological Attributes (OBA). The table shows the accuracy of each model for each question type, highlighting the top-performing model in red and the second-best in blue. This allows for a detailed assessment of each model's strengths and weaknesses across different medical image analysis tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of performance between representative LVLMs and GMAI-VL on OmniMedVQA across five different question type. The best performance in each column is highlighted in red, and the second-best performance is highlighted in blue. Abbreviations: MR = Modality Recognition, AI = Anatomy Identification, DD = Disease Diagnosis, LG = Lesion Grading, OBA = Other Biological Attributes.
> </details>

{{< table-caption >}}
Model Name|Overall (val)|Overall (test)|AR|BVR|B|CR|C|DD|IQG|MR|M|NT|OR-A|OR-HN|OR-P|OR-T|SG|SAR|SIR|SWR
---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---
Random Guess|||||||25.70|25.94|38.20|22.73|22.92|22.72|24.06|26.66|27.13|27.00|20.00|24.75|21.37|22.93|22.33|21.18|32.43|24.23|21.39|23.71
Open-Source LVLMs|||||||25.58|26.34|37.74|21.50|20.62|22.00|22.41|27.29|25.91|27.45|18.00|28.79|25.16|22.13|22.00|22.00|34.61|22.88|20.44|27.43
Flamingo v2 [4]|||||||29.58|30.45|40.16|33.92|24.92|25.22|24.21|32.99|29.96|29.53|21.20|37.88|30.32|24.80|13.33|29.88|33.11|19.62|19.16|37.43
VisualGLM-6B [22]|||||||31.80|30.95|42.12|26.92|24.92|28.09|21.65|34.58|31.58|29.23|22.40|30.30|28.95|27.47|23.00|24.82|32.88|19.81|21.64|26.57
InstructBLIP-7B [20]|||||||34.80|36.05|37.05|37.24|35.85|28.98|24.81|43.60|24.70|30.12|19.20|44.44|29.68|31.87|25.00|31.18|30.26|21.54|20.10|26.86
Qwen-VL [6]|||||||34.82|34.31|41.66|39.16|26.62|30.23|31.88|38.01|26.72|24.93|25.20|37.37|29.58|31.20|32.33|30.59|36.71|24.81|23.18|31.43
Yi-VL-6B [77]|||||||36.71|36.70|43.96|37.59|21.54|37.57|18.80|43.26|32.39|27.30|22.80|43.43|29.47|37.33|22.00|31.76|34.98|24.42|25.06|30.00
ShareGPT4V-7B [15]|||||||38.23|37.96|45.45|34.27|30.92|41.32|21.65|44.68|34.01|27.74|23.60|43.43|28.00|42.13|29.00|35.06|33.41|22.12|23.61|29.14
LLAVA-V1.5-7B [45]|||||||38.68|39.20|41.89|37.59|33.69|40.79|22.26|45.87|36.44|32.94|27.20|58.59|26.11|36.40|43.67|37.29|32.06|23.46|27.80|32.86
XComposer2 [24]|||||||38.71|39.11|36.36|36.54|32.62|38.10|30.68|46.53|34.82|28.19|25.20|48.99|28.11|40.53|33.33|36.00|34.08|26.73|24.12|29.71
LLAVA-InternLM-7b [19]|||||||38.86|39.73|43.84|44.58|34.00|33.99|31.28|45.59|33.20|38.28|32.40|42.42|31.89|42.80|27.00|36.82|34.76|23.27|24.72|32.57
InternVL-Chat-V1.5 [18]|||||||39.52|40.01|41.66|44.06|27.38|38.46|34.29|46.99|33.60|34.42|21.20|47.98|30.63|42.80|27.67|35.88|35.59|23.85|24.98|28.00
InternVL-Chat-V1.2 [17]|||||||40.07|40.45|39.82|37.94|30.62|35.24|29.77|48.97|34.01|25.96|20.80|53.03|30.95|42.67|32.00|39.88|32.43|21.73|24.38|38.00
LLAVA-InternLM2-7b [19]|||||||41.73|43.43|38.43|47.03|42.31|37.03|26.47|51.11|33.20|31.16|26.00|44.95|36.00|58.13|36.33|47.29|34.91|18.08|25.49|39.43
DeepSeek-VL-7B [49]|||||||41.79|42.54|40.74|43.01|36.46|37.57|27.82|51.08|28.74|29.08|26.80|47.47|37.05|46.40|25.33|46.59|35.89|22.31|23.44|31.71
MiniCPM-V2 [73]|||||||Proprietary LVLMs|||||||32.37|32.44|1.61|39.51|34.31|31.66|12.63|39.26|28.74|30.86|22.40|37.37|25.79|41.07|29.33|33.18|31.31|21.35|23.87|4.00
Claude3-Opus [2]|||||||41.34|42.16|32.68|44.58|31.38|40.79|10.68|50.53|32.79|44.36|29.20|51.52|41.37|58.00|30.67|41.65|26.95|25.00|24.64|39.14
Qwen-VL-Max [6]|||||||42.50|44.08|29.92|48.95|44.00|37.39|12.93|52.88|32.79|44.21|32.80|63.64|39.89|54.13|37.00|50.59|27.55|23.08|25.75|37.43
GPT-4V [1]|||||||44.38|44.93|42.12|45.10|46.46|37.57|20.45|53.29|35.22|36.94|25.20|51.01|34.74|59.60|34.00|50.00|36.64|23.65|23.87|35.43
Gemini 1.0 [62]|||||||47.42|48.36|43.50|56.12|51.23|47.58|2.26|55.33|38.87|48.07|30.00|76.26|51.05|75.87|46.33|62.24|20.57|27.69|30.54|40.57
Gemini 1.5 [56]|||||||53.53|53.96|38.32|61.01|57.08|49.02|46.62|61.45|46.56|56.38|34.00|75.25|53.79|69.47|48.67|65.88|33.93|22.88|29.51|39.43
GPT-4o [1]|||||||Medical Special Model|||||||12.74|11.64|6.67|10.14|9.23|11.27|6.62|13.43|12.15|6.38|8.00|18.18|9.26|18.27|11.00|11.53|12.16|5.19|8.47|11.43
Med-Flamingo [54]|||||||20.54|19.60|24.51|17.83|17.08|19.86|15.04|19.81|20.24|21.51|13.20|15.15|20.42|23.73|17.67|19.65|21.70|19.81|14.11|20.86
LLaVA-Med [39]|||||||22.34|22.06|29.57|19.41|16.46|23.79|15.79|24.19|21.86|16.62|7.20|13.64|24.00|14.67|12.67|15.53|26.13|24.42|17.37|25.71
Qilin-Med-VL-Chat [48]|||||||22.95|22.93|27.16|20.63|13.23|19.14|20.45|24.51|23.48|22.85|15.60|16.16|14.32|24.93|17.33|21.53|29.73|17.12|19.59|31.14
RadFM [70]|||||||41.95|43.69|41.20|50.70|37.85|29.87|28.27|52.53|36.03|31.45|29.60|47.47|33.37|51.33|32.67|44.47|35.14|25.19|25.58|32.29
MedDr [28]|||||||Our Model|||||||54.99|56.23|51.26|61.05|53.79|44.39|44.51|62.60|40.80|57.42|35.20|79.50|61.31|77.81|53.60|69.29|35.39|35.77|29.71|44.86
GMAI-VL(w/o our data)|||||||61.74|62.43|75.26|59.66|67.24|56.86|54.29|67.14|42.80|79.97|41.60|75.00|60.45|75.48|53.33|58.12|42.09|72.31|37.40|59.14
GMAI-VL(ours)|||||||{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive evaluation of various vision-language models on the GMAI-MMBench benchmark, specifically focusing on clinical Visual Question Answering (VQA) tasks.  The table details the performance of each model across multiple subtasks within the benchmark. The best-performing model for each subtask is highlighted in red, while the second-best is highlighted in blue.  To understand the specific tasks evaluated, refer to Table 5 in the referenced literature [16].
> <details>
> <summary>read the caption</summary>
> Table 4: Results on the val and test sets of GMAI-MMBench for clinical VQA tasks. The full names of the evaluated tasks can be found in Table 5 in literature [16]. The best model in each category is highlighted in red, while the second-best model is indicated in blue.
> </details>

{{< table-caption >}}
| Model | BMS | CM | DLM | P | PH | MMMU (Health & Medicine) |
|---|---|---|---|---|---|---|
| Med-Flamingo [54] | 33.6 | 30.2 | 23.3 | 29.3 | 25.8 | 28.4 |
| RadFM [70] | 31.6 | 28.6 | 26.7 | 26.2 | 26.8 | 27.9 |
| LLaVA-Med-7B [39] | 33.8 | 32.3 | 26.7 | 40.7 | 43.3 | 38.6 |
| Qwen-VL-Chat [6] | 32.7 | 20.6 | 19.3 | 29.6 | 33.3 | 31.7 |
| Yi-VL-34B [77] | 48.1 | 55.6 | 36.7 | 35.4 | 31.3 | 48.2 |
| LLaVA-v1.6-7B [45] | 46.4 | 43.4 | 30.0 | 29.6 | 26.7 | 33.1 |
| LLaVA-v1.6-13B [45] | 53.6 | 46.7 | 33.3 | 22.2 | 40.0 | 39.3 |
| HuatouGPT-Vision-7B [14] | 50.0 | 63.3 | 36.7 | 48.1 | 53.3 | 50.3 |
| **GMAI-VL(w/o our data)** | 43.3 | 56.7 | 43.3 | 46.7 | 40.0 | 46.0 |
| **GMAI-VL(ours)** | 50.0 | 60.0 | 43.3 | 50.0 | 53.3 | 51.3 |{{< /table-caption >}}
> 🔼 Table 5 presents the performance of various vision-language models on the MMMU Health & Medicine benchmark's validation set.  The benchmark is broken down into five categories: Basic Medical Science (BMS), Clinical Medicine (CM), Diagnostics and Laboratory Medicine (DLM), Pharmacy (P), and Public Health (PH). The table shows each model's score for each category, with the top-performing model in each category highlighted in red and the second-best in blue. This allows comparison of the models' performance across different medical domains.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance on the val set for the MMMU Health & Medicine track. This track is divided into five categories: BMS (Basic Medical Science), CM (Clinical Medicine), DLM (Diagnostics and Laboratory Medicine), P (Pharmacy), and PH (Public Health). The best performance in each column is highlighted in red, and the second-best performance is highlighted in blue.
> </details>

{{< table-caption >}}
| Dataset | Sub-Dataset Name | Description | Size |
|---|---|---|---|
| GMAI-VL-5.5M | GMAI-MM-Caption-1.7M | A curated set of detailed medical image captions. | 1.7M |
|  | GMAI-MM-Instrunct-0.9M | A diverse set of instructions for medical image analysis. | 0.9M |
|  | GMAI-MM-Percept-1.3M | A dataset of labels for medical image classification and segmentation. | 1.3M |
|  | GMAI-Text-Single-1M | A set of single-round medical dialogues on patient queries | 1.0M |
|  | GMAI-Text-Multi-0.6M | A dataset of multi-turn medical conversations on various topics. | 0.6M |{{< /table-caption >}}
> 🔼 Table 6 provides detailed information about the sub-datasets that comprise the GMAI-VL-5.5M multimodal medical dataset.  It lists each sub-dataset's name, a brief description of its content (e.g., image captions, instructions for image analysis, medical dialogues), and the total size of the dataset.  This breakdown is essential for understanding the composition and scope of the GMAI-VL-5.5M dataset, clarifying the various types of data included and their relative proportions, which are crucial for assessing the dataset's suitability and effectiveness for training vision-language models in the medical domain.
> <details>
> <summary>read the caption</summary>
> Table 6: Sub-Dataset Details for GMAI-VL-5.5M
> </details>

{{< table-caption >}}
| Dataset Category | Dataset Name | Size | ratio in stage 1&2 | ratio in stage 3 |
|---|---|---|---|---|
| General | Captioning | ALLaVA<sup>[13]</sup> | 468k | 100.0% | 50.0% |
|  |  | ShareGPT4V<sup>[15]</sup> | 102k | 100.0% | 50.0% |
| Medical | Captioning | GMAI-MM-Caption-1.7M | 1.7M | 100.0% | 100.0% |
|  |  | PubMedVision<sup>[14]</sup> | 1.3M | 100.0% | 100.0% |
|  |  | MedICaT<sup>[60]</sup> | 173k | 100.0% | 5.0% |
|  |  | MPx-Single<sup>[70]</sup> | 31k | 100.0% | 5.0% |
|  |  | PMC-OA<sup>[43]</sup> | 1.3M | 100.0% | 5.0% |
|  |  | QUILT-1M<sup>[32]</sup> | 643k | 100.0% | 5.0% |
|  |  | Retina Image Bank<sup>[3]</sup> | 22k | 100.0% | 5.0% |
| Report | Generation | CheXpertPlus<sup>[12]</sup> | 223k | 100.0% | 30.0% |
|  |  | MIMIC-CXR<sup>[33]</sup> | 486k | 100.0% | 30.0% |
|  |  | OpenI<sup>[21]</sup> | 7k | 100.0% | 30.0% |
| General | Instruction | GeoQA+<sup>[11]</sup> | 72k | 100.0% | 75.0% |
|  |  | AI2D<sup>[36]</sup> | 12k | 100.0% | 75.0% |
|  |  | SynthDoG<sup>[37]</sup> | 29k | 100.0% | 75.0% |
|  |  | ChartQA<sup>[51]</sup> | 18k | 100.0% | 75.0% |
|  |  | MMChemExam<sup>[42]</sup> | 219k | 100.0% | 75.0% |
|  |  | LLaVA-Instruct-150K<sup>[45]</sup> | 157k | 100.0% | 75.0% |
|  |  | DVQA<sup>[34]</sup> | 200k | 100.0% | 75.0% |
|  |  | DocVQA<sup>[52]</sup> | 10k | 100.0% | 75.0% |
| Medical | Instruction | GMAI-MM-Percept-1.3M | 1.3M | 100.0% | 100.0% |
|  |  | GMAI-MM-Instruct-0.9M | 0.9M | 100.0% | 100.0% |
|  |  | PubMedVision<sup>[14]</sup> | 1.28M | 100.0% | 100.0% |
|  |  | LLaVA-Med-60k<sup>[39]</sup> | 56k | 100.0% | 100.0% |
|  |  | PMC-Inline<sup>[70]</sup> | 288k | 100.0% | 10.0% |
|  |  | VQA-Med-2019<sup>[8]</sup> | 3.2k | 100.0% | 10.0% |
|  |  | Medical-Diff-VQA<sup>[30]</sup> | 260k | 100.0% | 10.0% |
|  |  | PathVQA<sup>[29]</sup> | 2.6k | 100.0% | 10.0% |
|  |  | PMC-CaseReport<sup>[70]</sup> | 109k | 100.0% | 10.0% |
|  |  | PMC-VQA<sup>[80]</sup> | 251k | 100.0% | 10.0% |
|  |  | ROCOV2<sup>[57]</sup> | 60k | 100.0% | 10.0% |
|  |  | SLAKE<sup>[44]</sup> | 0.6k | 100.0% | 10.0% |
|  |  | VQA-RAD<sup>[38]</sup> | 0.3k | 100.0% | 10.0% |
| General Text |  | blossom_orca<sup>[5]</sup> | 20k | 0.0% | 100.0% |
|  |  | COIG-CQIA<sup>[7]</sup> | 14.8k | 0.0% | 100.0% |
|  |  | Cosmopedia-100k<sup>[9]</sup> | 33k | 0.0% | 100.0% |
|  |  | ShareGPT4V<sup>[15]</sup> | 26k | 0.0% | 100.0% |
|  |  | Orca-Math<sup>[53]</sup> | 379k | 0.0% | 100.0% |
|  |  | Leetcode<sup>[10]</sup> | 1.7k | 0.0% | 100.0% |
|  |  | LogiQA<sup>[47]</sup> | 12.7k | 0.0% | 100.0% |
|  |  | Lima<sup>[26]</sup> | 83k | 0.0% | 100.0% |
|  |  | Open Hermes 2.5<sup>[64]</sup> | 200k | 0.0% | 100.0% |
|  |  | Firefly<sup>[74]</sup> | 189k | 0.0% | 100.0% |
|  |  | UltraChat<sup>[23]</sup> | 189k | 0.0% | 100.0% |
|  |  | Alpaca-Instruct-52K<sup>[61]</sup> | 49k | 0.0% | 100.0% |
| Medical Text |  | GMAI-Text-Single-1M | 1.0M | 0.0% | 100.0% |
|  |  | GMAI-Text-Multi-0.6M | 649k | 0.0% | 100.0% |
| Overall |  | - | 15.7M | - | - |{{< /table-caption >}}
> 🔼 Table 7 details the composition of the datasets used to train the GMAI-VL model.  It breaks down the datasets by category (Captioning, Report Generation, Instruction, Text), listing each dataset's name, size, and the percentage of the dataset used in training stages 1&2 and stage 3. This provides insight into the model's training methodology and the relative importance of different data sources.
> <details>
> <summary>read the caption</summary>
> Table 7: List of datasets used in our model. We employ a large collection of image-text data and instruction data for training stage.
> </details>

{{< table-caption >}}
| Settings | Stage I | Stage II | Stage III |
|---|---|---|---|
| freeze LLM | True | True | False |
| freeze MLP | False | False | False |
| freeze Vision Encoder | True | False | False |
| packing type | soft packing | soft packing | soft packing |
| learning rate | 1e-3 | 1e-4 | 1e-5 |
| learning rate schedule | cosine decay | cosine decay | cosine decay |
| optimizer | AdamW | AdamW | AdamW |
| optimizer hyper-parameters | \(\beta_{1}=0.9,\beta_{2}=0.999\) | \(\beta_{1}=0.9,\beta_{2}=0.999\) | \(\beta_{1}=0.9,\beta_{2}=0.999\) |
| input size | 336x336 | 336x336 | 336x336 |
| total batch size | 32x8x2 | 32x4x4 | 32x4x4 |
| drop rate | 0.0 | 0.0 | 0.0 |
| numerical precision | DeepSpeed bf16 | DeepSpeed bf16 | DeepSpeed bf16 |
| GPUs for training | 32xA100 (80G) | 32xA100 (80G) | 32xA100 (80G) |{{< /table-caption >}}
> 🔼 This table details the hyperparameters and training settings used for each of the three stages in the training of the GMAI-VL model.  It specifies whether components like the Language Model (LLM), Multilayer Perceptron (MLP), and Vision Encoder were frozen or trained, the type of data packing used, the learning rate and its decay schedule, the optimizer employed, and other relevant parameters like batch size and input image dimensions. It also indicates the number of GPUs and the precision used for training.
> <details>
> <summary>read the caption</summary>
> Table 8: Training settings of GMAI-VL’s stage I, stage II, and stage III.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.14522/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14522/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}