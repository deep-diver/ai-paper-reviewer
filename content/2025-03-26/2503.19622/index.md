---
title: "Exploring Hallucination of Large Multimodal Models in Video Understanding: Benchmark, Analysis and Mitigation"
summary: "HAVEN: A new benchmark to tackle the hallucination issue in video understanding of large multimodal models!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Chinese Academy of Sciences",]
showSummary: true
date: 2025-03-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.19622 {{< /keyword >}}
{{< keyword icon="writer" >}} Hongcheng Gao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.19622" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.19622" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.19622/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large multimodal models (LMMs) often produce incorrect responses that seem correct, a phenomenon called hallucination, which limits their reliability. This is especially challenging in video understanding due to the dynamic nature of video data compared to static images. Existing benchmarks mainly focus on image understanding and do not fully address the complexities of video content. Therefore, the paper introduces **HAVEN**, a new benchmark designed to evaluate the hallucination issue in video understanding. 



The paper proposes a thinking-based training strategy to reduce hallucinations by enhancing the LMM's reasoning capabilities, dividing this strategy into two steps: supervised reasoning fine-tuning (SRFT) and thinking-based direct preference optimization (TDPO). Experiments on 16 LMMs using HAVEN reveal insights into factors affecting hallucination and demonstrate the effectiveness of the proposed training methodology. Results shows that it can improve the baseline by 7.65% in accuracy on hallucination evaluation and reduces the bias score by 4.5%.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces HAVEN, a comprehensive benchmark for evaluating hallucinations in video understanding LMMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Identifies and analyzes key factors influencing hallucinations in LMMs, such as video length, question complexity, and model size. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposes a video-thinking model with supervised reasoning fine-tuning and direct preference optimization to mitigate hallucinations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces **HAVEN**, a novel benchmark to evaluate video understanding LMMs, addressing a critical gap in hallucination assessment. It offers **insights into the impact of various factors on model performance**, aiding in targeted improvements and mitigation strategies. The **thinking-based training approach** opens new avenues for enhancing LMMs' reasoning and reducing inaccuracies.

------
#### Visual Insights



