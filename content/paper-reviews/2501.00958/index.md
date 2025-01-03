---
title: "2.5 Years in Class: A Multimodal Textbook for Vision-Language Pretraining"
summary: "New multimodal textbook dataset boosts Vision-Language Model (VLM) performance!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 College of Computer Science and Technology, Zhejiang University",]
showSummary: true
date: 2025-01-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.00958 {{< /keyword >}}
{{< keyword icon="writer" >}} Wenqi Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.00958" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.00958" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.00958/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Vision-Language Models (VLMs) struggle with existing datasets due to issues like low knowledge density, weak image-text relations, and poor logical coherence.  These limitations hinder VLMs' ability to understand complex concepts and reason effectively.  The lack of high-quality, textbook-level multimodal data further exacerbates this problem. 

This paper introduces a novel multimodal textbook corpus created from 2.5 years of instructional videos, totaling 22,000 class hours. **The corpus is meticulously designed to overcome the limitations of existing datasets**, featuring high-quality image-text alignment, richer foundational knowledge, and improved logical coherence between images.  Extensive experiments demonstrate superior performance of VLMs pre-trained on this corpus, especially on knowledge and reasoning-intensive tasks.  The dataset is made publicly available to foster further research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel high-quality multimodal textbook corpus is presented, addressing limitations in existing datasets by offering better image-text coherence and knowledge density. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VLMs pretrained on this dataset show significant improvements on knowledge-intensive tasks, highlighting its effectiveness in enhancing contextual awareness and reasoning capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The open-access nature of the dataset promotes collaborative research and development in the field of vision-language modeling. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the limitations of existing multimodal datasets** by introducing a high-quality, textbook-level corpus for VLM pretraining.  Its focus on coherent image-text relations and rich foundational knowledge directly tackles the challenges faced by current VLMs, paving the way for significant advancements in knowledge-intensive tasks and reasoning capabilities. The open-access nature of the dataset further facilitates broader adoption and collaborative research.

------
#### Visual Insights



