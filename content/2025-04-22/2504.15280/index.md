---
title: "Seeing from Another Perspective: Evaluating Multi-View Understanding in MLLMs"
summary: "All-Angles Bench: A new benchmark evaluating MLLMs' multi-view scene understanding, revealing limitations in geometric & cross-view consistency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Scene Understanding", "🏢 UC Berkeley",]
showSummary: true
date: 2025-04-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15280 {{< /keyword >}}
{{< keyword icon="writer" >}} Chun-Hsiao Yeh et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15280" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15280" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15280/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-view understanding is a key challenge for MLLMs, which struggle with geometric consistency and cross-view correspondence. Existing benchmarks often fall short in evaluating these capabilities, leading to agent manipulation & navigation errors. The paper tackles this gap by introducing **All-Angles Bench**, a benchmark with over 2,100 question-answer pairs across 90 diverse scenes. It tests multi-view understanding skills like counting, pose estimation, and object manipulation.



The study evaluates 27 MLLMs, and exposes performance gaps with human ability. The **benchmarks reveal limitations** in handling occluded views and establishing camera poses. Chain-of-thought prompting yields limited improvement. The findings advocate specialized architectural refinements or training that builds multi-view awareness for better 3D perception.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current MLLMs struggle with multi-view geometric consistency and cross-view correspondence, especially with partially occluded views and establishing coarse camera poses. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Domain-specific refinements or modules that embed stronger multi-view awareness are needed to improve MLLMs' 3D scene understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The All-Angles Bench benchmark offers valuable insights for bridging the gap between MLLMs and human-level multi-view understanding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work matters as it spotlights MLLMs' shortcomings in multi-view understanding, urging development of specific architectures that consider the spatial geometry. It will help bridge the gap to improve human-level 3D scene understanding.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15280/x3.png)

> 🔼 All-Angles Bench is a benchmark dataset containing over 2,100 question-answer pairs from 90 diverse real-world scenes.  The dataset is designed to evaluate the multi-view understanding capabilities of large language models (LLMs). The figure displays three key aspects. The left and middle sections show an example question setup, illustrating multiple views of a single scene and the associated questions that test an LLM's ability to reason about geometric correspondence and cross-view alignment. The right section presents a bar chart visualizing the performance of six prominent LLMs across different question categories, revealing a significant performance gap compared to human-level accuracy. This visual representation demonstrates the dataset's complexity and the challenges in achieving robust multi-view scene understanding.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We present All-Angles Bench, a rich-annotated benchmark with over 2,100 Q&A pairs from 90 diverse scenes for evaluating multi-view understanding of MLLMs. Left and Middle: An example question setup of multiple views capturing the same scene and the corresponding questions. Right: Accuracies of six notable MLLMs across different question categories.
> </details>







### In-depth insights


#### Multi-View Defect
While 'Multi-View Defect' isn't present, we can discuss multi-view aspects in defect analysis. **Multi-view analysis** is crucial for robust defect detection. Analyzing an object from multiple viewpoints addresses limitations of single-view systems, such as occlusions or viewpoint-dependent features. **By integrating information** from various angles, a more complete representation of the object is built, facilitating accurate defect identification. **In machine learning**, this could involve training models on data captured from different cameras or using techniques like 3D reconstruction to create a comprehensive model. Challenges include aligning and calibrating multiple views, managing computational complexity, and handling varying lighting conditions. However, the **benefits in terms of accuracy and robustness** make multi-view approaches highly valuable.

#### Geo. UnderStand.
**Geometric understanding** in MLLMs is crucial for embodied AI, enabling consistent perception across diverse viewpoints. Current MLLMs often struggle with **geometric consistency** and **cross-view correspondence**, hindering navigation and manipulation. Benchmarks like All-Angles Bench reveal performance gaps compared to human-level proficiency. Challenges include **occlusion handling** and **camera pose estimation**. Future work should focus on domain-specific refinements and modules that enhance multi-view awareness to bridge the gap between MLLMs and human understanding. Tackling these limitations is key to real-world applications, specifically geometric reasoning of multi-view 3D scenes.

