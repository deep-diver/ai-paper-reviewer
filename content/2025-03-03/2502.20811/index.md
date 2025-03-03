---
title: "HAIC: Improving Human Action Understanding and Generation with Better Captions for Multi-modal Large Language Models"
summary: "HAIC improves MLLMs' action understanding with high-quality video captions & new benchmark, boosting performance and generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Kuaishou Technology",]
showSummary: true
date: 2025-02-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20811 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiao Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20811" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20811" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20811/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-modal Large Language Models (MLLMs) show promise in video understanding, their grasp of human actions lags due to data scarcity. Existing datasets often provide coarse captions, failing to capture nuanced behaviors crucial for emotional analysis and relationship modeling, especially in multi-person scenarios. Challenges include accumulating videos with clear multi-person actions and defining caption formats that distinguish individuals and detail their interactions.



To solve the issue, the paper introduces a novel two-stage data generation pipeline. The method accumulates videos featuring clear human actions and annotates them using a standardized caption format that distinguishes individuals by attributes and details their actions/interactions chronologically. This approach curates HAICTrain (126K video-caption pairs) for training and HAICBench (500 annotated pairs, 1,400 QA pairs) for evaluation. **Experiments show HAICTrain enhances human understanding abilities and text-to-video generation.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel two-stage data annotation pipeline can generate high-quality video caption data for improving human action understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The curated datasets, HAICTrain and HAICBench, significantly enhance MLLMs' performance in human action understanding and text-to-video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Training with HAICTrain improves human understanding across various benchmarks and text-to-video generation results. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work significantly enhances human action understanding by introducing high-quality, detailed video caption data and evaluation resources, offering immediate improvements and opening new avenues for research in video understanding and generation. It provides the resources of HAICTrain and HAICBench.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20811/x1.png)

