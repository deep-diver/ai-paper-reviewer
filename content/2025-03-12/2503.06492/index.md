---
title: "VisualSimpleQA: A Benchmark for Decoupled Evaluation of Large Vision-Language Models in Fact-Seeking Question Answering"
summary: "VisualSimpleQA: A new benchmark for fine-grained evaluation of visual and linguistic modules in fact-seeking LVLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Zhongguancun Laboratory",]
showSummary: true
date: 2025-03-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.06492 {{< /keyword >}}
{{< keyword icon="writer" >}} Yanling Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.06492" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.06492" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.06492/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Vision-Language Models(LVLMs) are not perfect, often giving incorrect answers in question answering. Existing tests mainly check the final answer, not how each part (vision, language) performs. This limits improvement in specific areas. So, there is a need for better tests that can pinpoint where models struggle, leading to more effective advancements in these AI systems.



To solve this, VisualSimpleQA is introduced. It has two main features: First, it lets you easily test the vision and language parts of LVLMs separately. Second, it uses clear difficulty levels to help create tricky questions. Tests on 15 LVLMs showed even the best models like GPT-40 only got around 60% correct, and just 30% on the hardest questions. This new test shows big improvements are possible in both seeing and understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VisualSimpleQA enables streamlined and decoupled evaluation of LVLMs in visual and linguistic modalities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VisualSimpleQA incorporates well-defined difficulty criteria to guide human annotation and facilitates the extraction of a challenging subset. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments highlight opportunities for improvement in both visual and linguistic modules of LVLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a new benchmark that enables a more detailed evaluation** of LVLMs, which can help researchers to identify and address the specific weaknesses of these models. It **offers insights into both visual and linguistic capabilities** for further research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.06492/x1.png)

> 🔼 VisualSimpleQA is a multimodal fact-seeking QA benchmark.  This figure shows an example from the benchmark. A multimodal question is posed, along with an image containing a region of interest (ROI, highlighted by a red box).  The ROI is crucial for answering the question. The figure also displays attributes and tags associated with the example. These attributes and tags (such as image resolution, rationale granularity, etc.) are used to compute a difficulty score for each sample in the benchmark, helping researchers understand model performance on more challenging questions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of an example in VisualSimpleQA. The red box highlights the region of interest (ROI). Each sample has several attributes and tags, which allow us to measure its overall difficulty score based on our proposed difficulty criteria.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S2.T1.1.1.1" style="padding:-0.5pt 5.1pt;">  <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.2" style="padding:-0.5pt 5.1pt;">
<span class="ltx_text" id="S2.T1.1.1.2.1"></span><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2"> <span class="ltx_text" id="S2.T1.1.1.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.2.2.1.1">
<span class="ltx_tr" id="S2.T1.1.1.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.2.2.1.1.1.1" style="padding:-0.5pt 5.1pt;">Factuality-</span></span>
<span class="ltx_tr" id="S2.T1.1.1.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.2.2.1.1.2.1" style="padding:-0.5pt 5.1pt;">aware</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.2.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.3" style="padding:-0.5pt 5.1pt;">
<span class="ltx_text" id="S2.T1.1.1.3.1"></span><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.2"> <span class="ltx_text" id="S2.T1.1.1.3.2.1">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.3.2.1.1">
<span class="ltx_tr" id="S2.T1.1.1.3.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.3.2.1.1.1.1" style="padding:-0.5pt 5.1pt;">Decoupled</span></span>
<span class="ltx_tr" id="S2.T1.1.1.3.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.3.2.1.1.2.1" style="padding:-0.5pt 5.1pt;">Evaluation</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.3.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.4" style="padding:-0.5pt 5.1pt;">
<span class="ltx_text" id="S2.T1.1.1.4.1"></span><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.4.2"> <span class="ltx_text" id="S2.T1.1.1.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.4.2.1.1">
<span class="ltx_tr" id="S2.T1.1.1.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.4.2.1.1.1.1" style="padding:-0.5pt 5.1pt;">Difficulty</span></span>
<span class="ltx_tr" id="S2.T1.1.1.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.1.4.2.1.1.2.1" style="padding:-0.5pt 5.1pt;">Criteria</span></span>
</span></span><span class="ltx_text" id="S2.T1.1.1.4.2.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1" style="padding:-0.5pt 5.1pt;">OK-VQA   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2" style="padding:-0.5pt 5.1pt;">All</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.3" style="padding:-0.5pt 5.1pt;">No</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.1" style="padding:-0.5pt 5.1pt;">A-OKVQA   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2" style="padding:-0.5pt 5.1pt;">All</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3" style="padding:-0.5pt 5.1pt;">No</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.1" style="padding:-0.5pt 5.1pt;">MMBench   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.2" style="padding:-0.5pt 5.1pt;">Partial</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3" style="padding:-0.5pt 5.1pt;">No</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.1" style="padding:-0.5pt 5.1pt;">MMStar   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.2" style="padding:-0.5pt 5.1pt;">Partial</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.3" style="padding:-0.5pt 5.1pt;">No</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6">
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.1" style="padding:-0.5pt 5.1pt;">MMT-Bench   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.2" style="padding:-0.5pt 5.1pt;">Partial</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.3" style="padding:-0.5pt 5.1pt;">No</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.1" style="padding:-0.5pt 5.1pt;">MFC-Bench   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.2" style="padding:-0.5pt 5.1pt;">Partial</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.3" style="padding:-0.5pt 5.1pt;">No</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.7.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8">
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.1" style="padding:-0.5pt 5.1pt;">Prism   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.2" style="padding:-0.5pt 5.1pt;">–</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.3" style="padding:-0.5pt 5.1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9">
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.1" style="padding:-0.5pt 5.1pt;">HallusionBench   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.2" style="padding:-0.5pt 5.1pt;">Partial</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.3" style="padding:-0.5pt 5.1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.4" style="padding:-0.5pt 5.1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.1.10.1" style="padding:-0.5pt 5.1pt;">VisualSimpleQA   <span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.10.2" style="padding:-0.5pt 5.1pt;">All</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.10.3" style="padding:-0.5pt 5.1pt;">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.10.4" style="padding:-0.5pt 5.1pt;">Yes</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares VisualSimpleQA with other relevant multimodal benchmarks across several key properties.  These properties include whether the benchmark is factuality-aware, if it supports decoupled evaluation of visual and linguistic modules, and whether it incorporates well-defined difficulty criteria for the samples. This allows for a comprehensive comparison of the strengths and weaknesses of VisualSimpleQA relative to existing methods in the field of multimodal fact-seeking question answering.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of properties between VisualSimpleQA and relevant multimodal benchmarks.
> </details>





### In-depth insights


#### Decoupled QA Eval
**Decoupled QA evaluation** is a critical approach for assessing vision-language models (VLMs). Traditional end-to-end QA benchmarks offer limited insights into the performance of individual modules. By isolating and evaluating visual perception, knowledge retrieval, and reasoning components, decoupled evaluation allows for a more granular understanding of model strengths and weaknesses. This involves creating paired questions, where one version requires visual input and the other relies solely on text, enabling comparative analysis of model performance across modalities. Such evaluation provides valuable guidance for targeted model improvement, focusing on specific areas such as enhancing visual recognition or knowledge integration, ultimately leading to more robust and reliable VLM systems.

#### VisualSimpleQA
**VisualSimpleQA** presents a new benchmark designed to **decouple evaluation** in large vision-language models for fact-seeking QA. It uniquely enables evaluation of **modality-specific modules**, highlighting performance differences. Incorporating well-defined difficulty criteria assists in the creation of the benchmark and is used to generate challenging subsets, like **VisualSimpleQA-hard**. Experiments on multiple LVLMs demonstrate the benchmark's ability to reveal improvement opportunities in both visual and linguistic modules. This is important because it can pinpoint specific areas for improvement. Most importantly, the focus on factuality can improve response accuracy, and the decoupled evaluation can provide insights into different models.