#### Cross-View Lack
**Cross-view understanding is critical for embodied agents** yet current MLLMs struggle with it. They often fail to **reconcile information from multiple viewpoints**, leading to errors in spatial reasoning and object identification. This deficiency stems from a lack of **geometric consistency** and challenges in establishing **cross-view correspondence**. Models often struggle to identify the same objects across views, particularly when views are **partially occluded**, and **camera pose estimation** remains a significant challenge. Addressing this gap requires domain-specific refinements, multi-view awareness modules and training data to improve cross-view consistency and performance.

#### New Benchmark
This research introduces a **new benchmark** for evaluating multi-view understanding in MLLMs. It addresses a gap in existing benchmarks by specifically assessing geometric consistency and cross-view correspondence capabilities. The benchmark uses a diverse set of real-world scenes annotated with multi-view question-answer pairs.  The **novelty lies in its focus** on tasks like counting, attribute identification, and camera pose estimation across multiple viewpoints.  Current MLLMs demonstrate a performance gap compared to human evaluators, suggesting they struggle with geometric reasoning and cross-view alignment. The benchmark thus provides valuable **insights into the limitations** of current MLLMs and a means of driving progress in this vital area.

#### CoT Struggles
The paper investigates MLLMs' struggles with chain-of-thought (CoT) reasoning, noting that while CoT prompting enhances performance in some tasks, it's **inconsistent** for multi-view understanding. This suggests that **simply providing linguistic reasoning cues isn't sufficient**. The need to go further by incorporating **domain-specific knowledge and spatial-aware modules**. Even when models produce correct answers, their reasoning may contain **logical inconsistencies**, or they may rely on **heuristic shortcuts** rather than genuine comprehension. This highlights the complex challenges in achieving robust multi-view reasoning in MLLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15280/x4.png)

> 🔼 All-Angles Bench is a benchmark dataset designed to thoroughly evaluate the multi-view understanding capabilities of large language models. It consists of over 2100 question-answer pairs across 90 diverse real-world scenes, covering six primary question types: counting, attribute identification, relative distance, relative direction, object manipulation, and camera pose estimation.  These question types are designed to assess various aspects of 3D scene understanding, including establishing correspondences between objects across different viewpoints and accurately determining relative object and camera positions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of All-Angles Bench. Our benchmark targets a comprehensive view of multi-view understanding, spanning six primary question types. These question types are designed to investigate several major aspects of 3D scene understanding, from creating correspondence between objects to associating relative object and camera poses.
> </details>