![](https://arxiv.org/html/2503.19622/x1.png)

> 🔼 This figure illustrates the construction protocol used to create the HAVEN benchmark dataset for evaluating hallucinations in large multimodal models for video understanding.  The left side shows the three dimensions used to categorize the data: hallucination causes (conflict with prior knowledge, in-context conflict, capability deficiency), hallucination aspects (object, scene, event), and question format (binary-choice, multiple-choice, short-answer). Each dimension has several sub-categories, visualized in the diagram. The right side displays the evaluation process and metrics used, which involves using an LLM (Large Language Model) to judge the correctness of the model's responses and calculating metrics such as the hallucination rate and consistency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Construction protocol of HAVEN. The left section outlines the three dimensions of data construction and the associated categories within each, while the right section details the evaluation process and metrics.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1.1">Cause/Aspect</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.2.1">Object</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.3.1">Scene</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.4.1">Event</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.5.1">#Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.1.1.1">Prior Conflict</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.2">2162</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.3">686</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.4">1763</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.1.5">4569</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.3.2.1.1">In-context Conflict</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.2">94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.3">82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.4">404</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2.5">538</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.2.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.4.3.1.1">Capability</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.2">1107</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.3">121</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.4">78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3.5">1156</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.2.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.5.4.1.1">#Total</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.2">3363</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.3">889</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.4">2245</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.5.4.5">6497</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a summary of the HAVEN benchmark dataset's composition. It details the distribution of questions across three hallucination causes (Prior Conflict, In-context Conflict, Capability), three hallucination aspects (Object, Scene, Event), and three question formats (Binary-choice, Multiple-choice, Short-answer).  The table shows the number of questions in each category and sub-category, providing insights into the dataset's balance and the relative emphasis on different types of hallucinations.
> <details>
> <summary>read the caption</summary>
> Table 1: The Statistics of HAVEN
> </details>





### In-depth insights


#### Video LMMs Eval
**Evaluating video-based Large Multimodal Models (LMMs) is a critical yet challenging task.** Unlike image-based LMMs, video LMMs must process temporal information, increasing complexity. Evaluation requires assessing not just object recognition, but also event understanding and action sequencing. Existing benchmarks often fall short by either adapting image-based metrics or simplifying video content. A robust evaluation should consider varying video durations, frame rates, and complexity levels. **Hallucination, a major concern in LMMs, manifests differently in video**. It's not just about misidentifying objects, but misinterpreting actions or fabricating events within the video sequence. A comprehensive evaluation needs to assess the model's ability to maintain temporal consistency, avoid event fabrication, and handle ambiguous situations. The assessment should be nuanced, incorporating varied question types (open-ended, multiple-choice) to probe different aspects of understanding. **Furthermore, evaluating reasoning skills in video LMMs is paramount.** Models should not only describe the video but also infer relationships, predict outcomes, and answer causal questions. This requires benchmarks that go beyond surface-level understanding and delve into deeper analytical capabilities. Developing such benchmarks needs careful consideration of potential biases and the ability to scale, and it also necessitates automatic and human evaluation to get the comprehensive results.

#### Thinking SRFT
**SRFT (Supervised Reasoning Fine-Tuning)** is a process of improving the logic and reasoning capabilities of models through supervised fine-tuning. It enhances **LMM's (Large Multimodal Models)** comprehension and correlation of visual inputs (videos) and linguistic structures, facilitating more logical derivations. The **LORA-based SFT** approach is key; this allows for model parameter modification during fine-tuning without catastrophic forgetting or significant computational cost. **Reasoning data synthesis** becomes indispensable when the base LMM struggles with multi-image or visual processing, using external models to generate training data to compensate and further refine its analytical capacity. This synthesized data aims to emulate multi-step thinking. 

#### HAVEN: 3-Axis
The 'HAVEN: 3-Axis' heading, while not explicitly present in the text, likely refers to the core design of the HAVEN benchmark for evaluating hallucination in video understanding. Considering the paper's focus, the three axes probably represent the key dimensions along which hallucinations are assessed. **These axes are likely Hallucination Causes, Hallucination Aspects, and Question Formats**.  The first cause relates to identifying conflict between prior knowledge, in-context conflict, and the inherent capability deficiencies of LMMs. The second is how hallucination is observed in a video, object, scene, and event. The last refers to how it is being identified or evaluated like binary, multiple choice, and short answer. **This 3-axis structure enables a granular analysis of where and why LMMs falter in video understanding**, moving beyond simple accuracy metrics to pinpoint specific vulnerabilities. The axes also make the framework more robust and systematic. 

#### CoT helps LMMS
**Chain-of-Thought (CoT) prompting enhances Large Multimodal Models (LMMs) by improving reasoning.** CoT enables LMMs to break down complex tasks into sequential steps, mirroring human thought processes. This step-by-step approach improves accuracy by addressing capability deficiencies and contextual conflicts. **CoT reduces hallucinations in LMMs by providing a structured framework** to verify information and maintain consistency. This leads to more reliable and trustworthy outputs, vital for applications requiring factual precision. **CoT's benefits include enhanced reasoning ability and reduced errors.**

#### Thinking vs DPO
**Thinking** and **Direct Preference Optimization (DPO)** represent distinct yet complementary strategies for enhancing the performance of large language models. **Thinking-based approaches** focus on equipping models with enhanced reasoning capabilities, often achieved through techniques like chain-of-thought prompting or supervised reasoning fine-tuning. This aims to improve the model's ability to understand complex relationships and generate more accurate responses. On the other hand, **DPO** is a preference learning technique that directly optimizes the model based on human feedback. It avoids the need for explicit reward modeling, making it more efficient and stable. Ideally, models would undergo thinking-based training to fortify reasoning, followed by DPO to align the reasoning process with human preferences, mitigating hallucinations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.19622/x2.png)

> 🔼 This figure shows the distribution of video durations in the HAVEN benchmark dataset. The x-axis represents the duration of videos in seconds, and the y-axis represents the frequency or count of videos with that duration. The histogram visually depicts the concentration of video lengths in the dataset, providing insights into the temporal characteristics of the videos used for evaluating LMMs.
> <details>
> <summary>read the caption</summary>
> (a) Duration Time
> </details>



![](https://arxiv.org/html/2503.19622/x3.png)

> 🔼 The figure shows a histogram representing the distribution of the number of frames across different videos in the HAVEN benchmark dataset.  It visualizes the frequency with which videos of varying lengths (measured by frame count) are represented in the dataset. This helps to understand the range of video durations considered and the potential impact of video length on the results of the hallucination evaluation.
> <details>
> <summary>read the caption</summary>
> (b) Frame Count
> </details>



![](https://arxiv.org/html/2503.19622/x4.png)

> 🔼 This histogram shows the distribution of the number of tokens in the questions used in the HAVEN benchmark.  The x-axis represents the number of tokens, and the y-axis shows the frequency of questions with that token count.  It illustrates the length distribution of the questions, indicating the complexity and detail level of the queries.
> <details>
> <summary>read the caption</summary>
> (c) Question Length
> </details>



![](https://arxiv.org/html/2503.19622/x5.png)

> 🔼 This figure presents three histograms showing the distributions of duration time, frame count, and question length in the HAVEN dataset.  The duration time histogram shows that most videos are relatively short, with a significant peak between 0 and 20 seconds.  The frame count histogram indicates that the majority of videos have between 0 and 400 frames. Finally, the question length histogram demonstrates the distribution of the number of tokens in each question, highlighting that the majority of questions are concise, with the number of tokens typically ranging from 10 to 15.
> <details>
> <summary>read the caption</summary>
> Figure 2: Distribution of duration time, frame count, and question length.
> </details>



![](https://arxiv.org/html/2503.19622/x6.png)

> 🔼 This figure shows the distribution of question types in the HAVEN benchmark dataset.  It visually represents the percentage of questions that fall into each of three categories: binary-choice (True/False), multiple-choice, and short-answer.  Furthermore, it indicates the proportion of questions within each category for which detailed answers were provided.
> <details>
> <summary>read the caption</summary>
> Figure 3: Question format distribution. Percentage share of each format-binary-choice (T/F), multiple-choice (MC), and short-answer (SA)—and the proportion occupied by the detailed answer.
> </details>



![](https://arxiv.org/html/2503.19622/x7.png)

> 🔼 This figure shows the distribution of video durations in the HAVEN benchmark dataset. The x-axis represents the duration of videos in seconds, and the y-axis represents the frequency or count of videos with that duration. The histogram visually displays the concentration of video durations within the dataset, revealing whether the dataset contains mostly short videos, long videos, or a mix of both.
> <details>
> <summary>read the caption</summary>
> (a) Duration Time
> </details>



![](https://arxiv.org/html/2503.19622/x8.png)

> 🔼 The figure shows the distribution of the number of frames in videos used in the HAVEN benchmark.  The x-axis represents the number of frames, and the y-axis represents the frequency or count of videos with that number of frames.  The histogram visually displays the frequency distribution, showing how many videos contain a specific number of frames. This information is important for understanding the characteristics of the video dataset used in evaluating large multimodal models.
> <details>
> <summary>read the caption</summary>
> (b) Frame Count
> </details>



![](https://arxiv.org/html/2503.19622/x9.png)

> 🔼 This figure shows the distribution of the number of tokens in the questions used in the HAVEN benchmark.  The x-axis represents the number of tokens, and the y-axis represents the frequency or count of questions with that token length. The distribution shows that most questions have a length between 20 and 30 tokens.
> <details>
> <summary>read the caption</summary>
> (c) Question Length
> </details>



![](https://arxiv.org/html/2503.19622/x10.png)

> 🔼 This figure visualizes the effects of video duration, frame count, and question length on the accuracy of Large Language Models (LLMs) in video understanding tasks.  Each subplot shows a heatmap illustrating the relationship between one of these factors and the LLM's accuracy in avoiding hallucinations.  The x-axis represents the value of the factor (duration, frame count, or question length), and the y-axis represents the accuracy, which is likely a percentage or a similar metric reflecting the correctness of the LLM's answers.  The heatmap's color intensity shows the strength of the relationship - warmer colors represent higher accuracy (less hallucination), while cooler colors indicate lower accuracy (more hallucination).  The figure helps to understand how these factors influence the performance of LLM models in avoiding incorrect responses.
> <details>
> <summary>read the caption</summary>
> Figure 4: The impact of video duration, frame count, and question length on LLM hallucination.
> </details>



![](https://arxiv.org/html/2503.19622/x11.png)

> 🔼 This heatmap visualizes the relationship between hallucination causes and aspects in a video understanding task.  The three causes of hallucination are conflict with prior knowledge, in-context conflict, and capability deficiency. The three aspects are object, scene, and event. Each cell in the heatmap represents the accuracy (percentage) of model responses for a specific combination of cause and aspect.  For instance, a high value in the cell corresponding to 'Prior Conflict' and 'Object' indicates high model accuracy when the hallucination is due to prior knowledge conflict and relates to an object in the video.
> <details>
> <summary>read the caption</summary>
> (a) Causes-Aspects
> </details>



![](https://arxiv.org/html/2503.19622/extracted/6308336/fram.png)

> 🔼 This heatmap visualizes the accuracy of Large Multimodal Models (LMMs) in video understanding tasks, broken down by question format and hallucination aspect.  The x-axis represents the three question formats used in the HAVEN benchmark: True/False (T/F), Multiple Choice (MC), and Short Answer (SA). The y-axis represents the three hallucination aspects: Object, Scene, and Event. Each cell in the heatmap shows the average accuracy across all models for that specific combination of question format and hallucination aspect. This allows for a detailed analysis of model performance across different question types and the types of hallucinations they struggle with.
> <details>
> <summary>read the caption</summary>
> (b) Formats-Aspects
> </details>



![](https://arxiv.org/html/2503.19622/x12.png)

> 🔼 This heatmap visualizes the relationship between question formats (binary-choice, multiple-choice, short-answer) and hallucination causes (prior knowledge conflict, in-context conflict, capability deficiency) in terms of model accuracy.  Each cell represents the average accuracy across all models for a specific combination of question format and hallucination cause.  It provides a concise overview of how different question types and hallucination sources affect model performance, allowing for a comparison of accuracy across different scenarios. Warmer colors indicate higher accuracy.
> <details>
> <summary>read the caption</summary>
> (c) Formats-Causes
> </details>



![](https://arxiv.org/html/2503.19622/x13.png)

> 🔼 This figure presents three heatmaps, each visualizing the accuracy of Large Multimodal Models (LMMs) across two dimensions.  The first heatmap shows accuracy based on the cause of hallucination (Prior Conflict, In-context Conflict, Capability Deficiency) and the aspect of hallucination (Object, Scene, Event). The second heatmap shows accuracy based on question format (True/False, Multiple-Choice, Short-Answer) and the aspect of hallucination. The third heatmap shows accuracy based on question format and the cause of hallucination.  The heatmaps use color intensity to represent accuracy, with warmer colors indicating higher accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 5: Accuracy heatmap along two dimensions.
> </details>



![](https://arxiv.org/html/2503.19622/x14.png)

> 🔼 This figure visualizes the impact of the number of sampled frames on the performance of various large multimodal models (LMMs) in video understanding tasks.  It shows that increasing the number of sampled frames initially improves model accuracy, but beyond a certain point, the performance starts to decline.  The figure also displays the bias score for each model, showing the consistency of responses across different variants of the same question. The x-axis represents the number of sampled frames, and the y-axis shows the accuracy and bias scores for each model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Relationship between number of sampling frames and model performance.
> </details>



![](https://arxiv.org/html/2503.19622/x15.png)

> 🔼 This figure visualizes the relationship between model size and the performance of different models on two metrics: hallucination and consistency.  The x-axis represents the model size, categorized into 3B, 7B, 13B, and 34B parameter models. The y-axis for the left graph shows accuracy, while the y-axis for the right graph shows bias score (a measure of consistency). For each model size category, multiple models are included, and the graph displays their mean accuracy and bias scores, along with standard deviation error bars. This visualization helps assess how model size impacts both hallucination rates (higher accuracy means lower hallucination) and consistency (lower bias score indicates higher consistency) in multimodal video understanding tasks.
> <details>
> <summary>read the caption</summary>
> (a) Hallucination
> </details>



![](https://arxiv.org/html/2503.19622/x16.png)

> 🔼 The figure visualizes the consistency evaluation results, specifically showcasing bias scores for different models across various sizes. Lower bias scores indicate better consistency in model responses.  It compares performance across different model sizes (3B, 7B, 13B, 34B parameters) for multiple model types, highlighting the relationship between model size and response consistency. 
> <details>
> <summary>read the caption</summary>
> (b) Consistency
> </details>



![](https://arxiv.org/html/2503.19622/x17.png)

> 🔼 This figure visualizes the correlation between the size of large multimodal models (LMMs) and their performance on video understanding tasks, specifically focusing on reducing hallucinations.  It shows how accuracy and bias scores (indicating consistency of responses) change as the number of model parameters increases.  The plot includes regression lines for different model categories, highlighting overall trends despite some individual model variations.  Larger models generally exhibit higher accuracy and lower bias, suggesting a positive relationship between model scale and performance in mitigating hallucinations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Relationship between model size and performance.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.1.1">Model/Type</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.2.1">Prior</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.3.1">In-context</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.4.1">Capability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.1.1.5.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.1">Object</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.2">Scene</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.3">Event</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.4">Object</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.5">Scene</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.6">Event</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.7">Object</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.8">Scene</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2.9">Event</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.2.1.3.3.1">VideoChatGPT-7B<cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.2">34.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.3">43.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.4">38.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.5">17.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.6">13.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.7">17.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.8">32.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.9">47.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.10">20.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.3.3.11">34.69</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.4.4.1">Valley-Eagle-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.2.1">68.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.3.1">75.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.4.1">63.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.5">24.47</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.6">43.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.7">15.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.8">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.4.4.8.1">\ul</span>57.36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.9"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.9.1">55.37</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.10">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.4.4.10.1">\ul</span>47.43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4.11"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.11.1">61.29</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.5.5.1">VideoLLaVA-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.2">47.55</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.3">57.29</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.4">50.59</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.5">14.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.6">12.19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.7">10.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.8">35.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.9">33.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.10">34.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.5.11">43.73</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.6.6.1">VideoChat2-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.2">43.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.3">48.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.4">43.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.5">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.6.6.5.1">\ul</span>30.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.6">26.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.7">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.6.6.7.1">\ul</span>26.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.8">26.74</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.9">28.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.10">33.33</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.6.11">39.11</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.7.7.1">ShareGPT4Video <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.2">51.48</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.3">62.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.4">48.27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.5">17.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.6">19.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.7">8.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.8">43.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.9">38.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.10">32.05</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.7.11">46.28</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.8.8.1">LLaVA-v1.5-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.2">52.03</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.3">62.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.4">49.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.5">20.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.6">36.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.7">17.33</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.8">45.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.9">42.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.10">46.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.8.11">48.33</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.9.9.1">LLaMA-VID-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.2">48.75</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.3">56.71</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.4">50.09</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.5">20.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.6">21.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.7">21.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.8">37.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.9">42.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.10">29.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.9.9.11">45.31</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.10.10.1">LLaMA-VID-13B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.2">47.82</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.3">54.23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.4">49.29</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.5">12.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.6">29.26</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.7">5.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.8">40.65</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.9">38.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.10">32.05</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.10.10.11">43.91</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.11.11.1">PLLaVA-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib103" title=""><span class="ltx_text" style="font-size:90%;">103</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.2">44.26</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.3">60.93</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.4">41.41</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.5">20.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.6">37.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.7">9.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.8">43.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.9">15.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.10">32.05</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.11.11.11">40.17</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.12.12.1">PLLaVA-13B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib103" title=""><span class="ltx_text" style="font-size:90%;">103</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.2">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.12.12.2.1">\ul</span>62.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.3">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.12.12.3.1">\ul</span>69.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.4">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.12.12.4.1">\ul</span>56.55</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.5">21.28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.6">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.12.12.6.1">\ul</span>50.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.7">15.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.8">48.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.9">46.28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.10">44.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.12.12.11">54.87</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.13.13.1">Qwen2.5-VL-3B-Instruct <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.2">52.36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.3">65.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.4">49.12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.5">20.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.6">37.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.7">5.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.8">43.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.9">15.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.10">32.05</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.13.13.11">46.85</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.14.14.1">Qwen2.5-VL-7B-Instruct <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.2">55.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.3">60.05</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.4">50.25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.5">20.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.6">32.93</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.7">8.66</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.8">53.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.9">44.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.10">34.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.14.14.11">50.19</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.15.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.15.15.1">LLaVA-NeXT-Video-DPO-7B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib113" title=""><span class="ltx_text" style="font-size:90%;">113</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.2">49.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.3">57.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.4">49.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.5">15.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.6">31.71</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.7">12.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.8">38.12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.9">43.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.10">41.03</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.15.15.11">45.25</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.16.16.1">LLaVA-NeXT-Video-DPO-34B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib113" title=""><span class="ltx_text" style="font-size:90%;">113</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.2">52.59</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.3">60.79</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.4">47.42</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.5">22.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.6">34.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.7">7.67</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.8">45.17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.9">41.32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.10">26.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.16.16.11">46.81</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.17.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.17.17.1">Video-LLaMA-2-13B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.2">28.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.3">40.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.4">30.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.5">11.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.6">9.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.7">12.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.8">16.71</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.9">21.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.10">26.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.17.17.11">26.97</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.2.1.18.18.1">GPT-4o-mini <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.19622v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.2">52.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.3">59.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.4">54.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.5"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.18.18.5.1">58.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.6"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.18.18.6.1">64.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.7"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.18.18.7.1">62.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.8"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.18.18.8.1">63.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.9">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.18.18.9.1">\ul</span>52.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.10"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.18.18.10.1">60.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.1.18.18.11">
<span class="ltx_ERROR undefined" id="S3.T2.2.1.18.18.11.1">\ul</span>56.80</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of 16 Large Multimodal Models (LMMs) on their ability to accurately answer questions about videos.  The evaluation is broken down by three categories of hallucination causes (prior knowledge conflict, in-context conflict, capability deficiency) and three aspects of video content (object, scene, event).  For each LMM, the table shows the accuracy of its answers for each combination of cause and aspect.  The highest accuracy for each row is bolded, while the second highest is underlined.  This provides a detailed comparison of the models' strengths and weaknesses in handling different types of video understanding tasks and allows for analysis of the relationship between model performance and the type of hallucination present.
> <details>
> <summary>read the caption</summary>
> Table 2: Hallucination Evaluation. Accuracy of LMMs on questions of different types of hallucination targets across three causes. The bold font indicates the best performance, and the \ulunderline mark indicates the second-best.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T5.2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.1.1">Model/Type</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T5.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.2.1">Prior</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T5.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.3.1">In-context</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T5.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.4.1">Capability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.2.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.5.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.1">Object</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.2">Scene</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.3">Event</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.4">Object</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.5">Scene</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.6">Event</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.7">Object</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.8">Scene</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.2.2.9">Event</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.2.1.3.3.1">PLLaVA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.2">44.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.3">60.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.4">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.5">20.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.6">37.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.7">9.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.8">43.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.9">15.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.10">32.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.11">40.17</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T5.2.1.4.4.1">+CoT</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.2">49.44</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.3">53.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.4">44.13</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.5">35.10</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.6">58.54</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.7">38.37</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.8">36.77</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.9">33.88</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.10">29.49</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.11">44.95</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.2.1.5.5.1">LLaMA-VID-7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.2">48.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.3">56.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.4">50.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.5">20.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.6">21.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.7">21.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.8">37.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.9">42.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.10">29.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.5.5.11">45.31</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T5.2.1.6.6.1">+CoT</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.2">50.04</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.3">58.45</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.4">50.54</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.5">24.47</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.6">25.61</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.7">26.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.8">35.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.9">39.67</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.10">30.77</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.11">46.05</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.2.1.7.7.1">LLaVA-NeXT-Video-DPO-7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.2">51.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.3">62.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.4">48.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.5">17.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.6">19.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.7">8.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.8">43.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.9">38.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.10">32.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.7.7.11">45.25</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T5.2.1.8.8.1">+CoT</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.2">52.08</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.3">64.28</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.4">50.88</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.5">36.17</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.6">51.22</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.7">34.41</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.8">41.01</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.9">47.93</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.10">37.18</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.8.8.11">49.56</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.2.1.9.9.1">LLaVA-NeXT-Video-DPO-34B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.2">52.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.3">60.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.4">47.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.5">22.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.6">34.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.7">7.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.8">45.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.9">41.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.10">26.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.9.9.11">46.81</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T5.2.1.10.10.1">GPT-4o-mini</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.2">52.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.3">59.47</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.4">54.79</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.5">58.51</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.6">64.63</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.7">62.13</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.8">63.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.9">52.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.10">60.26</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.10.10.11">56.80</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.11.11" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.2.1.11.11.1"><span class="ltx_text" id="S5.T5.2.1.11.11.1.1" style="background-color:#E6E6E6;">LLaVA-NeXT-Video-7B-Thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.2"><span class="ltx_text" id="S5.T5.2.1.11.11.2.1" style="background-color:#E6E6E6;">58.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.3"><span class="ltx_text" id="S5.T5.2.1.11.11.3.1" style="background-color:#E6E6E6;">69.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.4"><span class="ltx_text" id="S5.T5.2.1.11.11.4.1" style="background-color:#E6E6E6;">53.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.5"><span class="ltx_text" id="S5.T5.2.1.11.11.5.1" style="background-color:#E6E6E6;">39.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.6"><span class="ltx_text" id="S5.T5.2.1.11.11.6.1" style="background-color:#E6E6E6;">56.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.7"><span class="ltx_text" id="S5.T5.2.1.11.11.7.1" style="background-color:#E6E6E6;">40.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.8"><span class="ltx_text" id="S5.T5.2.1.11.11.8.1" style="background-color:#E6E6E6;">39.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.9"><span class="ltx_text" id="S5.T5.2.1.11.11.9.1" style="background-color:#E6E6E6;">37.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.10"><span class="ltx_text" id="S5.T5.2.1.11.11.10.1" style="background-color:#E6E6E6;">34.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.1.11.11.11"><span class="ltx_text" id="S5.T5.2.1.11.11.11.1" style="background-color:#E6E6E6;">52.90</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the consistency evaluation results for 16 different Large Multimodal Models (LMMs).  The evaluation focuses on how consistent the models' responses are across various question formats and versions designed to test for response biases.  Lower bias scores indicate higher consistency, meaning the model provides similar answers even when the question is slightly rephrased or its options are reordered. The table breaks down the bias scores by question type (binary-choice, multiple-choice), providing a comprehensive view of model consistency.
> <details>
> <summary>read the caption</summary>
> Table 3: Consistence Evaluation
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.19622/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.19622/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}