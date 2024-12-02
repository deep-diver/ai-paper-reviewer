---
title: "On Domain-Specific Post-Training for Multimodal Large Language Models"
summary: "AdaMLLM enhances multimodal LLMs for specific domains via a novel visual instruction synthesizer and a single-stage post-training pipeline, achieving superior performance compared to existing methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 State Key Laboratory of General Artificial Intelligence, BIGAI",]
showSummary: true
date: 2024-11-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.19930 {{< /keyword >}}
{{< keyword icon="writer" >}} Daixuan Cheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-02 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.19930" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.19930" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/on-domain-specific-post-training-for" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.19930/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Adapting general-purpose multimodal large language models (MLLMs) to specialized domains is crucial for numerous applications, but current approaches are limited by the difficulty in obtaining diverse domain-specific data and the inefficiency of existing training methods.  This paper addresses these issues by focusing on data synthesis, training pipelines, and task evaluation. Existing methods rely on either manual rule creation or closed-source models for data synthesis which limits diversity and may pose privacy concerns; and use a two-stage training pipeline which causes knowledge/task loss. 

The researchers developed a visual instruction synthesizer that effectively generates diverse visual instruction tasks from domain-specific image-caption pairs.  Their proposed single-stage training pipeline avoids the shortcomings of the two-stage approach by combining synthetic tasks with image-caption pairs. The resulting model, AdaMLLM, outperforms other models on various tasks in two target domains.  The implementation has been open-sourced to encourage broader research in the area.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A visual instruction synthesizer generates diverse domain-specific tasks from image-caption pairs, reducing reliance on manual creation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A single-stage training pipeline improves MLLM performance in specific domains by enhancing task diversity and avoiding knowledge loss. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} AdaMLLM consistently outperforms existing general-purpose MLLMs on various domain-specific tasks in biomedical and food domains. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is **crucial** for researchers working with large language models (LLMs) because it introduces a novel approach to adapt general MLLMs to specific domains, which is a significant challenge in the field.  The open-sourced code and data will accelerate future research. The single-stage training approach offers improvements in efficiency and performance, and this work sets the stage for many domain-specific applications.

------
#### Visual Insights