![](https://arxiv.org/html/2504.15280/x5.png)

> 🔼 This figure illustrates the three-stage pipeline used to construct the All-Angles Bench benchmark.  Stage one involves collecting 90 diverse multi-view scenes and designing six tasks focused on multi-view reasoning. Stage two uses an MLLM to generate initial questions, which are then refined and validated by human annotators to ensure accuracy and clarity.  Stage three systematically creates paired questions by rewording or changing viewpoints, while maintaining the original visual relationships to test the model's consistency across different views. Inconsistent or ambiguous pairs are removed in a final quality check. The counting and camera pose estimation tasks utilize all available viewpoints, whereas the other tasks use only two randomly selected viewpoints.
> <details>
> <summary>read the caption</summary>
> Figure 3: All-Angles Bench construction pipeline. (1) We collect and curate 90 diverse multi-view scenes and design six tasks that emphasize multi-view reasoning. (2) We generate initial questions via an MLLM, then refine and validate them through human annotation to ensure correctness, clarity, and domain relevance. (3) We create paired questions by systematically rephrasing or altering each view perspective while preserving their underlying visual correspondences to evaluate model’s cross-view consistency. A final quality-control step removes inconsistent or ambiguous pairs. Note that counting and camera pose estimation tasks utilize all available views per query, whereas other tasks employ two randomly selected viewpoints.
> </details>



![](https://arxiv.org/html/2504.15280/x6.png)

> 🔼 Figure 4 presents a statistical overview of the All-Angles Bench benchmark dataset.  The figure is composed of two parts: a pie chart and a bar chart. The pie chart shows the proportion of questions in the dataset that belong to each of the six multi-view understanding sub-tasks (counting, attribute identification, relative distance, relative direction, object manipulation, and camera pose estimation). The bar chart displays the percentage of questions that are primary questions (i.e., initial questions) versus paired questions (i.e., questions designed to test for consistency in the model’s response) for each sub-task.  This figure provides a comprehensive summary of the data composition and structure of the All-Angles Bench.
> <details>
> <summary>read the caption</summary>
> Figure 4: Statistical overview of All-Angles Bench. The pie chart shows the distribution of 6 sub-tasks of multi-view understanding. The bar plot illustrates the percentage breakdown by primary and paired question-answers of each sub-task.
> </details>



![](https://arxiv.org/html/2504.15280/x7.png)

> 🔼 This figure presents a comprehensive evaluation of 27 different Multi-Modal Large Language Models (MLLMs) across six sub-tasks focused on multi-view understanding.  The models are categorized into closed-source and open-source groups.  Performance is measured against human-level performance. The table highlights the top-performing model for each sub-task in deeper gray, and the second-best performing model in light gray, providing a clear visual comparison of the models' capabilities in handling multi-view scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Evaluation results for 27 MLLMs. We consolidate performance from both closed-source and open-source MLLM evaluations. We use deeper-gray to highlight the top result among all models in each sub-task, while light-gray marks the second-best result.
> </details>



![](https://arxiv.org/html/2504.15280/x8.png)

> 🔼 This figure shows the inconsistency rates of six different large language models (LLMs) across paired questions, highlighting their performance inconsistencies. GPT-40 shows a particularly high inconsistency rate (around 70%) on relative distance tasks, while Gemini-2.0-Flash and Claude-3.7-Sonnet exhibit more balanced performance across all tasks.  In contrast, Ovis2-34B and GPT-40 show significant variation in inconsistency across tasks. This illustrates the challenges that current LLMs face in consistent multi-view reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 6: Paired question-answers inconsistency across 6 MLLMs. We report the proportions of IC and CC + WW. Notably, GPT-4o struggles with relative distance (around 70% inconsistency). Gemini-2.0-Flash and Claude-3.7-Sonnet exhibit more balanced performance, whereas Ovis2-34B and GPT-4o vary considerably across tasks.
> </details>



![](https://arxiv.org/html/2504.15280/x9.png)

> 🔼 This figure demonstrates the challenges MLLMs face when performing multi-view counting tasks.  The task involves counting the number of people in a scene captured from multiple viewpoints. While MLLMs perform well when all individuals are fully visible in at least one viewpoint, their performance deteriorates significantly when information about individuals is fragmented across viewpoints (partial visibility).  The example highlights how GPT-40, instead of integrating information from all views to arrive at a consistent count, simply selects the largest count from any single viewpoint, thus demonstrating an inability to correctly reconcile fragmented information across multiple perspectives.
> <details>
> <summary>read the caption</summary>
> Figure 7: Complete- and Partial-visibility counting. While MLLMs often succeed when everyone is visible in one viewpoint, they sometimes fail to reconcile fragmented information across views, as shown by GPT‐4o occasionally picks the largest per‐view count rather than reconciling individuals across views.
> </details>



![](https://arxiv.org/html/2504.15280/x10.png)

> 🔼 This figure analyzes the effectiveness of three chain-of-thought (CoT) prompting strategies (Zero-Shot CoT, Self-Consistency, and Identification CoT) on three large language models (GPT-4o, Ovis2-34B, InternVL2.5-38B). The models are tested on tasks requiring multi-view understanding in both complete-view and partial-view settings.  The results reveal that CoT methods improve performance on partial-view scenarios for GPT-4o but have a diminished impact on InternVL2.5-38B, which already performs well in multi-view counting. This suggests that relying solely on improved prompting strategies is insufficient to improve multi-view understanding and specialized training is necessary for success on the All-Angles Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 8: Analysis of reasoning prompt strategies. We report the effectiveness of Zero-Shot CoT, Self-Consistency, and Identification CoT — across GPT-4o, Ovis2-34B, and InternVL2.5-38B under complete-view and partial-view settings. While CoT variations delivers notable gains in partial-visibility scenarios in GPT-4o, its impact diminishes for models already be robust at multi-view counting (e.g., InternVL2.5-38B). These results indicate that refining reasoning prompt alone is insufficient; specialized multi-view training may be necessary to excel on All-Angles Bench.
> </details>



![](https://arxiv.org/html/2504.15280/x11.png)

> 🔼 This figure visualizes the challenges faced by large language models (LLMs) in understanding multi-view scenes.  While GPT-4 and Gemini-2.0-Flash show reasonable skill at reconstructing a scene from a single viewpoint, they struggle to correctly align and reason across multiple viewpoints.  The example demonstrates how an incorrect estimation of camera positions leads to errors in tasks like tracking an object's movement across different views.  This highlights the need for improved multi-view consistency in current LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization of multi-view scene reconstruction and camera pose alignment. Although GPT-4o and Gemini-2.0-Flash both display moderate proficiency in single-view scene reconstruction, they struggle when aligning two different camera perspectives. Misidentifying camera poses leads to incorrect directional reasoning — such as tracking a person’s trajectory from View 1 to View 2 which needs multi-view consistency in current MLLMs.
> </details>



![](https://arxiv.org/html/2504.15280/x12.png)

> 🔼 This figure visualizes the results of camera pose estimation task.  The models were asked to order camera views in clockwise order.  While the models often provided detailed reasoning in their answers, they consistently failed to correctly order the views, highlighting a significant gap in their geometric understanding and cross-view correspondence abilities.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visualization of camera pose estimation. When asked to order the camera poses in clockwise order, MLLMs fail completely despite providing detailed reasonings.
> </details>



![](https://arxiv.org/html/2504.15280/x13.png)

> 🔼 This figure shows a streamlined guideline designed to help annotators verify the quality of multiple-choice questions generated by an MLLM.  It provides a step-by-step process for checking clarity, grammar, accuracy and relevance.  Specific issues to avoid (like vague phrasing or MLLM hallucinations) are highlighted along with examples of how to improve question quality.
> <details>
> <summary>read the caption</summary>
> Figure 11: The streamlined version of annotation guideline for annotators to follow. It outlines key verification steps, common pitfalls, and examples to help annotators improve question clarity, accuracy, and answer quality.
> </details>



![](https://arxiv.org/html/2504.15280/x14.png)

> 🔼 The figure showcases the data structure used to store the question-answer pairs in the All-Angles Bench.  The left panel displays a sample JSON entry, illustrating the key-value pairs that constitute each data point. These include metadata such as the question index, dataset source, task type, and file paths to the associated images. The right panel shows a screenshot of the graphical user interface (GUI) of the annotation platform. This GUI enabled efficient review and refinement of annotations by human annotators. The platform is intuitive, allowing annotators to easily view multi-view images, modify questions, adjust answer choices, and update annotations.
> <details>
> <summary>read the caption</summary>
> Figure 12: Left: A structured JSON representation of a question-answer pair. Right: A snapshot of the GUI-based Annotation Platform used for reviewing and refining annotations. Best viewed zoomed in for details.
> </details>



![](https://arxiv.org/html/2504.15280/x15.png)

> 🔼 This figure shows a before-and-after comparison of a question from the All-Angles benchmark that initially contained ambiguities. The initial version of the question (before modification) is shown alongside the finalized version that resulted from multiple annotators reviewing and refining the question to improve its clarity and consistency.  The differences highlight how collaborative review can clarify unclear wording and improve the accuracy and consistency of the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 13: Comparison of a flagged ambiguous case before modification and its finalized version after cross-checking. The initial annotation was reviewed by multiple annotators, with ambiguities resolved through discussions to ensure clarity and consistency.
> </details>



![](https://arxiv.org/html/2504.15280/x16.png)

> 🔼 This figure shows the prompt used for the Identification Chain of Thought (CoT) method. The method is designed to improve the accuracy of counting objects in scenes with partial visibility by prompting the large language model (LLM) to systematically list each entity across all views before providing the final answer. This is done to avoid double-counting and improve the accuracy of the result. The prompt guides the LLM to follow three main steps: generate a detailed description of each object; cross-check these descriptions across all views to avoid counting the same object multiple times; and provide the final count of unique objects. The detailed structure and instructions of the prompt make it easier for the LLMs to reason through the counting task more effectively, leading to more accurate results in scenarios with partial visibility.
> <details>
> <summary>read the caption</summary>
> Figure 14: Our proposed Identification CoT prompt. To design for counting tasks with partial-visibility, our prompt guides the MLLM to systematically list each target entity across all views.
> </details>



![](https://arxiv.org/html/2504.15280/x17.png)

> 🔼 This figure compares the performance of different large language models (LLMs) on a multi-view counting task under various prompting strategies.  It shows the baseline performance without prompting, and the results after applying three different prompting methods (Zero-Shot CoT, Self-Consistency, and Identification CoT).  The comparison focuses on a specific scene (Case 1) and highlights the differences in how each LLM answers the question of counting people in the scene given multiple viewpoints, with and without the aid of different reasoning prompts. The goal is to demonstrate the impact of prompting techniques on improving the accuracy and consistency of the LLM's responses in complex multi-view scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 15: Comparison of model outputs on the same questions under different prompting methods. (Case 1)
> </details>



![](https://arxiv.org/html/2504.15280/x18.png)

> 🔼 This figure displays a comparison of how different large language models (LLMs) respond to the same question regarding counting the number of people in a scene, using various prompting methods.  The models' performance is analyzed under three different prompting strategies: baseline (no prompt), zero-shot chain-of-thought (CoT), and the proposed identification CoT.  The figure shows the visual inputs (multiple views of the same scene), the baseline answer, and the answers generated using the different prompting strategies for each LLM. The results illustrate the impact of prompting techniques on the LLMs' ability to correctly identify and count objects in a multi-view scenario.
> <details>
> <summary>read the caption</summary>
> Figure 16: Comparison of model outputs on the same questions under different prompting methods. (Case 2)
> </details>



![](https://arxiv.org/html/2504.15280/x19.png)

> 🔼 This figure displays example questions from the All-Angles Bench dataset.  Each example shows a set of four images from different viewpoints of the same scene, followed by a question testing various aspects of multi-view understanding.  These aspects include identifying objects across views (attribute identification), judging relative distances (relative distance), predicting object movement (object manipulation), counting objects (counting), determining the direction objects are facing (relative direction), and estimating camera positions (camera pose estimation).  The questions are multiple choice.
> <details>
> <summary>read the caption</summary>
> Figure 17: All-Angles Bench Samples (Part I)
> </details>



![](https://arxiv.org/html/2504.15280/x20.png)

> 🔼 This figure displays several example questions from the All-Angles Bench benchmark dataset. Each example shows a multiple-choice question accompanied by four different views of the same scene. The questions cover six primary question types: attribute identification, relative distance, object manipulation, counting, relative direction, and camera pose estimation. These examples demonstrate the diversity and complexity of the benchmark, which tests the ability of large language models to understand and reason about multi-view scenes.
> <details>
> <summary>read the caption</summary>
> Figure 18: All-Angles Bench Samples (Part II)
> </details>



![](https://arxiv.org/html/2504.15280/x21.png)

> 🔼 This figure displays examples of paired question-answer pairs from the All-Angles Bench benchmark. Each example shows a primary question-answer pair and a corresponding paired question-answer pair. The paired question-answer pairs are designed to test the model's ability to understand multiple viewpoints and handle different view variations.
> <details>
> <summary>read the caption</summary>
> Figure 19: Paired Data Samples (Part I)
> </details>



![](https://arxiv.org/html/2504.15280/x22.png)

> 🔼 This figure displays paired question-answer examples from the All-Angles Bench dataset.  Each pair demonstrates how a question can be rephrased or slightly altered while maintaining the same underlying visual context and correct answer. The pairs are designed to test the models' ability to consistently reason about multi-view scenarios and not simply rely on specific wordings or question structures. The question types shown include Attribute Identification, Relative Distance, Object Manipulation, Relative Direction, and Camera Pose Estimation.
> <details>
> <summary>read the caption</summary>
> Figure 20: Paired Data Samples (Part II)
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15280/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15280/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}