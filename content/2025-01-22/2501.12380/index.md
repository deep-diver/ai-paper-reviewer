---
title: "MMVU: Measuring Expert-Level Multi-Discipline Video Understanding"
summary: "MMVU: a new benchmark pushes multimodal video understanding to expert level, revealing limitations of current models and paving the way for more advanced AI."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Yale NLP",]
showSummary: true
date: 2025-01-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.12380 {{< /keyword >}}
{{< keyword icon="writer" >}} Yilun Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.12380" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.12380" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.12380/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing video understanding benchmarks primarily focus on general-purpose tasks, lacking evaluation of expert-level reasoning in specialized domains.  This creates a gap in assessing foundation models' capabilities in knowledge-intensive video understanding, particularly critical for fields like healthcare and science.  The lack of comprehensive benchmarks hinders the development of more robust and capable AI systems.

The paper introduces MMVU, a comprehensive benchmark with 3000 expert-annotated questions across four disciplines.  MMVU's key advancements are its focus on expert-level reasoning using domain-specific knowledge, human expert annotation, and inclusion of reasoning rationales.  Evaluation of 32 models reveals a significant gap between model and human performance, offering valuable insights for future research and development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MMVU benchmark for expert-level multi-discipline video understanding was introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current state-of-the-art models still fall short of human performance on MMVU. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Chain-of-thought prompting generally improves model performance compared to direct answering. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the critical need for evaluating foundation models' ability to handle expert-level knowledge in video understanding**, a largely unexplored area.  Its comprehensive benchmark, MMVU, and in-depth analysis provide **valuable insights for future advancements in this field**, particularly for specialized domains. This work **directly contributes to the development of more robust and capable multimodal AI systems**.

------
#### Visual Insights



![](https://arxiv.org/html/2501.12380/x5.png)

> 🔼 MMVU is a benchmark dataset for evaluating multimodal foundation models' ability to understand and reason with videos at an expert level.  It contains 3000 expert-annotated question-answer pairs across 27 subjects within four core disciplines: Science, Healthcare, Humanities & Social Sciences, and Engineering. The questions are designed to challenge models' knowledge and reasoning capabilities by requiring them to analyze specialized videos and apply domain-specific expertise.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Overview of the \gradientRGBMMVU53,93,20310,10,80 benchmark. \gradientRGBMMVU53,93,20310,10,80 includes 3,000 expert-annotated examples, covering 27 subjects across four core disciplines. It is specifically designed to assess multimodal foundation models in expert-level, knowledge-intensive video understanding and reasoning tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="id6.3.3">
<tr class="ltx_tr" id="id4.1.1.1">
<td class="ltx_td ltx_align_center" id="id4.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="id4.1.1.1.1.1" style="position:relative; bottom:-1.8pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="25" id="id4.1.1.1.1.1.g1" src="x2.png" width="25"/></span></td>
<td class="ltx_td ltx_align_left" id="id4.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="id4.1.1.1.2.1">Project Page:</span></td>
<td class="ltx_td ltx_align_left" id="id4.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><a class="ltx_ref ltx_href" href="https://mmvu-benchmark.github.io" title=""><span class="ltx_ref ltx_nolink ltx_path ltx_font_typewriter">mmvu-benchmark.github.io</span></a></td>
</tr>
<tr class="ltx_tr" id="id5.2.2.2">
<td class="ltx_td ltx_align_center" id="id5.2.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="id5.2.2.2.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id5.2.2.2.1.1.g1" src="x3.png" width="22"/></span></td>
<td class="ltx_td ltx_align_left" id="id5.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="id5.2.2.2.2.1">\gradientRGB</span><span class="ltx_text ltx_font_bold" id="id5.2.2.2.2.2">MMVU53,93,20310,10,80 Data:</span>
</td>
<td class="ltx_td ltx_align_left" id="id5.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/yale-nlp/MMVU" title=""><span class="ltx_ref ltx_nolink ltx_path ltx_font_typewriter">huggingface.co/datasets/yale-nlp/MMVU</span></a></td>
</tr>
<tr class="ltx_tr" id="id6.3.3.3">
<td class="ltx_td ltx_align_center" id="id6.3.3.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="id6.3.3.3.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id6.3.3.3.1.1.g1" src="x4.png" width="20"/></span></td>
<td class="ltx_td ltx_align_left" id="id6.3.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_ERROR undefined" id="id6.3.3.3.2.1">\gradientRGB</span><span class="ltx_text ltx_font_bold" id="id6.3.3.3.2.2">MMVU53,93,20310,10,80 Code:</span>
</td>
<td class="ltx_td ltx_align_left" id="id6.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"><a class="ltx_ref ltx_href" href="https://github.com/yale-nlp/MMVU" title=""><span class="ltx_ref ltx_nolink ltx_path ltx_font_typewriter">github.com/yale-nlp/MMVU</span></a></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the MMVU benchmark with other existing multi-disciplinary benchmarks used for evaluating foundation models.  It details key characteristics of each benchmark, including the type of questions (multiple-choice, open-ended, true/false), the source of the data used to create the questions, and whether the benchmark provides detailed solutions, rationales, and domain-specific knowledge for each question. This allows for a comparison of the complexity and depth of reasoning required by each benchmark, and helps to highlight the unique features of MMVU.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between \gradientRGBMMVU53,93,20310,10,80 and existing multi-discipline benchmarks for evaluating foundation models. In the “QA Type” column, “MC” denotes Multiple-Choice questions, “Open” denotes Open-ended questions, and “T/F” denotes True-False questions.
> </details>





### In-depth insights


#### MMVU Benchmark
The MMVU benchmark represents a notable contribution to the field of video understanding by providing a high-quality, expert-level, multi-disciplinary evaluation dataset.  Its key strength lies in its focus on **expert-level reasoning**, moving beyond simple visual perception to assess models' ability to apply domain-specific knowledge.  The **textbook-guided annotation process** ensures both breadth and depth in the questions, enhancing the evaluation's rigor.  Furthermore, the inclusion of **reasoning rationales and domain knowledge** allows for fine-grained error analysis, providing valuable insights for future model development.  While current models show promise, MMVU highlights the significant challenge of achieving human-level performance in this complex task, suggesting that future research should focus on bridging the gap between model capabilities and expert-level reasoning.  The benchmark's **multi-disciplinary nature** also offers a broader and more realistic evaluation compared to existing benchmarks focused on specific domains.

#### Expert Annotation
Expert annotation in research papers is a crucial process that significantly impacts the quality and reliability of the resulting data.  It involves engaging experts in a specific field to carefully label or annotate data points, such as images, videos, or text, according to predefined guidelines. **The expertise of annotators is key**, ensuring that the annotations are accurate, consistent, and reflect the nuances of the domain.  This approach improves data quality by reducing errors and biases that might arise from automated or less experienced annotation methods.  **High-quality annotations are particularly important** when dealing with complex or subtle concepts where machine learning algorithms might struggle.  However, expert annotation is resource-intensive, requiring significant time, effort, and financial investments. **Careful planning and management are essential** to ensure efficiency and effectiveness in the process, potentially incorporating quality control measures to maintain accuracy and consistency.  Despite the challenges, expert annotation remains a valuable tool in building accurate and reliable datasets, which can facilitate advancements in various fields, including machine learning research and application.

#### Model Evaluation
A robust model evaluation is crucial for assessing the effectiveness of any machine learning model, especially in complex domains like video understanding.  **A multifaceted approach is needed**, incorporating both quantitative and qualitative methods. Quantitative evaluations often focus on metrics such as accuracy, precision, recall, and F1-score, but **these should be carefully selected and interpreted in the context of the specific task and dataset**.  Qualitative analysis, on the other hand, involves a deeper examination of model outputs, including error analysis and case studies, which can reveal valuable insights not captured by numerical metrics alone.  For video understanding, **evaluating the model's ability to handle temporal dynamics and integrate visual and contextual information is particularly important**. A comprehensive model evaluation should also consider the model's efficiency, scalability, and ethical implications, providing a holistic view of its capabilities and limitations.

#### Qualitative Analysis
A qualitative analysis of a research paper would delve into a detailed examination of the findings, moving beyond mere statistics to explore the nuances and complexities of the data.  It would likely involve in-depth case studies, perhaps focusing on instances where the model's performance deviated significantly from expected results.  **Error analysis** would be a crucial component, categorizing mistakes by type (e.g., visual perception errors, reasoning failures) and searching for recurring patterns. This approach could highlight **limitations in the model's understanding of specific concepts or its ability to integrate different forms of information** such as visual and textual inputs.  By examining individual cases, researchers would potentially uncover subtle issues not apparent in aggregate statistics, revealing the model's strengths and weaknesses with greater granularity. **The integration of human expert review** is crucial to providing context and verifying the accuracy of the analysis.  Ultimately, a well-executed qualitative analysis helps refine the model and potentially lead to advancements in the field.

#### Future Directions
Future research should prioritize **developing more robust and comprehensive benchmarks** for evaluating multimodal foundation models, particularly focusing on expert-level reasoning in specialized domains.  This includes **expanding the scope of benchmarks beyond static images and text** to encompass more diverse modalities like video, which better reflects real-world scenarios and expert workflows.  Addressing the limitations of current models revealed in the analysis will require **exploring novel architectures and training techniques** such as improving visual perception and incorporating domain-specific knowledge more effectively.  **Advanced reasoning methods like chain-of-thought prompting show promise** but require further refinement and broader application to achieve human-level performance. Finally, **investigating the interaction between different modalities** and understanding how models integrate information from multiple sources is crucial for advancing the field.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.12380/x6.png)

> 🔼 The figure illustrates the three-stage pipeline for creating the MMVU benchmark dataset.  Stage 1 (Preliminary Setup) involves selecting subjects through a user study and recruiting and training expert annotators.  Stage 2 (Textbook-Guided QA Annotation) details the process of collecting videos with Creative Commons licenses, creating question-answer pairs, and annotating detailed solutions and relevant domain knowledge.  The final stage (Quality Control) describes the measures used to ensure data quality, including expert validation and compensation for annotator time spent.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of the \gradientRGBMMVU53,93,20310,10,80 benchmark construction pipeline.
> </details>



