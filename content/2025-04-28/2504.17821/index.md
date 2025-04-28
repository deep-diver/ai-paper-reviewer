---
title: "VideoVista-CulturalLingo: 360$^\circ$ Horizons-Bridging Cultures, Languages, and Domains in Video Comprehension"
summary: "VideoVista-CulturalLingo: A new benchmark for 360° video understanding across cultures, languages, and domains!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Harbin Institute of Technology, Shenzhen, China",]
showSummary: true
date: 2025-04-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17821 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinyu Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17821" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17821" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17821/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal AI systems have difficulty reasoning and understanding. Existing video evaluations are limited to English and Western cultural contexts. To solve this issue, the paper introduces **VideoVista-CulturalLingo**. It is the first video evaluation benchmark that bridges cultural, linguistic, and domain divides in video understanding. The key areas where this benchmark differs are cultural diversity, multi-linguistics, and broad domain, and it incorporates cultures from China, North America, and Europe.The dataset has questions in Chinese and English, videos from hundreds of human-created domains. 



The paper has 1,389 videos and 3,134 QA pairs, using 24 open-source or proprietary video models for evaluation. The results showed the existing models performed worse on Chinese-centric questions. Current open-source models struggle with temporal understanding. Mainstream models performed well in general science but open-source models struggled in mathematics. The paper also provides an autonomic video annotation framework harnessing the strengths of (M)LLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Existing models struggle with Chinese-centric questions, especially those about Chinese history. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Open-source models have limited temporal understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Mainstream models excel in general science, while open-source models falter in mathematics. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**VideoVista-CulturalLingo** opens doors for LMMs, evaluating comprehension across cultures/languages. It highlights limitations, spurring innovations in spatial-temporal understanding and cultural awareness, vital for creating truly global AI.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17821/x3.png)

> 🔼 This figure shows a sample question from the VideoVista-CulturalLingo benchmark dataset.  The question is presented in both Chinese and English, along with multiple-choice answers.  The video clip relates to Chinese culture, as indicated by the caption. The correct answer is highlighted in yellow to illustrate the benchmark's annotation process.  This example demonstrates how the dataset assesses the ability of multimodal AI systems to comprehend videos that are culturally and linguistically diverse, including the ability to reason about cultural contexts presented within the video.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example of Chinese Culture in VideoVista-CulturalLingo. The correct answer is highlighted in yellow.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="id3.3">
<tr class="ltx_tr" id="id1.1.1">
<td class="ltx_td ltx_align_right" id="id1.1.1.1"><span class="ltx_text" id="id1.1.1.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id1.1.1.1.1.g1" src="x1.png" width="20"/></span></td>
<td class="ltx_td ltx_align_left" id="id1.1.1.2"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://github.com/HITsz-TMG/VideoVista" title="">https://github.com/HITsz-TMG/VideoVista</a></td>
</tr>
<tr class="ltx_tr" id="id2.2.2">
<td class="ltx_td ltx_align_right" id="id2.2.2.1"><span class="ltx_text" id="id2.2.2.1.1" style="position:relative; bottom:-2.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="16" id="id2.2.2.1.1.g1" src="extracted/6383417/logo/videovista.png" width="16"/></span></td>
<td class="ltx_td ltx_align_left" id="id2.2.2.2"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://videovista-culturallingo.github.io/" title="">https://videovista-culturallingo.github.io/</a></td>
</tr>
<tr class="ltx_tr" id="id3.3.3">
<td class="ltx_td ltx_align_right" id="id3.3.3.1"><span class="ltx_text" id="id3.3.3.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id3.3.3.1.1.g1" src="x2.png" width="22"/></span></td>
<td class="ltx_td ltx_align_left" id="id3.3.3.2"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/datasets/Uni-MoE/VideoVista-CulturalLingo" title="">https://huggingface.co/datasets/Uni-MoE/VideoVista-CulturalLingo</a></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares several video comprehension benchmarks across various factors, including the number of videos and clips, average video length, the number of question-answer pairs, annotation methods (manual or automatic), language diversity, cultural diversity, duration variation of videos, and the diversity of video sources.
> <details>
> <summary>read the caption</summary>
> Table 1: The comparison of various benchmarks involves several key aspects: total number of videos (#Videos), number of clips (#Clips), average video duration (Len.), number of QA pairs (#QA Pairs), annotation method (Anno., where M/A indicates manual/automatic annotation), whether the videos span multiple language (M.L.),whether the videos span multiple culture background (M.C.) ,whether the videos span multiple duration levels (M.D.), and if the videos are sourced from diverse open domains (Open.)
> </details>





### In-depth insights


#### Cultural LMM Bias
Cultural LMM bias is a critical area for investigation. LMMs, trained on vast datasets, can inadvertently amplify existing cultural biases, leading to skewed understandings. **Western-centric datasets** dominate pre-training, causing models to struggle with nuanced non-Western contexts, **affecting performance on tasks requiring cultural knowledge**. Such biases can manifest in inaccurate translations, stereotyped representations, and difficulty in tasks requiring cultural sensitivity. Addressing this requires curating **more diverse and balanced datasets**, incorporating various cultural viewpoints, and developing evaluation metrics that specifically test for and mitigate cultural biases. This includes **culturally-aware training** and fine-tuning techniques to ensure fairness.

#### Vista-CulturalLingo
**VideoVista-CulturalLingo** is a benchmark for video AI systems, bridging **cultural**, **linguistic**, and **domain** divides. It uses videos from diverse cultures (China, North America, Europe) and presents questions in Chinese and English. Its scope spans various domains, sourced from human-created content. This focus on diversity addresses limitations in existing benchmarks that are often limited to English and Western cultural contexts, thus promoting more robust and generalizable video AI.

#### Video Auto-Annotation
While the research paper doesn't explicitly have a section titled 'Video Auto-Annotation,' the techniques described strongly imply a novel approach to this area. The **hybrid annotation framework**, leveraging both Large Language Models (LLMs) and human input, is particularly noteworthy. Using models like Qwen2-VL and DeepSeek-R1 to generate initial question-options-answer (QA) pairs allows for rapid dataset creation. This highlights the **potential of LLMs to automate the labeling process**, significantly reducing the manual effort involved in traditional video annotation. Human annotators then refine the LLM-generated content, ensuring quality and accuracy. This combination addresses a key challenge in video understanding: the **creation of large, high-quality datasets** needed to train robust models. The paper's approach demonstrates a scalable and efficient method for generating annotations, bridging the gap between the capabilities of AI and the need for human oversight in complex video analysis.

#### Limited Domain Depth
The limitation of domain depth refers to **the lack of specialized or extensive knowledge** within the scientific questions. This suggests that the scientific assessments are **general and introductory rather than deeply probing niche expertise**. This design choice simplifies annotation, it restricts the benchmark's ability to distinguish performance in specialized scientific understanding. Future iterations could benefit from incorporating expert knowledge to assess more complex, domain-specific reasoning.

#### Spatial-Temp Weakness
Analyzing the potential weakness in spatial-temporal understanding, models might struggle with **long-range dependencies** in videos. Although certain components (e.g., Object Spatial Localization) could function acceptably, LMMs face difficulty when localizing the most logically related segment to the preceding context as the predicted segment (Event Prediction Task), the major performance gaps could be observed within the **Event Localization** task. In general, current video LMMs demonstrate difficulty with temporal information, especially **events happening later in the video**. The performance of model decreases as the video duration increases. This could stem from the models' inability to retain contextual information over extended periods or the **diminishing gradient** problem in very deep neural networks. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17821/x5.png)

> 🔼 This figure illustrates the three stages of the VideoVista-CulturalLingo annotation process.  Stage 1 (Video Collecting & Preprocessing) shows how videos are sourced from various platforms (YouTube, Xiaohongshu, Bilibili), undergo audio extraction and transcription, and are segmented into shorter clips based on audio quality.  Stage 2 (Automatic QA Annotation) details how a hybrid approach is used, combining LLMs (Qwen2-VL, Qwen2.5-7B, DeepSeek-V3, DeepSeek-R1) and human annotators to generate question-answer pairs for several task categories (Event, Culture, Object, and Science). Stage 3 (Human Check & Revision) demonstrates the human quality control step involving review and refinement of the automatically generated questions and answers. The entire process aims to create a high-quality, culturally and linguistically diverse video benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: The three-stage annotation process of VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures/Evaluation_Culture.png)

> 🔼 The bar chart visualizes the performance of different Large Multimodal Models (LMMs) across various cultural backgrounds, comparing their accuracy in answering questions related to Chinese, American, and European cultures.  It demonstrates the models' ability to generalize across different cultural contexts and highlights potential biases in their understanding.
> <details>
> <summary>read the caption</summary>
> (a) Culture-based Evaluation Results.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures/Evaluation_Language.png)

> 🔼 This figure shows the performance of different Large Multimodal Models (LMMs) in processing videos with different languages.  The x-axis represents the LMMs being evaluated, and the y-axis represents the accuracy scores.  Different colored bars show the accuracy of each LMM for videos in English and Chinese. This allows for a direct comparison of model performance across different languages, illustrating any biases or strengths the models exhibit in processing either English or Chinese language content within videos.
> <details>
> <summary>read the caption</summary>
> (b) Language-based Evaluation Results.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures/Evaluation_Duration.png)

> 🔼 This figure shows the performance of different Large Multimodal Models (LMMs) on video comprehension tasks, broken down by the duration of the videos.  It illustrates how model accuracy changes as video length increases from short videos (under 2 minutes) to medium-length (2-10 minutes) and long videos (over 10 minutes).  This helps to understand whether LMMs handle longer videos effectively.
> <details>
> <summary>read the caption</summary>
> (c) Duration-based Evaluation Results.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures/Evaluation_Domain_ytb_crop.png)

> 🔼 Figure 4 presents a detailed analysis of the Large Multimodal Models (LMMs) performance across three key aspects: Culture (Chinese vs. English), Language (Chinese vs. English), and Video Duration (<2 minutes, 2-10 minutes, >10 minutes).  The bar charts visually compare the accuracy scores of various LMMs on different subtasks within the benchmark, highlighting strengths and weaknesses in each category. This allows for a deeper understanding of how well different models handle various cultural nuances, language differences, and varying video lengths.
> <details>
> <summary>read the caption</summary>
> Figure 4: The LMMs performance divided by Culture, Language and Duration. The Duration in (c): <2 minutes (Short), 2-10 minutes (Medium), >10 minutes (Long).
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures/Evaluation_domain_xhs_crop.png)

> 🔼 This figure shows a visualization of the domains represented in the YouTube videos of the VideoVista-CulturalLingo dataset.  The visualization likely uses a radial chart or similar representation to show the relative proportions or frequencies of different video categories or topics found in the dataset.  It provides a visual summary of the dataset's diversity in terms of subject matter, offering insights into the breadth of topics covered by the videos sourced from YouTube.
> <details>
> <summary>read the caption</summary>
> (a) Domains in YouTube
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures/Evaluation_Domain_bilibili_crop.png)

> 🔼 This figure shows the distribution of video domains in the Xiaohongshu dataset used for VideoVista-CulturalLingo.  Each segment represents a different domain, and the size of the segment is proportional to the number of videos in that domain. The chart offers a visualization of the diverse range of topics covered within the Xiaohongshu portion of the VideoVista-CulturalLingo benchmark.  It helps illustrate the breadth of cultural and topical coverage within the dataset.
> <details>
> <summary>read the caption</summary>
> (b) Domains in Xiaohongshu
> </details>



![](https://arxiv.org/html/2504.17821/x6.png)

> 🔼 This figure shows the distribution of video domains from the Bilibili video-sharing platform within the VideoVista-CulturalLingo dataset.  The visualization likely uses a radial chart or similar to represent the variety of video topics.  The size of each segment might correspond to the number of videos belonging to that specific domain, indicating the relative prevalence of each category within Bilibili's contribution to the dataset. The domains themselves would be labeled on or near the segments.
> <details>
> <summary>read the caption</summary>
> (c) Domains in BiliBili
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures/language_category.png)