![](https://arxiv.org/html/2501.00958/x1.png)

> 🔼 This figure compares previous interleaved datasets (MMC4 and OBELICS) with the newly introduced multimodal textbook dataset.  It highlights the shortcomings of existing datasets, such as loose image-text relationships, low knowledge density, and a lack of logical coherence in image sequences. In contrast, the multimodal textbook dataset, derived from instructional videos, boasts high-quality data with tightly coupled text-image relationships and a logically structured organization of images and text. The dataset construction process employs a coarse-to-fine knowledge extraction and multi-level filtering approach to ensure high-quality data suitable for Vision-Language Model (VLM) training.
> <details>
> <summary>read the caption</summary>
> Figure 1: Previous interleaved datasets, e.g., MMC4 and OBELICS, suffer from limitations like weak text-image relations, low knowledge density, and incoherent image sequences. Our multimodal textbook, sourced from massive tutorial videos, employs coarse-to-fine knowledge extraction and multi-level filtering to create a high-quality, textbook-level dataset. It interleaves video keyframes with tutorial texts (extracted from ASR and OCR), enabling VLMs to acquire rich knowledge through tightly coupled text-image and more coherent logic.
> </details>





{{< table-caption >}}
| Dataset | #Image |  |  | #Text Token |  |  | _L_=4 | _L_=5 | _L_=6 | _L_=7 | _L_=8 | Avg. | Source |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Min. | Max. | Avg. | Min. | Max. | Avg. |  |  |  |  |  |  |  |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| _Image-text Paired Dataset_ |  |  |  |  |  |  |  |  |  |  |  |  |  |
| COYO-700M | 1 | 1 | 1 | 1 | 811 | 16 | - | - | - | - | - | - | Common Crawl |
| LAION-5B | 1 | 1 | 1 | 6 | 683 | 27 | - | - | - | - | - | - | Common Crawl |
| _Image-text Interleaved Dataset_ |  |  |  |  |  |  |  |  |  |  |  |  |  |
| MMC4 | 0 | 117 | 5.7 | 4 | 16715 | 417 | 0.363 | 0.348 | 0.310 | 0.298 | 0.276 | 0.319 | Common Crawl |
| MMC4-core-ff | 0 | 15 | 4.1 | 15 | 16715 | 329 | 0.431 | 0.406 | 0.404 | 0.403 | 0.396 | 0.407 | Common Crawl |
| OBELICS | 1 | 30 | 2.5 | 12 | 10717 | 816 | 0.366 | 0.351 | 0.339 | 0.337 | 0.336 | 0.345 | Common Crawl |
| OmniCorpus* | 1 | 16 | 3.9 | 14 | 6893 | 574 | 0.358 | 0.329 | 0.310 | 0.305 | 0.301 | 0.321 | Multi-sources |
| **Ours** | **2** | **45** | **10.7** | **11** | **34174** | **1297** | **0.687** | **0.697** | **0.698** | **0.688** | **0.662** | **0.686** | Video Website |{{< /table-caption >}}

> 🔼 This table compares the characteristics of various multimodal datasets, focusing on the distribution of images and text tokens.  It contrasts the proposed 'Multimodal Textbook' dataset with existing image-text paired datasets and interleaved datasets commonly used for vision-language model training.  Key metrics include the number of images and text tokens per sample, as well as a newly introduced metric, 'In-sample Image SIML', which quantifies the semantic and structural correlation among multiple images within a single sample from an interleaved dataset. This helps assess the coherence and logical relationships between images within a sample.  The table also notes that due to its size, the OmniCorpus dataset was analyzed using a randomly sampled subset.
> <details>
> <summary>read the caption</summary>
> Table 1: We compare our multimodal textbook with image-text paired datasets and webpage-centric interleaved datasets in terms of image and text distributions. In-sample Image SIMLsuperscriptSIM𝐿\text{SIM}^{L}SIM start_POSTSUPERSCRIPT italic_L end_POSTSUPERSCRIPT measures the semantic and structural correlation between multiple images within an interleaved sample. OmniCorpus∗superscriptOmniCorpus\text{OmniCorpus}^{*}OmniCorpus start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT: Due to the extensive size of the dataset, we perform statistical analysis on a randomly sampled subset.
> </details>





### In-depth insights


#### Multimodal Textbook
The concept of a "Multimodal Textbook" in the context of vision-language pre-training is innovative.  It leverages the richness of instructional videos to create a **high-quality, knowledge-dense dataset**. Unlike typical image-text pairs or web-crawled interleaved corpora, which often suffer from weak image-text alignment and logical coherence, this approach offers **tightly coupled text-image sequences** extracted from videos. This results in a **coherent learning experience**, allowing models to grasp foundational knowledge and develop stronger reasoning capabilities.  The **systematic data collection process**, employing LLMs for taxonomy creation and video filtering, ensures both efficiency and quality control.  The resulting dataset showcases improved performance on knowledge-intensive and reasoning tasks. The **multi-level extraction and filtering** process, encompassing ASR, OCR, and keyframe selection, is noteworthy. This ensures both visual and textual information is comprehensively integrated, enhancing model training.  **Temporal alignment** between images and text is a crucial aspect, enabled by video timestamps, fostering better context awareness.

#### Video-to-Text Pipeline
A robust video-to-text pipeline is crucial for processing large volumes of instructional videos.  **Effective extraction of both audio and visual information is paramount**, requiring advanced techniques like Automatic Speech Recognition (ASR) for transcribing lectures and Optical Character Recognition (OCR) for extracting text from slides or on-screen content.  The pipeline should also incorporate **multi-level filtering** to remove noise, irrelevant segments (e.g., advertisements), and low-quality data. **Temporal alignment between extracted text and visual keyframes** is essential to create a coherent multimodal dataset.  **Strategies for handling long videos** (e.g., segmentation into shorter clips) must be implemented to ensure compatibility with various vision-language models.  Finally, **quality control and validation steps** should be integrated to evaluate the final output's accuracy and coherence, ultimately leading to a high-quality multimodal textbook suitable for pre-training vision-language models.

#### Benchmark Results
A dedicated 'Benchmark Results' section in a research paper is crucial for evaluating the proposed model's performance.  It should present a clear comparison against existing state-of-the-art methods on relevant benchmark datasets.  **The choice of benchmarks is vital**: they must be established and widely recognized within the field to ensure credibility.  The results should be presented comprehensively, including metrics such as accuracy, precision, recall, F1-score, etc., depending on the task.  **Visualizations like tables and graphs are highly recommended** to aid readers in quickly understanding the comparative performance.  Beyond raw numbers, the discussion should analyze the results, highlighting **strengths and weaknesses** of the proposed model relative to the baselines.  **Statistical significance testing is important** to ensure that observed differences are not due to random chance.  A thorough analysis of the benchmark results contributes significantly to the paper's overall impact and persuasiveness, establishing the novelty and value of the proposed approach.

#### Context Awareness
Context awareness in vision-language models (VLMs) is crucial for bridging the semantic gap between visual and textual data.  **Effective VLMs should not only process individual image-text pairs in isolation but also understand the relationships and connections between them within a broader context.**  This is especially important for complex tasks requiring reasoning and inference, where understanding the temporal and sequential order of information is key. The paper highlights how existing interleaved datasets often suffer from weak text-image relations, poor logical coherence, and low knowledge density, limiting the ability of VLMs to achieve true context awareness.  **The proposed multimodal textbook addresses these shortcomings by providing a highly structured and coherent corpus, with tightly coupled image-text sequences derived from instructional videos.** This ensures a more natural and intuitive learning process, enabling VLMs to better grasp foundational knowledge and perform exceptionally well in knowledge-intensive tasks. The “cheat test” experiments further underscore the importance of context awareness, revealing that models trained on the proposed dataset exhibit a superior ability to leverage interleaved contextual cues for task solving. **This superior performance strongly suggests that a well-structured, context-rich multimodal corpus is vital for fostering true context awareness in VLMs.** Future research should explore how to further enhance context modeling techniques in VLMs and develop more sophisticated evaluation metrics for assessing context-aware capabilities.

#### Future Work
The authors mention several avenues for future work, primarily centered on **improving the dataset** and **extending the model's capabilities**.  Improving the dataset could involve refining the knowledge taxonomy used for video selection, leading to more focused and relevant instructional content.  **Enhancing the data extraction pipeline** is also crucial, aiming for higher quality ASR and OCR outputs, minimizing noise and errors, and potentially incorporating additional modalities beyond visual and textual data such as interactive elements or student feedback.  Regarding model capabilities, **exploring different model architectures** beyond those tested could unveil performance benefits.  **Investigating different pretraining strategies** or using alternative training objectives may enhance the VLM's performance. Finally, a significant area for future research involves **more comprehensive evaluation**.  The authors could expand their evaluation beyond existing benchmarks, incorporating a wider range of tasks, including those focusing on open-world scenarios and assessing the model's robustness to noisy data.  In addition, qualitative assessments could provide further insights into the model's understanding and reasoning abilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.00958/x2.png)