![](https://arxiv.org/html/2501.12380/x7.png)

> 🔼 Figure 3 shows an example from the MMVU dataset, specifically focusing on a chemistry question.  The figure highlights the comprehensive nature of the dataset by showcasing the question, multiple-choice options, relevant textbook information, and a detailed, step-by-step expert-annotated reasoning process. The inclusion of textbook references and rationales demonstrates the level of detail and expert-level knowledge-intensive reasoning that MMVU aims to evaluate in multimodal foundation models.
> <details>
> <summary>read the caption</summary>
> Figure 3:  A dataset example from \gradientRGBMMVU53,93,20310,10,80 with the discipline of chemistry. Each example in \gradientRGBMMVU53,93,20310,10,80 includes expert annotation of relevant domain knowledge and step-by-step reasoning rational.
> </details>



![](https://arxiv.org/html/2501.12380/x8.png)

> 🔼 Figure 4 presents a bar chart comparing the performance of various multimodal foundation models on the MMVU validation set using both Chain-of-Thought (CoT) prompting and direct answering.  For each model, two bars are displayed: one representing accuracy when using CoT and another showing accuracy without CoT. This visualization allows for a direct comparison of how much the use of CoT improves model performance for each model.  The models are ordered by their overall performance on the validation set. More detailed results are available in section C.1 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of model performance between CoT and direct answering on the validation set. The full results are provided in §C.1.
> </details>



![](https://arxiv.org/html/2501.12380/x9.png)

> 🔼 Figure 5 presents two examples highlighting common errors made by multimodal foundation models when processing video data for complex reasoning tasks.  The left panel illustrates a 'visual perception error' where the model incorrectly interprets the traversal order of a binary tree in a video, demonstrating a failure to accurately perceive visual information. The right panel showcases a 'misuse or lack of domain knowledge in reasoning' error. Here, the model incorrectly associates the presence of bats (shown in a video about a virus) with poor sanitation, leading to a false conclusion about the type of virus.  These examples demonstrate the challenges models face in correctly integrating visual and domain-specific knowledge for accurate answers.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Illustrations of visual perception error and misuse or lack domain knowledge in reasoning.
> </details>



![](https://arxiv.org/html/2501.12380/extracted/6146392/figures/interface/interface1.png)

> 🔼 This figure shows the first step in the MMVU benchmark's annotation process.  Annotators must provide a YouTube video URL and select a question type (multiple choice or open-ended). The system then automatically checks if the video has a Creative Commons license using the YouTube Data API v3. If the license is invalid, an error message appears, and submission is blocked.  Successful submission proceeds to step 2 of the annotation process.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Annotation Interface - Step 1: Video Collection. In this step, annotators are required to input the YouTube video URL and select the desired question type. The backend system of the interface will automatically verify whether the provided YouTube video is under a Creative Commons license using the YouTube Data API v3. If the video does not meet this requirement, as shown in the figure, a warning message will be displayed, and the submission will be blocked. Once a valid example is submitted, the annotation interface will proceed to Step 2, which is illustrated in the following two figures.
> </details>



![](https://arxiv.org/html/2501.12380/extracted/6146392/figures/interface/interface2.png)

> 🔼 This figure shows a screenshot of the annotation interface used in the MMVU benchmark creation process.  Specifically, it depicts Step 2 of the annotation process, focusing on the creation of multiple-choice questions.  The interface allows annotators to input a video's start and end times, the question text, multiple-choice options, the correct answer, relevant domain knowledge (with links to Wikipedia pages), and the reasoning process behind the correct answer.  The annotator can shuffle the options and add or remove Wikipedia links as needed.  This detailed interface ensures the quality and consistency of the expert-level annotations in the MMVU benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Annotation Interface - Step 2: Multiple-choice Question Annotation.
> </details>



![](https://arxiv.org/html/2501.12380/extracted/6146392/figures/interface/interface3.png)

> 🔼 This figure shows a screenshot of the annotation interface used in the MMVU benchmark creation process.  Specifically, it depicts Step 2 of the annotation process, where annotators are creating and annotating open-ended questions. The interface displays a video player showing a segment of a video, fields to enter start and end times of the relevant video segment, spaces to add question text, enter the open-ended answer, specify the relevant textbook and chapter, enter related domain knowledge (linking to Wikipedia pages), and detail the reasoning process used to arrive at the answer. The interface also allows annotators to add or remove Wikipedia links supporting the domain knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Annotation Interface - Step 2: Open-ended Question Annotation.
> </details>



![](https://arxiv.org/html/2501.12380/extracted/6146392/figures/interface/interface4.png)

> 🔼 This figure shows the interface used for validating annotations in the MMVU benchmark. Human validators carefully check each annotation, ensuring consistency with benchmark criteria and guidelines. If corrections are needed, detailed feedback is given to the annotator, who then revises and resubmits their work.  Low-quality annotations that cannot be improved are discarded.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Validation Interface. Human validators are required to thoroughly review each annotation feature to ensure alignment with benchmark construction criteria and annotation guidelines. If revisions are not feasible, detailed feedback must be provided to the original annotator, who will then revise and resubmit the annotation for a second review. Additionally, validators may discard examples deemed to be of low quality and unlikely to meet the desired criteria through revision.
> </details>



![](https://arxiv.org/html/2501.12380/x10.png)

> 🔼 This figure shows the Chain-of-Thought (CoT) prompt used in the MMVU benchmark for answering multiple-choice questions.  The prompt guides the model to answer the question step-by-step, explaining its reasoning process clearly before providing the final answer. This approach encourages more detailed and transparent reasoning from the model, making it easier to analyze the model's thought process and identify potential weaknesses.  The prompt is adapted from the MMMU-Pro benchmark, indicating a lineage and methodological connection to prior work in evaluating multi-modal models. The use of CoT in this context is a significant aspect of how MMVU aims to assess expert-level reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 10: CoT reasoning prompt, adopted from MMMU-Pro Yue et al. (2024b), for answering multiple-choice question.
> </details>



![](https://arxiv.org/html/2501.12380/x11.png)

> 🔼 This figure shows the Chain-of-Thought (CoT) prompt used in the MMVU benchmark for open-ended questions.  The prompt instructs the model to answer the question step-by-step, explaining its reasoning process clearly before providing the final answer.  The format for the final answer is specified to ensure consistency. The prompt includes placeholders for the question and the processed video input, highlighting the multimodal nature of the task.
> <details>
> <summary>read the caption</summary>
> Figure 11: CoT reasoning prompt for answering open-ended question.
> </details>



![](https://arxiv.org/html/2501.12380/x12.png)

> 🔼 This figure shows the prompt used in the MMVU benchmark for multiple-choice questions when the model is instructed to directly answer without providing any reasoning steps.  It's a more straightforward approach than the chain-of-thought prompting. The prompt includes the question, the multiple-choice options (A-E), and the visual information from the video. The model is instructed to simply output the letter corresponding to the correct answer, without providing any intermediate reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 12: Direct Answer prompt, adopted from MMMU-Pro Yue et al. (2024b), for answering multiple-choice question.
> </details>



![](https://arxiv.org/html/2501.12380/x13.png)

> 🔼 This figure shows the prompt used in the MMVU benchmark for evaluating the models' ability to directly answer open-ended questions without generating intermediate reasoning steps.  The prompt instructs the model to directly output the final answer using only the provided question and video information, without any intermediate reasoning or step-by-step explanation.
> <details>
> <summary>read the caption</summary>
> Figure 13: Direct Answer prompt for answering open-ended question.
> </details>



![](https://arxiv.org/html/2501.12380/x14.png)

> 🔼 This figure shows the evaluation prompt used to assess the accuracy of the model's responses to multiple-choice questions.  The prompt instructs the evaluator (likely GPT-4) to extract the model's answer, then compare it to the ground truth, and finally output a JSON object indicating whether the extracted answer is correct. This process ensures a standardized and objective evaluation of the model's performance on multiple choice questions.
> <details>
> <summary>read the caption</summary>
> Figure 14: Evaluation prompt used for assessing the accuracy of multi-choice QA.
> </details>



![](https://arxiv.org/html/2501.12380/x15.png)

> 🔼 This figure shows the evaluation prompt used to assess the accuracy of open-ended questions in the MMVU benchmark.  The prompt instructs the evaluator (in this case, GPT-4) to extract the final answer from the model's response and compare it to the ground truth answer.  It emphasizes that a correct answer doesn't need to be verbatim but should reflect the same technique or concept as the ground truth. The prompt also specifies the expected output format: a JSON object containing the extracted answer (as a string) and a boolean value indicating whether the answer is correct.
> <details>
> <summary>read the caption</summary>
> Figure 15: Evaluation prompt used for assessing the accuracy of open-ended QA.
> </details>



![](https://arxiv.org/html/2501.12380/x16.png)

> 🔼 This bar chart compares the performance of various multimodal foundation models on the MMVU validation set, using both Chain-of-Thought (CoT) reasoning and direct answering approaches.  For each model, two bars represent its accuracy scores, one for CoT and one for direct answering. This allows for a visual comparison of how each model's performance changes when using CoT prompting versus directly generating an answer. The chart helps to illustrate the effectiveness of CoT prompting in improving model performance on the MMVU benchmark.  Models are ranked by their CoT accuracy score in descending order.
> <details>
> <summary>read the caption</summary>
> Figure 16: Comparison of model performance between CoT reasoning and direct answering on the validation set.
> </details>



![](https://arxiv.org/html/2501.12380/x17.png)

> 🔼 This figure shows an example from the MMVU benchmark where the model incorrectly identifies a thermodynamic process.  The model is shown the animation of an adiabatic compression.  The correct answer is adiabatic compression (B), because the gas is thermally isolated and returns to its original state through compression. However, the model incorrectly identifies the process as adiabatic expansion (D). The model's reasoning is based on a misinterpretation of the graph showing pressure versus volume, and a failure to account for the thermal isolation of the system. This illustrates the challenges of accurately assessing visual information and applying domain knowledge in video understanding.
> <details>
> <summary>read the caption</summary>
> Figure 17: An error case of Thermodynamics.
> </details>



![](https://arxiv.org/html/2501.12380/x18.png)

> 🔼 The figure shows a model's incorrect interpretation of a video depicting a change in a circuit's resistance. The model hallucinates the presence of water and misinterprets the change in resistance as a change in deformation, demonstrating a visual perception error.
> <details>
> <summary>read the caption</summary>
> Figure 18: An error case of Electromagnetism.
> </details>



![](https://arxiv.org/html/2501.12380/x19.png)

> 🔼 This figure shows an example where the model incorrectly identifies the cinematic technique used in a video.  The video shows a dolly zoom, a technique that creates a visual distortion effect by simultaneously adjusting the focal length of the lens while the camera is moving. However, the model incorrectly identifies the technique as panning, where the camera simply moves horizontally. This highlights a failure in the model's ability to accurately perceive and interpret visual motion in video.
> <details>
> <summary>read the caption</summary>
> Figure 19: An error case of Art.
> </details>



![](https://arxiv.org/html/2501.12380/x20.png)

> 🔼 The figure shows an example where the model incorrectly identifies the algorithm shown in a video. The video depicts a selection sort algorithm, where the algorithm repeatedly finds the minimum element from the unsorted part and puts it at the beginning. However, the model mistakenly identifies the array indices as the values themselves and therefore incorrectly identifies the algorithm as a selection sort. This highlights the model's difficulty in accurately interpreting visual information and applying domain-specific knowledge in algorithm recognition.
> <details>
> <summary>read the caption</summary>
> Figure 20: An error case of Computer Science.
> </details>



![](https://arxiv.org/html/2501.12380/x21.png)

> 🔼 The figure shows an example where the model incorrectly identifies a resistor as an inductor in a circuit diagram. This misidentification leads to an incorrect conclusion about the type of filter implemented in the circuit.  The model's reasoning process is detailed, demonstrating its reliance on visual information and domain knowledge, but also highlighting a gap in understanding basic electrical components.
> <details>
> <summary>read the caption</summary>
> Figure 21: An error case of Electrical Engineering.
> </details>



![](https://arxiv.org/html/2501.12380/x22.png)

> 🔼 The figure showcases a qualitative analysis case study focusing on a model's error in the Pharmacy discipline within the MMVU benchmark.  The model misinterprets the visual depiction of an embryo transfer procedure. Instead of correctly identifying the procedure as embryo transfer, the model hallucinates and describes the process as fetal development. This misidentification stems from the model's inaccurate understanding of the visual elements presented in the video and a misuse of domain-specific knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 22: An error case of Pharmacy.
> </details>



![](https://arxiv.org/html/2501.12380/x23.png)

> 🔼 The figure shows a model's error in identifying a sorting algorithm from a video.  The video depicts a selection sort, where elements are repeatedly selected and placed in their correct sorted position. The model, however, misidentifies the algorithm as a bubble sort, demonstrating a failure to accurately perceive and reason over the visual steps of the sorting process and a misuse of domain-specific knowledge about visual representations of algorithms.
> <details>
> <summary>read the caption</summary>
> Figure 23: An error case of Computer Science.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.SS0.SSS0.Px1.7.7.7">
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S2.SS0.SSS0.Px1.7.7.7.8.1" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.8.1.1">Dataset</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S2.SS0.SSS0.Px1.7.7.7.8.2" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.8.2.1">QA Type</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S2.SS0.SSS0.Px1.7.7.7.8.3" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.8.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.8.3.1.1" style="width:159.3pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.8.3.1.1.1">Data Source</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S2.SS0.SSS0.Px1.7.7.7.8.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1.1">
<span class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1.1.1.1.1">College</span></span></span>
<span class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1.1.2.1" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.8.4.1.1.1.1.2.1.1">Level?</span></span></span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="2" id="S2.SS0.SSS0.Px1.7.7.7.8.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.8.5.1">Detailed Solution</span></td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.9.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.9.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.9.1.1.1" style="width:25.6pt;"></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.9.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.9.2.1">  Rational?</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.9.3" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.9.3.1">Knowledge?</span></td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.10">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="5" id="S2.SS0.SSS0.Px1.7.7.7.10.1" style="padding-left:1.5pt;padding-right:1.5pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S2.SS0.SSS0.Px1.7.7.7.10.1.1">Text</em></td>
<td class="ltx_td ltx_border_t" id="S2.SS0.SSS0.Px1.7.7.7.10.2" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.11.1" style="padding-left:1.5pt;padding-right:1.5pt;">MMLU <cite class="ltx_cite ltx_citemacro_cite">Hendrycks et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib60" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.11.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.11.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.11.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.11.3.1.1" style="width:159.3pt;">Exam, course, textbook</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.11.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.11.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.11.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.11.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.11.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.11.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.1.1.1.1.2" style="padding-left:1.5pt;padding-right:1.5pt;">MMLU-Pro <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib144" title="">2024d</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.1.1.1.1.3" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.1.1.1.1.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.1.1.1.1.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1" style="width:159.3pt;">Datasets <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1"><semantics id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1a"><mo id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1b"><ci id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S2.SS0.SSS0.Px1.1.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> Human &amp; LLM augment</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.1.1.1.1.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.1.1.1.1.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.1.1.1.1.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.1.1.1.1.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.1.1.1.1.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.1.1.1.1.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.12.1" style="padding-left:1.5pt;padding-right:1.5pt;">C-Eval <cite class="ltx_cite ltx_citemacro_cite">Huang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib64" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.12.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.12.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.12.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.12.3.1.1" style="width:159.3pt;">Exam</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.12.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.12.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.12.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.12.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.12.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.12.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.2.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.2.2.2.2.2" style="padding-left:1.5pt;padding-right:1.5pt;">SciEval <cite class="ltx_cite ltx_citemacro_cite">Sun et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib130" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.2.2.2.2.3" style="padding-left:1.5pt;padding-right:1.5pt;">MC, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.2.2.2.2.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.2.2.2.2.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1" style="width:159.3pt;">Internet, datasets <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1"><semantics id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1a"><mo id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1b"><ci id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S2.SS0.SSS0.Px1.2.2.2.2.1.1.1.m1.1d">→</annotation></semantics></math> LLM rewrite</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.2.2.2.2.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.2.2.2.2.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.2.2.2.2.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.2.2.2.2.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.2.2.2.2.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.2.2.2.2.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.3.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.3.3.3.3.2" style="padding-left:1.5pt;padding-right:1.5pt;">TheoremQA <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib21" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.3.3.3.3.3" style="padding-left:1.5pt;padding-right:1.5pt;">MC, T/F, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.3.3.3.3.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.3.3.3.3.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1" style="width:159.3pt;">Internet, exam <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1"><semantics id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1a"><mo id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1b"><ci id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S2.SS0.SSS0.Px1.3.3.3.3.1.1.1.m1.1d">→</annotation></semantics></math> Human rewrite</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.3.3.3.3.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.3.3.3.3.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.3.3.3.3.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.3.3.3.3.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.3.3.3.3.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.3.3.3.3.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.3.3.3.3.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.4.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.4.4.4.4.2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.4.4.4.4.2.1">SciKnowEval <cite class="ltx_cite ltx_citemacro_cite">Feng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib42" title="">2024</a>)</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.4.4.4.4.3" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.4.4.4.4.3.1">MC, T/F, Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.4.4.4.4.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.4.4.4.4.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1" style="width:159.3pt;">Textbooks, database, other datasets <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1"><semantics id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1a"><mo id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1.1" stretchy="false" xref="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1b"><ci id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S2.SS0.SSS0.Px1.4.4.4.4.1.1.1.m1.1d">→</annotation></semantics></math> LLM rewrite</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.4.4.4.4.4" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.4.4.4.4.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.4.4.4.4.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.4.4.4.4.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.4.4.4.4.5" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.4.4.4.4.5.1">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.4.4.4.4.6" rowspan="2" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.4.4.4.4.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.13">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="5" id="S2.SS0.SSS0.Px1.7.7.7.13.1" style="padding-left:1.5pt;padding-right:1.5pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S2.SS0.SSS0.Px1.7.7.7.13.1.1">Text + Image</em></td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.14.1" style="padding-left:1.5pt;padding-right:1.5pt;">VisScience <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib71" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.14.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.14.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.14.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.14.3.1.1" style="width:159.3pt;">Internet, exam, textbook</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.14.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.14.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.14.4.1.1" style="width:25.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.14.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.14.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.15.1" style="padding-left:1.5pt;padding-right:1.5pt;">EXAMS-V <cite class="ltx_cite ltx_citemacro_cite">Das et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib32" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.15.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.15.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.15.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.15.3.1.1" style="width:159.3pt;">Exam</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.15.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.15.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.15.4.1.1" style="width:25.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.15.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.15.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.16.1" style="padding-left:1.5pt;padding-right:1.5pt;">ScienceQA <cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib101" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.16.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.16.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.16.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.16.3.1.1" style="width:159.3pt;">Internet, course</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.16.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.16.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.16.4.1.1" style="width:25.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.16.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.16.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.16.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.17.1" style="padding-left:1.5pt;padding-right:1.5pt;">SceMQA <cite class="ltx_cite ltx_citemacro_cite">Liang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib93" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.17.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.17.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.17.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.17.3.1.1" style="width:159.3pt;">Internet, exam</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.17.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.17.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.17.4.1.1" style="width:25.6pt;">✗</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.17.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.17.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.17.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.5.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.5.5.5.5.2" style="padding-left:1.5pt;padding-right:1.5pt;">CharXiv <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib146" title="">2024e</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.5.5.5.5.3" style="padding-left:1.5pt;padding-right:1.5pt;">Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.5.5.5.5.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.5.5.5.5.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1" style="width:159.3pt;">arXiv paper <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1"><semantics id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1a"><mo id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1.1" stretchy="false" xref="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1b"><ci id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1.1.cmml" xref="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S2.SS0.SSS0.Px1.5.5.5.5.1.1.1.m1.1d">→</annotation></semantics></math> Human annotate</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.5.5.5.5.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.5.5.5.5.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.5.5.5.5.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.5.5.5.5.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.5.5.5.5.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.5.5.5.5.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.6.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.6.6.6.6.2" style="padding-left:1.5pt;padding-right:1.5pt;">MMSci <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib92" title="">2024g</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.6.6.6.6.3" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.6.6.6.6.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.6.6.6.6.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1" style="width:159.3pt;">Scientific paper <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1"><semantics id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1a"><mo id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1.1" stretchy="false" xref="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1b"><ci id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1.1.cmml" xref="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S2.SS0.SSS0.Px1.6.6.6.6.1.1.1.m1.1d">→</annotation></semantics></math> LLM generate</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.6.6.6.6.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.6.6.6.6.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.6.6.6.6.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.6.6.6.6.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.6.6.6.6.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.6.6.6.6.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.18.1" style="padding-left:1.5pt;padding-right:1.5pt;">OlympicArena <cite class="ltx_cite ltx_citemacro_cite">Huang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib65" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.18.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC, T/F, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.18.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.18.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.18.3.1.1" style="width:159.3pt;">Olympic competitions</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.18.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.18.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.18.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.18.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.18.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.18.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.18.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.19.1" style="padding-left:1.5pt;padding-right:1.5pt;">MMMU <cite class="ltx_cite ltx_citemacro_cite">Yue et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib158" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.19.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.19.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.19.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.19.3.1.1" style="width:159.3pt;">Internet, exam, textbook</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.19.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.19.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.19.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.19.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.19.5" style="padding-left:1.5pt;padding-right:1.5pt;">17.6%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.19.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.20.1" style="padding-left:1.5pt;padding-right:1.5pt;">CMMMU <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib160" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.20.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC, T/F, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.20.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.20.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.20.3.1.1" style="width:159.3pt;">Internet, exam, textbook</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.20.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.20.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.20.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.20.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.20.5" style="padding-left:1.5pt;padding-right:1.5pt;">2.1%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.20.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.7.2" style="padding-left:1.5pt;padding-right:1.5pt;">MMMU-Pro <cite class="ltx_cite ltx_citemacro_cite">Yue et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib159" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.7.3" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.7.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.7.1.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1" style="width:159.3pt;">MMMU <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1"><semantics id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1a"><mo id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1.1" stretchy="false" xref="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1b"><ci id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1.1.cmml" xref="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S2.SS0.SSS0.Px1.7.7.7.7.1.1.1.m1.1d">→</annotation></semantics></math> Human &amp; LLM augment</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.7.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.7.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.7.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.7.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.7.5" style="padding-left:1.5pt;padding-right:1.5pt;">15.4%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.7.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.21">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="5" id="S2.SS0.SSS0.Px1.7.7.7.21.1" style="padding-left:1.5pt;padding-right:1.5pt;"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S2.SS0.SSS0.Px1.7.7.7.21.1.1">Text + Video</em></td>
<td class="ltx_td ltx_border_t" id="S2.SS0.SSS0.Px1.7.7.7.21.2" style="padding-left:1.5pt;padding-right:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.22.1" style="padding-left:1.5pt;padding-right:1.5pt;">MMWorld <cite class="ltx_cite ltx_citemacro_cite">He et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib58" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S2.SS0.SSS0.Px1.7.7.7.22.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.22.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.22.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.22.3.1.1" style="width:159.3pt;">Human experts (24%) / LLM-gen (76%)</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.22.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.22.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.22.4.1.1" style="width:25.6pt;">39.5%</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.22.5" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S2.SS0.SSS0.Px1.7.7.7.22.6" style="padding-left:1.5pt;padding-right:1.5pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S2.SS0.SSS0.Px1.7.7.7.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S2.SS0.SSS0.Px1.7.7.7.23.1" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_ERROR undefined" id="S2.SS0.SSS0.Px1.7.7.7.23.1.1">\hdashline</span>
<span class="ltx_ERROR undefined" id="S2.SS0.SSS0.Px1.7.7.7.23.1.2">\gradientRGB</span><span class="ltx_text ltx_font_bold" id="S2.SS0.SSS0.Px1.7.7.7.23.1.3">MMVU53,93,20310,10,80 (ours)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S2.SS0.SSS0.Px1.7.7.7.23.2" style="padding-left:1.5pt;padding-right:1.5pt;">MC, Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S2.SS0.SSS0.Px1.7.7.7.23.3" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.23.3.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.23.3.1.1" style="width:159.3pt;">Human experts annotate from scratch</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S2.SS0.SSS0.Px1.7.7.7.23.4" style="padding-left:1.5pt;padding-right:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.SS0.SSS0.Px1.7.7.7.23.4.1">
<span class="ltx_p" id="S2.SS0.SSS0.Px1.7.7.7.23.4.1.1" style="width:25.6pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.23.4.1.1.1" style="color:#005900;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.SS0.SSS0.Px1.7.7.7.23.5" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.23.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.SS0.SSS0.Px1.7.7.7.23.6" style="padding-left:1.5pt;padding-right:1.5pt;"><span class="ltx_text" id="S2.SS0.SSS0.Px1.7.7.7.23.6.1" style="color:#005900;">✓</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed statistical overview of the MMVU benchmark dataset.  It covers key aspects like the total number of questions, their distribution across training and testing sets, and the number of unique videos included.  Furthermore, it provides insights into the characteristics of the questions themselves, such as the type (multiple choice vs. open-ended), length (average and maximum), and the amount of domain knowledge required for each.  Video length statistics (average and maximum) are also included, providing comprehensive details about the size and scope of the MMVU benchmark.  Finally, it details the number of Wikipedia pages utilized in constructing the benchmark. This comprehensive view helps to understand the scale, complexity, and characteristics of the dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Key statistics of the \gradientRGBMMVU53,93,20310,10,80 benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="S3.SS3.SSS0.Px2.tab1.3">
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.SS3.SSS0.Px2.tab1.3.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS0.Px2.tab1.3.1.1.1">Statistics</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.SS3.SSS0.Px2.tab1.3.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS0.Px2.tab1.3.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Total Questions</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">3,000</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Validation Set</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">1,000</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Test Set</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">2,000</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">Unique Videos</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">1,529</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Video Length (Seconds, <span class="ltx_text ltx_font_typewriter" id="S3.SS3.SSS0.Px2.tab1.3.6.1.1">avg/max</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.6.2" style="padding-left:0.0pt;padding-right:0.0pt;">51.4 / 228</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.7.1" style="padding-left:0.0pt;padding-right:0.0pt;">Number of Disciplines</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.7.2" style="padding-left:0.0pt;padding-right:0.0pt;">4</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.8.1" style="padding-left:0.0pt;padding-right:0.0pt;">Number of Subjects</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.8.2" style="padding-left:0.0pt;padding-right:0.0pt;">27</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">Multiple Choice Questions</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.9.2" style="padding-left:0.0pt;padding-right:0.0pt;">1,858</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.10">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">Question Length (<span class="ltx_text ltx_font_typewriter" id="S3.SS3.SSS0.Px2.tab1.3.10.1.1">avg/max</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.10.2" style="padding-left:0.0pt;padding-right:0.0pt;">16.8 / 70</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">Single Choice Length (<span class="ltx_text ltx_font_typewriter" id="S3.SS3.SSS0.Px2.tab1.3.11.1.1">avg/max</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.11.2" style="padding-left:0.0pt;padding-right:0.0pt;">7.6 / 42</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.12">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.12.1" style="padding-left:0.0pt;padding-right:0.0pt;">Number of Choices per Question</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.12.2" style="padding-left:0.0pt;padding-right:0.0pt;">5</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.13.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_ERROR undefined" id="S3.SS3.SSS0.Px2.tab1.3.13.1.1">\hdashline</span>
Open-ended Questions</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.13.2" style="padding-left:0.0pt;padding-right:0.0pt;">1,142</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.14">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.14.1" style="padding-left:0.0pt;padding-right:0.0pt;">Question Length (<span class="ltx_text ltx_font_typewriter" id="S3.SS3.SSS0.Px2.tab1.3.14.1.1">avg/max</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.14.2" style="padding-left:0.0pt;padding-right:0.0pt;">16.4 / 39</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.15">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.15.1" style="padding-left:0.0pt;padding-right:0.0pt;">Ground-truth Answer Length (<span class="ltx_text ltx_font_typewriter" id="S3.SS3.SSS0.Px2.tab1.3.15.1.1">avg/max</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.15.2" style="padding-left:0.0pt;padding-right:0.0pt;">1.5 / 7</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.16.1" style="padding-left:0.0pt;padding-right:0.0pt;">Number of Required <span class="ltx_text ltx_font_bold" id="S3.SS3.SSS0.Px2.tab1.3.16.1.1">Knowledge</span> per Question (<span class="ltx_text ltx_font_typewriter" id="S3.SS3.SSS0.Px2.tab1.3.16.1.2">avg/max</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.16.2" style="padding-left:0.0pt;padding-right:0.0pt;">4.3 / 7</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.SS3.SSS0.Px2.tab1.3.17.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.SS3.SSS0.Px2.tab1.3.17.1.1">Solution Rationale</span> Length (<span class="ltx_text ltx_font_typewriter" id="S3.SS3.SSS0.Px2.tab1.3.17.1.2">avg/max</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.SS3.SSS0.Px2.tab1.3.17.2" style="padding-left:0.0pt;padding-right:0.0pt;">56.6 / 193</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS0.Px2.tab1.3.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.18.1" style="padding-left:0.0pt;padding-right:0.0pt;">Total Number of Unique Knowledge (<span class="ltx_text" id="S3.SS3.SSS0.Px2.tab1.3.18.1.1"><em class="ltx_emph ltx_font_italic" id="S3.SS3.SSS0.Px2.tab1.3.18.1.1.1">i.e.,</em></span>, Wikipedia pages)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S3.SS3.SSS0.Px2.tab1.3.18.2" style="padding-left:0.0pt;padding-right:0.0pt;">4,770</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the performance of various foundation models on the MMVU benchmark.  The accuracy of 32 models is shown, broken down by discipline (Science, Healthcare, Humanities & Social Sciences, Engineering) and set (validation, test).  The models are ranked by their overall test set accuracy.  A special note is made for the o1 model, as only a subset of the validation and test sets were evaluated due to API access limitations.  These evaluations for o1 were conducted manually using ChatGPT on January 10th, 2025.
> <details>
> <summary>read the caption</summary>
> Table 3:  Accuracy of evaluated foundation models on the \gradientRGBMMVU53,93,20310,10,80 validation and test sets using CoT prompts. Model performance is ranked based on overall results on the test set. ∗: For o1, as the API access for its multimodal version has not been granted, we randomly sampled 100 examples from the validation set and 200 examples (50 for each core discipline) from the test set. The model’s performance was manually evaluated on Jan 10, 2025, using CoT prompts on ChatGPT platform.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.1">
<tr class="ltx_tr" id="S4.T3.3.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="S4.T3.3.1.2.1" style="padding:0.5pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T3.3.1.2.2" rowspan="3" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.2.1">Release</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S4.T3.3.1.2.3" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.3.1">Test Set</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.3.1.2.4" rowspan="3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.2.4.1">
<span class="ltx_p" id="S4.T3.3.1.2.4.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.2.4.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.3.1.2.4.1.1.1.1">
<span class="ltx_tr" id="S4.T3.3.1.2.4.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.4.1.1.1.1.1.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.4.1.1.1.1.1.1.1">Avg.</span></span></span>
<span class="ltx_tr" id="S4.T3.3.1.2.4.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.4.1.1.1.1.2.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.4.1.1.1.1.2.1.1">Validation</span></span></span>
</span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.3.1.2.5" rowspan="3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.2.5.1">
<span class="ltx_p" id="S4.T3.3.1.2.5.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.2.5.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.3.1.2.5.1.1.1.1">
<span class="ltx_tr" id="S4.T3.3.1.2.5.1.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.5.1.1.1.1.1.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.5.1.1.1.1.1.1.1">Avg.</span></span></span>
<span class="ltx_tr" id="S4.T3.3.1.2.5.1.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.5.1.1.1.1.2.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.5.1.1.1.1.2.1.1">Test</span></span></span>
</span><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.5.1.1.1.2"></span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T3.3.1.3.1" style="padding:0.5pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.3.1.3.2" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.3.2.1">
<span class="ltx_p" id="S4.T3.3.1.3.2.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.3.2.1.1.1">Science</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.3.1.3.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.3.3.1">
<span class="ltx_p" id="S4.T3.3.1.3.3.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.3.3.1.1.1">Healthcare</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.3.1.3.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.3.4.1">
<span class="ltx_p" id="S4.T3.3.1.3.4.1.1" style="width:39.8pt;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.3.1.3.4.1.1.1">
<span class="ltx_tr" id="S4.T3.3.1.3.4.1.1.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.3.4.1.1.1.1.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.3.4.1.1.1.1.1.1">Human. &amp;</span></span></span>
<span class="ltx_tr" id="S4.T3.3.1.3.4.1.1.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.3.4.1.1.1.2.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.3.4.1.1.1.2.1.1">Social Sci.</span></span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.3.1.3.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.3.5.1">
<span class="ltx_p" id="S4.T3.3.1.3.5.1.1" style="width:39.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.3.5.1.1.1">Engineering</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="8" id="S4.T3.3.1.4.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.3.1.4.1.1">Human Performance</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.5.1" style="padding:0.5pt 0.0pt;">Human Oracle</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T3.3.1.5.2" style="padding:0.5pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.5.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.5.3.1">
<span class="ltx_p" id="S4.T3.3.1.5.3.1.1" style="width:39.8pt;">95.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.5.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.5.4.1">
<span class="ltx_p" id="S4.T3.3.1.5.4.1.1" style="width:39.8pt;">93.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.5.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.5.5.1">
<span class="ltx_p" id="S4.T3.3.1.5.5.1.1" style="width:39.8pt;">96.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.5.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.5.6.1">
<span class="ltx_p" id="S4.T3.3.1.5.6.1.1" style="width:39.8pt;">96.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top" colspan="2" id="S4.T3.3.1.5.7" style="padding:0.5pt 0.0pt;">95.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.6.1" style="padding:0.5pt 0.0pt;">Human Open-book</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T3.3.1.6.2" style="padding:0.5pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.6.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.6.3.1">
<span class="ltx_p" id="S4.T3.3.1.6.3.1.1" style="width:39.8pt;">86.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.6.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.6.4.1">
<span class="ltx_p" id="S4.T3.3.1.6.4.1.1" style="width:39.8pt;">84.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.6.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.6.5.1">
<span class="ltx_p" id="S4.T3.3.1.6.5.1.1" style="width:39.8pt;">92.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.6.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.6.6.1">
<span class="ltx_p" id="S4.T3.3.1.6.6.1.1" style="width:39.8pt;">83.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top" colspan="2" id="S4.T3.3.1.6.7" style="padding:0.5pt 0.0pt;">86.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.7.1" style="padding:0.5pt 0.0pt;">Human Closed-book</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T3.3.1.7.2" style="padding:0.5pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.7.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.7.3.1">
<span class="ltx_p" id="S4.T3.3.1.7.3.1.1" style="width:39.8pt;">54.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.7.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.7.4.1">
<span class="ltx_p" id="S4.T3.3.1.7.4.1.1" style="width:39.8pt;">42.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.7.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.7.5.1">
<span class="ltx_p" id="S4.T3.3.1.7.5.1.1" style="width:39.8pt;">44.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.7.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.7.6.1">
<span class="ltx_p" id="S4.T3.3.1.7.6.1.1" style="width:39.8pt;">56.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_align_top" colspan="2" id="S4.T3.3.1.7.7" style="padding:0.5pt 0.0pt;">49.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.8">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="8" id="S4.T3.3.1.8.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.3.1.8.1.1">Proprietary Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.1.1" style="padding:0.5pt 0.0pt;">o1<sup class="ltx_sup" id="S4.T3.3.1.1.1.1">∗</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.1.2" style="padding:0.5pt 0.0pt;">2024-12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.1.3" style="background-color:#FFA6A6;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.3.1">
<span class="ltx_p" id="S4.T3.3.1.1.3.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.1.3.1.1.1" style="background-color:#FFA6A6;">80.0</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.1.4" style="background-color:#FFA6A6;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.4.1">
<span class="ltx_p" id="S4.T3.3.1.1.4.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.1.4.1.1.1" style="background-color:#FFA6A6;">78.0</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.1.5" style="background-color:#FFA6A6;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.5.1">
<span class="ltx_p" id="S4.T3.3.1.1.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.1.5.1.1.1" style="background-color:#FFA6A6;">76.0</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.1.6" style="background-color:#FFA6A6;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.6.1">
<span class="ltx_p" id="S4.T3.3.1.1.6.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.1.6.1.1.1" style="background-color:#FFA6A6;">74.0</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.1.7" style="background-color:#FFA6A6;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.7.1">
<span class="ltx_p" id="S4.T3.3.1.1.7.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.1.7.1.1.1" style="background-color:#FFA6A6;">79.0</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.1.8" style="background-color:#FFA6A6;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.1.8.1">
<span class="ltx_p" id="S4.T3.3.1.1.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.1.8.1.1.1" style="background-color:#FFA6A6;">77.0</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.9.1" style="padding:0.5pt 0.0pt;">Gemini 2.0 Flash Thinking</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.9.2" style="padding:0.5pt 0.0pt;">2024-12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.9.3" style="background-color:#FFF2F2;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.9.3.1">
<span class="ltx_p" id="S4.T3.3.1.9.3.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.9.3.1.1.1" style="background-color:#FFF2F2;">69.3</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.9.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.9.4.1">
<span class="ltx_p" id="S4.T3.3.1.9.4.1.1" style="width:39.8pt;">71.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.9.5" style="background-color:#FFCCCC;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.9.5.1">
<span class="ltx_p" id="S4.T3.3.1.9.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.9.5.1.1.1" style="background-color:#FFCCCC;">73.4</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.9.6" style="background-color:#FFCCCC;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.9.6.1">
<span class="ltx_p" id="S4.T3.3.1.9.6.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.9.6.1.1.1" style="background-color:#FFCCCC;">67.3</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.9.7" style="background-color:#FFCCCC;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.9.7.1">
<span class="ltx_p" id="S4.T3.3.1.9.7.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.9.7.1.1.1" style="background-color:#FFCCCC;">69.1</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.9.8" style="background-color:#FFCCCC;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.9.8.1">
<span class="ltx_p" id="S4.T3.3.1.9.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.9.8.1.1.1" style="background-color:#FFCCCC;">69.5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.10.1" style="padding:0.5pt 0.0pt;">GPT-4o</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.10.2" style="padding:0.5pt 0.0pt;">2024-08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.10.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.10.3.1">
<span class="ltx_p" id="S4.T3.3.1.10.3.1.1" style="width:39.8pt;">67.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.10.4" style="background-color:#FFF2F2;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.10.4.1">
<span class="ltx_p" id="S4.T3.3.1.10.4.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.10.4.1.1.1" style="background-color:#FFF2F2;">71.8</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.10.5" style="background-color:#FFF2F2;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.10.5.1">
<span class="ltx_p" id="S4.T3.3.1.10.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.10.5.1.1.1" style="background-color:#FFF2F2;">72.0</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.10.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.10.6.1">
<span class="ltx_p" id="S4.T3.3.1.10.6.1.1" style="width:39.8pt;">61.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.10.7" style="background-color:#FFF2F2;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.10.7.1">
<span class="ltx_p" id="S4.T3.3.1.10.7.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.10.7.1.1.1" style="background-color:#FFF2F2;">67.4</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.10.8" style="background-color:#FFF2F2;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.10.8.1">
<span class="ltx_p" id="S4.T3.3.1.10.8.1.1" style="width:31.3pt;"><span class="ltx_text" id="S4.T3.3.1.10.8.1.1.1" style="background-color:#FFF2F2;">66.7</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.11.1" style="padding:0.5pt 0.0pt;">Gemini 2.0 Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.11.2" style="padding:0.5pt 0.0pt;">2024-12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.11.3" style="background-color:#FFCCCC;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.11.3.1">
<span class="ltx_p" id="S4.T3.3.1.11.3.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.11.3.1.1.1" style="background-color:#FFCCCC;">70.8</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.11.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.11.4.1">
<span class="ltx_p" id="S4.T3.3.1.11.4.1.1" style="width:39.8pt;">62.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.11.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.11.5.1">
<span class="ltx_p" id="S4.T3.3.1.11.5.1.1" style="width:39.8pt;">71.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.11.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.11.6.1">
<span class="ltx_p" id="S4.T3.3.1.11.6.1.1" style="width:39.8pt;">63.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.11.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.11.7.1">
<span class="ltx_p" id="S4.T3.3.1.11.7.1.1" style="width:31.3pt;">65.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.11.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.11.8.1">
<span class="ltx_p" id="S4.T3.3.1.11.8.1.1" style="width:31.3pt;">66.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.12.1" style="padding:0.5pt 0.0pt;">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.12.2" style="padding:0.5pt 0.0pt;">2024-09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.12.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.12.3.1">
<span class="ltx_p" id="S4.T3.3.1.12.3.1.1" style="width:39.8pt;">67.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.12.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.12.4.1">
<span class="ltx_p" id="S4.T3.3.1.12.4.1.1" style="width:39.8pt;">68.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.12.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.12.5.1">
<span class="ltx_p" id="S4.T3.3.1.12.5.1.1" style="width:39.8pt;">67.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.12.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.12.6.1">
<span class="ltx_p" id="S4.T3.3.1.12.6.1.1" style="width:39.8pt;">62.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.12.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.12.7.1">
<span class="ltx_p" id="S4.T3.3.1.12.7.1.1" style="width:31.3pt;">65.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.12.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.12.8.1">
<span class="ltx_p" id="S4.T3.3.1.12.8.1.1" style="width:31.3pt;">65.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.13.1" style="padding:0.5pt 0.0pt;">Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.13.2" style="padding:0.5pt 0.0pt;">2024-10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.13.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.13.3.1">
<span class="ltx_p" id="S4.T3.3.1.13.3.1.1" style="width:39.8pt;">60.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.13.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.13.4.1">
<span class="ltx_p" id="S4.T3.3.1.13.4.1.1" style="width:39.8pt;">64.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.13.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.13.5.1">
<span class="ltx_p" id="S4.T3.3.1.13.5.1.1" style="width:39.8pt;">70.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.13.6" style="background-color:#FFF2F2;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.13.6.1">
<span class="ltx_p" id="S4.T3.3.1.13.6.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.13.6.1.1.1" style="background-color:#FFF2F2;">64.5</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.13.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.13.7.1">
<span class="ltx_p" id="S4.T3.3.1.13.7.1.1" style="width:31.3pt;">65.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.13.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.13.8.1">
<span class="ltx_p" id="S4.T3.3.1.13.8.1.1" style="width:31.3pt;">64.1</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.14.1" style="padding:0.5pt 0.0pt;">Grok-2-Vision</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.14.2" style="padding:0.5pt 0.0pt;">2024-12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.14.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.14.3.1">
<span class="ltx_p" id="S4.T3.3.1.14.3.1.1" style="width:39.8pt;">60.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.14.4" style="background-color:#FFCCCC;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.14.4.1">
<span class="ltx_p" id="S4.T3.3.1.14.4.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.14.4.1.1.1" style="background-color:#FFCCCC;">72.5</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.14.5" style="background-color:#FFF2F2;padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.14.5.1">
<span class="ltx_p" id="S4.T3.3.1.14.5.1.1" style="width:39.8pt;"><span class="ltx_text" id="S4.T3.3.1.14.5.1.1.1" style="background-color:#FFF2F2;">72.0</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.14.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.14.6.1">
<span class="ltx_p" id="S4.T3.3.1.14.6.1.1" style="width:39.8pt;">57.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.14.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.14.7.1">
<span class="ltx_p" id="S4.T3.3.1.14.7.1.1" style="width:31.3pt;">62.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.14.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.14.8.1">
<span class="ltx_p" id="S4.T3.3.1.14.8.1.1" style="width:31.3pt;">63.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.15.1" style="padding:0.5pt 0.0pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.15.2" style="padding:0.5pt 0.0pt;">2024-07</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.15.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.15.3.1">
<span class="ltx_p" id="S4.T3.3.1.15.3.1.1" style="width:39.8pt;">60.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.15.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.15.4.1">
<span class="ltx_p" id="S4.T3.3.1.15.4.1.1" style="width:39.8pt;">60.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.15.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.15.5.1">
<span class="ltx_p" id="S4.T3.3.1.15.5.1.1" style="width:39.8pt;">70.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.15.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.15.6.1">
<span class="ltx_p" id="S4.T3.3.1.15.6.1.1" style="width:39.8pt;">59.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.15.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.15.7.1">
<span class="ltx_p" id="S4.T3.3.1.15.7.1.1" style="width:31.3pt;">61.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.15.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.15.8.1">
<span class="ltx_p" id="S4.T3.3.1.15.8.1.1" style="width:31.3pt;">61.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.16.1" style="padding:0.5pt 0.0pt;">Gemini 1.5 Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.16.2" style="padding:0.5pt 0.0pt;">2024-09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.16.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.16.3.1">
<span class="ltx_p" id="S4.T3.3.1.16.3.1.1" style="width:39.8pt;">56.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.16.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.16.4.1">
<span class="ltx_p" id="S4.T3.3.1.16.4.1.1" style="width:39.8pt;">57.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.16.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.16.5.1">
<span class="ltx_p" id="S4.T3.3.1.16.5.1.1" style="width:39.8pt;">66.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.16.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.16.6.1">
<span class="ltx_p" id="S4.T3.3.1.16.6.1.1" style="width:39.8pt;">58.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.16.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.16.7.1">
<span class="ltx_p" id="S4.T3.3.1.16.7.1.1" style="width:31.3pt;">58.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.16.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.16.8.1">
<span class="ltx_p" id="S4.T3.3.1.16.8.1.1" style="width:31.3pt;">58.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.17.1" style="padding:0.5pt 0.0pt;">GLM-4V-Plus</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.17.2" style="padding:0.5pt 0.0pt;">2025-01</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.17.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.17.3.1">
<span class="ltx_p" id="S4.T3.3.1.17.3.1.1" style="width:39.8pt;">52.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.17.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.17.4.1">
<span class="ltx_p" id="S4.T3.3.1.17.4.1.1" style="width:39.8pt;">57.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.17.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.17.5.1">
<span class="ltx_p" id="S4.T3.3.1.17.5.1.1" style="width:39.8pt;">64.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.17.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.17.6.1">
<span class="ltx_p" id="S4.T3.3.1.17.6.1.1" style="width:39.8pt;">55.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.17.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.17.7.1">
<span class="ltx_p" id="S4.T3.3.1.17.7.1.1" style="width:31.3pt;">56.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.17.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.17.8.1">
<span class="ltx_p" id="S4.T3.3.1.17.8.1.1" style="width:31.3pt;">56.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.18">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="8" id="S4.T3.3.1.18.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.3.1.18.1.1">Open-sourced Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.19.1" style="padding:0.5pt 0.0pt;">Qwen2-VL-72B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.19.2" style="padding:0.5pt 0.0pt;">2024-09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.19.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.19.3.1">
<span class="ltx_p" id="S4.T3.3.1.19.3.1.1" style="width:39.8pt;">48.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.19.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.19.4.1">
<span class="ltx_p" id="S4.T3.3.1.19.4.1.1" style="width:39.8pt;">53.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.19.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.19.5.1">
<span class="ltx_p" id="S4.T3.3.1.19.5.1.1" style="width:39.8pt;">61.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.19.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.19.6.1">
<span class="ltx_p" id="S4.T3.3.1.19.6.1.1" style="width:39.8pt;">53.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.19.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.19.7.1">
<span class="ltx_p" id="S4.T3.3.1.19.7.1.1" style="width:31.3pt;">53.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.19.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.19.8.1">
<span class="ltx_p" id="S4.T3.3.1.19.8.1.1" style="width:31.3pt;">53.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.20.1" style="padding:0.5pt 0.0pt;">DeepSeek-VL2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.20.2" style="padding:0.5pt 0.0pt;">2024-12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.20.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.20.3.1">
<span class="ltx_p" id="S4.T3.3.1.20.3.1.1" style="width:39.8pt;">50.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.20.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.20.4.1">
<span class="ltx_p" id="S4.T3.3.1.20.4.1.1" style="width:39.8pt;">53.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.20.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.20.5.1">
<span class="ltx_p" id="S4.T3.3.1.20.5.1.1" style="width:39.8pt;">58.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.20.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.20.6.1">
<span class="ltx_p" id="S4.T3.3.1.20.6.1.1" style="width:39.8pt;">48.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.20.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.20.7.1">
<span class="ltx_p" id="S4.T3.3.1.20.7.1.1" style="width:31.3pt;">52.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.20.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.20.8.1">
<span class="ltx_p" id="S4.T3.3.1.20.8.1.1" style="width:31.3pt;">51.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.21.1" style="padding:0.5pt 0.0pt;">InternVL2.5-38B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.21.2" style="padding:0.5pt 0.0pt;">2024-11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.21.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.21.3.1">
<span class="ltx_p" id="S4.T3.3.1.21.3.1.1" style="width:39.8pt;">50.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.21.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.21.4.1">
<span class="ltx_p" id="S4.T3.3.1.21.4.1.1" style="width:39.8pt;">45.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.21.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.21.5.1">
<span class="ltx_p" id="S4.T3.3.1.21.5.1.1" style="width:39.8pt;">52.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.21.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.21.6.1">
<span class="ltx_p" id="S4.T3.3.1.21.6.1.1" style="width:39.8pt;">52.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.21.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.21.7.1">
<span class="ltx_p" id="S4.T3.3.1.21.7.1.1" style="width:31.3pt;">50.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.21.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.21.8.1">
<span class="ltx_p" id="S4.T3.3.1.21.8.1.1" style="width:31.3pt;">50.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.22.1" style="padding:0.5pt 0.0pt;">Aria</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.22.2" style="padding:0.5pt 0.0pt;">2024-11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.22.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.22.3.1">
<span class="ltx_p" id="S4.T3.3.1.22.3.1.1" style="width:39.8pt;">46.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.22.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.22.4.1">
<span class="ltx_p" id="S4.T3.3.1.22.4.1.1" style="width:39.8pt;">43.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.22.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.22.5.1">
<span class="ltx_p" id="S4.T3.3.1.22.5.1.1" style="width:39.8pt;">61.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.22.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.22.6.1">
<span class="ltx_p" id="S4.T3.3.1.22.6.1.1" style="width:39.8pt;">49.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.22.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.22.7.1">
<span class="ltx_p" id="S4.T3.3.1.22.7.1.1" style="width:31.3pt;">49.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.22.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.22.8.1">
<span class="ltx_p" id="S4.T3.3.1.22.8.1.1" style="width:31.3pt;">49.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.23.1" style="padding:0.5pt 0.0pt;">Llama-3.2-90B-Vision</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.23.2" style="padding:0.5pt 0.0pt;">2024-09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.23.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.23.3.1">
<span class="ltx_p" id="S4.T3.3.1.23.3.1.1" style="width:39.8pt;">46.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.23.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.23.4.1">
<span class="ltx_p" id="S4.T3.3.1.23.4.1.1" style="width:39.8pt;">43.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.23.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.23.5.1">
<span class="ltx_p" id="S4.T3.3.1.23.5.1.1" style="width:39.8pt;">53.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.23.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.23.6.1">
<span class="ltx_p" id="S4.T3.3.1.23.6.1.1" style="width:39.8pt;">48.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.23.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.23.7.1">
<span class="ltx_p" id="S4.T3.3.1.23.7.1.1" style="width:31.3pt;">47.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.23.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.23.8.1">
<span class="ltx_p" id="S4.T3.3.1.23.8.1.1" style="width:31.3pt;">47.6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.24.1" style="padding:0.5pt 0.0pt;">DeepSeek-VL2-Small</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.24.2" style="padding:0.5pt 0.0pt;">2024-12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.24.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.24.3.1">
<span class="ltx_p" id="S4.T3.3.1.24.3.1.1" style="width:39.8pt;">47.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.24.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.24.4.1">
<span class="ltx_p" id="S4.T3.3.1.24.4.1.1" style="width:39.8pt;">48.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.24.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.24.5.1">
<span class="ltx_p" id="S4.T3.3.1.24.5.1.1" style="width:39.8pt;">47.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.24.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.24.6.1">
<span class="ltx_p" id="S4.T3.3.1.24.6.1.1" style="width:39.8pt;">45.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.24.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.24.7.1">
<span class="ltx_p" id="S4.T3.3.1.24.7.1.1" style="width:31.3pt;">46.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.24.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.24.8.1">
<span class="ltx_p" id="S4.T3.3.1.24.8.1.1" style="width:31.3pt;">46.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.25.1" style="padding:0.5pt 0.0pt;">Qwen2-VL-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.25.2" style="padding:0.5pt 0.0pt;">2024-08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.25.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.25.3.1">
<span class="ltx_p" id="S4.T3.3.1.25.3.1.1" style="width:39.8pt;">43.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.25.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.25.4.1">
<span class="ltx_p" id="S4.T3.3.1.25.4.1.1" style="width:39.8pt;">42.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.25.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.25.5.1">
<span class="ltx_p" id="S4.T3.3.1.25.5.1.1" style="width:39.8pt;">43.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.25.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.25.6.1">
<span class="ltx_p" id="S4.T3.3.1.25.6.1.1" style="width:39.8pt;">41.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.25.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.25.7.1">
<span class="ltx_p" id="S4.T3.3.1.25.7.1.1" style="width:31.3pt;">42.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.25.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.25.8.1">
<span class="ltx_p" id="S4.T3.3.1.25.8.1.1" style="width:31.3pt;">42.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.26.1" style="padding:0.5pt 0.0pt;">InternVL2.5-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.26.2" style="padding:0.5pt 0.0pt;">2024-11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.26.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.26.3.1">
<span class="ltx_p" id="S4.T3.3.1.26.3.1.1" style="width:39.8pt;">39.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.26.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.26.4.1">
<span class="ltx_p" id="S4.T3.3.1.26.4.1.1" style="width:39.8pt;">36.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.26.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.26.5.1">
<span class="ltx_p" id="S4.T3.3.1.26.5.1.1" style="width:39.8pt;">47.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.26.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.26.6.1">
<span class="ltx_p" id="S4.T3.3.1.26.6.1.1" style="width:39.8pt;">42.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.26.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.26.7.1">
<span class="ltx_p" id="S4.T3.3.1.26.7.1.1" style="width:31.3pt;">41.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.26.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.26.8.1">
<span class="ltx_p" id="S4.T3.3.1.26.8.1.1" style="width:31.3pt;">41.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.27.1" style="padding:0.5pt 0.0pt;">VideoLLaMA2.1-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.27.2" style="padding:0.5pt 0.0pt;">2024-10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.27.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.27.3.1">
<span class="ltx_p" id="S4.T3.3.1.27.3.1.1" style="width:39.8pt;">35.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.27.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.27.4.1">
<span class="ltx_p" id="S4.T3.3.1.27.4.1.1" style="width:39.8pt;">38.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.27.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.27.5.1">
<span class="ltx_p" id="S4.T3.3.1.27.5.1.1" style="width:39.8pt;">45.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.27.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.27.6.1">
<span class="ltx_p" id="S4.T3.3.1.27.6.1.1" style="width:39.8pt;">41.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.27.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.27.7.1">
<span class="ltx_p" id="S4.T3.3.1.27.7.1.1" style="width:31.3pt;">39.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.27.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.27.8.1">
<span class="ltx_p" id="S4.T3.3.1.27.8.1.1" style="width:31.3pt;">39.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.28.1" style="padding:0.5pt 0.0pt;">Llama-3.2-11B-Vision</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.28.2" style="padding:0.5pt 0.0pt;">2024-09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.28.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.28.3.1">
<span class="ltx_p" id="S4.T3.3.1.28.3.1.1" style="width:39.8pt;">40.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.28.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.28.4.1">
<span class="ltx_p" id="S4.T3.3.1.28.4.1.1" style="width:39.8pt;">39.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.28.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.28.5.1">
<span class="ltx_p" id="S4.T3.3.1.28.5.1.1" style="width:39.8pt;">44.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.28.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.28.6.1">
<span class="ltx_p" id="S4.T3.3.1.28.6.1.1" style="width:39.8pt;">35.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.28.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.28.7.1">
<span class="ltx_p" id="S4.T3.3.1.28.7.1.1" style="width:31.3pt;">38.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.28.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.28.8.1">
<span class="ltx_p" id="S4.T3.3.1.28.8.1.1" style="width:31.3pt;">39.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.29.1" style="padding:0.5pt 0.0pt;">Phi-3.5-Vision</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.29.2" style="padding:0.5pt 0.0pt;">2024-08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.29.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.29.3.1">
<span class="ltx_p" id="S4.T3.3.1.29.3.1.1" style="width:39.8pt;">38.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.29.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.29.4.1">
<span class="ltx_p" id="S4.T3.3.1.29.4.1.1" style="width:39.8pt;">29.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.29.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.29.5.1">
<span class="ltx_p" id="S4.T3.3.1.29.5.1.1" style="width:39.8pt;">45.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.29.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.29.6.1">
<span class="ltx_p" id="S4.T3.3.1.29.6.1.1" style="width:39.8pt;">41.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.29.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.29.7.1">
<span class="ltx_p" id="S4.T3.3.1.29.7.1.1" style="width:31.3pt;">38.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.29.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.29.8.1">
<span class="ltx_p" id="S4.T3.3.1.29.8.1.1" style="width:31.3pt;">38.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.30.1" style="padding:0.5pt 0.0pt;">LLaVA-OneVision-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.30.2" style="padding:0.5pt 0.0pt;">2024-09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.30.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.30.3.1">
<span class="ltx_p" id="S4.T3.3.1.30.3.1.1" style="width:39.8pt;">34.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.30.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.30.4.1">
<span class="ltx_p" id="S4.T3.3.1.30.4.1.1" style="width:39.8pt;">38.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.30.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.30.5.1">
<span class="ltx_p" id="S4.T3.3.1.30.5.1.1" style="width:39.8pt;">40.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.30.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.30.6.1">
<span class="ltx_p" id="S4.T3.3.1.30.6.1.1" style="width:39.8pt;">38.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.30.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.30.7.1">
<span class="ltx_p" id="S4.T3.3.1.30.7.1.1" style="width:31.3pt;">37.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.30.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.30.8.1">
<span class="ltx_p" id="S4.T3.3.1.30.8.1.1" style="width:31.3pt;">37.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.31.1" style="padding:0.5pt 0.0pt;">Qwen2-VL-2B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.31.2" style="padding:0.5pt 0.0pt;">2024-08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.31.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.31.3.1">
<span class="ltx_p" id="S4.T3.3.1.31.3.1.1" style="width:39.8pt;">32.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.31.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.31.4.1">
<span class="ltx_p" id="S4.T3.3.1.31.4.1.1" style="width:39.8pt;">40.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.31.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.31.5.1">
<span class="ltx_p" id="S4.T3.3.1.31.5.1.1" style="width:39.8pt;">40.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.31.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.31.6.1">
<span class="ltx_p" id="S4.T3.3.1.31.6.1.1" style="width:39.8pt;">35.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.31.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.31.7.1">
<span class="ltx_p" id="S4.T3.3.1.31.7.1.1" style="width:31.3pt;">36.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.31.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.31.8.1">
<span class="ltx_p" id="S4.T3.3.1.31.8.1.1" style="width:31.3pt;">36.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.32.1" style="padding:0.5pt 0.0pt;">InternVL2-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.32.2" style="padding:0.5pt 0.0pt;">2024-06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.32.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.32.3.1">
<span class="ltx_p" id="S4.T3.3.1.32.3.1.1" style="width:39.8pt;">36.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.32.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.32.4.1">
<span class="ltx_p" id="S4.T3.3.1.32.4.1.1" style="width:39.8pt;">32.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.32.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.32.5.1">
<span class="ltx_p" id="S4.T3.3.1.32.5.1.1" style="width:39.8pt;">36.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.32.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.32.6.1">
<span class="ltx_p" id="S4.T3.3.1.32.6.1.1" style="width:39.8pt;">37.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.32.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.32.7.1">
<span class="ltx_p" id="S4.T3.3.1.32.7.1.1" style="width:31.3pt;">36.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.32.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.32.8.1">
<span class="ltx_p" id="S4.T3.3.1.32.8.1.1" style="width:31.3pt;">36.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.33.1" style="padding:0.5pt 0.0pt;">Idefics3-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.33.2" style="padding:0.5pt 0.0pt;">2024-08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.33.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.33.3.1">
<span class="ltx_p" id="S4.T3.3.1.33.3.1.1" style="width:39.8pt;">37.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.33.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.33.4.1">
<span class="ltx_p" id="S4.T3.3.1.33.4.1.1" style="width:39.8pt;">35.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.33.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.33.5.1">
<span class="ltx_p" id="S4.T3.3.1.33.5.1.1" style="width:39.8pt;">44.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.33.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.33.6.1">
<span class="ltx_p" id="S4.T3.3.1.33.6.1.1" style="width:39.8pt;">31.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.33.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.33.7.1">
<span class="ltx_p" id="S4.T3.3.1.33.7.1.1" style="width:31.3pt;">35.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.33.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.33.8.1">
<span class="ltx_p" id="S4.T3.3.1.33.8.1.1" style="width:31.3pt;">35.6</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.34.1" style="padding:0.5pt 0.0pt;">VideoLLaMA2-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.34.2" style="padding:0.5pt 0.0pt;">2024-06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.34.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.34.3.1">
<span class="ltx_p" id="S4.T3.3.1.34.3.1.1" style="width:39.8pt;">32.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.34.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.34.4.1">
<span class="ltx_p" id="S4.T3.3.1.34.4.1.1" style="width:39.8pt;">27.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.34.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.34.5.1">
<span class="ltx_p" id="S4.T3.3.1.34.5.1.1" style="width:39.8pt;">44.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.34.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.34.6.1">
<span class="ltx_p" id="S4.T3.3.1.34.6.1.1" style="width:39.8pt;">35.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.34.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.34.7.1">
<span class="ltx_p" id="S4.T3.3.1.34.7.1.1" style="width:31.3pt;">34.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.34.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.34.8.1">
<span class="ltx_p" id="S4.T3.3.1.34.8.1.1" style="width:31.3pt;">34.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.35.1" style="padding:0.5pt 0.0pt;">DeepSeek-VL2-Tiny</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.35.2" style="padding:0.5pt 0.0pt;">2024-12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.35.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.35.3.1">
<span class="ltx_p" id="S4.T3.3.1.35.3.1.1" style="width:39.8pt;">34.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.35.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.35.4.1">
<span class="ltx_p" id="S4.T3.3.1.35.4.1.1" style="width:39.8pt;">33.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.35.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.35.5.1">
<span class="ltx_p" id="S4.T3.3.1.35.5.1.1" style="width:39.8pt;">35.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.35.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.35.6.1">
<span class="ltx_p" id="S4.T3.3.1.35.6.1.1" style="width:39.8pt;">30.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.35.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.35.7.1">
<span class="ltx_p" id="S4.T3.3.1.35.7.1.1" style="width:31.3pt;">33.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.35.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.35.8.1">
<span class="ltx_p" id="S4.T3.3.1.35.8.1.1" style="width:31.3pt;">32.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.36.1" style="padding:0.5pt 0.0pt;">Pixtral-12B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.36.2" style="padding:0.5pt 0.0pt;">2024-09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.36.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.36.3.1">
<span class="ltx_p" id="S4.T3.3.1.36.3.1.1" style="width:39.8pt;">36.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.36.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.36.4.1">
<span class="ltx_p" id="S4.T3.3.1.36.4.1.1" style="width:39.8pt;">24.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.36.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.36.5.1">
<span class="ltx_p" id="S4.T3.3.1.36.5.1.1" style="width:39.8pt;">37.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.36.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.36.6.1">
<span class="ltx_p" id="S4.T3.3.1.36.6.1.1" style="width:39.8pt;">30.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.36.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.36.7.1">
<span class="ltx_p" id="S4.T3.3.1.36.7.1.1" style="width:31.3pt;">32.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.36.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.36.8.1">
<span class="ltx_p" id="S4.T3.3.1.36.8.1.1" style="width:31.3pt;">32.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.37.1" style="padding:0.5pt 0.0pt;">LLaVA-NeXT-Video-34B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.37.2" style="padding:0.5pt 0.0pt;">2024-06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.37.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.37.3.1">
<span class="ltx_p" id="S4.T3.3.1.37.3.1.1" style="width:39.8pt;">31.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.37.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.37.4.1">
<span class="ltx_p" id="S4.T3.3.1.37.4.1.1" style="width:39.8pt;">24.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.37.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.37.5.1">
<span class="ltx_p" id="S4.T3.3.1.37.5.1.1" style="width:39.8pt;">35.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.37.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.37.6.1">
<span class="ltx_p" id="S4.T3.3.1.37.6.1.1" style="width:39.8pt;">30.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.37.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.37.7.1">
<span class="ltx_p" id="S4.T3.3.1.37.7.1.1" style="width:31.3pt;">30.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.37.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.37.8.1">
<span class="ltx_p" id="S4.T3.3.1.37.8.1.1" style="width:31.3pt;">30.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.38">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.38.1" style="padding:0.5pt 0.0pt;">InternVideo2-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.38.2" style="padding:0.5pt 0.0pt;">2024-08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.38.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.38.3.1">
<span class="ltx_p" id="S4.T3.3.1.38.3.1.1" style="width:39.8pt;">29.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.38.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.38.4.1">
<span class="ltx_p" id="S4.T3.3.1.38.4.1.1" style="width:39.8pt;">31.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.38.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.38.5.1">
<span class="ltx_p" id="S4.T3.3.1.38.5.1.1" style="width:39.8pt;">37.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.38.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.38.6.1">
<span class="ltx_p" id="S4.T3.3.1.38.6.1.1" style="width:39.8pt;">26.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.38.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.38.7.1">
<span class="ltx_p" id="S4.T3.3.1.38.7.1.1" style="width:31.3pt;">29.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.38.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.38.8.1">
<span class="ltx_p" id="S4.T3.3.1.38.8.1.1" style="width:31.3pt;">29.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.39">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.39.1" style="padding:0.5pt 0.0pt;">H2OVL Mississippi-2B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T3.3.1.39.2" style="padding:0.5pt 0.0pt;">2024-10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.39.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.39.3.1">
<span class="ltx_p" id="S4.T3.3.1.39.3.1.1" style="width:39.8pt;">29.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.39.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.39.4.1">
<span class="ltx_p" id="S4.T3.3.1.39.4.1.1" style="width:39.8pt;">29.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.39.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.39.5.1">
<span class="ltx_p" id="S4.T3.3.1.39.5.1.1" style="width:39.8pt;">29.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.39.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.39.6.1">
<span class="ltx_p" id="S4.T3.3.1.39.6.1.1" style="width:39.8pt;">28.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.39.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.39.7.1">
<span class="ltx_p" id="S4.T3.3.1.39.7.1.1" style="width:31.3pt;">29.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="S4.T3.3.1.39.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.39.8.1">
<span class="ltx_p" id="S4.T3.3.1.39.8.1.1" style="width:31.3pt;">28.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.40">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.3.1.40.1" style="padding:0.5pt 0.0pt;">LLaVA-NeXT-Video-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T3.3.1.40.2" style="padding:0.5pt 0.0pt;">2024-06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.3.1.40.3" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.40.3.1">
<span class="ltx_p" id="S4.T3.3.1.40.3.1.1" style="width:39.8pt;">27.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.3.1.40.4" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.40.4.1">
<span class="ltx_p" id="S4.T3.3.1.40.4.1.1" style="width:39.8pt;">31.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.3.1.40.5" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.40.5.1">
<span class="ltx_p" id="S4.T3.3.1.40.5.1.1" style="width:39.8pt;">27.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.3.1.40.6" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.40.6.1">
<span class="ltx_p" id="S4.T3.3.1.40.6.1.1" style="width:39.8pt;">29.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.3.1.40.7" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.40.7.1">
<span class="ltx_p" id="S4.T3.3.1.40.7.1.1" style="width:31.3pt;">28.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T3.3.1.40.8" style="padding:0.5pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.1.40.8.1">
<span class="ltx_p" id="S4.T3.3.1.40.8.1.1" style="width:31.3pt;">28.7</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents biographical information for the 73 experts who annotated the MMVU dataset.  The table includes each annotator's ID, year of study, major, the subject(s) they annotated, and whether they were an author or validator for the project.  However, to protect the privacy of the annotators, their full names and other identifying details are not shown.
> <details>
> <summary>read the caption</summary>
> Table 4:  Biographies of 73 annotators involved in \gradientRGBMMVU53,93,20310,10,80 construction (Author biographies are hidden to protect identity confidentiality).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.1.1">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.1" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1">ID</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.2" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.2.1">Year</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.3" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.3.1">Major</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.4" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.4.1">Assigned Subject(s)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T4.1.1.1.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.5.1">Author?</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T4.1.1.1.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.6.1">Validator?</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T4.1.1.2.1" style="padding:0.25pt 0.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T4.1.1.2.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T4.1.1.2.3" style="padding:0.25pt 0.0pt;">Biomedical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T4.1.1.2.4" style="padding:0.25pt 0.0pt;">Biomedical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.1.2.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.1.2.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.3.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.3.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.3.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.3.4" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.3.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.3.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.4.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.4.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.4.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.4.4" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.4.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.4.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.5.1" style="padding:0.25pt 0.0pt;">2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.5.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.5.3" style="padding:0.25pt 0.0pt;">Bioinformatics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.5.4" style="padding:0.25pt 0.0pt;">Biomedical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.5.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.5.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.6.1" style="padding:0.25pt 0.0pt;">3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.6.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.6.3" style="padding:0.25pt 0.0pt;">Biological Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.6.4" style="padding:0.25pt 0.0pt;">Biomedical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.6.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.6.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.7.1" style="padding:0.25pt 0.0pt;">4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.7.2" style="padding:0.25pt 0.0pt;">2nd year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.7.3" style="padding:0.25pt 0.0pt;">Biomedical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.7.4" style="padding:0.25pt 0.0pt;">Biomedical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.7.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.7.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.8.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.8.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.8.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.8.4" style="padding:0.25pt 0.0pt;">Electronics and Communication</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.8.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.8.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.9.1" style="padding:0.25pt 0.0pt;">5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.9.2" style="padding:0.25pt 0.0pt;">5th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.9.3" style="padding:0.25pt 0.0pt;">Agricultural and Biosystems Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.9.4" style="padding:0.25pt 0.0pt;">Biomedical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.9.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.9.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.10.1" style="padding:0.25pt 0.0pt;">6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.10.2" style="padding:0.25pt 0.0pt;">2nd year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.10.3" style="padding:0.25pt 0.0pt;">Architecture</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.10.4" style="padding:0.25pt 0.0pt;">Civil Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.10.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.10.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.11.1" style="padding:0.25pt 0.0pt;">7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.11.2" style="padding:0.25pt 0.0pt;">3rd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.11.3" style="padding:0.25pt 0.0pt;">Civil Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.11.4" style="padding:0.25pt 0.0pt;">Civil Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.11.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.11.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.12.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.12.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.12.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.12.4" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.12.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.12.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.13.1" style="padding:0.25pt 0.0pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.13.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.13.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.13.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.13.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.13.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.13.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.13.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.14.1" style="padding:0.25pt 0.0pt;">9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.14.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.14.3" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.14.4" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.14.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.14.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.15.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.15.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.15.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.15.4" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.15.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.15.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.16.1" style="padding:0.25pt 0.0pt;">10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.16.2" style="padding:0.25pt 0.0pt;">2nd year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.16.3" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.16.4" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.16.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.16.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.17.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.17.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.17.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.17.4" style="padding:0.25pt 0.0pt;">Electronics and Communication</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.17.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.17.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.18.1" style="padding:0.25pt 0.0pt;">11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.18.2" style="padding:0.25pt 0.0pt;">2nd year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.18.3" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.18.4" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.18.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.18.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.19.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.19.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.19.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.19.4" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.19.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.19.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.20.1" style="padding:0.25pt 0.0pt;">12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.20.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.20.3" style="padding:0.25pt 0.0pt;">Software Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.20.4" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.20.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.20.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.21.1" style="padding:0.25pt 0.0pt;">13</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.21.2" style="padding:0.25pt 0.0pt;">2nd year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.21.3" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.21.4" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.21.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.21.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.22.1" style="padding:0.25pt 0.0pt;">14</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.22.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.22.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.22.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.22.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.22.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.22.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.23.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.23.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.23.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.23.4" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.23.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.23.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.24.1" style="padding:0.25pt 0.0pt;">15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.24.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.24.3" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.24.4" style="padding:0.25pt 0.0pt;">Computer Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.24.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.24.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.25.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.25.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.25.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.25.4" style="padding:0.25pt 0.0pt;">Electronics and Communication</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.25.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.25.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.26.1" style="padding:0.25pt 0.0pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.26.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.26.3" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.26.4" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.26.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.26.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.27.1" style="padding:0.25pt 0.0pt;">17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.27.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.27.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.27.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.27.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.27.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.27.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.27.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.28.1" style="padding:0.25pt 0.0pt;">18</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.28.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.28.3" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.28.4" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.28.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.28.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.29.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.29.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.29.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.29.4" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.29.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.29.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.30.1" style="padding:0.25pt 0.0pt;">19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.30.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.30.3" style="padding:0.25pt 0.0pt;">Electrical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.30.4" style="padding:0.25pt 0.0pt;">Electronics and Communication</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.30.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.30.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.31.1" style="padding:0.25pt 0.0pt;">20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.31.2" style="padding:0.25pt 0.0pt;">3rd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.31.3" style="padding:0.25pt 0.0pt;">Food Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.31.4" style="padding:0.25pt 0.0pt;">Mechanics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.31.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.31.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.32.1" style="padding:0.25pt 0.0pt;">21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.32.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.32.3" style="padding:0.25pt 0.0pt;">Materials Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.32.4" style="padding:0.25pt 0.0pt;">Materials Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.32.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.32.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.33.1" style="padding:0.25pt 0.0pt;">22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.33.2" style="padding:0.25pt 0.0pt;">4th year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.33.3" style="padding:0.25pt 0.0pt;">Aerospace Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.33.4" style="padding:0.25pt 0.0pt;">Materials Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.33.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.33.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.34.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.34.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.34.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.34.4" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.34.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.34.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.35.1" style="padding:0.25pt 0.0pt;">23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.35.2" style="padding:0.25pt 0.0pt;">4th year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.35.3" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.35.4" style="padding:0.25pt 0.0pt;">Materials Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.35.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.35.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.35.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.36.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.36.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.36.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.36.4" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.36.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.36.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.37.1" style="padding:0.25pt 0.0pt;">24</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.37.2" style="padding:0.25pt 0.0pt;">2nd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.37.3" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.37.4" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.37.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.37.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.38">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.38.1" style="padding:0.25pt 0.0pt;">25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.38.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.38.3" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.38.4" style="padding:0.25pt 0.0pt;">Mechanical Engineering</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.38.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.38.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.39">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.39.1" style="padding:0.25pt 0.0pt;">26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.39.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.39.3" style="padding:0.25pt 0.0pt;">Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.39.4" style="padding:0.25pt 0.0pt;">Basic Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.39.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.39.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.40">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.40.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.40.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.40.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.40.4" style="padding:0.25pt 0.0pt;">Clinical Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.40.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.40.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.41">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.41.1" style="padding:0.25pt 0.0pt;">27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.41.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.41.3" style="padding:0.25pt 0.0pt;">Radiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.41.4" style="padding:0.25pt 0.0pt;">Basic Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.41.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.41.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.42">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.42.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.42.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.42.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.42.4" style="padding:0.25pt 0.0pt;">Clinical Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.42.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.42.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.43">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.43.1" style="padding:0.25pt 0.0pt;">28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.43.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.43.3" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.43.4" style="padding:0.25pt 0.0pt;">Basic Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.43.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.43.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.44">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.44.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.44.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.44.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.44.4" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.44.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.44.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.45">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.45.1" style="padding:0.25pt 0.0pt;">29</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.45.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.45.3" style="padding:0.25pt 0.0pt;">Nursing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.45.4" style="padding:0.25pt 0.0pt;">Basic Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.45.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.45.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.46">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.46.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.46.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.46.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.46.4" style="padding:0.25pt 0.0pt;">Pharmacy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.46.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.46.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.47">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.47.1" style="padding:0.25pt 0.0pt;">30</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.47.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.47.3" style="padding:0.25pt 0.0pt;">Epidemiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.47.4" style="padding:0.25pt 0.0pt;">Basic Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.47.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.47.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.48">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.48.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.48.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.48.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.48.4" style="padding:0.25pt 0.0pt;">Preventive Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.48.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T4.1.1.48.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.49">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.49.1" style="padding:0.25pt 0.0pt;">31</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.49.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.49.3" style="padding:0.25pt 0.0pt;">Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.49.4" style="padding:0.25pt 0.0pt;">Clinical Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.49.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.49.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.50">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.50.1" style="padding:0.25pt 0.0pt;">32</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.50.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.50.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.50.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.50.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.50.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.50.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T4.1.1.50.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.51">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.51.1" style="padding:0.25pt 0.0pt;">33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.51.2" style="padding:0.25pt 0.0pt;">2nd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.51.3" style="padding:0.25pt 0.0pt;">Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T4.1.1.51.4" style="padding:0.25pt 0.0pt;">Clinical Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.51.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.1.51.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.52">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A1.T4.1.1.52.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A1.T4.1.1.52.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A1.T4.1.1.52.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T4.1.1.52.4" style="padding:0.25pt 0.0pt;">Pharmacy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A1.T4.1.1.52.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A1.T4.1.1.52.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents biographical information for the 73 experts who annotated the MMVU dataset.  Due to privacy concerns, only minimal identifying details are shown, such as their year of study, major, and the subjects they annotated.  The table provides a snapshot of the expertise involved in creating the high-quality MMVU benchmark. This information helps readers understand the background and credentials of those who contributed to the dataset's development and its expert-level nature.
> <details>
> <summary>read the caption</summary>
> Table 5:  Biographies of 73 annotators involved in \gradientRGBMMVU53,93,20310,10,80 construction (Author biographies are hidden to protect identity confidentiality).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.1.1">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1">ID</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.2" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.2.1">Year</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.3" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.3.1">Major</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.4" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.4.1">Assigned Subject(s)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.5.1">Author?</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.6.1">Validator?</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1" style="padding:0.25pt 0.0pt;">34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T5.1.1.2.3" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T5.1.1.2.4" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.1.2.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.1.2.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.3.1" style="padding:0.25pt 0.0pt;">35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.3.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.3.3" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.3.4" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.3.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.3.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.4.1" style="padding:0.25pt 0.0pt;">36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.4.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.4.3" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.4.4" style="padding:0.25pt 0.0pt;">Dentistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.4.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.4.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.5.1" style="padding:0.25pt 0.0pt;">37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.5.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.5.3" style="padding:0.25pt 0.0pt;">Public Health</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.5.4" style="padding:0.25pt 0.0pt;">Pharmacy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.5.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.5.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.6.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.6.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.6.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.6.4" style="padding:0.25pt 0.0pt;">Preventive Medicine</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.6.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.6.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.7.1" style="padding:0.25pt 0.0pt;">38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.7.2" style="padding:0.25pt 0.0pt;">4th year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.7.3" style="padding:0.25pt 0.0pt;">Pharmacy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.7.4" style="padding:0.25pt 0.0pt;">Pharmacy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.7.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.7.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.8.1" style="padding:0.25pt 0.0pt;">39</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.8.2" style="padding:0.25pt 0.0pt;">3rd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.8.3" style="padding:0.25pt 0.0pt;">East Asian Studies</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.8.4" style="padding:0.25pt 0.0pt;">Art</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.8.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.8.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.9.1" style="padding:0.25pt 0.0pt;">40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.9.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.9.3" style="padding:0.25pt 0.0pt;">Literature</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.9.4" style="padding:0.25pt 0.0pt;">Art</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.9.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.9.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.10.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.10.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.10.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.10.4" style="padding:0.25pt 0.0pt;">History</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.10.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.10.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.11.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.11.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.11.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.11.4" style="padding:0.25pt 0.0pt;">Literature</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.11.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.11.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.12.1" style="padding:0.25pt 0.0pt;">41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.12.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.12.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.12.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.12.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T5.1.1.12.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.12.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.13.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.13.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.13.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.13.4" style="padding:0.25pt 0.0pt;">History</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.13.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.13.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.14.1" style="padding:0.25pt 0.0pt;">42</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.14.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.14.3" style="padding:0.25pt 0.0pt;">Economics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.14.4" style="padding:0.25pt 0.0pt;">Economics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.14.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.14.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.15.1" style="padding:0.25pt 0.0pt;">43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.15.2" style="padding:0.25pt 0.0pt;">4th year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.15.3" style="padding:0.25pt 0.0pt;">Accounting</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.15.4" style="padding:0.25pt 0.0pt;">Economics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.15.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.15.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.16.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.16.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.16.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.16.4" style="padding:0.25pt 0.0pt;">Law</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.16.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.16.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.17.1" style="padding:0.25pt 0.0pt;">44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.17.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.17.3" style="padding:0.25pt 0.0pt;">Finance</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.17.4" style="padding:0.25pt 0.0pt;">Economics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.17.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.17.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.18.1" style="padding:0.25pt 0.0pt;">45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.18.2" style="padding:0.25pt 0.0pt;">3rd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.18.3" style="padding:0.25pt 0.0pt;">Public Administration</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.18.4" style="padding:0.25pt 0.0pt;">Law</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.18.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.18.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.19.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.19.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.19.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.19.4" style="padding:0.25pt 0.0pt;">Management</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.19.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.19.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.20.1" style="padding:0.25pt 0.0pt;">46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.20.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.20.3" style="padding:0.25pt 0.0pt;">Literature</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.20.4" style="padding:0.25pt 0.0pt;">Literature</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.20.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.20.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.21.1" style="padding:0.25pt 0.0pt;">47</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.21.2" style="padding:0.25pt 0.0pt;">5th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.21.3" style="padding:0.25pt 0.0pt;">Linguistics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.21.4" style="padding:0.25pt 0.0pt;">Literature</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.21.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.21.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.22.1" style="padding:0.25pt 0.0pt;">48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.22.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.22.3" style="padding:0.25pt 0.0pt;">Public Administration</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.22.4" style="padding:0.25pt 0.0pt;">Management</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.22.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.22.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.23.1" style="padding:0.25pt 0.0pt;">49</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.23.2" style="padding:0.25pt 0.0pt;">5th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.23.3" style="padding:0.25pt 0.0pt;">Astronomy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.23.4" style="padding:0.25pt 0.0pt;">Astronomy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.23.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.23.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.24.1" style="padding:0.25pt 0.0pt;">50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.24.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.24.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.24.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.24.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T5.1.1.24.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.24.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T5.1.1.24.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.25.1" style="padding:0.25pt 0.0pt;">51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.25.2" style="padding:0.25pt 0.0pt;">2nd year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.25.3" style="padding:0.25pt 0.0pt;">Astronomy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.25.4" style="padding:0.25pt 0.0pt;">Astronomy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.25.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.25.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.26.1" style="padding:0.25pt 0.0pt;">52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.26.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.26.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.26.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.26.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T5.1.1.26.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.26.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.27.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.27.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.27.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.27.4" style="padding:0.25pt 0.0pt;">Geography</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.27.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.27.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.28.1" style="padding:0.25pt 0.0pt;">53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.28.2" style="padding:0.25pt 0.0pt;">3rd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.28.3" style="padding:0.25pt 0.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.28.4" style="padding:0.25pt 0.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.28.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.28.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.29.1" style="padding:0.25pt 0.0pt;">54</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.29.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.29.3" style="padding:0.25pt 0.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.29.4" style="padding:0.25pt 0.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.29.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.29.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.30.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.30.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.30.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.30.4" style="padding:0.25pt 0.0pt;">Neurobiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.30.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.30.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.31.1" style="padding:0.25pt 0.0pt;">55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.31.2" style="padding:0.25pt 0.0pt;">3rd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.31.3" style="padding:0.25pt 0.0pt;">Marine Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.31.4" style="padding:0.25pt 0.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.31.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.31.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.32.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.32.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.32.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.32.4" style="padding:0.25pt 0.0pt;">Chemistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.32.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.32.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.33.1" style="padding:0.25pt 0.0pt;">56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.33.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.33.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.33.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.33.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T5.1.1.33.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.33.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.34.1" style="padding:0.25pt 0.0pt;">57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.34.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.34.3" style="padding:0.25pt 0.0pt;">Chemistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.34.4" style="padding:0.25pt 0.0pt;">Chemistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.34.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.34.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.35.1" style="padding:0.25pt 0.0pt;">58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.35.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.35.3" style="padding:0.25pt 0.0pt;">Chemistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.35.4" style="padding:0.25pt 0.0pt;">Chemistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.35.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.35.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.36.1" style="padding:0.25pt 0.0pt;">59</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.36.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.36.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.36.4" style="padding:0.25pt 0.0pt;">Electromagnetism</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.36.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.36.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.37.1" style="padding:0.25pt 0.0pt;">60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.37.2" style="padding:0.25pt 0.0pt;">4th year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.37.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.37.4" style="padding:0.25pt 0.0pt;">Electromagnetism</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.37.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.37.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.38">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.38.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.38.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.38.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.38.4" style="padding:0.25pt 0.0pt;">Thermodynamics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.38.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.38.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.39">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.39.1" style="padding:0.25pt 0.0pt;">61</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.39.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.39.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.39.4" style="padding:0.25pt 0.0pt;">Electromagnetism</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.39.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.39.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.40">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.40.1" style="padding:0.25pt 0.0pt;">62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.40.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.40.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.40.4" style="padding:0.25pt 0.0pt;">Electromagnetism</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.40.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.40.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.41">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.41.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.41.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.41.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.41.4" style="padding:0.25pt 0.0pt;">Mechanics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.41.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.41.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.42">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.42.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.42.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.42.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.42.4" style="padding:0.25pt 0.0pt;">Thermodynamics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.42.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.42.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.43">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.43.1" style="padding:0.25pt 0.0pt;">63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.43.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.43.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.43.4" style="padding:0.25pt 0.0pt;">Thermodynamics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.43.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.43.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.44">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.44.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.44.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.44.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.44.4" style="padding:0.25pt 0.0pt;">Electromagnetism</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.44.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.44.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.45">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.45.1" style="padding:0.25pt 0.0pt;">64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.45.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.45.3" style="padding:0.25pt 0.0pt;">Agricultural and Environmental Sciences</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.45.4" style="padding:0.25pt 0.0pt;">Geography</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.45.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.45.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.46">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.46.1" style="padding:0.25pt 0.0pt;">65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.46.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.46.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.46.4" style="padding:0.25pt 0.0pt;">Thermodynamics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.46.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.46.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.47">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.47.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.47.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.47.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.47.4" style="padding:0.25pt 0.0pt;">Mechanics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.47.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.47.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.48">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.48.1" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.48.2" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.48.3" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.48.4" style="padding:0.25pt 0.0pt;">Modern Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.48.5" style="padding:0.25pt 0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A1.T5.1.1.48.6" style="padding:0.25pt 0.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.49">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.49.1" style="padding:0.25pt 0.0pt;">66</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.49.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.49.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.49.4" style="padding:0.25pt 0.0pt;">Mechanics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.49.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.49.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.50">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.50.1" style="padding:0.25pt 0.0pt;">67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.50.2" style="padding:0.25pt 0.0pt;">3rd year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.50.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.50.4" style="padding:0.25pt 0.0pt;">Mechanics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.50.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.50.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.51">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.51.1" style="padding:0.25pt 0.0pt;">68</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.51.2" style="padding:0.25pt 0.0pt;">4th year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.51.3" style="padding:0.25pt 0.0pt;">Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.51.4" style="padding:0.25pt 0.0pt;">Modern Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.51.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.51.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.52">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.52.1" style="padding:0.25pt 0.0pt;">69</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.52.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.52.3" style="padding:0.25pt 0.0pt;">Neurobiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.52.4" style="padding:0.25pt 0.0pt;">Neurobiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.52.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.52.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.53">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.53.1" style="padding:0.25pt 0.0pt;">70</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.53.2" style="padding:0.25pt 0.0pt;">1st year PhD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.53.3" style="padding:0.25pt 0.0pt;">Neurobiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.53.4" style="padding:0.25pt 0.0pt;">Neurobiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.53.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.53.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.54">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.54.1" style="padding:0.25pt 0.0pt;">71</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.54.2" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.54.3" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.54.4" style="padding:0.25pt 0.0pt;">–</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.54.5" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T5.1.1.54.5.1" style="color:#005900;">✓</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.54.6" style="padding:0.25pt 0.0pt;"><span class="ltx_text" id="A1.T5.1.1.54.6.1" style="color:#005900;">✓</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.55">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.55.1" style="padding:0.25pt 0.0pt;">72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.55.2" style="padding:0.25pt 0.0pt;">3rd year Undergraduate</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.55.3" style="padding:0.25pt 0.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T5.1.1.55.4" style="padding:0.25pt 0.0pt;">Neurobiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.55.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T5.1.1.55.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.56">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T5.1.1.56.1" style="padding:0.25pt 0.0pt;">73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T5.1.1.56.2" style="padding:0.25pt 0.0pt;">1st year Master</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T5.1.1.56.3" style="padding:0.25pt 0.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T5.1.1.56.4" style="padding:0.25pt 0.0pt;">Neurobiology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.1.1.56.5" style="padding:0.25pt 0.0pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T5.1.1.56.6" style="padding:0.25pt 0.0pt;">✗</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a list of textbooks used in the creation of the MMVU benchmark, specifically for the Science discipline.  For each subject within the Science discipline (Astronomy, Biology, Chemistry, Electromagnetism, Geography, Mechanics, Modern Physics, and Neurobiology, and Thermodynamics), the table lists the specific textbook(s) and edition(s) that were consulted by expert annotators to create the questions and answers in the MMVU dataset. This detailed list provides transparency regarding the resources used to develop the benchmark and ensures the accuracy and depth of the expert-level knowledge assessed within the Science domain.
> <details>
> <summary>read the caption</summary>
> Table 6:  List of textbooks and corresponding example numbers for the Science discipline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T6.1">
<tr class="ltx_tr" id="A1.T6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T6.1.1.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.1.1.1">
<span class="ltx_p" id="A1.T6.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1.1">Subject</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_top ltx_border_tt" id="A1.T6.1.1.2" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.2.1">Textbook</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.2.1" rowspan="2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.2.1.1">
<span class="ltx_p" id="A1.T6.1.2.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.2.1.1.1.1">Astronomy</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.2.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.2.2.1">
<span class="ltx_p" id="A1.T6.1.2.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.2.2.1.1.1">Foundations of Astrophysics </em> <cite class="ltx_cite ltx_citemacro_cite">Ryden &amp; Peterson (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib124" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.3.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.3.1.1">
<span class="ltx_p" id="A1.T6.1.3.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.3.1.1.1.1">Stellar Structure And Evolution </em> <cite class="ltx_cite ltx_citemacro_cite">Pols (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib119" title="">2011</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.4.1" rowspan="5" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.4.1.1">
<span class="ltx_p" id="A1.T6.1.4.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.4.1.1.1.1">Biology</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.4.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.4.2.1">
<span class="ltx_p" id="A1.T6.1.4.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.4.2.1.1.1">Biology, 2nd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Clark et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib26" title="">2018a</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.5.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.5.1.1">
<span class="ltx_p" id="A1.T6.1.5.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.5.1.1.1.1">Introduction to Agricultural Engineering Technology: A Problem Solving Approach, 4th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Field &amp; Long (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib43" title="">2018</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.6.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.6.1.1">
<span class="ltx_p" id="A1.T6.1.6.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.6.1.1.1.1">Introduction to Environmental Engineering, 5th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Davis &amp; Cornwell (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib33" title="">2012</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.7.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.7.1.1">
<span class="ltx_p" id="A1.T6.1.7.1.1.1" style="width:284.5pt;">4.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.7.1.1.1.1">The Economy of Nature, 7th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Ricklefs (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib123" title="">2013</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.8.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.8.1.1">
<span class="ltx_p" id="A1.T6.1.8.1.1.1" style="width:284.5pt;">5.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.8.1.1.1.1">The Molecular Biology of the Cell, 6th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Alberts et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib2" title="">2014</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.9.1" rowspan="5" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.9.1.1">
<span class="ltx_p" id="A1.T6.1.9.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.9.1.1.1.1">Chemistry</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.9.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.9.2.1">
<span class="ltx_p" id="A1.T6.1.9.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.9.2.1.1.1">Atkins’ Physical Chemistry, 12th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Atkins et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib8" title="">2023</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.10.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.10.1.1">
<span class="ltx_p" id="A1.T6.1.10.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.10.1.1.1.1">Chemistry, 2nd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Flowers et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib44" title="">2019</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.11.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.11.1.1">
<span class="ltx_p" id="A1.T6.1.11.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.11.1.1.1.1">Chemistry: The Central Science, 15th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Brown et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib14" title="">2023</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.12.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.12.1.1">
<span class="ltx_p" id="A1.T6.1.12.1.1.1" style="width:284.5pt;">4.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.12.1.1.1.1">Organic Chemistry As A Second Language </em> <cite class="ltx_cite ltx_citemacro_cite">Klein (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib77" title="">2024</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.13.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.13.1.1">
<span class="ltx_p" id="A1.T6.1.13.1.1.1" style="width:284.5pt;">5.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.13.1.1.1.1">Organic Chemistry, 2nd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Clayden et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib28" title="">2012</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.14.1" rowspan="2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.14.1.1">
<span class="ltx_p" id="A1.T6.1.14.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.14.1.1.1.1">Electromagnetism</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.14.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.14.2.1">
<span class="ltx_p" id="A1.T6.1.14.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.14.2.1.1.1">Introduction to Electrodynamics, 4th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Griffiths (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib56" title="">2023</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.15.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.15.1.1">
<span class="ltx_p" id="A1.T6.1.15.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.15.1.1.1.1">University Physics Volume 2 (Electromagnetism)</em> <cite class="ltx_cite ltx_citemacro_cite">Ling et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib95" title="">2016b</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.16.1" rowspan="3" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.16.1.1">
<span class="ltx_p" id="A1.T6.1.16.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.16.1.1.1.1">Geography</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.16.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.16.2.1">
<span class="ltx_p" id="A1.T6.1.16.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.16.2.1.1.1">Fundamentals of Geophysics, 2nd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Lowrie &amp; Fichtner (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib100" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.17.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.17.1.1">
<span class="ltx_p" id="A1.T6.1.17.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.17.1.1.1.1">Human Geography, 12th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Fouberg &amp; Murphy (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib45" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.18.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.18.1.1">
<span class="ltx_p" id="A1.T6.1.18.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.18.1.1.1.1">Physical Geography: A Landscape Appreciation, 10th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Hess &amp; McKnight (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib61" title="">2021</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.19.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.19.1.1">
<span class="ltx_p" id="A1.T6.1.19.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.19.1.1.1.1">Mechanics</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.19.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.19.2.1">
<span class="ltx_p" id="A1.T6.1.19.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.19.2.1.1.1">University Physics Volume 1</em> <cite class="ltx_cite ltx_citemacro_cite">Ling et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib94" title="">2016a</a>)</cite>
<br class="ltx_break"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.20.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.20.1.1">
<span class="ltx_p" id="A1.T6.1.20.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.20.1.1.1.1">Modern Physics</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.20.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.20.2.1">
<span class="ltx_p" id="A1.T6.1.20.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.20.2.1.1.1">University Physics Volume 3</em> <cite class="ltx_cite ltx_citemacro_cite">Ling et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib96" title="">2016c</a>)</cite>
<br class="ltx_break"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.21.1" rowspan="3" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.21.1.1">
<span class="ltx_p" id="A1.T6.1.21.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.21.1.1.1.1">Neurobiology</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.21.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.21.2.1">
<span class="ltx_p" id="A1.T6.1.21.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.21.2.1.1.1">Neuroscience, 6th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Purves et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib120" title="">2018</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.22.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.22.1.1">
<span class="ltx_p" id="A1.T6.1.22.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.22.1.1.1.1">Principles of Neural Science, 6th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Kandel et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib72" title="">2021</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T6.1.23.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.23.1.1">
<span class="ltx_p" id="A1.T6.1.23.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.23.1.1.1.1">Principles of Neurobiology </em> <cite class="ltx_cite ltx_citemacro_cite">Luo (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib103" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T6.1.24.1" rowspan="2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.24.1.1">
<span class="ltx_p" id="A1.T6.1.24.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T6.1.24.1.1.1.1">Thermodynamics</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T6.1.24.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.24.2.1">
<span class="ltx_p" id="A1.T6.1.24.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.24.2.1.1.1">An Introduction to Thermal Physics </em> <cite class="ltx_cite ltx_citemacro_cite">Schroeder (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib125" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T6.1.25.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.1.25.1.1">
<span class="ltx_p" id="A1.T6.1.25.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T6.1.25.1.1.1.1">University Physics Volume 2 (Thermodynamics)</em> <cite class="ltx_cite ltx_citemacro_cite">Ling et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib95" title="">2016b</a>)</cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the textbooks used by expert annotators to create questions for the Engineering discipline within the MMVU benchmark. Each textbook is linked to the specific subjects it covers in the benchmark. This detailed breakdown helps to understand the scope and depth of knowledge represented in the engineering-related questions in the MMVU dataset.
> <details>
> <summary>read the caption</summary>
> Table 7:  List of textbooks and corresponding example numbers for the Engineering discipline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.1">
<tr class="ltx_tr" id="A1.T7.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T7.1.1.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.1">
<span class="ltx_p" id="A1.T7.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1">Subject</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_top ltx_border_tt" id="A1.T7.1.1.2" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1">Textbook</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.2.1" rowspan="4" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.1.1">
<span class="ltx_p" id="A1.T7.1.2.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T7.1.2.1.1.1.1"><span class="ltx_text" id="A1.T7.1.2.1.1.1.1.1"></span><span class="ltx_text" id="A1.T7.1.2.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.2.1.1.1.1.2.1">
<span class="ltx_tr" id="A1.T7.1.2.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.2.1.1.1.1.2.1.1.1" style="padding:0.25pt 0.0pt;">Biomedical</span></span>
<span class="ltx_tr" id="A1.T7.1.2.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.2.1.1.1.1.2.1.2.1" style="padding:0.25pt 0.0pt;">Engineering</span></span>
</span></span> <span class="ltx_text" id="A1.T7.1.2.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.2.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.2.1">
<span class="ltx_p" id="A1.T7.1.2.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.2.2.1.1.1">Biomaterials Science: An Introduction to Materials in Medicine, 4th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Wagner et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib139" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.3.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.3.1.1">
<span class="ltx_p" id="A1.T7.1.3.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.3.1.1.1.1">Biomaterials and Biopolymers </em> <cite class="ltx_cite ltx_citemacro_cite">Domb et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib36" title="">2023</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.4.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.1.1">
<span class="ltx_p" id="A1.T7.1.4.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.4.1.1.1.1">Fundamentals and Advances in Medical Biotechnology </em> <cite class="ltx_cite ltx_citemacro_cite">Anwar et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib5" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.5.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.5.1.1">
<span class="ltx_p" id="A1.T7.1.5.1.1.1" style="width:284.5pt;">4.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.5.1.1.1.1">Introduction to Biomedical Engineering, 4th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Enderle &amp; Bronzino (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib38" title="">2017</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.6.1" rowspan="3" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.6.1.1">
<span class="ltx_p" id="A1.T7.1.6.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T7.1.6.1.1.1.1">Civil Engineering</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.6.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.6.2.1">
<span class="ltx_p" id="A1.T7.1.6.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.6.2.1.1.1">Engineering Geology and Construction </em> <cite class="ltx_cite ltx_citemacro_cite">Bell (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib11" title="">2004</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.7.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.7.1.1">
<span class="ltx_p" id="A1.T7.1.7.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.7.1.1.1.1">Principles of Geotechnical Engineering, 9th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Das (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib31" title="">2017</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.8.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.8.1.1">
<span class="ltx_p" id="A1.T7.1.8.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.8.1.1.1.1">Structure for Architects: A Case Study in Steel, Wood, and Reinforced Concrete Design </em> <cite class="ltx_cite ltx_citemacro_cite">Bedi &amp; Dabby (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib10" title="">2019</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.9.1" rowspan="7" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.9.1.1">
<span class="ltx_p" id="A1.T7.1.9.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T7.1.9.1.1.1.1">Computer Science</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.9.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.9.2.1">
<span class="ltx_p" id="A1.T7.1.9.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.9.2.1.1.1">Algorithms, 4th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Sedgewick &amp; Wayne (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib126" title="">2011</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.10.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.10.1.1">
<span class="ltx_p" id="A1.T7.1.10.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.10.1.1.1.1">Computer Organization and Design: The Hardware/Software Interface, 6th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Patterson &amp; Hennessy (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib118" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.11.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.11.1.1">
<span class="ltx_p" id="A1.T7.1.11.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.11.1.1.1.1">Computer Systems: A Programmer’s Perspective, 3rd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Bryant &amp; O’Hallaron (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib16" title="">2011</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.12.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.12.1.1">
<span class="ltx_p" id="A1.T7.1.12.1.1.1" style="width:284.5pt;">4.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.12.1.1.1.1">Deep Learning </em> <cite class="ltx_cite ltx_citemacro_cite">Goodfellow et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib52" title="">2016</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.13.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.13.1.1">
<span class="ltx_p" id="A1.T7.1.13.1.1.1" style="width:284.5pt;">5.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.13.1.1.1.1">Digital Image Processing, 4th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Rafael &amp; Richard (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib121" title="">2018</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.14.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.14.1.1">
<span class="ltx_p" id="A1.T7.1.14.1.1.1" style="width:284.5pt;">6.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.14.1.1.1.1">Introduction to Algorithms, 4th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Cormen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib30" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.15.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.15.1.1">
<span class="ltx_p" id="A1.T7.1.15.1.1.1" style="width:284.5pt;">7.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.15.1.1.1.1">Operating System Concepts, 10th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Silberschatz et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib129" title="">2018</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.16.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.16.1.1">
<span class="ltx_p" id="A1.T7.1.16.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T7.1.16.1.1.1.1"><span class="ltx_text" id="A1.T7.1.16.1.1.1.1.1"></span><span class="ltx_text" id="A1.T7.1.16.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.16.1.1.1.1.2.1">
<span class="ltx_tr" id="A1.T7.1.16.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.16.1.1.1.1.2.1.1.1" style="padding:0.25pt 0.0pt;">Electrical</span></span>
<span class="ltx_tr" id="A1.T7.1.16.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.16.1.1.1.1.2.1.2.1" style="padding:0.25pt 0.0pt;">Engineering</span></span>
</span></span> <span class="ltx_text" id="A1.T7.1.16.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.16.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.16.2.1">
<span class="ltx_p" id="A1.T7.1.16.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.16.2.1.1.1">Electrical Engineering: Principles and Applications, 7th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Hambley (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib57" title="">2018</a>)</cite>
<br class="ltx_break"/>
<br class="ltx_break"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.17.1" rowspan="3" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.17.1.1">
<span class="ltx_p" id="A1.T7.1.17.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T7.1.17.1.1.1.1"><span class="ltx_text" id="A1.T7.1.17.1.1.1.1.1"></span><span class="ltx_text" id="A1.T7.1.17.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.17.1.1.1.1.2.1">
<span class="ltx_tr" id="A1.T7.1.17.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.17.1.1.1.1.2.1.1.1" style="padding:0.25pt 0.0pt;">Electronics</span></span>
<span class="ltx_tr" id="A1.T7.1.17.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.17.1.1.1.1.2.1.2.1" style="padding:0.25pt 0.0pt;">and Communication</span></span>
</span></span> <span class="ltx_text" id="A1.T7.1.17.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.17.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.17.2.1">
<span class="ltx_p" id="A1.T7.1.17.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.17.2.1.1.1">CMOS Analog Circuit Design, 3rd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Allen &amp; Holberg (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib3" title="">2011</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.18.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.18.1.1">
<span class="ltx_p" id="A1.T7.1.18.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.18.1.1.1.1">Introduction to Communication Systems </em> <cite class="ltx_cite ltx_citemacro_cite">Madhow (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib105" title="">2014</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.19.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.19.1.1">
<span class="ltx_p" id="A1.T7.1.19.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.19.1.1.1.1">The Art of Electronics, 3rd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Horowitz &amp; Hill (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib63" title="">2015</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.20.1" rowspan="4" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.20.1.1">
<span class="ltx_p" id="A1.T7.1.20.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T7.1.20.1.1.1.1">Materials Science</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.20.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.20.2.1">
<span class="ltx_p" id="A1.T7.1.20.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.20.2.1.1.1">Composite Materials: Science and Engineering, 3rd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Chawla (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib19" title="">2012</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.21.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.21.1.1">
<span class="ltx_p" id="A1.T7.1.21.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.21.1.1.1.1">Convection in Porous Media, 5th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Nield &amp; Bejan (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib112" title="">2017</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.22.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.22.1.1">
<span class="ltx_p" id="A1.T7.1.22.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.22.1.1.1.1">Fiber-Reinforced Composites Materials, Manufacturing, and Design, 3rd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Mallick (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib106" title="">2007</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.23.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.23.1.1">
<span class="ltx_p" id="A1.T7.1.23.1.1.1" style="width:284.5pt;">4.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.23.1.1.1.1">Materials Science and Engineering: An Introduction, 10th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Callister Jr &amp; Rethwisch (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib18" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T7.1.24.1" rowspan="6" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.24.1.1">
<span class="ltx_p" id="A1.T7.1.24.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T7.1.24.1.1.1.1"><span class="ltx_text" id="A1.T7.1.24.1.1.1.1.1"></span><span class="ltx_text" id="A1.T7.1.24.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.24.1.1.1.1.2.1">
<span class="ltx_tr" id="A1.T7.1.24.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.24.1.1.1.1.2.1.1.1" style="padding:0.25pt 0.0pt;">Mechanical</span></span>
<span class="ltx_tr" id="A1.T7.1.24.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T7.1.24.1.1.1.1.2.1.2.1" style="padding:0.25pt 0.0pt;">Engineering</span></span>
</span></span> <span class="ltx_text" id="A1.T7.1.24.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.24.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.24.2.1">
<span class="ltx_p" id="A1.T7.1.24.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.24.2.1.1.1">Industrial Automation: An Engineering Approach</em></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.25.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.25.1.1">
<span class="ltx_p" id="A1.T7.1.25.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.25.1.1.1.1">Industrial Robotics Control: Mathematical Models, Software Architecture, and Electronics Design </em> <cite class="ltx_cite ltx_citemacro_cite">Frigeni (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib46" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.26.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.26.1.1">
<span class="ltx_p" id="A1.T7.1.26.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.26.1.1.1.1">Intelligent Manufacturing System and Intelligent Workshop </em> <cite class="ltx_cite ltx_citemacro_cite"><a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib140" title="">Wang </a></cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.27.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.27.1.1">
<span class="ltx_p" id="A1.T7.1.27.1.1.1" style="width:284.5pt;">4.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.27.1.1.1.1">Machine Tool Practices, 11th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Kibbe et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib76" title="">2019</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T7.1.28.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.28.1.1">
<span class="ltx_p" id="A1.T7.1.28.1.1.1" style="width:284.5pt;">5.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.28.1.1.1.1">Marks’ Standard Handbook for Mechanical Engineers, 12th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Avallone et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib9" title="">2018</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T7.1.29.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.29.1.1">
<span class="ltx_p" id="A1.T7.1.29.1.1.1" style="width:284.5pt;">6.   <em class="ltx_emph ltx_font_italic" id="A1.T7.1.29.1.1.1.1">Modern Control Engineering, 5th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Ogata (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib114" title="">2010</a>)</cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the textbooks used to curate questions for the Healthcare discipline within the MMVU benchmark.  For each subject area within Healthcare (Basic Medicine, Clinical Medicine, Dentistry, Pharmacy, Preventive Medicine), it indicates the specific textbook(s) and edition(s) used as authoritative sources for generating expert-level questions related to video content. This detailed breakdown allows for a better understanding of the knowledge base underpinning the MMVU benchmark's Healthcare questions.
> <details>
> <summary>read the caption</summary>
> Table 8:  List of textbooks and corresponding example numbers for the Healthcare discipline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T8.1">
<tr class="ltx_tr" id="A1.T8.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T8.1.1.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.1.1">
<span class="ltx_p" id="A1.T8.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1.1">Subject</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_top ltx_border_tt" id="A1.T8.1.1.2" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.2.1">Textbook</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.2.1" rowspan="3" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.2.1.1">
<span class="ltx_p" id="A1.T8.1.2.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T8.1.2.1.1.1.1">Basic Medicine</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.2.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.2.2.1">
<span class="ltx_p" id="A1.T8.1.2.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.2.2.1.1.1">Kuby Immunology, 8th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Owen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib117" title="">2018</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T8.1.3.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.3.1.1">
<span class="ltx_p" id="A1.T8.1.3.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.3.1.1.1.1">Robbins and Cotran Pathologic Basis of Disease, 10th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Kumar et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib81" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T8.1.4.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.4.1.1">
<span class="ltx_p" id="A1.T8.1.4.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.4.1.1.1.1">Tissue Barriers in Disease, Injury and Regeneration </em> <cite class="ltx_cite ltx_citemacro_cite">Gorbunov (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib54" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.5.1" rowspan="2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.5.1.1">
<span class="ltx_p" id="A1.T8.1.5.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T8.1.5.1.1.1.1">Clinical Medicine</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.5.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.5.2.1">
<span class="ltx_p" id="A1.T8.1.5.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.5.2.1.1.1">Cecil Essentials of Medicine, 10th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Wing &amp; Schiffman (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib148" title="">2021</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T8.1.6.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.6.1.1">
<span class="ltx_p" id="A1.T8.1.6.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.6.1.1.1.1">Kumar and Clark’s Clinical Medicine, 10th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Feather et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib40" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.7.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.7.1.1">
<span class="ltx_p" id="A1.T8.1.7.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T8.1.7.1.1.1.1">Dentistry</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.7.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.7.2.1">
<span class="ltx_p" id="A1.T8.1.7.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.7.2.1.1.1">Pharmacology and Therapeutics for Dentistry, 7th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Yagiela et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib155" title="">2010</a>)</cite>
<br class="ltx_break"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.8.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.8.1.1">
<span class="ltx_p" id="A1.T8.1.8.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T8.1.8.1.1.1.1">Pharmacy</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T8.1.8.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.8.2.1">
<span class="ltx_p" id="A1.T8.1.8.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.8.2.1.1.1">The Pharmacological Basis of Therapeutics, 13th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Brunton et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib15" title="">2017</a>)</cite>
<br class="ltx_break"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T8.1.9.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.9.1.1">
<span class="ltx_p" id="A1.T8.1.9.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T8.1.9.1.1.1.1"><span class="ltx_text" id="A1.T8.1.9.1.1.1.1.1"></span><span class="ltx_text" id="A1.T8.1.9.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T8.1.9.1.1.1.1.2.1">
<span class="ltx_tr" id="A1.T8.1.9.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T8.1.9.1.1.1.1.2.1.1.1" style="padding:0.25pt 0.0pt;">Preventive</span></span>
<span class="ltx_tr" id="A1.T8.1.9.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T8.1.9.1.1.1.1.2.1.2.1" style="padding:0.25pt 0.0pt;">Medicine</span></span>
</span></span> <span class="ltx_text" id="A1.T8.1.9.1.1.1.1.3"></span></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T8.1.9.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.9.2.1">
<span class="ltx_p" id="A1.T8.1.9.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T8.1.9.2.1.1.1">Public Health and Preventive Medicine, 15th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Maxcy et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib108" title="">2008</a>)</cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents the textbooks used for question creation within the Humanities and Social Science disciplines of the MMVU benchmark.  For each subject (Art, Economics, History, Law, Literature, and Management), the table lists the specific textbooks that served as authoritative references during the question annotation process. This detailed listing provides context on the range of knowledge assessed in the Humanities and Social Science domain within the MMVU benchmark.
> <details>
> <summary>read the caption</summary>
> Table 9:  List of textbooks and corresponding example numbers for the Humanities and Social Science discipline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T9.1">
<tr class="ltx_tr" id="A1.T9.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T9.1.1.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.1.1.1">
<span class="ltx_p" id="A1.T9.1.1.1.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.1.1">Subject</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_align_top ltx_border_tt" id="A1.T9.1.1.2" style="padding:0.25pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.2.1">Textbook</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.2.1" rowspan="3" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.2.1.1">
<span class="ltx_p" id="A1.T9.1.2.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T9.1.2.1.1.1.1">Art</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.2.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.2.2.1">
<span class="ltx_p" id="A1.T9.1.2.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.2.2.1.1.1">Art Through the Ages: A Global History Volume I, 16th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Kleiner (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib78" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.3.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.3.1.1">
<span class="ltx_p" id="A1.T9.1.3.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.3.1.1.1.1">Introduction to Film Studies, 5th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Nelmes (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib111" title="">2012</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.4.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.4.1.1">
<span class="ltx_p" id="A1.T9.1.4.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.4.1.1.1.1">The Filmmaker’s Handbook: A Comprehensive Guide for the Digital Age, 5th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Ascher &amp; Pincus (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib6" title="">2012</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.5.1" rowspan="5" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.5.1.1">
<span class="ltx_p" id="A1.T9.1.5.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T9.1.5.1.1.1.1">Economics</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.5.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.5.2.1">
<span class="ltx_p" id="A1.T9.1.5.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.5.2.1.1.1">Intermediate Microeconomics: A Modern Approach, 8th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Varian (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib138" title="">2010</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.6.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.6.1.1">
<span class="ltx_p" id="A1.T9.1.6.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.6.1.1.1.1">Land Resource Economics and Sustainable Development: Economic Policies and the Common Good </em> <cite class="ltx_cite ltx_citemacro_cite">Van Kooten (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib137" title="">2011</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.7.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.7.1.1">
<span class="ltx_p" id="A1.T9.1.7.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.7.1.1.1.1">Macroeconomics, 9th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Blanchard (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib12" title="">2024</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.8.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.8.1.1">
<span class="ltx_p" id="A1.T9.1.8.1.1.1" style="width:284.5pt;">4.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.8.1.1.1.1">Principles of Economics, 3rd Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Greenlaw et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib55" title="">2023</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.9.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.9.1.1">
<span class="ltx_p" id="A1.T9.1.9.1.1.1" style="width:284.5pt;">5.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.9.1.1.1.1">Principles of Microeconomics, 9th Edition </em> <cite class="ltx_cite ltx_citemacro_cite">Mankiw (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib107" title="">2020</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.10.1" rowspan="2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.10.1.1">
<span class="ltx_p" id="A1.T9.1.10.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T9.1.10.1.1.1.1">History</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.10.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.10.2.1">
<span class="ltx_p" id="A1.T9.1.10.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.10.2.1.1.1">Archaeology: Theories Methods and Practice, 7th Edition</em> <cite class="ltx_cite ltx_citemacro_cite">Renfrew &amp; Bahn (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib122" title="">2016</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.11.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.11.1.1">
<span class="ltx_p" id="A1.T9.1.11.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.11.1.1.1.1">World History Volume 1: to 1500 </em> <cite class="ltx_cite ltx_citemacro_cite">Kordas et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib79" title="">2022</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.12.1" rowspan="3" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.12.1.1">
<span class="ltx_p" id="A1.T9.1.12.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T9.1.12.1.1.1.1">Law</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.12.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.12.2.1">
<span class="ltx_p" id="A1.T9.1.12.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.12.2.1.1.1">Arbitration Awards: A Practical Approach </em> <cite class="ltx_cite ltx_citemacro_cite">Turner (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib136" title="">2008</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.13.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.13.1.1">
<span class="ltx_p" id="A1.T9.1.13.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.13.1.1.1.1">Contract Law</em> <cite class="ltx_cite ltx_citemacro_cite">Turner (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib135" title="">2013</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.14.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.14.1.1">
<span class="ltx_p" id="A1.T9.1.14.1.1.1" style="width:284.5pt;">3.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.14.1.1.1.1">The CISG: A new textbook for students and practitioners</em> <cite class="ltx_cite ltx_citemacro_cite">Huber &amp; Mullis (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib67" title="">2009</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.15.1" rowspan="2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.15.1.1">
<span class="ltx_p" id="A1.T9.1.15.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T9.1.15.1.1.1.1">Literature</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A1.T9.1.15.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.15.2.1">
<span class="ltx_p" id="A1.T9.1.15.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.15.2.1.1.1">An Introduction to Language, 11th Edition</em> <cite class="ltx_cite ltx_citemacro_cite">Fromkin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib47" title="">2017</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top" id="A1.T9.1.16.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.16.1.1">
<span class="ltx_p" id="A1.T9.1.16.1.1.1" style="width:284.5pt;">2.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.16.1.1.1.1">The Cambridge Introduction to the Novel</em> <cite class="ltx_cite ltx_citemacro_cite">MacKay (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib104" title="">2010</a>)</cite></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T9.1.17.1" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.17.1.1">
<span class="ltx_p" id="A1.T9.1.17.1.1.1" style="width:71.1pt;"><span class="ltx_text" id="A1.T9.1.17.1.1.1.1">Management</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T9.1.17.2" style="padding:0.25pt 0.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.17.2.1">
<span class="ltx_p" id="A1.T9.1.17.2.1.1" style="width:284.5pt;">1.   <em class="ltx_emph ltx_font_italic" id="A1.T9.1.17.2.1.1.1">Principles of Management </em> <cite class="ltx_cite ltx_citemacro_cite">Bright et al. (<a class="ltx_ref" href="https://arxiv.org/html/2501.12380v1#bib.bib13" title="">2019</a>)</cite></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 details the configurations of the 32 multimodal foundation models evaluated in the MMVU benchmark.  It lists each model's name, release date, version, whether it supports video input, the number of input frames used (if multi-image input is supported), and the inference pipeline used. For proprietary models, the 'Source' column provides a URL; for open-source models, it gives the Hugging Face model name.  The number of input frames is chosen from 2, 4, 8, 16, or 32, based on the model's context window limitations.  'HF' indicates that the model was accessed through Hugging Face.
> <details>
> <summary>read the caption</summary>
> Table 10:  Details of the multimodal foundation models evaluated in \gradientRGBMMVU53,93,20310,10,80. The “Source” column includes URLs for proprietary models and Hugging Face model names for open-source models. The “# Input Frames” column, for those models only support multi-image input, represents the default number of input frames, chosen from 2, 4, 8, 16, 32, based on the maximum value that does not exceed the model’s context window. “HF” means “Hugging Face”.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.12380/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12380/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}