![](https://arxiv.org/html/2411.19930/x1.png)

> 🔼 Figure 1 presents a comparative analysis of AdaMLLM (an adapted multimodal large language model) and general MLLMs across two distinct domains: biomedicine and food.  The figure uses radar charts to visualize the performance of various MLLMs (including different sizes and sources of pre-trained models) on a range of domain-specific tasks. Each axis of the radar chart represents a unique task, and the distance of each point from the center signifies the model's performance on that specific task.  The gray-shaded regions on the charts indicate tasks specific to the biomedicine domain, while the orange regions denote food-related tasks.  This allows for a direct comparison of the performance improvement achieved by the AdaMLLM through post-training on domain-specific data compared to the original, general-purpose MLLMs. The visual representation helps to quickly assess the effectiveness of domain adaptation techniques for MLLMs in both biomedicine and food applications.
> <details>
> <summary>read the caption</summary>
> Figure 1: Domain-Specific Performance of AdaMLLM and General MLLM. For each of the two domains—biomedicine and food—we conduct post-training to adapt the general MLLM to the target domain and evaluate model performance on various domain-specific tasks. Biomedicine and food tasks are colored gray and orange, respectively.
> </details>





{{< table-caption >}}
| User | Assistant |
|---|---| 
| <img src="https://arxiv.org/html/2411.19930/filename.png">Describe the image. | {Caption} |
| **User:** Answer with a precise response. {Instruction} | **Assistant:** {Precise Response} |
| **User:** Answer with an informative response. {Instruction} | **Assistant:** {Informative Response} |{{< /table-caption >}}

> 🔼 This table details the data format used to fine-tune the visual instruction synthesizer.  The synthesizer is trained using a multi-turn conversational format. Each training example begins with the system presenting an image to the user. The next turn involves the system providing an instruction, and the user responding with an informative answer and a precise answer. The `User` and `Assistant` prefixes reflect the roles in the conversation. Importantly, the model's training loss is calculated only for the user's precise and informative responses; the caption is used for context but doesn't contribute to the loss calculation.
> <details>
> <summary>read the caption</summary>
> Table 1: Data Format for Synthesizer Tuning. The prefixes “User” and “Assistant” are determined by synthesizer’s chat template. Tuning loss is computed only on the part colored in orange.
> </details>





### In-depth insights


#### MLLM Domain Adapt
MLLM Domain Adaptation focuses on bridging the gap between general-purpose MLLMs and their effective application in specialized domains.  **The core challenge lies in adapting these models, trained on vast and diverse datasets, to perform optimally on tasks with limited domain-specific data.** This necessitates innovative approaches in data synthesis, training methodologies, and evaluation metrics.  **Data synthesis, often involving techniques like visual instruction synthesis, aims to generate sufficient domain-specific data to augment limited real-world datasets.**  Efficient training strategies, such as single-stage training pipelines, are explored to maximize the use of available data and improve performance.  **Rigorous evaluation is crucial**, requiring the development of specialized benchmarks and metrics to accurately assess the performance of adapted MLLMs within their specific domains.  Overall, the field strives for **robust and efficient methods for domain adaptation**, ultimately enhancing the usability and practicality of MLLMs in various real-world scenarios.

#### Visual Instruction Synth
The concept of "Visual Instruction Synth" in the context of multimodal large language models (MLLMs) is crucial for effective domain adaptation.  It highlights the need to **synthesize diverse visual instruction tasks** rather than relying on limited real-world datasets.  This synthesis process leverages readily available image-caption pairs, using them as a basis to generate diverse instruction-response pairs.  The approach significantly reduces the need for manual annotation, **accelerating the development of domain-specific MLLMs**. A key aspect is the employment of open-source models to achieve scalability, making the process accessible and reproducible.  However, challenges remain in ensuring the accuracy and consistency of synthesized data. To this end, the paper proposes a **consistency-based filtering mechanism**, using a secondary language model to identify and remove inaccurate instruction-response pairs. This dual-model system enables effective refinement and helps to optimize data quality. The use of a single-stage training method is also advocated for the post-training of MLLMs; this improves performance and generalizability by avoiding catastrophic forgetting.  Overall, "Visual Instruction Synth" represents a vital step towards more efficient and practical domain adaptation for MLLMs.

#### Single-Stage Training
The single-stage training approach, in contrast to the typical two-stage method for multimodal large language models (MLLMs), offers a **streamlined and potentially more effective** way to adapt these models to specific domains.  By combining image-caption pairs and synthetic visual instruction tasks within a single training phase, it avoids the limitations of the sequential approach. This is particularly significant in the context of limited data in specialized domains.  The single-stage method **enhances diversity** during training, promoting better generalization across the variety of domain-specific tasks.  However, this approach requires careful synthesis of high-quality visual instructions to maintain accuracy and avoid potential issues such as catastrophic forgetting.  The benefits, including improved efficiency and potentially superior performance, need to be weighed against the challenges in data generation and the careful tuning necessary to ensure this method's effectiveness.

#### Biomed & Food Tasks
A hypothetical research section titled 'Biomed & Food Tasks' would likely delve into the application of multimodal large language models (MLLMs) within the biomedical and food domains.  **Specific tasks** in biomedicine might involve medical image analysis (e.g., identifying pathologies in X-rays, MRIs), generating medical reports, or answering complex medical questions. Within the food domain, tasks could include recipe generation, ingredient identification from images, nutritional analysis, or classifying food types.  The core focus would likely be on **evaluating the performance** of MLLMs trained using domain-specific data, comparing their efficacy against general MLLMs, and analyzing their robustness across different task types within each domain. This section would also potentially investigate different approaches to domain adaptation (e.g., fine-tuning, prompt engineering), highlighting the **challenges and opportunities** of applying advanced models to real-world problems in these critical sectors.  Moreover, a discussion on **data quality and limitations** may be included, emphasizing the need for high-quality, diverse, and representative datasets for accurate and reliable results.  The findings would contribute valuable insights into the capabilities and limitations of MLLMs for domain-specific applications, paving the way for future advancements in AI-driven healthcare and food technology.

#### Future Research Needs
Future research should prioritize **improving the efficiency and scalability of MLLM domain adaptation**, exploring techniques to minimize the need for large, domain-specific datasets.  **Developing more sophisticated methods for visual instruction synthesis** that effectively capture nuanced domain knowledge is crucial.  Investigating the role of **different training strategies beyond single-stage approaches** is needed to optimize performance and task diversity.  **Further research into robustness and generalization** of adapted models across unseen data and diverse tasks is essential.  The long-term goal should be to create **truly adaptable MLLMs that seamlessly transfer knowledge** across domains, allowing for faster and more cost-effective development of specialized AI agents.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.19930/x2.png)

> 🔼 This figure illustrates the two-stage method for domain-specific post-training of multimodal large language models (MLLMs). Stage (A) involves fine-tuning a visual instruction synthesizer using image-caption pairs from diverse domains to generate varied visual instruction tasks.  Stage (B) leverages this trained synthesizer to create domain-specific tasks from image-caption pairs within the target domain, followed by a consistency filter to improve data quality. Finally, the filtered synthetic tasks are combined with original image-caption tasks and used for training MLLMs in a single-stage approach. The orange color highlights the specific section where the MLLM training loss is computed.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method Overview. (A) We fine-tune a unified visual instruction synthesizer that generates diverse tasks based on image-caption pairs across various domains. (B) Using this synthesizer, we synthesize tasks based on domain-specific image-caption pairs and then apply a consistency-based data filter. The filtered synthetic tasks, combined with the original image captioning tasks, are employed to train general MLLMs through a single-stage post-training process, MLLM training loss is computed only on the part colored in orange.
> </details>