> 🔼 This figure illustrates the process of creating a multimodal textbook from instructional videos.  It begins with using LLMs to create a knowledge taxonomy, which is then used to collect and filter 159,000 instructional videos from the internet. A multi-stage pipeline then processes these videos. First, non-instructional videos are removed based on their Automatic Speech Recognition (ASR) transcripts, leaving 75,000 high-quality videos. These videos are then segmented into shorter clips using timestamps from the ASR, removing clips with misaligned visuals and audio. Finally, keyframes are extracted from each clip, and Optical Character Recognition (OCR) is used to extract text and symbols from the keyframes.  The result is a multimodal textbook containing 6.5 million keyframes, 259 million ASR tokens, and 500 million OCR tokens, organized in an image-text interleaved format.
> <details>
> <summary>read the caption</summary>
> Figure 2: An illustration of constructing a multimodal textbook from instructional videos. We first instruct LLMs to construct a knowledge taxonomy, then retrieve and filter videos at metadata level, collecting 159K instructional videos. Then a video-to-textbook pipeline is designed for multi-level knowledge extraction. ① We filter out non-instructional videos using ASR transcripts, retaining 75K high-quality videos. ② We use ASR’s timestamp to segment long videos into short clips, discarding those with misaligned visuals and ASR. ③ We detect keyframes from each clip and extract text and symbols by OCR. Our pipeline produces 6.5M keyframes, 259M ASR, and 500M OCR tokens and organizes them into an image-text interleaved textbook.
> </details>