> 🔼 Figure 5 displays a comparison of Large Multimodal Model (LMM) performance across various video domains sourced from three different platforms: YouTube, Xiaohongshu, and Bilibili.  The figure uses radar charts to visualize the performance of six models (Gemini-2.0-Flash, GPT-4o, Qwen2.5-VL-72B, VideoLLaMA3, InternVideo2.5, MiniCPM-o 2.6) on numerous video domains. For better clarity, only the top 18 most frequent domains are shown in the charts for YouTube and Xiaohongshu, while Bilibili domains with fewer than 10 videos are excluded.  Appendix A.2 provides a complete mapping of the domain abbreviations used in the charts.
> <details>
> <summary>read the caption</summary>
> Figure 5: The LMMs performance divided by domains from 3 video sources: Gemini-2.0-Flash, GPT-4o, Qwen2.5-VL-72B, VideoLLaMA3, InternVideo2.5, MiniCPM-o 2.6. In Figures 5(a) and Figures 5(b), we present only the 18 domains with the highest number of videos. In Figure 5(c), we exclude domains containing fewer than 10 videos. The domains in these figures are represented by abbreviations, as described in Appendix A.2.
> </details>



![](https://arxiv.org/html/2504.17821/x7.png)

> 🔼 This figure showcases two example questions from the VideoVista-CulturalLingo benchmark dataset.  The first question focuses on a Chinese dish, testing the model's ability to identify representative dishes of specific Chinese cuisines.  The second question tests cultural knowledge related to a food item, demonstrating how VideoVista-CulturalLingo incorporates cultural understanding into video comprehension tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Two cases from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures_appendix/example_merge.jpg)

> 🔼 This figure shows a bar chart visualizing the number of questions per subtask, broken down by language (Chinese and English).  It provides a quantitative comparison of the dataset's size and distribution across different question categories for each language.
> <details>
> <summary>read the caption</summary>
> (a) The statistics of 14 subtasks divided by languages.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures_appendix/Evaluation_Science.png)

> 🔼 This figure shows the distribution of video lengths in the VideoVista-CulturalLingo dataset. The x-axis represents the duration of videos in minutes, categorized into bins (e.g., <1 minute, 1-2 minutes, etc.). The y-axis indicates the number of videos falling into each duration bin.  This visualization helps to understand the temporal characteristics of the videos in the dataset, highlighting the prevalence of shorter videos compared to longer ones.
> <details>
> <summary>read the caption</summary>
> (b) The statistics of duration of videos in VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures_appendix/Evaluation_Math.png)

> 🔼 Figure 7 presents a dual-aspect statistical overview of the VideoVista-CulturalLingo dataset. Subfigure (a) provides a quantitative breakdown of the 14 distinct task categories within the dataset, illustrating the number of questions posed in both Chinese and English languages for each task.  This visualization allows for a direct comparison of the dataset's linguistic balance across diverse question types. Subfigure (b) presents a histogram displaying the distribution of video clip durations (measured in minutes) across the entire dataset.  This illustrates the temporal diversity of the videos and helps assess the representation of various video lengths within the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 7: (a) shows the quantity statistics for the 14 task categories under both Chinese and English languages. (b) presents the duration statistics of all video clips in VideoVista-CulturalLingo, measured in minutes.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures_appendix/Evaluation_Frames.png)

> 🔼 This figure shows a horizontal arrangement of eight individual images.  These images are likely frames extracted from a video, possibly to illustrate the input format or preprocessing steps involved in video comprehension task. The combination of multiple frames may suggest the model's ability to handle longer sequences or the usage of sampling techniques to process large volumes of video data efficiently.
> <details>
> <summary>read the caption</summary>
> Figure 8: An example of eight images combined in a horizontal layout.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures_appendix/Evaluation_Audio.png)

> 🔼 The bar chart displays a comparison of the performance of various Large Multimodal Models (LMMs) across four scientific disciplines: Mathematics, Physics, Chemistry, and Computer Science.  It shows the accuracy scores achieved by each model on questions related to these disciplines. The chart likely highlights the relative strengths and weaknesses of different models in tackling scientific reasoning tasks, with a focus on the differences between open-source and proprietary models.
> <details>
> <summary>read the caption</summary>
> (a) Science-based Evaluation Results.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures_appendix/Evaluation_Temporal.png)

> 🔼 This figure presents a detailed breakdown of the performance of various Large Multimodal Models (LMMs) across different mathematical sub-disciplines.  It shows a comparison between open-source and proprietary models, highlighting the performance discrepancies in areas like Calculus (English and Chinese), Linear Algebra (English), and Statistics and Probability (English). The graph likely uses bar charts to visually represent the accuracy scores of each model for each sub-discipline, allowing for a clear comparison of their relative strengths and weaknesses in different mathematical domains.
> <details>
> <summary>read the caption</summary>
> (b) Math-based Evaluation Results.
> </details>