![](https://arxiv.org/html/2411.19930/x3.png)

> 🔼 This figure shows a breakdown of the different types of visual instruction tasks generated by the model, categorized by the three image-caption sources used for training.  The types of tasks are diverse and cover a range of complexities, including image-text matching, object recognition, detailed scene descriptions, and many other task types.  The size of each slice in the pie chart corresponds to the relative frequency of that task type within the overall set of synthetic tasks generated from each source. This visualization allows for assessing the diversity and balance of the generated synthetic tasks, which is important for the effectiveness of the downstream domain adaptation task.
> <details>
> <summary>read the caption</summary>
> Figure 3: Task Type Distribution of all our synthetic tasks based on three image-caption sources.
> </details>



![](https://arxiv.org/html/2411.19930/x4.png)

> 🔼 Figure 4 presents a comparison of instruction-response pairs generated using four different methods: the authors' proposed method, manual rules, GPT-4, and GPT-4V.  For each method, an example is shown where an image-caption pair serves as the input.  The generated instruction and response illustrate the style and complexity of the responses produced. Case (A) focuses on a cooking recipe from Recipe1M, Case (B) shows a biomedical procedure explanation using data from PMCRaw, and Case (C) illustrates a medical image analysis task using data from PMCRefined.  The ellipses (...) indicate that portions of the original responses have been omitted for brevity.  This figure demonstrates the diversity and complexity that can be achieved using different data and techniques.
> <details>
> <summary>read the caption</summary>
> Figure 4: Cases of Instruction-Response Pairs synthesized by our method, manual rules, GPT-4, and GPT-4V, the image-caption sources for cases (A), (B), (C) are Recipe1M, PMCR⁢a⁢wsuperscriptPMC𝑅𝑎𝑤\text{PMC}^{Raw}PMC start_POSTSUPERSCRIPT italic_R italic_a italic_w end_POSTSUPERSCRIPT and PMCR⁢e⁢f⁢i⁢n⁢e⁢dsuperscriptPMC𝑅𝑒𝑓𝑖𝑛𝑒𝑑\text{PMC}^{Refined}PMC start_POSTSUPERSCRIPT italic_R italic_e italic_f italic_i italic_n italic_e italic_d end_POSTSUPERSCRIPT, respectively. Certain portions are omitted and are represented as (…).
> </details>



![](https://arxiv.org/html/2411.19930/x5.png)

> 🔼 This figure shows a pie chart visualization that breaks down the composition of the seed data used to train a visual instruction synthesizer. The chart is divided into two main sections: image domains and task types.  The image domains section displays the relative frequencies of various image categories present in the dataset, such as animals, art, food, medical images, and many more.  The task types section shows the proportion of different kinds of tasks included in the seed data, including image captioning, object recognition, and scene classification, among other visual instruction types. This breakdown illustrates the diversity and scope of the data used to develop the synthesizer, highlighting the balance between different image sources and the variety of tasks it's designed to generate.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of Image Domains and Task Types in Seed Data.
> </details>



![](https://arxiv.org/html/2411.19930/x6.png)

> 🔼 This figure shows a prompt template used for a consistency-based filter in the paper.  The filter is designed to assess the consistency between an informative response and a precise response generated by a visual instruction synthesizer. The prompt guides the evaluation by providing examples of consistent, inconsistent, and open-ended responses, allowing for the classification of generated responses.  The consistency check helps improve accuracy by reducing the need for human expert annotation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompt Template for Consistency-Based Filter (Part 1), continued in Part 2.
> </details>



![](https://arxiv.org/html/2411.19930/x7.png)

> 🔼 Figure 7 shows a prompt template used for a consistency-based filter in the visual instruction synthesis process.  The filter helps to improve the accuracy of synthetically generated visual instruction tasks by evaluating the consistency between precise and informative responses generated by the model. The prompt guides an evaluator to determine if the precise response can be reliably inferred from the more detailed informative response, or if the task requires open-ended responses due to ambiguity.
> <details>
> <summary>read the caption</summary>
> Figure 7: Prompt Template for Consistency-Based Filter (Part 2).
> </details>



![](https://arxiv.org/html/2411.19930/x10.png)

> 🔼 Figure 8 showcases various instruction-response pairs generated using different methods: the authors' method, manual rules, GPT-4, and GPT-4V.  The image-caption pairs used as input originated from three datasets: Recipe1M, PMCRaw, and PMCRefined.  The figure highlights the differences in the complexity and thoroughness of the generated tasks.  In one example, a rule-based approach simply rephrases the recipe caption without considering image information; in contrast, the authors' method produces a task that analyzes the food's visual characteristics (like texture) to generate a more complete response. Another example compares a simple question asked by GPT-4 with a more analytical and inferential task developed by the authors, demonstrating a higher level of task complexity.
> <details>
> <summary>read the caption</summary>
> Figure 8: Cases of Instruction-Response Pairs (Part 1) synthesized by our method, manual rules, GPT-4, and GPT-4V, the image-caption sources for the cases are Recipe1M, PMCR⁢a⁢wsuperscriptPMC𝑅𝑎𝑤\text{PMC}^{Raw}PMC start_POSTSUPERSCRIPT italic_R italic_a italic_w end_POSTSUPERSCRIPT and PMCR⁢e⁢f⁢i⁢n⁢e⁢dsuperscriptPMC𝑅𝑒𝑓𝑖𝑛𝑒𝑑\text{PMC}^{Refined}PMC start_POSTSUPERSCRIPT italic_R italic_e italic_f italic_i italic_n italic_e italic_d end_POSTSUPERSCRIPT, respectively. Continued in Part 2. In the first case, the rule-based task simply transforms the recipe caption, ignoring the image content. In contrast, our task involves analyzing the food’s state in the image and applying food-related knowledge to infer its texture, demonstrating a higher level of \uldomain knowledge utilization. In the second case, the GPT-4 generated task straightforwardly asks about the pointing of the red arrow, while ours requires a detailed analysis and inference, showing greater \ultask complexity.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Role | Content |
|---|---| 
| User: | <img src="https://arxiv.org/html/2411.19930/filename.png">Describe the image. |
| Assistant: | {Caption} |
| User: | Answer with a precise response. {Instruction} |
| Assistant: | {Precise Response} |
| User: | Answer with an informative response. {Instruction} |
| Assistant: | {Informative Response} |{{< /table-caption >}}
> 🔼 Table 2 presents the results of evaluating various large language models (LLMs) on biomedical tasks. It compares the performance of general-purpose LLMs with those that have undergone domain-adaptive training.  The models are tested on a variety of open and closed biomedical tasks, offering a comprehensive evaluation of their performance. The table highlights the impact of domain-specific post-training on improving the performance of LLMs in biomedical applications.  Specifically, it contrasts results across models post-trained using two different datasets (PMCRaw and PMCRefined), showcasing the influence of the training data on the model's effectiveness. The best performing model for each task is indicated in boldface type, with the second best in underlined type.
> <details>
> <summary>read the caption</summary>
> Table 2: Biomedicine Task Performance of general MLLMs and MLLMs after domain-adaptive training. We mark the best performance bold and the second-best \ulunderlined. The image-caption sources for AdaMLLM from PMCR⁢a⁢wsuperscriptPMC𝑅𝑎𝑤\text{PMC}^{Raw}PMC start_POSTSUPERSCRIPT italic_R italic_a italic_w end_POSTSUPERSCRIPT and AdaMLLM from PMCR⁢e⁢f⁢i⁢n⁢e⁢dsuperscriptPMC𝑅𝑒𝑓𝑖𝑛𝑒𝑑\text{PMC}^{Refined}PMC start_POSTSUPERSCRIPT italic_R italic_e italic_f italic_i italic_n italic_e italic_d end_POSTSUPERSCRIPT are PMCR⁢a⁢wsuperscriptPMC𝑅𝑎𝑤\text{PMC}^{Raw}PMC start_POSTSUPERSCRIPT italic_R italic_a italic_w end_POSTSUPERSCRIPT and PMCR⁢e⁢f⁢i⁢n⁢e⁢dsuperscriptPMC𝑅𝑒𝑓𝑖𝑛𝑒𝑑\text{PMC}^{Refined}PMC start_POSTSUPERSCRIPT italic_R italic_e italic_f italic_i italic_n italic_e italic_d end_POSTSUPERSCRIPT, respectively.
> </details>

{{< table-caption >}}
| Biomedicine | SLLAKE |  | PathVQA |  | VQA-RAD |  | PMC-VQA | 
|---|---|---|---|---|---|---|---|---|
|  | OPEN | CLOSED | OPEN | CLOSED | OPEN | CLOSED |  | 
| GPT-4o | 59.1 | 71.6 | 24.1 | 76.0 | 51.6 | 64.0 | 56.7 | 
| *LLaVA-v1.6-8B* | 49.2 | 62.3 | 15.2 | 47.7 | 45.9 | 56.3 | 36.5 | 
| LLaVA-Med-8B | 43.4 | 50.2 | 10.1 | 59.2 | 35.0 | 62.5 | 37.1 | 
| PubMedVision-8B | 50.0 | 68.3 | 17.0 | 67.5 | 43.3 | 67.3 | 40.4 | 
| AdaMLLM-8B from PMC<sup>Raw</sup> | 56.8 | **76.4** | 19.7 | **79.3** | 51.0 | **80.5** | 44.3 | 
| AdaMLLM-8B from PMC<sup>Refined</sup> | **58.0** | 73.3 | **22.9** | 78.6 | **59.8** | **81.3** | **47.9** | 
| *Qwen2-VL-2B* | 50.0 | 52.4 | 17.8 | 38.7 | 37.0 | 46.7 | 45.8 | 
| LLaVA-Med-2B | 43.4 | 55.5 | 11.8 | 60.1 | 37.1 | 58.8 | 41.2 | 
| PubMedVision-2B | 45.2 | 63.2 | 18.2 | **64.7** | 41.3 | 67.3 | 43.2 | 
| AdaMLLM-2B from PMC<sup>Raw</sup> | 53.2 | **75.2** | 20.1 | 63.8 | 49.8 | **74.6** | 43.5 | 
| AdaMLLM-2B from PMC<sup>Refined</sup> | **60.2** | 75.0 | **20.6** | 53.6 | **58.0** | **76.1** | **46.5** | 
| *Llama-3.2-11B* | 56.2 | 63.9 | 22.7 | 72.1 | 46.9 | 63.6 | **51.9** | 
| LLaVA-Med-11B | 47.6 | 58.7 | 14.6 | 69.5 | 38.0 | 69.1 | 47.5 | 
| PubMedVision-11B | 49.1 | 74.3 | 19.3 | 70.9 | 46.2 | 73.9 | 47.1 | 
| AdaMLLM-11B from PMC<sup>Raw</sup> | 56.7 | **77.6** | 22.2 | **87.3** | 55.0 | **76.1** | 49.9 | 
| AdaMLLM-11B from PMC<sup>Refined</sup> | **59.5** | 76.4 | **24.3** | **84.9** | **57.4** | **79.8** | **51.9** |{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various large language models (LLMs) on food-related tasks, both before and after domain-adaptive training.  The models evaluated include general-purpose MLLMs and those adapted specifically for the food domain using the proposed domain-adaptive training method.  Performance is measured across multiple tasks, representing different aspects of food understanding, including recipe generation, nutrition information prediction, and food image classification. The table highlights the improvements in performance achieved through domain adaptation, showing the best and second-best results for each task and model.
> <details>
> <summary>read the caption</summary>
> Table 3: Food Task Performance of general MLLMs and MLLMs after domain-adaptive training. We mark the best performance bold and the second-best \ulunderlined.
> </details>

{{< table-caption >}}
| Food | Recipe | Nutrition | Food101 | FoodSeg |
|---|---|---|---|---|
| GPT-4o | 26.1 | 46.6 | 89.4 | 61.9 |
| *LLaVA-v1.6-8B* | 18.6 | 29.6 | 47.9 | 38.9 |
| LLaVA-Chef-8B | 23.1 | 29.1 | 46.8 | 14.5 |
| AdaMLLM-8B | 24.8 | 36.1 | 65.3 | 42.0 |
| *Qwen2-VL-2B* | 18.2 | 36.4 | 73.9 | 19.9 |
| LLaVA-Chef-2B | 24.1 | 24.5 | 68.8 | 7.7 |
| AdaMLLM-2B | 24.0 | 41.2 | 72.0 | 23.9 |
| *Llama-3.2-11B* | 23.7 | 40.0 | 80.8 | 47.6 |
| LLaVA-Chef-11B | 25.7 | 26.2 | 82.1 | 16.7 |
| AdaMLLM-11B | 26.1 | 41.0 | 82.2 | 42.0 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various Multimodal Large Language Models (MLLMs) on domain-specific tasks after post-training.  The models were trained using different types of synthetic data and two training pipelines: a two-stage pipeline and a single-stage pipeline. The table shows the average performance across various tasks within two domains (biomedicine and food).  Bold values indicate better performance when the image-caption source and training pipeline are consistent; ↑ indicates that single-stage training outperforms two-stage training given the same image-caption source and synthetic data, while ↓ indicates the opposite.
> <details>
> <summary>read the caption</summary>
> Table 4: Domain-Specific Task Performance of MLLMs after Post-Training with different synthetic data and training pipelines. We report the average performance in each domain, with detailed results in Table 14 in Appendix. When the image-caption source and training pipeline are fixed, synthetic data of better performance are marked in bold. When the image-caption source is fixed and our synthetic data are used, numbers marked with ↑ indicate that single-stage training outperforms two-stage training, while ↓ indicates the opposite.
> </details>

{{< table-caption >}}
| Image-Caption | Recipe1M | PMC<sup>Raw</sup> | PMC<sup>Refined</sup> | 
|---|---|---|---|
| _Train Pipeline_ | _Two-stage_ | _Single-stage_ | _Two-stage_ | _Single-stage_ |
| Instruction | Rule | Ours | Rule | Ours | GPT-4 | Ours | GPT-4 | Ours | GPT-4V | Ours | GPT-4V | Ours |
| LLaVA-v1.6-8B | 28.4 | **29.0** | 34.1 | **42.0 ↑** | 42.5 | **55.6** | 46.1 | **58.3 ↑** | 50.5 | **58.6** | 55.5 | **60.3 ↑** |
| Qwen2-VL-2B | 31.3 | **38.2** | 31.9 | **40.3 ↑** | 44.0 | **55.5** | 41.3 | **54.3 ↓** | 49.0 | **59.5** | 51.6 | **55.7 ↓** |
| Llama-3.2-11B | 37.7 | **40.9** | 36.6 | **47.8 ↑** | 49.3 | **59.2** | 48.8 | **60.7 ↑** | 54.4 | **60.3** | 53.7 | **62.0 ↑** |{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the visual instruction synthesizer and the single-stage post-training method. It shows the impact of removing specific components on the overall performance. The 'w/o Blank Image' column demonstrates the impact of removing the strategy of replacing 10% of images with blank images during fine-tuning of the visual instruction synthesizer.  The 'w/o Consistency Filter' column shows the effect of removing the consistency-based filter for improving the accuracy of synthetic tasks. The 'w/o Synthetic Task' column evaluates the model performance without the generated synthetic tasks. The 'w/o Image Caption' column examines the model's ability in the absence of image captioning tasks. The 'General Task' column presents the results of using only seed data processed into the task format. Finally, the 'General Task + Domain Caption' column demonstrates the performance of combining seed data with domain-specific image-caption pairs.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation Results. “w/o Blank Image” fine-tunes the synthesizer without replacing 10% of images with blank ones. “w/o Consistency Filter” removes the consistency-based filter and trains with either precise or informative responses. “w/o Synthetic Task” removes synthetic task, and “w/o Image Caption” removes image captioning task. “General Task” trains on seed data processed into our task format, “General Task + Domain Caption” mixes the processed seed data with domain-specific image-caption pairs.
> </details>

{{< table-caption >}}
|               | Ours | w/o Blank Image | w/o Consistency Filter | Precise | Informative | w/o Synthetic Task | w/o Image Caption | General Task | General Task + Domain Caption |
| :------------- | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| BioMed.        | **58.3** | 55.8 | 31.2 | 44.4 | 26.7 | 54.2 | 49.8 | 55.3 |
| Food           | **42.0** | 35.9 | 37.9 | 37.6 | 25.6 | 36.8 | 36.0 | 38.6 |{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the quality of synthetic tasks generated by different visual instruction synthesizers.  The quality is assessed across four key dimensions: task diversity (variety of task types generated), domain knowledge utilization (how well the tasks leverage domain-specific knowledge), task complexity (difficulty of the tasks), and response accuracy (correctness of the generated responses). The table compares the performance of the model without any fine-tuning (Column 1) to the performance after fine-tuning it on seed data using different inputs (Columns 2-5). Notably, Column 5 shows the results when 10% of the images used for fine-tuning are replaced with blank images to simulate challenging situations.
> <details>
> <summary>read the caption</summary>
> Table 6: Quality of Synthetic Tasks by Different Visual Instruction Synthesizers, assessed in terms of task diversity, domain knowledge utilization, task complexity, and response accuracy. Column 1 presents results from the MLLM without fine-tuning. Columns 2-5 show results after fine-tuning the MLLM using our seed data to synthesize tasks based on different inputs. Besides, Column 5 replaces 10% of the images with blank images.
> </details>

{{< table-caption >}}
| Finetune Input | - | Image | Caption | Image + Caption | Image + Caption |
|---|---|---|---|---|---| 
| _Blank Image_ | - | - | - | ✗ | ✓ |
| Diversity | 52.5 | 68.0 | 75.2 | 81.0 | **85.5** |
| Knowledge | 72.5 | 95.0 | 93.8 | 97.5 | **98.1** |
| Complexity | 43.8 | 77.9 | 75.3 | 80.0 | **83.2** |
| Accuracy | 63.8 | 60.0 | 65.6 | 66.3 | **71.3** |{{< /table-caption >}}
> 🔼 Table 7 presents a quantitative analysis of response quality before and after applying a consistency-based filter.  It compares the consistency between precise and informative responses, as well as the accuracy of each response type individually, and finally, the accuracy of the combined responses (which uses both the precise and informative components). This helps assess how effective the filter is at improving overall response quality by ensuring alignment between different parts of the answer.
> <details>
> <summary>read the caption</summary>
> Table 7: Quality of Responses with/without Using Consistency-Based Filter, assessed in terms of consistency between precise and informative responses (Consist.), accuracy of precise responses (Precise Acc), accuracy of informative responses (Info. Acc), and accuracy of combined responses (Acc).
> </details>

{{< table-caption >}}
|       | w/o Filter       |       | w/ Filter        |
| :---- | :----------------: | :---- | :----------------: |
|       | Consist. | Precise Acc | Info. Acc | Consist. | Acc |
| BioMed. | 30.3       | 64.3        | 61.0        | 92.2        | 75.1        |
| Food   | 35.7        | 77.2        | 75.5        | 97.1        | 84.3        |{{< /table-caption >}}
> 🔼 Table 8 presents a comparative analysis of the quality of synthetic visual instruction tasks generated by four different methods: the authors' proposed method, manual rule-based generation, GPT-4, and GPT-4V.  The quality is evaluated across four key aspects: task diversity (variety of task types generated), domain knowledge utilization (how well the tasks incorporate domain-specific knowledge), task complexity (difficulty of the tasks), and response accuracy (correctness of the model's responses to the tasks). This comparison helps determine which method produces the most effective visual instruction tasks for post-training multimodal large language models (MLLMs).
> <details>
> <summary>read the caption</summary>
> Table 8: Quality of Synthetic Tasks by our method, manual rules, GPT-4, and GPT-4V, assessed in terms of task diversity, domain knowledge utilization, task complexity, and response accuracy.
> </details>

{{< table-caption >}}
| Image-Caption | Recipe1M | PMC<sup>Raw</sup> | PMC<sup>Refined</sup> | 
|---|---|---|---| 
| Instruction | Rule | Ours | GPT-4 | Ours | GPT-4V | Ours | 
| Diversity | 23.5 | **52.9** | 47.1 | **58.8** | 64.7 | **76.5** | 
| Knowledge | 20.9 | **21.9** | 44.9 | **58.9** | **67.7** | 63.2 | 
| Complexity | 38.4 | **69.9** | 41.7 | **83.2** | 49.6 | **80.5** | 
| Accuracy | **98.7** | 84.3 | **84.4** | 75.1 | **87.5** | 79.6 | {{< /table-caption >}}
> 🔼 This table details the hyperparameters used to fine-tune the visual instruction synthesizer model.  It shows the base model used for fine-tuning (LLaVa-v1.6-8B), whether the entire model or only specific parts were trained, the number of training epochs, batch size, maximum sequence length, and learning rates for different parts of the model (the projector and LLM, and the visual encoder). It also specifies the learning rate scheduler, weight decay, warm-up ratio, the computing infrastructure used (8 A100-80GB GPUs), and the total training time (13 hours). This information is crucial for understanding the model training process and reproducibility.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyper-Parameters for Synthesizer Tuning
> </details>

{{< table-caption >}}
| Hyper-Parameter | Assignment |
|---|---| 
| Base Model | LLaVA-v1.6-8B |
| Trainable | Full Model |
| Epoch | 2 |
| Batch Size | 128 |
| Max Seq Length | 6144 |
| LR<sub>projector & LLM</sub> | 2e-5 |
| LR<sub>visual encoder</sub> | 2e-6 |
| LR Scheduler | Cosine |
| Weight Decay | 0 |
| Warm-Up Ratio | 0.03 |
| Computing Infrastructure | 8 A100-80GB GPUs |
| Training Time | 13 Hours |{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the single-stage post-training phase for three different Multimodal Large Language Models (MLLMs): LLaVA-v1.6, Qwen2-VL, and Llama-3.2.  For each MLLM, it lists the values used for parameters such as the training epochs, batch size, maximum sequence length, learning rates for different components (projector and LLM, visual encoder), learning rate scheduler, weight decay, and warm-up ratio. These settings are crucial in fine-tuning the MLLMs for domain-specific tasks, and this table provides a comprehensive overview of the configurations.
> <details>
> <summary>read the caption</summary>
> Table 10: Hyper-Parameters for MLLM Single-Stage Post-Training.
> </details>

{{< table-caption >}}
| MLLM | LLaVA-v1.6 | Qwen2-VL | Llama-3.2 |
|---|---|---|---|
| Trainable | Full Model | Full Model | Full Model |
| Epoch | 1 | 1 | 1 |
| Batch Size | 128 | 128 | 128 |
| Max Seq Length | 6144 | 6144 | 6144 |
| LR<sub>projector & LLM</sub> | 2e-5 | 1e-5 | 5e-6 |
| LR<sub>visual encoder</sub> | 2e-6 | 1e-5 | 5e-6 |
| LR Scheduler | Cosine | Cosine | Cosine |
| Weight Decay | 0 | 0.1 | 0.1 |
| Warm-Up Ratio | 0.03 | 0.1 | 0.1 |{{< /table-caption >}}
> 🔼 This table presents the time taken (in hours) to perform single-stage post-training on various Multimodal Large Language Models (MLLMs). The training was conducted using eight NVIDIA A100-80GB GPUs.  Different models are listed, including LLaVA-v1.6-8B, Qwen2-VL-2B, and Llama-3.2-11B. The training times are provided for each MLLM, highlighting the computational resources required for domain-specific adaptation.
> <details>
> <summary>read the caption</summary>
> Table 11: Training Time (Hours) for MLLM Single-Stage Post-Training on 8 A100-80GB GPUs.
> </details>

{{< table-caption >}}
| Image-Caption | PMC<sup>Raw</sup> | PMC<sup>Refined</sup> | Recipe1M |
|---|---|---|---| 
| LLaVA-v1.6-8B | 21 | 23 | 6 |
| Qwen2-VL-2B | 3.5 | 4 | 1 |
| Llama-3.2-11B | 29 | 31 | 9 |{{< /table-caption >}}
> 🔼 This table lists the benchmark datasets used to evaluate the performance of multimodal large language models (MLLMs) after domain adaptation. For the biomedicine domain, it includes SLAKE (medical question answering), PathVQA (pathology image QA), VQA-RAD (radiology image QA), and PMC-VQA (medical multi-choice QA). Each dataset is further categorized by question type as open-ended or closed-ended.  For the food domain, it lists Recipe1M (recipe generation), Nutrition5K (food ingredient prediction), Food101 (food category classification), and FoodSeg103 (food multi-label classification). The table specifies the task type, dataset name, evaluation metric (accuracy, recall, F1 score, Rouge-L), and the number of test samples for each dataset.
> <details>
> <summary>read the caption</summary>
> Table 12: Specifications of the Evaluated Domain-Specific Task Datasets.
> </details>

{{< table-caption >}}
| Task | Description | Metric | Test Num |
|---|---|---|---| 
| *BioMed.* |  |  |  |
| SLAKE OPEN [25] | Medical question answering | Recall | 645 |
| SLAKE CLOSED [25] | Medical binary classification | Accuracy | 416 |
| PathVQA OPEN [15] | Medical question answering | Recall | 3357 |
| PathVQA CLOSED [15] | Medical binary classification | Accuracy | 3362 |
| VQA-RAD OPEN [19] | Medical question answering | Recall | 179 |
| VQA-RAD CLOSED [19] | Medical binary classification | Accuracy | 272 |
| PMC-VQA [57] | Medical multi-chioice QA | Accuracy | 2000 |
| *Food* |  |  |  |
| Recipe1M [38] | Recipe generation | Rouge-L | 1000 |
| Nutrition5K [42] | Ingredient prediction | Recall | 507 |
| Food101 [4] | Food category classification | Accuracy | 25250 |
| FoodSeg103 [49] | Food multi-label classification | F1 | 2135 |{{< /table-caption >}}
> 🔼 This table presents the prompt templates used for evaluating the performance of multimodal large language models (MLLMs) on various domain-specific tasks.  For each task dataset (SLAKE, PathVQA, VQA-RAD, PMC-VQA for biomedicine; Recipe1M, Nutrition5K, Food101, FoodSeg103 for food), it lists the specific question format used to prompt the MLLM and the expected format of the MLLM's response. The templates are designed to ensure consistent and comparable evaluations across different tasks and domains.
> <details>
> <summary>read the caption</summary>
> Table 13: Prompt Templates of the Evaluated Domain-Specific Task Datasets.
> </details>

{{< table-caption >}}
| Task | Instruction | Response |
|---|---|---|
| **BioMed.** |  |  |
| SLAKE | `{question}` | `{answer}` |
| PathVQA | `{question}` | `{answer}` |
| VQA-RAD | `{question}` | `{answer}` |
| PMC-VQA | Question: `{question}`
The choices are: `{options}` | `{option}` |
| **Food** |  |  |
| Recipe1M | `{question}` | `{recipe}` |
| Nutrition5K | What ingredients are used to make the dish in the image? | `{ingredients}` |
| Food101 | What type of food is shown in this image?
Choose one type from the following options:
`{food type options}` | `{food type}` |
| FoodSeg103 | Identify the food categories present in the image.
The available categories are: `{options}`
Please return a list of the selected food categories, formatted as a list of names like [candy, egg tart, french fries, chocolate]. | `{categories}` |{{< /table-caption >}}
> 🔼 Table 14 presents a detailed comparison of the performance of various Multimodal Large Language Models (MLLMs) on domain-specific tasks after post-training.  The models were trained using different methods for synthesizing training data (manual rules, GPT-4, GPT-4V, and the authors' proposed method) and different training pipelines (two-stage and single-stage). The table shows results for two domains: biomedicine and food, with different image-caption sources used for each domain.  A key finding highlighted in the caption is that single-stage training generally outperforms two-stage training when the authors' synthetic data is used, especially for recipe generation tasks. This is attributed to the two-stage approach causing catastrophic forgetting of knowledge learned in the initial stage during the second stage of training.  The table allows for a comprehensive analysis of various MLLM performance factors.
> <details>
> <summary>read the caption</summary>
> Table 14: Domain-Specific Task Performance of MLLMs after Post-Training with different synthetic data and training pipelines. The image-caption sources are Recipe1M, PMCR⁢a⁢wsuperscriptPMC𝑅𝑎𝑤\text{PMC}^{Raw}PMC start_POSTSUPERSCRIPT italic_R italic_a italic_w end_POSTSUPERSCRIPT and PMCR⁢e⁢f⁢i⁢n⁢e⁢dsuperscriptPMC𝑅𝑒𝑓𝑖𝑛𝑒𝑑\text{PMC}^{Refined}PMC start_POSTSUPERSCRIPT italic_R italic_e italic_f italic_i italic_n italic_e italic_d end_POSTSUPERSCRIPT, respectively. In most cases using our synthetic data, we find that single-stage training outperforms two-stage training on domain-specific tasks, particularly evident in the Recipe generation results for the food domain. Recall that in the two-stage training approach for the food domain, the model first trains on recipe captions and then on our synthetic tasks. We examine the task performance of LLaVA-v1.6-8B on Recipe generation and observe that the model achieves a score of 25.3 after the first stage on recipe captions. However, this score drastically decreases to 16.2 after the second stage. From this, we infer that the two-stage approach causes the model to catastrophically forget the task/knowledge learned in the first stage when transitioning to the second stage [30], leading to poorer performance after completing the second-stage training.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.19930/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19930/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}