> 🔼 This figure showcases the standardized caption format used to annotate videos in the HAIC dataset.  Each caption chronologically details the attributes (e.g., age, clothing, etc.) of each individual in the video clip, describes their body actions, and outlines their interactions with others.  This structured format significantly improves the clarity and facilitates accurate understanding of complex multi-person interactions compared to simpler captioning methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our standardized caption format presents each individual’s detailed attributes, body actions, and interactions in chronological order, making it easier to distinguish individuals and comprehend their behaviors.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.1.1">Category</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1.2"><span class="ltx_text" id="S1.T1.1.1.1.1.2.1" style="color:#1F2329;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.2.1.1" style="color:#1F2329;">Example</span></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.1.1.2.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S1.T1.1.1.2.1.1"></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.1.1.2.1.2"><span class="ltx_text" id="S1.T1.1.1.2.1.2.1" style="color:#016DCB;"><span class="ltx_text ltx_font_italic" id="S1.T1.1.1.2.1.2.1.1">What gesture does the middle-aged woman make while talking to the other man?</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.1.1.3.2.1"><span class="ltx_text" id="S1.T1.1.1.3.2.1.1">Interaction</span></th>
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.3.2.2"><span class="ltx_text" id="S1.T1.1.1.3.2.2.1" style="color:#1F2329;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.3.2.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.3.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.1.1.3.2.2.1.1.1.1">(A) Gestures with both hands clasped in front of her</span></span>
<span class="ltx_tr" id="S1.T1.1.1.3.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.1.1.3.2.2.1.1.2.1">(B) Claps her hands (C) Waves her hands in the air (D) Points at the desk</span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S1.T1.1.1.4.3.1"></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.4.3.2"><span class="ltx_text" id="S1.T1.1.1.4.3.2.1" style="color:#016DCB;"><span class="ltx_text ltx_font_italic" id="S1.T1.1.1.4.3.2.1.1">What does the man in the black hat do with his right hand as he starts skateboarding?</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.1.1.5.4.1"><span class="ltx_text" id="S1.T1.1.1.5.4.1.1">Action Details</span></th>
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.5.4.2"><span class="ltx_text" id="S1.T1.1.1.5.4.2.1" style="color:#1F2329;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.5.4.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.5.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.1.1.5.4.2.1.1.1.1">(A) He waves it in greeting (B) He points down the slope</span></span>
<span class="ltx_tr" id="S1.T1.1.1.5.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.1.1.5.4.2.1.1.2.1">(C) He places it on his hip (D) He keeps it in his pocket</span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S1.T1.1.1.6.5.1"></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.6.5.2"><span class="ltx_text" id="S1.T1.1.1.6.5.2.1" style="color:#016DCB;"><span class="ltx_text ltx_font_italic" id="S1.T1.1.1.6.5.2.1.1">What does the man in the gray cap do immediately after gripping the barbell?</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.1.1.7.6.1"><span class="ltx_text" id="S1.T1.1.1.7.6.1.1">Action Sequence</span></th>
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.7.6.2"><span class="ltx_text" id="S1.T1.1.1.7.6.2.1" style="color:#1F2329;">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.7.6.2.1.1">
<span class="ltx_tr" id="S1.T1.1.1.7.6.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.1.1.7.6.2.1.1.1.1">(A) He looks at the camera (B) He adjusts his hat (C) He bends down and lowers the barbell</span></span>
<span class="ltx_tr" id="S1.T1.1.1.7.6.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S1.T1.1.1.7.6.2.1.1.2.1">(D) He walks towards his front left and rubs his hands together</span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.8.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S1.T1.1.1.8.7.1"></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.8.7.2"><span class="ltx_text" id="S1.T1.1.1.8.7.2.1" style="color:#016DCB;"><span class="ltx_text ltx_font_italic" id="S1.T1.1.1.8.7.2.1.1">How many times does the man clap his hands?</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.1.1.9.8.1"><span class="ltx_text" id="S1.T1.1.1.9.8.1.1">Count</span></th>
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.9.8.2"><span class="ltx_text" id="S1.T1.1.1.9.8.2.1" style="color:#1F2329;">(A) Three (B) Four times (C) Once (D) Twice</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.10.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S1.T1.1.1.10.9.1"></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.10.9.2"><span class="ltx_text" id="S1.T1.1.1.10.9.2.1" style="color:#016DCB;"><span class="ltx_text ltx_font_italic" id="S1.T1.1.1.10.9.2.1.1">What color is the cropped jacket worn by the young female character in the video?</span></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S1.T1.1.1.11.10.1"><span class="ltx_text" id="S1.T1.1.1.11.10.1.1">Attribute</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.1.1.11.10.2"><span class="ltx_text" id="S1.T1.1.1.11.10.2.1" style="color:#1F2329;">(A) Pink (B) White (C) Blue (D) Black</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents example questions from the HAICBench dataset, illustrating its comprehensive evaluation of human action understanding.  It showcases how the dataset assesses understanding across different dimensions: spatial (details of individual actions), temporal (order and number of actions), and multi-person interactions (actions and attributes of multiple individuals). The questions highlight the nuanced aspects of human action captured by HAICBench, demonstrating its ability to test a wide range of understanding capabilities beyond simple action recognition.
> <details>
> <summary>read the caption</summary>
> Table 1: Task examples of HAICBench, showcasing a comprehensive human action understanding across spatial (action details), temporal (sequence, count), and multi-human interaction (interaction and attribute) aspects.
> </details>





### In-depth insights


#### Action-centric LLM
While the paper doesn't explicitly discuss an "Action-centric LLM," we can infer its potential role by analyzing the paper's focus on human action understanding. Such a model would likely prioritize **detailed action recognition and prediction**. This means going beyond simple activity classification to **analyzing fine-grained movements, interactions, and temporal sequences**. The HAIC dataset's rich captions could be crucial for training this type of LLM, enabling it to **differentiate between subtle variations in action and understand the context** in which they occur. Furthermore, an Action-centric LLM would need to **effectively model multi-person interactions**, accurately attributing actions to specific individuals based on their attributes and relationships. This would require a **sophisticated understanding of human social dynamics** and the ability to reason about intent and motivation. HAIC's question answering dataset, particularly the interaction-focused questions, would be invaluable for evaluating this aspect of the model's performance. Ultimately, an Action-centric LLM could have significant implications for applications like human-computer interaction, autonomous driving, and video generation, enabling more natural and intuitive interactions and more realistic virtual environments.