![](https://arxiv.org/html/2501.00958/extracted/6106116/sec/fig/fig3.png)

> 🔼 This figure displays the effect of shuffling image order within samples on the performance of vision-language models (VLMs).  Three different datasets (MMC4-Core-ff, OBELICS, and the authors' Textbook-6.5M) were used. For each dataset, 20%, 50%, and 100% of the samples were randomly selected, and the image order within those samples was shuffled. The resulting datasets with shuffled images were then used for pretraining VLMs. The y-axis shows the average accuracy across seven benchmark tasks.  The x-axis indicates the percentage of samples that underwent image shuffling (0%, 20%, 50%, 100%). The graph visually demonstrates how sensitive each dataset is to changes in image order, offering insights into the influence of image coherence on VLM performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: We randomly select 20%, 50%, and 100% samples from datasets and shuffle the image order within each sample. These datasets with shuffled images are also used for pretraining. The Accuracy denotes the average of seven benchmarks.
> </details>



![](https://arxiv.org/html/2501.00958/x3.png)

> 🔼 This figure visualizes the structure of the knowledge taxonomy used in the paper. The top part shows a hierarchical tree diagram of six main subjects (Mathematics, Physics, Chemistry, Earth Science, Engineering, and Computer Science). Each subject branches out into several sub-courses, representing more specific areas of study within the subject. Due to space limitations, only the sub-courses with the highest proportions (most videos) are shown for each subject. The bottom part displays bar charts, one for each subject, showing the distribution of knowledge points across the sub-courses within that subject.  This gives a visual representation of the breadth and depth of the educational content included in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Top: We plot six subjects along with their corresponding sub-courses. Due to space constraints, we selectively visualized only the courses with the highest proportions. Bottom: We count the knowledge points distribution belongs to each subject and its course
> </details>



![](https://arxiv.org/html/2501.00958/x4.png)

> 🔼 This figure shows a visualization of the water cycle.  The image depicts the various stages of the water cycle including evaporation from bodies of water, condensation forming clouds, precipitation in the form of rain, surface runoff, infiltration into the ground, and groundwater flow.  The illustration highlights the interconnectedness of these processes and how water continuously circulates within the Earth's system. This example is presented as part of an earth science lesson within the multimodal textbook.
> <details>
> <summary>read the caption</summary>
> Figure 5: A case presented in our textbook illustrates the water cycle within the domain of earth science.
> </details>



![](https://arxiv.org/html/2501.00958/x5.png)

> 🔼 Figure 6 showcases an example from the textbook illustrating the principles of mechanics in physics.  It presents a step-by-step calculation of acceleration using the formula (v-u)/t, where 'v' is the final velocity, 'u' is the initial velocity, and 't' is the time taken.  The example problem involves an object initially at rest accelerating to a certain velocity, visually depicted with keyframes and corresponding text explanations of the calculations.  Further, it explains the concept of acceleration units and its derivation from velocity and time. The figure demonstrates the use of both visual and textual cues to clarify the physical principle within the context of an instructional video.
> <details>
> <summary>read the caption</summary>
> Figure 6: A case presented in our textbook introducing the principles of mechanics within the domain of physics.
> </details>



![](https://arxiv.org/html/2501.00958/x6.png)

> 🔼 This figure shows an example from the textbook that uses two objects with different masses (10kg and 100kg) to illustrate the concept of inertia. A constant force of 50N is applied to both objects.  The resulting accelerations are calculated using Newton's second law (F=ma), demonstrating how a larger mass leads to a smaller acceleration. It then expands on the concept by comparing the rotational inertia of a thin hoop and a solid disk with the same mass and radius, prompting reflection on how mass distribution affects rotational inertia. This section visually explains the relationship between mass and inertia, in both linear and rotational motion.
> <details>
> <summary>read the caption</summary>
> Figure 7: A case presented in our textbook introducing the concepts of velocity and acceleration within the context of physics.
> </details>



![](https://arxiv.org/html/2501.00958/x7.png)

> 🔼 Figure 8 presents a step-by-step solution to a planar geometry problem.  The problem involves finding the area of a rectangle inscribed within a semicircle. The solution methodically uses geometric principles, including properties of isosceles right triangles, inscribed angles, and central angles, to determine the dimensions of the rectangle and calculate its area.  The figure is highly visual, using diagrams and annotations to guide the reader through each step of the reasoning process. This showcases how the textbook uses a combination of visual and textual explanations to teach mathematical concepts.
> <details>
> <summary>read the caption</summary>
> Figure 8: A case presented in our textbook demonstrates how to solve a question about planar geometry in the domain of mathematics.
> </details>



![](https://arxiv.org/html/2501.00958/x8.png)

> 🔼 This figure from the section 'Analysis of Multimodal Textbook' shows a chemistry lesson explaining the difference between atoms and molecules using examples of helium, hydrogen, and water. It helps to illustrate that atoms are the basic building blocks of matter, while molecules are formed when two or more atoms are chemically bonded.  The figure visually depicts atoms (He, Ne) and molecules (H2, O2, CO2, H2O) clarifying pure substances (elements and compounds) using diagrams and text annotations.
> <details>
> <summary>read the caption</summary>
> Figure 9: A case presented in our textbook illustrates the concepts of molecules, atoms, and compounds in the domain of chemistry.
> </details>



![](https://arxiv.org/html/2501.00958/x9.png)

> 🔼 This figure shows a step-by-step visual explanation of the Depth-First Search (DFS) algorithm, a graph traversal algorithm.  The visualization uses a simple graph and highlights the process of visiting nodes, backtracking when reaching dead ends, and ensuring that each node is visited exactly once. The accompanying text explains the choices made during each step of the traversal, illustrating the algorithm's logic and how it systematically explores the graph.  Additionally,  pseudocode for the DFS algorithm is provided, further reinforcing the textual and visual explanation.
> <details>
> <summary>read the caption</summary>
> Figure 10: A case presented in our textbook introduces a depth-first search algorithm.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| #Shot | 0 | 1 | 2 | 4 | 0 | 1 | 2 | 4 | 0 | 1 | 2 | 4 | 0 | 1 | 2 | 4 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **Dataset** | ScienceQA<sup>IMG</sup> |  |  |  | OKVQA |  |  |  | TextVQA |  |  |  | TextVQA<sup>ocr</sup> |  |  |  |
| MMC4 | - | 1.6 | 3.9 | 11.6 | 8.6 | 23.6 | 21.5 | 28.7 | 12.1 | 16.2 | 16.8 | 20.9 | 14.5 | 23.9 | 29.9 | 34.7 |
| MMC4-Core-ff | - | 2.1 | 10.1 | 10.2 | 11.8 | 21.2 | 25.3 | 30.4 | 13.6 | 18.7 | 18.8 | 22.1 | 16.1 | 26.6 | 28.7 | 33.1 |
| OBELICS | - | 2.8 | 3.0 | 16.4 | 13.0 | 31.7 | 35.7 | 37.5 | 9.2 | 26.5 | 30.2 | 32.2 | 11 | 30.7 | 36.3 | 41 |
| Textbook-6.5M | 26.3 | 29.4 | 25.1 | 37.3 | 10.2 | 31.2 | 36.8 | 39.9 | 11.8 | 26.7 | 32.1 | 33.5 | 14.1 | 33.1 | 36.4 | 42.8 |
| **Dataset** | MathVista |  |  |  | MathVision |  |  |  | MathVerse |  |  |  | Avg. |  |  |  |
| MMC4 | 20.4 | 30 | 27.9 | 26 | 12.2 | 21.3 | 15.5 | 16.1 | 8.6 | 19.4 | 21.2 | 15.9 | 10.9 | 19.4 | 19.5 | 21.9 |
| MMC4-Core-ff | 22.5 | 33.0 | 29.2 | 27.8 | 13.7 | 23.4 | 16.3 | 17.7 | 8.6 | 19.9 | 21.8 | 15.2 | 12.3 | 20.7 | 21.4 | 22.3 |
| OBELICS | 21.6 | 28.5 | 31.1 | 27.6 | 13.4 | 20.1 | 16.8 | 14.9 | 6.9 | 19.4 | 20.7 | 14 | 10.7 | 22.8 | 24.8 | 26.2 |
| Textbook-6.5M | 24.3 | 43.4 | 33.2 | 29.2 | 14.5 | 25.6 | 18.2 | 18.1 | 7.7 | 28.5 | 19.8 | 14.6 | 15.5 | 31.1 | 28.8 | 30.8 |{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning the LLaVA-1.5-7B base model using various interleaved datasets, including the multimodal textbook introduced in the paper.  The performance of the model is evaluated across seven different benchmarks: four common Visual Question Answering (VQA) tasks and three math-related tasks.  The evaluation is performed under few-shot settings (0-shot, 1-shot, 2-shot, and 4-shot), showing the model's performance with varying amounts of example data. The table allows for a comparison of the multimodal textbook's effectiveness in pre-training against existing interleaved datasets, highlighting the impact of dataset quality on model performance in different tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: We continued pre-training the base model of LLaVA-1.5-7B using different interleaved datasets. The results are evaluated on 4 common VQA and 3 math-related benchmarks under few-shot settings.
> </details>

{{< table-caption >}}
|                       | OKVQA | TextVQA | MathVista | MathVison | MathVerse | OKVQA | TextVQA | MathVista | MathVison | MathVerse |
|-----------------------|-------|---------|-----------|-----------|----------|-------|---------|-----------|-----------|----------|
| **Continual Pre-training from Idefics2-8B-base** |       |         |           |           |          |       |         |           |           |          |
| Dataset                 |       |         |           |           |          |       |         |           |           |          |
| MMC4-cf                 | 54.1  | 57.7    | 27.8      | 14.0      | 17.3     | 9.4   | 25.1    | 24        | 13.3      | 18.3     |
| OBELICS                 | 54.6  | 57.5    | 27.6      | 14.3      | 17.5     | 10.5  | 25.7    | 24.2      | 13.6      | 17.7     |
| Textbook-6.5M          | 55.1  | 58.2    | 29.7      | 16.2      | 19.4     | 10.1  | 26.8    | 26.1      | 14.4      | 19.8     |
| **Pre-training Idefics2-8B from scratch** |       |         |           |           |          |       |         |           |           |          |{{< /table-caption >}}
> 🔼 Table 3 presents the results of experiments using the Idefics-8B model, a Vision-Language Model (VLM) capable of handling multiple images.  Unlike the previous Table 2 which used LLaVA-1.5-7B, this table shows results for Idefics-8B under two conditions: continual pre-training (starting from a pre-trained Idefics-8B-base model) and training from scratch (with randomly initialized weights).  The evaluation is performed across multiple benchmarks (OKVQA, TextVQA, MathVista, MathVision, MathVerse) and extended to an 8-shot setting, using randomly selected examples for evaluation, a methodology consistent with prior work [16].  The table aims to compare the performance of the Idefics-8B model trained on different datasets, including the multimodal textbook dataset, illustrating the impact of different training methods and dataset characteristics on the model's capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Except for LLaVA, we also pre-train advanced VLMs with multi-image ability (Idefics): continual pretraining from Idefics-8B-base or pre-training from scratch. The evaluations are extended to an 8-shot using randomly selected examples as previous works [16].
> </details>

{{< table-caption >}}
| Dataset | OKVQA | TextVQA | Mathvista | Mathvision | Mathverse |
|---|---|---|---|---|---| 
| _1-shot Cheat: Example:{I<sub>t</sub>, q<sub>t</sub>, a<sub>t</sub>} + Test-case: I<sub>t</sub>, q<sub>t</sub>_ |  |  |  |  |  |
| MMC4-cf | 69.0 | 41.0 | 72.6 | 69.3 | 55.7 |
| OBELICS | 71.5 | 43.8 | 67.7 | 66.5 | 62.8 |
| Ours | **79.2** | **51.9** | **94.1** | **98.4** | **76.8** |
| _2-shot Cheat: Example:{I<sub>t</sub>, q<sub>t</sub>, a<sub>t</sub>}, {I<sub>e</sub>, q<sub>e</sub>, a<sub>e</sub>}+Test-case: I<sub>t</sub>, q<sub>t</sub>_ |  |  |  |  |  |
| MMC4-Cf | 53.5 | 39.2 | 55.7 | 51.9 | 40.8 |
| OBELICS | 71.3 | 42.8 | 56.7 | 39.9 | 39.5 |
| Ours | **84.3** | **49.4** | **77.1** | **70.7** | **63.1** |{{< /table-caption >}}
> 🔼 This table presents the results of a 'Cheat Test' designed to evaluate the ability of Vision-Language Models (VLMs) to utilize interleaved context.  The test replaces one or two few-shot examples within the prompt with the test sample itself. This assesses if the VLMs recognize the identical image, question, and answer combination and answer efficiently without further processing. The results compare the performance of various models (MMC4-cf, OBELICS, and the authors' model) across multiple benchmarks (OKVQA, TextVQA, MathVista, MathVision, MathVerse) under 1-shot and 2-shot conditions.  The goal is to understand how well the models leverage their interleaved context for accurate and efficient responses.
> <details>
> <summary>read the caption</summary>
> Table 4: We design “Cheat Test” to observe whether VLMs can attend to their interleaved context. We replace a few-shot example with the test sample itself and observe whether VLM notice this identical <<<image,question,answer>>> within their prompt. Itsubscript𝐼𝑡I_{t}italic_I start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT, qtsubscript𝑞𝑡q_{t}italic_q start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT, atsubscript𝑎𝑡a_{t}italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT denote the test case, Iesubscript𝐼𝑒I_{e}italic_I start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT, qesubscript𝑞𝑒q_{e}italic_q start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT, aesubscript𝑎𝑒a_{e}italic_a start_POSTSUBSCRIPT italic_e end_POSTSUBSCRIPT denote a random selected example.
> </details>

{{< table-caption >}}
| Pretraining | Continual Pretraining | SFT | OKVQA | MathVista |
|---|---|---|---|---|
| ✓ | - | ✓ | 61.1 | 23.2 |
| ✓ | MMC4-Core-ff | ✓ | 61.5 ↑0.4 | 24.8 ↑1.6 |
| ✓ | OBELICS | ✓ | 61.8 ↑0.7 | 25.6 ↑2.4 |
| ✓ | Textbook-6.5M | ✓ | **62.2 ↑1.1** | **28.7 ↑5.5** |{{< /table-caption >}}
> 🔼 This table presents the zero-shot performance results of three different vision-language models (VLMs) after instruction fine-tuning. The models were fine-tuned using 665K data from the LLaVA-1.5 dataset.  The table compares the performance on two visual question answering (VQA) benchmarks (OKVQA and TextVQA) and one math-related benchmark (MathVista).  The results show the improvement in performance after instruction fine-tuning for each model on the specified benchmarks. This demonstrates the impact of fine-tuning and allows for comparison of different models' performance on the same benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 5: We also evaluated the zero-shot result after instruction fine-tuning using the 665K data from LLaVA-1.5.
> </details>

{{< table-caption >}}
| Dataset | Perplexity ↓ | 1-shot Acc. |
|---|---|---|
| MMC4-Core-ff | 12.56 | 20.7 |
| OBELICS | 11.27 | 22.8 |
| Ours ( _ASR Refine, OCR, SSIM_ ) | 13.92 | 31.1 |
| - _w/o ASR Refine_ | 16.86 | 26.2 (↓4.9) |
| - _w/o OCR_ | 12.7 | 28.8 (↓2.3) |
| Keyframe Extraction algorithms | #Keyframe | 1-shot Acc. |
| - _SSIM → Pixel-level extractor_ | 6.5M → 18M | 22.1 (↓9) |
| - _SSIM → CLIP-based extractor_ | 6.5M → 1.7M | 24.6 (↓6.5) |{{< /table-caption >}}
> 🔼 This table presents an ablation study on the process of creating the multimodal textbook dataset.  It shows the impact of different components of the pipeline on the final dataset performance. Specifically, it analyzes the effects of refining the automatically generated speech-to-text (ASR) transcripts, the incorporation of optical character recognition (OCR) to extract text from images, and the choice of algorithm used for selecting keyframes from video clips. The results demonstrate the contribution of each step to overall performance metrics.
> <details>
> <summary>read the caption</summary>
> Table 6: We perform an ablation study on video-to-textbook pipeline, including the impact of ASR refinement, the necessity of incorporating OCR, and the algorithms for extracting keyframes.
> </details>

{{< table-caption >}}
| Subject | #Video | Duration (h) | #Topic | #Video Clip | #Keyframe | #ASR Token | #OCR Token | #Sample |
|---|---|---|---|---|---|---|---|---|
| Mathematics | 21.7k | 4,423 | 725 | 809k | 1.67M | 72.5M | 145M | 123k |
| Physics | 11k | 3,511 | 530 | 822k | 0.95M | 36.7M | 73.4M | 119k |
| Chemistry | 4.5k | 2,643 | 410 | 234k | 0.49M | 15M | 30M | 32k |
| Earth Science | 12k | 3,670 | 520 | 640k | 1.03M | 40M | 80M | 88k |
| Engineering | 13k | 4,096 | 810 | 713k | 1.15M | 43.3M | 86.6M | 98k |
| Computer Science | 12.8k | 4,354 | 820 | 782k | 1.21M | 42.8M | 85.5M | 150k |
| **All** | **75k** | **22,697** | **3,915** | **4M** | **6.58M** | **258M** | **500M** | **610k** |{{< /table-caption >}}
> 🔼 Table 7 provides a detailed statistical overview of the multimodal textbook dataset used in the paper.  It breaks down the dataset's composition across six subjects (Mathematics, Physics, Chemistry, Earth Science, Engineering, and Computer Science). For each subject, the table shows the number of videos, the total duration of those videos in hours, the number of topics covered, the number of video clips extracted, the number of keyframes extracted, and the counts of Automatic Speech Recognition (ASR) tokens and Optical Character Recognition (OCR) tokens.  Finally, it indicates the total number of samples generated for model training. This information offers insights into the scale and characteristics of the dataset, highlighting its richness and diversity in terms of video content, extracted textual data, and the resulting training samples.
> <details>
> <summary>read the caption</summary>
> Table 7: The statistics of our multimodal textbook. Topic denotes the knowledge points covered by each category of videos, which are sourced from our knowledge taxonomy.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.00958/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.00958/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}