#### Difficulty Criteria
Assessing the difficulty of questions in vision-language models (LVLMs) is a complex but crucial task. **Difficulty arises from both visual understanding** (e.g., resolution, ROI size, granularity of the rationale) **and linguistic knowledge** (e.g., knowledge popularity). The smaller the object of interest is in the image, the more difficult the task is. **High-resolution images make it easier to identify the visual features**, while it is challenging with low-resolution images. Models may struggle to identify the ROI. **Using datasets for training result in bias on evaluation**. It is easier to identify the answer to questions related to popular knowledge than to long-tail knowledge.  

#### LVLM Factual Limits
**LVLMs face limitations in factual accuracy despite advancements.** Factuality issues stem from challenges in visual recognition, knowledge retrieval, and multimodal integration. Current benchmarks often lack nuanced evaluation of modality-specific contributions. **Decoupled evaluation** is crucial to isolate weaknesses in visual or linguistic modules. Addressing **long-tailed knowledge** gaps and improving robustness to complex visual scenes are key areas for improvement. Well-defined difficulty criteria are needed to create more challenging and informative benchmarks. The generation of non-factual content restricts the broader applicability of these models. Future studies should focus on enhancing the reliability and factual consistency of LVLMs across diverse tasks and contexts.

#### Beyond Fact QA
**Beyond Fact QA** delves into the realm of questions where answers aren't simple retrieval, but require synthesis or inference. It addresses limitations of current QA systems, which mainly focus on fact verification by exploring deeper aspects, where understanding context and reasoning are essential. This includes tasks like visual description and content creation. The field involves more complex ground truth assessments, moving beyond simple answers towards understanding nuanced, long-form evaluations. The non-unique nature of answers introduces benchmark development and model evaluation challenges, demanding a move beyond short-form and easily verifiable responses.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.06492/x2.png)

> 🔼 This figure illustrates the decoupled evaluation process used in the VisualSimpleQA benchmark.  It shows how the benchmark separates the evaluation of the linguistic and visual modules of large vision-language models (LVLMs).  The linguistic module is assessed using text-only questions, while the visual module is evaluated by comparing the performance on multimodal questions (which include visual input) against the performance on the corresponding text-only questions. A smaller performance difference between text-only and multimodal question answering indicates a stronger visual module.  This decoupled approach allows for a more fine-grained analysis of LVLMs' strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Figure 2: Decoupled evaluation process.
> </details>