#### HAIC: Details Matter
**HAIC: Details Matter** emphasizes the critical role of fine-grained details in human action understanding within videos. Existing MLLMs often struggle due to coarse captions lacking nuanced descriptions of behaviors, interactions, and individual attributes. HAIC addresses this by introducing a novel data annotation pipeline that meticulously accumulates videos featuring clear human actions and employs a standardized caption format. This format distinguishes individuals using human attributes like age, clothing, and accessories while chronologically detailing body actions and interactions. By focusing on these details, HAIC aims to enhance MLLMs' comprehension of complex human behavior, enabling tasks like emotional analysis, motivation prediction, and relationship modeling. This shift towards detail-oriented data promises to significantly improve the accuracy and applicability of MLLMs in various downstream tasks, including human-computer interaction, autonomous driving, and embodied intelligence. Essentially, HAIC recognizes that a deeper understanding of human actions requires moving beyond superficial descriptions and capturing the intricate nuances of human behavior within video data.

#### Action Data Pipeline
The data pipeline focuses on curating videos with **clear human actions**. The pipeline starts with large-scale video sources, applying **metadata filters** to remove low-resolution videos and those lacking action-related descriptions. **Scene splitting** divides the videos into shorter clips with unique scenes. A crucial step is **human existence filtering**, ensuring that each frame contains a sufficient number of humans and that the bounding box area covers a significant portion of the frame. **Human action filtering** identifies and retains videos with clear human movement, discarding static scenes or gallery videos. The pipeline uses body keypoints and affine transformations to detect and remove static backgrounds. Overall, the video accumulation process prioritizes high-quality videos with evident human actions.

#### Better video generation
While not explicitly a section, the paper hints at improving video generation through **better action understanding**. The authors create datasets with detailed captions, enabling models to learn fine-grained human actions and interactions. Training with this data demonstrably enhances the quality of generated videos, as captions become more semantically accurate. This implies that robust video generation relies heavily on the model's capacity to **comprehend the complexities of human behavior**, moving beyond simplistic scene descriptions. Therefore, a future research direction should include an approach that can utilize these understandings for video generation.

#### Beyond visual data
While **visual data** forms the cornerstone of many AI systems, particularly in areas like image recognition and video understanding, venturing **beyond this modality** unlocks significant potential. Integrating **audio information**, for instance, could provide crucial contextual cues currently missing. Imagine understanding a scene not just by what is seen, but also by the sounds accompanying it – a dog barking, a car screeching, or even the subtle nuances of human speech. Such additions can drastically improve the accuracy and robustness of AI systems. Furthermore, incorporating **textual data** beyond simple descriptions offers avenues for deeper analysis. Think of subtitles providing dialogue, scene descriptions offering emotional context, or metadata revealing cultural nuances. By fusing these diverse data streams, AI models can achieve a more **holistic understanding**, mimicking the way humans perceive and interpret the world. This **multi-modal approach** is paramount for truly intelligent systems capable of tackling complex real-world scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20811/x2.png)