![](https://arxiv.org/html/2504.17821/x8.png)

> 🔼 Figure 9 presents a detailed analysis of model performance on scientific tasks within the VideoVista-CulturalLingo benchmark.  It compares the performance of various Large Multimodal Models (LMMs) across four main scientific disciplines (Math, Physics, Chemistry, Computer Science) and four specialized math sub-disciplines (Calculus (English), Linear Algebra (English), Statistics and Probability (English), and Calculus (Chinese)/Advanced Mathematics).  The results shown are average scores across the four sub-tasks within each discipline/sub-discipline, highlighting strengths and weaknesses of different models in handling various types of scientific questions.
> <details>
> <summary>read the caption</summary>
> Figure 9: The Evaluation results in 4 disciplines and 4 math sub-disciplines. The experimental results in the figure represent the average values of the four scientific sub-tasks. In (a),we have list the four disciplines covered by the scientific videos in VideoVista-CulturalLingo: Math, Physics, Chemistry, and Computer Science ; In (b), we have listed four math sub-disciplines with a larger number of questions: Calculus (English), Linear Algebra (English), Statistics and Probability (English), and Calculus (Chinese)/Advanced Mathematics.
> </details>



![](https://arxiv.org/html/2504.17821/x9.png)

> 🔼 This figure presents the performance of the Qwen2.5-VL-7B model on the VideoVista-CulturalLingo benchmark across four different frame sampling rates: 64, 128, 256, and 300 frames. The x-axis represents the upper bound of frame sampling, while the y-axis shows the overall accuracy across different tasks in the benchmark. The figure demonstrates how the model's performance changes as the number of sampled frames increases, providing insight into the model's sensitivity to video length and the impact of temporal resolution on its accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 10: The Evaluation results divided by frames upper bound of Qwen2.5-VL-7B. We conducted experiments with four sampling methods at frame upper bound of 64, 128, 256, and 300 frames.
> </details>



![](https://arxiv.org/html/2504.17821/x10.png)

> 🔼 This figure presents the performance comparison of the Qwen2.5-VL-7B model on the VideoVista-CulturalLingo benchmark with and without using audio transcripts. The audio transcripts were generated using Whisper-Large-V3. The results are shown for various sub-tasks across different categories, allowing analysis of how much audio information contributes to the model's performance in video understanding.  The x-axis represents the different tasks (Event Description, Event Prediction, Event Sequence, Event Localization, Object Temporal Localization, Object Temporal Sequence, Object Spatial Localization, Chinese Culture, American Culture, European Culture, Summarization and Synthesis, Comparison and Contrast, Application and Procedure, and Scientific Principle) while the y-axis indicates the accuracy scores.
> <details>
> <summary>read the caption</summary>
> Figure 11: The Evaluation results divided by whether input audio transcript into Qwen2.5-VL-7B. The audio transcript is extracted using Whisper-Large-V3.
> </details>



![](https://arxiv.org/html/2504.17821/x11.png)

> 🔼 This figure displays the performance comparison of the Qwen2.5-VL-7B language model on the VideoVista-CulturalLingo benchmark when including or excluding audio transcripts during the evaluation. The audio transcripts were generated using the Whisper-Large-V3 model.  The results are broken down by task (Event, Object, Culture, Science) to show how the inclusion of audio impacts the model's performance on different aspects of video understanding.
> <details>
> <summary>read the caption</summary>
> Figure 12: The Evaluation results divided by whether input audio transcript into Qwen2.5-VL-7B. The audio transcript is extracted using Whisper-Large-V3.
> </details>



![](https://arxiv.org/html/2504.17821/x12.png)

> 🔼 This figure shows the prompt used in the automatic video annotation pipeline for determining whether an audio transcript is noisy or not. The prompt instructs the model to identify noisy audio based on three criteria:  (1) excessive meaningless or worthless information (over 50% of the total), (2) excessive repetition, and (3) brevity with no practical value.  The output is expected in JSON format: {'result': 'noisy' or 'not noisy'}
> <details>
> <summary>read the caption</summary>
> Figure 13: Prompt for Video Processing.
> </details>



![](https://arxiv.org/html/2504.17821/x13.png)

> 🔼 This figure shows the prompt used in the automatic audio annotation pipeline for refining noisy audio transcripts.  The prompt instructs the model to improve the fluency and coherence of the transcript while preserving its original semantics.  Specific instructions are given for handling Chinese homophones and ensuring the final transcript is free of grammatical errors.
> <details>
> <summary>read the caption</summary>
> Figure 14: Prompt for Audio Refine.
> </details>



![](https://arxiv.org/html/2504.17821/extracted/6383417/figures_appendix/Annotator.png)

> 🔼 This figure shows a detailed prompt used for event annotation in the VideoVista-CulturalLingo dataset. The prompt instructs annotators to analyze video clips and audio transcripts to identify and summarize the main event. It emphasizes accuracy, detail, context integration from both audio and video, and objectivity in the summary.  Specific instructions handle cases with unclear events, conflicting video and audio information, and sequences of clips.  The prompt also provides guidance for different types of videos, such as narration-based versus visually-rich videos.
> <details>
> <summary>read the caption</summary>
> Figure 15: Prompt for Event Annotation.
> </details>



![](https://arxiv.org/html/2504.17821/x14.png)

> 🔼 This figure shows the detailed prompt used for generating event description questions, options, and answers in the VideoVista-CulturalLingo dataset.  The prompt instructs the language model to analyze video clips and their corresponding audio transcripts to generate questions that are specific and detailed, with four options (one correct and three plausible incorrect answers).  The prompt emphasizes the importance of accuracy, clarity, diversity among the incorrect options, and avoiding ambiguity. It also addresses how to handle multi-lingual scenarios and provides specific formatting instructions for the model's output.
> <details>
> <summary>read the caption</summary>
> Figure 16: Prompt for Event Description Quetions, Options and Answer Generation.
> </details>



![](https://arxiv.org/html/2504.17821/x15.png)

> 🔼 This figure shows the prompt used for automatically generating questions related to Chinese culture within the VideoVista-CulturalLingo benchmark.  The prompt instructs a large language model to generate questions that require both video content analysis and knowledge of Chinese culture to answer. It emphasizes that questions should indirectly refer to cultural concepts without explicit naming and options should avoid ambiguity or overlap.
> <details>
> <summary>read the caption</summary>
> Figure 17: Prompt for Chinese Culture Quetions, Options and Answer Generation.
> </details>



![](https://arxiv.org/html/2504.17821/x16.png)

> 🔼 This figure shows a detailed prompt used for automatically generating questions and answers related to scientific principles.  The prompt is designed to create questions that assess the understanding of fundamental scientific concepts demonstrated in videos showing chemistry or physics experiments.  It explicitly instructs the model to avoid technical jargon, use general terminology, and include contextual cues. The response format requires four options for each question: a correct answer and three incorrect answers, representing a video comprehension error, a domain knowledge error, and a dual error, respectively.
> <details>
> <summary>read the caption</summary>
> Figure 18: Prompt for Scientific Principle Quetions, Options and Answer Generation.
> </details>



![](https://arxiv.org/html/2504.17821/x17.png)

> 🔼 This figure shows a screenshot of the Gradio interface used for human evaluation of the generated questions.  The interface displays the video clip, the question, its options, and a rating scale for correctness, type relevance, and video relevance.  Annotators enter their name, watch the video, select the correct answer, and assign scores using a slider for each of the three relevance dimensions.  The screenshot also shows the Wikipedia Entry for context, particularly useful for cultural questions.
> <details>
> <summary>read the caption</summary>
> Figure 19: Gradio Interface for scoring.
> </details>



![](https://arxiv.org/html/2504.17821/x18.png)

> 🔼 This figure shows an example question from the VideoVista-CulturalLingo benchmark dataset. The question is in Chinese and asks how a woman folds a piece of paper in the early part of a video. Four multiple-choice options are provided, describing different folding sequences. This illustrates the Event Description task in the benchmark, which focuses on describing the events in the video clips.
> <details>
> <summary>read the caption</summary>
> Figure 20: An Example of Event Description from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x19.png)

> 🔼 This figure shows an example question from the VideoVista-CulturalLingo benchmark dataset's Event Prediction task.  The question presented is in Chinese and asks what the woman in the video will do next after showing chicken feet.  Four multiple-choice options are provided, each describing a different potential action (trying Maotai jelly, braised pork, pork belly gummies, or ending the video). The image displays several video stills from the relevant section of the video.
> <details>
> <summary>read the caption</summary>
> Figure 21: An Example of Event Prediction from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x20.png)

> 🔼 This figure shows a multiple choice question from the VideoVista-CulturalLingo benchmark dataset.  The question tests the model's ability to understand and order a sequence of events presented in a news report. The correct answer requires understanding the temporal relationships between different news segments (a fire in Paris, a school cafeteria renovation, a landslide in China, and a weather update) and arranging them in the correct chronological order as presented by a news anchor.
> <details>
> <summary>read the caption</summary>
> Figure 22: An Example of Event Sequence from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x21.png)

> 🔼 This figure shows an example question from the VideoVista-CulturalLingo benchmark dataset.  The question focuses on event localization, specifically asking at what time a particular event (tasting pizza) begins within the video.  Multiple-choice options with timestamps are provided for the user or model to select the correct answer. This highlights the dataset's capability of testing temporal understanding in videos, in particular the accuracy of models in identifying the precise start time of specific events.
> <details>
> <summary>read the caption</summary>
> Figure 23: An Example of Event Localization from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x22.png)

> 🔼 This figure shows an example question from the VideoVista-CulturalLingo benchmark dataset, specifically focusing on the Object Temporal Localization task.  The question asks the user to identify the timestamp at which a particular object (in this case, a statue of Dr. Julius Kugy) first appears within a video. Four timestamps are provided as options, and a visual representation of video frames helps the user contextualize the event. This task evaluates the model's ability to pinpoint the precise moment an object appears in a video, testing its temporal understanding and localization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 24: An Example of Object Temporal Localization from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x23.png)

> 🔼 This figure shows an example question from the VideoVista-CulturalLingo benchmark dataset, specifically focusing on the 'Object Temporal Sequence' task.  The question asks the user to identify the correct order in which several ingredients (tomato, raw minced meat, white sugar, and soy sauce) appear in a video.  The visual element displays four image frames from the video to aid in answering the question, highlighting the task's reliance on understanding both the visual and temporal sequence of the presented ingredients.
> <details>
> <summary>read the caption</summary>
> Figure 25: An Example of Object Temporal Sequence from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x24.png)

> 🔼 This figure shows an example question from the VideoVista-CulturalLingo benchmark dataset that tests object spatial localization.  The question asks the model to identify the location of a specific object (a silver trophy with red, white, and blue ribbons) within a video frame at a particular time (4 seconds). The correct answer is presented as a bounding box in xyxy format, normalized to the range [0, 1], specifying the coordinates of the object's location within the image.
> <details>
> <summary>read the caption</summary>
> Figure 26: An Example of Object Spatial Localization from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x25.png)

> 🔼 This figure shows an example question from the VideoVista-CulturalLingo benchmark dataset, specifically focusing on the Chinese Culture category.  The image displays a video still showing a dish and a multiple-choice question in Chinese asking about the main regions where that dish is popular. This demonstrates the dataset's ability to assess the understanding of cultural nuances in different regions of China. The correct answer is highlighted.
> <details>
> <summary>read the caption</summary>
> Figure 27: An Example of Chinese Culture from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x26.png)

> 🔼 Figure 28 shows a multiple-choice question from the VideoVista-CulturalLingo benchmark dataset.  The question tests the model's understanding of American culture by asking who directed a particular movie shown in a video clip. This exemplifies the dataset's ability to evaluate multimodal AI systems' cultural knowledge beyond simple visual recognition.
> <details>
> <summary>read the caption</summary>
> Figure 28: An Example of American Culture from VideoVista-CulturalLingo.
> </details>



![](https://arxiv.org/html/2504.17821/x27.png)

> 🔼 This figure shows a multiple-choice question from the VideoVista-CulturalLingo benchmark dataset, focusing on European culture.  The question asks which country a specific beverage is primarily associated with in terms of anti-social behavior.  The video clip associated with the question is briefly shown. The correct answer is highlighted (Scotland, in this case), showcasing how the benchmark assesses cultural understanding within a specific regional context.
> <details>
> <summary>read the caption</summary>
> Figure 29: An Example of European Culture from VideoVista-CulturalLingo.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.1.1.2">
<tr class="ltx_tr" id="S1.1.1.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S1.1.1.2.1.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S1.1.1.2.1.1.1">Category</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S1.1.1.2.1.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S1.1.1.2.1.2.1">Size</span></td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S1.1.1.2.2.1" style="padding:0.5pt 0.0pt;">Task Classes</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S1.1.1.2.2.2" style="padding:0.5pt 0.0pt;">4</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.3.1" style="padding:0.5pt 0.0pt;">Subtask Classes</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.3.2" style="padding:0.5pt 0.0pt;">14</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S1.1.1.2.4.1" style="padding:0.5pt 0.0pt;">Video Sources</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S1.1.1.2.4.2" style="padding:0.5pt 0.0pt;">1,389</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.5.1" style="padding:0.5pt 0.0pt;">Video Clips</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.5.2" style="padding:0.5pt 0.0pt;">2,052</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.6.1" style="padding:0.5pt 0.0pt;">Max Duration</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.6.2" style="padding:0.5pt 0.0pt;">1,877.7</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.7.1" style="padding:0.5pt 0.0pt;">Average Duration</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.7.2" style="padding:0.5pt 0.0pt;">267.5</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S1.1.1.2.8.1" style="padding:0.5pt 0.0pt;">YouTube Video Domains</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S1.1.1.2.8.2" style="padding:0.5pt 0.0pt;">30</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.9.1" style="padding:0.5pt 0.0pt;">RedNote Video Domains</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.9.2" style="padding:0.5pt 0.0pt;">104</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.10.1" style="padding:0.5pt 0.0pt;">BiliBili Video Domains</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.10.2" style="padding:0.5pt 0.0pt;">12</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S1.1.1.2.11.1" style="padding:0.5pt 0.0pt;">Chinese Question Number</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S1.1.1.2.11.2" style="padding:0.5pt 0.0pt;">1,446</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.12.1" style="padding:0.5pt 0.0pt;">English Question Number</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.12.2" style="padding:0.5pt 0.0pt;">1,668</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.13.1" style="padding:0.5pt 0.0pt;">
<span class="ltx_ERROR undefined" id="S1.1.1.2.13.1.1">\hdashline</span>
Chinese Culture QA Number</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.13.2" style="padding:0.5pt 0.0pt;">231</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.14.1" style="padding:0.5pt 0.0pt;">American Culture QA Number</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.14.2" style="padding:0.5pt 0.0pt;">200</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.15.1" style="padding:0.5pt 0.0pt;">European Culture QA Number</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.15.2" style="padding:0.5pt 0.0pt;">200</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S1.1.1.2.16.1" style="padding:0.5pt 0.0pt;">Average Question Length</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S1.1.1.2.16.2" style="padding:0.5pt 0.0pt;">18</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.17.1" style="padding:0.5pt 0.0pt;">Average Option Length</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.17.2" style="padding:0.5pt 0.0pt;">13</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.18.1" style="padding:0.5pt 0.0pt;">Average Choice Number</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.18.2" style="padding:0.5pt 0.0pt;">4</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S1.1.1.2.19.1" style="padding:0.5pt 0.0pt;">
<span class="ltx_ERROR undefined" id="S1.1.1.2.19.1.1">\hdashline</span>
Total Samples</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S1.1.1.2.19.2" style="padding:0.5pt 0.0pt;">3,134</td>
</tr>
<tr class="ltx_tr" id="S1.1.1.2.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S1.1.1.2.20.1" style="padding:0.5pt 0.0pt;">Total Questions</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="S1.1.1.2.20.2" style="padding:0.5pt 0.0pt;">3,134</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive evaluation of various Large Multimodal Models (LMMs) on the VideoVista-CulturalLingo benchmark.  The table shows the LMM used, the frame sampling strategy (number of frames or frames per second), and the overall performance score. It also breaks down the performance into four specific tasks: Event, Object, Culture, and Science.  Different frame sampling methods are indicated using a specific notation (e.g., 16f for 16 frames, 1fps(64) for 1 frame per second with a maximum of 64 frames).  The highest scores for each task are highlighted in bold, and the highest scores among the open-source 7B/8B video LMMs are underlined.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation results on VideoVista-CulturalLingo benchmark. The large language model used by LMMs (LLM), frames sample strategy (Frames), overall evaluation scores (Overall), evaluation scores in Event Task(Event), evaluation scores in Object Task (Object), evaluation scores in Culture Task (Culture), evaluation scores in Science Task (Science). -[N𝑁Nitalic_Nf] indicates this LMM task N𝑁Nitalic_N frames uniformly sampled from a video as input. -[N𝑁Nitalic_Nfps(M𝑀Mitalic_M)] indicates this LMM uses N𝑁Nitalic_N frames per second uniformly sampled from a video as input, with a max frames number M𝑀Mitalic_M. We have highlighted the highest results in each tasks using bold. Meanwhile, the highest results within the 7B/8B open-source Video LMMs are highlighted with an underline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Benchmarks</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T1.1.1.1.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">#Videos</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T1.1.1.1.3" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">#Clips</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T1.1.1.1.4" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">Len.(s)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.1">#QA Pairs</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.6" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.6.1">Anno.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.7.1">M.L.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.8.1">M.C</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.9.1">M.D</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.10.1">Open.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.1.1.2.1" style="padding:0.5pt 0.0pt;">MSRVTT-QA <cite class="ltx_cite ltx_citemacro_cite">Xu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib35" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.1.2.2" style="padding:0.5pt 0.0pt;">2,990</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.1.2.3" style="padding:0.5pt 0.0pt;">2,990</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.1.2.4" style="padding:0.5pt 0.0pt;">15.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.2.5" style="padding:0.5pt 0.0pt;">72,821</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.2.6" style="padding:0.5pt 0.0pt;">A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.2.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.2.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.2.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.2.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.2.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.2.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.2.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.2.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.3.1" style="padding:0.5pt 0.0pt;">MSVD-QA <cite class="ltx_cite ltx_citemacro_cite">Xu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib35" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.3.2" style="padding:0.5pt 0.0pt;">504</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.3.3" style="padding:0.5pt 0.0pt;">504</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.3.4" style="padding:0.5pt 0.0pt;">9.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.5" style="padding:0.5pt 0.0pt;">13,157</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.6" style="padding:0.5pt 0.0pt;">A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.4.1" style="padding:0.5pt 0.0pt;">TGIF-QA <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib16" title="">2016</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.4.2" style="padding:0.5pt 0.0pt;">9,575</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.4.3" style="padding:0.5pt 0.0pt;">9,575</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.4.4" style="padding:0.5pt 0.0pt;">3.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.4.5" style="padding:0.5pt 0.0pt;">8,506</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.4.6" style="padding:0.5pt 0.0pt;">A&amp;M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.4.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.4.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.4.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.4.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.5.1" style="padding:0.5pt 0.0pt;">ActivityNet-QA <cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib39" title="">2019</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.5.2" style="padding:0.5pt 0.0pt;">800</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.5.3" style="padding:0.5pt 0.0pt;">800</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.5.4" style="padding:0.5pt 0.0pt;">111.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.5.5" style="padding:0.5pt 0.0pt;">8,000</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.5.6" style="padding:0.5pt 0.0pt;">M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.5.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.5.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.5.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.5.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.10.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.6.1" style="padding:0.5pt 0.0pt;">TVQA <cite class="ltx_cite ltx_citemacro_cite">Lei et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib12" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.6.2" style="padding:0.5pt 0.0pt;">2,179</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.6.3" style="padding:0.5pt 0.0pt;">15,253</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.6.4" style="padding:0.5pt 0.0pt;">11.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.6.5" style="padding:0.5pt 0.0pt;">15,253</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.6.6" style="padding:0.5pt 0.0pt;">M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.6.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.6.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.6.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.6.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.10.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.7.1" style="padding:0.5pt 0.0pt;">NExT-QA <cite class="ltx_cite ltx_citemacro_cite">Xiao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib34" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.7.2" style="padding:0.5pt 0.0pt;">1,000</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.7.3" style="padding:0.5pt 0.0pt;">1,000</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.7.4" style="padding:0.5pt 0.0pt;">39.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.7.5" style="padding:0.5pt 0.0pt;">8,564</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.7.6" style="padding:0.5pt 0.0pt;">A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.7.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.7.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.7.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.7.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.1.1.8.1" style="padding:0.5pt 0.0pt;">MVBench <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib14" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.1.8.2" style="padding:0.5pt 0.0pt;">3,641</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.1.8.3" style="padding:0.5pt 0.0pt;">3,641</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.1.8.4" style="padding:0.5pt 0.0pt;">16.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.8.5" style="padding:0.5pt 0.0pt;">4,000</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.8.6" style="padding:0.5pt 0.0pt;">A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.8.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.8.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.8.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.8.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.8.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.8.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.1.8.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.8.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.9.1" style="padding:0.5pt 0.0pt;">EgoSchema <cite class="ltx_cite ltx_citemacro_cite">Mangalam et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.9.2" style="padding:0.5pt 0.0pt;">5,063</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.9.3" style="padding:0.5pt 0.0pt;">5,063</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.9.4" style="padding:0.5pt 0.0pt;">180.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.9.5" style="padding:0.5pt 0.0pt;">5,063</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.9.6" style="padding:0.5pt 0.0pt;">A&amp;M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.9.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.9.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.9.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.9.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.9.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.9.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.9.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.9.10.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.10.1" style="padding:0.5pt 0.0pt;">TempCompass <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib24" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.10.2" style="padding:0.5pt 0.0pt;">410</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.10.3" style="padding:0.5pt 0.0pt;">500</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.10.4" style="padding:0.5pt 0.0pt;">11.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.10.5" style="padding:0.5pt 0.0pt;">7,540</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.10.6" style="padding:0.5pt 0.0pt;">A&amp;M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.10.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.10.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.10.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.9.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.10.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.10.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.11.1" style="padding:0.5pt 0.0pt;">Video-MME <cite class="ltx_cite ltx_citemacro_cite">Fu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib9" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.11.2" style="padding:0.5pt 0.0pt;">900</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.11.3" style="padding:0.5pt 0.0pt;">900</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.11.4" style="padding:0.5pt 0.0pt;">1024.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.11.5" style="padding:0.5pt 0.0pt;">2,700</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.11.6" style="padding:0.5pt 0.0pt;">M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.11.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.11.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.11.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.11.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.11.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.11.9.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.11.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.11.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.12.1" style="padding:0.5pt 0.0pt;">VideoVista <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib17" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.12.2" style="padding:0.5pt 0.0pt;">894</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.12.3" style="padding:0.5pt 0.0pt;">3,402</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.12.4" style="padding:0.5pt 0.0pt;">131.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.12.5" style="padding:0.5pt 0.0pt;">24,906</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.12.6" style="padding:0.5pt 0.0pt;">A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.12.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.12.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.12.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.12.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.12.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.12.9.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.12.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.12.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.13.1" style="padding:0.5pt 0.0pt;">MLVU <cite class="ltx_cite ltx_citemacro_cite">Zhou et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib44" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.13.2" style="padding:0.5pt 0.0pt;">1,323</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.13.3" style="padding:0.5pt 0.0pt;">1,323</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.13.4" style="padding:0.5pt 0.0pt;">720</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.13.5" style="padding:0.5pt 0.0pt;">2,593</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.13.6" style="padding:0.5pt 0.0pt;">A&amp;M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.13.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.13.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.13.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.13.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.13.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.13.9.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.13.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.13.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.14.1" style="padding:0.5pt 0.0pt;">LVBench <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib31" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.14.2" style="padding:0.5pt 0.0pt;">500</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.14.3" style="padding:0.5pt 0.0pt;">500</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.14.4" style="padding:0.5pt 0.0pt;">4,101.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.14.5" style="padding:0.5pt 0.0pt;">1,549</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.14.6" style="padding:0.5pt 0.0pt;">M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.14.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.14.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.14.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.14.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.14.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.14.9.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.14.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.14.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.1.1.15.1" style="padding:0.5pt 0.0pt;">MMBench-Video <cite class="ltx_cite ltx_citemacro_cite">Fang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib8" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.15.2" style="padding:0.5pt 0.0pt;">600</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.15.3" style="padding:0.5pt 0.0pt;">600</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.1.1.15.4" style="padding:0.5pt 0.0pt;">165.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.15.5" style="padding:0.5pt 0.0pt;">1,998</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.15.6" style="padding:0.5pt 0.0pt;">M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.15.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.15.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.15.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.15.8.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.15.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.15.9.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T1.1.1.15.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.15.10.1" style="color:#0000FF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.16.1.1">VideoVista-CulturalLingo</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.2" style="padding:0.5pt 0.0pt;">1,389</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.3" style="padding:0.5pt 0.0pt;">2,052</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.4" style="padding:0.5pt 0.0pt;">267.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.5" style="padding:0.5pt 0.0pt;">3,134</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.6" style="padding:0.5pt 0.0pt;">A&amp;M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.7" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.7.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.8" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.8.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.9" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.9.1" style="color:#0000FF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.1.16.10" style="padding:0.5pt 0.0pt;"><span class="ltx_text" id="S3.T1.1.1.16.10.1" style="color:#0000FF;">✔</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of six leading Large Multimodal Models (LMMs) across fourteen distinct video comprehension tasks.  These tasks are categorized into four main areas: Event, Object, Culture, and Science.  Each area is further divided into subtasks that assess various aspects of video understanding, such as event description, temporal localization, and cultural understanding.  The abbreviations used in the table clarify the specific subtasks evaluated, providing a comprehensive view of the models' strengths and weaknesses in various aspects of video comprehension.
> <details>
> <summary>read the caption</summary>
> Table 3: Detailed Evaluation results on VideoVista-CulturalLingo benchmark. We only showcase 6 mainstream LMMs. Abbreviations used in the table: Event Description (ED), Event Prediction (EP), Event Sequence (ES), Event Localization (EL), Object Temporal Localization (OTL), Object Temporal Sequence (OTS), Object Spatial Localization (OSL), Chinese Culture (CC), American Culture (AC), European Culture (EC), Summarization & Synthesis (SS), Comparison & Contrast (COM), Application & Procedure (AP), Scientific Principle (SP). The full evaluation results are provided in the Appendix C.5, and an introduction to tasks is presented in Appendix E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.13.1">
<tr class="ltx_tr" id="S3.T2.13.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.1.1" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.1.2" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.2.1">LLM</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.1.3" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.3.1">Frames</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.1.4" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.4.1">Overall</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.1.5" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.5.1">Event</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.1.6" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.6.1">Object</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.1.7" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.7.1">Culture</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.13.1.1.8" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.1.8.1">Science</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.2" style="background-color:#A9D0D5;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="8" id="S3.T2.13.1.2.1" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.13.1.2.1.1" style="background-color:#A9D0D5;">Open-source Video LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.3.1" style="padding:1.5pt 0.0pt;">ShareGPT4Video <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib1" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.3.2" style="padding:1.5pt 0.0pt;">Vicuna-7B-v1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.3.3" style="padding:1.5pt 0.0pt;">16f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.3.4" style="padding:1.5pt 0.0pt;">25.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.3.5" style="padding:1.5pt 0.0pt;">23.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.3.6" style="padding:1.5pt 0.0pt;">18.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.3.7" style="padding:1.5pt 0.0pt;">31.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.13.1.3.8" style="padding:1.5pt 0.0pt;">34.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.4.1" style="padding:1.5pt 0.0pt;">VideoChat2-Mistral <cite class="ltx_cite ltx_citemacro_cite">KunChang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib11" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.4.2" style="padding:1.5pt 0.0pt;">Mistral-7B-Instruct-v0.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.4.3" style="padding:1.5pt 0.0pt;">16f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.4.4" style="padding:1.5pt 0.0pt;">29.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.4.5" style="padding:1.5pt 0.0pt;">27.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.4.6" style="padding:1.5pt 0.0pt;">25.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.4.7" style="padding:1.5pt 0.0pt;">34.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.4.8" style="padding:1.5pt 0.0pt;">33.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.5.1" style="padding:1.5pt 0.0pt;">Video-LLaVA <cite class="ltx_cite ltx_citemacro_cite">Lin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib20" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.5.2" style="padding:1.5pt 0.0pt;">Vicuna-7B-v1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.5.3" style="padding:1.5pt 0.0pt;">8f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.5.4" style="padding:1.5pt 0.0pt;">38.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.5.5" style="padding:1.5pt 0.0pt;">42.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.5.6" style="padding:1.5pt 0.0pt;">34.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.5.7" style="padding:1.5pt 0.0pt;">34.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.5.8" style="padding:1.5pt 0.0pt;">41.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.6.1" style="padding:1.5pt 0.0pt;">VideoLLaMA2 <cite class="ltx_cite ltx_citemacro_cite">Cheng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib4" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.6.2" style="padding:1.5pt 0.0pt;">Mistral-7B-Instruct-v0.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.6.3" style="padding:1.5pt 0.0pt;">32f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.6.4" style="padding:1.5pt 0.0pt;">31.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.6.5" style="padding:1.5pt 0.0pt;">33.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.6.6" style="padding:1.5pt 0.0pt;">23.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.6.7" style="padding:1.5pt 0.0pt;">34.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.6.8" style="padding:1.5pt 0.0pt;">36.6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.7.1" style="padding:1.5pt 0.0pt;">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib13" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.7.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.7.3" style="padding:1.5pt 0.0pt;">32f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.7.4" style="padding:1.5pt 0.0pt;">41.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.7.5" style="padding:1.5pt 0.0pt;">43.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.7.6" style="padding:1.5pt 0.0pt;">33.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.7.7" style="padding:1.5pt 0.0pt;">38.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.7.8" style="padding:1.5pt 0.0pt;">53.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.8.1" style="padding:1.5pt 0.0pt;">MiniCPM-V 2.6 <cite class="ltx_cite ltx_citemacro_cite">Yao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib37" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.8.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.8.3" style="padding:1.5pt 0.0pt;">1fps(64)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.8.4" style="padding:1.5pt 0.0pt;">42.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.8.5" style="padding:1.5pt 0.0pt;">44.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.8.6" style="padding:1.5pt 0.0pt;">24.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.8.7" style="padding:1.5pt 0.0pt;">49.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.8.8" style="padding:1.5pt 0.0pt;">62.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.9.1" style="padding:1.5pt 0.0pt;">mPLUG-Owl3 <cite class="ltx_cite ltx_citemacro_cite">Ye et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib38" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.9.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.9.3" style="padding:1.5pt 0.0pt;">1fps(128)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.9.4" style="padding:1.5pt 0.0pt;">49.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.9.5" style="padding:1.5pt 0.0pt;">54.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.9.6" style="padding:1.5pt 0.0pt;">41.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.9.7" style="padding:1.5pt 0.0pt;">45.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.9.8" style="padding:1.5pt 0.0pt;">60.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.10.1" style="padding:1.5pt 0.0pt;">Oryx-1.5 <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib25" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.10.2" style="padding:1.5pt 0.0pt;">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.10.3" style="padding:1.5pt 0.0pt;">128f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.10.4" style="padding:1.5pt 0.0pt;">41.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.10.5" style="padding:1.5pt 0.0pt;">43.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.10.6" style="padding:1.5pt 0.0pt;">32.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.10.7" style="padding:1.5pt 0.0pt;">37.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.10.8" style="padding:1.5pt 0.0pt;">55.8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.11.1" style="padding:1.5pt 0.0pt;">LLaVA-Video <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib43" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.11.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.11.3" style="padding:1.5pt 0.0pt;">1fps(64)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.11.4" style="padding:1.5pt 0.0pt;">51.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.11.5" style="padding:1.5pt 0.0pt;">57.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.11.6" style="padding:1.5pt 0.0pt;">39.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.11.7" style="padding:1.5pt 0.0pt;">48.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.11.8" style="padding:1.5pt 0.0pt;">60.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.12.1" style="padding:1.5pt 0.0pt;">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib30" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.12.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.12.3" style="padding:1.5pt 0.0pt;">1fps(300)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.12.4" style="padding:1.5pt 0.0pt;">49.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.12.5" style="padding:1.5pt 0.0pt;">50.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.12.6" style="padding:1.5pt 0.0pt;">33.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.12.7" style="padding:1.5pt 0.0pt;">54.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.12.8" style="padding:1.5pt 0.0pt;">68.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.13.1" style="padding:1.5pt 0.0pt;">InternVL2.5 <cite class="ltx_cite ltx_citemacro_cite">Chen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib3" title="">2024c</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.13.2" style="padding:1.5pt 0.0pt;">Internlm2.5-7b-Chat</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.13.3" style="padding:1.5pt 0.0pt;">64f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.13.4" style="padding:1.5pt 0.0pt;">52.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.13.5" style="padding:1.5pt 0.0pt;">56.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.13.6" style="padding:1.5pt 0.0pt;">35.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.13.7" style="padding:1.5pt 0.0pt;">56.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.13.8" style="padding:1.5pt 0.0pt;">65.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.14.1" style="padding:1.5pt 0.0pt;">MiniCPM-o 2.6 <cite class="ltx_cite ltx_citemacro_cite">Yao et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib37" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.14.2" style="padding:1.5pt 0.0pt;">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.14.3" style="padding:1.5pt 0.0pt;">1fps(64)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.14.4" style="padding:1.5pt 0.0pt;">49.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.14.5" style="padding:1.5pt 0.0pt;">52.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.14.6" style="padding:1.5pt 0.0pt;">28.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.14.7" style="padding:1.5pt 0.0pt;">55.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.14.8" style="padding:1.5pt 0.0pt;">67.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.15.1" style="padding:1.5pt 0.0pt;">TPO <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib15" title="">2025a</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.15.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.15.3" style="padding:1.5pt 0.0pt;">1fps(96)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.15.4" style="padding:1.5pt 0.0pt;">50.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.15.5" style="padding:1.5pt 0.0pt;">57.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.15.6" style="padding:1.5pt 0.0pt;">37.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.15.7" style="padding:1.5pt 0.0pt;">49.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.15.8" style="padding:1.5pt 0.0pt;">60.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.16.1" style="padding:1.5pt 0.0pt;">InternVideo2.5 <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib32" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.16.2" style="padding:1.5pt 0.0pt;">Internlm2.5-7b-Chat</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.16.3" style="padding:1.5pt 0.0pt;">1fps(512)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.16.4" style="padding:1.5pt 0.0pt;">52.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.16.5" style="padding:1.5pt 0.0pt;">52.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.16.6" style="padding:1.5pt 0.0pt;">38.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.16.7" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.13.1.16.7.1">58.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.16.8" style="padding:1.5pt 0.0pt;">65.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.17.1" style="padding:1.5pt 0.0pt;">VideoLLaMA3  <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib41" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.17.2" style="padding:1.5pt 0.0pt;">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.17.3" style="padding:1.5pt 0.0pt;">1fps(180)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.17.4" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.13.1.17.4.1">60.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.17.5" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.13.1.17.5.1">58.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.17.6" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.13.1.17.6.1">66.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.17.7" style="padding:1.5pt 0.0pt;">53.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.17.8" style="padding:1.5pt 0.0pt;">64.4</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.18.1" style="padding:1.5pt 0.0pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">Team (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib29" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.18.2" style="padding:1.5pt 0.0pt;">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.18.3" style="padding:1.5pt 0.0pt;">1fps(300)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.18.4" style="padding:1.5pt 0.0pt;">54.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.18.5" style="padding:1.5pt 0.0pt;">56.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.18.6" style="padding:1.5pt 0.0pt;">38.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.18.7" style="padding:1.5pt 0.0pt;">55.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.18.8" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.13.1.18.8.1">73.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.19.1" style="padding:1.5pt 0.0pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">Team (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib29" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.19.2" style="padding:1.5pt 0.0pt;">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.19.3" style="padding:1.5pt 0.0pt;">1fps(300)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.19.4" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.19.4.1">61.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.19.5" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.19.5.1">61.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.19.6" style="padding:1.5pt 0.0pt;">40.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.19.7" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.19.7.1">71.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.19.8" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.19.8.1">83.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.20" style="background-color:#D4E3EC;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="8" id="S3.T2.13.1.20.1" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.13.1.20.1.1" style="background-color:#D4E3EC;">Open-source Image LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.21.1" style="padding:1.5pt 0.0pt;">VILA1.5-13B <cite class="ltx_cite ltx_citemacro_cite">Lin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib21" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.21.2" style="padding:1.5pt 0.0pt;">Vicuna-13B-v1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.21.3" style="padding:1.5pt 0.0pt;">1f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.21.4" style="padding:1.5pt 0.0pt;">33.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.21.5" style="padding:1.5pt 0.0pt;">33.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.21.6" style="padding:1.5pt 0.0pt;">29.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.21.7" style="padding:1.5pt 0.0pt;">33.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.13.1.21.8" style="padding:1.5pt 0.0pt;">39.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.22.1" style="padding:1.5pt 0.0pt;">VILA1.5-13B <cite class="ltx_cite ltx_citemacro_cite">Lin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib21" title="">2023b</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.22.2" style="padding:1.5pt 0.0pt;">Vicuna-13B-v1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.22.3" style="padding:1.5pt 0.0pt;">8f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.22.4" style="padding:1.5pt 0.0pt;">36.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.22.5" style="padding:1.5pt 0.0pt;">38.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.22.6" style="padding:1.5pt 0.0pt;">31.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.22.7" style="padding:1.5pt 0.0pt;">38.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.22.8" style="padding:1.5pt 0.0pt;">41.9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.23.1" style="padding:1.5pt 0.0pt;">Molmo 7B-D <cite class="ltx_cite ltx_citemacro_cite">Deitke et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.23.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.23.3" style="padding:1.5pt 0.0pt;">1f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.23.4" style="padding:1.5pt 0.0pt;">38.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.23.5" style="padding:1.5pt 0.0pt;">44.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.23.6" style="padding:1.5pt 0.0pt;">25.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.23.7" style="padding:1.5pt 0.0pt;">39.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.23.8" style="padding:1.5pt 0.0pt;">46.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.24.1" style="padding:1.5pt 0.0pt;">Molmo 7B-D <cite class="ltx_cite ltx_citemacro_cite">Deitke et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib7" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.24.2" style="padding:1.5pt 0.0pt;">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.24.3" style="padding:1.5pt 0.0pt;">8f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.24.4" style="padding:1.5pt 0.0pt;">40.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.24.5" style="padding:1.5pt 0.0pt;">44.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.24.6" style="padding:1.5pt 0.0pt;">30.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.24.7" style="padding:1.5pt 0.0pt;">41.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.24.8" style="padding:1.5pt 0.0pt;">48.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.25.1" style="padding:1.5pt 0.0pt;">DeepSeek2-VL <cite class="ltx_cite ltx_citemacro_cite">Wu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib33" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.25.2" style="padding:1.5pt 0.0pt;">DeepSeekMoE-27B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.25.3" style="padding:1.5pt 0.0pt;">1f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.25.4" style="padding:1.5pt 0.0pt;">40.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.25.5" style="padding:1.5pt 0.0pt;">44.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.25.6" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.25.6.1">32.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.25.7" style="padding:1.5pt 0.0pt;">39.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.25.8" style="padding:1.5pt 0.0pt;">50.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.26.1" style="padding:1.5pt 0.0pt;">DeepSeek2-VL <cite class="ltx_cite ltx_citemacro_cite">Wu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.17821v1#bib.bib33" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.26.2" style="padding:1.5pt 0.0pt;">DeepSeekMoE-27B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.26.3" style="padding:1.5pt 0.0pt;">8f</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.26.4" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.26.4.1">42.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.26.5" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.26.5.1">47.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.26.6" style="padding:1.5pt 0.0pt;">27.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.26.7" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.26.7.1">44.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.26.8" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.26.8.1">57.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.27" style="background-color:#8FB8A1;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="8" id="S3.T2.13.1.27.1" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.13.1.27.1.1" style="background-color:#8FB8A1;">Proprietary LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.28.1" style="padding:1.5pt 0.0pt;">GPT-4o-2024-11-20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.13.1.28.2" style="padding:1.5pt 0.0pt;">GPT-4o</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.28.3" style="padding:1.5pt 0.0pt;">1fps(128)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.28.4" style="padding:1.5pt 0.0pt;">56.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.28.5" style="padding:1.5pt 0.0pt;">53.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.28.6" style="padding:1.5pt 0.0pt;">38.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.13.1.28.7" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.28.7.1">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.13.1.28.8" style="padding:1.5pt 0.0pt;">78.3</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.29.1" style="padding:1.5pt 0.0pt;">Gemini-1.5-Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.29.2" style="padding:1.5pt 0.0pt;">Gemini-1.5-Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.29.3" style="padding:1.5pt 0.0pt;">1fps</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.29.4" style="padding:1.5pt 0.0pt;">69.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.29.5" style="padding:1.5pt 0.0pt;">70.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.29.6" style="padding:1.5pt 0.0pt;">65.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.29.7" style="padding:1.5pt 0.0pt;">59.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.29.8" style="padding:1.5pt 0.0pt;">84.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.30.1" style="padding:1.5pt 0.0pt;">Gemini-2.0-Flash-Lite</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T2.13.1.30.2" style="padding:1.5pt 0.0pt;">Gemini-2.0-Flash-Lite</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.30.3" style="padding:1.5pt 0.0pt;">1fps</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.30.4" style="padding:1.5pt 0.0pt;">70.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.30.5" style="padding:1.5pt 0.0pt;">63.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.30.6" style="padding:1.5pt 0.0pt;">71.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T2.13.1.30.7" style="padding:1.5pt 0.0pt;">63.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T2.13.1.30.8" style="padding:1.5pt 0.0pt;">82.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.1.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="S3.T2.13.1.31.1" style="padding:1.5pt 0.0pt;">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="S3.T2.13.1.31.2" style="padding:1.5pt 0.0pt;">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.13.1.31.3" style="padding:1.5pt 0.0pt;">1fps</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.13.1.31.4" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.31.4.1">76.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.13.1.31.5" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.31.5.1">74.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.13.1.31.6" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.31.6.1">77.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.13.1.31.7" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.31.7.1">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T2.13.1.31.8" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.13.1.31.8.1">87.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 lists abbreviations for various video domains shown in Figure 5 of the paper.  These domains are categorized by their source video website (YouTube, Xiaohongshu, Bilibili) and cover a range of topics, from news and politics to cooking and travel.  The Chinese domains, originally presented in Chinese, were translated into English using the GPT-40 language model.
> <details>
> <summary>read the caption</summary>
> Table 4: Abbreviations of domains from different video websites in Figure 5. The Chinese domains have been translated into English using GPT-4o.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.1.1" rowspan="2" style="padding-bottom:1.0pt;padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S4.T3.1.1.1.2" style="padding-bottom:1.0pt;padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Event</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S4.T3.1.1.1.3" style="padding-bottom:1.0pt;padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Object</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S4.T3.1.1.1.4" style="padding-bottom:1.0pt;padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">Culture</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="4" id="S4.T3.1.1.1.5" style="padding-bottom:1.0pt;padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">Science</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1" style="padding:1.5pt 0.0pt;">ED</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2" style="padding:1.5pt 0.0pt;">EP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3" style="padding:1.5pt 0.0pt;">ES</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.4" style="padding:1.5pt 0.0pt;">EL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.5" style="padding:1.5pt 0.0pt;">OTL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.6" style="padding:1.5pt 0.0pt;">OTS</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.7" style="padding:1.5pt 0.0pt;">OSL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.8" style="padding:1.5pt 0.0pt;">CC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.9" style="padding:1.5pt 0.0pt;">AC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.10" style="padding:1.5pt 0.0pt;">EC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.11" style="padding:1.5pt 0.0pt;">SS</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.12" style="padding:1.5pt 0.0pt;">COM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.13" style="padding:1.5pt 0.0pt;">AP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.2.14" style="padding:1.5pt 0.0pt;">SP</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.3.1" style="padding:1.5pt 0.0pt;">MiniCPM-o 2.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.2" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.1">83.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3" style="padding:1.5pt 0.0pt;">55.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.4" style="padding:1.5pt 0.0pt;">53.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.3.5" style="padding:1.5pt 0.0pt;">35.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.6" style="padding:1.5pt 0.0pt;">20.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.7" style="padding:1.5pt 0.0pt;">52.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.3.8" style="padding:1.5pt 0.0pt;">35.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.9" style="padding:1.5pt 0.0pt;">48.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.10" style="padding:1.5pt 0.0pt;">56.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.3.11" style="padding:1.5pt 0.0pt;">63.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.12" style="padding:1.5pt 0.0pt;">72.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.13" style="padding:1.5pt 0.0pt;">61.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.14" style="padding:1.5pt 0.0pt;">69.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.3.15" style="padding:1.5pt 0.0pt;">52.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.1.1.4.1" style="padding:1.5pt 0.0pt;">InternVideo2.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.2" style="padding:1.5pt 0.0pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.3" style="padding:1.5pt 0.0pt;">52.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.4" style="padding:1.5pt 0.0pt;">60.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.4.5" style="padding:1.5pt 0.0pt;">33.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.6" style="padding:1.5pt 0.0pt;">37.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.7" style="padding:1.5pt 0.0pt;">61.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.4.8" style="padding:1.5pt 0.0pt;">31.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.9" style="padding:1.5pt 0.0pt;">53.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.10" style="padding:1.5pt 0.0pt;">56.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.4.11" style="padding:1.5pt 0.0pt;">65.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.12" style="padding:1.5pt 0.0pt;">72.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.13" style="padding:1.5pt 0.0pt;">61.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.14" style="padding:1.5pt 0.0pt;">64.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.4.15" style="padding:1.5pt 0.0pt;">54.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.1.1.5.1" style="padding:1.5pt 0.0pt;">VideoLLaMA3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.2" style="padding:1.5pt 0.0pt;">77.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.3" style="padding:1.5pt 0.0pt;">57.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.4" style="padding:1.5pt 0.0pt;">61.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.5.5" style="padding:1.5pt 0.0pt;">45.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.6" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.6.1">72.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.7" style="padding:1.5pt 0.0pt;">64.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.5.8" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.8.1">56.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.9" style="padding:1.5pt 0.0pt;">45.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.10" style="padding:1.5pt 0.0pt;">55.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.5.11" style="padding:1.5pt 0.0pt;">59.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.12" style="padding:1.5pt 0.0pt;">70.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.13" style="padding:1.5pt 0.0pt;">54.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.14" style="padding:1.5pt 0.0pt;">64.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.5.15" style="padding:1.5pt 0.0pt;">55.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T3.1.1.6.1" style="padding:1.5pt 0.0pt;">Qwen2.5-VL-72B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.2" style="padding:1.5pt 0.0pt;">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.3" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.3.1">60.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.4" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.4.1">78.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.6.5" style="padding:1.5pt 0.0pt;">42.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.6" style="padding:1.5pt 0.0pt;">31.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.7" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.7.1">67.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.6.8" style="padding:1.5pt 0.0pt;">49.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.9" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.9.1">65.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.10" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.10.1">67.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T3.1.1.6.11" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.11.1">80.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.12" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.12.1">86.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.13" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.13.1">85.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.14" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.14.1">79.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.1.1.6.15" style="padding:1.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.15.1">79.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.7.1" style="padding:1.5pt 0.0pt;">GPT-4o</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.2" style="padding:1.5pt 0.0pt;">86.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.3" style="padding:1.5pt 0.0pt;">47.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.4" style="padding:1.5pt 0.0pt;">70.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.7.5" style="padding:1.5pt 0.0pt;">28.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.6" style="padding:1.5pt 0.0pt;">29.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.7" style="padding:1.5pt 0.0pt;">61.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.7.8" style="padding:1.5pt 0.0pt;">46.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.9" style="padding:1.5pt 0.0pt;">57.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.10" style="padding:1.5pt 0.0pt;">71.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.7.11" style="padding:1.5pt 0.0pt;">76.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.12" style="padding:1.5pt 0.0pt;">81.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.13" style="padding:1.5pt 0.0pt;">77.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.14" style="padding:1.5pt 0.0pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.1.1.7.15" style="padding:1.5pt 0.0pt;">65.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="S4.T3.1.1.8.1" style="padding:1.5pt 0.0pt;">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.2" style="padding:1.5pt 0.0pt;">92.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.3" style="padding:1.5pt 0.0pt;">51.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.4" style="padding:1.5pt 0.0pt;">73.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.8.5" style="padding:1.5pt 0.0pt;">70.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.6" style="padding:1.5pt 0.0pt;">87.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.7" style="padding:1.5pt 0.0pt;">74.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.8.8" style="padding:1.5pt 0.0pt;">59.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.9" style="padding:1.5pt 0.0pt;">62.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.10" style="padding:1.5pt 0.0pt;">64.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.8.11" style="padding:1.5pt 0.0pt;">77.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.12" style="padding:1.5pt 0.0pt;">88.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.13" style="padding:1.5pt 0.0pt;">87.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.14" style="padding:1.5pt 0.0pt;">81.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T3.1.1.8.15" style="padding:1.5pt 0.0pt;">90.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a detailed breakdown of the performance of various Large Multimodal Models (LMMs) on the VideoVista-CulturalLingo benchmark.  The benchmark consists of fourteen distinct tasks, categorized into four main areas: Event, Object, Culture, and Science. Each area has multiple subtasks evaluating different aspects of video comprehension. For instance, the 'Event' category includes tasks such as event description, prediction, sequence identification, and localization.  Similarly, 'Object' tasks focus on temporal and spatial aspects of object recognition within videos, while 'Culture' assesses the models' understanding of cultural nuances in videos from different regions (China, America, Europe). Lastly, 'Science' tasks evaluate the models' ability to comprehend and synthesize scientific concepts demonstrated in the videos.  The table shows the individual performance scores (accuracy) for each LMM across all fourteen subtasks, allowing for granular comparison of strengths and weaknesses in different aspects of video understanding.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed Evaluation results on VideoVista-CulturalLingo benchmark. Abbreviations used in the table:Event Description (ED), Event Prediction (EP), Event Sequence (ES), Event Localization (EL), Object Temporal Localization (OTL), Object Temporal Sequence (OTS), Object Spatial Localization (OSL), Chinese Culture (CC), American Culture (AC), European Culture (EC), Summarization & Synthesis (SS), Comparison & Contrast (COM), Application & Procedure (AP), Scientific Principle (SP).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.1.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1">Full Name</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.1.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.2.1">Abbreviation</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2" style="background-color:#F8E3B5;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A1.T4.1.2.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.2.1.1" style="background-color:#F8E3B5;">YouTube Domains</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.3.1" style="padding:0.5pt 0.0pt;">News &amp; Politics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.3.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.3.2.1">NP</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.4.1" style="padding:0.5pt 0.0pt;">Sports</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.4.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.4.2.1">Spt</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.5.1" style="padding:0.5pt 0.0pt;">Entertainment</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.5.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.5.2.1">Ent</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.6.1" style="padding:0.5pt 0.0pt;">Howto &amp; Style</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.6.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.6.2.1">HS</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.7.1" style="padding:0.5pt 0.0pt;">People &amp; Blogs</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.7.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.7.2.1">PB</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.8.1" style="padding:0.5pt 0.0pt;">Autos &amp; Vehicles</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.8.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.8.2.1">AV</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.9.1" style="padding:0.5pt 0.0pt;">Education</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.9.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.9.2.1">Edu</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.10.1" style="padding:0.5pt 0.0pt;">Travel &amp; Events</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.10.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.10.2.1">TE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.11.1" style="padding:0.5pt 0.0pt;">Film &amp; Animation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.11.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.11.2.1">FA</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.12.1" style="padding:0.5pt 0.0pt;">Comedy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.12.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.12.2.1">Com</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.13.1" style="padding:0.5pt 0.0pt;">Chemical Experiments</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.13.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.13.2.1">CE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.14.1" style="padding:0.5pt 0.0pt;">Science &amp; Technology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.14.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.14.2.1">ST</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.15.1" style="padding:0.5pt 0.0pt;">Artificial Intelligence</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.15.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.15.2.1">AI</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.16.1" style="padding:0.5pt 0.0pt;">Physics Experiment</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.16.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.16.2.1">PE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.17.1" style="padding:0.5pt 0.0pt;">Pets &amp; Animals</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.17.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.17.2.1">PA</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.18.1" style="padding:0.5pt 0.0pt;">Quantum Mechanics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.18.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.18.2.1">QM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.19.1" style="padding:0.5pt 0.0pt;">Calculus</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.19.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.19.2.1">Cal</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.20.1" style="padding:0.5pt 0.0pt;">Linear Algebra</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.20.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.20.2.1">LA</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.21" style="background-color:#A9D0D5;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A1.T4.1.21.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.21.1.1" style="background-color:#A9D0D5;">Xiaohongshu Domains</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.22.1" style="padding:0.5pt 0.0pt;">Travel Scenery</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.22.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.22.2.1">TS</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.23.1" style="padding:0.5pt 0.0pt;">Cooking Process</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.23.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.23.2.1">CP</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.24.1" style="padding:0.5pt 0.0pt;">Cooking Tutorial</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.24.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.24.2.1">CT</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.25.1" style="padding:0.5pt 0.0pt;">Entrepreneurship</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.25.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.25.2.1">Ent</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.26.1" style="padding:0.5pt 0.0pt;">TV Series Commentary</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.26.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.26.2.1">TSC</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.27.1" style="padding:0.5pt 0.0pt;">Tourist Attractions</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.27.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.27.2.1">TA</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.28.1" style="padding:0.5pt 0.0pt;">Food Review</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.28.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.28.2.1">FR</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.29.1" style="padding:0.5pt 0.0pt;">Food Exploration</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.29.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.29.2.1">FE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.30.1" style="padding:0.5pt 0.0pt;">Food Curiosities</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.30.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.30.2.1">FC</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.31.1" style="padding:0.5pt 0.0pt;">Astronomy Knowledge</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.31.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.31.2.1">AK</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.32.1" style="padding:0.5pt 0.0pt;">Art Explanation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.32.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.32.2.1">AE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.33">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.33.1" style="padding:0.5pt 0.0pt;">Historical Gossip</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.33.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.33.2.1">HG</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.34">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.34.1" style="padding:0.5pt 0.0pt;">Product Information</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.34.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.34.2.1">PI</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.35.1" style="padding:0.5pt 0.0pt;">Travel Vlog</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.35.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.35.2.1">TV</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.36.1" style="padding:0.5pt 0.0pt;">Fashion Trends</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.36.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.36.2.1">FT</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.37.1" style="padding:0.5pt 0.0pt;">Travel Guide</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.37.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.37.2.1">TG</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.38">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.38.1" style="padding:0.5pt 0.0pt;">Civil Service Exam Preparation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.38.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.38.2.1">CSEP</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.39">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.39.1" style="padding:0.5pt 0.0pt;">Relationship Issues</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.39.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.39.2.1">RI</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.40" style="background-color:#C8E0D8;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A1.T4.1.40.1" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.40.1.1" style="background-color:#C8E0D8;">BiliBili Domains</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.41">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.41.1" style="padding:0.5pt 0.0pt;">Organic Chemistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T4.1.41.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.41.2.1">OC</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.42">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.42.1" style="padding:0.5pt 0.0pt;">Advanced Mathematics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.42.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.42.2.1">AM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.43">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.43.1" style="padding:0.5pt 0.0pt;">High School Experiments</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.43.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.43.2.1">HSE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.44">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.44.1" style="padding:0.5pt 0.0pt;">Mid School Experiments</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.44.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.44.2.1">MSE</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.45">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.45.1" style="padding:0.5pt 0.0pt;">University Physics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.45.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.45.2.1">UP</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.46">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.46.1" style="padding:0.5pt 0.0pt;">Machine Learning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.46.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.46.2.1">ML</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.47">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T4.1.47.1" style="padding:0.5pt 0.0pt;">Deep Learning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T4.1.47.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.47.2.1">DL</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.48">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="A1.T4.1.48.1" style="padding:0.5pt 0.0pt;">Quantum Mechanics</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A1.T4.1.48.2" style="padding:0.5pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.1.48.2.1">QM</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of various Large Multimodal Models (LMMs) across different video lengths. The performance is measured using accuracy scores, specifically comparing the models' abilities to understand and answer questions based on videos presented in either Chinese or English.  This allows for a direct comparison of model performance across different languages and helps identify any potential language-specific biases in the models.
> <details>
> <summary>read the caption</summary>
> Table 6: Model Performance by Video Language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T5.1.1">
<tr class="ltx_tr" id="A3.T5.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A3.T5.1.1.1.1" rowspan="2" style="padding-bottom:1.0pt;padding:2pt 0.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="A3.T5.1.1.1.2" style="padding-bottom:1.0pt;padding:2pt 0.0pt;">Event</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T5.1.1.1.3" style="padding-bottom:1.0pt;padding:2pt 0.0pt;">Object</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.T5.1.1.1.4" style="padding-bottom:1.0pt;padding:2pt 0.0pt;">Culture</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="4" id="A3.T5.1.1.1.5" style="padding-bottom:1.0pt;padding:2pt 0.0pt;">Science</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.1" style="padding:2pt 0.0pt;">ED</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.2" style="padding:2pt 0.0pt;">EP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.3" style="padding:2pt 0.0pt;">ES</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.2.4" style="padding:2pt 0.0pt;">EL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.5" style="padding:2pt 0.0pt;">OTL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.6" style="padding:2pt 0.0pt;">OTS</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.2.7" style="padding:2pt 0.0pt;">OSL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.8" style="padding:2pt 0.0pt;">CC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.9" style="padding:2pt 0.0pt;">AC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.2.10" style="padding:2pt 0.0pt;">EC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.11" style="padding:2pt 0.0pt;">SS</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.12" style="padding:2pt 0.0pt;">COM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.13" style="padding:2pt 0.0pt;">AP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.2.14" style="padding:2pt 0.0pt;">SP</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.3" style="background-color:#A9D0D5;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="15" id="A3.T5.1.1.3.1" style="padding:2pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T5.1.1.3.1.1" style="background-color:#A9D0D5;">Open-source Video LMMs</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A3.T5.1.1.4.1" style="padding:2pt 0.0pt;">ShareGPT4Video</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.2" style="padding:2pt 0.0pt;">29.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.3" style="padding:2pt 0.0pt;">20.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.4" style="padding:2pt 0.0pt;">17.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.4.5" style="padding:2pt 0.0pt;">23.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.6" style="padding:2pt 0.0pt;">10.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.7" style="padding:2pt 0.0pt;">27.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.4.8" style="padding:2pt 0.0pt;">30.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.9" style="padding:2pt 0.0pt;">19.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.10" style="padding:2pt 0.0pt;">34.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.4.11" style="padding:2pt 0.0pt;">42.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.12" style="padding:2pt 0.0pt;">32.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.13" style="padding:2pt 0.0pt;">48.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.14" style="padding:2pt 0.0pt;">32.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.4.15" style="padding:2pt 0.0pt;">30.1</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.5.1" style="padding:2pt 0.0pt;">VideoChat2-Mistral</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.2" style="padding:2pt 0.0pt;">38.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.3" style="padding:2pt 0.0pt;">28.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.4" style="padding:2pt 0.0pt;">31.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.5.5" style="padding:2pt 0.0pt;">19.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.6" style="padding:2pt 0.0pt;">25.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.7" style="padding:2pt 0.0pt;">26.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.5.8" style="padding:2pt 0.0pt;">27.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.9" style="padding:2pt 0.0pt;">25.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.10" style="padding:2pt 0.0pt;">40.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.5.11" style="padding:2pt 0.0pt;">40.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.12" style="padding:2pt 0.0pt;">36.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.13" style="padding:2pt 0.0pt;">44.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.14" style="padding:2pt 0.0pt;">23.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.5.15" style="padding:2pt 0.0pt;">31.2</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.6.1" style="padding:2pt 0.0pt;">Video-LLaVA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.2" style="padding:2pt 0.0pt;">51.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.3" style="padding:2pt 0.0pt;">46.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.4" style="padding:2pt 0.0pt;">31.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.6.5" style="padding:2pt 0.0pt;">41.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.6" style="padding:2pt 0.0pt;">32.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.7" style="padding:2pt 0.0pt;">24.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.6.8" style="padding:2pt 0.0pt;">42.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.9" style="padding:2pt 0.0pt;">27.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.10" style="padding:2pt 0.0pt;">35.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.6.11" style="padding:2pt 0.0pt;">41.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.12" style="padding:2pt 0.0pt;">42.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.13" style="padding:2pt 0.0pt;">38.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.14" style="padding:2pt 0.0pt;">40.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.6.15" style="padding:2pt 0.0pt;">38.7</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.7.1" style="padding:2pt 0.0pt;">VideoLLaMA2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.2" style="padding:2pt 0.0pt;">36.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.3" style="padding:2pt 0.0pt;">28.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.4" style="padding:2pt 0.0pt;">41.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.7.5" style="padding:2pt 0.0pt;">29.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.6" style="padding:2pt 0.0pt;">17.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.7" style="padding:2pt 0.0pt;">15.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.7.8" style="padding:2pt 0.0pt;">36.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.9" style="padding:2pt 0.0pt;">25.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.10" style="padding:2pt 0.0pt;">38.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.7.11" style="padding:2pt 0.0pt;">42.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.12" style="padding:2pt 0.0pt;">36.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.13" style="padding:2pt 0.0pt;">42.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.14" style="padding:2pt 0.0pt;">35.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.7.15" style="padding:2pt 0.0pt;">34.4</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.8.1" style="padding:2pt 0.0pt;">LLaVA-OneVision</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.2" style="padding:2pt 0.0pt;">47.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.3" style="padding:2pt 0.0pt;">34.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.4" style="padding:2pt 0.0pt;">44.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.8.5" style="padding:2pt 0.0pt;">44.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.6" style="padding:2pt 0.0pt;">30.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.7" style="padding:2pt 0.0pt;">35.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.8.8" style="padding:2pt 0.0pt;">39.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.9" style="padding:2pt 0.0pt;">36.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.10" style="padding:2pt 0.0pt;">41.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.8.11" style="padding:2pt 0.0pt;">38.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.12" style="padding:2pt 0.0pt;">55.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.13" style="padding:2pt 0.0pt;">44.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.14" style="padding:2pt 0.0pt;">57.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.8.15" style="padding:2pt 0.0pt;">48.4</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.9.1" style="padding:2pt 0.0pt;">MiniCPM-V 2.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.2" style="padding:2pt 0.0pt;">74.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.3" style="padding:2pt 0.0pt;">38.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.4" style="padding:2pt 0.0pt;">41.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.9.5" style="padding:2pt 0.0pt;">30.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.6" style="padding:2pt 0.0pt;">18.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.7" style="padding:2pt 0.0pt;">35.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.9.8" style="padding:2pt 0.0pt;">30.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.9" style="padding:2pt 0.0pt;">44.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.10" style="padding:2pt 0.0pt;">48.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.9.11" style="padding:2pt 0.0pt;">55.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.12" style="padding:2pt 0.0pt;">70.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.13" style="padding:2pt 0.0pt;">53.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.14" style="padding:2pt 0.0pt;">60.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.9.15" style="padding:2pt 0.0pt;">52.7</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.10.1" style="padding:2pt 0.0pt;">mPLUG-Owl3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.2" style="padding:2pt 0.0pt;">66.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.3" style="padding:2pt 0.0pt;">56.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.4" style="padding:2pt 0.0pt;">52.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.10.5" style="padding:2pt 0.0pt;">48.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.6" style="padding:2pt 0.0pt;">35.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.7" style="padding:2pt 0.0pt;">61.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.10.8" style="padding:2pt 0.0pt;">41.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.9" style="padding:2pt 0.0pt;">37.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.10" style="padding:2pt 0.0pt;">45.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.10.11" style="padding:2pt 0.0pt;">52.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.12" style="padding:2pt 0.0pt;">62.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.13" style="padding:2pt 0.0pt;">58.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.14" style="padding:2pt 0.0pt;">60.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.10.15" style="padding:2pt 0.0pt;">54.8</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.11.1" style="padding:2pt 0.0pt;">Oryx-1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.2" style="padding:2pt 0.0pt;">54.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.3" style="padding:2pt 0.0pt;">40.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.4" style="padding:2pt 0.0pt;">45.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.11.5" style="padding:2pt 0.0pt;">37.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.6" style="padding:2pt 0.0pt;">33.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.7" style="padding:2pt 0.0pt;">24.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.11.8" style="padding:2pt 0.0pt;">33.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.9" style="padding:2pt 0.0pt;">35.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.10" style="padding:2pt 0.0pt;">39.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.11.11" style="padding:2pt 0.0pt;">38.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.12" style="padding:2pt 0.0pt;">58.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.13" style="padding:2pt 0.0pt;">46.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.14" style="padding:2pt 0.0pt;">57.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.11.15" style="padding:2pt 0.0pt;">51.6</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.12.1" style="padding:2pt 0.0pt;">LLaVA-Video</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.2" style="padding:2pt 0.0pt;">75.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.3" style="padding:2pt 0.0pt;">57.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.4" style="padding:2pt 0.0pt;">48.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.12.5" style="padding:2pt 0.0pt;">53.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.6" style="padding:2pt 0.0pt;">33.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.7" style="padding:2pt 0.0pt;">67.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.12.8" style="padding:2pt 0.0pt;">39.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.9" style="padding:2pt 0.0pt;">41.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.10" style="padding:2pt 0.0pt;">51.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.12.11" style="padding:2pt 0.0pt;">54.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.12" style="padding:2pt 0.0pt;">63.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.13" style="padding:2pt 0.0pt;">53.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.14" style="padding:2pt 0.0pt;">61.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.12.15" style="padding:2pt 0.0pt;">52.7</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.13.1" style="padding:2pt 0.0pt;">Qwen2-VL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.2" style="padding:2pt 0.0pt;">72.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.3" style="padding:2pt 0.0pt;">51.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.4" style="padding:2pt 0.0pt;">56.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.13.5" style="padding:2pt 0.0pt;">33.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.6" style="padding:2pt 0.0pt;">30.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.7" style="padding:2pt 0.0pt;">47.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.13.8" style="padding:2pt 0.0pt;">36.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.9" style="padding:2pt 0.0pt;">48.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.10" style="padding:2pt 0.0pt;">54.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.13.11" style="padding:2pt 0.0pt;">62.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.12" style="padding:2pt 0.0pt;">72.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.13" style="padding:2pt 0.0pt;">60.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.14" style="padding:2pt 0.0pt;">66.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.13.15" style="padding:2pt 0.0pt;">65.6</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.14.1" style="padding:2pt 0.0pt;">InternVL2.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.2" style="padding:2pt 0.0pt;">81.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.3" style="padding:2pt 0.0pt;">57.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.4" style="padding:2pt 0.0pt;">59.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.14.5" style="padding:2pt 0.0pt;">41.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.6" style="padding:2pt 0.0pt;">35.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.7" style="padding:2pt 0.0pt;">47.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.14.8" style="padding:2pt 0.0pt;">30.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.9" style="padding:2pt 0.0pt;">55.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.10" style="padding:2pt 0.0pt;">47.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.14.11" style="padding:2pt 0.0pt;">65.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.12" style="padding:2pt 0.0pt;">69.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.13" style="padding:2pt 0.0pt;">56.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.14" style="padding:2pt 0.0pt;">65.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.14.15" style="padding:2pt 0.0pt;">62.4</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.15.1" style="padding:2pt 0.0pt;">MiniCPM-o 2.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.2" style="padding:2pt 0.0pt;">83.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.3" style="padding:2pt 0.0pt;">55.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.4" style="padding:2pt 0.0pt;">53.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.15.5" style="padding:2pt 0.0pt;">35.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.6" style="padding:2pt 0.0pt;">20.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.7" style="padding:2pt 0.0pt;">52.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.15.8" style="padding:2pt 0.0pt;">35.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.9" style="padding:2pt 0.0pt;">48.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.10" style="padding:2pt 0.0pt;">56.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.15.11" style="padding:2pt 0.0pt;">63.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.12" style="padding:2pt 0.0pt;">72.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.13" style="padding:2pt 0.0pt;">61.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.14" style="padding:2pt 0.0pt;">69.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.15.15" style="padding:2pt 0.0pt;">52.7</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.16.1" style="padding:2pt 0.0pt;">TPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.2" style="padding:2pt 0.0pt;">75.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.3" style="padding:2pt 0.0pt;">56.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.4" style="padding:2pt 0.0pt;">49.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.16.5" style="padding:2pt 0.0pt;">48.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.6" style="padding:2pt 0.0pt;">31.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.7" style="padding:2pt 0.0pt;">67.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.16.8" style="padding:2pt 0.0pt;">38.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.9" style="padding:2pt 0.0pt;">43.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.10" style="padding:2pt 0.0pt;">50.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.16.11" style="padding:2pt 0.0pt;">55.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.12" style="padding:2pt 0.0pt;">63.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.13" style="padding:2pt 0.0pt;">50.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.14" style="padding:2pt 0.0pt;">62.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.16.15" style="padding:2pt 0.0pt;">55.9</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.17.1" style="padding:2pt 0.0pt;">InternVideo2.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.2" style="padding:2pt 0.0pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.3" style="padding:2pt 0.0pt;">52.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.4" style="padding:2pt 0.0pt;">60.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.17.5" style="padding:2pt 0.0pt;">33.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.6" style="padding:2pt 0.0pt;">37.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.7" style="padding:2pt 0.0pt;">61.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.17.8" style="padding:2pt 0.0pt;">31.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.9" style="padding:2pt 0.0pt;">53.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.10" style="padding:2pt 0.0pt;">56.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.17.11" style="padding:2pt 0.0pt;">65.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.12" style="padding:2pt 0.0pt;">72.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.13" style="padding:2pt 0.0pt;">61.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.14" style="padding:2pt 0.0pt;">64.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.17.15" style="padding:2pt 0.0pt;">54.8</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.18.1" style="padding:2pt 0.0pt;">VideoLLaMA3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.2" style="padding:2pt 0.0pt;">77.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.3" style="padding:2pt 0.0pt;">57.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.4" style="padding:2pt 0.0pt;">61.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.18.5" style="padding:2pt 0.0pt;">45.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.6" style="padding:2pt 0.0pt;">72.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.7" style="padding:2pt 0.0pt;">64.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.18.8" style="padding:2pt 0.0pt;">56.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.9" style="padding:2pt 0.0pt;">45.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.10" style="padding:2pt 0.0pt;">55.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.18.11" style="padding:2pt 0.0pt;">59.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.12" style="padding:2pt 0.0pt;">70.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.13" style="padding:2pt 0.0pt;">54.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.14" style="padding:2pt 0.0pt;">64.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.18.15" style="padding:2pt 0.0pt;">55.9</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.19.1" style="padding:2pt 0.0pt;">Qwen2.5-VL-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.2" style="padding:2pt 0.0pt;">75.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.3" style="padding:2pt 0.0pt;">51.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.4" style="padding:2pt 0.0pt;">72.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.19.5" style="padding:2pt 0.0pt;">40.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.6" style="padding:2pt 0.0pt;">39.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.7" style="padding:2pt 0.0pt;">56.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.19.8" style="padding:2pt 0.0pt;">31.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.9" style="padding:2pt 0.0pt;">51.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.10" style="padding:2pt 0.0pt;">50.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.19.11" style="padding:2pt 0.0pt;">63.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.12" style="padding:2pt 0.0pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.13" style="padding:2pt 0.0pt;">65.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.14" style="padding:2pt 0.0pt;">72.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.19.15" style="padding:2pt 0.0pt;">60.2</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.20.1" style="padding:2pt 0.0pt;">Qwen2.5-VL-72B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.2" style="padding:2pt 0.0pt;">79.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.3" style="padding:2pt 0.0pt;">60.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.4" style="padding:2pt 0.0pt;">78.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.20.5" style="padding:2pt 0.0pt;">42.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.6" style="padding:2pt 0.0pt;">31.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.7" style="padding:2pt 0.0pt;">67.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.20.8" style="padding:2pt 0.0pt;">49.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.9" style="padding:2pt 0.0pt;">65.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.10" style="padding:2pt 0.0pt;">67.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.20.11" style="padding:2pt 0.0pt;">80.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.12" style="padding:2pt 0.0pt;">86.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.13" style="padding:2pt 0.0pt;">85.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.14" style="padding:2pt 0.0pt;">79.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.20.15" style="padding:2pt 0.0pt;">79.6</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.21" style="background-color:#D4E3EC;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="15" id="A3.T5.1.1.21.1" style="padding:2pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T5.1.1.21.1.1" style="background-color:#D4E3EC;">Open-source Image LMMs</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A3.T5.1.1.22.1" style="padding:2pt 0.0pt;">VILA1.5-13B[1f]</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.2" style="padding:2pt 0.0pt;">33.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.3" style="padding:2pt 0.0pt;">33.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.4" style="padding:2pt 0.0pt;">29.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.22.5" style="padding:2pt 0.0pt;">33.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.6" style="padding:2pt 0.0pt;">26.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.7" style="padding:2pt 0.0pt;">26.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.22.8" style="padding:2pt 0.0pt;">34.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.9" style="padding:2pt 0.0pt;">31.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.10" style="padding:2pt 0.0pt;">30.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.22.11" style="padding:2pt 0.0pt;">39.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.12" style="padding:2pt 0.0pt;">36.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.13" style="padding:2pt 0.0pt;">46.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.14" style="padding:2pt 0.0pt;">39.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.22.15" style="padding:2pt 0.0pt;">39.8</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.23.1" style="padding:2pt 0.0pt;">VILA1.5-13B[8f]</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.2" style="padding:2pt 0.0pt;">36.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.3" style="padding:2pt 0.0pt;">38.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.4" style="padding:2pt 0.0pt;">31.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.23.5" style="padding:2pt 0.0pt;">38.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.6" style="padding:2pt 0.0pt;">23.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.7" style="padding:2pt 0.0pt;">35.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.23.8" style="padding:2pt 0.0pt;">45.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.9" style="padding:2pt 0.0pt;">23.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.10" style="padding:2pt 0.0pt;">42.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.23.11" style="padding:2pt 0.0pt;">51.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.12" style="padding:2pt 0.0pt;">43.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.13" style="padding:2pt 0.0pt;">41.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.14" style="padding:2pt 0.0pt;">40.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.23.15" style="padding:2pt 0.0pt;">39.8</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.24.1" style="padding:2pt 0.0pt;">Molmo 7B-D[1f]</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.2" style="padding:2pt 0.0pt;">38.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.3" style="padding:2pt 0.0pt;">44.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.4" style="padding:2pt 0.0pt;">25.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.24.5" style="padding:2pt 0.0pt;">39.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.6" style="padding:2pt 0.0pt;">26.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.7" style="padding:2pt 0.0pt;">34.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.24.8" style="padding:2pt 0.0pt;">19.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.9" style="padding:2pt 0.0pt;">39.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.10" style="padding:2pt 0.0pt;">40.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.24.11" style="padding:2pt 0.0pt;">39.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.12" style="padding:2pt 0.0pt;">46.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.13" style="padding:2pt 0.0pt;">41.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.14" style="padding:2pt 0.0pt;">50.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.24.15" style="padding:2pt 0.0pt;">45.2</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.25.1" style="padding:2pt 0.0pt;">Molmo 7B-D[8f]</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.2" style="padding:2pt 0.0pt;">40.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.3" style="padding:2pt 0.0pt;">44.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.4" style="padding:2pt 0.0pt;">30.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.25.5" style="padding:2pt 0.0pt;">41.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.6" style="padding:2pt 0.0pt;">29.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.7" style="padding:2pt 0.0pt;">45.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.25.8" style="padding:2pt 0.0pt;">25.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.9" style="padding:2pt 0.0pt;">37.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.10" style="padding:2pt 0.0pt;">44.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.25.11" style="padding:2pt 0.0pt;">44.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.12" style="padding:2pt 0.0pt;">50.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.13" style="padding:2pt 0.0pt;">42.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.14" style="padding:2pt 0.0pt;">49.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.25.15" style="padding:2pt 0.0pt;">44.1</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.26.1" style="padding:2pt 0.0pt;">DeepSeek2-VL[1f]</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.2" style="padding:2pt 0.0pt;">40.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.3" style="padding:2pt 0.0pt;">44.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.4" style="padding:2pt 0.0pt;">32.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.26.5" style="padding:2pt 0.0pt;">39.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.6" style="padding:2pt 0.0pt;">32.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.7" style="padding:2pt 0.0pt;">33.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.26.8" style="padding:2pt 0.0pt;">31.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.9" style="padding:2pt 0.0pt;">37.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.10" style="padding:2pt 0.0pt;">38.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.26.11" style="padding:2pt 0.0pt;">42.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.12" style="padding:2pt 0.0pt;">52.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.13" style="padding:2pt 0.0pt;">44.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.14" style="padding:2pt 0.0pt;">49.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.26.15" style="padding:2pt 0.0pt;">52.7</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.27.1" style="padding:2pt 0.0pt;">DeepSeek2-VL[8f]</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.2" style="padding:2pt 0.0pt;">42.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.3" style="padding:2pt 0.0pt;">47.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.4" style="padding:2pt 0.0pt;">27.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.27.5" style="padding:2pt 0.0pt;">44.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.6" style="padding:2pt 0.0pt;">25.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.7" style="padding:2pt 0.0pt;">33.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.27.8" style="padding:2pt 0.0pt;">29.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.9" style="padding:2pt 0.0pt;">37.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.10" style="padding:2pt 0.0pt;">40.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.27.11" style="padding:2pt 0.0pt;">56.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.12" style="padding:2pt 0.0pt;">62.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.13" style="padding:2pt 0.0pt;">50.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.14" style="padding:2pt 0.0pt;">53.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.27.15" style="padding:2pt 0.0pt;">54.8</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.28" style="background-color:#8FB8A1;">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="15" id="A3.T5.1.1.28.1" style="padding:2pt 0.0pt;"><span class="ltx_text ltx_font_italic" id="A3.T5.1.1.28.1.1" style="background-color:#8FB8A1;">Proprietary LMMs</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A3.T5.1.1.29.1" style="padding:2pt 0.0pt;">GPT-4o</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.2" style="padding:2pt 0.0pt;">86.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.3" style="padding:2pt 0.0pt;">47.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.4" style="padding:2pt 0.0pt;">70.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.29.5" style="padding:2pt 0.0pt;">28.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.6" style="padding:2pt 0.0pt;">29.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.7" style="padding:2pt 0.0pt;">61.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.29.8" style="padding:2pt 0.0pt;">46.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.9" style="padding:2pt 0.0pt;">57.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.10" style="padding:2pt 0.0pt;">71.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.1.1.29.11" style="padding:2pt 0.0pt;">76.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.12" style="padding:2pt 0.0pt;">81.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.13" style="padding:2pt 0.0pt;">77.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.14" style="padding:2pt 0.0pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T5.1.1.29.15" style="padding:2pt 0.0pt;">65.6</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.30.1" style="padding:2pt 0.0pt;">Gemini-1.5-Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.2" style="padding:2pt 0.0pt;">92.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.3" style="padding:2pt 0.0pt;">42.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.4" style="padding:2pt 0.0pt;">63.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.30.5" style="padding:2pt 0.0pt;">69.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.6" style="padding:2pt 0.0pt;">87.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.7" style="padding:2pt 0.0pt;">69.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.30.8" style="padding:2pt 0.0pt;">23.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.9" style="padding:2pt 0.0pt;">49.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.10" style="padding:2pt 0.0pt;">61.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.30.11" style="padding:2pt 0.0pt;">67.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.12" style="padding:2pt 0.0pt;">87.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.13" style="padding:2pt 0.0pt;">87.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.14" style="padding:2pt 0.0pt;">82.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.30.15" style="padding:2pt 0.0pt;">77.4</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A3.T5.1.1.31.1" style="padding:2pt 0.0pt;">Gemini-2.0-Flash-Lite</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.2" style="padding:2pt 0.0pt;">87.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.3" style="padding:2pt 0.0pt;">44.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.4" style="padding:2pt 0.0pt;">68.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.31.5" style="padding:2pt 0.0pt;">63.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.6" style="padding:2pt 0.0pt;">87.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.7" style="padding:2pt 0.0pt;">63.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.31.8" style="padding:2pt 0.0pt;">44.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.9" style="padding:2pt 0.0pt;">58.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.10" style="padding:2pt 0.0pt;">61.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A3.T5.1.1.31.11" style="padding:2pt 0.0pt;">70.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.12" style="padding:2pt 0.0pt;">83.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.13" style="padding:2pt 0.0pt;">81.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.14" style="padding:2pt 0.0pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A3.T5.1.1.31.15" style="padding:2pt 0.0pt;">82.8</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b ltx_border_r" id="A3.T5.1.1.32.1" style="padding:2pt 0.0pt;">Gemini-2.0-Flash</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.2" style="padding:2pt 0.0pt;">92.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.3" style="padding:2pt 0.0pt;">51.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.4" style="padding:2pt 0.0pt;">73.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A3.T5.1.1.32.5" style="padding:2pt 0.0pt;">70.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.6" style="padding:2pt 0.0pt;">87.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.7" style="padding:2pt 0.0pt;">74.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A3.T5.1.1.32.8" style="padding:2pt 0.0pt;">59.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.9" style="padding:2pt 0.0pt;">62.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.10" style="padding:2pt 0.0pt;">64.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_r" id="A3.T5.1.1.32.11" style="padding:2pt 0.0pt;">77.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.12" style="padding:2pt 0.0pt;">88.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.13" style="padding:2pt 0.0pt;">87.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.14" style="padding:2pt 0.0pt;">81.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="A3.T5.1.1.32.15" style="padding:2pt 0.0pt;">90.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Large Multimodal Models (LMMs) across various video lengths.  The performance is measured for various sub-tasks (Event, Object, Culture, Science) within the VideoVista-CulturalLingo benchmark.  The table breaks down video duration into three categories: short (<2 minutes), medium (2-10 minutes), and long (>10 minutes), allowing for an analysis of model performance relative to video length.
> <details>
> <summary>read the caption</summary>
> Table 7: Model Performance by Video Duration. The Duration: <2 minutes (Short), 2-10 minutes (Medium), >10 minutes (Long).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17821/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17821/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}