![](https://arxiv.org/html/2503.06492/x3.png)

> 🔼 This flowchart illustrates the two main annotation processes used in creating the VisualSimpleQA dataset.  The first process starts with existing image datasets (like OK-VQA or V*), where annotators create multimodal questions based on the image, provide the ground truth answer with evidence, specify the region of interest (ROI) and its rationale (the key information needed to answer the question), and formulate a corresponding text-only question. The second process begins with creating a text-only question, finding a suitable image online, and then following the same steps as the first process to complete the annotation for the multimodal question.  Both processes ensure that the answers are accurate and verifiable, and that difficulty is carefully considered through the selection of images and the definition of the ROI and rationale.
> <details>
> <summary>read the caption</summary>
> Figure 3: Flowchart of the annotation process. Evidence is used to guarantee the correctness of the answer, while ROI is annotated to calculate the difficulty of each sample.
> </details>



![](https://arxiv.org/html/2503.06492/x4.png)

> 🔼 This figure shows a pie chart that visualizes the distribution of topics in the VisualSimpleQA dataset.  Each slice represents a different category of question topics, with its size proportional to the percentage of questions belonging to that category.  The categories are Research & Education, Company & Brand, Film & Television Entertainment, Politics, History, Geography, Art, Sports, Games, and Other.  This provides a visual representation of the diversity of topics covered in the benchmark dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of topics in VisualSimpleQA.
> </details>



![](https://arxiv.org/html/2503.06492/x15.png)

> 🔼 Figure 5 presents four subfigures, each showing the distribution of a factor influencing visual recognition difficulty in the VisualSimpleQA dataset.  The top row displays histograms for Normalized Resolution, Proportion of ROI, and the presence or absence of text within the image (TI).  The bottom row presents a histogram showing the distribution of Rationale Granularity.  These visualizations illustrate the frequency of different values for each feature, providing insight into how these elements contribute to a sample's visual difficulty level.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distributions of factors that influence the difficulty of visual recognition. TI denotes Text in Image.
> </details>



![](https://arxiv.org/html/2503.06492/x16.png)

> 🔼 This figure presents two histograms visualizing the distributions of knowledge popularity and overall difficulty scores within the VisualSimpleQA dataset.  The knowledge popularity score, determined by GPT-40, reflects the prevalence of the required knowledge in large language model training corpora (with higher scores indicating higher popularity).  The overall difficulty score combines visual and linguistic factors, quantifying the challenge of each question for large vision-language models.  The histograms show the frequency of different score ranges for both metrics, allowing for analysis of the dataset's balance between easier and harder questions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Distributions of knowledge popularity and overall difficulty.
> </details>



![](https://arxiv.org/html/2503.06492/x17.png)

> 🔼 This figure displays the ratio of failed responses (incorrect answers and refusals) given by the GPT-40 model across different difficulty levels.  The left graph focuses on instances where GPT-40 successfully answered the text-only question but failed on the multimodal question. This helps isolate the impact of visual information processing on the model's accuracy. The right graph examines cases where GPT-40 failed at the text-only question, indicating limitations in the model's linguistic understanding, regardless of the visual component.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ratio of failures (incorrect responses and refusals) by GPT-4o across varying difficulty levels. The left sub-figure is based on samples where GPT-4o correctly answers the text-only questions but fails to answer the multimodal questions. The right is based on samples where GPT-4o fails to answer the text-only questions.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S6.T2.2">
<tr class="ltx_tr" id="S6.T2.2.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T2.2.3.1" style="padding-left:2.3pt;padding-right:2.3pt;"> <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" colspan="4" id="S6.T2.2.3.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.3.2.1">Text-only QA</span>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" colspan="4" id="S6.T2.2.3.3" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_text ltx_font_bold" id="S6.T2.2.3.3.1">Multimodal QA</span>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_border_tt" id="S6.T2.2.3.4" style="padding-left:2.3pt;padding-right:2.3pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.2">
<td class="ltx_td ltx_align_right" id="S6.T2.2.2.3" style="padding-left:2.3pt;padding-right:2.3pt;"> <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.4" style="padding-left:2.3pt;padding-right:2.3pt;">Correct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.5" style="padding-left:2.3pt;padding-right:2.3pt;">Incorrect</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.6" style="padding-left:2.3pt;padding-right:2.3pt;">Refusal</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.1.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<math alttext="\frac{\text{\# Correct}}{\text{\# Not Refused}}" class="ltx_Math" display="inline" id="S6.T2.1.1.1.m1.1"><semantics id="S6.T2.1.1.1.m1.1a"><mfrac id="S6.T2.1.1.1.m1.1.1" xref="S6.T2.1.1.1.m1.1.1.cmml"><mtext id="S6.T2.1.1.1.m1.1.1.2" xref="S6.T2.1.1.1.m1.1.1.2a.cmml"># Correct</mtext><mtext id="S6.T2.1.1.1.m1.1.1.3" xref="S6.T2.1.1.1.m1.1.1.3a.cmml"># Not Refused</mtext></mfrac><annotation-xml encoding="MathML-Content" id="S6.T2.1.1.1.m1.1b"><apply id="S6.T2.1.1.1.m1.1.1.cmml" xref="S6.T2.1.1.1.m1.1.1"><divide id="S6.T2.1.1.1.m1.1.1.1.cmml" xref="S6.T2.1.1.1.m1.1.1"></divide><ci id="S6.T2.1.1.1.m1.1.1.2a.cmml" xref="S6.T2.1.1.1.m1.1.1.2"><mtext id="S6.T2.1.1.1.m1.1.1.2.cmml" mathsize="70%" xref="S6.T2.1.1.1.m1.1.1.2"># Correct</mtext></ci><ci id="S6.T2.1.1.1.m1.1.1.3a.cmml" xref="S6.T2.1.1.1.m1.1.1.3"><mtext id="S6.T2.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S6.T2.1.1.1.m1.1.1.3"># Not Refused</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.1.1.1.m1.1c">\frac{\text{\# Correct}}{\text{\# Not Refused}}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.1.1.1.m1.1d">divide start_ARG # Correct end_ARG start_ARG # Not Refused end_ARG</annotation></semantics></math>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.7" style="padding-left:2.3pt;padding-right:2.3pt;">Correct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.8" style="padding-left:2.3pt;padding-right:2.3pt;">Incorrect</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.9" style="padding-left:2.3pt;padding-right:2.3pt;">Refusal</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.2.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_text" id="S6.T2.2.2.2.2"></span> <span class="ltx_text" id="S6.T2.2.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S6.T2.2.2.2.1.1">
<span class="ltx_tr" id="S6.T2.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.2.2.2.1.1.1.1" style="padding-left:2.3pt;padding-right:2.3pt;"><math alttext="\frac{\text{\# Correct}}{\text{\# Not Refused}}" class="ltx_Math" display="inline" id="S6.T2.2.2.2.1.1.1.1.m1.1"><semantics id="S6.T2.2.2.2.1.1.1.1.m1.1a"><mfrac id="S6.T2.2.2.2.1.1.1.1.m1.1.1" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1.cmml"><mtext id="S6.T2.2.2.2.1.1.1.1.m1.1.1.2" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1.2a.cmml"># Correct</mtext><mtext id="S6.T2.2.2.2.1.1.1.1.m1.1.1.3" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1.3a.cmml"># Not Refused</mtext></mfrac><annotation-xml encoding="MathML-Content" id="S6.T2.2.2.2.1.1.1.1.m1.1b"><apply id="S6.T2.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1"><divide id="S6.T2.2.2.2.1.1.1.1.m1.1.1.1.cmml" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1"></divide><ci id="S6.T2.2.2.2.1.1.1.1.m1.1.1.2a.cmml" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1.2"><mtext id="S6.T2.2.2.2.1.1.1.1.m1.1.1.2.cmml" mathsize="70%" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1.2"># Correct</mtext></ci><ci id="S6.T2.2.2.2.1.1.1.1.m1.1.1.3a.cmml" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1.3"><mtext id="S6.T2.2.2.2.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S6.T2.2.2.2.1.1.1.1.m1.1.1.3"># Not Refused</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.2.2.2.1.1.1.1.m1.1c">\frac{\text{\# Correct}}{\text{\# Not Refused}}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.2.2.2.1.1.1.1.m1.1d">divide start_ARG # Correct end_ARG start_ARG # Not Refused end_ARG</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S6.T2.2.2.2.3"></span>   <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.10" style="padding-left:2.3pt;padding-right:2.3pt;">RD</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.4.1" style="padding-left:2.3pt;padding-right:2.3pt;">GPT-4o  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.2" style="padding-left:2.3pt;padding-right:2.3pt;">77.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.3" style="padding-left:2.3pt;padding-right:2.3pt;">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.2.4.5" style="padding-left:2.3pt;padding-right:2.3pt;">77.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.6" style="padding-left:2.3pt;padding-right:2.3pt;">67.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.7" style="padding-left:2.3pt;padding-right:2.3pt;">29.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.8" style="padding-left:2.3pt;padding-right:2.3pt;">3.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.2.4.9" style="padding-left:2.3pt;padding-right:2.3pt;">69.7  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.4.10" style="padding-left:2.3pt;padding-right:2.3pt;">12.9</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.5">
<td class="ltx_td ltx_align_left" id="S6.T2.2.5.1" style="padding-left:2.3pt;padding-right:2.3pt;">Claude-3.5-Sonnet-20241022  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.2" style="padding-left:2.3pt;padding-right:2.3pt;">77.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.3" style="padding-left:2.3pt;padding-right:2.3pt;">15.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.4" style="padding-left:2.3pt;padding-right:2.3pt;">7.6</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.5.5" style="padding-left:2.3pt;padding-right:2.3pt;">83.8  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.6" style="padding-left:2.3pt;padding-right:2.3pt;">61.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.7" style="padding-left:2.3pt;padding-right:2.3pt;">26.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.8" style="padding-left:2.3pt;padding-right:2.3pt;">12.6</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.5.9" style="padding-left:2.3pt;padding-right:2.3pt;">70.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.5.10" style="padding-left:2.3pt;padding-right:2.3pt;">20.7</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.6">
<td class="ltx_td ltx_align_left" id="S6.T2.2.6.1" style="padding-left:2.3pt;padding-right:2.3pt;">Gemini-2.0-flash-exp  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.2" style="padding-left:2.3pt;padding-right:2.3pt;">72.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.3" style="padding-left:2.3pt;padding-right:2.3pt;">27.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.2</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.6.5" style="padding-left:2.3pt;padding-right:2.3pt;">72.9  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.6" style="padding-left:2.3pt;padding-right:2.3pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.7" style="padding-left:2.3pt;padding-right:2.3pt;">30.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.8" style="padding-left:2.3pt;padding-right:2.3pt;">5.2</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.6.9" style="padding-left:2.3pt;padding-right:2.3pt;">67.5  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.6.10" style="padding-left:2.3pt;padding-right:2.3pt;">12.1</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.7.1" style="padding-left:2.3pt;padding-right:2.3pt;">LLaVA-OneVision-qwen2-7b-ov  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.2" style="padding-left:2.3pt;padding-right:2.3pt;">43.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.3" style="padding-left:2.3pt;padding-right:2.3pt;">56.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.2.7.5" style="padding-left:2.3pt;padding-right:2.3pt;">43.2  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.6" style="padding-left:2.3pt;padding-right:2.3pt;">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.7" style="padding-left:2.3pt;padding-right:2.3pt;">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.8" style="padding-left:2.3pt;padding-right:2.3pt;">14.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.2.7.9" style="padding-left:2.3pt;padding-right:2.3pt;">28.9  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.7.10" style="padding-left:2.3pt;padding-right:2.3pt;">42.6</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.8">
<td class="ltx_td ltx_align_left" id="S6.T2.2.8.1" style="padding-left:2.3pt;padding-right:2.3pt;">Molmo-7B-O-0924  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.2" style="padding-left:2.3pt;padding-right:2.3pt;">42.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.3" style="padding-left:2.3pt;padding-right:2.3pt;">57.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.8.5" style="padding-left:2.3pt;padding-right:2.3pt;">42.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.6" style="padding-left:2.3pt;padding-right:2.3pt;">32.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.7" style="padding-left:2.3pt;padding-right:2.3pt;">66.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.8" style="padding-left:2.3pt;padding-right:2.3pt;">0.8</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.8.9" style="padding-left:2.3pt;padding-right:2.3pt;">32.7  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.8.10" style="padding-left:2.3pt;padding-right:2.3pt;">23.6</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.9">
<td class="ltx_td ltx_align_left" id="S6.T2.2.9.1" style="padding-left:2.3pt;padding-right:2.3pt;">Qwen2-VL-7B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.9.2" style="padding-left:2.3pt;padding-right:2.3pt;">51.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.9.3" style="padding-left:2.3pt;padding-right:2.3pt;">43.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.9.4" style="padding-left:2.3pt;padding-right:2.3pt;">5.8</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.9.5" style="padding-left:2.3pt;padding-right:2.3pt;">54.1  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.9.6" style="padding-left:2.3pt;padding-right:2.3pt;">32.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.9.7" style="padding-left:2.3pt;padding-right:2.3pt;">64.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.9.8" style="padding-left:2.3pt;padding-right:2.3pt;">3.4</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.9.9" style="padding-left:2.3pt;padding-right:2.3pt;">33.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.9.10" style="padding-left:2.3pt;padding-right:2.3pt;">36.9</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.10">
<td class="ltx_td ltx_align_left" id="S6.T2.2.10.1" style="padding-left:2.3pt;padding-right:2.3pt;">Qwen2.5-VL-7B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.10.2" style="padding-left:2.3pt;padding-right:2.3pt;">48.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.10.3" style="padding-left:2.3pt;padding-right:2.3pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.10.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.6</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.10.5" style="padding-left:2.3pt;padding-right:2.3pt;">48.9  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.10.6" style="padding-left:2.3pt;padding-right:2.3pt;">38.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.10.7" style="padding-left:2.3pt;padding-right:2.3pt;">54.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.10.8" style="padding-left:2.3pt;padding-right:2.3pt;">7.6</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.10.9" style="padding-left:2.3pt;padding-right:2.3pt;">41.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.10.10" style="padding-left:2.3pt;padding-right:2.3pt;">21.0</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.11">
<td class="ltx_td ltx_align_left" id="S6.T2.2.11.1" style="padding-left:2.3pt;padding-right:2.3pt;">InternVL2.5-8B  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.11.2" style="padding-left:2.3pt;padding-right:2.3pt;">37.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.11.3" style="padding-left:2.3pt;padding-right:2.3pt;">53.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.11.4" style="padding-left:2.3pt;padding-right:2.3pt;">9.2</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.11.5" style="padding-left:2.3pt;padding-right:2.3pt;">41.0  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.11.6" style="padding-left:2.3pt;padding-right:2.3pt;">26.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.11.7" style="padding-left:2.3pt;padding-right:2.3pt;">66.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.11.8" style="padding-left:2.3pt;padding-right:2.3pt;">6.8</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.11.9" style="padding-left:2.3pt;padding-right:2.3pt;">28.8  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.11.10" style="padding-left:2.3pt;padding-right:2.3pt;">28.0</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.12">
<td class="ltx_td ltx_align_left" id="S6.T2.2.12.1" style="padding-left:2.3pt;padding-right:2.3pt;">Llama-3.2-11B-Vision-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.12.2" style="padding-left:2.3pt;padding-right:2.3pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.12.3" style="padding-left:2.3pt;padding-right:2.3pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.12.4" style="padding-left:2.3pt;padding-right:2.3pt;">26.0</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.12.5" style="padding-left:2.3pt;padding-right:2.3pt;">67.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.12.6" style="padding-left:2.3pt;padding-right:2.3pt;">40.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.12.7" style="padding-left:2.3pt;padding-right:2.3pt;">45.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.12.8" style="padding-left:2.3pt;padding-right:2.3pt;">13.8</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.12.9" style="padding-left:2.3pt;padding-right:2.3pt;">47.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.12.10" style="padding-left:2.3pt;padding-right:2.3pt;">18.4</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.13">
<td class="ltx_td ltx_align_left" id="S6.T2.2.13.1" style="padding-left:2.3pt;padding-right:2.3pt;">Pixtral-12B-2409  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.13.2" style="padding-left:2.3pt;padding-right:2.3pt;">53.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.13.3" style="padding-left:2.3pt;padding-right:2.3pt;">44.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.13.4" style="padding-left:2.3pt;padding-right:2.3pt;">2.2</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.13.5" style="padding-left:2.3pt;padding-right:2.3pt;">54.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.13.6" style="padding-left:2.3pt;padding-right:2.3pt;">34.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.13.7" style="padding-left:2.3pt;padding-right:2.3pt;">63.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.13.8" style="padding-left:2.3pt;padding-right:2.3pt;">2.0</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.13.9" style="padding-left:2.3pt;padding-right:2.3pt;">35.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.13.10" style="padding-left:2.3pt;padding-right:2.3pt;">35.0</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T2.2.14.1" style="padding-left:2.3pt;padding-right:2.3pt;">Molmo-72B-0924  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.14.2" style="padding-left:2.3pt;padding-right:2.3pt;">64.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.14.3" style="padding-left:2.3pt;padding-right:2.3pt;">35.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.14.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.2.14.5" style="padding-left:2.3pt;padding-right:2.3pt;">64.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.14.6" style="padding-left:2.3pt;padding-right:2.3pt;">46.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.14.7" style="padding-left:2.3pt;padding-right:2.3pt;">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.14.8" style="padding-left:2.3pt;padding-right:2.3pt;">1.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T2.2.14.9" style="padding-left:2.3pt;padding-right:2.3pt;">47.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.14.10" style="padding-left:2.3pt;padding-right:2.3pt;">27.6</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.15">
<td class="ltx_td ltx_align_left" id="S6.T2.2.15.1" style="padding-left:2.3pt;padding-right:2.3pt;">Qwen2-VL-72B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.15.2" style="padding-left:2.3pt;padding-right:2.3pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.15.3" style="padding-left:2.3pt;padding-right:2.3pt;">31.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.15.4" style="padding-left:2.3pt;padding-right:2.3pt;">6.6</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.15.5" style="padding-left:2.3pt;padding-right:2.3pt;">66.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.15.6" style="padding-left:2.3pt;padding-right:2.3pt;">37.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.15.7" style="padding-left:2.3pt;padding-right:2.3pt;">59.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.15.8" style="padding-left:2.3pt;padding-right:2.3pt;">3.4</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.15.9" style="padding-left:2.3pt;padding-right:2.3pt;">38.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.15.10" style="padding-left:2.3pt;padding-right:2.3pt;">40.3</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.16">
<td class="ltx_td ltx_align_left" id="S6.T2.2.16.1" style="padding-left:2.3pt;padding-right:2.3pt;">Qwen2.5-VL-72B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.16.2" style="padding-left:2.3pt;padding-right:2.3pt;">63.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.16.3" style="padding-left:2.3pt;padding-right:2.3pt;">30.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.16.4" style="padding-left:2.3pt;padding-right:2.3pt;">5.8</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.16.5" style="padding-left:2.3pt;padding-right:2.3pt;">67.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.16.6" style="padding-left:2.3pt;padding-right:2.3pt;">51.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.16.7" style="padding-left:2.3pt;padding-right:2.3pt;">42.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.16.8" style="padding-left:2.3pt;padding-right:2.3pt;">6.0</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.16.9" style="padding-left:2.3pt;padding-right:2.3pt;">54.5  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.16.10" style="padding-left:2.3pt;padding-right:2.3pt;">19.2</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.17">
<td class="ltx_td ltx_align_left" id="S6.T2.2.17.1" style="padding-left:2.3pt;padding-right:2.3pt;">QVQ-72B-Preview  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.17.2" style="padding-left:2.3pt;padding-right:2.3pt;">42.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.17.3" style="padding-left:2.3pt;padding-right:2.3pt;">13.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.17.4" style="padding-left:2.3pt;padding-right:2.3pt;">44.8</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.17.5" style="padding-left:2.3pt;padding-right:2.3pt;">76.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.17.6" style="padding-left:2.3pt;padding-right:2.3pt;">46.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.17.7" style="padding-left:2.3pt;padding-right:2.3pt;">53.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.17.8" style="padding-left:2.3pt;padding-right:2.3pt;">0.2</td>
<td class="ltx_td ltx_align_right" id="S6.T2.2.17.9" style="padding-left:2.3pt;padding-right:2.3pt;">46.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.2.17.10" style="padding-left:2.3pt;padding-right:2.3pt;">–</td>
</tr>
<tr class="ltx_tr" id="S6.T2.2.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T2.2.18.1" style="padding-left:2.3pt;padding-right:2.3pt;">InternVL2.5-78B  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.18.2" style="padding-left:2.3pt;padding-right:2.3pt;">52.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.18.3" style="padding-left:2.3pt;padding-right:2.3pt;">40.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.18.4" style="padding-left:2.3pt;padding-right:2.3pt;">6.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T2.2.18.5" style="padding-left:2.3pt;padding-right:2.3pt;">56.2  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.18.6" style="padding-left:2.3pt;padding-right:2.3pt;">37.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.18.7" style="padding-left:2.3pt;padding-right:2.3pt;">50.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.18.8" style="padding-left:2.3pt;padding-right:2.3pt;">11.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T2.2.18.9" style="padding-left:2.3pt;padding-right:2.3pt;">42.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.2.18.10" style="padding-left:2.3pt;padding-right:2.3pt;">28.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating 15 different large vision-language models (LVLMs) on the VisualSimpleQA benchmark.  The models are categorized as either open-source or closed-source.  For each model, the table shows its performance on both text-only and multimodal question answering tasks, reporting the percentage of correct, incorrect, and refused responses.  It also includes the number of correctly answered questions out of those not refused, and the relative degradation (RD) in performance when transitioning from text-only to multimodal questions.  The RD metric helps evaluate the effectiveness of the visual module in each LVLM.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation of various models on VisualSimpleQA (%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.2">
<tr class="ltx_tr" id="S6.T3.2.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S6.T3.2.3.1" style="padding-left:2.3pt;padding-right:2.3pt;"> <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" colspan="4" id="S6.T3.2.3.2" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_text ltx_font_bold" id="S6.T3.2.3.2.1">Text-only QA</span>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" colspan="4" id="S6.T3.2.3.3" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_text ltx_font_bold" id="S6.T3.2.3.3.1">Multimodal QA</span>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_border_tt" id="S6.T3.2.3.4" style="padding-left:2.3pt;padding-right:2.3pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.2">
<td class="ltx_td ltx_align_right" id="S6.T3.2.2.3" style="padding-left:2.3pt;padding-right:2.3pt;"> <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.4" style="padding-left:2.3pt;padding-right:2.3pt;">Correct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.5" style="padding-left:2.3pt;padding-right:2.3pt;">Incorrect</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.6" style="padding-left:2.3pt;padding-right:2.3pt;">Refusal</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.1.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<math alttext="\frac{\text{\# Correct}}{\text{\# Not Refused}}" class="ltx_Math" display="inline" id="S6.T3.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.m1.1a"><mfrac id="S6.T3.1.1.1.m1.1.1" xref="S6.T3.1.1.1.m1.1.1.cmml"><mtext id="S6.T3.1.1.1.m1.1.1.2" xref="S6.T3.1.1.1.m1.1.1.2a.cmml"># Correct</mtext><mtext id="S6.T3.1.1.1.m1.1.1.3" xref="S6.T3.1.1.1.m1.1.1.3a.cmml"># Not Refused</mtext></mfrac><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.m1.1b"><apply id="S6.T3.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.m1.1.1"><divide id="S6.T3.1.1.1.m1.1.1.1.cmml" xref="S6.T3.1.1.1.m1.1.1"></divide><ci id="S6.T3.1.1.1.m1.1.1.2a.cmml" xref="S6.T3.1.1.1.m1.1.1.2"><mtext id="S6.T3.1.1.1.m1.1.1.2.cmml" mathsize="70%" xref="S6.T3.1.1.1.m1.1.1.2"># Correct</mtext></ci><ci id="S6.T3.1.1.1.m1.1.1.3a.cmml" xref="S6.T3.1.1.1.m1.1.1.3"><mtext id="S6.T3.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S6.T3.1.1.1.m1.1.1.3"># Not Refused</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.m1.1c">\frac{\text{\# Correct}}{\text{\# Not Refused}}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.m1.1d">divide start_ARG # Correct end_ARG start_ARG # Not Refused end_ARG</annotation></semantics></math>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.7" style="padding-left:2.3pt;padding-right:2.3pt;">Correct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.8" style="padding-left:2.3pt;padding-right:2.3pt;">Incorrect</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.9" style="padding-left:2.3pt;padding-right:2.3pt;">Refusal</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.2.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">
<math alttext="\frac{\text{\# Correct}}{\text{\# Not Refused}}" class="ltx_Math" display="inline" id="S6.T3.2.2.2.m1.1"><semantics id="S6.T3.2.2.2.m1.1a"><mfrac id="S6.T3.2.2.2.m1.1.1" xref="S6.T3.2.2.2.m1.1.1.cmml"><mtext id="S6.T3.2.2.2.m1.1.1.2" xref="S6.T3.2.2.2.m1.1.1.2a.cmml"># Correct</mtext><mtext id="S6.T3.2.2.2.m1.1.1.3" xref="S6.T3.2.2.2.m1.1.1.3a.cmml"># Not Refused</mtext></mfrac><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.2.m1.1b"><apply id="S6.T3.2.2.2.m1.1.1.cmml" xref="S6.T3.2.2.2.m1.1.1"><divide id="S6.T3.2.2.2.m1.1.1.1.cmml" xref="S6.T3.2.2.2.m1.1.1"></divide><ci id="S6.T3.2.2.2.m1.1.1.2a.cmml" xref="S6.T3.2.2.2.m1.1.1.2"><mtext id="S6.T3.2.2.2.m1.1.1.2.cmml" mathsize="70%" xref="S6.T3.2.2.2.m1.1.1.2"># Correct</mtext></ci><ci id="S6.T3.2.2.2.m1.1.1.3a.cmml" xref="S6.T3.2.2.2.m1.1.1.3"><mtext id="S6.T3.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="S6.T3.2.2.2.m1.1.1.3"># Not Refused</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.2.m1.1c">\frac{\text{\# Correct}}{\text{\# Not Refused}}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.2.m1.1d">divide start_ARG # Correct end_ARG start_ARG # Not Refused end_ARG</annotation></semantics></math>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.10" style="padding-left:2.3pt;padding-right:2.3pt;">RD</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.2.4.1" style="padding-left:2.3pt;padding-right:2.3pt;">GPT-4o  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.4.2" style="padding-left:2.3pt;padding-right:2.3pt;">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.4.3" style="padding-left:2.3pt;padding-right:2.3pt;">43.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.4.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.2.4.5" style="padding-left:2.3pt;padding-right:2.3pt;">56.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.4.6" style="padding-left:2.3pt;padding-right:2.3pt;">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.4.7" style="padding-left:2.3pt;padding-right:2.3pt;">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.4.8" style="padding-left:2.3pt;padding-right:2.3pt;">7.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.2.4.9" style="padding-left:2.3pt;padding-right:2.3pt;">40.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.4.10" style="padding-left:2.3pt;padding-right:2.3pt;">34.3</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.5">
<td class="ltx_td ltx_align_left" id="S6.T3.2.5.1" style="padding-left:2.3pt;padding-right:2.3pt;">Claude-3.5-Sonnet-20241022  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.5.2" style="padding-left:2.3pt;padding-right:2.3pt;">54.3</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.5.3" style="padding-left:2.3pt;padding-right:2.3pt;">28.7</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.5.4" style="padding-left:2.3pt;padding-right:2.3pt;">17.0</td>
<td class="ltx_td ltx_align_right" id="S6.T3.2.5.5" style="padding-left:2.3pt;padding-right:2.3pt;">65.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.5.6" style="padding-left:2.3pt;padding-right:2.3pt;">37.2</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.5.7" style="padding-left:2.3pt;padding-right:2.3pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.5.8" style="padding-left:2.3pt;padding-right:2.3pt;">24.8</td>
<td class="ltx_td ltx_align_right" id="S6.T3.2.5.9" style="padding-left:2.3pt;padding-right:2.3pt;">49.5  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.5.10" style="padding-left:2.3pt;padding-right:2.3pt;">31.5</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.6">
<td class="ltx_td ltx_align_left" id="S6.T3.2.6.1" style="padding-left:2.3pt;padding-right:2.3pt;">Gemini-2.0-flash-exp  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.2" style="padding-left:2.3pt;padding-right:2.3pt;">47.3</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.3" style="padding-left:2.3pt;padding-right:2.3pt;">52.7</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="S6.T3.2.6.5" style="padding-left:2.3pt;padding-right:2.3pt;">47.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.6" style="padding-left:2.3pt;padding-right:2.3pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.7" style="padding-left:2.3pt;padding-right:2.3pt;">53.5</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.8" style="padding-left:2.3pt;padding-right:2.3pt;">8.5</td>
<td class="ltx_td ltx_align_right" id="S6.T3.2.6.9" style="padding-left:2.3pt;padding-right:2.3pt;">41.5  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.10" style="padding-left:2.3pt;padding-right:2.3pt;">19.7</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.2.7.1" style="padding-left:2.3pt;padding-right:2.3pt;">Llama-3.2-11B-Vision-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.7.2" style="padding-left:2.3pt;padding-right:2.3pt;">24.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.7.3" style="padding-left:2.3pt;padding-right:2.3pt;">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.7.4" style="padding-left:2.3pt;padding-right:2.3pt;">51.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.2.7.5" style="padding-left:2.3pt;padding-right:2.3pt;">49.2  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.7.6" style="padding-left:2.3pt;padding-right:2.3pt;">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.7.7" style="padding-left:2.3pt;padding-right:2.3pt;">52.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.7.8" style="padding-left:2.3pt;padding-right:2.3pt;">27.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.2.7.9" style="padding-left:2.3pt;padding-right:2.3pt;">27.7  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.7.10" style="padding-left:2.3pt;padding-right:2.3pt;">15.8</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.8">
<td class="ltx_td ltx_align_left" id="S6.T3.2.8.1" style="padding-left:2.3pt;padding-right:2.3pt;">Pixtral-12B-2409  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.8.2" style="padding-left:2.3pt;padding-right:2.3pt;">31.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.8.3" style="padding-left:2.3pt;padding-right:2.3pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.8.4" style="padding-left:2.3pt;padding-right:2.3pt;">3.9</td>
<td class="ltx_td ltx_align_right" id="S6.T3.2.8.5" style="padding-left:2.3pt;padding-right:2.3pt;">33.1  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.8.6" style="padding-left:2.3pt;padding-right:2.3pt;">17.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.8.7" style="padding-left:2.3pt;padding-right:2.3pt;">78.3</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.8.8" style="padding-left:2.3pt;padding-right:2.3pt;">3.9</td>
<td class="ltx_td ltx_align_right" id="S6.T3.2.8.9" style="padding-left:2.3pt;padding-right:2.3pt;">18.5  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.8.10" style="padding-left:2.3pt;padding-right:2.3pt;">44.0</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.2.9.1" style="padding-left:2.3pt;padding-right:2.3pt;">Molmo-72B-0924  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.9.2" style="padding-left:2.3pt;padding-right:2.3pt;">42.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.9.3" style="padding-left:2.3pt;padding-right:2.3pt;">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.9.4" style="padding-left:2.3pt;padding-right:2.3pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.2.9.5" style="padding-left:2.3pt;padding-right:2.3pt;">42.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.9.6" style="padding-left:2.3pt;padding-right:2.3pt;">22.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.9.7" style="padding-left:2.3pt;padding-right:2.3pt;">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.9.8" style="padding-left:2.3pt;padding-right:2.3pt;">0.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S6.T3.2.9.9" style="padding-left:2.3pt;padding-right:2.3pt;">22.7  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.9.10" style="padding-left:2.3pt;padding-right:2.3pt;">47.2</td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T3.2.10.1" style="padding-left:2.3pt;padding-right:2.3pt;">Qwen2.5-VL-72B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.10.2" style="padding-left:2.3pt;padding-right:2.3pt;">38.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.10.3" style="padding-left:2.3pt;padding-right:2.3pt;">50.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.10.4" style="padding-left:2.3pt;padding-right:2.3pt;">10.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T3.2.10.5" style="padding-left:2.3pt;padding-right:2.3pt;">43.5  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.10.6" style="padding-left:2.3pt;padding-right:2.3pt;">27.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.10.7" style="padding-left:2.3pt;padding-right:2.3pt;">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.10.8" style="padding-left:2.3pt;padding-right:2.3pt;">15.5</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S6.T3.2.10.9" style="padding-left:2.3pt;padding-right:2.3pt;">33.0  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.10.10" style="padding-left:2.3pt;padding-right:2.3pt;">28.1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating a subset of large vision-language models (LVLMs) on the VisualSimpleQA-hard benchmark.  VisualSimpleQA-hard is a more challenging subset of the VisualSimpleQA benchmark, focusing on questions with higher difficulty levels.  The evaluation measures the models' performance in both text-only question answering and multimodal question answering.  Specifically, it shows the percentage of correct, incorrect, and refused responses for each model in both settings, as well as the relative degradation (RD) in performance when transitioning from text-only to multimodal questions. This relative degradation highlights the models' challenges in visual recognition and knowledge integration.  Appendix D contains additional results for a more comprehensive evaluation.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation of a part of models on VisualSimpleQA-hard (%). See Table 5 in Appendix D for more results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T4.1">
<tr class="ltx_tr" id="A3.T4.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.T4.1.1.1" style="padding-left:7.1pt;padding-right:7.1pt;">   <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T4.1.1.2" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_text" id="A3.T4.1.1.2.1"></span><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.2.2"> <span class="ltx_text" id="A3.T4.1.1.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.1.2.2.1.1">
<span class="ltx_tr" id="A3.T4.1.1.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T4.1.1.2.2.1.1.1.1" style="padding-left:7.1pt;padding-right:7.1pt;">Linguistic Module</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.1.2.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T4.1.1.3" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_text" id="A3.T4.1.1.3.1"></span><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.3.2"> <span class="ltx_text" id="A3.T4.1.1.3.2.1">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.1.3.2.1.1">
<span class="ltx_tr" id="A3.T4.1.1.3.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T4.1.1.3.2.1.1.1.1" style="padding-left:7.1pt;padding-right:7.1pt;">Visual Module</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.1.3.2.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.2.1" style="padding-left:7.1pt;padding-right:7.1pt;">GPT-4o    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.2.2" style="padding-left:7.1pt;padding-right:7.1pt;">unknown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.2.3" style="padding-left:7.1pt;padding-right:7.1pt;">unknown</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.3.1" style="padding-left:7.1pt;padding-right:7.1pt;">Claude-3.5-Sonnet-20241022    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.3.2" style="padding-left:7.1pt;padding-right:7.1pt;">unknown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.3.3" style="padding-left:7.1pt;padding-right:7.1pt;">unknown</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.4.1" style="padding-left:7.1pt;padding-right:7.1pt;">Gemini-2.0-flash-exp    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.4.2" style="padding-left:7.1pt;padding-right:7.1pt;">unknown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.4.3" style="padding-left:7.1pt;padding-right:7.1pt;">unknown</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.5.1" style="padding-left:7.1pt;padding-right:7.1pt;">LLaVA-OneVision-qwen2-7b-ov    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.5.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.5.3" style="padding-left:7.1pt;padding-right:7.1pt;">SigLIP-SO400M</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.6.1" style="padding-left:7.1pt;padding-right:7.1pt;">Molmo-7B-O-0924    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.6.2" style="padding-left:7.1pt;padding-right:7.1pt;">OLMo-7B-1024-preview</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.6.3" style="padding-left:7.1pt;padding-right:7.1pt;">OpenAI’s ViT-L/14 336px</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.7.1" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-VL-7B-Instruct    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.7.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.7.3" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-ViT-675M</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.8.1" style="padding-left:7.1pt;padding-right:7.1pt;">InternVL2.5-8B    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.8.2" style="padding-left:7.1pt;padding-right:7.1pt;">InternLM2.5-7B-Chat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.8.3" style="padding-left:7.1pt;padding-right:7.1pt;">InternViT-300M-448px-V2.5</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.9.1" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2.5-VL-7B-Instruct    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.9.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.9.3" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2.5-ViT w/ window attention</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.10.1" style="padding-left:7.1pt;padding-right:7.1pt;">Llama-3.2-11B-Vision-Instruct    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.10.2" style="padding-left:7.1pt;padding-right:7.1pt;">Llama-3.1-8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.10.3" style="padding-left:7.1pt;padding-right:7.1pt;">ViT-H/14</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.11.1" style="padding-left:7.1pt;padding-right:7.1pt;">Pixtral-12B-2409    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.11.2" style="padding-left:7.1pt;padding-right:7.1pt;">Mistral-NeMo-12B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.11.3" style="padding-left:7.1pt;padding-right:7.1pt;">Pixtral-ViT-400M</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.12.1" style="padding-left:7.1pt;padding-right:7.1pt;">Molmo-72B-0924    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.12.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-72B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.12.3" style="padding-left:7.1pt;padding-right:7.1pt;">OpenAI’s ViT-L/14 336px</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.13.1" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-VL-72B-Instruct    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.13.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-72B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.13.3" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-ViT-675M</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.14.1" style="padding-left:7.1pt;padding-right:7.1pt;">QVQ-72B-Preview    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.14.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2-72B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.14.3" style="padding-left:7.1pt;padding-right:7.1pt;">ViT-675M</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.15.1" style="padding-left:7.1pt;padding-right:7.1pt;">InternVL2.5-78B    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.15.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.15.3" style="padding-left:7.1pt;padding-right:7.1pt;">InternViT-6B-448px-V2.5</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T4.1.16.1" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2.5-VL-72B-Instruct    <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T4.1.16.2" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2.5-72B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T4.1.16.3" style="padding-left:7.1pt;padding-right:7.1pt;">Qwen2.5-ViT w/ window attention</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the specific visual and linguistic modules used in 15 different large vision-language models (LVLMs).  For each model, it lists the names of the modules responsible for processing textual and visual information, providing a clear view of the architecture variations across different LVLMs. This is valuable in understanding the strengths and weaknesses of various models and how their architectural choices may impact their performance in multimodal tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: Modality-specific modules in different LVLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T5.2">
<tr class="ltx_tr" id="A4.T5.2.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A4.T5.2.3.1" style="padding-left:3.1pt;padding-right:3.1pt;"> <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" colspan="4" id="A4.T5.2.3.2" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text ltx_font_bold" id="A4.T5.2.3.2.1">Text-only QA</span>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" colspan="4" id="A4.T5.2.3.3" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text ltx_font_bold" id="A4.T5.2.3.3.1">Multimodal QA</span>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_border_tt" id="A4.T5.2.3.4" style="padding-left:3.1pt;padding-right:3.1pt;"></td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2">
<td class="ltx_td ltx_align_right" id="A4.T5.2.2.3" style="padding-left:3.1pt;padding-right:3.1pt;"> <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.4" style="padding-left:3.1pt;padding-right:3.1pt;">Correct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.5" style="padding-left:3.1pt;padding-right:3.1pt;">Incorrect</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.6" style="padding-left:3.1pt;padding-right:3.1pt;">Refusal</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T5.1.1.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<math alttext="\frac{\text{\# Correct}}{\text{\# Not Refused}}" class="ltx_Math" display="inline" id="A4.T5.1.1.1.m1.1"><semantics id="A4.T5.1.1.1.m1.1a"><mfrac id="A4.T5.1.1.1.m1.1.1" xref="A4.T5.1.1.1.m1.1.1.cmml"><mtext id="A4.T5.1.1.1.m1.1.1.2" xref="A4.T5.1.1.1.m1.1.1.2a.cmml"># Correct</mtext><mtext id="A4.T5.1.1.1.m1.1.1.3" xref="A4.T5.1.1.1.m1.1.1.3a.cmml"># Not Refused</mtext></mfrac><annotation-xml encoding="MathML-Content" id="A4.T5.1.1.1.m1.1b"><apply id="A4.T5.1.1.1.m1.1.1.cmml" xref="A4.T5.1.1.1.m1.1.1"><divide id="A4.T5.1.1.1.m1.1.1.1.cmml" xref="A4.T5.1.1.1.m1.1.1"></divide><ci id="A4.T5.1.1.1.m1.1.1.2a.cmml" xref="A4.T5.1.1.1.m1.1.1.2"><mtext id="A4.T5.1.1.1.m1.1.1.2.cmml" mathsize="70%" xref="A4.T5.1.1.1.m1.1.1.2"># Correct</mtext></ci><ci id="A4.T5.1.1.1.m1.1.1.3a.cmml" xref="A4.T5.1.1.1.m1.1.1.3"><mtext id="A4.T5.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A4.T5.1.1.1.m1.1.1.3"># Not Refused</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.1.1.1.m1.1c">\frac{\text{\# Correct}}{\text{\# Not Refused}}</annotation><annotation encoding="application/x-llamapun" id="A4.T5.1.1.1.m1.1d">divide start_ARG # Correct end_ARG start_ARG # Not Refused end_ARG</annotation></semantics></math>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.7" style="padding-left:3.1pt;padding-right:3.1pt;">Correct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.8" style="padding-left:3.1pt;padding-right:3.1pt;">Incorrect</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.9" style="padding-left:3.1pt;padding-right:3.1pt;">Refusal</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T5.2.2.2" style="padding-left:3.1pt;padding-right:3.1pt;">
<math alttext="\frac{\text{\# Correct}}{\text{\# Not Refused}}" class="ltx_Math" display="inline" id="A4.T5.2.2.2.m1.1"><semantics id="A4.T5.2.2.2.m1.1a"><mfrac id="A4.T5.2.2.2.m1.1.1" xref="A4.T5.2.2.2.m1.1.1.cmml"><mtext id="A4.T5.2.2.2.m1.1.1.2" xref="A4.T5.2.2.2.m1.1.1.2a.cmml"># Correct</mtext><mtext id="A4.T5.2.2.2.m1.1.1.3" xref="A4.T5.2.2.2.m1.1.1.3a.cmml"># Not Refused</mtext></mfrac><annotation-xml encoding="MathML-Content" id="A4.T5.2.2.2.m1.1b"><apply id="A4.T5.2.2.2.m1.1.1.cmml" xref="A4.T5.2.2.2.m1.1.1"><divide id="A4.T5.2.2.2.m1.1.1.1.cmml" xref="A4.T5.2.2.2.m1.1.1"></divide><ci id="A4.T5.2.2.2.m1.1.1.2a.cmml" xref="A4.T5.2.2.2.m1.1.1.2"><mtext id="A4.T5.2.2.2.m1.1.1.2.cmml" mathsize="70%" xref="A4.T5.2.2.2.m1.1.1.2"># Correct</mtext></ci><ci id="A4.T5.2.2.2.m1.1.1.3a.cmml" xref="A4.T5.2.2.2.m1.1.1.3"><mtext id="A4.T5.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="A4.T5.2.2.2.m1.1.1.3"># Not Refused</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T5.2.2.2.m1.1c">\frac{\text{\# Correct}}{\text{\# Not Refused}}</annotation><annotation encoding="application/x-llamapun" id="A4.T5.2.2.2.m1.1d">divide start_ARG # Correct end_ARG start_ARG # Not Refused end_ARG</annotation></semantics></math>  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.10" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="A4.T5.2.2.10.1"></span> <span class="ltx_text" id="A4.T5.2.2.10.2">
<span class="ltx_tabular ltx_align_middle" id="A4.T5.2.2.10.2.1">
<span class="ltx_tr" id="A4.T5.2.2.10.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T5.2.2.10.2.1.1.1" style="padding-left:3.1pt;padding-right:3.1pt;">RD</span></span>
</span></span><span class="ltx_text" id="A4.T5.2.2.10.3"></span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T5.2.4.1" style="padding-left:3.1pt;padding-right:3.1pt;">LLaVA-OneVision-qwen2-7b-ov  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.4.2" style="padding-left:3.1pt;padding-right:3.1pt;">18.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.4.3" style="padding-left:3.1pt;padding-right:3.1pt;">81.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.4.4" style="padding-left:3.1pt;padding-right:3.1pt;">0.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T5.2.4.5" style="padding-left:3.1pt;padding-right:3.1pt;">18.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.4.6" style="padding-left:3.1pt;padding-right:3.1pt;">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.4.7" style="padding-left:3.1pt;padding-right:3.1pt;">65.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.4.8" style="padding-left:3.1pt;padding-right:3.1pt;">26.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T5.2.4.9" style="padding-left:3.1pt;padding-right:3.1pt;">11.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.4.10" style="padding-left:3.1pt;padding-right:3.1pt;">54.3</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.5">
<td class="ltx_td ltx_align_left" id="A4.T5.2.5.1" style="padding-left:3.1pt;padding-right:3.1pt;">Molmo-7B-O-0924  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.2" style="padding-left:3.1pt;padding-right:3.1pt;">17.1</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.3" style="padding-left:3.1pt;padding-right:3.1pt;">82.9</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.4" style="padding-left:3.1pt;padding-right:3.1pt;">0.0</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.5.5" style="padding-left:3.1pt;padding-right:3.1pt;">17.1  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.6" style="padding-left:3.1pt;padding-right:3.1pt;">11.6</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.7" style="padding-left:3.1pt;padding-right:3.1pt;">87.6</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.8" style="padding-left:3.1pt;padding-right:3.1pt;">0.8</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.5.9" style="padding-left:3.1pt;padding-right:3.1pt;">11.7  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.10" style="padding-left:3.1pt;padding-right:3.1pt;">32.2</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.6">
<td class="ltx_td ltx_align_left" id="A4.T5.2.6.1" style="padding-left:3.1pt;padding-right:3.1pt;">Qwen2-VL-7B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.6.2" style="padding-left:3.1pt;padding-right:3.1pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.6.3" style="padding-left:3.1pt;padding-right:3.1pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.6.4" style="padding-left:3.1pt;padding-right:3.1pt;">11.7</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.6.5" style="padding-left:3.1pt;padding-right:3.1pt;">27.2  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.6.6" style="padding-left:3.1pt;padding-right:3.1pt;">14.7</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.6.7" style="padding-left:3.1pt;padding-right:3.1pt;">80.6</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.6.8" style="padding-left:3.1pt;padding-right:3.1pt;">4.7</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.6.9" style="padding-left:3.1pt;padding-right:3.1pt;">15.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.6.10" style="padding-left:3.1pt;padding-right:3.1pt;">38.8</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.7">
<td class="ltx_td ltx_align_left" id="A4.T5.2.7.1" style="padding-left:3.1pt;padding-right:3.1pt;">Qwen2.5-VL-7B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.7.2" style="padding-left:3.1pt;padding-right:3.1pt;">23.3</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.7.3" style="padding-left:3.1pt;padding-right:3.1pt;">75.2</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.7.4" style="padding-left:3.1pt;padding-right:3.1pt;">1.5</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.7.5" style="padding-left:3.1pt;padding-right:3.1pt;">23.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.7.6" style="padding-left:3.1pt;padding-right:3.1pt;">17.1</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.7.7" style="padding-left:3.1pt;padding-right:3.1pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.7.8" style="padding-left:3.1pt;padding-right:3.1pt;">20.9</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.7.9" style="padding-left:3.1pt;padding-right:3.1pt;">21.6  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.7.10" style="padding-left:3.1pt;padding-right:3.1pt;">26.6</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.8">
<td class="ltx_td ltx_align_left" id="A4.T5.2.8.1" style="padding-left:3.1pt;padding-right:3.1pt;">InternVL2.5-8B  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.8.2" style="padding-left:3.1pt;padding-right:3.1pt;">17.8</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.8.3" style="padding-left:3.1pt;padding-right:3.1pt;">62.8</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.8.4" style="padding-left:3.1pt;padding-right:3.1pt;">19.4</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.8.5" style="padding-left:3.1pt;padding-right:3.1pt;">22.1  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.8.6" style="padding-left:3.1pt;padding-right:3.1pt;">8.5</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.8.7" style="padding-left:3.1pt;padding-right:3.1pt;">74.4</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.8.8" style="padding-left:3.1pt;padding-right:3.1pt;">17.1</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.8.9" style="padding-left:3.1pt;padding-right:3.1pt;">10.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.8.10" style="padding-left:3.1pt;padding-right:3.1pt;">52.2</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T5.2.9.1" style="padding-left:3.1pt;padding-right:3.1pt;">Qwen2-VL-72B-Instruct  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.9.2" style="padding-left:3.1pt;padding-right:3.1pt;">39.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.9.3" style="padding-left:3.1pt;padding-right:3.1pt;">48.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.9.4" style="padding-left:3.1pt;padding-right:3.1pt;">12.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T5.2.9.5" style="padding-left:3.1pt;padding-right:3.1pt;">45.1  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.9.6" style="padding-left:3.1pt;padding-right:3.1pt;">21.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.9.7" style="padding-left:3.1pt;padding-right:3.1pt;">73.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.9.8" style="padding-left:3.1pt;padding-right:3.1pt;">4.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T5.2.9.9" style="padding-left:3.1pt;padding-right:3.1pt;">22.8  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.9.10" style="padding-left:3.1pt;padding-right:3.1pt;">45.1</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.10">
<td class="ltx_td ltx_align_left" id="A4.T5.2.10.1" style="padding-left:3.1pt;padding-right:3.1pt;">QVQ-72B-Preview  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.10.2" style="padding-left:3.1pt;padding-right:3.1pt;">16.3</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.10.3" style="padding-left:3.1pt;padding-right:3.1pt;">19.4</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.10.4" style="padding-left:3.1pt;padding-right:3.1pt;">64.3</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.10.5" style="padding-left:3.1pt;padding-right:3.1pt;">45.7  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.10.6" style="padding-left:3.1pt;padding-right:3.1pt;">20.2</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.10.7" style="padding-left:3.1pt;padding-right:3.1pt;">79.1</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.10.8" style="padding-left:3.1pt;padding-right:3.1pt;">0.7</td>
<td class="ltx_td ltx_align_right" id="A4.T5.2.10.9" style="padding-left:3.1pt;padding-right:3.1pt;">20.3  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.10.10" style="padding-left:3.1pt;padding-right:3.1pt;">–</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T5.2.11.1" style="padding-left:3.1pt;padding-right:3.1pt;">InternVL2.5-78B  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.11.2" style="padding-left:3.1pt;padding-right:3.1pt;">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.11.3" style="padding-left:3.1pt;padding-right:3.1pt;">59.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.11.4" style="padding-left:3.1pt;padding-right:3.1pt;">15.5</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T5.2.11.5" style="padding-left:3.1pt;padding-right:3.1pt;">29.4  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.11.6" style="padding-left:3.1pt;padding-right:3.1pt;">14.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.11.7" style="padding-left:3.1pt;padding-right:3.1pt;">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.11.8" style="padding-left:3.1pt;padding-right:3.1pt;">29.4</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.T5.2.11.9" style="padding-left:3.1pt;padding-right:3.1pt;">19.8  <span class="ltx_rule" style="width:0.8pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.11.10" style="padding-left:3.1pt;padding-right:3.1pt;">43.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of 15 large vision-language models (LVLMs) on the VisualSimpleQA-hard benchmark. VisualSimpleQA-hard is a subset of the VisualSimpleQA benchmark containing particularly challenging samples for evaluating fact-seeking QA capabilities. The table shows the models' performance in terms of correctness, and refusal rates, for both text-only questions (TQA) and multimodal questions (MQA).  Additionally, the table includes the relative degradation (RD) metric which quantifies the difference in performance between text-only and multimodal questions, highlighting the models' visual reasoning capabilities.  The results reveal that even state-of-the-art models struggle with the challenging samples in VisualSimpleQA-hard.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation of models on VisualSimpleQA-hard (%).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.06492/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06492/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}