> 🔼 This figure illustrates the two-stage data generation pipeline used to create the HAICTrain and HAICBench datasets.  Stage (a) shows the process of accumulating videos from the internet that contain clear human actions.  This involves filtering videos based on metadata (resolution, presence of action verbs), ensuring sufficient human presence and action. Stage (b) details the creation of HAICTrain, where the collected videos are re-captioned using the Gemini-1.5-Pro LLM to create a standardized caption format. Finally, stage (c) describes the construction of HAICBench.  This dataset is built using a combination of LLM-generated captions and QA pairs, which are subsequently reviewed and refined by human annotators. This results in a high-quality, manually-verified dataset ideal for evaluating multi-modal large language models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our data generation pipeline. (a) The video accumulation stage collects videos featuring clear human actions from the Internet. Based on this, (b) HAICTrain is curated through Gemini-1.5-Pro re-captioning, and (c) HAICBench is created by LLM-assisted human annotation.
> </details>



![](https://arxiv.org/html/2502.20811/x3.png)

> 🔼 Figure 3 presents a statistical overview of the HAICBench dataset, showcasing several key characteristics.  The first subplot (a) displays a histogram of the word counts in the captions, revealing the length and detail level of the descriptive text. The second subplot (b) is a histogram of the video durations within the dataset, demonstrating the generally short length of the videos.  Subplot (c) provides a word cloud visualization of the most frequently used words in the captions, highlighting the common themes and actions captured within the dataset.  Finally, subplot (d) illustrates the distribution of questions across five different categories (interaction, action details, action sequence, count, and attribute), offering insights into the diversity and scope of the information captured in the HAICBench annotations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Statistics of HAICBench. Although videos are relatively short, the video captions are of high details including various action details and sequential actions.
> </details>



![](https://arxiv.org/html/2502.20811/x4.png)

> 🔼 The figure shows a comparison of video captions generated by different models for the same video clip.  The first caption is a concise description of the video, suitable for general video understanding tasks. However, it lacks the level of detail necessary for fine-grained action understanding. The second caption, generated using the HAIC annotation pipeline, shows a significantly more detailed and structured description. This caption includes specific attributes of the individuals involved (e.g., age, clothing, accessories), precise descriptions of their actions, and an accurate chronological ordering of events. This demonstrates the HAIC caption format's ability to provide richer, more detailed annotations than existing methods, thereby improving the performance of downstream multimodal tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: A video caption example in HAICBench.
> </details>



![](https://arxiv.org/html/2502.20811/x6.png)

> 🔼 This figure shows the detailed prompt used to instruct the Gemini-Pro language model to generate captions for videos in the HAICTrain dataset.  The prompt emphasizes the importance of accurately describing the number of people in the video, their attributes (gender, age, clothing, etc.), and the sequence of their actions. It stresses that the description should be based solely on what is visually apparent in the video and not on any external knowledge or assumptions.  The prompt provides two examples of correctly formatted captions to guide the model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Prompt for Gemini-Pro Re-captioning.
> </details>



![](https://arxiv.org/html/2502.20811/x7.png)

> 🔼 This figure shows the prompt used for generating question-answer pairs focusing on the interactions between individuals in a video.  The prompt instructs an AI assistant to analyze a video caption describing the number of people, their attributes, and their actions. The assistant should then generate a multiple-choice question and answer about the interaction between subjects. The JSON format for the output is specified, requiring a question, candidate answers, and the correct answer.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompt for action interaction QA generation.
> </details>



![](https://arxiv.org/html/2502.20811/x8.png)

> 🔼 This figure details the prompt used for generating question-answer pairs focusing on the details of actions within videos.  The prompt instructs the LLM to create multiple-choice questions concerning precise actions, body movements, expressions, or postures within a video, emphasizing the use of specific body parts (e.g., left hand, right leg) and directional details (e.g., upward, downward, diagonally).  The prompt further specifies the response format as JSON, with an example provided for clarity.  It also requests the use of distinctive attributes to identify the subjects instead of generic labels like 'Subject 1'.
> <details>
> <summary>read the caption</summary>
> Figure 7: Prompt for action details QA generation.
> </details>



![](https://arxiv.org/html/2502.20811/x9.png)

> 🔼 This figure shows the prompt used for generating question-answer pairs focusing on action sequences within videos.  The prompt instructs a large language model (LLM) to generate QA pairs from a video caption, where the question should focus on the order of actions. The question must include a phrase like 'What does...do immediately after (or just before)...', and it should specify attributes of the person to ensure clear identification. The answer options are limited to 15 words or less, with a JSON format required for the output.  The prompt also includes examples for better understanding and proper formatting.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt for action sequence QA generation.
> </details>



![](https://arxiv.org/html/2502.20811/x10.png)

> 🔼 This figure displays the prompt used to instruct a large language model (LLM) for generating question-answer pairs related to the count of actions within a video.  The prompt instructs the LLM to format the output as JSON, including a question about the number of times an action occurs, multiple choice answers, and the correct answer. The prompt also specifies that the question should be phrased as 'How many...', ensuring consistency in question formatting.
> <details>
> <summary>read the caption</summary>
> Figure 9: Prompt for action count QA generation.
> </details>



![](https://arxiv.org/html/2502.20811/x11.png)

> 🔼 This figure shows the prompt used for generating question-answer pairs related to human attributes in the HAICBench dataset.  The prompt instructs an AI assistant to generate a multiple-choice question-answer pair focusing on the attributes of the human subjects in a video. The AI should use detailed attributes to describe the people in the video instead of using generic labels like 'Subject 1'. The format of the output should be JSON.
> <details>
> <summary>read the caption</summary>
> Figure 10: Prompt for human attribute QA generation.
> </details>



![](https://arxiv.org/html/2502.20811/x12.png)

> 🔼 This figure details the prompt used for evaluating the captioning capabilities of various Multi-modal Large Language Models (MLLMs). The evaluation involves using a given video caption to answer a question about that video.  The prompt provides a caption and asks for the color of the hat worn by a specific person shown in the video, providing four color options as choices.
> <details>
> <summary>read the caption</summary>
> Figure 11: Prompt caption evaluation setting.
> </details>



![](https://arxiv.org/html/2502.20811/x13.png)

> 🔼 This figure displays a comparison of video generation results using two different models: LLaVA-Video and LLaVA-Video-ActionPro.  Both models were given the same text caption as input, describing a woman walking down a street. The generated videos are shown, highlighting that LLaVA-Video-ActionPro produces a video with significantly more detail and visual fidelity regarding the woman's appearance and attire compared to LLaVA-Video, which produces a less detailed and less realistic result.
> <details>
> <summary>read the caption</summary>
> Figure 12: Videos generated by captions from LLaVA-Video and LLaVA-Video-ActionPro of the first sample in MovieGenBench. The main subject in this case is one woman walking along the street. LLaVA-Video-ActionPro provides a more detailed appearance of the woman than LLaVA-Video.
> </details>



![](https://arxiv.org/html/2502.20811/x14.png)

> 🔼 This figure compares video generation results from two different models, LLaVA-Video and LLaVA-Video-ActionPro, using the same caption.  The caption describes a video clip from the MovieGenBench dataset featuring a single, blue animated character. The generated videos illustrate how LLaVA-Video-ActionPro more accurately captures the main subject of the video, while LLaVA-Video fails to correctly identify it, highlighting the improvement in subject identification achieved through the model's improved captioning.
> <details>
> <summary>read the caption</summary>
> Figure 13: Videos generated by captions from LLaVA-Video and LLaVA-Video-ActionPro of the 17th sample in MovieGenBench. The main subject in this case is one blue animated character. LLaVA-Video incorrectly identifies the main subject.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.2.1">Frames</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.3.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.1.1.1">Action</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.2.1.1">Details</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.1.1.1.1">Action</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.1.2.1.1">Sequence</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.6.1">Interaction</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.7.1">Count</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.8.1">Attribute</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.2.2.1">Human Annotated Captions</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.2.2.2">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.3">96.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.4">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.5">94.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.6">95.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.7">95.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2.8">99.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.3.3.1">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20811v1#bib.bib41" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.3.3.2">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.3">41.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.4">29.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.5">28.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.6">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.7">54.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.8">58.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.4.4.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">Hurst et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20811v1#bib.bib19" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.4.4.2">50*</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.3">40.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.4">32.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.5">28.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.6">38.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.7">52.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.8">50.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.5.5.1">VideoLLaMA2-7B <cite class="ltx_cite ltx_citemacro_cite">Cheng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20811v1#bib.bib11" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.5.5.2">64</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5.3">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5.4">11.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5.5">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5.6">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5.7">39.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5.8">24.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.6.6.1">LongVA-7B <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20811v1#bib.bib57" title="">2024a</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.6.6.2">64</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.3">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.4">11.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.5">13.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.6">11.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.7">25.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6.8">20.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.7.7.1">InternVL2-8B <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20811v1#bib.bib10" title="">2024d</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.7.7.2">64</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7.3">29.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7.4">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7.5">18.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7.6">22.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7.7">43.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7.8">41.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.8.8.1">Qwen2VL-7B <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20811v1#bib.bib43" title="">2024a</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.8.8.2">64</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.3">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.4">16.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.8.5.1">21.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.6">21.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.7">44.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8.8">39.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.9.9.1">LLaVA-Video-7B <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20811v1#bib.bib59" title="">2024b</a>)</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T2.1.1.9.9.2">64</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.3">30.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.4">19.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.5">16.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.6">25.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.7">44.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9.8">49.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.1">LLaVA-Video-ActionPro-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.2">64</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.10.3.1">35.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.10.4.1">22.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.5">17.0</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.10.6.1">31.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.10.7.1">53.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.1.10.10.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.10.8.1">54.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of various Multimodal Large Language Models (MLLMs) on the HAICBench dataset when using a caption-based evaluation approach.  Each MLLM generated a caption for each video in the dataset, and then another LLM (Gemini-1.5-Pro) was used to answer questions about the video based solely on the generated caption. This setup isolates the quality of the generated caption as the primary factor determining the accuracy of the video understanding. The table shows the average accuracy across different aspects of human action understanding: frames, average accuracy, action details, action sequence, interaction, count, and attribute.  The asterisk (*) indicates a limitation of the GPT-4o API used in this experiment, that only a maximum of 50 frames per video were processed.  This table demonstrates the ability of different MLLMs to generate effective and descriptive captions, which are crucial for accurate video understanding.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on HAICBench in the caption evaluation setting. We adopted MLLMs to generate video captions, based on which we prompted an LLM to answer video questions. *The GPT-4o API supports a maximum of 50 frames per video.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.1.1.1">Action</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.2.1.1">Details</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the HAICBench evaluation using a standard evaluation setting.  The standard setting directly inputs the video and question into a multi-modal large language model (MLLM) to generate an answer. The table compares the performance of several different MLLMs across five action-related categories: Average, Action Details, Action Sequence, Interaction, and Count.  Performance is measured by accuracy. Note that for GPT-40, the maximum number of frames processed per video was 50.
> <details>
> <summary>read the caption</summary>
> Table 3: Results on HAICBench in the standard evaluation setting. *The GPT-4o API supports a maximum of 50 frames per video.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.1.1.1.1">Action</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.1.2.1.1">Sequence</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance gains achieved by training a large language model (LLM) on a dataset of high-quality human action captions.  The effectiveness of this training is evaluated across four benchmarks: MVBench, PerceptionTest, ActivityNet-QA, and HAICBench. Each benchmark assesses different aspects of video understanding and human action recognition. The table shows that using the high-quality human action captions significantly improves the LLM's performance on all benchmarks, demonstrating the benefit of this data for improving human action understanding.
> <details>
> <summary>read the caption</summary>
> Table 4: The gain from training with our high-quality human action captions is effective across several benchmarks. MVB, PerTest, and ANetQA denotes MVBench, PerceptionTest, and ActivityNet-QA, respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20811/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20811/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}